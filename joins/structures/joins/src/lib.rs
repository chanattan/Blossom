use std::fs::File;
use std::io::{self, BufRead};
use std::path::Path;
use rand::seq::SliceRandom;
use byteorder::{ByteOrder, LittleEndian};

/**
 * CONSTANT VALUES
 **/
pub const MEAN_ALGORITHMS : i32 = 5;
pub const SCALE_FACTORS : [&str; 10] = ["01", "02", "03", "04", "05", "06", "07", "08", "09", "1"]; 

/** Enum for different joins. **/
#[derive(Debug)]
pub enum JoinType {
    NestedLoop,
    Hash,
    SortMerge,
}

/** Data structure for join. **/

#[derive(Debug)]
pub struct JoinQuery {
    pub table1_idx: usize,
    pub table2_idx: usize, 
    pub attribute: String
}

/** Data structures for dataset. **/

/** Table structure. **/

#[derive(Debug)]
pub struct Table {
    pub name: String,
    pub rows: Vec<Box<dyn TableRow>>,
    attributes: Vec<String>,
}


pub trait TableRow: std::fmt::Debug {
    // Function to get attribute values as strings
    fn get_attribute(&self, attribute: &str) -> Option<AttributeValue>;
}

impl Table {
    fn new(name: &str, attributes: Vec<&str>) -> Self {
        Table {
            name: String::from(name),
            rows: Vec::new(),
            attributes: attributes.iter().map(|s| String::from(*s)).collect(),
        }
    }

    fn insert_row(&mut self, row: Box<dyn TableRow>) {
        self.rows.push(row);
    }

    fn print_table(&self) {
        println!("Table: {}", self.name);
        for (i, row) in self.rows.iter().enumerate() {
            println!("Row {}: {:?}", i + 1, row);
        }
    }
}

// As to implement different attributes with polymorphism we use an enum.
#[derive(Debug, PartialEq)]
pub enum AttributeValue<'a> {
    Integer(i32),
    LongInteger(i64),
    Float(f64),
    Str(&'a str),
    Char(char),
}

impl std::fmt::Display for AttributeValue<'_> {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            AttributeValue::Integer(i) => write!(f, "{}", i),
            AttributeValue::LongInteger(l) => write!(f, "{}", l),
            AttributeValue::Float(fl) => write!(f, "{}", fl),
            AttributeValue::Str(s) => write!(f, "{}", s),
            AttributeValue::Char(c) => write!(f, "{}", c),
        }
    }
}

impl<'a> Eq for AttributeValue<'a> {}

impl<'a> std::hash::Hash for AttributeValue<'a> {
    fn hash<H: std::hash::Hasher>(&self, state: &mut H) {
        std::mem::discriminant(self).hash(state);
        match self {
            AttributeValue::Integer(i) => i.hash(state),
            AttributeValue::LongInteger(l) => l.hash(state),
            AttributeValue::Float(f) => {
                let mut bits = [0; 8];
                // This assumes little-endian architecture.
                LittleEndian::write_f64(&mut bits, *f);
                bits.hash(state);
            }
            AttributeValue::Str(s) => s.hash(state),
            AttributeValue::Char(c) => c.hash(state),
        }
    }
}

impl<'a> Iterator for AttributeValue<'a> {
    type Item = AttributeValue<'a>;

    fn next(&mut self) -> Option<Self::Item> {
        match self {
            AttributeValue::Integer(_) => None,
            AttributeValue::LongInteger(_) => None,
            AttributeValue::Float(_) => None,
            AttributeValue::Str(_) => None,
            AttributeValue::Char(_) => None,
        }
    }
}

impl<'a> PartialOrd for AttributeValue<'a> {
    fn partial_cmp(&self, other: &Self) -> Option<std::cmp::Ordering> {
        match (self, other) {
            (AttributeValue::Integer(a), AttributeValue::Integer(b)) => a.partial_cmp(b),
            (AttributeValue::LongInteger(a), AttributeValue::LongInteger(b)) => a.partial_cmp(b),
            (AttributeValue::Float(a), AttributeValue::Float(b)) => a.partial_cmp(b),
            (AttributeValue::Str(a), AttributeValue::Str(b)) => a.partial_cmp(b),
            (AttributeValue::Char(a), AttributeValue::Char(b)) => a.partial_cmp(b),
            _ => None,
        }
    }
}

impl<'a> From<&'a str> for AttributeValue<'a> {
    fn from(value: &'a str) -> Self {
        AttributeValue::Str(value)
    }
}

impl From<i32> for AttributeValue<'_> {
    fn from(value: i32) -> Self {
        AttributeValue::Integer(value)
    }
}

impl From<i64> for AttributeValue<'_> {
    fn from(value: i64) -> Self {
        AttributeValue::LongInteger(value)
    }
}

impl From<f64> for AttributeValue<'_> {
    fn from(value: f64) -> Self {
        AttributeValue::Float(value)
    }
}

impl From<char> for AttributeValue<'_> {
    fn from(value: char) -> Self {
        AttributeValue::Char(value)
    }
}

/** Rows structures. For each definition of a row there is its implementation of a TableRow. **/

#[derive(Debug, Clone)] // Added Clone trait
struct LineItem {
    orderkey: i32,
    part_key: i32,
    suppkey: i32,
    linenumber: i32,
    quantity: f64,
    extendedprice: f64,
    discount: f64,
    tax: f64,
    returnflag: char,
    linestatus: char,
    shipdate: String,
    commit_date: String,
    receipt_date: String,
    shipinstruct: String,
    shipmode: String,
    comment: String,
}

impl TableRow for LineItem {
    fn get_attribute(&self, attribute: &str) -> Option<AttributeValue> {
        match attribute {
            "orderkey" => Some(AttributeValue::Integer(self.orderkey)),
            "part_key" => Some(AttributeValue::Integer(self.part_key)),
            "suppkey" => Some(AttributeValue::Integer(self.suppkey)),
            "linenumber" => Some(AttributeValue::Integer(self.linenumber)),
            "quantity" => Some(AttributeValue::Float(self.quantity)),
            "extendedprice" => Some(AttributeValue::Float(self.extendedprice)),
            "discount" => Some(AttributeValue::Float(self.discount)),
            "tax" => Some(AttributeValue::Float(self.tax)),
            "returnflag" => Some(AttributeValue::Char(self.returnflag)),
            "linestatus" => Some(AttributeValue::Char(self.linestatus)),
            "shipdate" => Some(AttributeValue::Str(&self.shipdate)),
            "commit_date" => Some(AttributeValue::Str(&self.commit_date)),
            "receipt_date" => Some(AttributeValue::Str(&self.receipt_date)),
            "shipinstruct" => Some(AttributeValue::Str(&self.shipinstruct)),
            "shipmode" => Some(AttributeValue::Str(&self.shipmode)),
            "comment" => Some(AttributeValue::Str(&self.comment)),
            _ => None,
        }
    }
}

#[derive(Debug, Clone)] // Added Clone trait
struct Customer {
    custkey: i32,
    name: String,
    address: String,
    nationkey: i32,
    phone: String,
    acctbal: f64,
    mktsegment: String,
    comment: String,
}

impl TableRow for Customer {
    fn get_attribute(&self, attribute: &str) -> Option<AttributeValue> {
        match attribute {
            "custkey" => Some(AttributeValue::Integer(self.custkey)),
            "name" => Some(AttributeValue::Str(&self.name)),
            "address" => Some(AttributeValue::Str(&self.address)),
            "nationkey" => Some(AttributeValue::Integer(self.nationkey)),
            "phone" => Some(AttributeValue::Str(&self.phone)),
            "acctbal" => Some(AttributeValue::Float(self.acctbal)),
            "mktsegment" => Some(AttributeValue::Str(&self.mktsegment)),
            "comment" => Some(AttributeValue::Str(&self.comment)),
            _ => None,
        }
    }
}

#[derive(Debug, Clone)] // Added Clone trait
struct Order {
    orderkey: i32,
    custkey: i32,
    orderstatus: String,
    totalprice: f64,
    orderdate: String,
    orderpriority: String,
    clerk: String,
    shippriority: i32,
    comment: String,
}

impl TableRow for Order {
    fn get_attribute(&self, attribute: &str) -> Option<AttributeValue> {
        match attribute {
            "orderkey" => Some(AttributeValue::Integer(self.orderkey)),
            "custkey" => Some(AttributeValue::Integer(self.custkey)),
            "orderstatus" => Some(AttributeValue::Str(&self.orderstatus)),
            "totalprice" => Some(AttributeValue::Float(self.totalprice)),
            "orderdate" => Some(AttributeValue::Str(&self.orderdate)),
            "orderpriority" => Some(AttributeValue::Str(&self.orderpriority)),
            "clerk" => Some(AttributeValue::Str(&self.clerk)),
            "shippriority" => Some(AttributeValue::Integer(self.shippriority)),
            "comment" => Some(AttributeValue::Str(&self.comment)),
            _ => None,
        }
    }
}

#[derive(Debug, Clone)] // Added Clone trait
struct Part {
    partkey: i32,
    name: String,
    mfgr: String,
    brand: String,
    r#type: String,
    size: i32,
    container: String,
    retailprice: f64,
    comment: String,
}

impl TableRow for Part {
    fn get_attribute(&self, attribute: &str) -> Option<AttributeValue> {
        match attribute {
            "partkey" => Some(AttributeValue::Integer(self.partkey)),
            "name" => Some(AttributeValue::Str(&self.name)),
            "mfgr" => Some(AttributeValue::Str(&self.mfgr)),
            "brand" => Some(AttributeValue::Str(&self.brand)),
            "type" => Some(AttributeValue::Str(&self.r#type)),
            "size" => Some(AttributeValue::Integer(self.size)),
            "container" => Some(AttributeValue::Str(&self.container)),
            "retailprice" => Some(AttributeValue::Float(self.retailprice)),
            "comment" => Some(AttributeValue::Str(&self.comment)),
            _ => None,
        }
    }
}

#[derive(Debug, Clone)] // Added Clone trait
struct Supplier {
    suppkey: i32,
    name: String,
    address: String,
    nationkey: i32,
    phone: String,
    acctbal: f64,
    comment: String,
}

impl TableRow for Supplier {
    fn get_attribute(&self, attribute: &str) -> Option<AttributeValue> {
        match attribute {
            "suppkey" => Some(AttributeValue::Integer(self.suppkey)),
            "name" => Some(AttributeValue::Str(&self.name)),
            "address" => Some(AttributeValue::Str(&self.address)),
            "nationkey" => Some(AttributeValue::Integer(self.nationkey)),
            "phone" => Some(AttributeValue::Str(&self.phone)),
            "acctbal" => Some(AttributeValue::Float(self.acctbal)),
            "comment" => Some(AttributeValue::Str(&self.comment)),
            _ => None,
        }
    }
}

#[derive(Debug, Clone)] // Added Clone trait
struct PartSupp {
    partkey: i32,
    suppkey: i32,
    availqty: i32,
    supplycost: f64,
    comment: String,
}

impl TableRow for PartSupp {
    fn get_attribute(&self, attribute: &str) -> Option<AttributeValue> {
        match attribute {
            "partkey" => Some(AttributeValue::Integer(self.partkey)),
            "suppkey" => Some(AttributeValue::Integer(self.suppkey)),
            "availqty" => Some(AttributeValue::Integer(self.availqty)),
            "supplycost" => Some(AttributeValue::Float(self.supplycost)),
            "comment" => Some(AttributeValue::Str(&self.comment)),
            _ => None,
        }
    }
}

#[derive(Debug, Clone)] // Added Clone trait
struct Region {
    regionkey: i32,
    name: String,
    comment: String,
}

impl TableRow for Region {
    fn get_attribute(&self, attribute: &str) -> Option<AttributeValue> {
        match attribute {
            "regionkey" => Some(AttributeValue::Integer(self.regionkey)),
            "name" => Some(AttributeValue::Str(&self.name)),
            "comment" => Some(AttributeValue::Str(&self.comment)),
            _ => None,
        }
    }
}

#[derive(Debug, Clone)] // Added Clone trait
struct Nation {
    nationkey: i32,
    name: String,
    regionkey: i32,
    comment: String,
}

impl TableRow for Nation {
    fn get_attribute(&self, attribute: &str) -> Option<AttributeValue> {
        match attribute {
            "nationkey" => Some(AttributeValue::Integer(self.nationkey)),
            "name" => Some(AttributeValue::Str(&self.name)),
            "regionkey" => Some(AttributeValue::Integer(self.regionkey)),
            "comment" => Some(AttributeValue::Str(&self.comment)),
            _ => None,
        }
    }
}

/** Functions to parse items into the data structures. **/

fn parse_partsupp(line: &str) -> PartSupp {
    let fields: Vec<&str> = line.split('|').collect();
    PartSupp {
        partkey: fields[0].parse().unwrap(),
        suppkey: fields[1].parse().unwrap(),
        availqty: fields[2].parse().unwrap(),
        supplycost: fields[3].parse().unwrap(),
        comment: fields[4].to_string(),
    }
}

fn parse_region(line: &str) -> Region {
    let fields: Vec<&str> = line.split('|').collect();
    Region {
        regionkey: fields[0].parse().unwrap(),
        name: fields[1].to_string(),
        comment: fields[2].to_string(),
    }
}

fn parse_nation(line: &str) -> Nation {
    let fields: Vec<&str> = line.split('|').collect();
    Nation {
        nationkey: fields[0].parse().unwrap(),
        name: fields[1].to_string(),
        regionkey: fields[2].parse().unwrap(),
        comment: fields[3].to_string(),
    }
}

fn parse_lineitem(line: &str) -> LineItem {
    let fields: Vec<&str> = line.split('|').collect();
    LineItem {
        orderkey: fields[0].parse().unwrap(),
        part_key: fields[1].parse().unwrap(),
        suppkey: fields[2].parse().unwrap(),
        linenumber: fields[3].parse().unwrap(),
        quantity: fields[4].parse().unwrap(),
        extendedprice: fields[5].parse().unwrap(),
        discount: fields[6].parse().unwrap(),
        tax: fields[7].parse().unwrap(),
        returnflag: fields[8].chars().next().unwrap(),
        linestatus: fields[9].chars().next().unwrap(),
        shipdate: fields[10].to_string(),
        commit_date: fields[11].to_string(),
        receipt_date: fields[12].to_string(),
        shipinstruct: fields[13].to_string(),
        shipmode: fields[14].to_string(),
        comment: fields[15].to_string(),
    }
}

fn parse_customer(line: &str) -> Customer {
    let fields: Vec<&str> = line.split('|').collect();
    Customer {
        custkey: fields[0].parse().unwrap(),
        name: fields[1].to_string(),
        address: fields[2].to_string(),
        nationkey: fields[3].parse().unwrap(),
        phone: fields[4].to_string(),
        acctbal: fields[5].parse().unwrap(),
        mktsegment: fields[6].to_string(),
        comment: fields[7].to_string(),
    }
}

fn parse_order(line: &str) -> Order {
    let fields: Vec<&str> = line.split('|').collect();
    Order {
        orderkey: fields[0].parse().unwrap(),
        custkey: fields[1].parse().unwrap(),
        orderstatus: fields[2].to_string(),
        totalprice: fields[3].parse().unwrap(),
        orderdate: fields[4].to_string(),
        orderpriority: fields[5].to_string(),
        clerk: fields[6].to_string(),
        shippriority: fields[7].parse().unwrap(),
        comment: fields[8].to_string(),
    }
}

fn parse_part(line: &str) -> Part {
    let fields: Vec<&str> = line.split('|').collect();
    Part {
        partkey: fields[0].parse().unwrap(),
        name: fields[1].to_string(),
        mfgr: fields[2].to_string(),
        brand: fields[3].to_string(),
        r#type: fields[4].to_string(),
        size: fields[5].parse().unwrap(),
        container: fields[6].to_string(),
        retailprice: fields[7].parse().unwrap(),
        comment: fields[8].to_string(),
    }
}

fn parse_supplier(line: &str) -> Supplier {
    let fields: Vec<&str> = line.split('|').collect();
    Supplier {
        suppkey: fields[0].parse().unwrap(),
        name: fields[1].to_string(),
        address: fields[2].to_string(),
        nationkey: fields[3].parse().unwrap(),
        phone: fields[4].to_string(),
        acctbal: fields[5].parse().unwrap(),
        comment: fields[6].to_string(),
    }
}

// This is a library function used to unparse a given tablerow.
pub(crate) fn unparse_line(name: &str, row: &Box<dyn TableRow>) -> String {
    match name {
        "LineItem" => {
            format!(
                "{}|{}|{}|{}|{}|{}|{}|{}|{}|{}",
                row.get_attribute("orderkey").unwrap(),
                row.get_attribute("part_key").unwrap(),
                row.get_attribute("suppkey").unwrap(),
                row.get_attribute("quantity").unwrap(),
                row.get_attribute("extendedprice").unwrap(),
                row.get_attribute("discount").unwrap(),
                row.get_attribute("tax").unwrap(),
                row.get_attribute("returnflag").unwrap(),
                row.get_attribute("linestatus").unwrap(),
                row.get_attribute("shipdate").unwrap(),
            )
        },
        "Customer" => {
            format!(
                "{}|{}|{}|{}|{}|{}|{}|{}",
                row.get_attribute("custkey").unwrap(),
                row.get_attribute("name").unwrap(),
                row.get_attribute("address").unwrap(),
                row.get_attribute("nationkey").unwrap(),
                row.get_attribute("phone").unwrap(),
                row.get_attribute("acctbal").unwrap(),
                row.get_attribute("mktsegment").unwrap(),
                row.get_attribute("comment").unwrap(),
            )
        },
        "Orders" => {
            format!(
                "{}|{}|{}|{}|{}|{}|{}|{}|{}",
                row.get_attribute("orderkey").unwrap(),
                row.get_attribute("custkey").unwrap(),
                row.get_attribute("orderstatus").unwrap(),
                row.get_attribute("totalprice").unwrap(),
                row.get_attribute("orderdate").unwrap(),
                row.get_attribute("orderpriority").unwrap(),
                row.get_attribute("clerk").unwrap(),
                row.get_attribute("shippriority").unwrap(),
                row.get_attribute("comment").unwrap(),
            )
        },
        "Part" => {
            format!(
                "{}|{}|{}|{}|{}|{}|{}|{}|{}",
                row.get_attribute("partkey").unwrap(),
                row.get_attribute("name").unwrap(),
                row.get_attribute("mfgr").unwrap(),
                row.get_attribute("brand").unwrap(),
                row.get_attribute("type").unwrap(),
                row.get_attribute("size").unwrap(),
                row.get_attribute("container").unwrap(),
                row.get_attribute("retailprice").unwrap(),
                row.get_attribute("comment").unwrap(),
            )
        },
        "Supplier" => {
            format!(
                "{}|{}|{}|{}|{}|{}|{}",
                row.get_attribute("suppkey").unwrap(),
                row.get_attribute("name").unwrap(),
                row.get_attribute("address").unwrap(),
                row.get_attribute("nationkey").unwrap(),
                row.get_attribute("phone").unwrap(),
                row.get_attribute("acctbal").unwrap(),
                row.get_attribute("comment").unwrap(),
            )
        },
        "PartSupp" => {
            format!(
                "{}|{}|{}|{}|{}",
                row.get_attribute("partkey").unwrap(),
                row.get_attribute("suppkey").unwrap(),
                row.get_attribute("availqty").unwrap(),
                row.get_attribute("supplycost").unwrap(),
                row.get_attribute("comment").unwrap(),
            )
        },
        "Region" => {
            format!(
                "{}|{}|{}",
                row.get_attribute("regionkey").unwrap(),
                row.get_attribute("name").unwrap(),
                row.get_attribute("comment").unwrap(),
            )
        },
        "Nation" => {
            format!(
                "{}|{}|{}|{}",
                row.get_attribute("nationkey").unwrap(),
                row.get_attribute("name").unwrap(),
                row.get_attribute("regionkey").unwrap(),
                row.get_attribute("comment").unwrap(),
            )
        },
        _ => {
            format!("Unkown table name.")
        }
    }
    
}

/*
* This function directly reads the data from the memory which is a single table and parses it into a Table structure.
* The data is a string since it can be read either from the memory (wasm) or a file (native).
*/
pub fn parse_table(data: String, name: &str) -> Table {
    let attributes = match name {
        "LineItem" => vec!["orderkey", "partkey", "suppkey", "quantity", "extendedprice", "discount", "tax", "returnflag", "linestatus", "shipdate"],
        "Customer" => vec!["custkey", "name", "address", "nationkey", "phone", "acctbal", "mktsegment", "comment"],
        "Orders" => vec!["orderkey", "custkey", "orderstatus", "totalprice", "orderdate", "orderpriority", "clerk", "shippriority", "comment"],
        "Part" => vec!["partkey", "name", "mfgr", "brand", "type", "size", "container", "retailprice", "comment"],
        "Supplier" => vec!["suppkey", "name", "address", "nationkey", "phone", "acctbal", "comment"],
        "PartSupp" => vec!["partkey", "suppkey", "availqty", "supplycost", "comment"],
        "Region" => vec!["regionkey", "name", "comment"],
        "Nation" => vec!["nationkey", "name", "regionkey", "comment"],
        _ => vec!["Unknown table name."],
    };
    let mut table = Table::new(name, attributes);
    let rows = data.split("\n");
    for row in rows {
        let fields: Vec<&str> = row.split('|').collect();
        match name {
            "LineItem" => {
                let entry = LineItem {
                    orderkey: fields[0].parse().unwrap(),
                    part_key: fields[1].parse().unwrap(),
                    suppkey: fields[2].parse().unwrap(),
                    linenumber: fields[3].parse().unwrap(),
                    quantity: fields[4].parse().unwrap(),
                    extendedprice: fields[5].parse().unwrap(),
                    discount: fields[6].parse().unwrap(),
                    tax: fields[7].parse().unwrap(),
                    returnflag: fields[8].chars().next().unwrap(),
                    linestatus: fields[9].chars().next().unwrap(),
                    shipdate: fields[10].to_string(),
                    commit_date: fields[11].to_string(),
                    receipt_date: fields[12].to_string(),
                    shipinstruct: fields[13].to_string(),
                    shipmode: fields[14].to_string(),
                    comment: fields[15].to_string(),
                };
                table.insert_row(Box::new(entry));
            },
            "Customer" => {
                let entry = Customer {
                    custkey: fields[0].parse().unwrap(),
                    name: fields[1].to_string(),
                    address: fields[2].to_string(),
                    nationkey: fields[3].parse().unwrap(),
                    phone: fields[4].to_string(),
                    acctbal: fields[5].parse().unwrap(),
                    mktsegment: fields[6].to_string(),
                    comment: fields[7].to_string(),
                };
                table.insert_row(Box::new(entry));
            },
            "Orders" => {
                let entry = Order {
                    orderkey: fields[0].parse().unwrap(),
                    custkey: fields[1].parse().unwrap(),
                    orderstatus: fields[2].to_string(),
                    totalprice: fields[3].parse().unwrap(),
                    orderdate: fields[4].to_string(),
                    orderpriority: fields[5].to_string(),
                    clerk: fields[6].to_string(),
                    shippriority: fields[7].parse().unwrap(),
                    comment: fields[8].to_string(),
                };
                table.insert_row(Box::new(entry));
            },
            "Part" => {
                let entry = Part {
                    partkey: fields[0].parse().unwrap(),
                    name: fields[1].to_string(),
                    mfgr: fields[2].to_string(),
                    brand: fields[3].to_string(),
                    r#type: fields[4].to_string(),
                    size: fields[5].parse().unwrap(),
                    container: fields[6].to_string(),
                    retailprice: fields[7].parse().unwrap(),
                    comment: fields[8].to_string(),
                };
                table.insert_row(Box::new(entry));
            },
            "Supplier" => {
                let entry = Supplier {
                    suppkey: fields[0].parse().unwrap(),
                    name: fields[1].to_string(),
                    address: fields[2].to_string(),
                    nationkey: fields[3].parse().unwrap(),
                    phone: fields[4].to_string(),
                    acctbal: fields[5].parse().unwrap(),
                    comment: fields[6].to_string(),
                };
                table.insert_row(Box::new(entry));
            },
            "PartSupp" => {
                let entry = PartSupp {
                    partkey: fields[0].parse().unwrap(),
                    suppkey: fields[1].parse().unwrap(),
                    availqty: fields[2].parse().unwrap(),
                    supplycost: fields[3].parse().unwrap(),
                    comment: fields[4].to_string(),
                };
                table.insert_row(Box::new(entry));
            },
            "Region" => {
                let entry = Region {
                    regionkey: fields[0].parse().unwrap(),
                    name: fields[1].to_string(),
                    comment: fields[2].to_string(),
                };
                table.insert_row(Box::new(entry));
            },
            "Nation" => {
                let entry = Nation {
                    nationkey: fields[0].parse().unwrap(),
                    name: fields[1].to_string(),
                    regionkey: fields[2].parse().unwrap(),
                    comment: fields[3].to_string(),
                };
                table.insert_row(Box::new(entry));
            },
            _ => {
                println!("Unknown table name.");
            }
        }
    }
    table
}

// This is an old function diretly used to read data from known files.
pub fn parse_read(
    path: &str,
) -> io::Result<(
    Table,
    Table,
    Table,
    Table,
    Table,
    Table,
    Table,
    Table,
)> {

    let lineitem_path = Path::new(path).join("lineitem.tbl");
    let customer_path = Path::new(path).join("customer.tbl");
    let orders_path = Path::new(path).join("orders.tbl");
    let part_path = Path::new(path).join("part.tbl");
    let supplier_path = Path::new(path).join("supplier.tbl");
    let partsupp_path = Path::new(path).join("partsupp.tbl");
    let region_path = Path::new(path).join("region.tbl");
    let nation_path = Path::new(path).join("nation.tbl");

    let mut lineitem_table = Table::new(
        "LineItem",
        vec!["orderkey", "part_key", "suppkey", "linenumber", "quantity", "extendedprice", "discount", "tax", "returnflag", "linestatus", "shipdate", "commit_date", "receipt_date", "shipinstruct", "shipmode", "comment"]);
    let mut customer_table = Table::new(
        "Customer",
        vec!["custkey", "name", "address", "nationkey", "phone", "acctbal", "mktsegment", "comment"]);
    let mut orders_table = Table::new(
        "Orders",
        vec!["orderkey", "custkey", "orderstatus", "totalprice", "orderdate", "orderpriority", "clerk", "shippriority", "comment"]);
    let mut part_table = Table::new(
        "Part",
        vec!["partkey", "name", "mfgr", "brand", "type", "size", "container", "retailprice", "comment"]);
    let mut supplier_table = Table::new(
        "Supplier",
        vec!["suppkey", "name", "address", "nationkey", "phone", "acctbal", "comment"]);
    let mut partsupp_table = Table::new(
        "PartSupp",
        vec!["partkey", "suppkey", "availqty", "supplycost", "comment"]);
    let mut region_table = Table::new(
        "Region",
        vec!["regionkey", "name", "comment"]);
    let mut nation_table = Table::new(
        "Nation",
        vec!["nationkey", "name", "regionkey", "comment"]);
    
    let lineitem_file = File::open(&lineitem_path)?;
    for line in io::BufReader::new(lineitem_file).lines() {
        let line = line?;
        let entry = parse_lineitem(&line);
        lineitem_table.insert_row(Box::new(entry));
    }

    let customer_file = File::open(&customer_path)?;
    for line in io::BufReader::new(customer_file).lines() {
        let line = line?;
        let entry = parse_customer(&line);
        customer_table.insert_row(Box::new(entry));
    }

    let orders_file = File::open(&orders_path)?;
    for line in io::BufReader::new(orders_file).lines() {
        let line = line?;
        let entry = parse_order(&line);
        orders_table.insert_row(Box::new(entry));
    }

    let nation_file = File::open(&nation_path)?;
    for line in io::BufReader::new(nation_file).lines() {
        let line = line?;
        let entry = parse_nation(&line);
        nation_table.insert_row(Box::new(entry));
    }

    let partsupp_file = File::open(&partsupp_path)?;
    for line in io::BufReader::new(partsupp_file).lines() {
        let line = line?;
        let entry = parse_partsupp(&line);
        partsupp_table.insert_row(Box::new(entry));
    }

    let region_file = File::open(&region_path)?;
    for line in io::BufReader::new(region_file).lines() {
        let line = line?;
        let entry = parse_region(&line);
        region_table.insert_row(Box::new(entry));
    }

    let part_file = File::open(&part_path)?;
    for line in io::BufReader::new(part_file).lines() {
        let line = line?;
        let entry = parse_part(&line);
        part_table.insert_row(Box::new(entry));
    }

    let supplier_file = File::open(&supplier_path)?;
    for line in io::BufReader::new(supplier_file).lines() {
        let line = line?;
        let entry = parse_supplier(&line);
        supplier_table.insert_row(Box::new(entry));
    }

    println!("Parsing end.");
    Ok((
        customer_table,
        nation_table,
        partsupp_table,
        region_table,
        lineitem_table,
        orders_table,
        part_table,
        supplier_table,
    ))
}


// Function to read the string from memory with parameters for pointer and offset
pub fn read_string_from_memory(offset: usize, len: usize) -> String {

    // Create a slice from our memory.
    let memory_slice = unsafe {
        // std::slice::from_raw_parts(offset as *const u8, len)
        Vec::from_raw_parts(offset as *mut u8, len as usize, len as usize)
    };

    let buffer = memory_slice[..len].to_vec();

    String::from_utf8_lossy(&buffer).to_string()
}

// Function to write a string to an available section in the module's memory.
pub fn write_string_to_memory(offset: usize, string: &str) {
    // We get the length of the string.
    let len = string.len();

    // We write the string to the beginning of the memory, overwriting the previous data.
    unsafe {
        let memory_slice = std::slice::from_raw_parts_mut(offset as *mut u8, len);
        memory_slice.copy_from_slice(string.as_bytes());
    }
}

/*
Function used to parse the dataset from the memory of the wasm module.
*/
pub fn parse_wasm_dataset(offset: usize, len: usize) -> io::Result<(
    Table,
    Table,
    Table,
    Table,
    Table,
    Table,
    Table,
    Table,
)> {
    let data = read_string_from_memory(offset, len);
    parse_dataset(data)
}

// Generic function to parse dataset given data input.
pub fn parse_dataset(data: String) -> io::Result<(
    Table,
    Table,
    Table,
    Table,
    Table,
    Table,
    Table,
    Table,
)> {
    // All the data rows are going to be written in the memory as string lines, each separated by a newline character.
    // The order of the tables is hardcoded.
    // The rows of a table are the lines until we reach a null terminating character.

    // We prepare the table structures.
let mut lineitem_table = Table::new(
        "LineItem",
        vec!["orderkey", "part_key", "suppkey", "linenumber", "quantity", "extendedprice", "discount", "tax", "returnflag", "linestatus", "shipdate", "commit_date", "receipt_date", "shipinstruct", "shipmode", "comment"]);
    let mut customer_table = Table::new(
        "Customer",
        vec!["custkey", "name", "address", "nationkey", "phone", "acctbal", "mktsegment", "comment"]);
    let mut orders_table = Table::new(
        "Orders",
        vec!["orderkey", "custkey", "orderstatus", "totalprice", "orderdate", "orderpriority", "clerk", "shippriority", "comment"]);
    let mut part_table = Table::new(
        "Part",
        vec!["partkey", "name", "mfgr", "brand", "type", "size", "container", "retailprice", "comment"]);
    let mut supplier_table = Table::new(
        "Supplier",
        vec!["suppkey", "name", "address", "nationkey", "phone", "acctbal", "comment"]);
    let mut partsupp_table = Table::new(
        "PartSupp",
        vec!["partkey", "suppkey", "availqty", "supplycost", "comment"]);
    let mut region_table = Table::new(
        "Region",
        vec!["regionkey", "name", "comment"]);
    let mut nation_table = Table::new(
        "Nation",
        vec!["nationkey", "name", "regionkey", "comment"]);

    // Then we begin the parsing by taking the group of lines corresponding to a table.
    let mut tables = data.split("\r");
    // println!("Number of tables: {}", tables.clone().count());

    // Since the parsing depends on the type of the table we have to do a for loop for each.
    
    // LineItem
    let lineitem_rows = tables.next().unwrap().split("\n");
    // println!("Nb of rows: {}", lineitem_rows.clone().count());
    for row in lineitem_rows {
        let entry = parse_lineitem(&row);
        lineitem_table.insert_row(Box::new(entry));
    }
    
    // Customer
    let customer_rows = tables.next().unwrap().split("\n");
    for row in customer_rows {
        let entry = parse_customer(&row);
        customer_table.insert_row(Box::new(entry));
    }

    // Orders
    let orders_rows = tables.next().unwrap().split("\n");
    for row in orders_rows {
        let entry = parse_order(&row);
        orders_table.insert_row(Box::new(entry));
    }

    // Nation
    let nation_rows = tables.next().unwrap().split("\n");
    for row in nation_rows {
        let entry = parse_nation(&row);
        nation_table.insert_row(Box::new(entry));
    }

    // PartSupp
    let partsupp_rows = tables.next().unwrap().split("\n");
    for row in partsupp_rows {
        let entry = parse_partsupp(&row);
        partsupp_table.insert_row(Box::new(entry));
    }

    // Region
    let region_rows = tables.next().unwrap().split("\n");
    for row in region_rows {
        let entry = parse_region(&row);
        region_table.insert_row(Box::new(entry));
    }

    // Part
    let part_rows = tables.next().unwrap().split("\n");
    for row in part_rows {
        let entry = parse_part(&row);
        part_table.insert_row(Box::new(entry));
    }
    
    // Supplier
    let supplier_rows = tables.next().unwrap().split("\n");
    for row in supplier_rows {
        let entry = parse_supplier(&row);
        supplier_table.insert_row(Box::new(entry));
    }

    // println!("Parsing end.");
    Ok((
        customer_table,
        nation_table,
        partsupp_table,
        region_table,
        lineitem_table,
        orders_table,
        part_table,
        supplier_table,
    ))
}

/** Function to generate a join query. **/

pub fn generate_random_join_query(tables: &[Table]) -> JoinQuery {
    let mut rng = rand::thread_rng();

    let mut indices: Vec<usize> = (0..tables.len()).collect();
    indices.shuffle(&mut rng);

    // Select two random tables from shuffled indices
    let mut remaining_indices = indices.clone();
    let mut table1_idx = remaining_indices.pop().unwrap();
    let mut table2_idx = remaining_indices.pop().unwrap();

    let mut common_attributes: Vec<String> = Vec::new();

    // Iterate until we find tables with common attributes or exhaust all possibilities
    while !common_attributes.is_empty() || !remaining_indices.is_empty() {
        let attributes_table1 = &tables[table1_idx].attributes;
        let attributes_table2 = &tables[table2_idx].attributes;

        // Check for common attributes
        common_attributes = attributes_table1
            .iter()
            .cloned()
            .filter(|attr| attributes_table2.contains(attr))
            .collect();

        if !common_attributes.is_empty() {
            break;
        }

        // No common attributes found, choose another pair of tables
        table1_idx = table2_idx;
        table2_idx = remaining_indices.pop().unwrap_or_else(|| table1_idx);
    }

    // Choose the attribute randomly from common attributes or first table
    let attribute = if !common_attributes.is_empty() {
        // Randomly choose a common attribute
        let common_attribute = common_attributes.choose(&mut rng).unwrap();
        common_attribute.to_string()
    } else {
        // Randomly choose an attribute from first table
        let attributes_table1 = &tables[table1_idx].attributes;
        let attr_table1 = attributes_table1.choose(&mut rng).unwrap();
        attr_table1.to_string()
    };

    JoinQuery {
        table1_idx,
        table2_idx,
        attribute
    }
}


/** Functions to perform join. **/

fn nested_loop_join<'a>(join_query: &JoinQuery, tables: &[Table], yield_result: bool) -> (Vec<(usize, usize)>, i32, i32) {
    let table1 = &tables[join_query.table1_idx];
    let table2 = &tables[join_query.table2_idx];

    let mut result = Vec::new();
    let mut entries = 0;
    let mut len = 0;

    let start = std::time::Instant::now();
    let time_limit = 100;

    for (i, row1) in table1.rows.iter().enumerate() {
        for (j, row2) in table2.rows.iter().enumerate() {
            if std::time::Instant::now().duration_since(start).as_secs() > time_limit {
                // len is the size of characters in the result.
                // It is entries * 6 because there are 7 characters in each entry with \n.
                return (result, entries, 7*entries);
            }
            //println!("Comparing {:?} and {:?}", row1.get_attribute(&join_query.attribute1).unwrap(), row2.get_attribute(&join_query.attribute2).unwrap());
            if row1.get_attribute(&join_query.attribute) == row2.get_attribute(&join_query.attribute) {
                if yield_result {
                    result.push((i, j));
                }
                entries += 1;
            }
        }
    }

    (result, entries, 7*entries)
}

fn hash_join(join_query: &JoinQuery, tables: &[Table], yield_result: bool) -> (Vec<(usize, usize)>, i32, i32) {
    let mut result = Vec::new();
    let table1 = &tables[join_query.table1_idx];
    let table2 = &tables[join_query.table2_idx];

    let mut entries = 0;

    // We may later on consider an hard-coded hash-table depending on the query (ad-hoc code generation).
    let mut hash_table: std::collections::HashMap<AttributeValue, Vec<usize>> = std::collections::HashMap::new();
    // We may want to create a hash table with tablerow as value instead of vector of indices.
    // let mut hash_table: std::collections::HashMap<AttributeValue, Box<dyn TableRow>> = std::collections::HashMap::new();
    // indices are more efficient than tablerow because we don't have to copy the tablerow.
    for (i, row) in table1.rows.iter().enumerate() {
        if let Some(attr) = row.get_attribute(&join_query.attribute) {
            let indices = hash_table.entry(attr).or_insert(Vec::new());
            indices.push(i);
        }
        // Do nothing if the attribute is not available for this table.        
    }

    for (j, row) in table2.rows.iter().enumerate() {
        if let Some(attr) = row.get_attribute(&join_query.attribute) {
            if let Some(indices) = hash_table.get(&attr) {
                for i in indices {
                    if yield_result {
                        result.push((*i, j));
                    }
                    entries += 1;
                }
            } // Do nothing if there is no entry for this in the hash table.
        }
        // Do nothing if the attribute is not available for this table.
    }

    (result, entries, 7*entries)
}

/*
* Implementation of sort-merge join, it takes in a join query and the tables,
* it returns a vec of pairs of indices where the first one is the row from the first table
* and the second from the second table.
* 
* It is based on attribute indexing since it sorts and reorders rows internally.
*/
fn sort_merge_join(join_query: &JoinQuery, tables: &[Table], yield_result: bool) -> (Vec<(usize, usize)>, i32, i32) {
    let mut result = Vec::new();

    let table1 = &tables[join_query.table1_idx];
    let table2 = &tables[join_query.table2_idx];

    let mut entries = 0;

    // Sort table1 based on attribute1
    //let mut sorted_indices_table1: Vec<_> = (0..table1.rows.len()).collect();
    let mut sorted_table1 = table1.rows.iter().enumerate().collect::<Vec<_>>();

    let comparator = |(_, a): &(usize, &Box<dyn TableRow>), (_, b): &(usize, &Box<dyn TableRow>)| {
        let attr_value_a = &a.get_attribute(&join_query.attribute);
        let attr_value_b = &b.get_attribute(&join_query.attribute);

        // Handle missing attribute values
        if let (Some(value_a), Some(value_b)) = (attr_value_a, attr_value_b) {
            // Compare attribute values
            return value_a.partial_cmp(value_b).unwrap();
        }
        if attr_value_a.is_some() {
            return std::cmp::Ordering::Greater;
        }
        if attr_value_b.is_some() {
            return std::cmp::Ordering::Less;
        }

        // Default to equal if both attribute values are missing
        std::cmp::Ordering::Equal
    };
    sorted_table1.sort_by(comparator);

    // Sort table2 based on attribute2
    let mut sorted_table2 = table2.rows.iter().enumerate().collect::<Vec<_>>();
    sorted_table2.sort_by(comparator);

    // println!("Sorted incides 1 : {:?}", sorted_indices_table1);

    let mut i = 0;
    let mut j = 0;

    // Merge step
    while i < sorted_table1.len() && j < sorted_table2.len() {
        let row1 = &sorted_table1[i].1;
        let row2 = &sorted_table2[j].1;

        let attr_value1 = row1.get_attribute(&join_query.attribute);
        let attr_value2 = row2.get_attribute(&join_query.attribute);

        match attr_value1.partial_cmp(&attr_value2) {
            Some(std::cmp::Ordering::Less) => {
                i += 1;
            }
            Some(std::cmp::Ordering::Greater) => {
                j += 1;
            }
            Some(std::cmp::Ordering::Equal) => {
                if yield_result {
                    result.push((sorted_table1[i].0, sorted_table2[j].0));
                }
                entries += 1;
                let mut k = i + 1;
                while k < sorted_table1.len() && attr_value1 == sorted_table1[k].1.get_attribute(&join_query.attribute) {
                    if yield_result {
                        result.push((sorted_table1[k].0, sorted_table2[j].0));
                    }
                    entries += 1;
                    k += 1;
                }
                k = j + 1;
                while k < sorted_table2.len() && attr_value2 == sorted_table2[k].1.get_attribute(&join_query.attribute) {
                    if yield_result {
                        result.push((sorted_table1[i].0, sorted_table2[k].0));
                    }
                    entries += 1;
                    k += 1;
                }
                i += 1;
                j += 1;
            }
            _ => {
                // Do nothing
            }
        }
    }
    (result, entries, 7*entries)
}

/** Hardcoded queries as join queries structures. **/
// Function to return a list of join queries.

pub fn get_join_queries() -> Vec<JoinQuery> {
    let mut join_queries = Vec::new();

    // All below queries are inspired from TPC-H benchmark queries, where we only consider the join operations.
    // Here are the used table indices:
    // 0: Customer, 1: Nation, 2: PartSupp, 3: Region, 4: LineItem, 5: Orders, 6: Part, 7: Supplier

    // Query 0
    // From Query 2 : SELECT * FROM Part, PartSupp WHERE PartSupp.partkey = Part.partkey;
    join_queries.push(JoinQuery {
        table1_idx: 6,
        table2_idx: 2,
        attribute: String::from("partkey"),
    });

    // Query 1
    // From Query 2 : SELECT * FROM Supplier, PartSupp WHERE Supplier.suppkey = PartSupp.suppkey;
    join_queries.push(JoinQuery {
        table1_idx: 7,
        table2_idx: 2,
        attribute: String::from("suppkey"),
    });

    // Query 2
    // From Query 2 : SELECT * FROM Supplier, Nation WHERE Supplier.nationkey = Nation.nationkey;
    join_queries.push(JoinQuery {
        table1_idx: 7,
        table2_idx: 1,
        attribute: String::from("nationkey"),
    });

    // Query 3
    // From Query 2 : SELECT * FROM Nation, Region WHERE Nation.regionkey = Region.regionkey;
    join_queries.push(JoinQuery {
        table1_idx: 1,
        table2_idx: 3,
        attribute: String::from("regionkey"),
    });

    // Query 4
    // From Query 3 : SELECT * FROM Customer, Orders WHERE Customer.custkey = Orders.custkey;
    join_queries.push(JoinQuery {
        table1_idx: 0,
        table2_idx: 5,
        attribute: String::from("custkey"),
    });

    // Query 5 Extremely long
    // From Query 3 : SELECT * FROM LineItem, Orders WHERE LineItem.orderkey = Orders.orderkey;
    join_queries.push(JoinQuery {
        table1_idx: 4,
        table2_idx: 5,
        attribute: String::from("orderkey"),
    });

    // Query 6
    // From Query 5 : SELECT * FROM LineItem, Supplier WHERE LineItem.suppkey = Supplier.suppkey;
    join_queries.push(JoinQuery {
        table1_idx: 4,
        table2_idx: 7,
        attribute: String::from("suppkey"),
    });

    // Query 7
    // From Query 5 : SELECT * FROM Customer, Nation WHERE Customer.nationkey = Nation.nationkey;
    join_queries.push(JoinQuery {
        table1_idx: 0,
        table2_idx: 1,
        attribute: String::from("nationkey"),
    });

    // Query 8 Extremely long
    // From Query 8 : SELECT * FROM Part, LineItem WHERE Part.partkey = LineItem.partkey;
    join_queries.push(JoinQuery {
        table1_idx: 6,
        table2_idx: 4,
        attribute: String::from("partkey"),
    });

    // Query 9 Extremely long
    // From Query 9 : SELECT * FROM PartSupp, LineItem WHERE PartSupp.partkey = LineItem.partkey;
    join_queries.push(JoinQuery {
        table1_idx: 2,
        table2_idx: 4,
        attribute: String::from("partkey"),
    });

    // Query 10
    // Dummy Query to test join on String attribute : SELECT * FROM Customer, Nation WHERE Customer.name = Nation.name;
    join_queries.push(JoinQuery {
        table1_idx: 0,
        table2_idx: 1,
        attribute: String::from("name"),
    });

    // Query 11
    // Another on comment attribute : SELECT * FROM Part, Supplier WHERE Part.comment = Supplier.comment;
    join_queries.push(JoinQuery {
        table1_idx: 6,
        table2_idx: 7,
        attribute: String::from("comment"),
    });

    // Remaining queries are not included as they either involve different operations or are redundant or are considered not relevant for this benchmark.

    join_queries
}


/** Benchmark functions. **/

pub fn benchmark_join(join_query: &JoinQuery, tables: &[Table], join_type: &JoinType, yield_result: bool) -> (std::time::Duration, (Vec<(usize, usize)>, i32, i32)) {
    let start = std::time::Instant::now();
    // println!("Performing query: SELECT * FROM {} JOIN {} ON {}.{} = {}.{};", tables[join_query.table1_idx].name, tables[join_query.table2_idx].name, tables[join_query.table1_idx].name, join_query.attribute1, tables[join_query.table2_idx].name, join_query.attribute2);
    let join_result =
    match join_type {
        JoinType::NestedLoop => {
            nested_loop_join(&join_query, &tables, yield_result)
            // println!("With Nested Loop Join - for a total of {} rows.", join_result.len());
        }
        JoinType::Hash => {
            hash_join(&join_query, &tables, yield_result)
            // println!("With Hash Join - for a total of {} rows.", join_result.len());
        }
        JoinType::SortMerge => {
            sort_merge_join(&join_query, &tables, yield_result)
            // println!("With Sort Merge Join - for a total of {} rows.", join_result.len());
        }
    };
    (start.elapsed(), join_result)
}