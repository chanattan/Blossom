(module
  (type $t0 (func))
  (type $t1 (func (param i32)))
  (type $t2 (func (param i32 i32)))
  (type $t3 (func (param i32) (result i32)))
  (type $t4 (func (param i32 i32) (result i32)))
  (type $t5 (func (param i32 i32 i32)))
  (type $t6 (func (param i32 i32 i32) (result i32)))
  (type $t7 (func (param i32 i32 i32 i32) (result i32)))
  (type $t8 (func (result i32)))
  (type $t9 (func (param i32 i32 i32 i32)))
  (type $t10 (func (param i32 i32 i32 i32 i32) (result i32)))
  (type $t11 (func (param i32 i32 i32 i32 i32 i32)))
  (type $t12 (func (param i32 i32 i32 i32 i32 i32) (result i32)))
  (type $t13 (func (param i32 i32 i32 i32 i32)))
  (type $t14 (func (param i32 i32 i32 i32 i32 i32 i32)))
  (type $t15 (func (param i32 i32 i32 i32 i32 i32 i32) (result i32)))
  (type $t16 (func (param i64 i32 i32) (result i32)))
  (import "wasi_snapshot_preview1" "fd_write" (func $_ZN4wasi13lib_generated22wasi_snapshot_preview18fd_write17h206103b03f87f785E (type $t7)))
  (import "wasi_snapshot_preview1" "environ_get" (func $__imported_wasi_snapshot_preview1_environ_get (type $t4)))
  (import "wasi_snapshot_preview1" "environ_sizes_get" (func $__imported_wasi_snapshot_preview1_environ_sizes_get (type $t4)))
  (import "wasi_snapshot_preview1" "proc_exit" (func $__imported_wasi_snapshot_preview1_proc_exit (type $t1)))
  (func $__wasm_call_ctors (type $t0))
  (func $_start (export "_start") (type $t0)
    (local $l0 i32)
    (block $B0
      (block $B1
        (br_if $B1
          (i32.load offset=1056008
            (i32.const 0)))
        (i32.store offset=1056008
          (i32.const 0)
          (i32.const 1))
        (call $__wasm_call_ctors)
        (local.set $l0
          (call $__main_void))
        (call $__wasm_call_dtors)
        (br_if $B0
          (local.get $l0))
        (return))
      (unreachable)
      (unreachable))
    (call $__wasi_proc_exit
      (local.get $l0))
    (unreachable))
  (func $_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17hbe85ccc0c9fb6161E (type $t1) (param $p0 i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32)
    (local.set $l1
      (global.get $__stack_pointer))
    (local.set $l2
      (i32.const 16))
    (local.set $l3
      (i32.sub
        (local.get $l1)
        (local.get $l2)))
    (global.set $__stack_pointer
      (local.get $l3))
    (i32.store offset=8
      (local.get $l3)
      (local.get $p0))
    (call $_ZN4core3ops8function6FnOnce9call_once17hd6a241e24475f64eE
      (local.get $p0))
    (local.set $l4
      (i32.const 16))
    (local.set $l5
      (i32.add
        (local.get $l3)
        (local.get $l4)))
    (global.set $__stack_pointer
      (local.get $l5))
    (return))
  (func $_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h0bd1316e6f82d449E (type $t8) (result i32)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32)
    (local.set $l0
      (global.get $__stack_pointer))
    (local.set $l1
      (i32.const 16))
    (drop
      (i32.sub
        (local.get $l0)
        (local.get $l1)))
    (local.set $l2
      (i32.const 0))
    (local.set $l3
      (i32.const 1))
    (local.set $l4
      (i32.and
        (local.get $l2)
        (local.get $l3)))
    (return
      (local.get $l4)))
  (func $_ZN3std2rt10lang_start17h599aaa91ff6a5fc6E (type $t7) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (result i32)
    (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32) (local $l13 i32) (local $l14 i32)
    (local.set $l4
      (global.get $__stack_pointer))
    (local.set $l5
      (i32.const 32))
    (local.set $l6
      (i32.sub
        (local.get $l4)
        (local.get $l5)))
    (global.set $__stack_pointer
      (local.get $l6))
    (i32.store offset=12
      (local.get $l6)
      (local.get $p0))
    (i32.store offset=16
      (local.get $l6)
      (local.get $p1))
    (i32.store offset=20
      (local.get $l6)
      (local.get $p2))
    (i32.store8 offset=27
      (local.get $l6)
      (local.get $p3))
    (i32.store offset=8
      (local.get $l6)
      (local.get $p0))
    (local.set $l7
      (i32.const 8))
    (local.set $l8
      (i32.add
        (local.get $l6)
        (local.get $l7)))
    (local.set $l9
      (local.get $l8))
    (local.set $l10
      (i32.const 1048576))
    (local.set $l11
      (call $_ZN3std2rt19lang_start_internal17hd50e22a4f4ba2fa8E
        (local.get $l9)
        (local.get $l10)
        (local.get $p1)
        (local.get $p2)
        (local.get $p3)))
    (i32.store offset=4
      (local.get $l6)
      (local.get $l11))
    (local.set $l12
      (i32.load offset=4
        (local.get $l6)))
    (i32.store offset=28
      (local.get $l6)
      (local.get $l12))
    (local.set $l13
      (i32.const 32))
    (local.set $l14
      (i32.add
        (local.get $l6)
        (local.get $l13)))
    (global.set $__stack_pointer
      (local.get $l14))
    (return
      (local.get $l12)))
  (func $_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17ha15ac4440a8677acE (type $t3) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32) (local $l13 i32)
    (local.set $l1
      (global.get $__stack_pointer))
    (local.set $l2
      (i32.const 16))
    (local.set $l3
      (i32.sub
        (local.get $l1)
        (local.get $l2)))
    (global.set $__stack_pointer
      (local.get $l3))
    (i32.store offset=12
      (local.get $l3)
      (local.get $p0))
    (local.set $l4
      (i32.load
        (local.get $p0)))
    (call $_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17hbe85ccc0c9fb6161E
      (local.get $l4))
    (local.set $l5
      (call $_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h0bd1316e6f82d449E))
    (local.set $l6
      (i32.const 1))
    (local.set $l7
      (i32.and
        (local.get $l5)
        (local.get $l6)))
    (i32.store8 offset=11
      (local.get $l3)
      (local.get $l7))
    (local.set $l8
      (i32.const 11))
    (local.set $l9
      (i32.add
        (local.get $l3)
        (local.get $l8)))
    (local.set $l10
      (local.get $l9))
    (local.set $l11
      (call $_ZN3std3sys4wasi7process8ExitCode6as_i3217h01e1dbdb8d39bafaE
        (local.get $l10)))
    (local.set $l12
      (i32.const 16))
    (local.set $l13
      (i32.add
        (local.get $l3)
        (local.get $l12)))
    (global.set $__stack_pointer
      (local.get $l13))
    (return
      (local.get $l11)))
  (func $_ZN4core3fmt9Arguments9new_const17h33dfccbff261b35aE (type $t5) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32) (local $l13 i32) (local $l14 i32) (local $l15 i32) (local $l16 i32) (local $l17 i32) (local $l18 i32) (local $l19 i32) (local $l20 i32) (local $l21 i32) (local $l22 i32) (local $l23 i32) (local $l24 i32) (local $l25 i32) (local $l26 i32) (local $l27 i32)
    (local.set $l3
      (global.get $__stack_pointer))
    (local.set $l4
      (i32.const 48))
    (local.set $l5
      (i32.sub
        (local.get $l3)
        (local.get $l4)))
    (global.set $__stack_pointer
      (local.get $l5))
    (i32.store offset=40
      (local.get $l5)
      (local.get $p1))
    (i32.store offset=44
      (local.get $l5)
      (local.get $p2))
    (local.set $l6
      (i32.const 1))
    (local.set $l7
      (local.get $p2))
    (local.set $l8
      (local.get $l6))
    (local.set $l9
      (i32.gt_u
        (local.get $l7)
        (local.get $l8)))
    (local.set $l10
      (i32.const 1))
    (local.set $l11
      (i32.and
        (local.get $l9)
        (local.get $l10)))
    (block $B0
      (br_if $B0
        (local.get $l11))
      (local.set $l12
        (i32.const 0))
      (i32.store offset=32
        (local.get $l5)
        (local.get $l12))
      (i32.store
        (local.get $p0)
        (local.get $p1))
      (i32.store offset=4
        (local.get $p0)
        (local.get $p2))
      (local.set $l13
        (i32.load offset=32
          (local.get $l5)))
      (local.set $l14
        (i32.load offset=36
          (local.get $l5)))
      (i32.store offset=16
        (local.get $p0)
        (local.get $l13))
      (i32.store offset=20
        (local.get $p0)
        (local.get $l14))
      (local.set $l15
        (i32.const 1048600))
      (i32.store offset=8
        (local.get $p0)
        (local.get $l15))
      (local.set $l16
        (i32.const 0))
      (i32.store offset=12
        (local.get $p0)
        (local.get $l16))
      (local.set $l17
        (i32.const 48))
      (local.set $l18
        (i32.add
          (local.get $l5)
          (local.get $l17)))
      (global.set $__stack_pointer
        (local.get $l18))
      (return))
    (local.set $l19
      (i32.const 8))
    (local.set $l20
      (i32.add
        (local.get $l5)
        (local.get $l19)))
    (local.set $l21
      (local.get $l20))
    (local.set $l22
      (i32.const 1048612))
    (local.set $l23
      (i32.const 1))
    (call $_ZN4core3fmt9Arguments9new_const17h33dfccbff261b35aE
      (local.get $l21)
      (local.get $l22)
      (local.get $l23))
    (local.set $l24
      (i32.const 8))
    (local.set $l25
      (i32.add
        (local.get $l5)
        (local.get $l24)))
    (local.set $l26
      (local.get $l25))
    (local.set $l27
      (i32.const 1048696))
    (call $_ZN4core9panicking9panic_fmt17h2a1cf3beec13dfc3E
      (local.get $l26)
      (local.get $l27))
    (unreachable))
  (func $_ZN5joins4main17ha474ec42ad7a0c7bE (type $t0)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32)
    (local.set $l0
      (global.get $__stack_pointer))
    (local.set $l1
      (i32.const 32))
    (local.set $l2
      (i32.sub
        (local.get $l0)
        (local.get $l1)))
    (global.set $__stack_pointer
      (local.get $l2))
    (local.set $l3
      (i32.const 8))
    (local.set $l4
      (i32.add
        (local.get $l2)
        (local.get $l3)))
    (local.set $l5
      (local.get $l4))
    (local.set $l6
      (i32.const 1048720))
    (local.set $l7
      (i32.const 1))
    (call $_ZN4core3fmt9Arguments9new_const17h33dfccbff261b35aE
      (local.get $l5)
      (local.get $l6)
      (local.get $l7))
    (local.set $l8
      (i32.const 8))
    (local.set $l9
      (i32.add
        (local.get $l2)
        (local.get $l8)))
    (local.set $l10
      (local.get $l9))
    (call $_ZN3std2io5stdio6_print17hed99a81f9f8d046fE
      (local.get $l10))
    (local.set $l11
      (i32.const 32))
    (local.set $l12
      (i32.add
        (local.get $l2)
        (local.get $l11)))
    (global.set $__stack_pointer
      (local.get $l12))
    (return))
  (func $__main_void (export "__main_void") (type $t8) (result i32)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32)
    (local.set $l0
      (i32.const 4))
    (local.set $l1
      (i32.const 0))
    (local.set $l2
      (i32.const 0))
    (local.set $l3
      (call $_ZN3std2rt10lang_start17h599aaa91ff6a5fc6E
        (local.get $l0)
        (local.get $l1)
        (local.get $l1)
        (local.get $l2)))
    (return
      (local.get $l3)))
  (func $_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h55f2299227dc690dE (type $t3) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32)
    (local.set $l1
      (global.get $__stack_pointer))
    (local.set $l2
      (i32.const 16))
    (local.set $l3
      (i32.sub
        (local.get $l1)
        (local.get $l2)))
    (global.set $__stack_pointer
      (local.get $l3))
    (i32.store offset=12
      (local.get $l3)
      (local.get $p0))
    (local.set $l4
      (i32.load
        (local.get $p0)))
    (local.set $l5
      (call $_ZN4core3ops8function6FnOnce9call_once17h37e53f7dd7661db0E
        (local.get $l4)))
    (local.set $l6
      (i32.const 16))
    (local.set $l7
      (i32.add
        (local.get $l3)
        (local.get $l6)))
    (global.set $__stack_pointer
      (local.get $l7))
    (return
      (local.get $l5)))
  (func $_ZN4core3ops8function6FnOnce9call_once17h37e53f7dd7661db0E (type $t3) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32)
    (local.set $l1
      (global.get $__stack_pointer))
    (local.set $l2
      (i32.const 16))
    (local.set $l3
      (i32.sub
        (local.get $l1)
        (local.get $l2)))
    (global.set $__stack_pointer
      (local.get $l3))
    (i32.store offset=8
      (local.get $l3)
      (local.get $p0))
    (local.set $l4
      (i32.const 8))
    (local.set $l5
      (i32.add
        (local.get $l3)
        (local.get $l4)))
    (local.set $l6
      (local.get $l5))
    (local.set $l7
      (call $_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17ha15ac4440a8677acE
        (local.get $l6)))
    (local.set $l8
      (i32.const 16))
    (local.set $l9
      (i32.add
        (local.get $l3)
        (local.get $l8)))
    (global.set $__stack_pointer
      (local.get $l9))
    (return
      (local.get $l7)))
  (func $_ZN4core3ops8function6FnOnce9call_once17hd6a241e24475f64eE (type $t1) (param $p0 i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32)
    (local.set $l1
      (global.get $__stack_pointer))
    (local.set $l2
      (i32.const 16))
    (local.set $l3
      (i32.sub
        (local.get $l1)
        (local.get $l2)))
    (global.set $__stack_pointer
      (local.get $l3))
    (i32.store offset=12
      (local.get $l3)
      (local.get $p0))
    (call_indirect $T0 (type $t0)
      (local.get $p0))
    (local.set $l4
      (i32.const 16))
    (local.set $l5
      (i32.add
        (local.get $l3)
        (local.get $l4)))
    (global.set $__stack_pointer
      (local.get $l5))
    (return))
  (func $_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hccc4fb6254324a13E (type $t1) (param $p0 i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32)
    (local.set $l1
      (global.get $__stack_pointer))
    (local.set $l2
      (i32.const 16))
    (local.set $l3
      (i32.sub
        (local.get $l1)
        (local.get $l2)))
    (i32.store offset=12
      (local.get $l3)
      (local.get $p0))
    (return))
  (func $__rust_alloc (type $t4) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32)
    (local.set $l2
      (call $__rdl_alloc
        (local.get $p0)
        (local.get $p1)))
    (return
      (local.get $l2)))
  (func $__rust_dealloc (type $t5) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (call $__rdl_dealloc
      (local.get $p0)
      (local.get $p1)
      (local.get $p2))
    (return))
  (func $__rust_realloc (type $t7) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (result i32)
    (local $l4 i32)
    (local.set $l4
      (call $__rdl_realloc
        (local.get $p0)
        (local.get $p1)
        (local.get $p2)
        (local.get $p3)))
    (return
      (local.get $l4)))
  (func $__rust_alloc_error_handler (type $t2) (param $p0 i32) (param $p1 i32)
    (call $__rg_oom
      (local.get $p0)
      (local.get $p1))
    (return))
  (func $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h35d7b88db3d025d8E (type $t2) (param $p0 i32) (param $p1 i32)
    (i64.store offset=8
      (local.get $p0)
      (i64.const -163230743173927068))
    (i64.store
      (local.get $p0)
      (i64.const -4493808902380553279)))
  (func $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h8d81b619716461bbE (type $t2) (param $p0 i32) (param $p1 i32)
    (i64.store offset=8
      (local.get $p0)
      (i64.const 8409212631816552094))
    (i64.store
      (local.get $p0)
      (i64.const -6355041371609663837)))
  (func $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hbd2f3d82883a57ccE (type $t2) (param $p0 i32) (param $p1 i32)
    (i64.store offset=8
      (local.get $p0)
      (i64.const 7425947080337139183))
    (i64.store
      (local.get $p0)
      (i64.const 5627976872320765507)))
  (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h3c7c9008ec711291E (type $t4) (param $p0 i32) (param $p1 i32) (result i32)
    (call $_ZN4core3fmt9Formatter3pad17h3abb0d5578a98d1fE
      (local.get $p1)
      (i32.const 1048728)
      (i32.const 2)))
  (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h51cb4d06b6ebea7cE (type $t4) (param $p0 i32) (param $p1 i32) (result i32)
    (call $_ZN64_$LT$alloc..ffi..c_str..NulError$u20$as$u20$core..fmt..Debug$GT$3fmt17hd21c63415083184cE
      (i32.load
        (i32.load
          (local.get $p0)))
      (local.get $p1)))
  (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17ha36630586f98f407E (type $t4) (param $p0 i32) (param $p1 i32) (result i32)
    (call $_ZN43_$LT$bool$u20$as$u20$core..fmt..Display$GT$3fmt17h766e77db32ad58ccE
      (i32.load
        (local.get $p0))
      (local.get $p1)))
  (func $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h0c336d50b98ca2bfE (type $t4) (param $p0 i32) (param $p1 i32) (result i32)
    (call $_ZN70_$LT$core..panic..location..Location$u20$as$u20$core..fmt..Display$GT$3fmt17h11de13d4848f3a34E
      (i32.load
        (local.get $p0))
      (local.get $p1)))
  (func $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h4c79d637da76059fE (type $t4) (param $p0 i32) (param $p1 i32) (result i32)
    (call $_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h168a697adc3298ffE
      (i32.load
        (local.get $p0))
      (i32.load offset=4
        (local.get $p0))
      (local.get $p1)))
  (func $_ZN4core3fmt5Write10write_char17h04f9b27636a7844eE (type $t4) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32)
    (global.set $__stack_pointer
      (local.tee $l2
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 16))))
    (i32.store offset=12
      (local.get $l2)
      (i32.const 0))
    (block $B0
      (block $B1
        (block $B2
          (block $B3
            (br_if $B3
              (i32.lt_u
                (local.get $p1)
                (i32.const 128)))
            (br_if $B2
              (i32.lt_u
                (local.get $p1)
                (i32.const 2048)))
            (br_if $B1
              (i32.ge_u
                (local.get $p1)
                (i32.const 65536)))
            (i32.store8 offset=14
              (local.get $l2)
              (i32.or
                (i32.and
                  (local.get $p1)
                  (i32.const 63))
                (i32.const 128)))
            (i32.store8 offset=12
              (local.get $l2)
              (i32.or
                (i32.shr_u
                  (local.get $p1)
                  (i32.const 12))
                (i32.const 224)))
            (i32.store8 offset=13
              (local.get $l2)
              (i32.or
                (i32.and
                  (i32.shr_u
                    (local.get $p1)
                    (i32.const 6))
                  (i32.const 63))
                (i32.const 128)))
            (local.set $p1
              (i32.const 3))
            (br $B0))
          (i32.store8 offset=12
            (local.get $l2)
            (local.get $p1))
          (local.set $p1
            (i32.const 1))
          (br $B0))
        (i32.store8 offset=13
          (local.get $l2)
          (i32.or
            (i32.and
              (local.get $p1)
              (i32.const 63))
            (i32.const 128)))
        (i32.store8 offset=12
          (local.get $l2)
          (i32.or
            (i32.shr_u
              (local.get $p1)
              (i32.const 6))
            (i32.const 192)))
        (local.set $p1
          (i32.const 2))
        (br $B0))
      (i32.store8 offset=15
        (local.get $l2)
        (i32.or
          (i32.and
            (local.get $p1)
            (i32.const 63))
          (i32.const 128)))
      (i32.store8 offset=14
        (local.get $l2)
        (i32.or
          (i32.and
            (i32.shr_u
              (local.get $p1)
              (i32.const 6))
            (i32.const 63))
          (i32.const 128)))
      (i32.store8 offset=13
        (local.get $l2)
        (i32.or
          (i32.and
            (i32.shr_u
              (local.get $p1)
              (i32.const 12))
            (i32.const 63))
          (i32.const 128)))
      (i32.store8 offset=12
        (local.get $l2)
        (i32.or
          (i32.and
            (i32.shr_u
              (local.get $p1)
              (i32.const 18))
            (i32.const 7))
          (i32.const 240)))
      (local.set $p1
        (i32.const 4)))
    (local.set $p1
      (call $_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h0248d5eaee56b2f9E
        (local.get $p0)
        (i32.add
          (local.get $l2)
          (i32.const 12))
        (local.get $p1)))
    (global.set $__stack_pointer
      (i32.add
        (local.get $l2)
        (i32.const 16)))
    (local.get $p1))
  (func $_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h0248d5eaee56b2f9E (type $t6) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32)
    (global.set $__stack_pointer
      (local.tee $l3
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 32))))
    (local.set $l4
      (i32.const 0))
    (block $B0
      (block $B1
        (br_if $B1
          (i32.eqz
            (local.get $p2)))
        (block $B2
          (loop $L3
            (i32.store offset=16
              (local.get $l3)
              (local.get $p2))
            (i32.store offset=12
              (local.get $l3)
              (local.get $p1))
            (call $_ZN4wasi13lib_generated8fd_write17he16b5a9ceecf5729E
              (i32.add
                (local.get $l3)
                (i32.const 20))
              (i32.const 2)
              (i32.add
                (local.get $l3)
                (i32.const 12))
              (i32.const 1))
            (block $B4
              (br_if $B4
                (i32.load16_u offset=20
                  (local.get $l3)))
              (block $B5
                (br_if $B5
                  (local.tee $l5
                    (i32.load offset=24
                      (local.get $l3))))
                (local.set $p2
                  (i32.const 2))
                (local.set $p1
                  (i32.const 1050752))
                (br $B2))
              (br_if $B0
                (i32.lt_u
                  (local.get $p2)
                  (local.get $l5)))
              (local.set $p1
                (i32.add
                  (local.get $p1)
                  (local.get $l5)))
              (br_if $L3
                (local.tee $p2
                  (i32.sub
                    (local.get $p2)
                    (local.get $l5))))
              (br $B1))
            (i32.store16 offset=30
              (local.get $l3)
              (i32.load16_u offset=22
                (local.get $l3)))
            (block $B6
              (br_if $B6
                (i32.ne
                  (i32.and
                    (local.tee $l5
                      (call $_ZN4wasi13lib_generated5Errno3raw17hdc11aaa809e24aabE
                        (i32.add
                          (local.get $l3)
                          (i32.const 30))))
                    (i32.const 65535))
                  (i32.and
                    (call $_ZN4wasi13lib_generated5Errno3raw17hdc11aaa809e24aabE
                      (i32.const 1050366))
                    (i32.const 65535))))
              (br_if $L3
                (local.get $p2))
              (br $B1)))
          (local.set $p1
            (i32.and
              (local.get $l5)
              (i32.const 65535)))
          (local.set $p2
            (i32.const 0)))
        (local.set $l4
          (i32.load offset=4
            (local.get $p0)))
        (block $B7
          (block $B8
            (br_if $B8
              (i32.gt_u
                (local.tee $l5
                  (i32.load8_u
                    (local.get $p0)))
                (i32.const 4)))
            (br_if $B7
              (i32.ne
                (local.get $l5)
                (i32.const 3))))
          (call_indirect $T0 (type $t1)
            (local.tee $l6
              (i32.load
                (local.get $l4)))
            (i32.load
              (local.tee $l5
                (i32.load
                  (i32.add
                    (local.get $l4)
                    (i32.const 4))))))
          (block $B9
            (br_if $B9
              (i32.eqz
                (local.tee $l7
                  (i32.load offset=4
                    (local.get $l5)))))
            (call $__rust_dealloc
              (local.get $l6)
              (local.get $l7)
              (i32.load offset=8
                (local.get $l5))))
          (call $__rust_dealloc
            (local.get $l4)
            (i32.const 12)
            (i32.const 4)))
        (i32.store offset=4
          (local.get $p0)
          (local.get $p1))
        (i32.store
          (local.get $p0)
          (local.get $p2))
        (local.set $l4
          (i32.const 1)))
      (global.set $__stack_pointer
        (i32.add
          (local.get $l3)
          (i32.const 32)))
      (return
        (local.get $l4)))
    (call $_ZN4core5slice5index26slice_start_index_len_fail17he7b2fe2a6da776eaE
      (local.get $l5)
      (local.get $p2)
      (i32.const 1050764))
    (unreachable))
  (func $_ZN4core3fmt5Write10write_char17h4a7262c89090d582E (type $t4) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32)
    (global.set $__stack_pointer
      (local.tee $l2
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 16))))
    (i32.store offset=12
      (local.get $l2)
      (i32.const 0))
    (block $B0
      (block $B1
        (block $B2
          (block $B3
            (br_if $B3
              (i32.lt_u
                (local.get $p1)
                (i32.const 128)))
            (br_if $B2
              (i32.lt_u
                (local.get $p1)
                (i32.const 2048)))
            (br_if $B1
              (i32.ge_u
                (local.get $p1)
                (i32.const 65536)))
            (i32.store8 offset=14
              (local.get $l2)
              (i32.or
                (i32.and
                  (local.get $p1)
                  (i32.const 63))
                (i32.const 128)))
            (i32.store8 offset=12
              (local.get $l2)
              (i32.or
                (i32.shr_u
                  (local.get $p1)
                  (i32.const 12))
                (i32.const 224)))
            (i32.store8 offset=13
              (local.get $l2)
              (i32.or
                (i32.and
                  (i32.shr_u
                    (local.get $p1)
                    (i32.const 6))
                  (i32.const 63))
                (i32.const 128)))
            (local.set $l3
              (i32.const 3))
            (br $B0))
          (i32.store8 offset=12
            (local.get $l2)
            (local.get $p1))
          (local.set $l3
            (i32.const 1))
          (br $B0))
        (i32.store8 offset=13
          (local.get $l2)
          (i32.or
            (i32.and
              (local.get $p1)
              (i32.const 63))
            (i32.const 128)))
        (i32.store8 offset=12
          (local.get $l2)
          (i32.or
            (i32.shr_u
              (local.get $p1)
              (i32.const 6))
            (i32.const 192)))
        (local.set $l3
          (i32.const 2))
        (br $B0))
      (i32.store8 offset=15
        (local.get $l2)
        (i32.or
          (i32.and
            (local.get $p1)
            (i32.const 63))
          (i32.const 128)))
      (i32.store8 offset=14
        (local.get $l2)
        (i32.or
          (i32.and
            (i32.shr_u
              (local.get $p1)
              (i32.const 6))
            (i32.const 63))
          (i32.const 128)))
      (i32.store8 offset=13
        (local.get $l2)
        (i32.or
          (i32.and
            (i32.shr_u
              (local.get $p1)
              (i32.const 12))
            (i32.const 63))
          (i32.const 128)))
      (i32.store8 offset=12
        (local.get $l2)
        (i32.or
          (i32.and
            (i32.shr_u
              (local.get $p1)
              (i32.const 18))
            (i32.const 7))
          (i32.const 240)))
      (local.set $l3
        (i32.const 4)))
    (block $B4
      (br_if $B4
        (i32.ge_u
          (i32.sub
            (i32.load offset=4
              (local.tee $p1
                (i32.load offset=8
                  (local.get $p0))))
            (local.tee $p0
              (i32.load offset=8
                (local.get $p1))))
          (local.get $l3)))
      (call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17hdfa9348b6ca399abE
        (local.get $p1)
        (local.get $p0)
        (local.get $l3))
      (local.set $p0
        (i32.load offset=8
          (local.get $p1))))
    (drop
      (call $memcpy
        (i32.add
          (i32.load
            (local.get $p1))
          (local.get $p0))
        (i32.add
          (local.get $l2)
          (i32.const 12))
        (local.get $l3)))
    (i32.store offset=8
      (local.get $p1)
      (i32.add
        (local.get $p0)
        (local.get $l3)))
    (global.set $__stack_pointer
      (i32.add
        (local.get $l2)
        (i32.const 16)))
    (i32.const 0))
  (func $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17hdfa9348b6ca399abE (type $t5) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32) (local $l4 i32)
    (global.set $__stack_pointer
      (local.tee $l3
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 32))))
    (block $B0
      (block $B1
        (br_if $B1
          (i32.lt_u
            (local.tee $p2
              (i32.add
                (local.get $p1)
                (local.get $p2)))
            (local.get $p1)))
        (local.set $l4
          (i32.shr_u
            (i32.xor
              (local.tee $p2
                (select
                  (local.tee $p2
                    (select
                      (local.tee $l4
                        (i32.shl
                          (local.tee $p1
                            (i32.load offset=4
                              (local.get $p0)))
                          (i32.const 1)))
                      (local.get $p2)
                      (i32.gt_u
                        (local.get $l4)
                        (local.get $p2))))
                  (i32.const 8)
                  (i32.gt_u
                    (local.get $p2)
                    (i32.const 8))))
              (i32.const -1))
            (i32.const 31)))
        (block $B2
          (block $B3
            (br_if $B3
              (local.get $p1))
            (i32.store offset=24
              (local.get $l3)
              (i32.const 0))
            (br $B2))
          (i32.store offset=28
            (local.get $l3)
            (local.get $p1))
          (i32.store offset=24
            (local.get $l3)
            (i32.const 1))
          (i32.store offset=20
            (local.get $l3)
            (i32.load
              (local.get $p0))))
        (call $_ZN5alloc7raw_vec11finish_grow17h4770160e3a526a1dE
          (i32.add
            (local.get $l3)
            (i32.const 8))
          (local.get $l4)
          (local.get $p2)
          (i32.add
            (local.get $l3)
            (i32.const 20)))
        (local.set $p1
          (i32.load offset=12
            (local.get $l3)))
        (block $B4
          (br_if $B4
            (i32.load offset=8
              (local.get $l3)))
          (i32.store offset=4
            (local.get $p0)
            (local.get $p2))
          (i32.store
            (local.get $p0)
            (local.get $p1))
          (br $B0))
        (br_if $B0
          (i32.eq
            (local.get $p1)
            (i32.const -2147483647)))
        (br_if $B1
          (i32.eqz
            (local.get $p1)))
        (call $_ZN5alloc5alloc18handle_alloc_error17haf16dbf93a34ba25E
          (local.get $p1)
          (i32.load
            (i32.add
              (local.get $l3)
              (i32.const 16))))
        (unreachable))
      (call $_ZN5alloc7raw_vec17capacity_overflow17h71c1886b236d8c9dE)
      (unreachable))
    (global.set $__stack_pointer
      (i32.add
        (local.get $l3)
        (i32.const 32))))
  (func $_ZN4core3fmt5Write10write_char17h8ddc71bbf0a79198E (type $t4) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i64) (local $l5 i32) (local $l6 i32) (local $l7 i32)
    (global.set $__stack_pointer
      (local.tee $l2
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 16))))
    (i32.store offset=4
      (local.get $l2)
      (i32.const 0))
    (block $B0
      (block $B1
        (block $B2
          (block $B3
            (br_if $B3
              (i32.lt_u
                (local.get $p1)
                (i32.const 128)))
            (br_if $B2
              (i32.lt_u
                (local.get $p1)
                (i32.const 2048)))
            (br_if $B1
              (i32.ge_u
                (local.get $p1)
                (i32.const 65536)))
            (i32.store8 offset=6
              (local.get $l2)
              (i32.or
                (i32.and
                  (local.get $p1)
                  (i32.const 63))
                (i32.const 128)))
            (i32.store8 offset=4
              (local.get $l2)
              (i32.or
                (i32.shr_u
                  (local.get $p1)
                  (i32.const 12))
                (i32.const 224)))
            (i32.store8 offset=5
              (local.get $l2)
              (i32.or
                (i32.and
                  (i32.shr_u
                    (local.get $p1)
                    (i32.const 6))
                  (i32.const 63))
                (i32.const 128)))
            (local.set $p1
              (i32.const 3))
            (br $B0))
          (i32.store8 offset=4
            (local.get $l2)
            (local.get $p1))
          (local.set $p1
            (i32.const 1))
          (br $B0))
        (i32.store8 offset=5
          (local.get $l2)
          (i32.or
            (i32.and
              (local.get $p1)
              (i32.const 63))
            (i32.const 128)))
        (i32.store8 offset=4
          (local.get $l2)
          (i32.or
            (i32.shr_u
              (local.get $p1)
              (i32.const 6))
            (i32.const 192)))
        (local.set $p1
          (i32.const 2))
        (br $B0))
      (i32.store8 offset=7
        (local.get $l2)
        (i32.or
          (i32.and
            (local.get $p1)
            (i32.const 63))
          (i32.const 128)))
      (i32.store8 offset=6
        (local.get $l2)
        (i32.or
          (i32.and
            (i32.shr_u
              (local.get $p1)
              (i32.const 6))
            (i32.const 63))
          (i32.const 128)))
      (i32.store8 offset=5
        (local.get $l2)
        (i32.or
          (i32.and
            (i32.shr_u
              (local.get $p1)
              (i32.const 12))
            (i32.const 63))
          (i32.const 128)))
      (i32.store8 offset=4
        (local.get $l2)
        (i32.or
          (i32.and
            (i32.shr_u
              (local.get $p1)
              (i32.const 18))
            (i32.const 7))
          (i32.const 240)))
      (local.set $p1
        (i32.const 4)))
    (call $_ZN61_$LT$std..io..stdio..StdoutLock$u20$as$u20$std..io..Write$GT$9write_all17h0427e7875b82564eE
      (i32.add
        (local.get $l2)
        (i32.const 8))
      (i32.load offset=8
        (local.get $p0))
      (i32.add
        (local.get $l2)
        (i32.const 4))
      (local.get $p1))
    (block $B4
      (br_if $B4
        (i32.eq
          (local.tee $p1
            (i32.load8_u offset=8
              (local.get $l2)))
          (i32.const 4)))
      (local.set $l3
        (i32.load offset=4
          (local.get $p0)))
      (local.set $l4
        (i64.load offset=8
          (local.get $l2)))
      (block $B5
        (block $B6
          (br_if $B6
            (i32.gt_u
              (local.tee $l5
                (i32.load8_u
                  (local.get $p0)))
              (i32.const 4)))
          (br_if $B5
            (i32.ne
              (local.get $l5)
              (i32.const 3))))
        (call_indirect $T0 (type $t1)
          (local.tee $l6
            (i32.load
              (local.get $l3)))
          (i32.load
            (local.tee $l5
              (i32.load
                (i32.add
                  (local.get $l3)
                  (i32.const 4))))))
        (block $B7
          (br_if $B7
            (i32.eqz
              (local.tee $l7
                (i32.load offset=4
                  (local.get $l5)))))
          (call $__rust_dealloc
            (local.get $l6)
            (local.get $l7)
            (i32.load offset=8
              (local.get $l5))))
        (call $__rust_dealloc
          (local.get $l3)
          (i32.const 12)
          (i32.const 4)))
      (i64.store align=4
        (local.get $p0)
        (local.get $l4)))
    (global.set $__stack_pointer
      (i32.add
        (local.get $l2)
        (i32.const 16)))
    (i32.ne
      (local.get $p1)
      (i32.const 4)))
  (func $_ZN61_$LT$std..io..stdio..StdoutLock$u20$as$u20$std..io..Write$GT$9write_all17h0427e7875b82564eE (type $t9) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32)
    (global.set $__stack_pointer
      (local.tee $l4
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 16))))
    (block $B0
      (block $B1
        (block $B2
          (block $B3
            (block $B4
              (br_if $B4
                (i32.load offset=8
                  (local.tee $p1
                    (i32.load
                      (local.get $p1)))))
              (i32.store offset=8
                (local.get $p1)
                (i32.const -1))
              (call $_ZN4core5slice6memchr7memrchr17h23f7e4ee8de38ed7E
                (local.get $l4)
                (i32.const 10)
                (local.get $p2)
                (local.get $p3))
              (local.set $l5
                (i32.add
                  (local.get $p1)
                  (i32.const 12)))
              (block $B5
                (br_if $B5
                  (i32.load
                    (local.get $l4)))
                (block $B6
                  (block $B7
                    (block $B8
                      (br_if $B8
                        (local.tee $l6
                          (i32.load
                            (i32.add
                              (local.get $p1)
                              (i32.const 20)))))
                      (local.set $l6
                        (i32.const 0))
                      (br $B7))
                    (br_if $B7
                      (i32.ne
                        (i32.load8_u
                          (i32.add
                            (i32.add
                              (local.get $l6)
                              (i32.load
                                (local.get $l5)))
                            (i32.const -1)))
                        (i32.const 10)))
                    (call $_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$9flush_buf17h30fb61827fbc9bd5E
                      (i32.add
                        (local.get $l4)
                        (i32.const 8))
                      (local.get $l5))
                    (br_if $B6
                      (i32.ne
                        (local.tee $l6
                          (i32.load8_u offset=8
                            (local.get $l4)))
                        (i32.const 4)))
                    (local.set $l6
                      (i32.load offset=20
                        (local.get $p1))))
                  (block $B9
                    (br_if $B9
                      (i32.gt_u
                        (i32.sub
                          (i32.load
                            (i32.add
                              (local.get $p1)
                              (i32.const 16)))
                          (local.get $l6))
                        (local.get $p3)))
                    (call $_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17hf822b286eb4c4738E
                      (local.get $p0)
                      (local.get $l5)
                      (local.get $p2)
                      (local.get $p3))
                    (br $B1))
                  (drop
                    (call $memcpy
                      (i32.add
                        (i32.load offset=12
                          (local.get $p1))
                        (local.get $l6))
                      (local.get $p2)
                      (local.get $p3)))
                  (i32.store8
                    (local.get $p0)
                    (i32.const 4))
                  (i32.store offset=20
                    (local.get $p1)
                    (i32.add
                      (local.get $l6)
                      (local.get $p3)))
                  (br $B1))
                (i32.store offset=1 align=1
                  (local.get $p0)
                  (i32.load offset=9 align=1
                    (local.get $l4)))
                (i32.store align=1
                  (i32.add
                    (local.get $p0)
                    (i32.const 4))
                  (i32.load align=1
                    (i32.add
                      (i32.add
                        (local.get $l4)
                        (i32.const 8))
                      (i32.const 4))))
                (i32.store8
                  (local.get $p0)
                  (local.get $l6))
                (br $B1))
              (br_if $B0
                (i32.lt_u
                  (local.get $p3)
                  (local.tee $l6
                    (i32.add
                      (i32.load offset=4
                        (local.get $l4))
                      (i32.const 1)))))
              (block $B10
                (br_if $B10
                  (local.tee $l7
                    (i32.load
                      (i32.add
                        (local.get $p1)
                        (i32.const 20)))))
                (call $_ZN60_$LT$std..io..stdio..StdoutRaw$u20$as$u20$std..io..Write$GT$9write_all17hb043d5f00b395201E
                  (i32.add
                    (local.get $l4)
                    (i32.const 8))
                  (local.get $p1)
                  (local.get $p2)
                  (local.get $l6))
                (br_if $B2
                  (i32.eq
                    (local.tee $l7
                      (i32.load8_u offset=8
                        (local.get $l4)))
                    (i32.const 4)))
                (i32.store offset=1 align=1
                  (local.get $p0)
                  (i32.load offset=9 align=1
                    (local.get $l4)))
                (i32.store align=1
                  (i32.add
                    (local.get $p0)
                    (i32.const 4))
                  (i32.load align=1
                    (i32.add
                      (i32.add
                        (local.get $l4)
                        (i32.const 8))
                      (i32.const 4))))
                (i32.store8
                  (local.get $p0)
                  (local.get $l7))
                (br $B1))
              (block $B11
                (block $B12
                  (br_if $B12
                    (i32.le_u
                      (i32.sub
                        (i32.load
                          (i32.add
                            (local.get $p1)
                            (i32.const 16)))
                        (local.get $l7))
                      (local.get $l6)))
                  (drop
                    (call $memcpy
                      (i32.add
                        (i32.load offset=12
                          (local.get $p1))
                        (local.get $l7))
                      (local.get $p2)
                      (local.get $l6)))
                  (i32.store offset=20
                    (local.get $p1)
                    (i32.add
                      (local.get $l7)
                      (local.get $l6)))
                  (br $B11))
                (call $_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17hf822b286eb4c4738E
                  (i32.add
                    (local.get $l4)
                    (i32.const 8))
                  (local.get $l5)
                  (local.get $p2)
                  (local.get $l6))
                (br_if $B3
                  (i32.ne
                    (local.tee $l7
                      (i32.load8_u offset=8
                        (local.get $l4)))
                    (i32.const 4))))
              (call $_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$9flush_buf17h30fb61827fbc9bd5E
                (i32.add
                  (local.get $l4)
                  (i32.const 8))
                (local.get $l5))
              (br_if $B2
                (i32.eq
                  (local.tee $l7
                    (i32.load8_u offset=8
                      (local.get $l4)))
                  (i32.const 4)))
              (i32.store offset=1 align=1
                (local.get $p0)
                (i32.load offset=9 align=1
                  (local.get $l4)))
              (i32.store align=1
                (i32.add
                  (local.get $p0)
                  (i32.const 4))
                (i32.load align=1
                  (i32.add
                    (i32.add
                      (local.get $l4)
                      (i32.const 8))
                    (i32.const 4))))
              (i32.store8
                (local.get $p0)
                (local.get $l7))
              (br $B1))
            (call $_ZN4core4cell22panic_already_borrowed17ha89a6a6c256b35ffE
              (i32.const 1050448))
            (unreachable))
          (i32.store offset=1 align=1
            (local.get $p0)
            (i32.load offset=9 align=1
              (local.get $l4)))
          (i32.store align=1
            (i32.add
              (local.get $p0)
              (i32.const 4))
            (i32.load align=1
              (i32.add
                (i32.add
                  (local.get $l4)
                  (i32.const 8))
                (i32.const 4))))
          (i32.store8
            (local.get $p0)
            (local.get $l7))
          (br $B1))
        (local.set $l7
          (i32.add
            (local.get $p2)
            (local.get $l6)))
        (block $B13
          (br_if $B13
            (i32.gt_u
              (i32.sub
                (i32.load
                  (i32.add
                    (local.get $p1)
                    (i32.const 16)))
                (local.tee $p2
                  (i32.load offset=20
                    (local.get $p1))))
              (local.tee $p3
                (i32.sub
                  (local.get $p3)
                  (local.get $l6)))))
          (call $_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17hf822b286eb4c4738E
            (local.get $p0)
            (local.get $l5)
            (local.get $l7)
            (local.get $p3))
          (br $B1))
        (drop
          (call $memcpy
            (i32.add
              (i32.load offset=12
                (local.get $p1))
              (local.get $p2))
            (local.get $l7)
            (local.get $p3)))
        (i32.store8
          (local.get $p0)
          (i32.const 4))
        (i32.store offset=20
          (local.get $p1)
          (i32.add
            (local.get $p2)
            (local.get $p3))))
      (i32.store offset=8
        (local.get $p1)
        (i32.add
          (i32.load offset=8
            (local.get $p1))
          (i32.const 1)))
      (global.set $__stack_pointer
        (i32.add
          (local.get $l4)
          (i32.const 16)))
      (return))
    (call $_ZN4core9panicking5panic17hfe17c7db57004300E
      (i32.const 1049565)
      (i32.const 35)
      (i32.const 1049600))
    (unreachable))
  (func $_ZN4core3fmt5Write9write_fmt17h20b6c6e353698811E (type $t4) (param $p0 i32) (param $p1 i32) (result i32)
    (call $_ZN4core3fmt5write17had8ef63591bfa1d0E
      (local.get $p0)
      (i32.const 1049108)
      (local.get $p1)))
  (func $_ZN4core3fmt5Write9write_fmt17h46f3c0b32049693cE (type $t4) (param $p0 i32) (param $p1 i32) (result i32)
    (call $_ZN4core3fmt5write17had8ef63591bfa1d0E
      (local.get $p0)
      (i32.const 1049084)
      (local.get $p1)))
  (func $_ZN4core3fmt5Write9write_fmt17h7ea8854abbacdc78E (type $t4) (param $p0 i32) (param $p1 i32) (result i32)
    (call $_ZN4core3fmt5write17had8ef63591bfa1d0E
      (local.get $p0)
      (i32.const 1049156)
      (local.get $p1)))
  (func $_ZN4core3fmt5Write9write_fmt17hfce2690fee613c66E (type $t4) (param $p0 i32) (param $p1 i32) (result i32)
    (call $_ZN4core3fmt5write17had8ef63591bfa1d0E
      (local.get $p0)
      (i32.const 1049132)
      (local.get $p1)))
  (func $_ZN3std9panicking12default_hook17h0d854b2855fe5ef7E (type $t1) (param $p0 i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32)
    (global.set $__stack_pointer
      (local.tee $l1
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 128))))
    (block $B0
      (block $B1
        (br_if $B1
          (i32.load8_u offset=17
            (local.get $p0)))
        (block $B2
          (br_if $B2
            (i32.gt_u
              (i32.load offset=1056096
                (i32.const 0))
              (i32.const 1)))
          (i32.store8 offset=51
            (local.get $l1)
            (call $_ZN3std5panic19get_backtrace_style17hb4f64c055235d76aE))
          (br $B0))
        (i32.store8 offset=51
          (local.get $l1)
          (i32.const 1))
        (br $B0))
      (i32.store8 offset=51
        (local.get $l1)
        (i32.const 3)))
    (block $B3
      (block $B4
        (block $B5
          (block $B6
            (br_if $B6
              (i32.eqz
                (local.tee $l2
                  (call $_ZN4core5panic10panic_info9PanicInfo8location17hc9d8fb23293bf248E
                    (local.get $p0)))))
            (i32.store offset=52
              (local.get $l1)
              (local.get $l2))
            (call $_ZN4core5panic10panic_info9PanicInfo7payload17h92ff74072d48dd3dE
              (i32.add
                (local.get $l1)
                (i32.const 40))
              (local.get $p0))
            (call_indirect $T0 (type $t2)
              (i32.add
                (local.get $l1)
                (i32.const 24))
              (local.tee $l2
                (i32.load offset=40
                  (local.get $l1)))
              (i32.load offset=12
                (i32.load offset=44
                  (local.get $l1))))
            (block $B7
              (br_if $B7
                (i32.eqz
                  (local.get $l2)))
              (br_if $B5
                (i64.eqz
                  (i64.or
                    (i64.xor
                      (i64.load offset=24
                        (local.get $l1))
                      (i64.const -4493808902380553279))
                    (i64.xor
                      (i64.load
                        (i32.add
                          (i32.add
                            (local.get $l1)
                            (i32.const 24))
                          (i32.const 8)))
                      (i64.const -163230743173927068))))))
            (call $_ZN4core5panic10panic_info9PanicInfo7payload17h92ff74072d48dd3dE
              (i32.add
                (local.get $l1)
                (i32.const 16))
              (local.get $p0))
            (call_indirect $T0 (type $t2)
              (local.get $l1)
              (local.tee $l2
                (i32.load offset=16
                  (local.get $l1)))
              (i32.load offset=12
                (i32.load offset=20
                  (local.get $l1))))
            (local.set $p0
              (i32.const 12))
            (local.set $l3
              (i32.const 1051612))
            (br_if $B3
              (i32.eqz
                (local.get $l2)))
            (br_if $B3
              (i64.ne
                (i64.or
                  (i64.xor
                    (i64.load
                      (local.get $l1))
                    (i64.const 5627976872320765507))
                  (i64.xor
                    (i64.load
                      (i32.add
                        (local.get $l1)
                        (i32.const 8)))
                    (i64.const 7425947080337139183)))
                (i64.const 0)))
            (local.set $p0
              (i32.add
                (local.get $l2)
                (i32.const 8)))
            (br $B4))
          (call $_ZN4core9panicking5panic17hfe17c7db57004300E
            (i32.const 1048732)
            (i32.const 43)
            (i32.const 1051596))
          (unreachable))
        (local.set $p0
          (i32.add
            (local.get $l2)
            (i32.const 4))))
      (local.set $p0
        (i32.load
          (local.get $p0)))
      (local.set $l3
        (i32.load
          (local.get $l2))))
    (i32.store offset=60
      (local.get $l1)
      (local.get $p0))
    (i32.store offset=56
      (local.get $l1)
      (local.get $l3))
    (block $B8
      (block $B9
        (block $B10
          (block $B11
            (block $B12
              (block $B13
                (block $B14
                  (br_if $B14
                    (local.tee $p0
                      (i32.load offset=1056104
                        (i32.const 0))))
                  (local.set $p0
                    (call $_ZN4core4cell4once17OnceCell$LT$T$GT$15get_or_try_init13outlined_call17hb42ec70504782567E))
                  (br_if $B13
                    (i32.load offset=1056104
                      (i32.const 0)))
                  (i32.store offset=1056104
                    (i32.const 0)
                    (local.get $p0)))
                (i32.store
                  (local.get $p0)
                  (i32.add
                    (local.tee $l2
                      (i32.load
                        (local.get $p0)))
                    (i32.const 1)))
                (br_if $B12
                  (i32.le_s
                    (local.get $l2)
                    (i32.const -1)))
                (i32.store offset=64
                  (local.get $l1)
                  (local.get $p0))
                (block $B15
                  (block $B16
                    (br_if $B16
                      (local.tee $l2
                        (i32.load
                          (i32.add
                            (local.get $p0)
                            (i32.const 16)))))
                    (local.set $l3
                      (i32.const 9))
                    (local.set $l2
                      (i32.const 1051624))
                    (br $B15))
                  (local.set $l3
                    (i32.add
                      (i32.load
                        (i32.add
                          (local.get $p0)
                          (i32.const 20)))
                      (i32.const -1))))
                (i32.store offset=72
                  (local.get $l1)
                  (local.get $l3))
                (i32.store offset=68
                  (local.get $l1)
                  (local.get $l2))
                (i32.store offset=88
                  (local.get $l1)
                  (i32.add
                    (local.get $l1)
                    (i32.const 51)))
                (i32.store offset=84
                  (local.get $l1)
                  (i32.add
                    (local.get $l1)
                    (i32.const 56)))
                (i32.store offset=80
                  (local.get $l1)
                  (i32.add
                    (local.get $l1)
                    (i32.const 52)))
                (i32.store offset=76
                  (local.get $l1)
                  (i32.add
                    (local.get $l1)
                    (i32.const 68)))
                (block $B17
                  (br_if $B17
                    (i32.load8_u offset=1056015
                      (i32.const 0)))
                  (i32.store offset=92
                    (local.get $l1)
                    (i32.const 0))
                  (br $B10))
                (i32.store8 offset=1056015
                  (i32.const 0)
                  (i32.const 1))
                (block $B18
                  (br_if $B18
                    (i32.load8_u offset=1056112
                      (i32.const 0)))
                  (i32.store8 offset=1056112
                    (i32.const 0)
                    (i32.const 1))
                  (i32.store offset=1056116
                    (i32.const 0)
                    (i32.const 0))
                  (i32.store offset=92
                    (local.get $l1)
                    (i32.const 0))
                  (br $B10))
                (i32.store offset=92
                  (local.get $l1)
                  (local.tee $l2
                    (i32.load offset=1056116
                      (i32.const 0))))
                (i32.store offset=1056116
                  (i32.const 0)
                  (i32.const 0))
                (br_if $B10
                  (i32.eqz
                    (local.get $l2)))
                (local.set $p0
                  (i32.load8_u offset=8
                    (local.get $l2)))
                (i32.store8 offset=8
                  (local.get $l2)
                  (i32.const 1))
                (i32.store8 offset=99
                  (local.get $l1)
                  (local.get $p0))
                (br_if $B11
                  (local.get $p0))
                (block $B19
                  (block $B20
                    (block $B21
                      (br_if $B21
                        (i32.and
                          (i32.load offset=1056080
                            (i32.const 0))
                          (i32.const 2147483647)))
                      (call $_ZN3std9panicking12default_hook28_$u7b$$u7b$closure$u7d$$u7d$17hded9af0774972669E
                        (i32.add
                          (local.get $l1)
                          (i32.const 76))
                        (i32.add
                          (local.get $l2)
                          (i32.const 12))
                        (i32.const 1051636))
                      (local.set $p0
                        (i32.add
                          (local.get $l2)
                          (i32.const 9)))
                      (br $B20))
                    (local.set $p0
                      (call $_ZN3std9panicking11panic_count17is_zero_slow_path17hcd87a035896974dbE))
                    (call $_ZN3std9panicking12default_hook28_$u7b$$u7b$closure$u7d$$u7d$17hded9af0774972669E
                      (i32.add
                        (local.get $l1)
                        (i32.const 76))
                      (i32.add
                        (local.get $l2)
                        (i32.const 12))
                      (i32.const 1051636))
                    (br_if $B19
                      (i32.eqz
                        (local.get $p0)))
                    (local.set $p0
                      (i32.add
                        (local.get $l2)
                        (i32.const 9))))
                  (br_if $B19
                    (i32.eqz
                      (i32.and
                        (i32.load offset=1056080
                          (i32.const 0))
                        (i32.const 2147483647))))
                  (br_if $B19
                    (call $_ZN3std9panicking11panic_count17is_zero_slow_path17hcd87a035896974dbE))
                  (i32.store8
                    (local.get $p0)
                    (i32.const 1)))
                (i32.store8 offset=8
                  (local.get $l2)
                  (i32.const 0))
                (i32.store8 offset=1056015
                  (i32.const 0)
                  (i32.const 1))
                (block $B22
                  (block $B23
                    (br_if $B23
                      (i32.load8_u offset=1056112
                        (i32.const 0)))
                    (i32.store offset=1056116
                      (i32.const 0)
                      (local.get $l2))
                    (i32.store8 offset=1056112
                      (i32.const 0)
                      (i32.const 1))
                    (br $B22))
                  (local.set $p0
                    (i32.load offset=1056116
                      (i32.const 0)))
                  (i32.store offset=1056116
                    (i32.const 0)
                    (local.get $l2))
                  (i32.store offset=100
                    (local.get $l1)
                    (local.get $p0))
                  (br_if $B22
                    (i32.eqz
                      (local.get $p0)))
                  (i32.store
                    (local.get $p0)
                    (i32.add
                      (local.tee $l2
                        (i32.load
                          (local.get $p0)))
                      (i32.const -1)))
                  (br_if $B22
                    (i32.ne
                      (local.get $l2)
                      (i32.const 1)))
                  (call $_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h92428e76fc506e94E
                    (i32.add
                      (local.get $l1)
                      (i32.const 100))))
                (local.set $l2
                  (i32.const 1))
                (br_if $B8
                  (i32.eqz
                    (local.tee $p0
                      (i32.load offset=64
                        (local.get $l1)))))
                (br $B9))
              (i32.store offset=100
                (local.get $l1)
                (local.get $p0))
              (call $_ZN4core3ptr79drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..thread..Thread$GT$$GT$17h31e31f46cb9394feE
                (i32.add
                  (local.get $l1)
                  (i32.const 100)))
              (i64.store align=4
                (i32.add
                  (local.get $l1)
                  (i32.const 112))
                (i64.const 0))
              (i32.store offset=104
                (local.get $l1)
                (i32.const 1))
              (i32.store offset=100
                (local.get $l1)
                (i32.const 1048868))
              (i32.store offset=108
                (local.get $l1)
                (i32.const 1048732))
              (call $_ZN4core9panicking9panic_fmt17h2a1cf3beec13dfc3E
                (i32.add
                  (local.get $l1)
                  (i32.const 100))
                (i32.const 1048876))
              (unreachable))
            (unreachable)
            (unreachable))
          (i64.store offset=112 align=4
            (local.get $l1)
            (i64.const 0))
          (i32.store offset=108
            (local.get $l1)
            (i32.const 1048732))
          (i32.store offset=104
            (local.get $l1)
            (i32.const 1))
          (i32.store offset=100
            (local.get $l1)
            (i32.const 1050884))
          (call $_ZN4core9panicking13assert_failed17h1e3e261a1896ce28E
            (i32.add
              (local.get $l1)
              (i32.const 99))
            (i32.add
              (local.get $l1)
              (i32.const 100)))
          (unreachable))
        (call $_ZN3std9panicking12default_hook28_$u7b$$u7b$closure$u7d$$u7d$17hded9af0774972669E
          (i32.add
            (local.get $l1)
            (i32.const 76))
          (i32.add
            (local.get $l1)
            (i32.const 127))
          (i32.const 1051676))
        (local.set $l2
          (i32.const 0)))
      (i32.store
        (local.get $p0)
        (i32.add
          (local.tee $l3
            (i32.load
              (local.get $p0)))
          (i32.const -1)))
      (block $B24
        (br_if $B24
          (i32.ne
            (local.get $l3)
            (i32.const 1)))
        (call $_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h1bc4ae190ac8426dE
          (i32.add
            (local.get $l1)
            (i32.const 64))))
      (br_if $B8
        (i32.eqz
          (i32.and
            (i32.xor
              (local.get $l2)
              (i32.const -1))
            (i32.ne
              (local.tee $p0
                (i32.load offset=92
                  (local.get $l1)))
              (i32.const 0)))))
      (i32.store
        (local.get $p0)
        (i32.add
          (local.tee $l2
            (i32.load
              (local.get $p0)))
          (i32.const -1)))
      (br_if $B8
        (i32.ne
          (local.get $l2)
          (i32.const 1)))
      (call $_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h92428e76fc506e94E
        (i32.add
          (local.get $l1)
          (i32.const 92))))
    (global.set $__stack_pointer
      (i32.add
        (local.get $l1)
        (i32.const 128))))
  (func $_ZN4core3ptr120drop_in_place$LT$$LP$$RF$std..ffi..os_str..OsString$C$$RF$core..option..Option$LT$std..ffi..os_str..OsString$GT$$RP$$GT$17h3dd621b5eb8d4d4dE (type $t1) (param $p0 i32))
  (func $_ZN3std9panicking11panic_count17is_zero_slow_path17hcd87a035896974dbE (type $t8) (result i32)
    (i32.eqz
      (i32.load offset=1056096
        (i32.const 0))))
  (func $_ZN4core3ptr29drop_in_place$LT$$LP$$RP$$GT$17hd511273b9ffff3e8E (type $t1) (param $p0 i32))
  (func $_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h1bc4ae190ac8426dE (type $t1) (param $p0 i32)
    (local $l1 i32) (local $l2 i32)
    (block $B0
      (br_if $B0
        (i32.eqz
          (local.tee $l1
            (i32.load
              (i32.add
                (local.tee $p0
                  (i32.load
                    (local.get $p0)))
                (i32.const 16))))))
      (local.set $l2
        (i32.load
          (i32.add
            (local.get $p0)
            (i32.const 20))))
      (i32.store8
        (local.get $l1)
        (i32.const 0))
      (br_if $B0
        (i32.eqz
          (local.get $l2)))
      (call $__rust_dealloc
        (local.get $l1)
        (local.get $l2)
        (i32.const 1)))
    (block $B1
      (br_if $B1
        (i32.eq
          (local.get $p0)
          (i32.const -1)))
      (i32.store offset=4
        (local.get $p0)
        (i32.add
          (local.tee $l1
            (i32.load offset=4
              (local.get $p0)))
          (i32.const -1)))
      (br_if $B1
        (i32.ne
          (local.get $l1)
          (i32.const 1)))
      (call $__rust_dealloc
        (local.get $p0)
        (i32.const 24)
        (i32.const 8))))
  (func $_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h84a08b0c9833640aE (type $t1) (param $p0 i32)
    (local $l1 i32)
    (block $B0
      (br_if $B0
        (i32.eqz
          (local.tee $l1
            (i32.load offset=4
              (local.get $p0)))))
      (call $__rust_dealloc
        (i32.load
          (local.get $p0))
        (local.get $l1)
        (i32.const 1))))
  (func $_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6a6d34b8305b51a9E (type $t1) (param $p0 i32)
    (local $l1 i32)
    (block $B0
      (br_if $B0
        (i32.eqz
          (local.tee $l1
            (i32.load offset=4
              (local.get $p0)))))
      (call $__rust_dealloc
        (i32.load
          (local.get $p0))
        (local.get $l1)
        (i32.const 1))))
  (func $_ZN4core3ptr77drop_in_place$LT$std..panicking..begin_panic_handler..FormatStringPayload$GT$17hc7e95d8507c6874dE (type $t1) (param $p0 i32)
    (local $l1 i32)
    (block $B0
      (br_if $B0
        (i32.eqz
          (local.tee $l1
            (i32.load offset=4
              (local.get $p0)))))
      (br_if $B0
        (i32.eqz
          (local.tee $p0
            (i32.load
              (i32.add
                (local.get $p0)
                (i32.const 8))))))
      (call $__rust_dealloc
        (local.get $l1)
        (local.get $p0)
        (i32.const 1))))
  (func $_ZN4core3ptr79drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..thread..Thread$GT$$GT$17h31e31f46cb9394feE (type $t1) (param $p0 i32)
    (local $l1 i32) (local $l2 i32)
    (block $B0
      (br_if $B0
        (i32.eqz
          (local.tee $l1
            (i32.load
              (local.get $p0)))))
      (i32.store
        (local.get $l1)
        (i32.add
          (local.tee $l2
            (i32.load
              (local.get $l1)))
          (i32.const -1)))
      (br_if $B0
        (i32.ne
          (local.get $l2)
          (i32.const 1)))
      (call $_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h1bc4ae190ac8426dE
        (local.get $p0))))
  (func $_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h4404161b40712de8E (type $t2) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32)
    (block $B0
      (block $B1
        (br_if $B1
          (i32.gt_u
            (local.tee $p0
              (i32.and
                (local.get $p0)
                (i32.const 255)))
            (i32.const 4)))
        (br_if $B0
          (i32.ne
            (local.get $p0)
            (i32.const 3))))
      (call_indirect $T0 (type $t1)
        (local.tee $l2
          (i32.load
            (local.get $p1)))
        (i32.load
          (local.tee $p0
            (i32.load
              (i32.add
                (local.get $p1)
                (i32.const 4))))))
      (block $B2
        (br_if $B2
          (i32.eqz
            (local.tee $l3
              (i32.load offset=4
                (local.get $p0)))))
        (call $__rust_dealloc
          (local.get $l2)
          (local.get $l3)
          (i32.load offset=8
            (local.get $p0))))
      (call $__rust_dealloc
        (local.get $p1)
        (i32.const 12)
        (i32.const 4))))
  (func $_ZN4core3ptr88drop_in_place$LT$std..io..Write..write_fmt..Adapter$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h57f06e96a6f52cf3E (type $t1) (param $p0 i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32)
    (local.set $l1
      (i32.load offset=4
        (local.get $p0)))
    (block $B0
      (block $B1
        (br_if $B1
          (i32.gt_u
            (local.tee $p0
              (i32.load8_u
                (local.get $p0)))
            (i32.const 4)))
        (br_if $B0
          (i32.ne
            (local.get $p0)
            (i32.const 3))))
      (call_indirect $T0 (type $t1)
        (local.tee $l2
          (i32.load
            (local.get $l1)))
        (i32.load
          (local.tee $p0
            (i32.load
              (i32.add
                (local.get $l1)
                (i32.const 4))))))
      (block $B2
        (br_if $B2
          (i32.eqz
            (local.tee $l3
              (i32.load offset=4
                (local.get $p0)))))
        (call $__rust_dealloc
          (local.get $l2)
          (local.get $l3)
          (i32.load offset=8
            (local.get $p0))))
      (call $__rust_dealloc
        (local.get $l1)
        (i32.const 12)
        (i32.const 4))))
  (func $_ZN4core4cell4once17OnceCell$LT$T$GT$15get_or_try_init13outlined_call17hb42ec70504782567E (type $t8) (result i32)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i64) (local $l5 i64) (local $l6 i64)
    (global.set $__stack_pointer
      (local.tee $l0
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 16))))
    (call $_ZN5alloc4sync32arcinner_layout_for_value_layout17h338e91e028154604E
      (i32.add
        (local.get $l0)
        (i32.const 8))
      (i32.const 8)
      (i32.const 16))
    (local.set $l1
      (i32.load offset=8
        (local.get $l0)))
    (block $B0
      (block $B1
        (br_if $B1
          (local.tee $l2
            (i32.load offset=12
              (local.get $l0))))
        (local.set $l3
          (local.get $l1))
        (br $B0))
      (drop
        (i32.load8_u offset=1056013
          (i32.const 0)))
      (local.set $l3
        (call $__rust_alloc
          (local.get $l2)
          (local.get $l1))))
    (block $B2
      (block $B3
        (br_if $B3
          (i32.eqz
            (local.get $l3)))
        (i64.store align=4
          (local.get $l3)
          (i64.const 4294967297))
        (i32.store
          (i32.add
            (local.get $l3)
            (i32.const 16))
          (i32.const 0))
        (local.set $l4
          (i64.load offset=1056088
            (i32.const 0)))
        (loop $L4
          (br_if $B2
            (i64.eqz
              (local.tee $l5
                (i64.add
                  (local.get $l4)
                  (i64.const 1)))))
          (i64.store offset=1056088
            (i32.const 0)
            (select
              (local.get $l5)
              (local.tee $l6
                (i64.load offset=1056088
                  (i32.const 0)))
              (local.tee $l1
                (i64.eq
                  (local.get $l6)
                  (local.get $l4)))))
          (local.set $l4
            (local.get $l6))
          (br_if $L4
            (i32.eqz
              (local.get $l1))))
        (i64.store offset=8
          (local.get $l3)
          (local.get $l5))
        (global.set $__stack_pointer
          (i32.add
            (local.get $l0)
            (i32.const 16)))
        (return
          (local.get $l3)))
      (call $_ZN5alloc5alloc18handle_alloc_error17haf16dbf93a34ba25E
        (local.get $l1)
        (local.get $l2))
      (unreachable))
    (call $_ZN3std6thread8ThreadId3new9exhausted17haebae41575008cf4E)
    (unreachable))
  (func $_ZN3std6thread8ThreadId3new9exhausted17haebae41575008cf4E (type $t0)
    (local $l0 i32)
    (global.set $__stack_pointer
      (local.tee $l0
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 32))))
    (i64.store align=4
      (i32.add
        (local.get $l0)
        (i32.const 20))
      (i64.const 0))
    (i32.store offset=12
      (local.get $l0)
      (i32.const 1))
    (i32.store offset=8
      (local.get $l0)
      (i32.const 1049384))
    (i32.store offset=16
      (local.get $l0)
      (i32.const 1048732))
    (call $_ZN4core9panicking9panic_fmt17h2a1cf3beec13dfc3E
      (i32.add
        (local.get $l0)
        (i32.const 8))
      (i32.const 1049392))
    (unreachable))
  (func $_ZN4core9panicking13assert_failed17h1e3e261a1896ce28E (type $t2) (param $p0 i32) (param $p1 i32)
    (local $l2 i32)
    (global.set $__stack_pointer
      (local.tee $l2
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 16))))
    (i32.store offset=12
      (local.get $l2)
      (i32.const 1048892))
    (i32.store offset=8
      (local.get $l2)
      (local.get $p0))
    (call $_ZN4core9panicking19assert_failed_inner17hb532fdb7475e8a75E
      (i32.const 0)
      (i32.add
        (local.get $l2)
        (i32.const 8))
      (i32.const 1048896)
      (i32.add
        (local.get $l2)
        (i32.const 12))
      (i32.const 1048896)
      (local.get $p1)
      (i32.const 1050948))
    (unreachable))
  (func $_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h240011c34bd1b64eE (type $t4) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32)
    (global.set $__stack_pointer
      (local.tee $l2
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 16))))
    (block $B0
      (block $B1
        (block $B2
          (block $B3
            (br_if $B3
              (i32.lt_u
                (local.get $p1)
                (i32.const 128)))
            (i32.store offset=12
              (local.get $l2)
              (i32.const 0))
            (br_if $B2
              (i32.lt_u
                (local.get $p1)
                (i32.const 2048)))
            (block $B4
              (br_if $B4
                (i32.ge_u
                  (local.get $p1)
                  (i32.const 65536)))
              (i32.store8 offset=14
                (local.get $l2)
                (i32.or
                  (i32.and
                    (local.get $p1)
                    (i32.const 63))
                  (i32.const 128)))
              (i32.store8 offset=12
                (local.get $l2)
                (i32.or
                  (i32.shr_u
                    (local.get $p1)
                    (i32.const 12))
                  (i32.const 224)))
              (i32.store8 offset=13
                (local.get $l2)
                (i32.or
                  (i32.and
                    (i32.shr_u
                      (local.get $p1)
                      (i32.const 6))
                    (i32.const 63))
                  (i32.const 128)))
              (local.set $p1
                (i32.const 3))
              (br $B1))
            (i32.store8 offset=15
              (local.get $l2)
              (i32.or
                (i32.and
                  (local.get $p1)
                  (i32.const 63))
                (i32.const 128)))
            (i32.store8 offset=14
              (local.get $l2)
              (i32.or
                (i32.and
                  (i32.shr_u
                    (local.get $p1)
                    (i32.const 6))
                  (i32.const 63))
                (i32.const 128)))
            (i32.store8 offset=13
              (local.get $l2)
              (i32.or
                (i32.and
                  (i32.shr_u
                    (local.get $p1)
                    (i32.const 12))
                  (i32.const 63))
                (i32.const 128)))
            (i32.store8 offset=12
              (local.get $l2)
              (i32.or
                (i32.and
                  (i32.shr_u
                    (local.get $p1)
                    (i32.const 18))
                  (i32.const 7))
                (i32.const 240)))
            (local.set $p1
              (i32.const 4))
            (br $B1))
          (block $B5
            (br_if $B5
              (i32.ne
                (local.tee $l3
                  (i32.load offset=8
                    (local.get $p0)))
                (i32.load offset=4
                  (local.get $p0))))
            (call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h587a2035aadea5e5E
              (local.get $p0)
              (local.get $l3))
            (local.set $l3
              (i32.load offset=8
                (local.get $p0))))
          (i32.store offset=8
            (local.get $p0)
            (i32.add
              (local.get $l3)
              (i32.const 1)))
          (i32.store8
            (i32.add
              (i32.load
                (local.get $p0))
              (local.get $l3))
            (local.get $p1))
          (br $B0))
        (i32.store8 offset=13
          (local.get $l2)
          (i32.or
            (i32.and
              (local.get $p1)
              (i32.const 63))
            (i32.const 128)))
        (i32.store8 offset=12
          (local.get $l2)
          (i32.or
            (i32.shr_u
              (local.get $p1)
              (i32.const 6))
            (i32.const 192)))
        (local.set $p1
          (i32.const 2)))
      (block $B6
        (br_if $B6
          (i32.ge_u
            (i32.sub
              (i32.load offset=4
                (local.get $p0))
              (local.tee $l3
                (i32.load offset=8
                  (local.get $p0))))
            (local.get $p1)))
        (call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17hdfa9348b6ca399abE
          (local.get $p0)
          (local.get $l3)
          (local.get $p1))
        (local.set $l3
          (i32.load offset=8
            (local.get $p0))))
      (drop
        (call $memcpy
          (i32.add
            (i32.load
              (local.get $p0))
            (local.get $l3))
          (i32.add
            (local.get $l2)
            (i32.const 12))
          (local.get $p1)))
      (i32.store offset=8
        (local.get $p0)
        (i32.add
          (local.get $l3)
          (local.get $p1))))
    (global.set $__stack_pointer
      (i32.add
        (local.get $l2)
        (i32.const 16)))
    (i32.const 0))
  (func $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h587a2035aadea5e5E (type $t2) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32)
    (global.set $__stack_pointer
      (local.tee $l2
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 32))))
    (block $B0
      (block $B1
        (br_if $B1
          (i32.eqz
            (local.tee $p1
              (i32.add
                (local.get $p1)
                (i32.const 1)))))
        (local.set $l4
          (i32.shr_u
            (i32.xor
              (local.tee $p1
                (select
                  (local.tee $p1
                    (select
                      (local.tee $l4
                        (i32.shl
                          (local.tee $l3
                            (i32.load offset=4
                              (local.get $p0)))
                          (i32.const 1)))
                      (local.get $p1)
                      (i32.gt_u
                        (local.get $l4)
                        (local.get $p1))))
                  (i32.const 8)
                  (i32.gt_u
                    (local.get $p1)
                    (i32.const 8))))
              (i32.const -1))
            (i32.const 31)))
        (block $B2
          (block $B3
            (br_if $B3
              (local.get $l3))
            (i32.store offset=24
              (local.get $l2)
              (i32.const 0))
            (br $B2))
          (i32.store offset=28
            (local.get $l2)
            (local.get $l3))
          (i32.store offset=24
            (local.get $l2)
            (i32.const 1))
          (i32.store offset=20
            (local.get $l2)
            (i32.load
              (local.get $p0))))
        (call $_ZN5alloc7raw_vec11finish_grow17h4770160e3a526a1dE
          (i32.add
            (local.get $l2)
            (i32.const 8))
          (local.get $l4)
          (local.get $p1)
          (i32.add
            (local.get $l2)
            (i32.const 20)))
        (local.set $l3
          (i32.load offset=12
            (local.get $l2)))
        (block $B4
          (br_if $B4
            (i32.load offset=8
              (local.get $l2)))
          (i32.store offset=4
            (local.get $p0)
            (local.get $p1))
          (i32.store
            (local.get $p0)
            (local.get $l3))
          (br $B0))
        (br_if $B0
          (i32.eq
            (local.get $l3)
            (i32.const -2147483647)))
        (br_if $B1
          (i32.eqz
            (local.get $l3)))
        (call $_ZN5alloc5alloc18handle_alloc_error17haf16dbf93a34ba25E
          (local.get $l3)
          (i32.load
            (i32.add
              (local.get $l2)
              (i32.const 16))))
        (unreachable))
      (call $_ZN5alloc7raw_vec17capacity_overflow17h71c1886b236d8c9dE)
      (unreachable))
    (global.set $__stack_pointer
      (i32.add
        (local.get $l2)
        (i32.const 32))))
  (func $_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$9write_str17hfd391b928290f606E (type $t6) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32)
    (block $B0
      (br_if $B0
        (i32.ge_u
          (i32.sub
            (i32.load offset=4
              (local.get $p0))
            (local.tee $l3
              (i32.load offset=8
                (local.get $p0))))
          (local.get $p2)))
      (call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17hdfa9348b6ca399abE
        (local.get $p0)
        (local.get $l3)
        (local.get $p2))
      (local.set $l3
        (i32.load offset=8
          (local.get $p0))))
    (drop
      (call $memcpy
        (i32.add
          (i32.load
            (local.get $p0))
          (local.get $l3))
        (local.get $p1)
        (local.get $p2)))
    (i32.store offset=8
      (local.get $p0)
      (i32.add
        (local.get $l3)
        (local.get $p2)))
    (i32.const 0))
  (func $_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h92428e76fc506e94E (type $t1) (param $p0 i32)
    (local $l1 i32)
    (block $B0
      (br_if $B0
        (i32.eqz
          (local.tee $l1
            (i32.load
              (i32.add
                (local.tee $p0
                  (i32.load
                    (local.get $p0)))
                (i32.const 16))))))
      (call $__rust_dealloc
        (i32.load
          (i32.add
            (local.get $p0)
            (i32.const 12)))
        (local.get $l1)
        (i32.const 1)))
    (block $B1
      (br_if $B1
        (i32.eq
          (local.get $p0)
          (i32.const -1)))
      (i32.store offset=4
        (local.get $p0)
        (i32.add
          (local.tee $l1
            (i32.load offset=4
              (local.get $p0)))
          (i32.const -1)))
      (br_if $B1
        (i32.ne
          (local.get $l1)
          (i32.const 1)))
      (call $__rust_dealloc
        (local.get $p0)
        (i32.const 24)
        (i32.const 4))))
  (func $_ZN5alloc7raw_vec11finish_grow17h4770160e3a526a1dE (type $t9) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (local $l4 i32)
    (block $B0
      (block $B1
        (block $B2
          (br_if $B2
            (i32.eqz
              (local.get $p1)))
          (br_if $B1
            (i32.le_s
              (local.get $p2)
              (i32.const -1)))
          (block $B3
            (block $B4
              (block $B5
                (br_if $B5
                  (i32.eqz
                    (i32.load offset=4
                      (local.get $p3))))
                (block $B6
                  (br_if $B6
                    (local.tee $l4
                      (i32.load
                        (i32.add
                          (local.get $p3)
                          (i32.const 8)))))
                  (block $B7
                    (br_if $B7
                      (local.get $p2))
                    (local.set $p3
                      (local.get $p1))
                    (br $B3))
                  (drop
                    (i32.load8_u offset=1056013
                      (i32.const 0)))
                  (br $B4))
                (local.set $p3
                  (call $__rust_realloc
                    (i32.load
                      (local.get $p3))
                    (local.get $l4)
                    (local.get $p1)
                    (local.get $p2)))
                (br $B3))
              (block $B8
                (br_if $B8
                  (local.get $p2))
                (local.set $p3
                  (local.get $p1))
                (br $B3))
              (drop
                (i32.load8_u offset=1056013
                  (i32.const 0))))
            (local.set $p3
              (call $__rust_alloc
                (local.get $p2)
                (local.get $p1))))
          (block $B9
            (br_if $B9
              (i32.eqz
                (local.get $p3)))
            (i32.store offset=4
              (local.get $p0)
              (local.get $p3))
            (i32.store
              (i32.add
                (local.get $p0)
                (i32.const 8))
              (local.get $p2))
            (i32.store
              (local.get $p0)
              (i32.const 0))
            (return))
          (i32.store offset=4
            (local.get $p0)
            (local.get $p1))
          (i32.store
            (i32.add
              (local.get $p0)
              (i32.const 8))
            (local.get $p2))
          (br $B0))
        (i32.store offset=4
          (local.get $p0)
          (i32.const 0))
        (i32.store
          (i32.add
            (local.get $p0)
            (i32.const 8))
          (local.get $p2))
        (br $B0))
      (i32.store offset=4
        (local.get $p0)
        (i32.const 0)))
    (i32.store
      (local.get $p0)
      (i32.const 1)))
  (func $_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h775b299b9ce7fbe9E (type $t4) (param $p0 i32) (param $p1 i32) (result i32)
    (call $_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h168a697adc3298ffE
      (i32.load
        (local.get $p0))
      (i32.load offset=8
        (local.get $p0))
      (local.get $p1)))
  (func $_ZN70_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17ha854d72a5f1d811cE (type $t4) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32)
    (global.set $__stack_pointer
      (local.tee $l2
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 16))))
    (block $B0
      (block $B1
        (br_if $B1
          (i32.load
            (local.get $p0)))
        (i32.store offset=8
          (local.get $l2)
          (local.get $p0))
        (local.set $p0
          (call $_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h435774f7b8fcddc9E
            (local.get $p1)
            (i32.const 1049044)
            (i32.const 2)
            (i32.add
              (local.get $l2)
              (i32.const 8))
            (i32.const 1049048)))
        (br $B0))
      (i32.store offset=12
        (local.get $l2)
        (local.get $p0))
      (local.set $p0
        (call $_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h435774f7b8fcddc9E
          (local.get $p1)
          (i32.const 1049064)
          (i32.const 3)
          (i32.add
            (local.get $l2)
            (i32.const 12))
          (i32.const 1049068))))
    (global.set $__stack_pointer
      (i32.add
        (local.get $l2)
        (i32.const 16)))
    (local.get $p0))
  (func $_ZN3std3sys4wasi4once4Once4call17hd23e167afd5badc9E (type $t1) (param $p0 i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32)
    (global.set $__stack_pointer
      (local.tee $l1
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 32))))
    (block $B0
      (block $B1
        (block $B2
          (block $B3
            (block $B4
              (block $B5
                (block $B6
                  (br_table $B6 $B4 $B0 $B5 $B6
                    (i32.load8_u offset=1056014
                      (i32.const 0))))
                (i32.store8 offset=1056014
                  (i32.const 0)
                  (i32.const 2))
                (local.set $l2
                  (i32.load8_u
                    (local.get $p0)))
                (i32.store8
                  (local.get $p0)
                  (i32.const 0))
                (br_if $B3
                  (i32.eqz
                    (local.get $l2)))
                (i32.store8 offset=31
                  (local.get $l1)
                  (i32.const 0))
                (block $B7
                  (block $B8
                    (br_if $B8
                      (i32.eq
                        (i32.load8_u offset=1056048
                          (i32.const 0))
                        (i32.const 3)))
                    (call $_ZN3std4sync9once_lock17OnceLock$LT$T$GT$10initialize17h79c3a2c73de1ed2eE
                      (i32.add
                        (local.get $l1)
                        (i32.const 31)))
                    (br_if $B7
                      (i32.load8_u offset=31
                        (local.get $l1))))
                  (block $B9
                    (block $B10
                      (br_if $B10
                        (i32.eq
                          (i32.load offset=1056016
                            (i32.const 0))
                          (i32.const 1056108)))
                      (local.set $l2
                        (i32.load8_u offset=1056044
                          (i32.const 0)))
                      (local.set $p0
                        (i32.const 1))
                      (i32.store8 offset=1056044
                        (i32.const 0)
                        (i32.const 1))
                      (br_if $B7
                        (local.get $l2))
                      (i32.store offset=1056016
                        (i32.const 0)
                        (i32.const 1056108))
                      (br $B9))
                    (br_if $B2
                      (i32.eqz
                        (local.tee $p0
                          (i32.add
                            (i32.load offset=1056020
                              (i32.const 0))
                            (i32.const 1))))))
                  (i32.store offset=1056020
                    (i32.const 0)
                    (local.get $p0))
                  (br_if $B1
                    (i32.load offset=1056024
                      (i32.const 0)))
                  (i32.store offset=1056024
                    (i32.const 0)
                    (i32.const -1))
                  (block $B11
                    (br_if $B11
                      (i32.load8_u offset=1056040
                        (i32.const 0)))
                    (call $_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$9flush_buf17h30fb61827fbc9bd5E
                      (i32.add
                        (local.get $l1)
                        (i32.const 4))
                      (i32.const 1056028))
                    (local.set $l2
                      (i32.load offset=8
                        (local.get $l1)))
                    (block $B12
                      (br_if $B12
                        (i32.gt_u
                          (local.tee $p0
                            (i32.load8_u offset=4
                              (local.get $l1)))
                          (i32.const 4)))
                      (br_if $B11
                        (i32.ne
                          (local.get $p0)
                          (i32.const 3))))
                    (call_indirect $T0 (type $t1)
                      (local.tee $l3
                        (i32.load
                          (local.get $l2)))
                      (i32.load
                        (local.tee $p0
                          (i32.load
                            (i32.add
                              (local.get $l2)
                              (i32.const 4))))))
                    (block $B13
                      (br_if $B13
                        (i32.eqz
                          (local.tee $l4
                            (i32.load offset=4
                              (local.get $p0)))))
                      (call $__rust_dealloc
                        (local.get $l3)
                        (local.get $l4)
                        (i32.load offset=8
                          (local.get $p0))))
                    (call $__rust_dealloc
                      (local.get $l2)
                      (i32.const 12)
                      (i32.const 4)))
                  (block $B14
                    (br_if $B14
                      (i32.eqz
                        (local.tee $p0
                          (i32.load offset=1056032
                            (i32.const 0)))))
                    (call $__rust_dealloc
                      (i32.load offset=1056028
                        (i32.const 0))
                      (local.get $p0)
                      (i32.const 1)))
                  (i64.store offset=1056032 align=4
                    (i32.const 0)
                    (i64.const 0))
                  (i32.store offset=1056028
                    (i32.const 0)
                    (i32.const 1))
                  (i32.store offset=1056024
                    (i32.const 0)
                    (i32.add
                      (i32.load offset=1056024
                        (i32.const 0))
                      (i32.const 1)))
                  (i32.store offset=1056020
                    (i32.const 0)
                    (local.tee $p0
                      (i32.add
                        (i32.load offset=1056020
                          (i32.const 0))
                        (i32.const -1))))
                  (i32.store8 offset=1056040
                    (i32.const 0)
                    (i32.const 0))
                  (br_if $B7
                    (local.get $p0))
                  (i32.store8 offset=1056044
                    (i32.const 0)
                    (i32.const 0))
                  (i32.store offset=1056016
                    (i32.const 0)
                    (i32.const 0)))
                (i32.store8 offset=1056014
                  (i32.const 0)
                  (i32.const 3)))
              (global.set $__stack_pointer
                (i32.add
                  (local.get $l1)
                  (i32.const 32)))
              (return))
            (i64.store align=4
              (i32.add
                (local.get $l1)
                (i32.const 16))
              (i64.const 0))
            (i32.store offset=8
              (local.get $l1)
              (i32.const 1))
            (i32.store offset=4
              (local.get $l1)
              (i32.const 1052448))
            (i32.store offset=12
              (local.get $l1)
              (i32.const 1048732))
            (call $_ZN4core9panicking9panic_fmt17h2a1cf3beec13dfc3E
              (i32.add
                (local.get $l1)
                (i32.const 4))
              (i32.const 1049284))
            (unreachable))
          (call $_ZN4core9panicking5panic17hfe17c7db57004300E
            (i32.const 1048732)
            (i32.const 43)
            (i32.const 1050992))
          (unreachable))
        (call $_ZN4core6option13expect_failed17h01cf680af7b4197dE
          (i32.const 1051040)
          (i32.const 38)
          (i32.const 1051112))
        (unreachable))
      (call $_ZN4core4cell22panic_already_borrowed17ha89a6a6c256b35ffE
        (i32.const 1050432))
      (unreachable))
    (i64.store align=4
      (i32.add
        (local.get $l1)
        (i32.const 16))
      (i64.const 0))
    (i32.store offset=8
      (local.get $l1)
      (i32.const 1))
    (i32.store offset=4
      (local.get $l1)
      (i32.const 1052512))
    (i32.store offset=12
      (local.get $l1)
      (i32.const 1048732))
    (call $_ZN4core9panicking9panic_fmt17h2a1cf3beec13dfc3E
      (i32.add
        (local.get $l1)
        (i32.const 4))
      (i32.const 1049284))
    (unreachable))
  (func $_ZN3std2rt19lang_start_internal17hd50e22a4f4ba2fa8E (type $t10) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32) (result i32)
    (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i64) (local $l12 i64) (local $l13 i64)
    (global.set $__stack_pointer
      (local.tee $l5
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 80))))
    (call $_ZN72_$LT$$RF$str$u20$as$u20$alloc..ffi..c_str..CString..new..SpecNewImpl$GT$13spec_new_impl17hbc2c7db29cb7e1d2E
      (i32.add
        (local.get $l5)
        (i32.const 20))
      (i32.const 1049180)
      (i32.const 4))
    (block $B0
      (block $B1
        (block $B2
          (block $B3
            (br_if $B3
              (i32.load offset=20
                (local.get $l5)))
            (local.set $l6
              (i32.load
                (i32.add
                  (i32.add
                    (local.get $l5)
                    (i32.const 20))
                  (i32.const 8))))
            (local.set $l7
              (i32.load offset=24
                (local.get $l5)))
            (call $_ZN5alloc4sync32arcinner_layout_for_value_layout17h338e91e028154604E
              (i32.add
                (local.get $l5)
                (i32.const 8))
              (i32.const 8)
              (i32.const 16))
            (local.set $l8
              (i32.load offset=8
                (local.get $l5)))
            (block $B4
              (block $B5
                (br_if $B5
                  (local.tee $l9
                    (i32.load offset=12
                      (local.get $l5))))
                (local.set $l10
                  (local.get $l8))
                (br $B4))
              (drop
                (i32.load8_u offset=1056013
                  (i32.const 0)))
              (local.set $l10
                (call $__rust_alloc
                  (local.get $l9)
                  (local.get $l8))))
            (br_if $B2
              (i32.eqz
                (local.get $l10)))
            (i64.store align=4
              (local.get $l10)
              (i64.const 4294967297))
            (i32.store offset=20
              (local.get $l10)
              (local.get $l6))
            (i32.store
              (i32.add
                (local.get $l10)
                (i32.const 16))
              (local.get $l7))
            (local.set $l11
              (i64.load offset=1056088
                (i32.const 0)))
            (loop $L6
              (br_if $B1
                (i64.eqz
                  (local.tee $l12
                    (i64.add
                      (local.get $l11)
                      (i64.const 1)))))
              (i64.store offset=1056088
                (i32.const 0)
                (select
                  (local.get $l12)
                  (local.tee $l13
                    (i64.load offset=1056088
                      (i32.const 0)))
                  (local.tee $l8
                    (i64.eq
                      (local.get $l13)
                      (local.get $l11)))))
              (local.set $l11
                (local.get $l13))
              (br_if $L6
                (i32.eqz
                  (local.get $l8))))
            (i64.store offset=8
              (local.get $l10)
              (local.get $l12))
            (br_if $B0
              (i32.eqz
                (local.tee $l8
                  (i32.load offset=20
                    (local.get $l5)))))
            (br_if $B0
              (i32.eqz
                (local.tee $l6
                  (i32.load offset=24
                    (local.get $l5)))))
            (call $__rust_dealloc
              (local.get $l8)
              (local.get $l6)
              (i32.const 1))
            (br $B0))
          (i32.store offset=36
            (local.get $l5)
            (i32.add
              (local.get $l5)
              (i32.const 20)))
          (i64.store align=4
            (i32.add
              (local.get $l5)
              (i32.const 68))
            (i64.const 1))
          (i32.store offset=60
            (local.get $l5)
            (i32.const 2))
          (i32.store offset=56
            (local.get $l5)
            (i32.const 1049244))
          (i32.store offset=52
            (local.get $l5)
            (i32.const 5))
          (i32.store offset=64
            (local.get $l5)
            (i32.add
              (local.get $l5)
              (i32.const 48)))
          (i32.store offset=48
            (local.get $l5)
            (i32.add
              (local.get $l5)
              (i32.const 36)))
          (call $_ZN3std2io5Write9write_fmt17hfe8371fd0b5f892bE
            (i32.add
              (local.get $l5)
              (i32.const 40))
            (i32.add
              (local.get $l5)
              (i32.const 48))
            (i32.add
              (local.get $l5)
              (i32.const 56)))
          (call $_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h4404161b40712de8E
            (i32.load8_u offset=40
              (local.get $l5))
            (i32.load offset=44
              (local.get $l5)))
          (call $_ZN3std3sys4wasi14abort_internal17h13cc9b6d35378fc3E)
          (unreachable))
        (call $_ZN5alloc5alloc18handle_alloc_error17haf16dbf93a34ba25E
          (local.get $l8)
          (local.get $l9))
        (unreachable))
      (call $_ZN3std6thread8ThreadId3new9exhausted17haebae41575008cf4E)
      (unreachable))
    (block $B7
      (br_if $B7
        (i32.eqz
          (i32.load offset=1056104
            (i32.const 0))))
      (i64.store align=4
        (i32.add
          (local.get $l5)
          (i32.const 68))
        (i64.const 0))
      (i32.store offset=60
        (local.get $l5)
        (i32.const 1))
      (i32.store offset=56
        (local.get $l5)
        (i32.const 1051436))
      (i32.store offset=64
        (local.get $l5)
        (i32.add
          (local.get $l5)
          (i32.const 48)))
      (call $_ZN3std2io5Write9write_fmt17hfe8371fd0b5f892bE
        (i32.add
          (local.get $l5)
          (i32.const 20))
        (i32.add
          (local.get $l5)
          (i32.const 48))
        (i32.add
          (local.get $l5)
          (i32.const 56)))
      (call $_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h4404161b40712de8E
        (i32.load8_u offset=20
          (local.get $l5))
        (i32.load offset=24
          (local.get $l5)))
      (call $_ZN3std3sys4wasi14abort_internal17h13cc9b6d35378fc3E)
      (unreachable))
    (i32.store offset=1056104
      (i32.const 0)
      (local.get $l10))
    (local.set $l8
      (call_indirect $T0 (type $t3)
        (local.get $p0)
        (i32.load
          (i32.add
            (local.get $p1)
            (i32.const 20)))))
    (block $B8
      (br_if $B8
        (i32.eq
          (i32.load8_u offset=1056014
            (i32.const 0))
          (i32.const 3)))
      (i32.store8 offset=56
        (local.get $l5)
        (i32.const 1))
      (call $_ZN3std3sys4wasi4once4Once4call17hd23e167afd5badc9E
        (i32.add
          (local.get $l5)
          (i32.const 56))))
    (global.set $__stack_pointer
      (i32.add
        (local.get $l5)
        (i32.const 80)))
    (local.get $l8))
  (func $_ZN3std2io5Write9write_fmt17hfe8371fd0b5f892bE (type $t5) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32) (local $l4 i32)
    (global.set $__stack_pointer
      (local.tee $l3
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 16))))
    (i32.store8
      (local.get $l3)
      (i32.const 4))
    (i32.store offset=8
      (local.get $l3)
      (local.get $p1))
    (block $B0
      (block $B1
        (br_if $B1
          (i32.eqz
            (call $_ZN4core3fmt5write17had8ef63591bfa1d0E
              (local.get $l3)
              (i32.const 1049156)
              (local.get $p2))))
        (block $B2
          (br_if $B2
            (i32.ne
              (i32.load8_u
                (local.get $l3))
              (i32.const 4)))
          (i32.store offset=4
            (local.get $p0)
            (i32.const 1050796))
          (i32.store8
            (local.get $p0)
            (i32.const 2))
          (br $B0))
        (i64.store align=4
          (local.get $p0)
          (i64.load
            (local.get $l3)))
        (br $B0))
      (i32.store8
        (local.get $p0)
        (i32.const 4))
      (local.set $p1
        (i32.load offset=4
          (local.get $l3)))
      (block $B3
        (br_if $B3
          (i32.gt_u
            (local.tee $p0
              (i32.load8_u
                (local.get $l3)))
            (i32.const 4)))
        (br_if $B0
          (i32.ne
            (local.get $p0)
            (i32.const 3))))
      (call_indirect $T0 (type $t1)
        (local.tee $p2
          (i32.load
            (local.get $p1)))
        (i32.load
          (local.tee $p0
            (i32.load
              (i32.add
                (local.get $p1)
                (i32.const 4))))))
      (block $B4
        (br_if $B4
          (i32.eqz
            (local.tee $l4
              (i32.load offset=4
                (local.get $p0)))))
        (call $__rust_dealloc
          (local.get $p2)
          (local.get $l4)
          (i32.load offset=8
            (local.get $p0))))
      (call $__rust_dealloc
        (local.get $p1)
        (i32.const 12)
        (i32.const 4)))
    (global.set $__stack_pointer
      (i32.add
        (local.get $l3)
        (i32.const 16))))
  (func $_ZN3std3sys4wasi14abort_internal17h13cc9b6d35378fc3E (type $t0)
    (call $abort)
    (unreachable))
  (func $_ZN3std3env11current_dir17h627b822d4b56f138E (type $t1) (param $p0 i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32)
    (global.set $__stack_pointer
      (local.tee $l1
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 16))))
    (drop
      (i32.load8_u offset=1056013
        (i32.const 0)))
    (local.set $l2
      (i32.const 512))
    (block $B0
      (block $B1
        (block $B2
          (block $B3
            (br_if $B3
              (i32.eqz
                (local.tee $l3
                  (call $__rust_alloc
                    (i32.const 512)
                    (i32.const 1)))))
            (i32.store offset=8
              (local.get $l1)
              (i32.const 512))
            (i32.store offset=4
              (local.get $l1)
              (local.get $l3))
            (br_if $B2
              (call $getcwd
                (local.get $l3)
                (i32.const 512)))
            (block $B4
              (block $B5
                (block $B6
                  (br_if $B6
                    (i32.ne
                      (local.tee $l2
                        (i32.load offset=1056616
                          (i32.const 0)))
                      (i32.const 68)))
                  (local.set $l2
                    (i32.const 512))
                  (br $B5))
                (i64.store align=4
                  (local.get $p0)
                  (i64.const 0))
                (i32.store
                  (i32.add
                    (local.get $p0)
                    (i32.const 8))
                  (local.get $l2))
                (local.set $l2
                  (i32.const 512))
                (br $B4))
              (loop $L7
                (i32.store offset=12
                  (local.get $l1)
                  (local.get $l2))
                (call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17hdfa9348b6ca399abE
                  (i32.add
                    (local.get $l1)
                    (i32.const 4))
                  (local.get $l2)
                  (i32.const 1))
                (br_if $B2
                  (call $getcwd
                    (local.tee $l3
                      (i32.load offset=4
                        (local.get $l1)))
                    (local.tee $l2
                      (i32.load offset=8
                        (local.get $l1)))))
                (br_if $L7
                  (i32.eq
                    (local.tee $l4
                      (i32.load offset=1056616
                        (i32.const 0)))
                    (i32.const 68))))
              (i64.store align=4
                (local.get $p0)
                (i64.const 0))
              (i32.store
                (i32.add
                  (local.get $p0)
                  (i32.const 8))
                (local.get $l4))
              (br_if $B1
                (i32.eqz
                  (local.get $l2))))
            (call $__rust_dealloc
              (local.get $l3)
              (local.get $l2)
              (i32.const 1))
            (br $B1))
          (call $_ZN5alloc5alloc18handle_alloc_error17haf16dbf93a34ba25E
            (i32.const 1)
            (i32.const 512))
          (unreachable))
        (i32.store offset=12
          (local.get $l1)
          (local.tee $l4
            (call $strlen
              (local.get $l3))))
        (block $B8
          (br_if $B8
            (i32.le_u
              (local.get $l2)
              (local.get $l4)))
          (block $B9
            (block $B10
              (br_if $B10
                (local.get $l4))
              (local.set $l5
                (i32.const 1))
              (call $__rust_dealloc
                (local.get $l3)
                (local.get $l2)
                (i32.const 1))
              (br $B9))
            (br_if $B0
              (i32.eqz
                (local.tee $l5
                  (call $__rust_realloc
                    (local.get $l3)
                    (local.get $l2)
                    (i32.const 1)
                    (local.get $l4))))))
          (i32.store offset=8
            (local.get $l1)
            (local.get $l4))
          (i32.store offset=4
            (local.get $l1)
            (local.get $l5)))
        (i64.store align=4
          (local.get $p0)
          (i64.load offset=4 align=4
            (local.get $l1)))
        (i32.store
          (i32.add
            (local.get $p0)
            (i32.const 8))
          (i32.load
            (i32.add
              (i32.add
                (local.get $l1)
                (i32.const 4))
              (i32.const 8)))))
      (global.set $__stack_pointer
        (i32.add
          (local.get $l1)
          (i32.const 16)))
      (return))
    (call $_ZN5alloc5alloc18handle_alloc_error17haf16dbf93a34ba25E
      (i32.const 1)
      (local.get $l4))
    (unreachable))
  (func $_ZN3std3env7_var_os17h7a23a8b80c477f63E (type $t5) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32)
    (global.set $__stack_pointer
      (local.tee $l3
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 416))))
    (block $B0
      (block $B1
        (block $B2
          (block $B3
            (br_if $B3
              (i32.gt_u
                (local.get $p2)
                (i32.const 383)))
            (drop
              (call $memcpy
                (i32.add
                  (local.get $l3)
                  (i32.const 20))
                (local.get $p1)
                (local.get $p2)))
            (i32.store8
              (i32.add
                (i32.add
                  (local.get $l3)
                  (i32.const 20))
                (local.get $p2))
              (i32.const 0))
            (local.set $p1
              (i32.const 1))
            (call $_ZN4core3ffi5c_str4CStr19from_bytes_with_nul17hb405641cf26425b3E
              (i32.add
                (local.get $l3)
                (i32.const 404))
              (i32.add
                (local.get $l3)
                (i32.const 20))
              (i32.add
                (local.get $p2)
                (i32.const 1)))
            (block $B4
              (br_if $B4
                (i32.load offset=404
                  (local.get $l3)))
              (block $B5
                (br_if $B5
                  (local.tee $p1
                    (call $getenv
                      (i32.load offset=408
                        (local.get $l3)))))
                (local.set $p1
                  (i32.const 0))
                (i32.store offset=8
                  (local.get $l3)
                  (i32.const 0))
                (br $B0))
              (block $B6
                (block $B7
                  (br_if $B7
                    (local.tee $p2
                      (call $strlen
                        (local.get $p1))))
                  (local.set $l4
                    (i32.const 1))
                  (br $B6))
                (br_if $B2
                  (i32.le_s
                    (local.get $p2)
                    (i32.const -1)))
                (drop
                  (i32.load8_u offset=1056013
                    (i32.const 0)))
                (br_if $B1
                  (i32.eqz
                    (local.tee $l4
                      (call $__rust_alloc
                        (local.get $p2)
                        (i32.const 1))))))
              (local.set $p1
                (call $memcpy
                  (local.get $l4)
                  (local.get $p1)
                  (local.get $p2)))
              (i32.store
                (i32.add
                  (local.get $l3)
                  (i32.const 16))
                (local.get $p2))
              (i32.store
                (i32.add
                  (local.get $l3)
                  (i32.const 12))
                (local.get $p2))
              (i32.store offset=8
                (local.get $l3)
                (local.get $p1))
              (local.set $p1
                (i32.const 0))
              (br $B0))
            (i64.store offset=8 align=4
              (local.get $l3)
              (i64.load offset=1051184
                (i32.const 0)))
            (br $B0))
          (call $_ZN3std3sys6common14small_c_string24run_with_cstr_allocating17hf156ea739f410bf5E
            (i32.add
              (local.get $l3)
              (i32.const 4))
            (local.get $p1)
            (local.get $p2))
          (local.set $p1
            (i32.load offset=4
              (local.get $l3)))
          (br $B0))
        (call $_ZN5alloc7raw_vec17capacity_overflow17h71c1886b236d8c9dE)
        (unreachable))
      (call $_ZN5alloc5alloc18handle_alloc_error17haf16dbf93a34ba25E
        (i32.const 1)
        (local.get $p2))
      (unreachable))
    (block $B8
      (block $B9
        (br_if $B9
          (local.get $p1))
        (i64.store align=4
          (local.get $p0)
          (i64.load offset=8 align=4
            (local.get $l3)))
        (i32.store
          (i32.add
            (local.get $p0)
            (i32.const 8))
          (i32.load
            (i32.add
              (local.get $l3)
              (i32.const 16))))
        (br $B8))
      (block $B10
        (br_if $B10
          (i32.ne
            (i32.load8_u offset=8
              (local.get $l3))
            (i32.const 3)))
        (call_indirect $T0 (type $t1)
          (local.tee $l4
            (i32.load
              (local.tee $p2
                (i32.load
                  (i32.add
                    (local.get $l3)
                    (i32.const 12))))))
          (i32.load
            (local.tee $p1
              (i32.load
                (i32.add
                  (local.get $p2)
                  (i32.const 4))))))
        (block $B11
          (br_if $B11
            (i32.eqz
              (local.tee $l5
                (i32.load offset=4
                  (local.get $p1)))))
          (call $__rust_dealloc
            (local.get $l4)
            (local.get $l5)
            (i32.load offset=8
              (local.get $p1))))
        (call $__rust_dealloc
          (local.get $p2)
          (i32.const 12)
          (i32.const 4)))
      (i32.store
        (local.get $p0)
        (i32.const 0)))
    (global.set $__stack_pointer
      (i32.add
        (local.get $l3)
        (i32.const 416))))
  (func $_ZN3std3sys6common14small_c_string24run_with_cstr_allocating17hf156ea739f410bf5E (type $t5) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32)
    (global.set $__stack_pointer
      (local.tee $l3
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 16))))
    (call $_ZN72_$LT$$RF$str$u20$as$u20$alloc..ffi..c_str..CString..new..SpecNewImpl$GT$13spec_new_impl17hbc2c7db29cb7e1d2E
      (local.get $l3)
      (local.get $p1)
      (local.get $p2))
    (block $B0
      (block $B1
        (block $B2
          (block $B3
            (br_if $B3
              (local.tee $p2
                (i32.load
                  (local.get $l3))))
            (local.set $l4
              (i32.load
                (i32.add
                  (local.get $l3)
                  (i32.const 8))))
            (block $B4
              (block $B5
                (br_if $B5
                  (local.tee $l5
                    (call $getenv
                      (local.tee $p1
                        (i32.load offset=4
                          (local.get $l3))))))
                (i32.store offset=4
                  (local.get $p0)
                  (i32.const 0))
                (br $B4))
              (block $B6
                (block $B7
                  (br_if $B7
                    (local.tee $p2
                      (call $strlen
                        (local.get $l5))))
                  (local.set $l6
                    (i32.const 1))
                  (br $B6))
                (br_if $B2
                  (i32.le_s
                    (local.get $p2)
                    (i32.const -1)))
                (drop
                  (i32.load8_u offset=1056013
                    (i32.const 0)))
                (br_if $B1
                  (i32.eqz
                    (local.tee $l6
                      (call $__rust_alloc
                        (local.get $p2)
                        (i32.const 1))))))
              (local.set $l5
                (call $memcpy
                  (local.get $l6)
                  (local.get $l5)
                  (local.get $p2)))
              (i32.store
                (i32.add
                  (local.get $p0)
                  (i32.const 12))
                (local.get $p2))
              (i32.store
                (i32.add
                  (local.get $p0)
                  (i32.const 8))
                (local.get $p2))
              (i32.store offset=4
                (local.get $p0)
                (local.get $l5)))
            (i32.store8
              (local.get $p1)
              (i32.const 0))
            (i32.store
              (local.get $p0)
              (i32.const 0))
            (br_if $B0
              (i32.eqz
                (local.get $l4)))
            (call $__rust_dealloc
              (local.get $p1)
              (local.get $l4)
              (i32.const 1))
            (br $B0))
          (i32.store
            (local.get $p0)
            (i32.const 1))
          (i64.store offset=4 align=4
            (local.get $p0)
            (i64.load offset=1051184
              (i32.const 0)))
          (br_if $B0
            (i32.eqz
              (local.tee $p0
                (i32.load offset=4
                  (local.get $l3)))))
          (call $__rust_dealloc
            (local.get $p2)
            (local.get $p0)
            (i32.const 1))
          (br $B0))
        (call $_ZN5alloc7raw_vec17capacity_overflow17h71c1886b236d8c9dE)
        (unreachable))
      (call $_ZN5alloc5alloc18handle_alloc_error17haf16dbf93a34ba25E
        (i32.const 1)
        (local.get $p2))
      (unreachable))
    (global.set $__stack_pointer
      (i32.add
        (local.get $l3)
        (i32.const 16))))
  (func $_ZN60_$LT$std..io..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17hf8951a5d79bef3c5E (type $t4) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32)
    (global.set $__stack_pointer
      (local.tee $l2
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 64))))
    (block $B0
      (block $B1
        (block $B2
          (block $B3
            (block $B4
              (br_table $B4 $B3 $B2 $B1 $B4
                (i32.load8_u
                  (local.get $p0))))
            (i32.store offset=8
              (local.get $l2)
              (local.tee $p0
                (i32.load offset=4
                  (local.get $p0))))
            (call $_ZN3std3sys4wasi2os12error_string17h3870eb3e52e659ffE
              (i32.add
                (local.get $l2)
                (i32.const 12))
              (local.get $p0))
            (i64.store align=4
              (i32.add
                (i32.add
                  (local.get $l2)
                  (i32.const 40))
                (i32.const 12))
              (i64.const 2))
            (i32.store
              (i32.add
                (i32.add
                  (local.get $l2)
                  (i32.const 24))
                (i32.const 12))
              (i32.const 6))
            (i32.store offset=44
              (local.get $l2)
              (i32.const 3))
            (i32.store offset=40
              (local.get $l2)
              (i32.const 1050380))
            (i32.store offset=28
              (local.get $l2)
              (i32.const 7))
            (i32.store offset=48
              (local.get $l2)
              (i32.add
                (local.get $l2)
                (i32.const 24)))
            (i32.store offset=32
              (local.get $l2)
              (i32.add
                (local.get $l2)
                (i32.const 8)))
            (i32.store offset=24
              (local.get $l2)
              (i32.add
                (local.get $l2)
                (i32.const 12)))
            (local.set $p0
              (call $_ZN4core3fmt9Formatter9write_fmt17hd3a20ec36a39f80cE
                (local.get $p1)
                (i32.add
                  (local.get $l2)
                  (i32.const 40))))
            (br_if $B0
              (i32.eqz
                (local.tee $p1
                  (i32.load offset=16
                    (local.get $l2)))))
            (call $__rust_dealloc
              (i32.load offset=12
                (local.get $l2))
              (local.get $p1)
              (i32.const 1))
            (br $B0))
          (local.set $p0
            (i32.load8_u offset=1
              (local.get $p0)))
          (i64.store align=4
            (i32.add
              (local.get $l2)
              (i32.const 52))
            (i64.const 1))
          (i32.store offset=44
            (local.get $l2)
            (i32.const 1))
          (i32.store offset=40
            (local.get $l2)
            (i32.const 1049512))
          (i32.store offset=16
            (local.get $l2)
            (i32.const 8))
          (i32.store offset=28
            (local.get $l2)
            (i32.load
              (i32.add
                (local.tee $p0
                  (i32.shl
                    (local.get $p0)
                    (i32.const 2)))
                (i32.const 1052520))))
          (i32.store offset=24
            (local.get $l2)
            (i32.load
              (i32.add
                (local.get $p0)
                (i32.const 1052684))))
          (i32.store offset=48
            (local.get $l2)
            (i32.add
              (local.get $l2)
              (i32.const 12)))
          (i32.store offset=12
            (local.get $l2)
            (i32.add
              (local.get $l2)
              (i32.const 24)))
          (local.set $p0
            (call $_ZN4core3fmt9Formatter9write_fmt17hd3a20ec36a39f80cE
              (local.get $p1)
              (i32.add
                (local.get $l2)
                (i32.const 40))))
          (br $B0))
        (local.set $p0
          (call $_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h168a697adc3298ffE
            (i32.load
              (local.tee $p0
                (i32.load offset=4
                  (local.get $p0))))
            (i32.load offset=4
              (local.get $p0))
            (local.get $p1)))
        (br $B0))
      (local.set $p0
        (call_indirect $T0 (type $t4)
          (i32.load
            (local.tee $p0
              (i32.load offset=4
                (local.get $p0))))
          (local.get $p1)
          (i32.load offset=16
            (i32.load offset=4
              (local.get $p0))))))
    (global.set $__stack_pointer
      (i32.add
        (local.get $l2)
        (i32.const 64)))
    (local.get $p0))
  (func $_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$9flush_buf17h30fb61827fbc9bd5E (type $t2) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32)
    (global.set $__stack_pointer
      (local.tee $l2
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 32))))
    (block $B0
      (block $B1
        (block $B2
          (br_if $B2
            (local.tee $l3
              (i32.load offset=8
                (local.get $p1))))
          (i32.store8
            (local.get $p0)
            (i32.const 4))
          (br $B1))
        (local.set $l4
          (i32.load
            (local.get $p1)))
        (local.set $l5
          (i32.const 0))
        (block $B3
          (block $B4
            (loop $L5
              (i32.store offset=16
                (local.get $l2)
                (local.tee $l6
                  (i32.sub
                    (local.get $l3)
                    (local.get $l5))))
              (i32.store offset=12
                (local.get $l2)
                (local.tee $l7
                  (i32.add
                    (local.get $l4)
                    (local.get $l5))))
              (call $_ZN4wasi13lib_generated8fd_write17he16b5a9ceecf5729E
                (i32.add
                  (local.get $l2)
                  (i32.const 20))
                (i32.const 1)
                (i32.add
                  (local.get $l2)
                  (i32.const 12))
                (i32.const 1))
              (block $B6
                (block $B7
                  (block $B8
                    (block $B9
                      (block $B10
                        (br_if $B10
                          (i32.load16_u offset=20
                            (local.get $l2)))
                        (local.set $l8
                          (i32.load offset=24
                            (local.get $l2)))
                        (br $B9))
                      (i32.store16 offset=30
                        (local.get $l2)
                        (i32.load16_u offset=22
                          (local.get $l2)))
                      (local.set $l8
                        (local.get $l6))
                      (br_if $B9
                        (i32.eq
                          (local.tee $l10
                            (i32.and
                              (local.tee $l9
                                (call $_ZN4wasi13lib_generated5Errno3raw17hdc11aaa809e24aabE
                                  (i32.add
                                    (local.get $l2)
                                    (i32.const 30))))
                              (i32.const 65535)))
                          (i32.and
                            (call $_ZN4wasi13lib_generated5Errno3raw17hdc11aaa809e24aabE
                              (i32.const 1052344))
                            (i32.const 65535))))
                      (i32.store8 offset=12
                        (local.get $p1)
                        (i32.const 0))
                      (br_if $B6
                        (i32.eq
                          (local.get $l10)
                          (i32.and
                            (call $_ZN4wasi13lib_generated5Errno3raw17hdc11aaa809e24aabE
                              (i32.const 1050366))
                            (i32.const 65535))))
                      (i32.store
                        (local.get $p0)
                        (i32.const 0))
                      (i32.store offset=4
                        (local.get $p0)
                        (i32.and
                          (local.get $l9)
                          (i32.const 65535)))
                      (br $B8))
                    (i32.store8 offset=12
                      (local.get $p1)
                      (i32.const 0))
                    (br_if $B7
                      (local.get $l8))
                    (i32.store offset=4
                      (local.get $p0)
                      (i32.const 1049500))
                    (i32.store8
                      (local.get $p0)
                      (i32.const 2)))
                  (br_if $B1
                    (i32.eqz
                      (local.get $l5)))
                  (br_if $B4
                    (i32.lt_u
                      (local.get $l3)
                      (local.get $l5)))
                  (i32.store offset=8
                    (local.get $p1)
                    (i32.const 0))
                  (br_if $B1
                    (i32.eq
                      (local.get $l3)
                      (local.get $l5)))
                  (drop
                    (call $memmove
                      (local.get $l4)
                      (local.get $l7)
                      (local.get $l6)))
                  (i32.store offset=8
                    (local.get $p1)
                    (local.get $l6))
                  (br $B1))
                (local.set $l5
                  (i32.add
                    (local.get $l8)
                    (local.get $l5))))
              (br_if $B3
                (i32.ge_u
                  (local.get $l5)
                  (local.get $l3)))
              (br $L5)))
          (call $_ZN4core5slice5index24slice_end_index_len_fail17h2d214d250153a7a9E
            (local.get $l5)
            (local.get $l3)
            (i32.const 1049028))
          (unreachable))
        (i32.store8
          (local.get $p0)
          (i32.const 4))
        (br_if $B1
          (i32.eqz
            (local.get $l5)))
        (br_if $B0
          (i32.lt_u
            (local.get $l3)
            (local.get $l5)))
        (i32.store offset=8
          (local.get $p1)
          (i32.const 0)))
      (global.set $__stack_pointer
        (i32.add
          (local.get $l2)
          (i32.const 32)))
      (return))
    (call $_ZN4core5slice5index24slice_end_index_len_fail17h2d214d250153a7a9E
      (local.get $l5)
      (local.get $l3)
      (i32.const 1049028))
    (unreachable))
  (func $_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17hf822b286eb4c4738E (type $t9) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (local $l4 i32) (local $l5 i32)
    (global.set $__stack_pointer
      (local.tee $l4
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 16))))
    (block $B0
      (block $B1
        (block $B2
          (br_if $B2
            (i32.ge_u
              (i32.sub
                (local.tee $l5
                  (i32.load offset=4
                    (local.get $p1)))
                (i32.load offset=8
                  (local.get $p1)))
              (local.get $p3)))
          (call $_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$9flush_buf17h30fb61827fbc9bd5E
            (i32.add
              (local.get $l4)
              (i32.const 8))
            (local.get $p1))
          (br_if $B1
            (i32.ne
              (local.tee $l5
                (i32.load8_u offset=8
                  (local.get $l4)))
              (i32.const 4)))
          (local.set $l5
            (i32.load offset=4
              (local.get $p1))))
        (block $B3
          (br_if $B3
            (i32.le_u
              (local.get $l5)
              (local.get $p3)))
          (drop
            (call $memcpy
              (i32.add
                (i32.load
                  (local.get $p1))
                (local.tee $l5
                  (i32.load offset=8
                    (local.get $p1))))
              (local.get $p2)
              (local.get $p3)))
          (i32.store8
            (local.get $p0)
            (i32.const 4))
          (i32.store offset=8
            (local.get $p1)
            (i32.add
              (local.get $l5)
              (local.get $p3)))
          (br $B0))
        (call $_ZN60_$LT$std..io..stdio..StdoutRaw$u20$as$u20$std..io..Write$GT$9write_all17hb043d5f00b395201E
          (i32.add
            (local.get $l4)
            (i32.const 8))
          (local.get $p1)
          (local.get $p2)
          (local.get $p3))
        (i32.store8 offset=12
          (local.get $p1)
          (i32.const 0))
        (i64.store align=4
          (local.get $p0)
          (i64.load offset=8
            (local.get $l4)))
        (br $B0))
      (i32.store offset=1 align=1
        (local.get $p0)
        (i32.load offset=9 align=1
          (local.get $l4)))
      (i32.store align=1
        (i32.add
          (local.get $p0)
          (i32.const 4))
        (i32.load align=1
          (i32.add
            (i32.add
              (local.get $l4)
              (i32.const 8))
            (i32.const 4))))
      (i32.store8
        (local.get $p0)
        (local.get $l5)))
    (global.set $__stack_pointer
      (i32.add
        (local.get $l4)
        (i32.const 16))))
  (func $_ZN60_$LT$std..io..stdio..StdoutRaw$u20$as$u20$std..io..Write$GT$9write_all17hb043d5f00b395201E (type $t9) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32)
    (global.set $__stack_pointer
      (local.tee $l4
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 32))))
    (local.set $l5
      (i32.const 4))
    (block $B0
      (block $B1
        (block $B2
          (br_if $B2
            (local.get $p3))
          (br $B1))
        (loop $L3
          (i32.store offset=16
            (local.get $l4)
            (local.get $p3))
          (i32.store offset=12
            (local.get $l4)
            (local.get $p2))
          (call $_ZN4wasi13lib_generated8fd_write17he16b5a9ceecf5729E
            (i32.add
              (local.get $l4)
              (i32.const 20))
            (i32.const 1)
            (i32.add
              (local.get $l4)
              (i32.const 12))
            (i32.const 1))
          (block $B4
            (block $B5
              (block $B6
                (block $B7
                  (block $B8
                    (br_if $B8
                      (local.tee $l6
                        (i32.load16_u offset=20
                          (local.get $l4))))
                    (br_if $B7
                      (i32.eqz
                        (local.tee $l7
                          (i32.load offset=24
                            (local.get $l4)))))
                    (br_if $B5
                      (i32.lt_u
                        (local.get $p3)
                        (local.get $l7)))
                    (local.set $p2
                      (i32.add
                        (local.get $p2)
                        (local.get $l7)))
                    (local.set $p3
                      (i32.sub
                        (local.get $p3)
                        (local.get $l7)))
                    (br $B4))
                  (i32.store16 offset=30
                    (local.get $l4)
                    (i32.load16_u offset=22
                      (local.get $l4)))
                  (br_if $B4
                    (i32.eq
                      (i32.and
                        (local.tee $l7
                          (call $_ZN4wasi13lib_generated5Errno3raw17hdc11aaa809e24aabE
                            (i32.add
                              (local.get $l4)
                              (i32.const 30))))
                        (i32.const 65535))
                      (i32.and
                        (call $_ZN4wasi13lib_generated5Errno3raw17hdc11aaa809e24aabE
                          (i32.const 1050366))
                        (i32.const 65535))))
                  (local.set $p3
                    (i32.and
                      (local.get $l7)
                      (i32.const 65535)))
                  (local.set $l5
                    (i32.const 0))
                  (br $B6))
                (local.set $p3
                  (i32.const 1050752))
                (local.set $l5
                  (i32.const 2)))
              (local.set $p2
                (call $_ZN4wasi13lib_generated5Errno3raw17hdc11aaa809e24aabE
                  (i32.const 1052344)))
              (br_if $B1
                (i32.eqz
                  (local.get $l6)))
              (br_if $B1
                (i32.ne
                  (local.get $p3)
                  (i32.and
                    (local.get $p2)
                    (i32.const 65535))))
              (i32.store8
                (local.get $p0)
                (i32.const 4))
              (br $B0))
            (call $_ZN4core5slice5index26slice_start_index_len_fail17he7b2fe2a6da776eaE
              (local.get $l7)
              (local.get $p3)
              (i32.const 1050764))
            (unreachable))
          (br_if $L3
            (local.get $p3))))
      (i32.store offset=4
        (local.get $p0)
        (local.get $p3))
      (i32.store
        (local.get $p0)
        (local.get $l5)))
    (global.set $__stack_pointer
      (i32.add
        (local.get $l4)
        (i32.const 32))))
  (func $_ZN3std3sys4wasi2os12error_string17h3870eb3e52e659ffE (type $t2) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32)
    (global.set $__stack_pointer
      (local.tee $l2
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 1056))))
    (block $B0
      (block $B1
        (block $B2
          (br_if $B2
            (i32.lt_s
              (call $strerror_r
                (local.get $p1)
                (local.tee $l2
                  (call $memset
                    (local.get $l2)
                    (i32.const 0)
                    (i32.const 1024)))
                (i32.const 1024))
              (i32.const 0)))
          (call $_ZN4core3str8converts9from_utf817h0e0a399703f2ddceE
            (i32.add
              (local.get $l2)
              (i32.const 1024))
            (local.get $l2)
            (call $strlen
              (local.get $l2)))
          (block $B3
            (br_if $B3
              (i32.load offset=1024
                (local.get $l2)))
            (local.set $l3
              (i32.load offset=1028
                (local.get $l2)))
            (block $B4
              (block $B5
                (br_if $B5
                  (local.tee $p1
                    (i32.load
                      (i32.add
                        (local.get $l2)
                        (i32.const 1032)))))
                (local.set $l4
                  (i32.const 1))
                (br $B4))
              (br_if $B1
                (i32.le_s
                  (local.get $p1)
                  (i32.const -1)))
              (drop
                (i32.load8_u offset=1056013
                  (i32.const 0)))
              (br_if $B0
                (i32.eqz
                  (local.tee $l4
                    (call $__rust_alloc
                      (local.get $p1)
                      (i32.const 1))))))
            (local.set $l3
              (call $memcpy
                (local.get $l4)
                (local.get $l3)
                (local.get $p1)))
            (i32.store offset=8
              (local.get $p0)
              (local.get $p1))
            (i32.store offset=4
              (local.get $p0)
              (local.get $p1))
            (i32.store
              (local.get $p0)
              (local.get $l3))
            (global.set $__stack_pointer
              (i32.add
                (local.get $l2)
                (i32.const 1056)))
            (return))
          (i64.store offset=1048
            (local.get $l2)
            (i64.load offset=1028 align=4
              (local.get $l2)))
          (call $_ZN4core6result13unwrap_failed17hd8d94c2109be2ae4E
            (i32.const 1049422)
            (i32.const 43)
            (i32.add
              (local.get $l2)
              (i32.const 1048))
            (i32.const 1052236)
            (i32.const 1052284))
          (unreachable))
        (i64.store align=4
          (i32.add
            (local.get $l2)
            (i32.const 1036))
          (i64.const 0))
        (i32.store offset=1028
          (local.get $l2)
          (i32.const 1))
        (i32.store offset=1024
          (local.get $l2)
          (i32.const 1052320))
        (i32.store offset=1032
          (local.get $l2)
          (i32.const 1048732))
        (call $_ZN4core9panicking9panic_fmt17h2a1cf3beec13dfc3E
          (i32.add
            (local.get $l2)
            (i32.const 1024))
          (i32.const 1052328))
        (unreachable))
      (call $_ZN5alloc7raw_vec17capacity_overflow17h71c1886b236d8c9dE)
      (unreachable))
    (call $_ZN5alloc5alloc18handle_alloc_error17haf16dbf93a34ba25E
      (i32.const 1)
      (local.get $p1))
    (unreachable))
  (func $_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$5write17he8a044bd59dee814E (type $t9) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (local $l4 i32)
    (block $B0
      (br_if $B0
        (i32.ge_u
          (i32.sub
            (i32.load offset=4
              (local.get $p1))
            (local.tee $l4
              (i32.load offset=8
                (local.get $p1))))
          (local.get $p3)))
      (call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17hdfa9348b6ca399abE
        (local.get $p1)
        (local.get $l4)
        (local.get $p3))
      (local.set $l4
        (i32.load offset=8
          (local.get $p1))))
    (drop
      (call $memcpy
        (i32.add
          (i32.load
            (local.get $p1))
          (local.get $l4))
        (local.get $p2)
        (local.get $p3)))
    (i32.store offset=4
      (local.get $p0)
      (local.get $p3))
    (i32.store offset=8
      (local.get $p1)
      (i32.add
        (local.get $l4)
        (local.get $p3)))
    (i32.store8
      (local.get $p0)
      (i32.const 4)))
  (func $_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$14write_vectored17h3fc6a150a9f58c3cE (type $t9) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32)
    (block $B0
      (block $B1
        (br_if $B1
          (local.get $p3))
        (local.set $l4
          (i32.const 0))
        (br $B0))
      (local.set $l5
        (i32.and
          (local.get $p3)
          (i32.const 3)))
      (block $B2
        (block $B3
          (br_if $B3
            (i32.ge_u
              (local.get $p3)
              (i32.const 4)))
          (local.set $l4
            (i32.const 0))
          (local.set $l6
            (i32.const 0))
          (br $B2))
        (local.set $l7
          (i32.add
            (local.get $p2)
            (i32.const 28)))
        (local.set $l8
          (i32.and
            (local.get $p3)
            (i32.const -4)))
        (local.set $l4
          (i32.const 0))
        (local.set $l6
          (i32.const 0))
        (loop $L4
          (local.set $l4
            (i32.add
              (i32.load
                (local.get $l7))
              (i32.add
                (i32.load
                  (i32.add
                    (local.get $l7)
                    (i32.const -8)))
                (i32.add
                  (i32.load
                    (i32.add
                      (local.get $l7)
                      (i32.const -16)))
                  (i32.add
                    (i32.load
                      (i32.add
                        (local.get $l7)
                        (i32.const -24)))
                    (local.get $l4))))))
          (local.set $l7
            (i32.add
              (local.get $l7)
              (i32.const 32)))
          (br_if $L4
            (i32.ne
              (local.get $l8)
              (local.tee $l6
                (i32.add
                  (local.get $l6)
                  (i32.const 4)))))))
      (block $B5
        (br_if $B5
          (i32.eqz
            (local.get $l5)))
        (local.set $l7
          (i32.add
            (i32.add
              (i32.shl
                (local.get $l6)
                (i32.const 3))
              (local.get $p2))
            (i32.const 4)))
        (loop $L6
          (local.set $l4
            (i32.add
              (i32.load
                (local.get $l7))
              (local.get $l4)))
          (local.set $l7
            (i32.add
              (local.get $l7)
              (i32.const 8)))
          (br_if $L6
            (local.tee $l5
              (i32.add
                (local.get $l5)
                (i32.const -1))))))
      (block $B7
        (br_if $B7
          (i32.ge_u
            (i32.sub
              (i32.load offset=4
                (local.get $p1))
              (local.tee $l7
                (i32.load offset=8
                  (local.get $p1))))
            (local.get $l4)))
        (call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17hdfa9348b6ca399abE
          (local.get $p1)
          (local.get $l7)
          (local.get $l4)))
      (br_if $B0
        (i32.eqz
          (local.get $p3)))
      (local.set $l8
        (i32.add
          (local.get $p2)
          (i32.shl
            (local.get $p3)
            (i32.const 3))))
      (local.set $l7
        (i32.load offset=8
          (local.get $p1)))
      (loop $L8
        (local.set $l6
          (i32.load
            (local.get $p2)))
        (block $B9
          (br_if $B9
            (i32.ge_u
              (i32.sub
                (i32.load offset=4
                  (local.get $p1))
                (local.get $l7))
              (local.tee $l5
                (i32.load
                  (i32.add
                    (local.get $p2)
                    (i32.const 4))))))
          (call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17hdfa9348b6ca399abE
            (local.get $p1)
            (local.get $l7)
            (local.get $l5))
          (local.set $l7
            (i32.load offset=8
              (local.get $p1))))
        (drop
          (call $memcpy
            (i32.add
              (i32.load
                (local.get $p1))
              (local.get $l7))
            (local.get $l6)
            (local.get $l5)))
        (i32.store offset=8
          (local.get $p1)
          (local.tee $l7
            (i32.add
              (local.get $l7)
              (local.get $l5))))
        (br_if $L8
          (i32.ne
            (local.tee $p2
              (i32.add
                (local.get $p2)
                (i32.const 8)))
            (local.get $l8)))))
    (i32.store8
      (local.get $p0)
      (i32.const 4))
    (i32.store offset=4
      (local.get $p0)
      (local.get $l4)))
  (func $_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$17is_write_vectored17h7b644f8512451b45E (type $t3) (param $p0 i32) (result i32)
    (i32.const 1))
  (func $_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hd9d3541acb1f1d64E (type $t9) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (local $l4 i32)
    (block $B0
      (br_if $B0
        (i32.ge_u
          (i32.sub
            (i32.load offset=4
              (local.get $p1))
            (local.tee $l4
              (i32.load offset=8
                (local.get $p1))))
          (local.get $p3)))
      (call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17hdfa9348b6ca399abE
        (local.get $p1)
        (local.get $l4)
        (local.get $p3))
      (local.set $l4
        (i32.load offset=8
          (local.get $p1))))
    (drop
      (call $memcpy
        (i32.add
          (i32.load
            (local.get $p1))
          (local.get $l4))
        (local.get $p2)
        (local.get $p3)))
    (i32.store8
      (local.get $p0)
      (i32.const 4))
    (i32.store offset=8
      (local.get $p1)
      (i32.add
        (local.get $l4)
        (local.get $p3))))
  (func $_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$5flush17h7d5059d513ec90f2E (type $t2) (param $p0 i32) (param $p1 i32)
    (i32.store8
      (local.get $p0)
      (i32.const 4)))
  (func $_ZN3std2io5Write18write_all_vectored17h83249f2e17a749ceE (type $t9) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32)
    (global.set $__stack_pointer
      (local.tee $l4
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 32))))
    (block $B0
      (block $B1
        (block $B2
          (block $B3
            (block $B4
              (br_if $B4
                (i32.eqz
                  (local.get $p3)))
              (local.set $l5
                (i32.add
                  (local.get $p2)
                  (i32.const 4)))
              (local.set $l6
                (i32.shl
                  (local.get $p3)
                  (i32.const 3)))
              (local.set $l7
                (i32.add
                  (i32.and
                    (i32.add
                      (local.get $p3)
                      (i32.const -1))
                    (i32.const 536870911))
                  (i32.const 1)))
              (local.set $l8
                (i32.const 0))
              (local.set $l9
                (i32.const 0))
              (block $B5
                (loop $L6
                  (br_if $B5
                    (i32.lt_u
                      (local.get $l9)
                      (local.tee $l10
                        (i32.load
                          (local.get $l5)))))
                  (local.set $l5
                    (i32.add
                      (local.get $l5)
                      (i32.const 8)))
                  (local.set $l8
                    (i32.add
                      (local.get $l8)
                      (i32.const 1)))
                  (local.set $l9
                    (i32.sub
                      (local.get $l9)
                      (local.get $l10)))
                  (br_if $L6
                    (local.tee $l6
                      (i32.add
                        (local.get $l6)
                        (i32.const -8)))))
                (local.set $l8
                  (local.get $l7)))
              (br_if $B1
                (i32.lt_u
                  (local.get $p3)
                  (local.get $l8)))
              (local.set $l7
                (i32.add
                  (local.get $p2)
                  (local.tee $l5
                    (i32.shl
                      (local.get $l8)
                      (i32.const 3)))))
              (block $B7
                (block $B8
                  (br_if $B8
                    (i32.ne
                      (local.get $p3)
                      (local.get $l8)))
                  (br_if $B7
                    (i32.eqz
                      (local.get $l9)))
                  (i64.store align=4
                    (i32.add
                      (local.get $l4)
                      (i32.const 20))
                    (i64.const 0))
                  (i32.store offset=12
                    (local.get $l4)
                    (i32.const 1))
                  (i32.store offset=8
                    (local.get $l4)
                    (i32.const 1050608))
                  (i32.store offset=16
                    (local.get $l4)
                    (i32.const 1048732))
                  (call $_ZN4core9panicking9panic_fmt17h2a1cf3beec13dfc3E
                    (i32.add
                      (local.get $l4)
                      (i32.const 8))
                    (i32.const 1050616))
                  (unreachable))
                (br_if $B2
                  (i32.lt_u
                    (local.tee $l6
                      (i32.load offset=4
                        (local.tee $l5
                          (i32.add
                            (local.get $p2)
                            (local.get $l5)))))
                    (local.get $l9)))
                (i32.store
                  (i32.add
                    (local.get $l5)
                    (i32.const 4))
                  (i32.sub
                    (local.get $l6)
                    (local.get $l9)))
                (i32.store
                  (local.get $l7)
                  (i32.add
                    (i32.load
                      (local.get $l7))
                    (local.get $l9))))
              (br_if $B4
                (i32.eqz
                  (local.tee $p3
                    (i32.sub
                      (local.get $p3)
                      (local.get $l8)))))
              (loop $L9
                (call $_ZN4wasi13lib_generated8fd_write17he16b5a9ceecf5729E
                  (i32.add
                    (local.get $l4)
                    (i32.const 8))
                  (i32.const 2)
                  (local.get $l7)
                  (local.get $p3))
                (block $B10
                  (block $B11
                    (block $B12
                      (br_if $B12
                        (i32.load16_u offset=8
                          (local.get $l4)))
                      (block $B13
                        (br_if $B13
                          (local.tee $l9
                            (i32.load offset=12
                              (local.get $l4))))
                        (i32.store offset=4
                          (local.get $p0)
                          (i32.const 1050752))
                        (i32.store8
                          (local.get $p0)
                          (i32.const 2))
                        (br $B0))
                      (local.set $l5
                        (i32.add
                          (local.get $l7)
                          (i32.const 4)))
                      (local.set $l6
                        (i32.shl
                          (local.get $p3)
                          (i32.const 3)))
                      (local.set $p2
                        (i32.add
                          (i32.and
                            (i32.add
                              (local.get $p3)
                              (i32.const -1))
                            (i32.const 536870911))
                          (i32.const 1)))
                      (local.set $l8
                        (i32.const 0))
                      (loop $L14
                        (br_if $B11
                          (i32.lt_u
                            (local.get $l9)
                            (local.tee $l10
                              (i32.load
                                (local.get $l5)))))
                        (local.set $l5
                          (i32.add
                            (local.get $l5)
                            (i32.const 8)))
                        (local.set $l8
                          (i32.add
                            (local.get $l8)
                            (i32.const 1)))
                        (local.set $l9
                          (i32.sub
                            (local.get $l9)
                            (local.get $l10)))
                        (br_if $L14
                          (local.tee $l6
                            (i32.add
                              (local.get $l6)
                              (i32.const -8)))))
                      (local.set $l8
                        (local.get $p2))
                      (br $B11))
                    (i32.store16 offset=6
                      (local.get $l4)
                      (i32.load16_u offset=10
                        (local.get $l4)))
                    (br_if $B10
                      (i32.eq
                        (i32.and
                          (local.tee $l9
                            (call $_ZN4wasi13lib_generated5Errno3raw17hdc11aaa809e24aabE
                              (i32.add
                                (local.get $l4)
                                (i32.const 6))))
                          (i32.const 65535))
                        (i32.and
                          (call $_ZN4wasi13lib_generated5Errno3raw17hdc11aaa809e24aabE
                            (i32.const 1050366))
                          (i32.const 65535))))
                    (i32.store
                      (local.get $p0)
                      (i32.const 0))
                    (i32.store offset=4
                      (local.get $p0)
                      (i32.and
                        (local.get $l9)
                        (i32.const 65535)))
                    (br $B0))
                  (br_if $B3
                    (i32.lt_u
                      (local.get $p3)
                      (local.get $l8)))
                  (local.set $l6
                    (i32.sub
                      (local.get $p3)
                      (local.get $l8)))
                  (local.set $l5
                    (i32.add
                      (local.get $l7)
                      (local.tee $l10
                        (i32.shl
                          (local.get $l8)
                          (i32.const 3)))))
                  (block $B15
                    (br_if $B15
                      (i32.ne
                        (local.get $p3)
                        (local.get $l8)))
                    (local.set $l7
                      (local.get $l5))
                    (local.set $p3
                      (local.get $l6))
                    (br_if $B10
                      (i32.eqz
                        (local.get $l9)))
                    (i64.store align=4
                      (i32.add
                        (local.get $l4)
                        (i32.const 20))
                      (i64.const 0))
                    (i32.store offset=12
                      (local.get $l4)
                      (i32.const 1))
                    (i32.store offset=8
                      (local.get $l4)
                      (i32.const 1050608))
                    (i32.store offset=16
                      (local.get $l4)
                      (i32.const 1048732))
                    (call $_ZN4core9panicking9panic_fmt17h2a1cf3beec13dfc3E
                      (i32.add
                        (local.get $l4)
                        (i32.const 8))
                      (i32.const 1050616))
                    (unreachable))
                  (block $B16
                    (br_if $B16
                      (i32.lt_u
                        (local.tee $l10
                          (i32.load offset=4
                            (local.tee $l8
                              (i32.add
                                (local.get $l7)
                                (local.get $l10)))))
                        (local.get $l9)))
                    (i32.store
                      (i32.add
                        (local.get $l8)
                        (i32.const 4))
                      (i32.sub
                        (local.get $l10)
                        (local.get $l9)))
                    (i32.store
                      (local.get $l5)
                      (i32.add
                        (i32.load
                          (local.get $l5))
                        (local.get $l9)))
                    (local.set $l7
                      (local.get $l5))
                    (local.set $p3
                      (local.get $l6))
                    (br $B10))
                  (i64.store align=4
                    (i32.add
                      (local.get $l4)
                      (i32.const 20))
                    (i64.const 0))
                  (i32.store offset=12
                    (local.get $l4)
                    (i32.const 1))
                  (i32.store offset=8
                    (local.get $l4)
                    (i32.const 1050668))
                  (i32.store offset=16
                    (local.get $l4)
                    (i32.const 1048732))
                  (call $_ZN4core9panicking9panic_fmt17h2a1cf3beec13dfc3E
                    (i32.add
                      (local.get $l4)
                      (i32.const 8))
                    (i32.const 1050708))
                  (unreachable))
                (br_if $L9
                  (local.get $p3))))
            (i32.store8
              (local.get $p0)
              (i32.const 4))
            (br $B0))
          (call $_ZN4core5slice5index26slice_start_index_len_fail17he7b2fe2a6da776eaE
            (local.get $l8)
            (local.get $p3)
            (i32.const 1050552))
          (unreachable))
        (i64.store align=4
          (i32.add
            (local.get $l4)
            (i32.const 20))
          (i64.const 0))
        (i32.store offset=12
          (local.get $l4)
          (i32.const 1))
        (i32.store offset=8
          (local.get $l4)
          (i32.const 1050668))
        (i32.store offset=16
          (local.get $l4)
          (i32.const 1048732))
        (call $_ZN4core9panicking9panic_fmt17h2a1cf3beec13dfc3E
          (i32.add
            (local.get $l4)
            (i32.const 8))
          (i32.const 1050708))
        (unreachable))
      (call $_ZN4core5slice5index26slice_start_index_len_fail17he7b2fe2a6da776eaE
        (local.get $l8)
        (local.get $p3)
        (i32.const 1050552))
      (unreachable))
    (global.set $__stack_pointer
      (i32.add
        (local.get $l4)
        (i32.const 32))))
  (func $_ZN3std4sync9once_lock17OnceLock$LT$T$GT$10initialize17h8408d2353b135fb5E (type $t0)
    (local $l0 i32)
    (global.set $__stack_pointer
      (local.tee $l0
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 16))))
    (block $B0
      (br_if $B0
        (i32.eq
          (i32.load8_u offset=1056048
            (i32.const 0))
          (i32.const 3)))
      (i32.store offset=4
        (local.get $l0)
        (i32.const 1056016))
      (i32.store offset=8
        (local.get $l0)
        (i32.add
          (local.get $l0)
          (i32.const 15)))
      (call $_ZN3std3sys4wasi4once4Once4call17h2e73d9104000ff7eE
        (i32.add
          (local.get $l0)
          (i32.const 4))))
    (global.set $__stack_pointer
      (i32.add
        (local.get $l0)
        (i32.const 16))))
  (func $_ZN61_$LT$$RF$std..io..stdio..Stdout$u20$as$u20$std..io..Write$GT$9write_fmt17ha169d64e63df56edE (type $t5) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32) (local $l4 i32)
    (global.set $__stack_pointer
      (local.tee $l3
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 32))))
    (block $B0
      (block $B1
        (block $B2
          (block $B3
            (br_if $B3
              (i32.eq
                (i32.load
                  (local.tee $p1
                    (i32.load
                      (i32.load
                        (local.get $p1)))))
                (i32.const 1056108)))
            (local.set $l4
              (i32.load8_u offset=28
                (local.get $p1)))
            (i32.store8 offset=28
              (local.get $p1)
              (i32.const 1))
            (i32.store8 offset=4
              (local.get $l3)
              (local.get $l4))
            (br_if $B2
              (i32.eqz
                (local.get $l4)))
            (i64.store offset=20 align=4
              (local.get $l3)
              (i64.const 0))
            (i32.store offset=16
              (local.get $l3)
              (i32.const 1048732))
            (i32.store offset=12
              (local.get $l3)
              (i32.const 1))
            (i32.store offset=8
              (local.get $l3)
              (i32.const 1050884))
            (call $_ZN4core9panicking13assert_failed17h1e3e261a1896ce28E
              (i32.add
                (local.get $l3)
                (i32.const 4))
              (i32.add
                (local.get $l3)
                (i32.const 8)))
            (unreachable))
          (br_if $B0
            (i32.eqz
              (local.tee $l4
                (i32.add
                  (i32.load offset=4
                    (local.get $p1))
                  (i32.const 1)))))
          (i32.store offset=4
            (local.get $p1)
            (local.get $l4))
          (br $B1))
        (i32.store offset=4
          (local.get $p1)
          (i32.const 1))
        (i32.store
          (local.get $p1)
          (i32.const 1056108)))
      (i32.store offset=4
        (local.get $l3)
        (local.get $p1))
      (i32.store8 offset=8
        (local.get $l3)
        (i32.const 4))
      (i32.store offset=16
        (local.get $l3)
        (i32.add
          (local.get $l3)
          (i32.const 4)))
      (block $B4
        (block $B5
          (br_if $B5
            (i32.eqz
              (call $_ZN4core3fmt5write17had8ef63591bfa1d0E
                (i32.add
                  (local.get $l3)
                  (i32.const 8))
                (i32.const 1049108)
                (local.get $p2))))
          (block $B6
            (br_if $B6
              (i32.ne
                (i32.load8_u offset=8
                  (local.get $l3))
                (i32.const 4)))
            (i32.store offset=4
              (local.get $p0)
              (i32.const 1050796))
            (i32.store8
              (local.get $p0)
              (i32.const 2))
            (br $B4))
          (i64.store align=4
            (local.get $p0)
            (i64.load offset=8
              (local.get $l3)))
          (br $B4))
        (i32.store8
          (local.get $p0)
          (i32.const 4))
        (local.set $p0
          (i32.load offset=12
            (local.get $l3)))
        (block $B7
          (br_if $B7
            (i32.gt_u
              (local.tee $p1
                (i32.load8_u offset=8
                  (local.get $l3)))
              (i32.const 4)))
          (br_if $B4
            (i32.ne
              (local.get $p1)
              (i32.const 3))))
        (call_indirect $T0 (type $t1)
          (local.tee $p2
            (i32.load
              (local.get $p0)))
          (i32.load
            (local.tee $p1
              (i32.load
                (i32.add
                  (local.get $p0)
                  (i32.const 4))))))
        (block $B8
          (br_if $B8
            (i32.eqz
              (local.tee $l4
                (i32.load offset=4
                  (local.get $p1)))))
          (call $__rust_dealloc
            (local.get $p2)
            (local.get $l4)
            (i32.load offset=8
              (local.get $p1))))
        (call $__rust_dealloc
          (local.get $p0)
          (i32.const 12)
          (i32.const 4)))
      (i32.store offset=4
        (local.tee $p1
          (i32.load offset=4
            (local.get $l3)))
        (local.tee $p0
          (i32.add
            (i32.load offset=4
              (local.get $p1))
            (i32.const -1))))
      (block $B9
        (br_if $B9
          (local.get $p0))
        (i32.store8 offset=28
          (local.get $p1)
          (i32.const 0))
        (i32.store
          (local.get $p1)
          (i32.const 0)))
      (global.set $__stack_pointer
        (i32.add
          (local.get $l3)
          (i32.const 32)))
      (return))
    (call $_ZN4core6option13expect_failed17h01cf680af7b4197dE
      (i32.const 1051040)
      (i32.const 38)
      (i32.const 1051112))
    (unreachable))
  (func $_ZN3std2io5stdio31print_to_buffer_if_capture_used17h349c4cb436a0d078E (type $t3) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32)
    (global.set $__stack_pointer
      (local.tee $l1
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 32))))
    (local.set $l2
      (i32.const 0))
    (block $B0
      (block $B1
        (br_if $B1
          (i32.eqz
            (i32.load8_u offset=1056015
              (i32.const 0))))
        (local.set $l2
          (i32.const 0))
        (block $B2
          (br_if $B2
            (i32.load8_u offset=1056112
              (i32.const 0)))
          (i32.store8 offset=1056112
            (i32.const 0)
            (i32.const 1))
          (i32.store offset=1056116
            (i32.const 0)
            (i32.const 0))
          (br $B1))
        (local.set $l2
          (i32.const 0))
        (local.set $l3
          (i32.load offset=1056116
            (i32.const 0)))
        (i32.store offset=1056116
          (i32.const 0)
          (i32.const 0))
        (br_if $B1
          (i32.eqz
            (local.get $l3)))
        (local.set $l2
          (i32.load8_u offset=8
            (local.get $l3)))
        (local.set $l4
          (i32.const 1))
        (i32.store8 offset=8
          (local.get $l3)
          (i32.const 1))
        (i32.store8 offset=7
          (local.get $l1)
          (local.get $l2))
        (br_if $B0
          (local.get $l2))
        (block $B3
          (br_if $B3
            (i32.eqz
              (i32.and
                (i32.load offset=1056080
                  (i32.const 0))
                (i32.const 2147483647))))
          (local.set $l4
            (call $_ZN3std9panicking11panic_count17is_zero_slow_path17hcd87a035896974dbE)))
        (i32.store8 offset=8
          (local.get $l1)
          (i32.const 4))
        (i32.store offset=16
          (local.get $l1)
          (i32.add
            (local.get $l3)
            (i32.const 12)))
        (local.set $p0
          (call $_ZN4core3fmt5write17had8ef63591bfa1d0E
            (i32.add
              (local.get $l1)
              (i32.const 8))
            (i32.const 1049084)
            (local.get $p0)))
        (local.set $l2
          (i32.load8_u offset=8
            (local.get $l1)))
        (block $B4
          (block $B5
            (br_if $B5
              (i32.eqz
                (local.get $p0)))
            (br_if $B4
              (i32.eq
                (local.get $l2)
                (i32.const 4)))
            (local.set $p0
              (i32.load offset=12
                (local.get $l1)))
            (block $B6
              (br_if $B6
                (i32.gt_u
                  (local.tee $l2
                    (i32.load8_u offset=8
                      (local.get $l1)))
                  (i32.const 4)))
              (br_if $B4
                (i32.ne
                  (local.get $l2)
                  (i32.const 3))))
            (call_indirect $T0 (type $t1)
              (local.tee $l5
                (i32.load
                  (local.get $p0)))
              (i32.load
                (local.tee $l2
                  (i32.load
                    (i32.add
                      (local.get $p0)
                      (i32.const 4))))))
            (block $B7
              (br_if $B7
                (i32.eqz
                  (local.tee $l6
                    (i32.load offset=4
                      (local.get $l2)))))
              (call $__rust_dealloc
                (local.get $l5)
                (local.get $l6)
                (i32.load offset=8
                  (local.get $l2))))
            (call $__rust_dealloc
              (local.get $p0)
              (i32.const 12)
              (i32.const 4))
            (br $B4))
          (local.set $p0
            (i32.load offset=12
              (local.get $l1)))
          (block $B8
            (br_if $B8
              (i32.gt_u
                (local.get $l2)
                (i32.const 4)))
            (br_if $B4
              (i32.ne
                (local.get $l2)
                (i32.const 3))))
          (call_indirect $T0 (type $t1)
            (local.tee $l5
              (i32.load
                (local.get $p0)))
            (i32.load
              (local.tee $l2
                (i32.load
                  (i32.add
                    (local.get $p0)
                    (i32.const 4))))))
          (block $B9
            (br_if $B9
              (i32.eqz
                (local.tee $l6
                  (i32.load offset=4
                    (local.get $l2)))))
            (call $__rust_dealloc
              (local.get $l5)
              (local.get $l6)
              (i32.load offset=8
                (local.get $l2))))
          (call $__rust_dealloc
            (local.get $p0)
            (i32.const 12)
            (i32.const 4)))
        (block $B10
          (br_if $B10
            (i32.eqz
              (local.get $l4)))
          (br_if $B10
            (i32.eqz
              (i32.and
                (i32.load offset=1056080
                  (i32.const 0))
                (i32.const 2147483647))))
          (br_if $B10
            (call $_ZN3std9panicking11panic_count17is_zero_slow_path17hcd87a035896974dbE))
          (i32.store8 offset=9
            (local.get $l3)
            (i32.const 1)))
        (i32.store8 offset=8
          (local.get $l3)
          (i32.const 0))
        (local.set $l2
          (i32.load offset=1056116
            (i32.const 0)))
        (i32.store offset=1056116
          (i32.const 0)
          (local.get $l3))
        (i32.store offset=8
          (local.get $l1)
          (local.get $l2))
        (block $B11
          (br_if $B11
            (i32.eqz
              (local.get $l2)))
          (i32.store
            (local.get $l2)
            (i32.add
              (local.tee $l3
                (i32.load
                  (local.get $l2)))
              (i32.const -1)))
          (br_if $B11
            (i32.ne
              (local.get $l3)
              (i32.const 1)))
          (call $_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h92428e76fc506e94E
            (i32.add
              (local.get $l1)
              (i32.const 8))))
        (local.set $l2
          (i32.const 1)))
      (global.set $__stack_pointer
        (i32.add
          (local.get $l1)
          (i32.const 32)))
      (return
        (local.get $l2)))
    (i64.store offset=20 align=4
      (local.get $l1)
      (i64.const 0))
    (i32.store offset=16
      (local.get $l1)
      (i32.const 1048732))
    (i32.store offset=12
      (local.get $l1)
      (i32.const 1))
    (i32.store offset=8
      (local.get $l1)
      (i32.const 1050884))
    (call $_ZN4core9panicking13assert_failed17h1e3e261a1896ce28E
      (i32.add
        (local.get $l1)
        (i32.const 7))
      (i32.add
        (local.get $l1)
        (i32.const 8)))
    (unreachable))
  (func $_ZN3std2io5stdio6_print17hed99a81f9f8d046fE (type $t1) (param $p0 i32)
    (local $l1 i32)
    (global.set $__stack_pointer
      (local.tee $l1
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 80))))
    (i32.store offset=12
      (local.get $l1)
      (i32.const 6))
    (i32.store offset=8
      (local.get $l1)
      (i32.const 1050520))
    (block $B0
      (block $B1
        (br_if $B1
          (call $_ZN3std2io5stdio31print_to_buffer_if_capture_used17h349c4cb436a0d078E
            (local.get $p0)))
        (block $B2
          (br_if $B2
            (i32.eq
              (i32.load8_u offset=1056048
                (i32.const 0))
              (i32.const 3)))
          (call $_ZN3std4sync9once_lock17OnceLock$LT$T$GT$10initialize17h8408d2353b135fb5E))
        (i32.store offset=28
          (local.get $l1)
          (i32.const 1056016))
        (i32.store offset=40
          (local.get $l1)
          (i32.add
            (local.get $l1)
            (i32.const 28)))
        (call $_ZN61_$LT$$RF$std..io..stdio..Stdout$u20$as$u20$std..io..Write$GT$9write_fmt17ha169d64e63df56edE
          (i32.add
            (local.get $l1)
            (i32.const 16))
          (i32.add
            (local.get $l1)
            (i32.const 40))
          (local.get $p0))
        (br_if $B0
          (i32.ne
            (i32.load8_u offset=16
              (local.get $l1))
            (i32.const 4))))
      (global.set $__stack_pointer
        (i32.add
          (local.get $l1)
          (i32.const 80)))
      (return))
    (i64.store offset=32
      (local.get $l1)
      (i64.load offset=16
        (local.get $l1)))
    (i64.store align=4
      (i32.add
        (i32.add
          (local.get $l1)
          (i32.const 40))
        (i32.const 12))
      (i64.const 2))
    (i32.store
      (i32.add
        (i32.add
          (local.get $l1)
          (i32.const 64))
        (i32.const 12))
      (i32.const 9))
    (i32.store offset=44
      (local.get $l1)
      (i32.const 2))
    (i32.store offset=40
      (local.get $l1)
      (i32.const 1050488))
    (i32.store offset=68
      (local.get $l1)
      (i32.const 8))
    (i32.store offset=48
      (local.get $l1)
      (i32.add
        (local.get $l1)
        (i32.const 64)))
    (i32.store offset=72
      (local.get $l1)
      (i32.add
        (local.get $l1)
        (i32.const 32)))
    (i32.store offset=64
      (local.get $l1)
      (i32.add
        (local.get $l1)
        (i32.const 8)))
    (call $_ZN4core9panicking9panic_fmt17h2a1cf3beec13dfc3E
      (i32.add
        (local.get $l1)
        (i32.const 40))
      (i32.const 1050504))
    (unreachable))
  (func $_ZN3std2io5Write9write_all17h9b107671da0abf1eE (type $t9) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (local $l4 i32) (local $l5 i32)
    (global.set $__stack_pointer
      (local.tee $l4
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 32))))
    (block $B0
      (block $B1
        (block $B2
          (block $B3
            (br_if $B3
              (i32.eqz
                (local.get $p3)))
            (loop $L4
              (i32.store offset=16
                (local.get $l4)
                (local.get $p3))
              (i32.store offset=12
                (local.get $l4)
                (local.get $p2))
              (call $_ZN4wasi13lib_generated8fd_write17he16b5a9ceecf5729E
                (i32.add
                  (local.get $l4)
                  (i32.const 20))
                (i32.const 2)
                (i32.add
                  (local.get $l4)
                  (i32.const 12))
                (i32.const 1))
              (block $B5
                (block $B6
                  (br_if $B6
                    (i32.load16_u offset=20
                      (local.get $l4)))
                  (block $B7
                    (br_if $B7
                      (local.tee $l5
                        (i32.load offset=24
                          (local.get $l4))))
                    (i32.store offset=4
                      (local.get $p0)
                      (i32.const 1050752))
                    (i32.store8
                      (local.get $p0)
                      (i32.const 2))
                    (br $B0))
                  (br_if $B2
                    (i32.lt_u
                      (local.get $p3)
                      (local.get $l5)))
                  (local.set $p2
                    (i32.add
                      (local.get $p2)
                      (local.get $l5)))
                  (local.set $p3
                    (i32.sub
                      (local.get $p3)
                      (local.get $l5)))
                  (br $B5))
                (i32.store16 offset=30
                  (local.get $l4)
                  (i32.load16_u offset=22
                    (local.get $l4)))
                (br_if $B1
                  (i32.ne
                    (i32.and
                      (local.tee $l5
                        (call $_ZN4wasi13lib_generated5Errno3raw17hdc11aaa809e24aabE
                          (i32.add
                            (local.get $l4)
                            (i32.const 30))))
                      (i32.const 65535))
                    (i32.and
                      (call $_ZN4wasi13lib_generated5Errno3raw17hdc11aaa809e24aabE
                        (i32.const 1050366))
                      (i32.const 65535)))))
              (br_if $L4
                (local.get $p3))))
          (i32.store8
            (local.get $p0)
            (i32.const 4))
          (br $B0))
        (call $_ZN4core5slice5index26slice_start_index_len_fail17he7b2fe2a6da776eaE
          (local.get $l5)
          (local.get $p3)
          (i32.const 1050764))
        (unreachable))
      (i32.store
        (local.get $p0)
        (i32.const 0))
      (i32.store offset=4
        (local.get $p0)
        (i32.and
          (local.get $l5)
          (i32.const 65535))))
    (global.set $__stack_pointer
      (i32.add
        (local.get $l4)
        (i32.const 32))))
  (func $_ZN3std2io5Write18write_all_vectored17hf742781032f6b341E (type $t9) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32)
    (global.set $__stack_pointer
      (local.tee $l4
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 32))))
    (block $B0
      (block $B1
        (block $B2
          (block $B3
            (block $B4
              (block $B5
                (br_if $B5
                  (i32.eqz
                    (local.get $p3)))
                (local.set $l5
                  (i32.add
                    (local.get $p2)
                    (i32.const 4)))
                (local.set $l6
                  (i32.shl
                    (local.get $p3)
                    (i32.const 3)))
                (local.set $l7
                  (i32.add
                    (i32.and
                      (i32.add
                        (local.get $p3)
                        (i32.const -1))
                      (i32.const 536870911))
                    (i32.const 1)))
                (local.set $l8
                  (i32.const 0))
                (local.set $l9
                  (i32.const 0))
                (block $B6
                  (loop $L7
                    (br_if $B6
                      (i32.lt_u
                        (local.get $l9)
                        (local.tee $l10
                          (i32.load
                            (local.get $l5)))))
                    (local.set $l5
                      (i32.add
                        (local.get $l5)
                        (i32.const 8)))
                    (local.set $l8
                      (i32.add
                        (local.get $l8)
                        (i32.const 1)))
                    (local.set $l9
                      (i32.sub
                        (local.get $l9)
                        (local.get $l10)))
                    (br_if $L7
                      (local.tee $l6
                        (i32.add
                          (local.get $l6)
                          (i32.const -8)))))
                  (local.set $l8
                    (local.get $l7)))
                (br_if $B1
                  (i32.lt_u
                    (local.get $p3)
                    (local.get $l8)))
                (local.set $l11
                  (i32.add
                    (local.get $p2)
                    (local.tee $l5
                      (i32.shl
                        (local.get $l8)
                        (i32.const 3)))))
                (block $B8
                  (block $B9
                    (br_if $B9
                      (i32.ne
                        (local.get $p3)
                        (local.get $l8)))
                    (br_if $B8
                      (i32.eqz
                        (local.get $l9)))
                    (i64.store align=4
                      (i32.add
                        (local.get $l4)
                        (i32.const 20))
                      (i64.const 0))
                    (i32.store offset=12
                      (local.get $l4)
                      (i32.const 1))
                    (i32.store offset=8
                      (local.get $l4)
                      (i32.const 1050608))
                    (i32.store offset=16
                      (local.get $l4)
                      (i32.const 1048732))
                    (call $_ZN4core9panicking9panic_fmt17h2a1cf3beec13dfc3E
                      (i32.add
                        (local.get $l4)
                        (i32.const 8))
                      (i32.const 1050616))
                    (unreachable))
                  (br_if $B2
                    (i32.lt_u
                      (local.tee $l6
                        (i32.load offset=4
                          (local.tee $l5
                            (i32.add
                              (local.get $p2)
                              (local.get $l5)))))
                      (local.get $l9)))
                  (i32.store
                    (i32.add
                      (local.get $l5)
                      (i32.const 4))
                    (i32.sub
                      (local.get $l6)
                      (local.get $l9)))
                  (i32.store
                    (local.get $l11)
                    (i32.add
                      (i32.load
                        (local.get $l11))
                      (local.get $l9))))
                (br_if $B5
                  (i32.eqz
                    (local.tee $l7
                      (i32.sub
                        (local.get $p3)
                        (local.get $l8)))))
                (loop $L10
                  (local.set $l8
                    (i32.const 0))
                  (local.set $l6
                    (i32.const 0))
                  (block $B11
                    (br_if $B11
                      (i32.lt_u
                        (local.tee $l12
                          (i32.add
                            (local.get $l7)
                            (i32.const -1)))
                        (i32.const 3)))
                    (local.set $l9
                      (i32.add
                        (local.get $l11)
                        (i32.const 28)))
                    (local.set $l5
                      (i32.and
                        (local.get $l7)
                        (i32.const -4)))
                    (local.set $l8
                      (i32.const 0))
                    (local.set $l6
                      (i32.const 0))
                    (loop $L12
                      (local.set $l8
                        (i32.add
                          (i32.load
                            (local.get $l9))
                          (i32.add
                            (i32.load
                              (i32.add
                                (local.get $l9)
                                (i32.const -8)))
                            (i32.add
                              (i32.load
                                (i32.add
                                  (local.get $l9)
                                  (i32.const -16)))
                              (i32.add
                                (i32.load
                                  (i32.add
                                    (local.get $l9)
                                    (i32.const -24)))
                                (local.get $l8))))))
                      (local.set $l9
                        (i32.add
                          (local.get $l9)
                          (i32.const 32)))
                      (br_if $L12
                        (i32.ne
                          (local.get $l5)
                          (local.tee $l6
                            (i32.add
                              (local.get $l6)
                              (i32.const 4)))))))
                  (block $B13
                    (br_if $B13
                      (i32.eqz
                        (local.tee $l5
                          (i32.and
                            (local.get $l7)
                            (i32.const 3)))))
                    (local.set $l9
                      (i32.add
                        (i32.add
                          (local.get $l11)
                          (i32.shl
                            (local.get $l6)
                            (i32.const 3)))
                        (i32.const 4)))
                    (loop $L14
                      (local.set $l8
                        (i32.add
                          (i32.load
                            (local.get $l9))
                          (local.get $l8)))
                      (local.set $l9
                        (i32.add
                          (local.get $l9)
                          (i32.const 8)))
                      (br_if $L14
                        (local.tee $l5
                          (i32.add
                            (local.get $l5)
                            (i32.const -1))))))
                  (block $B15
                    (br_if $B15
                      (i32.ge_u
                        (i32.sub
                          (i32.load offset=4
                            (local.get $p1))
                          (local.tee $l9
                            (i32.load offset=8
                              (local.get $p1))))
                        (local.get $l8)))
                    (call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17hdfa9348b6ca399abE
                      (local.get $p1)
                      (local.get $l9)
                      (local.get $l8))
                    (local.set $l9
                      (i32.load offset=8
                        (local.get $p1))))
                  (local.set $p3
                    (i32.add
                      (local.get $l11)
                      (local.tee $p2
                        (i32.shl
                          (local.get $l7)
                          (i32.const 3)))))
                  (local.set $l5
                    (local.get $l11))
                  (loop $L16
                    (local.set $l10
                      (i32.load
                        (local.get $l5)))
                    (block $B17
                      (br_if $B17
                        (i32.ge_u
                          (i32.sub
                            (i32.load offset=4
                              (local.get $p1))
                            (local.get $l9))
                          (local.tee $l6
                            (i32.load
                              (i32.add
                                (local.get $l5)
                                (i32.const 4))))))
                      (call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17hdfa9348b6ca399abE
                        (local.get $p1)
                        (local.get $l9)
                        (local.get $l6))
                      (local.set $l9
                        (i32.load offset=8
                          (local.get $p1))))
                    (drop
                      (call $memcpy
                        (i32.add
                          (i32.load
                            (local.get $p1))
                          (local.get $l9))
                        (local.get $l10)
                        (local.get $l6)))
                    (i32.store offset=8
                      (local.get $p1)
                      (local.tee $l9
                        (i32.add
                          (local.get $l9)
                          (local.get $l6))))
                    (br_if $L16
                      (i32.ne
                        (local.tee $l5
                          (i32.add
                            (local.get $l5)
                            (i32.const 8)))
                        (local.get $p3))))
                  (block $B18
                    (br_if $B18
                      (local.get $l8))
                    (i32.store offset=4
                      (local.get $p0)
                      (i32.const 1050752))
                    (i32.store8
                      (local.get $p0)
                      (i32.const 2))
                    (br $B0))
                  (local.set $l9
                    (i32.add
                      (local.get $l11)
                      (i32.const 4)))
                  (local.set $l10
                    (i32.add
                      (i32.and
                        (local.get $l12)
                        (i32.const 536870911))
                      (i32.const 1)))
                  (local.set $l5
                    (i32.const 0))
                  (block $B19
                    (loop $L20
                      (br_if $B19
                        (i32.lt_u
                          (local.get $l8)
                          (local.tee $l6
                            (i32.load
                              (local.get $l9)))))
                      (local.set $l9
                        (i32.add
                          (local.get $l9)
                          (i32.const 8)))
                      (local.set $l5
                        (i32.add
                          (local.get $l5)
                          (i32.const 1)))
                      (local.set $l8
                        (i32.sub
                          (local.get $l8)
                          (local.get $l6)))
                      (br_if $L20
                        (local.tee $p2
                          (i32.add
                            (local.get $p2)
                            (i32.const -8)))))
                    (local.set $l5
                      (local.get $l10)))
                  (br_if $B4
                    (i32.lt_u
                      (local.get $l7)
                      (local.get $l5)))
                  (local.set $l9
                    (i32.add
                      (local.get $l11)
                      (local.tee $l6
                        (i32.shl
                          (local.get $l5)
                          (i32.const 3)))))
                  (block $B21
                    (block $B22
                      (br_if $B22
                        (i32.ne
                          (local.get $l7)
                          (local.get $l5)))
                      (br_if $B21
                        (i32.eqz
                          (local.get $l8)))
                      (i64.store align=4
                        (i32.add
                          (local.get $l4)
                          (i32.const 20))
                        (i64.const 0))
                      (i32.store offset=12
                        (local.get $l4)
                        (i32.const 1))
                      (i32.store offset=8
                        (local.get $l4)
                        (i32.const 1050608))
                      (i32.store offset=16
                        (local.get $l4)
                        (i32.const 1048732))
                      (call $_ZN4core9panicking9panic_fmt17h2a1cf3beec13dfc3E
                        (i32.add
                          (local.get $l4)
                          (i32.const 8))
                        (i32.const 1050616))
                      (unreachable))
                    (br_if $B3
                      (i32.lt_u
                        (local.tee $l10
                          (i32.load offset=4
                            (local.tee $l6
                              (i32.add
                                (local.get $l11)
                                (local.get $l6)))))
                        (local.get $l8)))
                    (i32.store
                      (i32.add
                        (local.get $l6)
                        (i32.const 4))
                      (i32.sub
                        (local.get $l10)
                        (local.get $l8)))
                    (i32.store
                      (local.get $l9)
                      (i32.add
                        (i32.load
                          (local.get $l9))
                        (local.get $l8))))
                  (local.set $l11
                    (local.get $l9))
                  (br_if $L10
                    (local.tee $l7
                      (i32.sub
                        (local.get $l7)
                        (local.get $l5))))))
              (i32.store8
                (local.get $p0)
                (i32.const 4))
              (br $B0))
            (call $_ZN4core5slice5index26slice_start_index_len_fail17he7b2fe2a6da776eaE
              (local.get $l5)
              (local.get $l7)
              (i32.const 1050552))
            (unreachable))
          (i64.store align=4
            (i32.add
              (local.get $l4)
              (i32.const 20))
            (i64.const 0))
          (i32.store offset=12
            (local.get $l4)
            (i32.const 1))
          (i32.store offset=8
            (local.get $l4)
            (i32.const 1050668))
          (i32.store offset=16
            (local.get $l4)
            (i32.const 1048732))
          (call $_ZN4core9panicking9panic_fmt17h2a1cf3beec13dfc3E
            (i32.add
              (local.get $l4)
              (i32.const 8))
            (i32.const 1050708))
          (unreachable))
        (i64.store align=4
          (i32.add
            (local.get $l4)
            (i32.const 20))
          (i64.const 0))
        (i32.store offset=12
          (local.get $l4)
          (i32.const 1))
        (i32.store offset=8
          (local.get $l4)
          (i32.const 1050668))
        (i32.store offset=16
          (local.get $l4)
          (i32.const 1048732))
        (call $_ZN4core9panicking9panic_fmt17h2a1cf3beec13dfc3E
          (i32.add
            (local.get $l4)
            (i32.const 8))
          (i32.const 1050708))
        (unreachable))
      (call $_ZN4core5slice5index26slice_start_index_len_fail17he7b2fe2a6da776eaE
        (local.get $l8)
        (local.get $p3)
        (i32.const 1050552))
      (unreachable))
    (global.set $__stack_pointer
      (i32.add
        (local.get $l4)
        (i32.const 32))))
  (func $_ZN3std2io5Write9write_fmt17h1a4225950d08dbefE (type $t5) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32) (local $l4 i32)
    (global.set $__stack_pointer
      (local.tee $l3
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 16))))
    (i32.store8
      (local.get $l3)
      (i32.const 4))
    (i32.store offset=8
      (local.get $l3)
      (local.get $p1))
    (block $B0
      (block $B1
        (br_if $B1
          (i32.eqz
            (call $_ZN4core3fmt5write17had8ef63591bfa1d0E
              (local.get $l3)
              (i32.const 1049084)
              (local.get $p2))))
        (block $B2
          (br_if $B2
            (i32.ne
              (i32.load8_u
                (local.get $l3))
              (i32.const 4)))
          (i32.store offset=4
            (local.get $p0)
            (i32.const 1050796))
          (i32.store8
            (local.get $p0)
            (i32.const 2))
          (br $B0))
        (i64.store align=4
          (local.get $p0)
          (i64.load
            (local.get $l3)))
        (br $B0))
      (i32.store8
        (local.get $p0)
        (i32.const 4))
      (local.set $p1
        (i32.load offset=4
          (local.get $l3)))
      (block $B3
        (br_if $B3
          (i32.gt_u
            (local.tee $p0
              (i32.load8_u
                (local.get $l3)))
            (i32.const 4)))
        (br_if $B0
          (i32.ne
            (local.get $p0)
            (i32.const 3))))
      (call_indirect $T0 (type $t1)
        (local.tee $p2
          (i32.load
            (local.get $p1)))
        (i32.load
          (local.tee $p0
            (i32.load
              (i32.add
                (local.get $p1)
                (i32.const 4))))))
      (block $B4
        (br_if $B4
          (i32.eqz
            (local.tee $l4
              (i32.load offset=4
                (local.get $p0)))))
        (call $__rust_dealloc
          (local.get $p2)
          (local.get $l4)
          (i32.load offset=8
            (local.get $p0))))
      (call $__rust_dealloc
        (local.get $p1)
        (i32.const 12)
        (i32.const 4)))
    (global.set $__stack_pointer
      (i32.add
        (local.get $l3)
        (i32.const 16))))
  (func $_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h80dcf8d7aa07b140E (type $t6) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32)
    (block $B0
      (br_if $B0
        (i32.ge_u
          (i32.sub
            (i32.load offset=4
              (local.tee $p0
                (i32.load offset=8
                  (local.get $p0))))
            (local.tee $l3
              (i32.load offset=8
                (local.get $p0))))
          (local.get $p2)))
      (call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17hdfa9348b6ca399abE
        (local.get $p0)
        (local.get $l3)
        (local.get $p2))
      (local.set $l3
        (i32.load offset=8
          (local.get $p0))))
    (drop
      (call $memcpy
        (i32.add
          (i32.load
            (local.get $p0))
          (local.get $l3))
        (local.get $p1)
        (local.get $p2)))
    (i32.store offset=8
      (local.get $p0)
      (i32.add
        (local.get $l3)
        (local.get $p2)))
    (i32.const 0))
  (func $_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h89e956ed77fdd1aaE (type $t6) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i64) (local $l6 i32) (local $l7 i32)
    (global.set $__stack_pointer
      (local.tee $l3
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 16))))
    (call $_ZN61_$LT$std..io..stdio..StdoutLock$u20$as$u20$std..io..Write$GT$9write_all17h0427e7875b82564eE
      (i32.add
        (local.get $l3)
        (i32.const 8))
      (i32.load offset=8
        (local.get $p0))
      (local.get $p1)
      (local.get $p2))
    (block $B0
      (br_if $B0
        (i32.eq
          (local.tee $p2
            (i32.load8_u offset=8
              (local.get $l3)))
          (i32.const 4)))
      (local.set $l4
        (i32.load offset=4
          (local.get $p0)))
      (local.set $l5
        (i64.load offset=8
          (local.get $l3)))
      (block $B1
        (block $B2
          (br_if $B2
            (i32.gt_u
              (local.tee $p1
                (i32.load8_u
                  (local.get $p0)))
              (i32.const 4)))
          (br_if $B1
            (i32.ne
              (local.get $p1)
              (i32.const 3))))
        (call_indirect $T0 (type $t1)
          (local.tee $l6
            (i32.load
              (local.get $l4)))
          (i32.load
            (local.tee $p1
              (i32.load
                (i32.add
                  (local.get $l4)
                  (i32.const 4))))))
        (block $B3
          (br_if $B3
            (i32.eqz
              (local.tee $l7
                (i32.load offset=4
                  (local.get $p1)))))
          (call $__rust_dealloc
            (local.get $l6)
            (local.get $l7)
            (i32.load offset=8
              (local.get $p1))))
        (call $__rust_dealloc
          (local.get $l4)
          (i32.const 12)
          (i32.const 4)))
      (i64.store align=4
        (local.get $p0)
        (local.get $l5)))
    (global.set $__stack_pointer
      (i32.add
        (local.get $l3)
        (i32.const 16)))
    (i32.ne
      (local.get $p2)
      (i32.const 4)))
  (func $_ZN3std5panic19get_backtrace_style17hb4f64c055235d76aE (type $t8) (result i32)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32)
    (global.set $__stack_pointer
      (local.tee $l0
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 16))))
    (local.set $l1
      (i32.const 0))
    (block $B0
      (block $B1
        (block $B2
          (block $B3
            (block $B4
              (br_table $B1 $B0 $B2 $B3 $B4
                (i32.load offset=1056052
                  (i32.const 0))))
            (call $_ZN4core9panicking5panic17hfe17c7db57004300E
              (i32.const 1048912)
              (i32.const 40)
              (i32.const 1050832))
            (unreachable))
          (local.set $l1
            (i32.const 2))
          (br $B0))
        (local.set $l1
          (i32.const 1))
        (br $B0))
      (call $_ZN3std3env7_var_os17h7a23a8b80c477f63E
        (i32.add
          (local.get $l0)
          (i32.const 4))
        (i32.const 1049408)
        (i32.const 14))
      (block $B5
        (block $B6
          (br_if $B6
            (i32.eqz
              (local.tee $l2
                (i32.load offset=4
                  (local.get $l0)))))
          (local.set $l1
            (i32.const 0))
          (local.set $l3
            (i32.load offset=8
              (local.get $l0)))
          (block $B7
            (block $B8
              (block $B9
                (br_table $B9 $B7 $B7 $B8 $B7
                  (i32.add
                    (i32.load offset=12
                      (local.get $l0))
                    (i32.const -1))))
              (local.set $l1
                (i32.shl
                  (i32.eq
                    (i32.load8_u
                      (local.get $l2))
                    (i32.const 48))
                  (i32.const 1)))
              (br $B7))
            (local.set $l1
              (i32.eqz
                (call $memcmp
                  (local.get $l2)
                  (i32.const 1050848)
                  (i32.const 4)))))
          (block $B10
            (br_if $B10
              (i32.eqz
                (local.get $l3)))
            (call $__rust_dealloc
              (local.get $l2)
              (local.get $l3)
              (i32.const 1)))
          (local.set $l2
            (i32.add
              (local.get $l1)
              (i32.const 1)))
          (br $B5))
        (local.set $l2
          (i32.const 3))
        (local.set $l1
          (i32.const 2)))
      (i32.store offset=1056052
        (i32.const 0)
        (local.get $l2)))
    (global.set $__stack_pointer
      (i32.add
        (local.get $l0)
        (i32.const 16)))
    (local.get $l1))
  (func $_ZN3std7process5abort17hdff58b7f5dc9bfc1E (type $t0)
    (call $_ZN3std3sys4wasi14abort_internal17h13cc9b6d35378fc3E)
    (unreachable))
  (func $_ZN3std4sync9once_lock17OnceLock$LT$T$GT$10initialize17h79c3a2c73de1ed2eE (type $t1) (param $p0 i32)
    (local $l1 i32)
    (global.set $__stack_pointer
      (local.tee $l1
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 16))))
    (block $B0
      (br_if $B0
        (i32.eq
          (i32.load8_u offset=1056048
            (i32.const 0))
          (i32.const 3)))
      (i32.store offset=4
        (local.get $l1)
        (i32.const 1056016))
      (i32.store
        (local.get $l1)
        (local.get $p0))
      (i32.store offset=8
        (local.get $l1)
        (i32.add
          (local.get $l1)
          (i32.const 15)))
      (call $_ZN3std3sys4wasi4once4Once4call17h67fb80147c3b4276E
        (local.get $l1)))
    (global.set $__stack_pointer
      (i32.add
        (local.get $l1)
        (i32.const 16))))
  (func $_ZN3std3sys4wasi4once4Once4call17h67fb80147c3b4276E (type $t1) (param $p0 i32)
    (local $l1 i32) (local $l2 i32)
    (global.set $__stack_pointer
      (local.tee $l1
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 32))))
    (block $B0
      (block $B1
        (block $B2
          (block $B3
            (br_if $B3
              (i32.lt_u
                (local.tee $l2
                  (i32.load8_u offset=1056048
                    (i32.const 0)))
                (i32.const 2)))
            (br_table $B0 $B2 $B0
              (i32.add
                (local.get $l2)
                (i32.const -2))))
          (i32.store8 offset=1056048
            (i32.const 0)
            (i32.const 2))
          (local.set $l2
            (i32.load
              (local.get $p0)))
          (i32.store
            (local.get $p0)
            (i32.const 0))
          (br_if $B1
            (i32.eqz
              (local.get $l2)))
          (local.set $p0
            (i32.load offset=4
              (local.get $p0)))
          (i32.store8
            (local.get $l2)
            (i32.const 1))
          (i64.store offset=16 align=4
            (local.get $p0)
            (i64.const 0))
          (i64.store offset=8 align=4
            (local.get $p0)
            (i64.const 4294967296))
          (i64.store align=4
            (local.get $p0)
            (i64.const 0))
          (i32.store8
            (i32.add
              (local.get $p0)
              (i32.const 24))
            (i32.const 0))
          (i32.store8 offset=28
            (local.get $p0)
            (i32.const 0))
          (i32.store8 offset=1056048
            (i32.const 0)
            (i32.const 3)))
        (global.set $__stack_pointer
          (i32.add
            (local.get $l1)
            (i32.const 32)))
        (return))
      (call $_ZN4core9panicking5panic17hfe17c7db57004300E
        (i32.const 1048732)
        (i32.const 43)
        (i32.const 1051024))
      (unreachable))
    (i64.store align=4
      (i32.add
        (local.get $l1)
        (i32.const 20))
      (i64.const 0))
    (i32.store offset=12
      (local.get $l1)
      (i32.const 1))
    (i32.store offset=8
      (local.get $l1)
      (i32.const 1052512))
    (i32.store offset=16
      (local.get $l1)
      (i32.const 1048732))
    (call $_ZN4core9panicking9panic_fmt17h2a1cf3beec13dfc3E
      (i32.add
        (local.get $l1)
        (i32.const 8))
      (i32.const 1051008))
    (unreachable))
  (func $_ZN3std3sys4wasi4once4Once4call17h2e73d9104000ff7eE (type $t1) (param $p0 i32)
    (local $l1 i32) (local $l2 i32)
    (global.set $__stack_pointer
      (local.tee $l1
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 32))))
    (block $B0
      (block $B1
        (block $B2
          (block $B3
            (block $B4
              (br_if $B4
                (i32.lt_u
                  (local.tee $l2
                    (i32.load8_u offset=1056048
                      (i32.const 0)))
                  (i32.const 2)))
              (br_table $B0 $B3 $B0
                (i32.add
                  (local.get $l2)
                  (i32.const -2))))
            (i32.store8 offset=1056048
              (i32.const 0)
              (i32.const 2))
            (local.set $l2
              (i32.load
                (local.get $p0)))
            (i32.store
              (local.get $p0)
              (i32.const 0))
            (br_if $B2
              (i32.eqz
                (local.get $l2)))
            (drop
              (i32.load8_u offset=1056013
                (i32.const 0)))
            (br_if $B1
              (i32.eqz
                (local.tee $p0
                  (call $__rust_alloc
                    (i32.const 1024)
                    (i32.const 1)))))
            (i32.store8 offset=28
              (local.get $l2)
              (i32.const 0))
            (i32.store8 offset=24
              (local.get $l2)
              (i32.const 0))
            (i64.store offset=16 align=4
              (local.get $l2)
              (i64.const 1024))
            (i32.store offset=12
              (local.get $l2)
              (local.get $p0))
            (i32.store offset=8
              (local.get $l2)
              (i32.const 0))
            (i64.store align=4
              (local.get $l2)
              (i64.const 0))
            (i32.store8 offset=1056048
              (i32.const 0)
              (i32.const 3)))
          (global.set $__stack_pointer
            (i32.add
              (local.get $l1)
              (i32.const 32)))
          (return))
        (call $_ZN4core9panicking5panic17hfe17c7db57004300E
          (i32.const 1048732)
          (i32.const 43)
          (i32.const 1051024))
        (unreachable))
      (call $_ZN5alloc5alloc18handle_alloc_error17haf16dbf93a34ba25E
        (i32.const 1)
        (i32.const 1024))
      (unreachable))
    (i64.store align=4
      (i32.add
        (local.get $l1)
        (i32.const 20))
      (i64.const 0))
    (i32.store offset=12
      (local.get $l1)
      (i32.const 1))
    (i32.store offset=8
      (local.get $l1)
      (i32.const 1052512))
    (i32.store offset=16
      (local.get $l1)
      (i32.const 1048732))
    (call $_ZN4core9panicking9panic_fmt17h2a1cf3beec13dfc3E
      (i32.add
        (local.get $l1)
        (i32.const 8))
      (i32.const 1051008))
    (unreachable))
  (func $_ZN3std10sys_common9backtrace5print17h6ce3d472a2bb00e5E (type $t9) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (local $l4 i32) (local $l5 i32) (local $l6 i32)
    (global.set $__stack_pointer
      (local.tee $l4
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 48))))
    (local.set $l5
      (i32.load8_u offset=1056056
        (i32.const 0)))
    (local.set $l6
      (i32.const 1))
    (i32.store8 offset=1056056
      (i32.const 0)
      (i32.const 1))
    (i32.store8 offset=36
      (local.get $l4)
      (local.get $l5))
    (block $B0
      (br_if $B0
        (local.get $l5))
      (block $B1
        (br_if $B1
          (i32.eqz
            (i32.and
              (i32.load offset=1056080
                (i32.const 0))
              (i32.const 2147483647))))
        (local.set $l6
          (call $_ZN3std9panicking11panic_count17is_zero_slow_path17hcd87a035896974dbE)))
      (local.set $l5
        (i32.load
          (i32.add
            (local.get $p2)
            (i32.const 36))))
      (i64.store align=4
        (i32.add
          (local.get $l4)
          (i32.const 24))
        (i64.const 1))
      (i32.store offset=16
        (local.get $l4)
        (i32.const 1))
      (i32.store offset=12
        (local.get $l4)
        (i32.const 1049512))
      (i32.store offset=40
        (local.get $l4)
        (i32.const 10))
      (i32.store8 offset=47
        (local.get $l4)
        (local.get $p3))
      (i32.store offset=20
        (local.get $l4)
        (i32.add
          (local.get $l4)
          (i32.const 36)))
      (i32.store offset=36
        (local.get $l4)
        (i32.add
          (local.get $l4)
          (i32.const 47)))
      (call_indirect $T0 (type $t5)
        (local.get $p0)
        (local.get $p1)
        (i32.add
          (local.get $l4)
          (i32.const 12))
        (local.get $l5))
      (block $B2
        (br_if $B2
          (i32.eqz
            (local.get $l6)))
        (br_if $B2
          (i32.eqz
            (i32.and
              (i32.load offset=1056080
                (i32.const 0))
              (i32.const 2147483647))))
        (br_if $B2
          (call $_ZN3std9panicking11panic_count17is_zero_slow_path17hcd87a035896974dbE))
        (i32.store8 offset=1056057
          (i32.const 0)
          (i32.const 1)))
      (i32.store8 offset=1056056
        (i32.const 0)
        (i32.const 0))
      (global.set $__stack_pointer
        (i32.add
          (local.get $l4)
          (i32.const 48)))
      (return))
    (i64.store offset=24 align=4
      (local.get $l4)
      (i64.const 0))
    (i32.store offset=20
      (local.get $l4)
      (i32.const 1048732))
    (i32.store offset=16
      (local.get $l4)
      (i32.const 1))
    (i32.store offset=12
      (local.get $l4)
      (i32.const 1050884))
    (call $_ZN4core9panicking13assert_failed17h1e3e261a1896ce28E
      (i32.add
        (local.get $l4)
        (i32.const 36))
      (i32.add
        (local.get $l4)
        (i32.const 12)))
    (unreachable))
  (func $_ZN91_$LT$std..sys_common..backtrace.._print..DisplayBacktrace$u20$as$u20$core..fmt..Display$GT$3fmt17h4fb833ea5e1599c3E (type $t4) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i64) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32)
    (global.set $__stack_pointer
      (local.tee $l2
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 32))))
    (local.set $l3
      (i32.load8_u
        (local.get $p0)))
    (call $_ZN3std3env11current_dir17h627b822d4b56f138E
      (i32.add
        (local.get $l2)
        (i32.const 8)))
    (local.set $l4
      (i64.load offset=12 align=4
        (local.get $l2)))
    (block $B0
      (br_if $B0
        (local.tee $p0
          (i32.load offset=8
            (local.get $l2))))
      (br_if $B0
        (i64.ne
          (i64.and
            (local.get $l4)
            (i64.const 255))
          (i64.const 3)))
      (call_indirect $T0 (type $t1)
        (local.tee $l6
          (i32.load
            (local.tee $l5
              (i32.wrap_i64
                (i64.shr_u
                  (local.get $l4)
                  (i64.const 32))))))
        (i32.load
          (local.tee $l7
            (i32.load
              (i32.add
                (local.get $l5)
                (i32.const 4))))))
      (block $B1
        (br_if $B1
          (i32.eqz
            (local.tee $l8
              (i32.load offset=4
                (local.get $l7)))))
        (call $__rust_dealloc
          (local.get $l6)
          (local.get $l8)
          (i32.load offset=8
            (local.get $l7))))
      (call $__rust_dealloc
        (local.get $l5)
        (i32.const 12)
        (i32.const 4)))
    (i64.store align=4
      (i32.add
        (local.get $l2)
        (i32.const 20))
      (i64.const 0))
    (local.set $l5
      (i32.const 1))
    (i32.store offset=12
      (local.get $l2)
      (i32.const 1))
    (i32.store offset=8
      (local.get $l2)
      (i32.const 1051212))
    (i32.store offset=16
      (local.get $l2)
      (i32.const 1048732))
    (block $B2
      (block $B3
        (block $B4
          (br_if $B4
            (call $_ZN4core3fmt9Formatter9write_fmt17hd3a20ec36a39f80cE
              (local.get $p1)
              (i32.add
                (local.get $l2)
                (i32.const 8))))
          (block $B5
            (br_if $B5
              (i32.and
                (local.get $l3)
                (i32.const 255)))
            (i64.store align=4
              (i32.add
                (local.get $l2)
                (i32.const 20))
              (i64.const 0))
            (i32.store offset=12
              (local.get $l2)
              (i32.const 1))
            (i32.store offset=8
              (local.get $l2)
              (i32.const 1051308))
            (i32.store offset=16
              (local.get $l2)
              (i32.const 1048732))
            (br_if $B4
              (call $_ZN4core3fmt9Formatter9write_fmt17hd3a20ec36a39f80cE
                (local.get $p1)
                (i32.add
                  (local.get $l2)
                  (i32.const 8)))))
          (local.set $l5
            (i32.const 0))
          (br_if $B2
            (i32.eqz
              (local.get $p0)))
          (br $B3))
        (br_if $B2
          (i32.eqz
            (local.get $p0))))
      (br_if $B2
        (i32.eqz
          (local.tee $p1
            (i32.wrap_i64
              (local.get $l4)))))
      (call $__rust_dealloc
        (local.get $p0)
        (local.get $p1)
        (i32.const 1)))
    (global.set $__stack_pointer
      (i32.add
        (local.get $l2)
        (i32.const 32)))
    (local.get $l5))
  (func $_ZN3std10sys_common9backtrace26__rust_end_short_backtrace17hd7b53dba62f7f0aaE (type $t1) (param $p0 i32)
    (call $_ZN3std9panicking19begin_panic_handler28_$u7b$$u7b$closure$u7d$$u7d$17h322b08995dd5f5ccE
      (local.get $p0))
    (unreachable))
  (func $_ZN3std9panicking19begin_panic_handler28_$u7b$$u7b$closure$u7d$$u7d$17h322b08995dd5f5ccE (type $t1) (param $p0 i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32)
    (global.set $__stack_pointer
      (local.tee $l1
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 16))))
    (local.set $l3
      (i32.load
        (i32.add
          (local.tee $l2
            (i32.load
              (local.get $p0)))
          (i32.const 12))))
    (block $B0
      (block $B1
        (block $B2
          (block $B3
            (br_table $B3 $B2 $B0
              (i32.load offset=4
                (local.get $l2))))
          (br_if $B0
            (local.get $l3))
          (local.set $l2
            (i32.const 1048732))
          (local.set $l3
            (i32.const 0))
          (br $B1))
        (br_if $B0
          (local.get $l3))
        (local.set $l3
          (i32.load offset=4
            (local.tee $l2
              (i32.load
                (local.get $l2)))))
        (local.set $l2
          (i32.load
            (local.get $l2))))
      (i32.store offset=4
        (local.get $l1)
        (local.get $l3))
      (i32.store
        (local.get $l1)
        (local.get $l2))
      (call $_ZN3std9panicking20rust_panic_with_hook17h01fa6d9286535f9cE
        (local.get $l1)
        (i32.const 1051924)
        (call $_ZN4core5panic10panic_info9PanicInfo7message17hd9078e78509cb0c8E
          (local.tee $l2
            (i32.load offset=4
              (local.get $p0))))
        (i32.load offset=8
          (local.get $p0))
        (call $_ZN4core5panic10panic_info9PanicInfo10can_unwind17h942bbac4bd6b8273E
          (local.get $l2))
        (i32.load8_u offset=17
          (local.get $l2)))
      (unreachable))
    (i32.store offset=4
      (local.get $l1)
      (i32.const 0))
    (i32.store
      (local.get $l1)
      (local.get $l2))
    (call $_ZN3std9panicking20rust_panic_with_hook17h01fa6d9286535f9cE
      (local.get $l1)
      (i32.const 1051944)
      (call $_ZN4core5panic10panic_info9PanicInfo7message17hd9078e78509cb0c8E
        (local.tee $l2
          (i32.load offset=4
            (local.get $p0))))
      (i32.load offset=8
        (local.get $p0))
      (call $_ZN4core5panic10panic_info9PanicInfo10can_unwind17h942bbac4bd6b8273E
        (local.get $l2))
      (i32.load8_u offset=17
        (local.get $l2)))
    (unreachable))
  (func $_ZN3std5alloc24default_alloc_error_hook17hd357644e8c327da6E (type $t2) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32)
    (global.set $__stack_pointer
      (local.tee $l2
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 64))))
    (block $B0
      (br_if $B0
        (i32.load8_u offset=1056012
          (i32.const 0)))
      (i64.store align=4
        (i32.add
          (local.get $l2)
          (i32.const 24))
        (i64.const 1))
      (i32.store offset=16
        (local.get $l2)
        (i32.const 2))
      (i32.store offset=12
        (local.get $l2)
        (i32.const 1051480))
      (i32.store offset=40
        (local.get $l2)
        (i32.const 11))
      (i32.store offset=44
        (local.get $l2)
        (local.get $p1))
      (i32.store offset=20
        (local.get $l2)
        (i32.add
          (local.get $l2)
          (i32.const 36)))
      (i32.store offset=36
        (local.get $l2)
        (i32.add
          (local.get $l2)
          (i32.const 44)))
      (i32.store8 offset=48
        (local.get $l2)
        (i32.const 4))
      (i32.store offset=56
        (local.get $l2)
        (i32.add
          (local.get $l2)
          (i32.const 63)))
      (local.set $l3
        (call $_ZN4core3fmt5write17had8ef63591bfa1d0E
          (i32.add
            (local.get $l2)
            (i32.const 48))
          (i32.const 1049156)
          (i32.add
            (local.get $l2)
            (i32.const 12))))
      (local.set $p1
        (i32.load8_u offset=48
          (local.get $l2)))
      (block $B1
        (block $B2
          (br_if $B2
            (i32.eqz
              (local.get $l3)))
          (br_if $B1
            (i32.eq
              (local.get $p1)
              (i32.const 4)))
          (local.set $l3
            (i32.load offset=52
              (local.get $l2)))
          (block $B3
            (br_if $B3
              (i32.gt_u
                (local.tee $p1
                  (i32.load8_u offset=48
                    (local.get $l2)))
                (i32.const 4)))
            (br_if $B1
              (i32.ne
                (local.get $p1)
                (i32.const 3))))
          (call_indirect $T0 (type $t1)
            (local.tee $l4
              (i32.load
                (local.get $l3)))
            (i32.load
              (local.tee $p1
                (i32.load
                  (i32.add
                    (local.get $l3)
                    (i32.const 4))))))
          (block $B4
            (br_if $B4
              (i32.eqz
                (local.tee $l5
                  (i32.load offset=4
                    (local.get $p1)))))
            (call $__rust_dealloc
              (local.get $l4)
              (local.get $l5)
              (i32.load offset=8
                (local.get $p1))))
          (call $__rust_dealloc
            (local.get $l3)
            (i32.const 12)
            (i32.const 4))
          (br $B1))
        (local.set $l3
          (i32.load offset=52
            (local.get $l2)))
        (block $B5
          (br_if $B5
            (i32.gt_u
              (local.get $p1)
              (i32.const 4)))
          (br_if $B1
            (i32.ne
              (local.get $p1)
              (i32.const 3))))
        (call_indirect $T0 (type $t1)
          (local.tee $l4
            (i32.load
              (local.get $l3)))
          (i32.load
            (local.tee $p1
              (i32.load
                (i32.add
                  (local.get $l3)
                  (i32.const 4))))))
        (block $B6
          (br_if $B6
            (i32.eqz
              (local.tee $l5
                (i32.load offset=4
                  (local.get $p1)))))
          (call $__rust_dealloc
            (local.get $l4)
            (local.get $l5)
            (i32.load offset=8
              (local.get $p1))))
        (call $__rust_dealloc
          (local.get $l3)
          (i32.const 12)
          (i32.const 4)))
      (global.set $__stack_pointer
        (i32.add
          (local.get $l2)
          (i32.const 64)))
      (return))
    (i64.store align=4
      (i32.add
        (local.get $l2)
        (i32.const 24))
      (i64.const 1))
    (i32.store offset=16
      (local.get $l2)
      (i32.const 2))
    (i32.store offset=12
      (local.get $l2)
      (i32.const 1051512))
    (i32.store offset=52
      (local.get $l2)
      (i32.const 11))
    (i32.store offset=36
      (local.get $l2)
      (local.get $p1))
    (i32.store offset=20
      (local.get $l2)
      (i32.add
        (local.get $l2)
        (i32.const 48)))
    (i32.store offset=48
      (local.get $l2)
      (i32.add
        (local.get $l2)
        (i32.const 36)))
    (call $_ZN4core9panicking9panic_fmt17h2a1cf3beec13dfc3E
      (i32.add
        (local.get $l2)
        (i32.const 12))
      (i32.const 1051552))
    (unreachable))
  (func $__rdl_alloc (type $t4) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32)
    (block $B0
      (block $B1
        (br_if $B1
          (i32.gt_u
            (local.get $p1)
            (i32.const 8)))
        (br_if $B0
          (i32.le_u
            (local.get $p1)
            (local.get $p0))))
      (return
        (call $aligned_alloc
          (local.get $p1)
          (i32.add
            (select
              (i32.sub
                (local.get $p1)
                (local.tee $l2
                  (i32.rem_u
                    (local.get $p0)
                    (local.get $p1))))
              (i32.const 0)
              (local.get $l2))
            (local.get $p0)))))
    (call $malloc
      (local.get $p0)))
  (func $__rdl_dealloc (type $t5) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (call $free
      (local.get $p0)))
  (func $__rdl_realloc (type $t7) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (result i32)
    (local $l4 i32) (local $l5 i32)
    (block $B0
      (block $B1
        (block $B2
          (br_if $B2
            (i32.gt_u
              (local.get $p2)
              (i32.const 8)))
          (br_if $B1
            (i32.le_u
              (local.get $p2)
              (local.get $p3))))
        (local.set $l4
          (i32.const 0))
        (br_if $B0
          (i32.eqz
            (local.tee $p2
              (call $aligned_alloc
                (local.get $p2)
                (i32.add
                  (select
                    (i32.sub
                      (local.get $p2)
                      (local.tee $l5
                        (i32.rem_u
                          (local.get $p3)
                          (local.get $p2))))
                    (i32.const 0)
                    (local.get $l5))
                  (local.get $p3))))))
        (local.set $p2
          (call $memcpy
            (local.get $p2)
            (local.get $p0)
            (select
              (local.get $p1)
              (local.get $p3)
              (i32.lt_u
                (local.get $p1)
                (local.get $p3)))))
        (call $free
          (local.get $p0))
        (return
          (local.get $p2)))
      (local.set $l4
        (call $realloc
          (local.get $p0)
          (local.get $p3))))
    (local.get $l4))
  (func $_ZN3std9panicking12default_hook28_$u7b$$u7b$closure$u7d$$u7d$17hded9af0774972669E (type $t5) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32)
    (global.set $__stack_pointer
      (local.tee $l3
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 64))))
    (i64.store align=4
      (i32.add
        (i32.add
          (local.get $l3)
          (i32.const 16))
        (i32.const 12))
      (i64.const 3))
    (i32.store
      (i32.add
        (local.get $l3)
        (i32.const 60))
      (i32.const 8))
    (i32.store
      (i32.add
        (i32.add
          (local.get $l3)
          (i32.const 40))
        (i32.const 12))
      (i32.const 12))
    (i32.store offset=16
      (local.get $l3)
      (i32.const 1051740))
    (i32.store offset=44
      (local.get $l3)
      (i32.const 8))
    (i32.store offset=56
      (local.get $l3)
      (i32.load offset=8
        (local.get $p0)))
    (i32.store offset=48
      (local.get $l3)
      (i32.load offset=4
        (local.get $p0)))
    (i32.store offset=40
      (local.get $l3)
      (i32.load
        (local.get $p0)))
    (i32.store offset=24
      (local.get $l3)
      (i32.add
        (local.get $l3)
        (i32.const 40)))
    (i32.store offset=20
      (local.get $l3)
      (i32.const 4))
    (call_indirect $T0 (type $t5)
      (i32.add
        (local.get $l3)
        (i32.const 8))
      (local.get $p1)
      (i32.add
        (local.get $l3)
        (i32.const 16))
      (local.tee $l4
        (i32.load offset=36
          (local.get $p2))))
    (local.set $l5
      (i32.load offset=12
        (local.get $l3)))
    (block $B0
      (block $B1
        (br_if $B1
          (i32.gt_u
            (local.tee $l6
              (i32.load8_u offset=8
                (local.get $l3)))
            (i32.const 4)))
        (br_if $B0
          (i32.ne
            (local.get $l6)
            (i32.const 3))))
      (call_indirect $T0 (type $t1)
        (local.tee $l7
          (i32.load
            (local.get $l5)))
        (i32.load
          (local.tee $l6
            (i32.load
              (i32.add
                (local.get $l5)
                (i32.const 4))))))
      (block $B2
        (br_if $B2
          (i32.eqz
            (local.tee $l8
              (i32.load offset=4
                (local.get $l6)))))
        (call $__rust_dealloc
          (local.get $l7)
          (local.get $l8)
          (i32.load offset=8
            (local.get $l6))))
      (call $__rust_dealloc
        (local.get $l5)
        (i32.const 12)
        (i32.const 4)))
    (block $B3
      (br_if $B3
        (i32.eq
          (local.tee $p0
            (i32.load8_u
              (i32.load offset=12
                (local.get $p0))))
          (i32.const 3)))
      (block $B4
        (block $B5
          (block $B6
            (br_table $B6 $B5 $B4 $B6
              (local.get $p0)))
          (call $_ZN3std10sys_common9backtrace5print17h6ce3d472a2bb00e5E
            (i32.add
              (local.get $l3)
              (i32.const 40))
            (local.get $p1)
            (local.get $p2)
            (i32.const 0))
          (local.set $p1
            (i32.load offset=44
              (local.get $l3)))
          (block $B7
            (br_if $B7
              (i32.gt_u
                (local.tee $p0
                  (i32.load8_u offset=40
                    (local.get $l3)))
                (i32.const 4)))
            (br_if $B3
              (i32.ne
                (local.get $p0)
                (i32.const 3))))
          (call_indirect $T0 (type $t1)
            (local.tee $p2
              (i32.load
                (local.get $p1)))
            (i32.load
              (local.tee $p0
                (i32.load
                  (i32.add
                    (local.get $p1)
                    (i32.const 4))))))
          (block $B8
            (br_if $B8
              (i32.eqz
                (local.tee $l6
                  (i32.load offset=4
                    (local.get $p0)))))
            (call $__rust_dealloc
              (local.get $p2)
              (local.get $l6)
              (i32.load offset=8
                (local.get $p0))))
          (call $__rust_dealloc
            (local.get $p1)
            (i32.const 12)
            (i32.const 4))
          (br $B3))
        (call $_ZN3std10sys_common9backtrace5print17h6ce3d472a2bb00e5E
          (i32.add
            (local.get $l3)
            (i32.const 40))
          (local.get $p1)
          (local.get $p2)
          (i32.const 1))
        (local.set $p1
          (i32.load offset=44
            (local.get $l3)))
        (block $B9
          (br_if $B9
            (i32.gt_u
              (local.tee $p0
                (i32.load8_u offset=40
                  (local.get $l3)))
              (i32.const 4)))
          (br_if $B3
            (i32.ne
              (local.get $p0)
              (i32.const 3))))
        (call_indirect $T0 (type $t1)
          (local.tee $p2
            (i32.load
              (local.get $p1)))
          (i32.load
            (local.tee $p0
              (i32.load
                (i32.add
                  (local.get $p1)
                  (i32.const 4))))))
        (block $B10
          (br_if $B10
            (i32.eqz
              (local.tee $l6
                (i32.load offset=4
                  (local.get $p0)))))
          (call $__rust_dealloc
            (local.get $p2)
            (local.get $l6)
            (i32.load offset=8
              (local.get $p0))))
        (call $__rust_dealloc
          (local.get $p1)
          (i32.const 12)
          (i32.const 4))
        (br $B3))
      (local.set $p0
        (i32.load8_u offset=1055996
          (i32.const 0)))
      (i32.store8 offset=1055996
        (i32.const 0)
        (i32.const 0))
      (br_if $B3
        (i32.eqz
          (local.get $p0)))
      (i64.store align=4
        (i32.add
          (local.get $l3)
          (i32.const 52))
        (i64.const 0))
      (i32.store offset=44
        (local.get $l3)
        (i32.const 1))
      (i32.store offset=40
        (local.get $l3)
        (i32.const 1051852))
      (i32.store offset=48
        (local.get $l3)
        (i32.const 1048732))
      (call_indirect $T0 (type $t5)
        (i32.add
          (local.get $l3)
          (i32.const 16))
        (local.get $p1)
        (i32.add
          (local.get $l3)
          (i32.const 40))
        (local.get $l4))
      (local.set $p1
        (i32.load offset=20
          (local.get $l3)))
      (block $B11
        (br_if $B11
          (i32.gt_u
            (local.tee $p0
              (i32.load8_u offset=16
                (local.get $l3)))
            (i32.const 4)))
        (br_if $B3
          (i32.ne
            (local.get $p0)
            (i32.const 3))))
      (call_indirect $T0 (type $t1)
        (local.tee $p2
          (i32.load
            (local.get $p1)))
        (i32.load
          (local.tee $p0
            (i32.load
              (i32.add
                (local.get $p1)
                (i32.const 4))))))
      (block $B12
        (br_if $B12
          (i32.eqz
            (local.tee $l6
              (i32.load offset=4
                (local.get $p0)))))
        (call $__rust_dealloc
          (local.get $p2)
          (local.get $l6)
          (i32.load offset=8
            (local.get $p0))))
      (call $__rust_dealloc
        (local.get $p1)
        (i32.const 12)
        (i32.const 4)))
    (global.set $__stack_pointer
      (i32.add
        (local.get $l3)
        (i32.const 64))))
  (func $rust_begin_unwind (type $t1) (param $p0 i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32)
    (global.set $__stack_pointer
      (local.tee $l1
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 16))))
    (block $B0
      (block $B1
        (br_if $B1
          (i32.eqz
            (local.tee $l2
              (call $_ZN4core5panic10panic_info9PanicInfo8location17hc9d8fb23293bf248E
                (local.get $p0)))))
        (br_if $B0
          (i32.eqz
            (local.tee $l3
              (call $_ZN4core5panic10panic_info9PanicInfo7message17hd9078e78509cb0c8E
                (local.get $p0)))))
        (i32.store offset=12
          (local.get $l1)
          (local.get $l2))
        (i32.store offset=8
          (local.get $l1)
          (local.get $p0))
        (i32.store offset=4
          (local.get $l1)
          (local.get $l3))
        (call $_ZN3std10sys_common9backtrace26__rust_end_short_backtrace17hd7b53dba62f7f0aaE
          (i32.add
            (local.get $l1)
            (i32.const 4)))
        (unreachable))
      (call $_ZN4core9panicking5panic17hfe17c7db57004300E
        (i32.const 1048732)
        (i32.const 43)
        (i32.const 1051860))
      (unreachable))
    (call $_ZN4core9panicking5panic17hfe17c7db57004300E
      (i32.const 1048732)
      (i32.const 43)
      (i32.const 1051876))
    (unreachable))
  (func $_ZN102_$LT$std..panicking..begin_panic_handler..FormatStringPayload$u20$as$u20$core..panic..PanicPayload$GT$8take_box17hdd931f59f9f0ae52E (type $t2) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i64)
    (global.set $__stack_pointer
      (local.tee $l2
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 48))))
    (local.set $l3
      (i32.add
        (local.get $p1)
        (i32.const 4)))
    (block $B0
      (br_if $B0
        (i32.load offset=4
          (local.get $p1)))
      (local.set $l4
        (i32.load
          (local.get $p1)))
      (i32.store
        (local.tee $l5
          (i32.add
            (i32.add
              (local.get $l2)
              (i32.const 36))
            (i32.const 8)))
        (i32.const 0))
      (i64.store offset=36 align=4
        (local.get $l2)
        (i64.const 1))
      (drop
        (call $_ZN4core3fmt5write17had8ef63591bfa1d0E
          (i32.add
            (local.get $l2)
            (i32.const 36))
          (i32.const 1049132)
          (local.get $l4)))
      (i32.store
        (i32.add
          (i32.add
            (local.get $l2)
            (i32.const 24))
          (i32.const 8))
        (local.tee $l4
          (i32.load
            (local.get $l5))))
      (i64.store offset=24
        (local.get $l2)
        (local.tee $l6
          (i64.load offset=36 align=4
            (local.get $l2))))
      (i32.store
        (i32.add
          (local.get $l3)
          (i32.const 8))
        (local.get $l4))
      (i64.store align=4
        (local.get $l3)
        (local.get $l6)))
    (i32.store
      (local.tee $l4
        (i32.add
          (i32.add
            (local.get $l2)
            (i32.const 8))
          (i32.const 8)))
      (i32.load
        (i32.add
          (local.get $l3)
          (i32.const 8))))
    (i32.store
      (i32.add
        (local.get $p1)
        (i32.const 12))
      (i32.const 0))
    (local.set $l6
      (i64.load align=4
        (local.get $l3)))
    (i64.store offset=4 align=4
      (local.get $p1)
      (i64.const 1))
    (drop
      (i32.load8_u offset=1056013
        (i32.const 0)))
    (i64.store offset=8
      (local.get $l2)
      (local.get $l6))
    (block $B1
      (br_if $B1
        (local.tee $p1
          (call $__rust_alloc
            (i32.const 12)
            (i32.const 4))))
      (call $_ZN5alloc5alloc18handle_alloc_error17haf16dbf93a34ba25E
        (i32.const 4)
        (i32.const 12))
      (unreachable))
    (i64.store align=4
      (local.get $p1)
      (i64.load offset=8
        (local.get $l2)))
    (i32.store
      (i32.add
        (local.get $p1)
        (i32.const 8))
      (i32.load
        (local.get $l4)))
    (i32.store offset=4
      (local.get $p0)
      (i32.const 1051892))
    (i32.store
      (local.get $p0)
      (local.get $p1))
    (global.set $__stack_pointer
      (i32.add
        (local.get $l2)
        (i32.const 48))))
  (func $_ZN102_$LT$std..panicking..begin_panic_handler..FormatStringPayload$u20$as$u20$core..panic..PanicPayload$GT$3get17h46514f5c8c9e22deE (type $t2) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i64)
    (global.set $__stack_pointer
      (local.tee $l2
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 32))))
    (local.set $l3
      (i32.add
        (local.get $p1)
        (i32.const 4)))
    (block $B0
      (br_if $B0
        (i32.load offset=4
          (local.get $p1)))
      (local.set $p1
        (i32.load
          (local.get $p1)))
      (i32.store
        (local.tee $l4
          (i32.add
            (i32.add
              (local.get $l2)
              (i32.const 20))
            (i32.const 8)))
        (i32.const 0))
      (i64.store offset=20 align=4
        (local.get $l2)
        (i64.const 1))
      (drop
        (call $_ZN4core3fmt5write17had8ef63591bfa1d0E
          (i32.add
            (local.get $l2)
            (i32.const 20))
          (i32.const 1049132)
          (local.get $p1)))
      (i32.store
        (i32.add
          (i32.add
            (local.get $l2)
            (i32.const 8))
          (i32.const 8))
        (local.tee $p1
          (i32.load
            (local.get $l4))))
      (i64.store offset=8
        (local.get $l2)
        (local.tee $l5
          (i64.load offset=20 align=4
            (local.get $l2))))
      (i32.store
        (i32.add
          (local.get $l3)
          (i32.const 8))
        (local.get $p1))
      (i64.store align=4
        (local.get $l3)
        (local.get $l5)))
    (i32.store offset=4
      (local.get $p0)
      (i32.const 1051892))
    (i32.store
      (local.get $p0)
      (local.get $l3))
    (global.set $__stack_pointer
      (i32.add
        (local.get $l2)
        (i32.const 32))))
  (func $_ZN99_$LT$std..panicking..begin_panic_handler..StaticStrPayload$u20$as$u20$core..panic..PanicPayload$GT$8take_box17hf927a7595f477ffeE (type $t2) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32)
    (drop
      (i32.load8_u offset=1056013
        (i32.const 0)))
    (local.set $l2
      (i32.load offset=4
        (local.get $p1)))
    (local.set $l3
      (i32.load
        (local.get $p1)))
    (block $B0
      (br_if $B0
        (local.tee $p1
          (call $__rust_alloc
            (i32.const 8)
            (i32.const 4))))
      (call $_ZN5alloc5alloc18handle_alloc_error17haf16dbf93a34ba25E
        (i32.const 4)
        (i32.const 8))
      (unreachable))
    (i32.store offset=4
      (local.get $p1)
      (local.get $l2))
    (i32.store
      (local.get $p1)
      (local.get $l3))
    (i32.store offset=4
      (local.get $p0)
      (i32.const 1051908))
    (i32.store
      (local.get $p0)
      (local.get $p1)))
  (func $_ZN99_$LT$std..panicking..begin_panic_handler..StaticStrPayload$u20$as$u20$core..panic..PanicPayload$GT$3get17h3a85570d8e84cc1eE (type $t2) (param $p0 i32) (param $p1 i32)
    (i32.store offset=4
      (local.get $p0)
      (i32.const 1051908))
    (i32.store
      (local.get $p0)
      (local.get $p1)))
  (func $_ZN3std9panicking20rust_panic_with_hook17h01fa6d9286535f9cE (type $t11) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32) (param $p5 i32)
    (local $l6 i32) (local $l7 i32)
    (global.set $__stack_pointer
      (local.tee $l6
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 80))))
    (i32.store offset=1056080
      (i32.const 0)
      (i32.add
        (local.tee $l7
          (i32.load offset=1056080
            (i32.const 0)))
        (i32.const 1)))
    (block $B0
      (block $B1
        (block $B2
          (block $B3
            (block $B4
              (block $B5
                (block $B6
                  (br_if $B6
                    (i32.lt_s
                      (local.get $l7)
                      (i32.const 0)))
                  (br_if $B5
                    (i32.load8_u offset=1056100
                      (i32.const 0)))
                  (i32.store8 offset=1056100
                    (i32.const 0)
                    (i32.const 1))
                  (i32.store offset=1056096
                    (i32.const 0)
                    (i32.add
                      (i32.load offset=1056096
                        (i32.const 0))
                      (i32.const 1)))
                  (i32.store8 offset=33
                    (local.get $l6)
                    (local.get $p5))
                  (i32.store8 offset=32
                    (local.get $l6)
                    (local.get $p4))
                  (i32.store offset=28
                    (local.get $l6)
                    (local.get $p3))
                  (i32.store offset=24
                    (local.get $l6)
                    (local.get $p2))
                  (i32.store offset=20
                    (local.get $l6)
                    (i32.const 1051964))
                  (i32.store offset=16
                    (local.get $l6)
                    (i32.const 1048732))
                  (br_if $B1
                    (i32.le_s
                      (local.tee $l7
                        (i32.load offset=1056064
                          (i32.const 0)))
                      (i32.const -1)))
                  (i32.store offset=1056064
                    (i32.const 0)
                    (i32.add
                      (local.get $l7)
                      (i32.const 1)))
                  (local.set $l7
                    (i32.load offset=1056072
                      (i32.const 0)))
                  (call_indirect $T0 (type $t2)
                    (local.get $l6)
                    (local.get $p0)
                    (i32.load offset=16
                      (local.get $p1)))
                  (i64.store offset=16 align=4
                    (local.get $l6)
                    (i64.load
                      (local.get $l6)))
                  (br_if $B3
                    (local.get $l7))
                  (call $_ZN3std9panicking12default_hook17h0d854b2855fe5ef7E
                    (i32.add
                      (local.get $l6)
                      (i32.const 16)))
                  (br $B2))
                (i32.store8 offset=33
                  (local.get $l6)
                  (local.get $p5))
                (i32.store8 offset=32
                  (local.get $l6)
                  (local.get $p4))
                (i32.store offset=28
                  (local.get $l6)
                  (local.get $p3))
                (i32.store offset=24
                  (local.get $l6)
                  (local.get $p2))
                (i32.store offset=20
                  (local.get $l6)
                  (i32.const 1051964))
                (i32.store offset=16
                  (local.get $l6)
                  (i32.const 1048732))
                (i64.store align=4
                  (i32.add
                    (local.get $l6)
                    (i32.const 52))
                  (i64.const 1))
                (i32.store offset=44
                  (local.get $l6)
                  (i32.const 2))
                (i32.store offset=40
                  (local.get $l6)
                  (i32.const 1052032))
                (i32.store offset=12
                  (local.get $l6)
                  (i32.const 13))
                (i32.store offset=48
                  (local.get $l6)
                  (i32.add
                    (local.get $l6)
                    (i32.const 8)))
                (i32.store offset=8
                  (local.get $l6)
                  (i32.add
                    (local.get $l6)
                    (i32.const 16)))
                (i32.store8 offset=64
                  (local.get $l6)
                  (i32.const 4))
                (i32.store offset=72
                  (local.get $l6)
                  (i32.add
                    (local.get $l6)
                    (i32.const 8)))
                (local.set $p4
                  (call $_ZN4core3fmt5write17had8ef63591bfa1d0E
                    (i32.add
                      (local.get $l6)
                      (i32.const 64))
                    (i32.const 1049156)
                    (i32.add
                      (local.get $l6)
                      (i32.const 40))))
                (local.set $l7
                  (i32.load8_u offset=64
                    (local.get $l6)))
                (block $B7
                  (br_if $B7
                    (i32.eqz
                      (local.get $p4)))
                  (br_if $B4
                    (i32.eq
                      (local.get $l7)
                      (i32.const 4)))
                  (local.set $l7
                    (i32.load offset=68
                      (local.get $l6)))
                  (block $B8
                    (br_if $B8
                      (i32.gt_u
                        (local.tee $l6
                          (i32.load8_u offset=64
                            (local.get $l6)))
                        (i32.const 4)))
                    (br_if $B4
                      (i32.ne
                        (local.get $l6)
                        (i32.const 3))))
                  (call_indirect $T0 (type $t1)
                    (local.tee $p4
                      (i32.load
                        (local.get $l7)))
                    (i32.load
                      (local.tee $l6
                        (i32.load
                          (i32.add
                            (local.get $l7)
                            (i32.const 4))))))
                  (block $B9
                    (br_if $B9
                      (i32.eqz
                        (local.tee $p5
                          (i32.load offset=4
                            (local.get $l6)))))
                    (call $__rust_dealloc
                      (local.get $p4)
                      (local.get $p5)
                      (i32.load offset=8
                        (local.get $l6))))
                  (call $__rust_dealloc
                    (local.get $l7)
                    (i32.const 12)
                    (i32.const 4))
                  (call $_ZN3std3sys4wasi14abort_internal17h13cc9b6d35378fc3E)
                  (unreachable))
                (local.set $l6
                  (i32.load offset=68
                    (local.get $l6)))
                (block $B10
                  (br_if $B10
                    (i32.gt_u
                      (local.get $l7)
                      (i32.const 4)))
                  (br_if $B4
                    (i32.ne
                      (local.get $l7)
                      (i32.const 3))))
                (call_indirect $T0 (type $t1)
                  (local.tee $p4
                    (i32.load
                      (local.get $l6)))
                  (i32.load
                    (local.tee $l7
                      (i32.load
                        (i32.add
                          (local.get $l6)
                          (i32.const 4))))))
                (block $B11
                  (br_if $B11
                    (i32.eqz
                      (local.tee $p5
                        (i32.load offset=4
                          (local.get $l7)))))
                  (call $__rust_dealloc
                    (local.get $p4)
                    (local.get $p5)
                    (i32.load offset=8
                      (local.get $l7))))
                (call $__rust_dealloc
                  (local.get $l6)
                  (i32.const 12)
                  (i32.const 4))
                (call $_ZN3std3sys4wasi14abort_internal17h13cc9b6d35378fc3E)
                (unreachable))
              (i64.store align=4
                (i32.add
                  (local.get $l6)
                  (i32.const 52))
                (i64.const 0))
              (i32.store offset=44
                (local.get $l6)
                (i32.const 1))
              (i32.store offset=40
                (local.get $l6)
                (i32.const 1052100))
              (i32.store offset=48
                (local.get $l6)
                (i32.const 1048732))
              (i32.store8 offset=16
                (local.get $l6)
                (i32.const 4))
              (i32.store offset=24
                (local.get $l6)
                (i32.add
                  (local.get $l6)
                  (i32.const 8)))
              (local.set $p4
                (call $_ZN4core3fmt5write17had8ef63591bfa1d0E
                  (i32.add
                    (local.get $l6)
                    (i32.const 16))
                  (i32.const 1049156)
                  (i32.add
                    (local.get $l6)
                    (i32.const 40))))
              (local.set $l7
                (i32.load8_u offset=16
                  (local.get $l6)))
              (block $B12
                (br_if $B12
                  (i32.eqz
                    (local.get $p4)))
                (br_if $B4
                  (i32.eq
                    (local.get $l7)
                    (i32.const 4)))
                (local.set $l7
                  (i32.load offset=20
                    (local.get $l6)))
                (block $B13
                  (br_if $B13
                    (i32.gt_u
                      (local.tee $l6
                        (i32.load8_u offset=16
                          (local.get $l6)))
                      (i32.const 4)))
                  (br_if $B4
                    (i32.ne
                      (local.get $l6)
                      (i32.const 3))))
                (call_indirect $T0 (type $t1)
                  (local.tee $p4
                    (i32.load
                      (local.get $l7)))
                  (i32.load
                    (local.tee $l6
                      (i32.load
                        (i32.add
                          (local.get $l7)
                          (i32.const 4))))))
                (block $B14
                  (br_if $B14
                    (i32.eqz
                      (local.tee $p5
                        (i32.load offset=4
                          (local.get $l6)))))
                  (call $__rust_dealloc
                    (local.get $p4)
                    (local.get $p5)
                    (i32.load offset=8
                      (local.get $l6))))
                (call $__rust_dealloc
                  (local.get $l7)
                  (i32.const 12)
                  (i32.const 4))
                (call $_ZN3std3sys4wasi14abort_internal17h13cc9b6d35378fc3E)
                (unreachable))
              (local.set $l6
                (i32.load offset=20
                  (local.get $l6)))
              (block $B15
                (br_if $B15
                  (i32.gt_u
                    (local.get $l7)
                    (i32.const 4)))
                (br_if $B4
                  (i32.ne
                    (local.get $l7)
                    (i32.const 3))))
              (call_indirect $T0 (type $t1)
                (local.tee $p4
                  (i32.load
                    (local.get $l6)))
                (i32.load
                  (local.tee $l7
                    (i32.load
                      (i32.add
                        (local.get $l6)
                        (i32.const 4))))))
              (block $B16
                (br_if $B16
                  (i32.eqz
                    (local.tee $p5
                      (i32.load offset=4
                        (local.get $l7)))))
                (call $__rust_dealloc
                  (local.get $p4)
                  (local.get $p5)
                  (i32.load offset=8
                    (local.get $l7))))
              (call $__rust_dealloc
                (local.get $l6)
                (i32.const 12)
                (i32.const 4)))
            (call $_ZN3std3sys4wasi14abort_internal17h13cc9b6d35378fc3E)
            (unreachable))
          (call_indirect $T0 (type $t2)
            (i32.load offset=1056072
              (i32.const 0))
            (i32.add
              (local.get $l6)
              (i32.const 16))
            (i32.load offset=20
              (i32.load offset=1056076
                (i32.const 0)))))
        (i32.store offset=1056064
          (i32.const 0)
          (i32.add
            (i32.load offset=1056064
              (i32.const 0))
            (i32.const -1)))
        (i32.store8 offset=1056100
          (i32.const 0)
          (i32.const 0))
        (br_if $B0
          (i32.eqz
            (local.get $p4)))
        (call $rust_panic
          (local.get $p0)
          (local.get $p1))
        (unreachable))
      (i64.store align=4
        (i32.add
          (local.get $l6)
          (i32.const 52))
        (i64.const 0))
      (i32.store offset=44
        (local.get $l6)
        (i32.const 1))
      (i32.store offset=40
        (local.get $l6)
        (i32.const 1052396))
      (i32.store offset=48
        (local.get $l6)
        (i32.add
          (local.get $l6)
          (i32.const 8)))
      (call $_ZN3std2io5Write9write_fmt17hfe8371fd0b5f892bE
        (i32.add
          (local.get $l6)
          (i32.const 64))
        (i32.add
          (local.get $l6)
          (i32.const 8))
        (i32.add
          (local.get $l6)
          (i32.const 40)))
      (call $_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h4404161b40712de8E
        (i32.load8_u offset=64
          (local.get $l6))
        (i32.load offset=68
          (local.get $l6)))
      (call $_ZN3std3sys4wasi14abort_internal17h13cc9b6d35378fc3E)
      (unreachable))
    (i64.store align=4
      (i32.add
        (local.get $l6)
        (i32.const 52))
      (i64.const 0))
    (i32.store offset=44
      (local.get $l6)
      (i32.const 1))
    (i32.store offset=40
      (local.get $l6)
      (i32.const 1052156))
    (i32.store offset=48
      (local.get $l6)
      (i32.const 1048732))
    (call $_ZN3std2io5Write9write_fmt17hfe8371fd0b5f892bE
      (i32.add
        (local.get $l6)
        (i32.const 64))
      (i32.add
        (local.get $l6)
        (i32.const 8))
      (i32.add
        (local.get $l6)
        (i32.const 40)))
    (call $_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h4404161b40712de8E
      (i32.load8_u offset=64
        (local.get $l6))
      (i32.load offset=68
        (local.get $l6)))
    (call $_ZN3std3sys4wasi14abort_internal17h13cc9b6d35378fc3E)
    (unreachable))
  (func $rust_panic (type $t2) (param $p0 i32) (param $p1 i32)
    (local $l2 i32)
    (global.set $__stack_pointer
      (local.tee $l2
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 48))))
    (i32.store
      (local.get $l2)
      (call $__rust_start_panic
        (local.get $p0)
        (local.get $p1)))
    (i64.store align=4
      (i32.add
        (local.get $l2)
        (i32.const 24))
      (i64.const 1))
    (i32.store offset=16
      (local.get $l2)
      (i32.const 2))
    (i32.store offset=12
      (local.get $l2)
      (i32.const 1052220))
    (i32.store offset=40
      (local.get $l2)
      (i32.const 11))
    (i32.store offset=20
      (local.get $l2)
      (i32.add
        (local.get $l2)
        (i32.const 36)))
    (i32.store offset=36
      (local.get $l2)
      (local.get $l2))
    (call $_ZN3std2io5Write9write_fmt17hfe8371fd0b5f892bE
      (i32.add
        (local.get $l2)
        (i32.const 4))
      (i32.add
        (local.get $l2)
        (i32.const 47))
      (i32.add
        (local.get $l2)
        (i32.const 12)))
    (call $_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h4404161b40712de8E
      (i32.load8_u offset=4
        (local.get $l2))
      (i32.load offset=8
        (local.get $l2)))
    (call $_ZN3std3sys4wasi14abort_internal17h13cc9b6d35378fc3E)
    (unreachable))
  (func $_ZN3std3sys4wasi7process8ExitCode6as_i3217h01e1dbdb8d39bafaE (type $t3) (param $p0 i32) (result i32)
    (i32.load8_u
      (local.get $p0)))
  (func $_ZN64_$LT$std..sys..wasi..stdio..Stderr$u20$as$u20$std..io..Write$GT$5write17hf4097102d87f2895E (type $t9) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (local $l4 i32)
    (global.set $__stack_pointer
      (local.tee $l4
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 32))))
    (i32.store offset=16
      (local.get $l4)
      (local.get $p3))
    (i32.store offset=12
      (local.get $l4)
      (local.get $p2))
    (call $_ZN4wasi13lib_generated8fd_write17he16b5a9ceecf5729E
      (i32.add
        (local.get $l4)
        (i32.const 20))
      (i32.const 2)
      (i32.add
        (local.get $l4)
        (i32.const 12))
      (i32.const 1))
    (block $B0
      (block $B1
        (br_if $B1
          (i32.load16_u offset=20
            (local.get $l4)))
        (i32.store offset=4
          (local.get $p0)
          (i32.load offset=24
            (local.get $l4)))
        (i32.store8
          (local.get $p0)
          (i32.const 4))
        (br $B0))
      (i32.store16 offset=30
        (local.get $l4)
        (i32.load16_u offset=22
          (local.get $l4)))
      (i64.store align=4
        (local.get $p0)
        (i64.shl
          (i64.and
            (i64.extend_i32_u
              (call $_ZN4wasi13lib_generated5Errno3raw17hdc11aaa809e24aabE
                (i32.add
                  (local.get $l4)
                  (i32.const 30))))
            (i64.const 65535))
          (i64.const 32))))
    (global.set $__stack_pointer
      (i32.add
        (local.get $l4)
        (i32.const 32))))
  (func $_ZN64_$LT$std..sys..wasi..stdio..Stderr$u20$as$u20$std..io..Write$GT$14write_vectored17h457c0257437e50a4E (type $t9) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (local $l4 i32)
    (global.set $__stack_pointer
      (local.tee $l4
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 16))))
    (call $_ZN4wasi13lib_generated8fd_write17he16b5a9ceecf5729E
      (i32.add
        (local.get $l4)
        (i32.const 4))
      (i32.const 2)
      (local.get $p2)
      (local.get $p3))
    (block $B0
      (block $B1
        (br_if $B1
          (i32.load16_u offset=4
            (local.get $l4)))
        (i32.store offset=4
          (local.get $p0)
          (i32.load offset=8
            (local.get $l4)))
        (i32.store8
          (local.get $p0)
          (i32.const 4))
        (br $B0))
      (i32.store16 offset=14
        (local.get $l4)
        (i32.load16_u offset=6
          (local.get $l4)))
      (i64.store align=4
        (local.get $p0)
        (i64.shl
          (i64.and
            (i64.extend_i32_u
              (call $_ZN4wasi13lib_generated5Errno3raw17hdc11aaa809e24aabE
                (i32.add
                  (local.get $l4)
                  (i32.const 14))))
            (i64.const 65535))
          (i64.const 32))))
    (global.set $__stack_pointer
      (i32.add
        (local.get $l4)
        (i32.const 16))))
  (func $_ZN64_$LT$std..sys..wasi..stdio..Stderr$u20$as$u20$std..io..Write$GT$17is_write_vectored17hf93cf3412519714cE (type $t3) (param $p0 i32) (result i32)
    (i32.const 1))
  (func $_ZN64_$LT$std..sys..wasi..stdio..Stderr$u20$as$u20$std..io..Write$GT$5flush17hde3c98b3e4277850E (type $t2) (param $p0 i32) (param $p1 i32)
    (i32.store8
      (local.get $p0)
      (i32.const 4)))
  (func $_ZN3std5alloc8rust_oom17h24bc6b4348464324E (type $t2) (param $p0 i32) (param $p1 i32)
    (local $l2 i32)
    (call_indirect $T0 (type $t2)
      (local.get $p0)
      (local.get $p1)
      (select
        (local.tee $l2
          (i32.load offset=1056060
            (i32.const 0)))
        (i32.const 14)
        (local.get $l2)))
    (call $_ZN3std7process5abort17hdff58b7f5dc9bfc1E)
    (unreachable))
  (func $__rg_oom (type $t2) (param $p0 i32) (param $p1 i32)
    (call $_ZN3std5alloc8rust_oom17h24bc6b4348464324E
      (local.get $p1)
      (local.get $p0))
    (unreachable))
  (func $__rust_start_panic (type $t4) (param $p0 i32) (param $p1 i32) (result i32)
    (unreachable)
    (unreachable))
  (func $_ZN4wasi13lib_generated5Errno3raw17hdc11aaa809e24aabE (type $t3) (param $p0 i32) (result i32)
    (i32.load16_u
      (local.get $p0)))
  (func $_ZN4wasi13lib_generated8fd_write17he16b5a9ceecf5729E (type $t9) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (local $l4 i32)
    (global.set $__stack_pointer
      (local.tee $l4
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 16))))
    (block $B0
      (block $B1
        (br_if $B1
          (local.tee $p3
            (call $_ZN4wasi13lib_generated22wasi_snapshot_preview18fd_write17h206103b03f87f785E
              (local.get $p1)
              (local.get $p2)
              (local.get $p3)
              (i32.add
                (local.get $l4)
                (i32.const 12)))))
        (i32.store offset=4
          (local.get $p0)
          (i32.load offset=12
            (local.get $l4)))
        (local.set $p3
          (i32.const 0))
        (br $B0))
      (i32.store16 offset=2
        (local.get $p0)
        (local.get $p3))
      (local.set $p3
        (i32.const 1)))
    (i32.store16
      (local.get $p0)
      (local.get $p3))
    (global.set $__stack_pointer
      (i32.add
        (local.get $l4)
        (i32.const 16))))
  (func $malloc (type $t3) (param $p0 i32) (result i32)
    (call $dlmalloc
      (local.get $p0)))
  (func $dlmalloc (type $t3) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32)
    (global.set $__stack_pointer
      (local.tee $l1
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 16))))
    (block $B0
      (block $B1
        (block $B2
          (block $B3
            (block $B4
              (block $B5
                (block $B6
                  (block $B7
                    (block $B8
                      (block $B9
                        (block $B10
                          (block $B11
                            (br_if $B11
                              (local.tee $l2
                                (i32.load offset=1056144
                                  (i32.const 0))))
                            (block $B12
                              (br_if $B12
                                (local.tee $l3
                                  (i32.load offset=1056592
                                    (i32.const 0))))
                              (i64.store offset=1056604 align=4
                                (i32.const 0)
                                (i64.const -1))
                              (i64.store offset=1056596 align=4
                                (i32.const 0)
                                (i64.const 281474976776192))
                              (i32.store offset=1056592
                                (i32.const 0)
                                (local.tee $l3
                                  (i32.xor
                                    (i32.and
                                      (i32.add
                                        (local.get $l1)
                                        (i32.const 8))
                                      (i32.const -16))
                                    (i32.const 1431655768))))
                              (i32.store offset=1056612
                                (i32.const 0)
                                (i32.const 0))
                              (i32.store offset=1056564
                                (i32.const 0)
                                (i32.const 0)))
                            (br_if $B10
                              (i32.lt_u
                                (i32.const 1114112)
                                (i32.const 1056656)))
                            (local.set $l2
                              (i32.const 0))
                            (br_if $B11
                              (i32.lt_u
                                (i32.sub
                                  (i32.const 1114112)
                                  (i32.const 1056656))
                                (i32.const 89)))
                            (local.set $l4
                              (i32.const 0))
                            (i32.store offset=1056568
                              (i32.const 0)
                              (i32.const 1056656))
                            (i32.store offset=1056136
                              (i32.const 0)
                              (i32.const 1056656))
                            (i32.store offset=1056156
                              (i32.const 0)
                              (local.get $l3))
                            (i32.store offset=1056152
                              (i32.const 0)
                              (i32.const -1))
                            (i32.store offset=1056572
                              (i32.const 0)
                              (i32.sub
                                (i32.const 1114112)
                                (i32.const 1056656)))
                            (loop $L13
                              (i32.store
                                (i32.add
                                  (local.get $l4)
                                  (i32.const 1056180))
                                (local.tee $l3
                                  (i32.add
                                    (local.get $l4)
                                    (i32.const 1056168))))
                              (i32.store
                                (local.get $l3)
                                (local.tee $l5
                                  (i32.add
                                    (local.get $l4)
                                    (i32.const 1056160))))
                              (i32.store
                                (i32.add
                                  (local.get $l4)
                                  (i32.const 1056172))
                                (local.get $l5))
                              (i32.store
                                (i32.add
                                  (local.get $l4)
                                  (i32.const 1056188))
                                (local.tee $l5
                                  (i32.add
                                    (local.get $l4)
                                    (i32.const 1056176))))
                              (i32.store
                                (local.get $l5)
                                (local.get $l3))
                              (i32.store
                                (i32.add
                                  (local.get $l4)
                                  (i32.const 1056196))
                                (local.tee $l3
                                  (i32.add
                                    (local.get $l4)
                                    (i32.const 1056184))))
                              (i32.store
                                (local.get $l3)
                                (local.get $l5))
                              (i32.store
                                (i32.add
                                  (local.get $l4)
                                  (i32.const 1056192))
                                (local.get $l3))
                              (br_if $L13
                                (i32.ne
                                  (local.tee $l4
                                    (i32.add
                                      (local.get $l4)
                                      (i32.const 32)))
                                  (i32.const 256))))
                            (i32.store
                              (i32.add
                                (local.tee $l2
                                  (i32.add
                                    (i32.const 1056656)
                                    (local.tee $l4
                                      (select
                                        (i32.and
                                          (i32.sub
                                            (i32.const -8)
                                            (i32.const 1056656))
                                          (i32.const 15))
                                        (i32.const 0)
                                        (i32.and
                                          (i32.add
                                            (i32.const 1056656)
                                            (i32.const 8))
                                          (i32.const 15))))))
                                (i32.const 4))
                              (i32.or
                                (local.tee $l4
                                  (i32.sub
                                    (local.tee $l3
                                      (i32.add
                                        (i32.sub
                                          (i32.const 1114112)
                                          (i32.const 1056656))
                                        (i32.const -56)))
                                    (local.get $l4)))
                                (i32.const 1)))
                            (i32.store offset=1056148
                              (i32.const 0)
                              (i32.load offset=1056608
                                (i32.const 0)))
                            (i32.store offset=1056132
                              (i32.const 0)
                              (local.get $l4))
                            (i32.store offset=1056144
                              (i32.const 0)
                              (local.get $l2))
                            (i32.store
                              (i32.add
                                (i32.add
                                  (local.get $l3)
                                  (i32.const 1056656))
                                (i32.const 4))
                              (i32.const 56)))
                          (block $B14
                            (block $B15
                              (br_if $B15
                                (i32.gt_u
                                  (local.get $p0)
                                  (i32.const 236)))
                              (block $B16
                                (br_if $B16
                                  (i32.eqz
                                    (i32.and
                                      (local.tee $l4
                                        (i32.shr_u
                                          (local.tee $l6
                                            (i32.load offset=1056120
                                              (i32.const 0)))
                                          (local.tee $l3
                                            (i32.shr_u
                                              (local.tee $l7
                                                (select
                                                  (i32.const 16)
                                                  (i32.and
                                                    (i32.add
                                                      (local.get $p0)
                                                      (i32.const 19))
                                                    (i32.const -16))
                                                  (i32.lt_u
                                                    (local.get $p0)
                                                    (i32.const 11))))
                                              (i32.const 3)))))
                                      (i32.const 3))))
                                (block $B17
                                  (block $B18
                                    (br_if $B18
                                      (i32.ne
                                        (local.tee $l4
                                          (i32.add
                                            (local.tee $l3
                                              (i32.shl
                                                (local.tee $l5
                                                  (i32.xor
                                                    (i32.or
                                                      (i32.and
                                                        (local.get $l4)
                                                        (i32.const 1))
                                                      (local.get $l3))
                                                    (i32.const 1)))
                                                (i32.const 3)))
                                            (i32.const 1056160)))
                                        (local.tee $l7
                                          (i32.load offset=8
                                            (local.tee $l3
                                              (i32.load
                                                (i32.add
                                                  (local.get $l3)
                                                  (i32.const 1056168))))))))
                                    (i32.store offset=1056120
                                      (i32.const 0)
                                      (i32.and
                                        (local.get $l6)
                                        (i32.rotl
                                          (i32.const -2)
                                          (local.get $l5))))
                                    (br $B17))
                                  (i32.store offset=8
                                    (local.get $l4)
                                    (local.get $l7))
                                  (i32.store offset=12
                                    (local.get $l7)
                                    (local.get $l4)))
                                (local.set $l4
                                  (i32.add
                                    (local.get $l3)
                                    (i32.const 8)))
                                (i32.store offset=4
                                  (local.get $l3)
                                  (i32.or
                                    (local.tee $l5
                                      (i32.shl
                                        (local.get $l5)
                                        (i32.const 3)))
                                    (i32.const 3)))
                                (i32.store offset=4
                                  (local.tee $l3
                                    (i32.add
                                      (local.get $l3)
                                      (local.get $l5)))
                                  (i32.or
                                    (i32.load offset=4
                                      (local.get $l3))
                                    (i32.const 1)))
                                (br $B0))
                              (br_if $B14
                                (i32.le_u
                                  (local.get $l7)
                                  (local.tee $l8
                                    (i32.load offset=1056128
                                      (i32.const 0)))))
                              (block $B19
                                (br_if $B19
                                  (i32.eqz
                                    (local.get $l4)))
                                (block $B20
                                  (block $B21
                                    (br_if $B21
                                      (i32.ne
                                        (local.tee $l5
                                          (i32.add
                                            (local.tee $l4
                                              (i32.shl
                                                (local.tee $l3
                                                  (i32.ctz
                                                    (i32.and
                                                      (local.tee $l4
                                                        (i32.and
                                                          (i32.shl
                                                            (local.get $l4)
                                                            (local.get $l3))
                                                          (i32.or
                                                            (local.tee $l4
                                                              (i32.shl
                                                                (i32.const 2)
                                                                (local.get $l3)))
                                                            (i32.sub
                                                              (i32.const 0)
                                                              (local.get $l4)))))
                                                      (i32.sub
                                                        (i32.const 0)
                                                        (local.get $l4)))))
                                                (i32.const 3)))
                                            (i32.const 1056160)))
                                        (local.tee $p0
                                          (i32.load offset=8
                                            (local.tee $l4
                                              (i32.load
                                                (i32.add
                                                  (local.get $l4)
                                                  (i32.const 1056168))))))))
                                    (i32.store offset=1056120
                                      (i32.const 0)
                                      (local.tee $l6
                                        (i32.and
                                          (local.get $l6)
                                          (i32.rotl
                                            (i32.const -2)
                                            (local.get $l3)))))
                                    (br $B20))
                                  (i32.store offset=8
                                    (local.get $l5)
                                    (local.get $p0))
                                  (i32.store offset=12
                                    (local.get $p0)
                                    (local.get $l5)))
                                (i32.store offset=4
                                  (local.get $l4)
                                  (i32.or
                                    (local.get $l7)
                                    (i32.const 3)))
                                (i32.store
                                  (i32.add
                                    (local.get $l4)
                                    (local.tee $l3
                                      (i32.shl
                                        (local.get $l3)
                                        (i32.const 3))))
                                  (local.tee $l5
                                    (i32.sub
                                      (local.get $l3)
                                      (local.get $l7))))
                                (i32.store offset=4
                                  (local.tee $p0
                                    (i32.add
                                      (local.get $l4)
                                      (local.get $l7)))
                                  (i32.or
                                    (local.get $l5)
                                    (i32.const 1)))
                                (block $B22
                                  (br_if $B22
                                    (i32.eqz
                                      (local.get $l8)))
                                  (local.set $l7
                                    (i32.add
                                      (i32.and
                                        (local.get $l8)
                                        (i32.const -8))
                                      (i32.const 1056160)))
                                  (local.set $l3
                                    (i32.load offset=1056140
                                      (i32.const 0)))
                                  (block $B23
                                    (block $B24
                                      (br_if $B24
                                        (i32.and
                                          (local.get $l6)
                                          (local.tee $l9
                                            (i32.shl
                                              (i32.const 1)
                                              (i32.shr_u
                                                (local.get $l8)
                                                (i32.const 3))))))
                                      (i32.store offset=1056120
                                        (i32.const 0)
                                        (i32.or
                                          (local.get $l6)
                                          (local.get $l9)))
                                      (local.set $l9
                                        (local.get $l7))
                                      (br $B23))
                                    (local.set $l9
                                      (i32.load offset=8
                                        (local.get $l7))))
                                  (i32.store offset=12
                                    (local.get $l9)
                                    (local.get $l3))
                                  (i32.store offset=8
                                    (local.get $l7)
                                    (local.get $l3))
                                  (i32.store offset=12
                                    (local.get $l3)
                                    (local.get $l7))
                                  (i32.store offset=8
                                    (local.get $l3)
                                    (local.get $l9)))
                                (local.set $l4
                                  (i32.add
                                    (local.get $l4)
                                    (i32.const 8)))
                                (i32.store offset=1056140
                                  (i32.const 0)
                                  (local.get $p0))
                                (i32.store offset=1056128
                                  (i32.const 0)
                                  (local.get $l5))
                                (br $B0))
                              (br_if $B14
                                (i32.eqz
                                  (local.tee $l10
                                    (i32.load offset=1056124
                                      (i32.const 0)))))
                              (local.set $l3
                                (i32.sub
                                  (i32.and
                                    (i32.load offset=4
                                      (local.tee $p0
                                        (i32.load
                                          (i32.add
                                            (i32.shl
                                              (i32.ctz
                                                (i32.and
                                                  (local.get $l10)
                                                  (i32.sub
                                                    (i32.const 0)
                                                    (local.get $l10))))
                                              (i32.const 2))
                                            (i32.const 1056424)))))
                                    (i32.const -8))
                                  (local.get $l7)))
                              (local.set $l5
                                (local.get $p0))
                              (block $B25
                                (loop $L26
                                  (block $B27
                                    (br_if $B27
                                      (local.tee $l4
                                        (i32.load offset=16
                                          (local.get $l5))))
                                    (br_if $B25
                                      (i32.eqz
                                        (local.tee $l4
                                          (i32.load
                                            (i32.add
                                              (local.get $l5)
                                              (i32.const 20)))))))
                                  (local.set $l3
                                    (select
                                      (local.tee $l5
                                        (i32.sub
                                          (i32.and
                                            (i32.load offset=4
                                              (local.get $l4))
                                            (i32.const -8))
                                          (local.get $l7)))
                                      (local.get $l3)
                                      (local.tee $l5
                                        (i32.lt_u
                                          (local.get $l5)
                                          (local.get $l3)))))
                                  (local.set $p0
                                    (select
                                      (local.get $l4)
                                      (local.get $p0)
                                      (local.get $l5)))
                                  (local.set $l5
                                    (local.get $l4))
                                  (br $L26)))
                              (local.set $l11
                                (i32.load offset=24
                                  (local.get $p0)))
                              (block $B28
                                (br_if $B28
                                  (i32.eq
                                    (local.tee $l9
                                      (i32.load offset=12
                                        (local.get $p0)))
                                    (local.get $p0)))
                                (drop
                                  (i32.lt_u
                                    (local.tee $l4
                                      (i32.load offset=8
                                        (local.get $p0)))
                                    (i32.load offset=1056136
                                      (i32.const 0))))
                                (i32.store offset=8
                                  (local.get $l9)
                                  (local.get $l4))
                                (i32.store offset=12
                                  (local.get $l4)
                                  (local.get $l9))
                                (br $B1))
                              (block $B29
                                (br_if $B29
                                  (local.tee $l4
                                    (i32.load
                                      (local.tee $l5
                                        (i32.add
                                          (local.get $p0)
                                          (i32.const 20))))))
                                (br_if $B9
                                  (i32.eqz
                                    (local.tee $l4
                                      (i32.load offset=16
                                        (local.get $p0)))))
                                (local.set $l5
                                  (i32.add
                                    (local.get $p0)
                                    (i32.const 16))))
                              (loop $L30
                                (local.set $l2
                                  (local.get $l5))
                                (br_if $L30
                                  (local.tee $l4
                                    (i32.load
                                      (local.tee $l5
                                        (i32.add
                                          (local.tee $l9
                                            (local.get $l4))
                                          (i32.const 20))))))
                                (local.set $l5
                                  (i32.add
                                    (local.get $l9)
                                    (i32.const 16)))
                                (br_if $L30
                                  (local.tee $l4
                                    (i32.load offset=16
                                      (local.get $l9)))))
                              (i32.store
                                (local.get $l2)
                                (i32.const 0))
                              (br $B1))
                            (local.set $l7
                              (i32.const -1))
                            (br_if $B14
                              (i32.gt_u
                                (local.get $p0)
                                (i32.const -65)))
                            (local.set $l7
                              (i32.and
                                (local.tee $l4
                                  (i32.add
                                    (local.get $p0)
                                    (i32.const 19)))
                                (i32.const -16)))
                            (br_if $B14
                              (i32.eqz
                                (local.tee $l10
                                  (i32.load offset=1056124
                                    (i32.const 0)))))
                            (local.set $l8
                              (i32.const 0))
                            (block $B31
                              (br_if $B31
                                (i32.lt_u
                                  (local.get $l7)
                                  (i32.const 256)))
                              (local.set $l8
                                (i32.const 31))
                              (br_if $B31
                                (i32.gt_u
                                  (local.get $l7)
                                  (i32.const 16777215)))
                              (local.set $l8
                                (i32.add
                                  (i32.sub
                                    (i32.and
                                      (i32.shr_u
                                        (local.get $l7)
                                        (i32.sub
                                          (i32.const 38)
                                          (local.tee $l4
                                            (i32.clz
                                              (i32.shr_u
                                                (local.get $l4)
                                                (i32.const 8))))))
                                      (i32.const 1))
                                    (i32.shl
                                      (local.get $l4)
                                      (i32.const 1)))
                                  (i32.const 62))))
                            (local.set $l3
                              (i32.sub
                                (i32.const 0)
                                (local.get $l7)))
                            (block $B32
                              (block $B33
                                (block $B34
                                  (block $B35
                                    (br_if $B35
                                      (local.tee $l5
                                        (i32.load
                                          (i32.add
                                            (i32.shl
                                              (local.get $l8)
                                              (i32.const 2))
                                            (i32.const 1056424)))))
                                    (local.set $l4
                                      (i32.const 0))
                                    (local.set $l9
                                      (i32.const 0))
                                    (br $B34))
                                  (local.set $l4
                                    (i32.const 0))
                                  (local.set $p0
                                    (i32.shl
                                      (local.get $l7)
                                      (select
                                        (i32.const 0)
                                        (i32.sub
                                          (i32.const 25)
                                          (i32.shr_u
                                            (local.get $l8)
                                            (i32.const 1)))
                                        (i32.eq
                                          (local.get $l8)
                                          (i32.const 31)))))
                                  (local.set $l9
                                    (i32.const 0))
                                  (loop $L36
                                    (block $B37
                                      (br_if $B37
                                        (i32.ge_u
                                          (local.tee $l6
                                            (i32.sub
                                              (i32.and
                                                (i32.load offset=4
                                                  (local.get $l5))
                                                (i32.const -8))
                                              (local.get $l7)))
                                          (local.get $l3)))
                                      (local.set $l3
                                        (local.get $l6))
                                      (local.set $l9
                                        (local.get $l5))
                                      (br_if $B37
                                        (local.get $l6))
                                      (local.set $l3
                                        (i32.const 0))
                                      (local.set $l9
                                        (local.get $l5))
                                      (local.set $l4
                                        (local.get $l5))
                                      (br $B33))
                                    (local.set $l4
                                      (select
                                        (select
                                          (local.get $l4)
                                          (local.tee $l6
                                            (i32.load
                                              (i32.add
                                                (local.get $l5)
                                                (i32.const 20))))
                                          (i32.eq
                                            (local.get $l6)
                                            (local.tee $l5
                                              (i32.load
                                                (i32.add
                                                  (i32.add
                                                    (local.get $l5)
                                                    (i32.and
                                                      (i32.shr_u
                                                        (local.get $p0)
                                                        (i32.const 29))
                                                      (i32.const 4)))
                                                  (i32.const 16))))))
                                        (local.get $l4)
                                        (local.get $l6)))
                                    (local.set $p0
                                      (i32.shl
                                        (local.get $p0)
                                        (i32.const 1)))
                                    (br_if $L36
                                      (local.get $l5))))
                                (block $B38
                                  (br_if $B38
                                    (i32.or
                                      (local.get $l4)
                                      (local.get $l9)))
                                  (local.set $l9
                                    (i32.const 0))
                                  (br_if $B14
                                    (i32.eqz
                                      (local.tee $l4
                                        (i32.and
                                          (i32.or
                                            (local.tee $l4
                                              (i32.shl
                                                (i32.const 2)
                                                (local.get $l8)))
                                            (i32.sub
                                              (i32.const 0)
                                              (local.get $l4)))
                                          (local.get $l10)))))
                                  (local.set $l4
                                    (i32.load
                                      (i32.add
                                        (i32.shl
                                          (i32.ctz
                                            (i32.and
                                              (local.get $l4)
                                              (i32.sub
                                                (i32.const 0)
                                                (local.get $l4))))
                                          (i32.const 2))
                                        (i32.const 1056424)))))
                                (br_if $B32
                                  (i32.eqz
                                    (local.get $l4))))
                              (loop $L39
                                (local.set $p0
                                  (i32.lt_u
                                    (local.tee $l6
                                      (i32.sub
                                        (i32.and
                                          (i32.load offset=4
                                            (local.get $l4))
                                          (i32.const -8))
                                        (local.get $l7)))
                                    (local.get $l3)))
                                (block $B40
                                  (br_if $B40
                                    (local.tee $l5
                                      (i32.load offset=16
                                        (local.get $l4))))
                                  (local.set $l5
                                    (i32.load
                                      (i32.add
                                        (local.get $l4)
                                        (i32.const 20)))))
                                (local.set $l3
                                  (select
                                    (local.get $l6)
                                    (local.get $l3)
                                    (local.get $p0)))
                                (local.set $l9
                                  (select
                                    (local.get $l4)
                                    (local.get $l9)
                                    (local.get $p0)))
                                (local.set $l4
                                  (local.get $l5))
                                (br_if $L39
                                  (local.get $l5))))
                            (br_if $B14
                              (i32.eqz
                                (local.get $l9)))
                            (br_if $B14
                              (i32.ge_u
                                (local.get $l3)
                                (i32.sub
                                  (i32.load offset=1056128
                                    (i32.const 0))
                                  (local.get $l7))))
                            (local.set $l2
                              (i32.load offset=24
                                (local.get $l9)))
                            (block $B41
                              (br_if $B41
                                (i32.eq
                                  (local.tee $p0
                                    (i32.load offset=12
                                      (local.get $l9)))
                                  (local.get $l9)))
                              (drop
                                (i32.lt_u
                                  (local.tee $l4
                                    (i32.load offset=8
                                      (local.get $l9)))
                                  (i32.load offset=1056136
                                    (i32.const 0))))
                              (i32.store offset=8
                                (local.get $p0)
                                (local.get $l4))
                              (i32.store offset=12
                                (local.get $l4)
                                (local.get $p0))
                              (br $B2))
                            (block $B42
                              (br_if $B42
                                (local.tee $l4
                                  (i32.load
                                    (local.tee $l5
                                      (i32.add
                                        (local.get $l9)
                                        (i32.const 20))))))
                              (br_if $B8
                                (i32.eqz
                                  (local.tee $l4
                                    (i32.load offset=16
                                      (local.get $l9)))))
                              (local.set $l5
                                (i32.add
                                  (local.get $l9)
                                  (i32.const 16))))
                            (loop $L43
                              (local.set $l6
                                (local.get $l5))
                              (br_if $L43
                                (local.tee $l4
                                  (i32.load
                                    (local.tee $l5
                                      (i32.add
                                        (local.tee $p0
                                          (local.get $l4))
                                        (i32.const 20))))))
                              (local.set $l5
                                (i32.add
                                  (local.get $p0)
                                  (i32.const 16)))
                              (br_if $L43
                                (local.tee $l4
                                  (i32.load offset=16
                                    (local.get $p0)))))
                            (i32.store
                              (local.get $l6)
                              (i32.const 0))
                            (br $B2))
                          (block $B44
                            (br_if $B44
                              (i32.lt_u
                                (local.tee $l4
                                  (i32.load offset=1056128
                                    (i32.const 0)))
                                (local.get $l7)))
                            (local.set $l3
                              (i32.load offset=1056140
                                (i32.const 0)))
                            (block $B45
                              (block $B46
                                (br_if $B46
                                  (i32.lt_u
                                    (local.tee $l5
                                      (i32.sub
                                        (local.get $l4)
                                        (local.get $l7)))
                                    (i32.const 16)))
                                (i32.store offset=4
                                  (local.tee $p0
                                    (i32.add
                                      (local.get $l3)
                                      (local.get $l7)))
                                  (i32.or
                                    (local.get $l5)
                                    (i32.const 1)))
                                (i32.store
                                  (i32.add
                                    (local.get $l3)
                                    (local.get $l4))
                                  (local.get $l5))
                                (i32.store offset=4
                                  (local.get $l3)
                                  (i32.or
                                    (local.get $l7)
                                    (i32.const 3)))
                                (br $B45))
                              (i32.store offset=4
                                (local.get $l3)
                                (i32.or
                                  (local.get $l4)
                                  (i32.const 3)))
                              (i32.store offset=4
                                (local.tee $l4
                                  (i32.add
                                    (local.get $l3)
                                    (local.get $l4)))
                                (i32.or
                                  (i32.load offset=4
                                    (local.get $l4))
                                  (i32.const 1)))
                              (local.set $p0
                                (i32.const 0))
                              (local.set $l5
                                (i32.const 0)))
                            (i32.store offset=1056128
                              (i32.const 0)
                              (local.get $l5))
                            (i32.store offset=1056140
                              (i32.const 0)
                              (local.get $p0))
                            (local.set $l4
                              (i32.add
                                (local.get $l3)
                                (i32.const 8)))
                            (br $B0))
                          (block $B47
                            (br_if $B47
                              (i32.le_u
                                (local.tee $l5
                                  (i32.load offset=1056132
                                    (i32.const 0)))
                                (local.get $l7)))
                            (i32.store offset=4
                              (local.tee $l4
                                (i32.add
                                  (local.get $l2)
                                  (local.get $l7)))
                              (i32.or
                                (local.tee $l3
                                  (i32.sub
                                    (local.get $l5)
                                    (local.get $l7)))
                                (i32.const 1)))
                            (i32.store offset=1056144
                              (i32.const 0)
                              (local.get $l4))
                            (i32.store offset=1056132
                              (i32.const 0)
                              (local.get $l3))
                            (i32.store offset=4
                              (local.get $l2)
                              (i32.or
                                (local.get $l7)
                                (i32.const 3)))
                            (local.set $l4
                              (i32.add
                                (local.get $l2)
                                (i32.const 8)))
                            (br $B0))
                          (block $B48
                            (block $B49
                              (br_if $B49
                                (i32.eqz
                                  (i32.load offset=1056592
                                    (i32.const 0))))
                              (local.set $l3
                                (i32.load offset=1056600
                                  (i32.const 0)))
                              (br $B48))
                            (i64.store offset=1056604 align=4
                              (i32.const 0)
                              (i64.const -1))
                            (i64.store offset=1056596 align=4
                              (i32.const 0)
                              (i64.const 281474976776192))
                            (i32.store offset=1056592
                              (i32.const 0)
                              (i32.xor
                                (i32.and
                                  (i32.add
                                    (local.get $l1)
                                    (i32.const 12))
                                  (i32.const -16))
                                (i32.const 1431655768)))
                            (i32.store offset=1056612
                              (i32.const 0)
                              (i32.const 0))
                            (i32.store offset=1056564
                              (i32.const 0)
                              (i32.const 0))
                            (local.set $l3
                              (i32.const 65536)))
                          (local.set $l4
                            (i32.const 0))
                          (block $B50
                            (br_if $B50
                              (i32.gt_u
                                (local.tee $l9
                                  (i32.and
                                    (local.tee $p0
                                      (i32.add
                                        (local.get $l3)
                                        (local.tee $l8
                                          (i32.add
                                            (local.get $l7)
                                            (i32.const 71)))))
                                    (local.tee $l6
                                      (i32.sub
                                        (i32.const 0)
                                        (local.get $l3)))))
                                (local.get $l7)))
                            (i32.store offset=1056616
                              (i32.const 0)
                              (i32.const 48))
                            (br $B0))
                          (block $B51
                            (br_if $B51
                              (i32.eqz
                                (local.tee $l4
                                  (i32.load offset=1056560
                                    (i32.const 0)))))
                            (block $B52
                              (br_if $B52
                                (i32.le_u
                                  (local.tee $l10
                                    (i32.add
                                      (local.tee $l3
                                        (i32.load offset=1056552
                                          (i32.const 0)))
                                      (local.get $l9)))
                                  (local.get $l3)))
                              (br_if $B51
                                (i32.le_u
                                  (local.get $l10)
                                  (local.get $l4))))
                            (local.set $l4
                              (i32.const 0))
                            (i32.store offset=1056616
                              (i32.const 0)
                              (i32.const 48))
                            (br $B0))
                          (br_if $B5
                            (i32.and
                              (i32.load8_u offset=1056564
                                (i32.const 0))
                              (i32.const 4)))
                          (block $B53
                            (block $B54
                              (block $B55
                                (br_if $B55
                                  (i32.eqz
                                    (local.get $l2)))
                                (local.set $l4
                                  (i32.const 1056568))
                                (loop $L56
                                  (block $B57
                                    (br_if $B57
                                      (i32.gt_u
                                        (local.tee $l3
                                          (i32.load
                                            (local.get $l4)))
                                        (local.get $l2)))
                                    (br_if $B54
                                      (i32.gt_u
                                        (i32.add
                                          (local.get $l3)
                                          (i32.load offset=4
                                            (local.get $l4)))
                                        (local.get $l2))))
                                  (br_if $L56
                                    (local.tee $l4
                                      (i32.load offset=8
                                        (local.get $l4))))))
                              (br_if $B6
                                (i32.eq
                                  (local.tee $p0
                                    (call $sbrk
                                      (i32.const 0)))
                                  (i32.const -1)))
                              (local.set $l6
                                (local.get $l9))
                              (block $B58
                                (br_if $B58
                                  (i32.eqz
                                    (i32.and
                                      (local.tee $l3
                                        (i32.add
                                          (local.tee $l4
                                            (i32.load offset=1056596
                                              (i32.const 0)))
                                          (i32.const -1)))
                                      (local.get $p0))))
                                (local.set $l6
                                  (i32.add
                                    (i32.sub
                                      (local.get $l9)
                                      (local.get $p0))
                                    (i32.and
                                      (i32.add
                                        (local.get $l3)
                                        (local.get $p0))
                                      (i32.sub
                                        (i32.const 0)
                                        (local.get $l4))))))
                              (br_if $B6
                                (i32.le_u
                                  (local.get $l6)
                                  (local.get $l7)))
                              (br_if $B6
                                (i32.gt_u
                                  (local.get $l6)
                                  (i32.const 2147483646)))
                              (block $B59
                                (br_if $B59
                                  (i32.eqz
                                    (local.tee $l4
                                      (i32.load offset=1056560
                                        (i32.const 0)))))
                                (br_if $B6
                                  (i32.le_u
                                    (local.tee $l5
                                      (i32.add
                                        (local.tee $l3
                                          (i32.load offset=1056552
                                            (i32.const 0)))
                                        (local.get $l6)))
                                    (local.get $l3)))
                                (br_if $B6
                                  (i32.gt_u
                                    (local.get $l5)
                                    (local.get $l4))))
                              (br_if $B53
                                (i32.ne
                                  (local.tee $l4
                                    (call $sbrk
                                      (local.get $l6)))
                                  (local.get $p0)))
                              (br $B4))
                            (br_if $B6
                              (i32.gt_u
                                (local.tee $l6
                                  (i32.and
                                    (i32.sub
                                      (local.get $p0)
                                      (local.get $l5))
                                    (local.get $l6)))
                                (i32.const 2147483646)))
                            (br_if $B7
                              (i32.eq
                                (local.tee $p0
                                  (call $sbrk
                                    (local.get $l6)))
                                (i32.add
                                  (i32.load
                                    (local.get $l4))
                                  (i32.load offset=4
                                    (local.get $l4)))))
                            (local.set $l4
                              (local.get $p0)))
                          (block $B60
                            (br_if $B60
                              (i32.eq
                                (local.get $l4)
                                (i32.const -1)))
                            (br_if $B60
                              (i32.le_u
                                (i32.add
                                  (local.get $l7)
                                  (i32.const 72))
                                (local.get $l6)))
                            (block $B61
                              (br_if $B61
                                (i32.le_u
                                  (local.tee $l3
                                    (i32.and
                                      (i32.add
                                        (i32.sub
                                          (local.get $l8)
                                          (local.get $l6))
                                        (local.tee $l3
                                          (i32.load offset=1056600
                                            (i32.const 0))))
                                      (i32.sub
                                        (i32.const 0)
                                        (local.get $l3))))
                                  (i32.const 2147483646)))
                              (local.set $p0
                                (local.get $l4))
                              (br $B4))
                            (block $B62
                              (br_if $B62
                                (i32.eq
                                  (call $sbrk
                                    (local.get $l3))
                                  (i32.const -1)))
                              (local.set $l6
                                (i32.add
                                  (local.get $l3)
                                  (local.get $l6)))
                              (local.set $p0
                                (local.get $l4))
                              (br $B4))
                            (drop
                              (call $sbrk
                                (i32.sub
                                  (i32.const 0)
                                  (local.get $l6))))
                            (br $B6))
                          (local.set $p0
                            (local.get $l4))
                          (br_if $B4
                            (i32.ne
                              (local.get $l4)
                              (i32.const -1)))
                          (br $B6))
                        (unreachable)
                        (unreachable))
                      (local.set $l9
                        (i32.const 0))
                      (br $B1))
                    (local.set $p0
                      (i32.const 0))
                    (br $B2))
                  (br_if $B4
                    (i32.ne
                      (local.get $p0)
                      (i32.const -1))))
                (i32.store offset=1056564
                  (i32.const 0)
                  (i32.or
                    (i32.load offset=1056564
                      (i32.const 0))
                    (i32.const 4))))
              (br_if $B3
                (i32.gt_u
                  (local.get $l9)
                  (i32.const 2147483646)))
              (local.set $p0
                (call $sbrk
                  (local.get $l9)))
              (local.set $l4
                (call $sbrk
                  (i32.const 0)))
              (br_if $B3
                (i32.eq
                  (local.get $p0)
                  (i32.const -1)))
              (br_if $B3
                (i32.eq
                  (local.get $l4)
                  (i32.const -1)))
              (br_if $B3
                (i32.ge_u
                  (local.get $p0)
                  (local.get $l4)))
              (br_if $B3
                (i32.le_u
                  (local.tee $l6
                    (i32.sub
                      (local.get $l4)
                      (local.get $p0)))
                  (i32.add
                    (local.get $l7)
                    (i32.const 56)))))
            (i32.store offset=1056552
              (i32.const 0)
              (local.tee $l4
                (i32.add
                  (i32.load offset=1056552
                    (i32.const 0))
                  (local.get $l6))))
            (block $B63
              (br_if $B63
                (i32.le_u
                  (local.get $l4)
                  (i32.load offset=1056556
                    (i32.const 0))))
              (i32.store offset=1056556
                (i32.const 0)
                (local.get $l4)))
            (block $B64
              (block $B65
                (block $B66
                  (block $B67
                    (br_if $B67
                      (i32.eqz
                        (local.tee $l3
                          (i32.load offset=1056144
                            (i32.const 0)))))
                    (local.set $l4
                      (i32.const 1056568))
                    (loop $L68
                      (br_if $B66
                        (i32.eq
                          (local.get $p0)
                          (i32.add
                            (local.tee $l5
                              (i32.load
                                (local.get $l4)))
                            (local.tee $l9
                              (i32.load offset=4
                                (local.get $l4))))))
                      (br_if $L68
                        (local.tee $l4
                          (i32.load offset=8
                            (local.get $l4))))
                      (br $B65)))
                  (block $B69
                    (block $B70
                      (br_if $B70
                        (i32.eqz
                          (local.tee $l4
                            (i32.load offset=1056136
                              (i32.const 0)))))
                      (br_if $B69
                        (i32.ge_u
                          (local.get $p0)
                          (local.get $l4))))
                    (i32.store offset=1056136
                      (i32.const 0)
                      (local.get $p0)))
                  (local.set $l4
                    (i32.const 0))
                  (i32.store offset=1056572
                    (i32.const 0)
                    (local.get $l6))
                  (i32.store offset=1056568
                    (i32.const 0)
                    (local.get $p0))
                  (i32.store offset=1056152
                    (i32.const 0)
                    (i32.const -1))
                  (i32.store offset=1056156
                    (i32.const 0)
                    (i32.load offset=1056592
                      (i32.const 0)))
                  (i32.store offset=1056580
                    (i32.const 0)
                    (i32.const 0))
                  (loop $L71
                    (i32.store
                      (i32.add
                        (local.get $l4)
                        (i32.const 1056180))
                      (local.tee $l3
                        (i32.add
                          (local.get $l4)
                          (i32.const 1056168))))
                    (i32.store
                      (local.get $l3)
                      (local.tee $l5
                        (i32.add
                          (local.get $l4)
                          (i32.const 1056160))))
                    (i32.store
                      (i32.add
                        (local.get $l4)
                        (i32.const 1056172))
                      (local.get $l5))
                    (i32.store
                      (i32.add
                        (local.get $l4)
                        (i32.const 1056188))
                      (local.tee $l5
                        (i32.add
                          (local.get $l4)
                          (i32.const 1056176))))
                    (i32.store
                      (local.get $l5)
                      (local.get $l3))
                    (i32.store
                      (i32.add
                        (local.get $l4)
                        (i32.const 1056196))
                      (local.tee $l3
                        (i32.add
                          (local.get $l4)
                          (i32.const 1056184))))
                    (i32.store
                      (local.get $l3)
                      (local.get $l5))
                    (i32.store
                      (i32.add
                        (local.get $l4)
                        (i32.const 1056192))
                      (local.get $l3))
                    (br_if $L71
                      (i32.ne
                        (local.tee $l4
                          (i32.add
                            (local.get $l4)
                            (i32.const 32)))
                        (i32.const 256))))
                  (i32.store offset=4
                    (local.tee $l3
                      (i32.add
                        (local.get $p0)
                        (local.tee $l4
                          (select
                            (i32.and
                              (i32.sub
                                (i32.const -8)
                                (local.get $p0))
                              (i32.const 15))
                            (i32.const 0)
                            (i32.and
                              (i32.add
                                (local.get $p0)
                                (i32.const 8))
                              (i32.const 15))))))
                    (i32.or
                      (local.tee $l4
                        (i32.sub
                          (local.tee $l5
                            (i32.add
                              (local.get $l6)
                              (i32.const -56)))
                          (local.get $l4)))
                      (i32.const 1)))
                  (i32.store offset=1056148
                    (i32.const 0)
                    (i32.load offset=1056608
                      (i32.const 0)))
                  (i32.store offset=1056132
                    (i32.const 0)
                    (local.get $l4))
                  (i32.store offset=1056144
                    (i32.const 0)
                    (local.get $l3))
                  (i32.store offset=4
                    (i32.add
                      (local.get $p0)
                      (local.get $l5))
                    (i32.const 56))
                  (br $B64))
                (br_if $B65
                  (i32.and
                    (i32.load8_u offset=12
                      (local.get $l4))
                    (i32.const 8)))
                (br_if $B65
                  (i32.lt_u
                    (local.get $l3)
                    (local.get $l5)))
                (br_if $B65
                  (i32.ge_u
                    (local.get $l3)
                    (local.get $p0)))
                (i32.store offset=4
                  (local.tee $p0
                    (i32.add
                      (local.get $l3)
                      (local.tee $l5
                        (select
                          (i32.and
                            (i32.sub
                              (i32.const -8)
                              (local.get $l3))
                            (i32.const 15))
                          (i32.const 0)
                          (i32.and
                            (i32.add
                              (local.get $l3)
                              (i32.const 8))
                            (i32.const 15))))))
                  (i32.or
                    (local.tee $l5
                      (i32.sub
                        (local.tee $l2
                          (i32.add
                            (i32.load offset=1056132
                              (i32.const 0))
                            (local.get $l6)))
                        (local.get $l5)))
                    (i32.const 1)))
                (i32.store offset=4
                  (local.get $l4)
                  (i32.add
                    (local.get $l9)
                    (local.get $l6)))
                (i32.store offset=1056148
                  (i32.const 0)
                  (i32.load offset=1056608
                    (i32.const 0)))
                (i32.store offset=1056132
                  (i32.const 0)
                  (local.get $l5))
                (i32.store offset=1056144
                  (i32.const 0)
                  (local.get $p0))
                (i32.store offset=4
                  (i32.add
                    (local.get $l3)
                    (local.get $l2))
                  (i32.const 56))
                (br $B64))
              (block $B72
                (br_if $B72
                  (i32.ge_u
                    (local.get $p0)
                    (local.tee $l9
                      (i32.load offset=1056136
                        (i32.const 0)))))
                (i32.store offset=1056136
                  (i32.const 0)
                  (local.get $p0))
                (local.set $l9
                  (local.get $p0)))
              (local.set $l5
                (i32.add
                  (local.get $p0)
                  (local.get $l6)))
              (local.set $l4
                (i32.const 1056568))
              (block $B73
                (block $B74
                  (block $B75
                    (block $B76
                      (block $B77
                        (block $B78
                          (block $B79
                            (loop $L80
                              (br_if $B79
                                (i32.eq
                                  (i32.load
                                    (local.get $l4))
                                  (local.get $l5)))
                              (br_if $L80
                                (local.tee $l4
                                  (i32.load offset=8
                                    (local.get $l4))))
                              (br $B78)))
                          (br_if $B77
                            (i32.eqz
                              (i32.and
                                (i32.load8_u offset=12
                                  (local.get $l4))
                                (i32.const 8)))))
                        (local.set $l4
                          (i32.const 1056568))
                        (loop $L81
                          (block $B82
                            (br_if $B82
                              (i32.gt_u
                                (local.tee $l5
                                  (i32.load
                                    (local.get $l4)))
                                (local.get $l3)))
                            (br_if $B76
                              (i32.gt_u
                                (local.tee $l5
                                  (i32.add
                                    (local.get $l5)
                                    (i32.load offset=4
                                      (local.get $l4))))
                                (local.get $l3))))
                          (local.set $l4
                            (i32.load offset=8
                              (local.get $l4)))
                          (br $L81)))
                      (i32.store
                        (local.get $l4)
                        (local.get $p0))
                      (i32.store offset=4
                        (local.get $l4)
                        (i32.add
                          (i32.load offset=4
                            (local.get $l4))
                          (local.get $l6)))
                      (i32.store offset=4
                        (local.tee $l2
                          (i32.add
                            (local.get $p0)
                            (select
                              (i32.and
                                (i32.sub
                                  (i32.const -8)
                                  (local.get $p0))
                                (i32.const 15))
                              (i32.const 0)
                              (i32.and
                                (i32.add
                                  (local.get $p0)
                                  (i32.const 8))
                                (i32.const 15)))))
                        (i32.or
                          (local.get $l7)
                          (i32.const 3)))
                      (local.set $l4
                        (i32.sub
                          (local.tee $l6
                            (i32.add
                              (local.get $l5)
                              (select
                                (i32.and
                                  (i32.sub
                                    (i32.const -8)
                                    (local.get $l5))
                                  (i32.const 15))
                                (i32.const 0)
                                (i32.and
                                  (i32.add
                                    (local.get $l5)
                                    (i32.const 8))
                                  (i32.const 15)))))
                          (local.tee $l7
                            (i32.add
                              (local.get $l2)
                              (local.get $l7)))))
                      (block $B83
                        (br_if $B83
                          (i32.ne
                            (local.get $l6)
                            (local.get $l3)))
                        (i32.store offset=1056144
                          (i32.const 0)
                          (local.get $l7))
                        (i32.store offset=1056132
                          (i32.const 0)
                          (local.tee $l4
                            (i32.add
                              (i32.load offset=1056132
                                (i32.const 0))
                              (local.get $l4))))
                        (i32.store offset=4
                          (local.get $l7)
                          (i32.or
                            (local.get $l4)
                            (i32.const 1)))
                        (br $B74))
                      (block $B84
                        (br_if $B84
                          (i32.ne
                            (local.get $l6)
                            (i32.load offset=1056140
                              (i32.const 0))))
                        (i32.store offset=1056140
                          (i32.const 0)
                          (local.get $l7))
                        (i32.store offset=1056128
                          (i32.const 0)
                          (local.tee $l4
                            (i32.add
                              (i32.load offset=1056128
                                (i32.const 0))
                              (local.get $l4))))
                        (i32.store offset=4
                          (local.get $l7)
                          (i32.or
                            (local.get $l4)
                            (i32.const 1)))
                        (i32.store
                          (i32.add
                            (local.get $l7)
                            (local.get $l4))
                          (local.get $l4))
                        (br $B74))
                      (block $B85
                        (br_if $B85
                          (i32.ne
                            (i32.and
                              (local.tee $l3
                                (i32.load offset=4
                                  (local.get $l6)))
                              (i32.const 3))
                            (i32.const 1)))
                        (local.set $l8
                          (i32.and
                            (local.get $l3)
                            (i32.const -8)))
                        (block $B86
                          (block $B87
                            (br_if $B87
                              (i32.gt_u
                                (local.get $l3)
                                (i32.const 255)))
                            (drop
                              (i32.eq
                                (local.tee $l5
                                  (i32.load offset=8
                                    (local.get $l6)))
                                (local.tee $p0
                                  (i32.add
                                    (i32.shl
                                      (local.tee $l9
                                        (i32.shr_u
                                          (local.get $l3)
                                          (i32.const 3)))
                                      (i32.const 3))
                                    (i32.const 1056160)))))
                            (block $B88
                              (br_if $B88
                                (i32.ne
                                  (local.tee $l3
                                    (i32.load offset=12
                                      (local.get $l6)))
                                  (local.get $l5)))
                              (i32.store offset=1056120
                                (i32.const 0)
                                (i32.and
                                  (i32.load offset=1056120
                                    (i32.const 0))
                                  (i32.rotl
                                    (i32.const -2)
                                    (local.get $l9))))
                              (br $B86))
                            (drop
                              (i32.eq
                                (local.get $l3)
                                (local.get $p0)))
                            (i32.store offset=8
                              (local.get $l3)
                              (local.get $l5))
                            (i32.store offset=12
                              (local.get $l5)
                              (local.get $l3))
                            (br $B86))
                          (local.set $l10
                            (i32.load offset=24
                              (local.get $l6)))
                          (block $B89
                            (block $B90
                              (br_if $B90
                                (i32.eq
                                  (local.tee $p0
                                    (i32.load offset=12
                                      (local.get $l6)))
                                  (local.get $l6)))
                              (drop
                                (i32.lt_u
                                  (local.tee $l3
                                    (i32.load offset=8
                                      (local.get $l6)))
                                  (local.get $l9)))
                              (i32.store offset=8
                                (local.get $p0)
                                (local.get $l3))
                              (i32.store offset=12
                                (local.get $l3)
                                (local.get $p0))
                              (br $B89))
                            (block $B91
                              (br_if $B91
                                (local.tee $l5
                                  (i32.load
                                    (local.tee $l3
                                      (i32.add
                                        (local.get $l6)
                                        (i32.const 20))))))
                              (br_if $B91
                                (local.tee $l5
                                  (i32.load
                                    (local.tee $l3
                                      (i32.add
                                        (local.get $l6)
                                        (i32.const 16))))))
                              (local.set $p0
                                (i32.const 0))
                              (br $B89))
                            (loop $L92
                              (local.set $l9
                                (local.get $l3))
                              (br_if $L92
                                (local.tee $l5
                                  (i32.load
                                    (local.tee $l3
                                      (i32.add
                                        (local.tee $p0
                                          (local.get $l5))
                                        (i32.const 20))))))
                              (local.set $l3
                                (i32.add
                                  (local.get $p0)
                                  (i32.const 16)))
                              (br_if $L92
                                (local.tee $l5
                                  (i32.load offset=16
                                    (local.get $p0)))))
                            (i32.store
                              (local.get $l9)
                              (i32.const 0)))
                          (br_if $B86
                            (i32.eqz
                              (local.get $l10)))
                          (block $B93
                            (block $B94
                              (br_if $B94
                                (i32.ne
                                  (local.get $l6)
                                  (i32.load
                                    (local.tee $l3
                                      (i32.add
                                        (i32.shl
                                          (local.tee $l5
                                            (i32.load offset=28
                                              (local.get $l6)))
                                          (i32.const 2))
                                        (i32.const 1056424))))))
                              (i32.store
                                (local.get $l3)
                                (local.get $p0))
                              (br_if $B93
                                (local.get $p0))
                              (i32.store offset=1056124
                                (i32.const 0)
                                (i32.and
                                  (i32.load offset=1056124
                                    (i32.const 0))
                                  (i32.rotl
                                    (i32.const -2)
                                    (local.get $l5))))
                              (br $B86))
                            (i32.store
                              (i32.add
                                (local.get $l10)
                                (select
                                  (i32.const 16)
                                  (i32.const 20)
                                  (i32.eq
                                    (i32.load offset=16
                                      (local.get $l10))
                                    (local.get $l6))))
                              (local.get $p0))
                            (br_if $B86
                              (i32.eqz
                                (local.get $p0))))
                          (i32.store offset=24
                            (local.get $p0)
                            (local.get $l10))
                          (block $B95
                            (br_if $B95
                              (i32.eqz
                                (local.tee $l3
                                  (i32.load offset=16
                                    (local.get $l6)))))
                            (i32.store offset=16
                              (local.get $p0)
                              (local.get $l3))
                            (i32.store offset=24
                              (local.get $l3)
                              (local.get $p0)))
                          (br_if $B86
                            (i32.eqz
                              (local.tee $l3
                                (i32.load offset=20
                                  (local.get $l6)))))
                          (i32.store
                            (i32.add
                              (local.get $p0)
                              (i32.const 20))
                            (local.get $l3))
                          (i32.store offset=24
                            (local.get $l3)
                            (local.get $p0)))
                        (local.set $l4
                          (i32.add
                            (local.get $l8)
                            (local.get $l4)))
                        (local.set $l3
                          (i32.load offset=4
                            (local.tee $l6
                              (i32.add
                                (local.get $l6)
                                (local.get $l8))))))
                      (i32.store offset=4
                        (local.get $l6)
                        (i32.and
                          (local.get $l3)
                          (i32.const -2)))
                      (i32.store
                        (i32.add
                          (local.get $l7)
                          (local.get $l4))
                        (local.get $l4))
                      (i32.store offset=4
                        (local.get $l7)
                        (i32.or
                          (local.get $l4)
                          (i32.const 1)))
                      (block $B96
                        (br_if $B96
                          (i32.gt_u
                            (local.get $l4)
                            (i32.const 255)))
                        (local.set $l3
                          (i32.add
                            (i32.and
                              (local.get $l4)
                              (i32.const -8))
                            (i32.const 1056160)))
                        (block $B97
                          (block $B98
                            (br_if $B98
                              (i32.and
                                (local.tee $l5
                                  (i32.load offset=1056120
                                    (i32.const 0)))
                                (local.tee $l4
                                  (i32.shl
                                    (i32.const 1)
                                    (i32.shr_u
                                      (local.get $l4)
                                      (i32.const 3))))))
                            (i32.store offset=1056120
                              (i32.const 0)
                              (i32.or
                                (local.get $l5)
                                (local.get $l4)))
                            (local.set $l4
                              (local.get $l3))
                            (br $B97))
                          (local.set $l4
                            (i32.load offset=8
                              (local.get $l3))))
                        (i32.store offset=12
                          (local.get $l4)
                          (local.get $l7))
                        (i32.store offset=8
                          (local.get $l3)
                          (local.get $l7))
                        (i32.store offset=12
                          (local.get $l7)
                          (local.get $l3))
                        (i32.store offset=8
                          (local.get $l7)
                          (local.get $l4))
                        (br $B74))
                      (local.set $l3
                        (i32.const 31))
                      (block $B99
                        (br_if $B99
                          (i32.gt_u
                            (local.get $l4)
                            (i32.const 16777215)))
                        (local.set $l3
                          (i32.add
                            (i32.sub
                              (i32.and
                                (i32.shr_u
                                  (local.get $l4)
                                  (i32.sub
                                    (i32.const 38)
                                    (local.tee $l3
                                      (i32.clz
                                        (i32.shr_u
                                          (local.get $l4)
                                          (i32.const 8))))))
                                (i32.const 1))
                              (i32.shl
                                (local.get $l3)
                                (i32.const 1)))
                            (i32.const 62))))
                      (i32.store offset=28
                        (local.get $l7)
                        (local.get $l3))
                      (i64.store offset=16 align=4
                        (local.get $l7)
                        (i64.const 0))
                      (local.set $l5
                        (i32.add
                          (i32.shl
                            (local.get $l3)
                            (i32.const 2))
                          (i32.const 1056424)))
                      (block $B100
                        (br_if $B100
                          (i32.and
                            (local.tee $p0
                              (i32.load offset=1056124
                                (i32.const 0)))
                            (local.tee $l9
                              (i32.shl
                                (i32.const 1)
                                (local.get $l3)))))
                        (i32.store
                          (local.get $l5)
                          (local.get $l7))
                        (i32.store offset=1056124
                          (i32.const 0)
                          (i32.or
                            (local.get $p0)
                            (local.get $l9)))
                        (i32.store offset=24
                          (local.get $l7)
                          (local.get $l5))
                        (i32.store offset=8
                          (local.get $l7)
                          (local.get $l7))
                        (i32.store offset=12
                          (local.get $l7)
                          (local.get $l7))
                        (br $B74))
                      (local.set $l3
                        (i32.shl
                          (local.get $l4)
                          (select
                            (i32.const 0)
                            (i32.sub
                              (i32.const 25)
                              (i32.shr_u
                                (local.get $l3)
                                (i32.const 1)))
                            (i32.eq
                              (local.get $l3)
                              (i32.const 31)))))
                      (local.set $p0
                        (i32.load
                          (local.get $l5)))
                      (loop $L101
                        (br_if $B75
                          (i32.eq
                            (i32.and
                              (i32.load offset=4
                                (local.tee $l5
                                  (local.get $p0)))
                              (i32.const -8))
                            (local.get $l4)))
                        (local.set $p0
                          (i32.shr_u
                            (local.get $l3)
                            (i32.const 29)))
                        (local.set $l3
                          (i32.shl
                            (local.get $l3)
                            (i32.const 1)))
                        (br_if $L101
                          (local.tee $p0
                            (i32.load
                              (local.tee $l9
                                (i32.add
                                  (i32.add
                                    (local.get $l5)
                                    (i32.and
                                      (local.get $p0)
                                      (i32.const 4)))
                                  (i32.const 16)))))))
                      (i32.store
                        (local.get $l9)
                        (local.get $l7))
                      (i32.store offset=24
                        (local.get $l7)
                        (local.get $l5))
                      (i32.store offset=12
                        (local.get $l7)
                        (local.get $l7))
                      (i32.store offset=8
                        (local.get $l7)
                        (local.get $l7))
                      (br $B74))
                    (i32.store offset=4
                      (local.tee $l2
                        (i32.add
                          (local.get $p0)
                          (local.tee $l4
                            (select
                              (i32.and
                                (i32.sub
                                  (i32.const -8)
                                  (local.get $p0))
                                (i32.const 15))
                              (i32.const 0)
                              (i32.and
                                (i32.add
                                  (local.get $p0)
                                  (i32.const 8))
                                (i32.const 15))))))
                      (i32.or
                        (local.tee $l4
                          (i32.sub
                            (local.tee $l9
                              (i32.add
                                (local.get $l6)
                                (i32.const -56)))
                            (local.get $l4)))
                        (i32.const 1)))
                    (i32.store offset=4
                      (i32.add
                        (local.get $p0)
                        (local.get $l9))
                      (i32.const 56))
                    (i32.store offset=4
                      (local.tee $l9
                        (select
                          (local.get $l3)
                          (local.tee $l9
                            (i32.add
                              (i32.add
                                (local.get $l5)
                                (select
                                  (i32.and
                                    (i32.sub
                                      (i32.const 55)
                                      (local.get $l5))
                                    (i32.const 15))
                                  (i32.const 0)
                                  (i32.and
                                    (i32.add
                                      (local.get $l5)
                                      (i32.const -55))
                                    (i32.const 15))))
                              (i32.const -63)))
                          (i32.lt_u
                            (local.get $l9)
                            (i32.add
                              (local.get $l3)
                              (i32.const 16)))))
                      (i32.const 35))
                    (i32.store offset=1056148
                      (i32.const 0)
                      (i32.load offset=1056608
                        (i32.const 0)))
                    (i32.store offset=1056132
                      (i32.const 0)
                      (local.get $l4))
                    (i32.store offset=1056144
                      (i32.const 0)
                      (local.get $l2))
                    (i64.store align=4
                      (i32.add
                        (local.get $l9)
                        (i32.const 16))
                      (i64.load offset=1056576 align=4
                        (i32.const 0)))
                    (i64.store offset=8 align=4
                      (local.get $l9)
                      (i64.load offset=1056568 align=4
                        (i32.const 0)))
                    (i32.store offset=1056576
                      (i32.const 0)
                      (i32.add
                        (local.get $l9)
                        (i32.const 8)))
                    (i32.store offset=1056572
                      (i32.const 0)
                      (local.get $l6))
                    (i32.store offset=1056568
                      (i32.const 0)
                      (local.get $p0))
                    (i32.store offset=1056580
                      (i32.const 0)
                      (i32.const 0))
                    (local.set $l4
                      (i32.add
                        (local.get $l9)
                        (i32.const 36)))
                    (loop $L102
                      (i32.store
                        (local.get $l4)
                        (i32.const 7))
                      (br_if $L102
                        (i32.lt_u
                          (local.tee $l4
                            (i32.add
                              (local.get $l4)
                              (i32.const 4)))
                          (local.get $l5))))
                    (br_if $B64
                      (i32.eq
                        (local.get $l9)
                        (local.get $l3)))
                    (i32.store offset=4
                      (local.get $l9)
                      (i32.and
                        (i32.load offset=4
                          (local.get $l9))
                        (i32.const -2)))
                    (i32.store
                      (local.get $l9)
                      (local.tee $p0
                        (i32.sub
                          (local.get $l9)
                          (local.get $l3))))
                    (i32.store offset=4
                      (local.get $l3)
                      (i32.or
                        (local.get $p0)
                        (i32.const 1)))
                    (block $B103
                      (br_if $B103
                        (i32.gt_u
                          (local.get $p0)
                          (i32.const 255)))
                      (local.set $l4
                        (i32.add
                          (i32.and
                            (local.get $p0)
                            (i32.const -8))
                          (i32.const 1056160)))
                      (block $B104
                        (block $B105
                          (br_if $B105
                            (i32.and
                              (local.tee $l5
                                (i32.load offset=1056120
                                  (i32.const 0)))
                              (local.tee $p0
                                (i32.shl
                                  (i32.const 1)
                                  (i32.shr_u
                                    (local.get $p0)
                                    (i32.const 3))))))
                          (i32.store offset=1056120
                            (i32.const 0)
                            (i32.or
                              (local.get $l5)
                              (local.get $p0)))
                          (local.set $l5
                            (local.get $l4))
                          (br $B104))
                        (local.set $l5
                          (i32.load offset=8
                            (local.get $l4))))
                      (i32.store offset=12
                        (local.get $l5)
                        (local.get $l3))
                      (i32.store offset=8
                        (local.get $l4)
                        (local.get $l3))
                      (i32.store offset=12
                        (local.get $l3)
                        (local.get $l4))
                      (i32.store offset=8
                        (local.get $l3)
                        (local.get $l5))
                      (br $B64))
                    (local.set $l4
                      (i32.const 31))
                    (block $B106
                      (br_if $B106
                        (i32.gt_u
                          (local.get $p0)
                          (i32.const 16777215)))
                      (local.set $l4
                        (i32.add
                          (i32.sub
                            (i32.and
                              (i32.shr_u
                                (local.get $p0)
                                (i32.sub
                                  (i32.const 38)
                                  (local.tee $l4
                                    (i32.clz
                                      (i32.shr_u
                                        (local.get $p0)
                                        (i32.const 8))))))
                              (i32.const 1))
                            (i32.shl
                              (local.get $l4)
                              (i32.const 1)))
                          (i32.const 62))))
                    (i32.store offset=28
                      (local.get $l3)
                      (local.get $l4))
                    (i64.store offset=16 align=4
                      (local.get $l3)
                      (i64.const 0))
                    (local.set $l5
                      (i32.add
                        (i32.shl
                          (local.get $l4)
                          (i32.const 2))
                        (i32.const 1056424)))
                    (block $B107
                      (br_if $B107
                        (i32.and
                          (local.tee $l9
                            (i32.load offset=1056124
                              (i32.const 0)))
                          (local.tee $l6
                            (i32.shl
                              (i32.const 1)
                              (local.get $l4)))))
                      (i32.store
                        (local.get $l5)
                        (local.get $l3))
                      (i32.store offset=1056124
                        (i32.const 0)
                        (i32.or
                          (local.get $l9)
                          (local.get $l6)))
                      (i32.store offset=24
                        (local.get $l3)
                        (local.get $l5))
                      (i32.store offset=8
                        (local.get $l3)
                        (local.get $l3))
                      (i32.store offset=12
                        (local.get $l3)
                        (local.get $l3))
                      (br $B64))
                    (local.set $l4
                      (i32.shl
                        (local.get $p0)
                        (select
                          (i32.const 0)
                          (i32.sub
                            (i32.const 25)
                            (i32.shr_u
                              (local.get $l4)
                              (i32.const 1)))
                          (i32.eq
                            (local.get $l4)
                            (i32.const 31)))))
                    (local.set $l9
                      (i32.load
                        (local.get $l5)))
                    (loop $L108
                      (br_if $B73
                        (i32.eq
                          (i32.and
                            (i32.load offset=4
                              (local.tee $l5
                                (local.get $l9)))
                            (i32.const -8))
                          (local.get $p0)))
                      (local.set $l9
                        (i32.shr_u
                          (local.get $l4)
                          (i32.const 29)))
                      (local.set $l4
                        (i32.shl
                          (local.get $l4)
                          (i32.const 1)))
                      (br_if $L108
                        (local.tee $l9
                          (i32.load
                            (local.tee $l6
                              (i32.add
                                (i32.add
                                  (local.get $l5)
                                  (i32.and
                                    (local.get $l9)
                                    (i32.const 4)))
                                (i32.const 16)))))))
                    (i32.store
                      (local.get $l6)
                      (local.get $l3))
                    (i32.store offset=24
                      (local.get $l3)
                      (local.get $l5))
                    (i32.store offset=12
                      (local.get $l3)
                      (local.get $l3))
                    (i32.store offset=8
                      (local.get $l3)
                      (local.get $l3))
                    (br $B64))
                  (i32.store offset=12
                    (local.tee $l4
                      (i32.load offset=8
                        (local.get $l5)))
                    (local.get $l7))
                  (i32.store offset=8
                    (local.get $l5)
                    (local.get $l7))
                  (i32.store offset=24
                    (local.get $l7)
                    (i32.const 0))
                  (i32.store offset=12
                    (local.get $l7)
                    (local.get $l5))
                  (i32.store offset=8
                    (local.get $l7)
                    (local.get $l4)))
                (local.set $l4
                  (i32.add
                    (local.get $l2)
                    (i32.const 8)))
                (br $B0))
              (i32.store offset=12
                (local.tee $l4
                  (i32.load offset=8
                    (local.get $l5)))
                (local.get $l3))
              (i32.store offset=8
                (local.get $l5)
                (local.get $l3))
              (i32.store offset=24
                (local.get $l3)
                (i32.const 0))
              (i32.store offset=12
                (local.get $l3)
                (local.get $l5))
              (i32.store offset=8
                (local.get $l3)
                (local.get $l4)))
            (br_if $B3
              (i32.le_u
                (local.tee $l4
                  (i32.load offset=1056132
                    (i32.const 0)))
                (local.get $l7)))
            (i32.store offset=4
              (local.tee $l5
                (i32.add
                  (local.tee $l3
                    (i32.load offset=1056144
                      (i32.const 0)))
                  (local.get $l7)))
              (i32.or
                (local.tee $l4
                  (i32.sub
                    (local.get $l4)
                    (local.get $l7)))
                (i32.const 1)))
            (i32.store offset=1056132
              (i32.const 0)
              (local.get $l4))
            (i32.store offset=1056144
              (i32.const 0)
              (local.get $l5))
            (i32.store offset=4
              (local.get $l3)
              (i32.or
                (local.get $l7)
                (i32.const 3)))
            (local.set $l4
              (i32.add
                (local.get $l3)
                (i32.const 8)))
            (br $B0))
          (local.set $l4
            (i32.const 0))
          (i32.store offset=1056616
            (i32.const 0)
            (i32.const 48))
          (br $B0))
        (block $B109
          (br_if $B109
            (i32.eqz
              (local.get $l2)))
          (block $B110
            (block $B111
              (br_if $B111
                (i32.ne
                  (local.get $l9)
                  (i32.load
                    (local.tee $l4
                      (i32.add
                        (i32.shl
                          (local.tee $l5
                            (i32.load offset=28
                              (local.get $l9)))
                          (i32.const 2))
                        (i32.const 1056424))))))
              (i32.store
                (local.get $l4)
                (local.get $p0))
              (br_if $B110
                (local.get $p0))
              (i32.store offset=1056124
                (i32.const 0)
                (local.tee $l10
                  (i32.and
                    (local.get $l10)
                    (i32.rotl
                      (i32.const -2)
                      (local.get $l5)))))
              (br $B109))
            (i32.store
              (i32.add
                (local.get $l2)
                (select
                  (i32.const 16)
                  (i32.const 20)
                  (i32.eq
                    (i32.load offset=16
                      (local.get $l2))
                    (local.get $l9))))
              (local.get $p0))
            (br_if $B109
              (i32.eqz
                (local.get $p0))))
          (i32.store offset=24
            (local.get $p0)
            (local.get $l2))
          (block $B112
            (br_if $B112
              (i32.eqz
                (local.tee $l4
                  (i32.load offset=16
                    (local.get $l9)))))
            (i32.store offset=16
              (local.get $p0)
              (local.get $l4))
            (i32.store offset=24
              (local.get $l4)
              (local.get $p0)))
          (br_if $B109
            (i32.eqz
              (local.tee $l4
                (i32.load
                  (i32.add
                    (local.get $l9)
                    (i32.const 20))))))
          (i32.store
            (i32.add
              (local.get $p0)
              (i32.const 20))
            (local.get $l4))
          (i32.store offset=24
            (local.get $l4)
            (local.get $p0)))
        (block $B113
          (block $B114
            (br_if $B114
              (i32.gt_u
                (local.get $l3)
                (i32.const 15)))
            (i32.store offset=4
              (local.get $l9)
              (i32.or
                (local.tee $l4
                  (i32.add
                    (local.get $l3)
                    (local.get $l7)))
                (i32.const 3)))
            (i32.store offset=4
              (local.tee $l4
                (i32.add
                  (local.get $l9)
                  (local.get $l4)))
              (i32.or
                (i32.load offset=4
                  (local.get $l4))
                (i32.const 1)))
            (br $B113))
          (i32.store offset=4
            (local.tee $p0
              (i32.add
                (local.get $l9)
                (local.get $l7)))
            (i32.or
              (local.get $l3)
              (i32.const 1)))
          (i32.store offset=4
            (local.get $l9)
            (i32.or
              (local.get $l7)
              (i32.const 3)))
          (i32.store
            (i32.add
              (local.get $p0)
              (local.get $l3))
            (local.get $l3))
          (block $B115
            (br_if $B115
              (i32.gt_u
                (local.get $l3)
                (i32.const 255)))
            (local.set $l4
              (i32.add
                (i32.and
                  (local.get $l3)
                  (i32.const -8))
                (i32.const 1056160)))
            (block $B116
              (block $B117
                (br_if $B117
                  (i32.and
                    (local.tee $l5
                      (i32.load offset=1056120
                        (i32.const 0)))
                    (local.tee $l3
                      (i32.shl
                        (i32.const 1)
                        (i32.shr_u
                          (local.get $l3)
                          (i32.const 3))))))
                (i32.store offset=1056120
                  (i32.const 0)
                  (i32.or
                    (local.get $l5)
                    (local.get $l3)))
                (local.set $l3
                  (local.get $l4))
                (br $B116))
              (local.set $l3
                (i32.load offset=8
                  (local.get $l4))))
            (i32.store offset=12
              (local.get $l3)
              (local.get $p0))
            (i32.store offset=8
              (local.get $l4)
              (local.get $p0))
            (i32.store offset=12
              (local.get $p0)
              (local.get $l4))
            (i32.store offset=8
              (local.get $p0)
              (local.get $l3))
            (br $B113))
          (local.set $l4
            (i32.const 31))
          (block $B118
            (br_if $B118
              (i32.gt_u
                (local.get $l3)
                (i32.const 16777215)))
            (local.set $l4
              (i32.add
                (i32.sub
                  (i32.and
                    (i32.shr_u
                      (local.get $l3)
                      (i32.sub
                        (i32.const 38)
                        (local.tee $l4
                          (i32.clz
                            (i32.shr_u
                              (local.get $l3)
                              (i32.const 8))))))
                    (i32.const 1))
                  (i32.shl
                    (local.get $l4)
                    (i32.const 1)))
                (i32.const 62))))
          (i32.store offset=28
            (local.get $p0)
            (local.get $l4))
          (i64.store offset=16 align=4
            (local.get $p0)
            (i64.const 0))
          (local.set $l5
            (i32.add
              (i32.shl
                (local.get $l4)
                (i32.const 2))
              (i32.const 1056424)))
          (block $B119
            (br_if $B119
              (i32.and
                (local.get $l10)
                (local.tee $l7
                  (i32.shl
                    (i32.const 1)
                    (local.get $l4)))))
            (i32.store
              (local.get $l5)
              (local.get $p0))
            (i32.store offset=1056124
              (i32.const 0)
              (i32.or
                (local.get $l10)
                (local.get $l7)))
            (i32.store offset=24
              (local.get $p0)
              (local.get $l5))
            (i32.store offset=8
              (local.get $p0)
              (local.get $p0))
            (i32.store offset=12
              (local.get $p0)
              (local.get $p0))
            (br $B113))
          (local.set $l4
            (i32.shl
              (local.get $l3)
              (select
                (i32.const 0)
                (i32.sub
                  (i32.const 25)
                  (i32.shr_u
                    (local.get $l4)
                    (i32.const 1)))
                (i32.eq
                  (local.get $l4)
                  (i32.const 31)))))
          (local.set $l7
            (i32.load
              (local.get $l5)))
          (block $B120
            (loop $L121
              (br_if $B120
                (i32.eq
                  (i32.and
                    (i32.load offset=4
                      (local.tee $l5
                        (local.get $l7)))
                    (i32.const -8))
                  (local.get $l3)))
              (local.set $l7
                (i32.shr_u
                  (local.get $l4)
                  (i32.const 29)))
              (local.set $l4
                (i32.shl
                  (local.get $l4)
                  (i32.const 1)))
              (br_if $L121
                (local.tee $l7
                  (i32.load
                    (local.tee $l6
                      (i32.add
                        (i32.add
                          (local.get $l5)
                          (i32.and
                            (local.get $l7)
                            (i32.const 4)))
                        (i32.const 16)))))))
            (i32.store
              (local.get $l6)
              (local.get $p0))
            (i32.store offset=24
              (local.get $p0)
              (local.get $l5))
            (i32.store offset=12
              (local.get $p0)
              (local.get $p0))
            (i32.store offset=8
              (local.get $p0)
              (local.get $p0))
            (br $B113))
          (i32.store offset=12
            (local.tee $l4
              (i32.load offset=8
                (local.get $l5)))
            (local.get $p0))
          (i32.store offset=8
            (local.get $l5)
            (local.get $p0))
          (i32.store offset=24
            (local.get $p0)
            (i32.const 0))
          (i32.store offset=12
            (local.get $p0)
            (local.get $l5))
          (i32.store offset=8
            (local.get $p0)
            (local.get $l4)))
        (local.set $l4
          (i32.add
            (local.get $l9)
            (i32.const 8)))
        (br $B0))
      (block $B122
        (br_if $B122
          (i32.eqz
            (local.get $l11)))
        (block $B123
          (block $B124
            (br_if $B124
              (i32.ne
                (local.get $p0)
                (i32.load
                  (local.tee $l4
                    (i32.add
                      (i32.shl
                        (local.tee $l5
                          (i32.load offset=28
                            (local.get $p0)))
                        (i32.const 2))
                      (i32.const 1056424))))))
            (i32.store
              (local.get $l4)
              (local.get $l9))
            (br_if $B123
              (local.get $l9))
            (i32.store offset=1056124
              (i32.const 0)
              (i32.and
                (local.get $l10)
                (i32.rotl
                  (i32.const -2)
                  (local.get $l5))))
            (br $B122))
          (i32.store
            (i32.add
              (local.get $l11)
              (select
                (i32.const 16)
                (i32.const 20)
                (i32.eq
                  (i32.load offset=16
                    (local.get $l11))
                  (local.get $p0))))
            (local.get $l9))
          (br_if $B122
            (i32.eqz
              (local.get $l9))))
        (i32.store offset=24
          (local.get $l9)
          (local.get $l11))
        (block $B125
          (br_if $B125
            (i32.eqz
              (local.tee $l4
                (i32.load offset=16
                  (local.get $p0)))))
          (i32.store offset=16
            (local.get $l9)
            (local.get $l4))
          (i32.store offset=24
            (local.get $l4)
            (local.get $l9)))
        (br_if $B122
          (i32.eqz
            (local.tee $l4
              (i32.load
                (i32.add
                  (local.get $p0)
                  (i32.const 20))))))
        (i32.store
          (i32.add
            (local.get $l9)
            (i32.const 20))
          (local.get $l4))
        (i32.store offset=24
          (local.get $l4)
          (local.get $l9)))
      (block $B126
        (block $B127
          (br_if $B127
            (i32.gt_u
              (local.get $l3)
              (i32.const 15)))
          (i32.store offset=4
            (local.get $p0)
            (i32.or
              (local.tee $l4
                (i32.add
                  (local.get $l3)
                  (local.get $l7)))
              (i32.const 3)))
          (i32.store offset=4
            (local.tee $l4
              (i32.add
                (local.get $p0)
                (local.get $l4)))
            (i32.or
              (i32.load offset=4
                (local.get $l4))
              (i32.const 1)))
          (br $B126))
        (i32.store offset=4
          (local.tee $l5
            (i32.add
              (local.get $p0)
              (local.get $l7)))
          (i32.or
            (local.get $l3)
            (i32.const 1)))
        (i32.store offset=4
          (local.get $p0)
          (i32.or
            (local.get $l7)
            (i32.const 3)))
        (i32.store
          (i32.add
            (local.get $l5)
            (local.get $l3))
          (local.get $l3))
        (block $B128
          (br_if $B128
            (i32.eqz
              (local.get $l8)))
          (local.set $l7
            (i32.add
              (i32.and
                (local.get $l8)
                (i32.const -8))
              (i32.const 1056160)))
          (local.set $l4
            (i32.load offset=1056140
              (i32.const 0)))
          (block $B129
            (block $B130
              (br_if $B130
                (i32.and
                  (local.tee $l9
                    (i32.shl
                      (i32.const 1)
                      (i32.shr_u
                        (local.get $l8)
                        (i32.const 3))))
                  (local.get $l6)))
              (i32.store offset=1056120
                (i32.const 0)
                (i32.or
                  (local.get $l9)
                  (local.get $l6)))
              (local.set $l9
                (local.get $l7))
              (br $B129))
            (local.set $l9
              (i32.load offset=8
                (local.get $l7))))
          (i32.store offset=12
            (local.get $l9)
            (local.get $l4))
          (i32.store offset=8
            (local.get $l7)
            (local.get $l4))
          (i32.store offset=12
            (local.get $l4)
            (local.get $l7))
          (i32.store offset=8
            (local.get $l4)
            (local.get $l9)))
        (i32.store offset=1056140
          (i32.const 0)
          (local.get $l5))
        (i32.store offset=1056128
          (i32.const 0)
          (local.get $l3)))
      (local.set $l4
        (i32.add
          (local.get $p0)
          (i32.const 8))))
    (global.set $__stack_pointer
      (i32.add
        (local.get $l1)
        (i32.const 16)))
    (local.get $l4))
  (func $free (type $t1) (param $p0 i32)
    (call $dlfree
      (local.get $p0)))
  (func $dlfree (type $t1) (param $p0 i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32)
    (block $B0
      (br_if $B0
        (i32.eqz
          (local.get $p0)))
      (local.set $l3
        (i32.add
          (local.tee $l1
            (i32.add
              (local.get $p0)
              (i32.const -8)))
          (local.tee $p0
            (i32.and
              (local.tee $l2
                (i32.load
                  (i32.add
                    (local.get $p0)
                    (i32.const -4))))
              (i32.const -8)))))
      (block $B1
        (br_if $B1
          (i32.and
            (local.get $l2)
            (i32.const 1)))
        (br_if $B0
          (i32.eqz
            (i32.and
              (local.get $l2)
              (i32.const 3))))
        (br_if $B0
          (i32.lt_u
            (local.tee $l1
              (i32.sub
                (local.get $l1)
                (local.tee $l2
                  (i32.load
                    (local.get $l1)))))
            (local.tee $l4
              (i32.load offset=1056136
                (i32.const 0)))))
        (local.set $p0
          (i32.add
            (local.get $l2)
            (local.get $p0)))
        (block $B2
          (br_if $B2
            (i32.eq
              (local.get $l1)
              (i32.load offset=1056140
                (i32.const 0))))
          (block $B3
            (br_if $B3
              (i32.gt_u
                (local.get $l2)
                (i32.const 255)))
            (drop
              (i32.eq
                (local.tee $l4
                  (i32.load offset=8
                    (local.get $l1)))
                (local.tee $l6
                  (i32.add
                    (i32.shl
                      (local.tee $l5
                        (i32.shr_u
                          (local.get $l2)
                          (i32.const 3)))
                      (i32.const 3))
                    (i32.const 1056160)))))
            (block $B4
              (br_if $B4
                (i32.ne
                  (local.tee $l2
                    (i32.load offset=12
                      (local.get $l1)))
                  (local.get $l4)))
              (i32.store offset=1056120
                (i32.const 0)
                (i32.and
                  (i32.load offset=1056120
                    (i32.const 0))
                  (i32.rotl
                    (i32.const -2)
                    (local.get $l5))))
              (br $B1))
            (drop
              (i32.eq
                (local.get $l2)
                (local.get $l6)))
            (i32.store offset=8
              (local.get $l2)
              (local.get $l4))
            (i32.store offset=12
              (local.get $l4)
              (local.get $l2))
            (br $B1))
          (local.set $l7
            (i32.load offset=24
              (local.get $l1)))
          (block $B5
            (block $B6
              (br_if $B6
                (i32.eq
                  (local.tee $l6
                    (i32.load offset=12
                      (local.get $l1)))
                  (local.get $l1)))
              (drop
                (i32.lt_u
                  (local.tee $l2
                    (i32.load offset=8
                      (local.get $l1)))
                  (local.get $l4)))
              (i32.store offset=8
                (local.get $l6)
                (local.get $l2))
              (i32.store offset=12
                (local.get $l2)
                (local.get $l6))
              (br $B5))
            (block $B7
              (br_if $B7
                (local.tee $l4
                  (i32.load
                    (local.tee $l2
                      (i32.add
                        (local.get $l1)
                        (i32.const 20))))))
              (br_if $B7
                (local.tee $l4
                  (i32.load
                    (local.tee $l2
                      (i32.add
                        (local.get $l1)
                        (i32.const 16))))))
              (local.set $l6
                (i32.const 0))
              (br $B5))
            (loop $L8
              (local.set $l5
                (local.get $l2))
              (br_if $L8
                (local.tee $l4
                  (i32.load
                    (local.tee $l2
                      (i32.add
                        (local.tee $l6
                          (local.get $l4))
                        (i32.const 20))))))
              (local.set $l2
                (i32.add
                  (local.get $l6)
                  (i32.const 16)))
              (br_if $L8
                (local.tee $l4
                  (i32.load offset=16
                    (local.get $l6)))))
            (i32.store
              (local.get $l5)
              (i32.const 0)))
          (br_if $B1
            (i32.eqz
              (local.get $l7)))
          (block $B9
            (block $B10
              (br_if $B10
                (i32.ne
                  (local.get $l1)
                  (i32.load
                    (local.tee $l2
                      (i32.add
                        (i32.shl
                          (local.tee $l4
                            (i32.load offset=28
                              (local.get $l1)))
                          (i32.const 2))
                        (i32.const 1056424))))))
              (i32.store
                (local.get $l2)
                (local.get $l6))
              (br_if $B9
                (local.get $l6))
              (i32.store offset=1056124
                (i32.const 0)
                (i32.and
                  (i32.load offset=1056124
                    (i32.const 0))
                  (i32.rotl
                    (i32.const -2)
                    (local.get $l4))))
              (br $B1))
            (i32.store
              (i32.add
                (local.get $l7)
                (select
                  (i32.const 16)
                  (i32.const 20)
                  (i32.eq
                    (i32.load offset=16
                      (local.get $l7))
                    (local.get $l1))))
              (local.get $l6))
            (br_if $B1
              (i32.eqz
                (local.get $l6))))
          (i32.store offset=24
            (local.get $l6)
            (local.get $l7))
          (block $B11
            (br_if $B11
              (i32.eqz
                (local.tee $l2
                  (i32.load offset=16
                    (local.get $l1)))))
            (i32.store offset=16
              (local.get $l6)
              (local.get $l2))
            (i32.store offset=24
              (local.get $l2)
              (local.get $l6)))
          (br_if $B1
            (i32.eqz
              (local.tee $l2
                (i32.load offset=20
                  (local.get $l1)))))
          (i32.store
            (i32.add
              (local.get $l6)
              (i32.const 20))
            (local.get $l2))
          (i32.store offset=24
            (local.get $l2)
            (local.get $l6))
          (br $B1))
        (br_if $B1
          (i32.ne
            (i32.and
              (local.tee $l2
                (i32.load offset=4
                  (local.get $l3)))
              (i32.const 3))
            (i32.const 3)))
        (i32.store offset=4
          (local.get $l3)
          (i32.and
            (local.get $l2)
            (i32.const -2)))
        (i32.store offset=1056128
          (i32.const 0)
          (local.get $p0))
        (i32.store
          (i32.add
            (local.get $l1)
            (local.get $p0))
          (local.get $p0))
        (i32.store offset=4
          (local.get $l1)
          (i32.or
            (local.get $p0)
            (i32.const 1)))
        (return))
      (br_if $B0
        (i32.ge_u
          (local.get $l1)
          (local.get $l3)))
      (br_if $B0
        (i32.eqz
          (i32.and
            (local.tee $l2
              (i32.load offset=4
                (local.get $l3)))
            (i32.const 1))))
      (block $B12
        (block $B13
          (br_if $B13
            (i32.and
              (local.get $l2)
              (i32.const 2)))
          (block $B14
            (br_if $B14
              (i32.ne
                (local.get $l3)
                (i32.load offset=1056144
                  (i32.const 0))))
            (i32.store offset=1056144
              (i32.const 0)
              (local.get $l1))
            (i32.store offset=1056132
              (i32.const 0)
              (local.tee $p0
                (i32.add
                  (i32.load offset=1056132
                    (i32.const 0))
                  (local.get $p0))))
            (i32.store offset=4
              (local.get $l1)
              (i32.or
                (local.get $p0)
                (i32.const 1)))
            (br_if $B0
              (i32.ne
                (local.get $l1)
                (i32.load offset=1056140
                  (i32.const 0))))
            (i32.store offset=1056128
              (i32.const 0)
              (i32.const 0))
            (i32.store offset=1056140
              (i32.const 0)
              (i32.const 0))
            (return))
          (block $B15
            (br_if $B15
              (i32.ne
                (local.get $l3)
                (i32.load offset=1056140
                  (i32.const 0))))
            (i32.store offset=1056140
              (i32.const 0)
              (local.get $l1))
            (i32.store offset=1056128
              (i32.const 0)
              (local.tee $p0
                (i32.add
                  (i32.load offset=1056128
                    (i32.const 0))
                  (local.get $p0))))
            (i32.store offset=4
              (local.get $l1)
              (i32.or
                (local.get $p0)
                (i32.const 1)))
            (i32.store
              (i32.add
                (local.get $l1)
                (local.get $p0))
              (local.get $p0))
            (return))
          (local.set $p0
            (i32.add
              (i32.and
                (local.get $l2)
                (i32.const -8))
              (local.get $p0)))
          (block $B16
            (block $B17
              (br_if $B17
                (i32.gt_u
                  (local.get $l2)
                  (i32.const 255)))
              (drop
                (i32.eq
                  (local.tee $l4
                    (i32.load offset=8
                      (local.get $l3)))
                  (local.tee $l6
                    (i32.add
                      (i32.shl
                        (local.tee $l5
                          (i32.shr_u
                            (local.get $l2)
                            (i32.const 3)))
                        (i32.const 3))
                      (i32.const 1056160)))))
              (block $B18
                (br_if $B18
                  (i32.ne
                    (local.tee $l2
                      (i32.load offset=12
                        (local.get $l3)))
                    (local.get $l4)))
                (i32.store offset=1056120
                  (i32.const 0)
                  (i32.and
                    (i32.load offset=1056120
                      (i32.const 0))
                    (i32.rotl
                      (i32.const -2)
                      (local.get $l5))))
                (br $B16))
              (drop
                (i32.eq
                  (local.get $l2)
                  (local.get $l6)))
              (i32.store offset=8
                (local.get $l2)
                (local.get $l4))
              (i32.store offset=12
                (local.get $l4)
                (local.get $l2))
              (br $B16))
            (local.set $l7
              (i32.load offset=24
                (local.get $l3)))
            (block $B19
              (block $B20
                (br_if $B20
                  (i32.eq
                    (local.tee $l6
                      (i32.load offset=12
                        (local.get $l3)))
                    (local.get $l3)))
                (drop
                  (i32.lt_u
                    (local.tee $l2
                      (i32.load offset=8
                        (local.get $l3)))
                    (i32.load offset=1056136
                      (i32.const 0))))
                (i32.store offset=8
                  (local.get $l6)
                  (local.get $l2))
                (i32.store offset=12
                  (local.get $l2)
                  (local.get $l6))
                (br $B19))
              (block $B21
                (br_if $B21
                  (local.tee $l4
                    (i32.load
                      (local.tee $l2
                        (i32.add
                          (local.get $l3)
                          (i32.const 20))))))
                (br_if $B21
                  (local.tee $l4
                    (i32.load
                      (local.tee $l2
                        (i32.add
                          (local.get $l3)
                          (i32.const 16))))))
                (local.set $l6
                  (i32.const 0))
                (br $B19))
              (loop $L22
                (local.set $l5
                  (local.get $l2))
                (br_if $L22
                  (local.tee $l4
                    (i32.load
                      (local.tee $l2
                        (i32.add
                          (local.tee $l6
                            (local.get $l4))
                          (i32.const 20))))))
                (local.set $l2
                  (i32.add
                    (local.get $l6)
                    (i32.const 16)))
                (br_if $L22
                  (local.tee $l4
                    (i32.load offset=16
                      (local.get $l6)))))
              (i32.store
                (local.get $l5)
                (i32.const 0)))
            (br_if $B16
              (i32.eqz
                (local.get $l7)))
            (block $B23
              (block $B24
                (br_if $B24
                  (i32.ne
                    (local.get $l3)
                    (i32.load
                      (local.tee $l2
                        (i32.add
                          (i32.shl
                            (local.tee $l4
                              (i32.load offset=28
                                (local.get $l3)))
                            (i32.const 2))
                          (i32.const 1056424))))))
                (i32.store
                  (local.get $l2)
                  (local.get $l6))
                (br_if $B23
                  (local.get $l6))
                (i32.store offset=1056124
                  (i32.const 0)
                  (i32.and
                    (i32.load offset=1056124
                      (i32.const 0))
                    (i32.rotl
                      (i32.const -2)
                      (local.get $l4))))
                (br $B16))
              (i32.store
                (i32.add
                  (local.get $l7)
                  (select
                    (i32.const 16)
                    (i32.const 20)
                    (i32.eq
                      (i32.load offset=16
                        (local.get $l7))
                      (local.get $l3))))
                (local.get $l6))
              (br_if $B16
                (i32.eqz
                  (local.get $l6))))
            (i32.store offset=24
              (local.get $l6)
              (local.get $l7))
            (block $B25
              (br_if $B25
                (i32.eqz
                  (local.tee $l2
                    (i32.load offset=16
                      (local.get $l3)))))
              (i32.store offset=16
                (local.get $l6)
                (local.get $l2))
              (i32.store offset=24
                (local.get $l2)
                (local.get $l6)))
            (br_if $B16
              (i32.eqz
                (local.tee $l2
                  (i32.load offset=20
                    (local.get $l3)))))
            (i32.store
              (i32.add
                (local.get $l6)
                (i32.const 20))
              (local.get $l2))
            (i32.store offset=24
              (local.get $l2)
              (local.get $l6)))
          (i32.store
            (i32.add
              (local.get $l1)
              (local.get $p0))
            (local.get $p0))
          (i32.store offset=4
            (local.get $l1)
            (i32.or
              (local.get $p0)
              (i32.const 1)))
          (br_if $B12
            (i32.ne
              (local.get $l1)
              (i32.load offset=1056140
                (i32.const 0))))
          (i32.store offset=1056128
            (i32.const 0)
            (local.get $p0))
          (return))
        (i32.store offset=4
          (local.get $l3)
          (i32.and
            (local.get $l2)
            (i32.const -2)))
        (i32.store
          (i32.add
            (local.get $l1)
            (local.get $p0))
          (local.get $p0))
        (i32.store offset=4
          (local.get $l1)
          (i32.or
            (local.get $p0)
            (i32.const 1))))
      (block $B26
        (br_if $B26
          (i32.gt_u
            (local.get $p0)
            (i32.const 255)))
        (local.set $l2
          (i32.add
            (i32.and
              (local.get $p0)
              (i32.const -8))
            (i32.const 1056160)))
        (block $B27
          (block $B28
            (br_if $B28
              (i32.and
                (local.tee $l4
                  (i32.load offset=1056120
                    (i32.const 0)))
                (local.tee $p0
                  (i32.shl
                    (i32.const 1)
                    (i32.shr_u
                      (local.get $p0)
                      (i32.const 3))))))
            (i32.store offset=1056120
              (i32.const 0)
              (i32.or
                (local.get $l4)
                (local.get $p0)))
            (local.set $p0
              (local.get $l2))
            (br $B27))
          (local.set $p0
            (i32.load offset=8
              (local.get $l2))))
        (i32.store offset=12
          (local.get $p0)
          (local.get $l1))
        (i32.store offset=8
          (local.get $l2)
          (local.get $l1))
        (i32.store offset=12
          (local.get $l1)
          (local.get $l2))
        (i32.store offset=8
          (local.get $l1)
          (local.get $p0))
        (return))
      (local.set $l2
        (i32.const 31))
      (block $B29
        (br_if $B29
          (i32.gt_u
            (local.get $p0)
            (i32.const 16777215)))
        (local.set $l2
          (i32.add
            (i32.sub
              (i32.and
                (i32.shr_u
                  (local.get $p0)
                  (i32.sub
                    (i32.const 38)
                    (local.tee $l2
                      (i32.clz
                        (i32.shr_u
                          (local.get $p0)
                          (i32.const 8))))))
                (i32.const 1))
              (i32.shl
                (local.get $l2)
                (i32.const 1)))
            (i32.const 62))))
      (i32.store offset=28
        (local.get $l1)
        (local.get $l2))
      (i64.store offset=16 align=4
        (local.get $l1)
        (i64.const 0))
      (local.set $l4
        (i32.add
          (i32.shl
            (local.get $l2)
            (i32.const 2))
          (i32.const 1056424)))
      (block $B30
        (block $B31
          (br_if $B31
            (i32.and
              (local.tee $l6
                (i32.load offset=1056124
                  (i32.const 0)))
              (local.tee $l3
                (i32.shl
                  (i32.const 1)
                  (local.get $l2)))))
          (i32.store
            (local.get $l4)
            (local.get $l1))
          (i32.store offset=1056124
            (i32.const 0)
            (i32.or
              (local.get $l6)
              (local.get $l3)))
          (i32.store offset=24
            (local.get $l1)
            (local.get $l4))
          (i32.store offset=8
            (local.get $l1)
            (local.get $l1))
          (i32.store offset=12
            (local.get $l1)
            (local.get $l1))
          (br $B30))
        (local.set $l2
          (i32.shl
            (local.get $p0)
            (select
              (i32.const 0)
              (i32.sub
                (i32.const 25)
                (i32.shr_u
                  (local.get $l2)
                  (i32.const 1)))
              (i32.eq
                (local.get $l2)
                (i32.const 31)))))
        (local.set $l6
          (i32.load
            (local.get $l4)))
        (block $B32
          (loop $L33
            (br_if $B32
              (i32.eq
                (i32.and
                  (i32.load offset=4
                    (local.tee $l4
                      (local.get $l6)))
                  (i32.const -8))
                (local.get $p0)))
            (local.set $l6
              (i32.shr_u
                (local.get $l2)
                (i32.const 29)))
            (local.set $l2
              (i32.shl
                (local.get $l2)
                (i32.const 1)))
            (br_if $L33
              (local.tee $l6
                (i32.load
                  (local.tee $l3
                    (i32.add
                      (i32.add
                        (local.get $l4)
                        (i32.and
                          (local.get $l6)
                          (i32.const 4)))
                      (i32.const 16)))))))
          (i32.store
            (local.get $l3)
            (local.get $l1))
          (i32.store offset=24
            (local.get $l1)
            (local.get $l4))
          (i32.store offset=12
            (local.get $l1)
            (local.get $l1))
          (i32.store offset=8
            (local.get $l1)
            (local.get $l1))
          (br $B30))
        (i32.store offset=12
          (local.tee $p0
            (i32.load offset=8
              (local.get $l4)))
          (local.get $l1))
        (i32.store offset=8
          (local.get $l4)
          (local.get $l1))
        (i32.store offset=24
          (local.get $l1)
          (i32.const 0))
        (i32.store offset=12
          (local.get $l1)
          (local.get $l4))
        (i32.store offset=8
          (local.get $l1)
          (local.get $p0)))
      (i32.store offset=1056152
        (i32.const 0)
        (select
          (local.tee $l1
            (i32.add
              (i32.load offset=1056152
                (i32.const 0))
              (i32.const -1)))
          (i32.const -1)
          (local.get $l1)))))
  (func $calloc (type $t4) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i64)
    (block $B0
      (block $B1
        (br_if $B1
          (local.get $p0))
        (local.set $l2
          (i32.const 0))
        (br $B0))
      (local.set $l2
        (i32.wrap_i64
          (local.tee $l3
            (i64.mul
              (i64.extend_i32_u
                (local.get $p0))
              (i64.extend_i32_u
                (local.get $p1))))))
      (br_if $B0
        (i32.lt_u
          (i32.or
            (local.get $p1)
            (local.get $p0))
          (i32.const 65536)))
      (local.set $l2
        (select
          (i32.const -1)
          (local.get $l2)
          (i32.ne
            (i32.wrap_i64
              (i64.shr_u
                (local.get $l3)
                (i64.const 32)))
            (i32.const 0)))))
    (block $B2
      (br_if $B2
        (i32.eqz
          (local.tee $p0
            (call $dlmalloc
              (local.get $l2)))))
      (br_if $B2
        (i32.eqz
          (i32.and
            (i32.load8_u
              (i32.add
                (local.get $p0)
                (i32.const -4)))
            (i32.const 3))))
      (drop
        (call $memset
          (local.get $p0)
          (i32.const 0)
          (local.get $l2))))
    (local.get $p0))
  (func $realloc (type $t4) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32)
    (block $B0
      (br_if $B0
        (local.get $p0))
      (return
        (call $dlmalloc
          (local.get $p1))))
    (block $B1
      (br_if $B1
        (i32.lt_u
          (local.get $p1)
          (i32.const -64)))
      (i32.store offset=1056616
        (i32.const 0)
        (i32.const 48))
      (return
        (i32.const 0)))
    (local.set $l2
      (select
        (i32.const 16)
        (i32.and
          (i32.add
            (local.get $p1)
            (i32.const 19))
          (i32.const -16))
        (i32.lt_u
          (local.get $p1)
          (i32.const 11))))
    (local.set $l5
      (i32.and
        (local.tee $l4
          (i32.load
            (local.tee $l3
              (i32.add
                (local.get $p0)
                (i32.const -4)))))
        (i32.const -8)))
    (block $B2
      (block $B3
        (block $B4
          (br_if $B4
            (i32.and
              (local.get $l4)
              (i32.const 3)))
          (br_if $B3
            (i32.lt_u
              (local.get $l2)
              (i32.const 256)))
          (br_if $B3
            (i32.lt_u
              (local.get $l5)
              (i32.or
                (local.get $l2)
                (i32.const 4))))
          (br_if $B2
            (i32.le_u
              (i32.sub
                (local.get $l5)
                (local.get $l2))
              (i32.shl
                (i32.load offset=1056600
                  (i32.const 0))
                (i32.const 1))))
          (br $B3))
        (local.set $l7
          (i32.add
            (local.tee $l6
              (i32.add
                (local.get $p0)
                (i32.const -8)))
            (local.get $l5)))
        (block $B5
          (br_if $B5
            (i32.lt_u
              (local.get $l5)
              (local.get $l2)))
          (br_if $B2
            (i32.lt_u
              (local.tee $p1
                (i32.sub
                  (local.get $l5)
                  (local.get $l2)))
              (i32.const 16)))
          (i32.store
            (local.get $l3)
            (i32.or
              (i32.or
                (local.get $l2)
                (i32.and
                  (local.get $l4)
                  (i32.const 1)))
              (i32.const 2)))
          (i32.store offset=4
            (local.tee $l2
              (i32.add
                (local.get $l6)
                (local.get $l2)))
            (i32.or
              (local.get $p1)
              (i32.const 3)))
          (i32.store offset=4
            (local.get $l7)
            (i32.or
              (i32.load offset=4
                (local.get $l7))
              (i32.const 1)))
          (call $dispose_chunk
            (local.get $l2)
            (local.get $p1))
          (return
            (local.get $p0)))
        (block $B6
          (br_if $B6
            (i32.ne
              (local.get $l7)
              (i32.load offset=1056144
                (i32.const 0))))
          (br_if $B3
            (i32.le_u
              (local.tee $l5
                (i32.add
                  (i32.load offset=1056132
                    (i32.const 0))
                  (local.get $l5)))
              (local.get $l2)))
          (i32.store
            (local.get $l3)
            (i32.or
              (i32.or
                (local.get $l2)
                (i32.and
                  (local.get $l4)
                  (i32.const 1)))
              (i32.const 2)))
          (i32.store offset=1056144
            (i32.const 0)
            (local.tee $p1
              (i32.add
                (local.get $l6)
                (local.get $l2))))
          (i32.store offset=1056132
            (i32.const 0)
            (local.tee $l2
              (i32.sub
                (local.get $l5)
                (local.get $l2))))
          (i32.store offset=4
            (local.get $p1)
            (i32.or
              (local.get $l2)
              (i32.const 1)))
          (return
            (local.get $p0)))
        (block $B7
          (br_if $B7
            (i32.ne
              (local.get $l7)
              (i32.load offset=1056140
                (i32.const 0))))
          (br_if $B3
            (i32.lt_u
              (local.tee $l5
                (i32.add
                  (i32.load offset=1056128
                    (i32.const 0))
                  (local.get $l5)))
              (local.get $l2)))
          (block $B8
            (block $B9
              (br_if $B9
                (i32.lt_u
                  (local.tee $p1
                    (i32.sub
                      (local.get $l5)
                      (local.get $l2)))
                  (i32.const 16)))
              (i32.store
                (local.get $l3)
                (i32.or
                  (i32.or
                    (local.get $l2)
                    (i32.and
                      (local.get $l4)
                      (i32.const 1)))
                  (i32.const 2)))
              (i32.store offset=4
                (local.tee $l2
                  (i32.add
                    (local.get $l6)
                    (local.get $l2)))
                (i32.or
                  (local.get $p1)
                  (i32.const 1)))
              (i32.store
                (local.tee $l5
                  (i32.add
                    (local.get $l6)
                    (local.get $l5)))
                (local.get $p1))
              (i32.store offset=4
                (local.get $l5)
                (i32.and
                  (i32.load offset=4
                    (local.get $l5))
                  (i32.const -2)))
              (br $B8))
            (i32.store
              (local.get $l3)
              (i32.or
                (i32.or
                  (i32.and
                    (local.get $l4)
                    (i32.const 1))
                  (local.get $l5))
                (i32.const 2)))
            (i32.store offset=4
              (local.tee $p1
                (i32.add
                  (local.get $l6)
                  (local.get $l5)))
              (i32.or
                (i32.load offset=4
                  (local.get $p1))
                (i32.const 1)))
            (local.set $p1
              (i32.const 0))
            (local.set $l2
              (i32.const 0)))
          (i32.store offset=1056140
            (i32.const 0)
            (local.get $l2))
          (i32.store offset=1056128
            (i32.const 0)
            (local.get $p1))
          (return
            (local.get $p0)))
        (br_if $B3
          (i32.and
            (local.tee $l8
              (i32.load offset=4
                (local.get $l7)))
            (i32.const 2)))
        (br_if $B3
          (i32.lt_u
            (local.tee $l9
              (i32.add
                (i32.and
                  (local.get $l8)
                  (i32.const -8))
                (local.get $l5)))
            (local.get $l2)))
        (local.set $l10
          (i32.sub
            (local.get $l9)
            (local.get $l2)))
        (block $B10
          (block $B11
            (br_if $B11
              (i32.gt_u
                (local.get $l8)
                (i32.const 255)))
            (drop
              (i32.eq
                (local.tee $p1
                  (i32.load offset=8
                    (local.get $l7)))
                (local.tee $l8
                  (i32.add
                    (i32.shl
                      (local.tee $l11
                        (i32.shr_u
                          (local.get $l8)
                          (i32.const 3)))
                      (i32.const 3))
                    (i32.const 1056160)))))
            (block $B12
              (br_if $B12
                (i32.ne
                  (local.tee $l5
                    (i32.load offset=12
                      (local.get $l7)))
                  (local.get $p1)))
              (i32.store offset=1056120
                (i32.const 0)
                (i32.and
                  (i32.load offset=1056120
                    (i32.const 0))
                  (i32.rotl
                    (i32.const -2)
                    (local.get $l11))))
              (br $B10))
            (drop
              (i32.eq
                (local.get $l5)
                (local.get $l8)))
            (i32.store offset=8
              (local.get $l5)
              (local.get $p1))
            (i32.store offset=12
              (local.get $p1)
              (local.get $l5))
            (br $B10))
          (local.set $l12
            (i32.load offset=24
              (local.get $l7)))
          (block $B13
            (block $B14
              (br_if $B14
                (i32.eq
                  (local.tee $l8
                    (i32.load offset=12
                      (local.get $l7)))
                  (local.get $l7)))
              (drop
                (i32.lt_u
                  (local.tee $p1
                    (i32.load offset=8
                      (local.get $l7)))
                  (i32.load offset=1056136
                    (i32.const 0))))
              (i32.store offset=8
                (local.get $l8)
                (local.get $p1))
              (i32.store offset=12
                (local.get $p1)
                (local.get $l8))
              (br $B13))
            (block $B15
              (br_if $B15
                (local.tee $l5
                  (i32.load
                    (local.tee $p1
                      (i32.add
                        (local.get $l7)
                        (i32.const 20))))))
              (br_if $B15
                (local.tee $l5
                  (i32.load
                    (local.tee $p1
                      (i32.add
                        (local.get $l7)
                        (i32.const 16))))))
              (local.set $l8
                (i32.const 0))
              (br $B13))
            (loop $L16
              (local.set $l11
                (local.get $p1))
              (br_if $L16
                (local.tee $l5
                  (i32.load
                    (local.tee $p1
                      (i32.add
                        (local.tee $l8
                          (local.get $l5))
                        (i32.const 20))))))
              (local.set $p1
                (i32.add
                  (local.get $l8)
                  (i32.const 16)))
              (br_if $L16
                (local.tee $l5
                  (i32.load offset=16
                    (local.get $l8)))))
            (i32.store
              (local.get $l11)
              (i32.const 0)))
          (br_if $B10
            (i32.eqz
              (local.get $l12)))
          (block $B17
            (block $B18
              (br_if $B18
                (i32.ne
                  (local.get $l7)
                  (i32.load
                    (local.tee $p1
                      (i32.add
                        (i32.shl
                          (local.tee $l5
                            (i32.load offset=28
                              (local.get $l7)))
                          (i32.const 2))
                        (i32.const 1056424))))))
              (i32.store
                (local.get $p1)
                (local.get $l8))
              (br_if $B17
                (local.get $l8))
              (i32.store offset=1056124
                (i32.const 0)
                (i32.and
                  (i32.load offset=1056124
                    (i32.const 0))
                  (i32.rotl
                    (i32.const -2)
                    (local.get $l5))))
              (br $B10))
            (i32.store
              (i32.add
                (local.get $l12)
                (select
                  (i32.const 16)
                  (i32.const 20)
                  (i32.eq
                    (i32.load offset=16
                      (local.get $l12))
                    (local.get $l7))))
              (local.get $l8))
            (br_if $B10
              (i32.eqz
                (local.get $l8))))
          (i32.store offset=24
            (local.get $l8)
            (local.get $l12))
          (block $B19
            (br_if $B19
              (i32.eqz
                (local.tee $p1
                  (i32.load offset=16
                    (local.get $l7)))))
            (i32.store offset=16
              (local.get $l8)
              (local.get $p1))
            (i32.store offset=24
              (local.get $p1)
              (local.get $l8)))
          (br_if $B10
            (i32.eqz
              (local.tee $p1
                (i32.load offset=20
                  (local.get $l7)))))
          (i32.store
            (i32.add
              (local.get $l8)
              (i32.const 20))
            (local.get $p1))
          (i32.store offset=24
            (local.get $p1)
            (local.get $l8)))
        (block $B20
          (br_if $B20
            (i32.gt_u
              (local.get $l10)
              (i32.const 15)))
          (i32.store
            (local.get $l3)
            (i32.or
              (i32.or
                (i32.and
                  (local.get $l4)
                  (i32.const 1))
                (local.get $l9))
              (i32.const 2)))
          (i32.store offset=4
            (local.tee $p1
              (i32.add
                (local.get $l6)
                (local.get $l9)))
            (i32.or
              (i32.load offset=4
                (local.get $p1))
              (i32.const 1)))
          (return
            (local.get $p0)))
        (i32.store
          (local.get $l3)
          (i32.or
            (i32.or
              (local.get $l2)
              (i32.and
                (local.get $l4)
                (i32.const 1)))
            (i32.const 2)))
        (i32.store offset=4
          (local.tee $p1
            (i32.add
              (local.get $l6)
              (local.get $l2)))
          (i32.or
            (local.get $l10)
            (i32.const 3)))
        (i32.store offset=4
          (local.tee $l2
            (i32.add
              (local.get $l6)
              (local.get $l9)))
          (i32.or
            (i32.load offset=4
              (local.get $l2))
            (i32.const 1)))
        (call $dispose_chunk
          (local.get $p1)
          (local.get $l10))
        (return
          (local.get $p0)))
      (block $B21
        (br_if $B21
          (local.tee $l2
            (call $dlmalloc
              (local.get $p1))))
        (return
          (i32.const 0)))
      (local.set $p1
        (call $memcpy
          (local.get $l2)
          (local.get $p0)
          (select
            (local.tee $l5
              (i32.add
                (select
                  (i32.const -4)
                  (i32.const -8)
                  (i32.and
                    (local.tee $l5
                      (i32.load
                        (local.get $l3)))
                    (i32.const 3)))
                (i32.and
                  (local.get $l5)
                  (i32.const -8))))
            (local.get $p1)
            (i32.lt_u
              (local.get $l5)
              (local.get $p1)))))
      (call $dlfree
        (local.get $p0))
      (local.set $p0
        (local.get $p1)))
    (local.get $p0))
  (func $dispose_chunk (type $t2) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32)
    (local.set $l2
      (i32.add
        (local.get $p0)
        (local.get $p1)))
    (block $B0
      (block $B1
        (br_if $B1
          (i32.and
            (local.tee $l3
              (i32.load offset=4
                (local.get $p0)))
            (i32.const 1)))
        (br_if $B0
          (i32.eqz
            (i32.and
              (local.get $l3)
              (i32.const 3))))
        (local.set $p1
          (i32.add
            (local.tee $l3
              (i32.load
                (local.get $p0)))
            (local.get $p1)))
        (block $B2
          (block $B3
            (br_if $B3
              (i32.eq
                (local.tee $p0
                  (i32.sub
                    (local.get $p0)
                    (local.get $l3)))
                (i32.load offset=1056140
                  (i32.const 0))))
            (block $B4
              (br_if $B4
                (i32.gt_u
                  (local.get $l3)
                  (i32.const 255)))
              (drop
                (i32.eq
                  (local.tee $l4
                    (i32.load offset=8
                      (local.get $p0)))
                  (local.tee $l6
                    (i32.add
                      (i32.shl
                        (local.tee $l5
                          (i32.shr_u
                            (local.get $l3)
                            (i32.const 3)))
                        (i32.const 3))
                      (i32.const 1056160)))))
              (br_if $B2
                (i32.ne
                  (local.tee $l3
                    (i32.load offset=12
                      (local.get $p0)))
                  (local.get $l4)))
              (i32.store offset=1056120
                (i32.const 0)
                (i32.and
                  (i32.load offset=1056120
                    (i32.const 0))
                  (i32.rotl
                    (i32.const -2)
                    (local.get $l5))))
              (br $B1))
            (local.set $l7
              (i32.load offset=24
                (local.get $p0)))
            (block $B5
              (block $B6
                (br_if $B6
                  (i32.eq
                    (local.tee $l6
                      (i32.load offset=12
                        (local.get $p0)))
                    (local.get $p0)))
                (drop
                  (i32.lt_u
                    (local.tee $l3
                      (i32.load offset=8
                        (local.get $p0)))
                    (i32.load offset=1056136
                      (i32.const 0))))
                (i32.store offset=8
                  (local.get $l6)
                  (local.get $l3))
                (i32.store offset=12
                  (local.get $l3)
                  (local.get $l6))
                (br $B5))
              (block $B7
                (br_if $B7
                  (local.tee $l4
                    (i32.load
                      (local.tee $l3
                        (i32.add
                          (local.get $p0)
                          (i32.const 20))))))
                (br_if $B7
                  (local.tee $l4
                    (i32.load
                      (local.tee $l3
                        (i32.add
                          (local.get $p0)
                          (i32.const 16))))))
                (local.set $l6
                  (i32.const 0))
                (br $B5))
              (loop $L8
                (local.set $l5
                  (local.get $l3))
                (br_if $L8
                  (local.tee $l4
                    (i32.load
                      (local.tee $l3
                        (i32.add
                          (local.tee $l6
                            (local.get $l4))
                          (i32.const 20))))))
                (local.set $l3
                  (i32.add
                    (local.get $l6)
                    (i32.const 16)))
                (br_if $L8
                  (local.tee $l4
                    (i32.load offset=16
                      (local.get $l6)))))
              (i32.store
                (local.get $l5)
                (i32.const 0)))
            (br_if $B1
              (i32.eqz
                (local.get $l7)))
            (block $B9
              (block $B10
                (br_if $B10
                  (i32.ne
                    (local.get $p0)
                    (i32.load
                      (local.tee $l3
                        (i32.add
                          (i32.shl
                            (local.tee $l4
                              (i32.load offset=28
                                (local.get $p0)))
                            (i32.const 2))
                          (i32.const 1056424))))))
                (i32.store
                  (local.get $l3)
                  (local.get $l6))
                (br_if $B9
                  (local.get $l6))
                (i32.store offset=1056124
                  (i32.const 0)
                  (i32.and
                    (i32.load offset=1056124
                      (i32.const 0))
                    (i32.rotl
                      (i32.const -2)
                      (local.get $l4))))
                (br $B1))
              (i32.store
                (i32.add
                  (local.get $l7)
                  (select
                    (i32.const 16)
                    (i32.const 20)
                    (i32.eq
                      (i32.load offset=16
                        (local.get $l7))
                      (local.get $p0))))
                (local.get $l6))
              (br_if $B1
                (i32.eqz
                  (local.get $l6))))
            (i32.store offset=24
              (local.get $l6)
              (local.get $l7))
            (block $B11
              (br_if $B11
                (i32.eqz
                  (local.tee $l3
                    (i32.load offset=16
                      (local.get $p0)))))
              (i32.store offset=16
                (local.get $l6)
                (local.get $l3))
              (i32.store offset=24
                (local.get $l3)
                (local.get $l6)))
            (br_if $B1
              (i32.eqz
                (local.tee $l3
                  (i32.load offset=20
                    (local.get $p0)))))
            (i32.store
              (i32.add
                (local.get $l6)
                (i32.const 20))
              (local.get $l3))
            (i32.store offset=24
              (local.get $l3)
              (local.get $l6))
            (br $B1))
          (br_if $B1
            (i32.ne
              (i32.and
                (local.tee $l3
                  (i32.load offset=4
                    (local.get $l2)))
                (i32.const 3))
              (i32.const 3)))
          (i32.store offset=4
            (local.get $l2)
            (i32.and
              (local.get $l3)
              (i32.const -2)))
          (i32.store offset=1056128
            (i32.const 0)
            (local.get $p1))
          (i32.store
            (local.get $l2)
            (local.get $p1))
          (i32.store offset=4
            (local.get $p0)
            (i32.or
              (local.get $p1)
              (i32.const 1)))
          (return))
        (drop
          (i32.eq
            (local.get $l3)
            (local.get $l6)))
        (i32.store offset=8
          (local.get $l3)
          (local.get $l4))
        (i32.store offset=12
          (local.get $l4)
          (local.get $l3)))
      (block $B12
        (block $B13
          (br_if $B13
            (i32.and
              (local.tee $l3
                (i32.load offset=4
                  (local.get $l2)))
              (i32.const 2)))
          (block $B14
            (br_if $B14
              (i32.ne
                (local.get $l2)
                (i32.load offset=1056144
                  (i32.const 0))))
            (i32.store offset=1056144
              (i32.const 0)
              (local.get $p0))
            (i32.store offset=1056132
              (i32.const 0)
              (local.tee $p1
                (i32.add
                  (i32.load offset=1056132
                    (i32.const 0))
                  (local.get $p1))))
            (i32.store offset=4
              (local.get $p0)
              (i32.or
                (local.get $p1)
                (i32.const 1)))
            (br_if $B0
              (i32.ne
                (local.get $p0)
                (i32.load offset=1056140
                  (i32.const 0))))
            (i32.store offset=1056128
              (i32.const 0)
              (i32.const 0))
            (i32.store offset=1056140
              (i32.const 0)
              (i32.const 0))
            (return))
          (block $B15
            (br_if $B15
              (i32.ne
                (local.get $l2)
                (i32.load offset=1056140
                  (i32.const 0))))
            (i32.store offset=1056140
              (i32.const 0)
              (local.get $p0))
            (i32.store offset=1056128
              (i32.const 0)
              (local.tee $p1
                (i32.add
                  (i32.load offset=1056128
                    (i32.const 0))
                  (local.get $p1))))
            (i32.store offset=4
              (local.get $p0)
              (i32.or
                (local.get $p1)
                (i32.const 1)))
            (i32.store
              (i32.add
                (local.get $p0)
                (local.get $p1))
              (local.get $p1))
            (return))
          (local.set $p1
            (i32.add
              (i32.and
                (local.get $l3)
                (i32.const -8))
              (local.get $p1)))
          (block $B16
            (block $B17
              (br_if $B17
                (i32.gt_u
                  (local.get $l3)
                  (i32.const 255)))
              (drop
                (i32.eq
                  (local.tee $l4
                    (i32.load offset=8
                      (local.get $l2)))
                  (local.tee $l6
                    (i32.add
                      (i32.shl
                        (local.tee $l5
                          (i32.shr_u
                            (local.get $l3)
                            (i32.const 3)))
                        (i32.const 3))
                      (i32.const 1056160)))))
              (block $B18
                (br_if $B18
                  (i32.ne
                    (local.tee $l3
                      (i32.load offset=12
                        (local.get $l2)))
                    (local.get $l4)))
                (i32.store offset=1056120
                  (i32.const 0)
                  (i32.and
                    (i32.load offset=1056120
                      (i32.const 0))
                    (i32.rotl
                      (i32.const -2)
                      (local.get $l5))))
                (br $B16))
              (drop
                (i32.eq
                  (local.get $l3)
                  (local.get $l6)))
              (i32.store offset=8
                (local.get $l3)
                (local.get $l4))
              (i32.store offset=12
                (local.get $l4)
                (local.get $l3))
              (br $B16))
            (local.set $l7
              (i32.load offset=24
                (local.get $l2)))
            (block $B19
              (block $B20
                (br_if $B20
                  (i32.eq
                    (local.tee $l6
                      (i32.load offset=12
                        (local.get $l2)))
                    (local.get $l2)))
                (drop
                  (i32.lt_u
                    (local.tee $l3
                      (i32.load offset=8
                        (local.get $l2)))
                    (i32.load offset=1056136
                      (i32.const 0))))
                (i32.store offset=8
                  (local.get $l6)
                  (local.get $l3))
                (i32.store offset=12
                  (local.get $l3)
                  (local.get $l6))
                (br $B19))
              (block $B21
                (br_if $B21
                  (local.tee $l3
                    (i32.load
                      (local.tee $l4
                        (i32.add
                          (local.get $l2)
                          (i32.const 20))))))
                (br_if $B21
                  (local.tee $l3
                    (i32.load
                      (local.tee $l4
                        (i32.add
                          (local.get $l2)
                          (i32.const 16))))))
                (local.set $l6
                  (i32.const 0))
                (br $B19))
              (loop $L22
                (local.set $l5
                  (local.get $l4))
                (br_if $L22
                  (local.tee $l3
                    (i32.load
                      (local.tee $l4
                        (i32.add
                          (local.tee $l6
                            (local.get $l3))
                          (i32.const 20))))))
                (local.set $l4
                  (i32.add
                    (local.get $l6)
                    (i32.const 16)))
                (br_if $L22
                  (local.tee $l3
                    (i32.load offset=16
                      (local.get $l6)))))
              (i32.store
                (local.get $l5)
                (i32.const 0)))
            (br_if $B16
              (i32.eqz
                (local.get $l7)))
            (block $B23
              (block $B24
                (br_if $B24
                  (i32.ne
                    (local.get $l2)
                    (i32.load
                      (local.tee $l3
                        (i32.add
                          (i32.shl
                            (local.tee $l4
                              (i32.load offset=28
                                (local.get $l2)))
                            (i32.const 2))
                          (i32.const 1056424))))))
                (i32.store
                  (local.get $l3)
                  (local.get $l6))
                (br_if $B23
                  (local.get $l6))
                (i32.store offset=1056124
                  (i32.const 0)
                  (i32.and
                    (i32.load offset=1056124
                      (i32.const 0))
                    (i32.rotl
                      (i32.const -2)
                      (local.get $l4))))
                (br $B16))
              (i32.store
                (i32.add
                  (local.get $l7)
                  (select
                    (i32.const 16)
                    (i32.const 20)
                    (i32.eq
                      (i32.load offset=16
                        (local.get $l7))
                      (local.get $l2))))
                (local.get $l6))
              (br_if $B16
                (i32.eqz
                  (local.get $l6))))
            (i32.store offset=24
              (local.get $l6)
              (local.get $l7))
            (block $B25
              (br_if $B25
                (i32.eqz
                  (local.tee $l3
                    (i32.load offset=16
                      (local.get $l2)))))
              (i32.store offset=16
                (local.get $l6)
                (local.get $l3))
              (i32.store offset=24
                (local.get $l3)
                (local.get $l6)))
            (br_if $B16
              (i32.eqz
                (local.tee $l3
                  (i32.load offset=20
                    (local.get $l2)))))
            (i32.store
              (i32.add
                (local.get $l6)
                (i32.const 20))
              (local.get $l3))
            (i32.store offset=24
              (local.get $l3)
              (local.get $l6)))
          (i32.store
            (i32.add
              (local.get $p0)
              (local.get $p1))
            (local.get $p1))
          (i32.store offset=4
            (local.get $p0)
            (i32.or
              (local.get $p1)
              (i32.const 1)))
          (br_if $B12
            (i32.ne
              (local.get $p0)
              (i32.load offset=1056140
                (i32.const 0))))
          (i32.store offset=1056128
            (i32.const 0)
            (local.get $p1))
          (return))
        (i32.store offset=4
          (local.get $l2)
          (i32.and
            (local.get $l3)
            (i32.const -2)))
        (i32.store
          (i32.add
            (local.get $p0)
            (local.get $p1))
          (local.get $p1))
        (i32.store offset=4
          (local.get $p0)
          (i32.or
            (local.get $p1)
            (i32.const 1))))
      (block $B26
        (br_if $B26
          (i32.gt_u
            (local.get $p1)
            (i32.const 255)))
        (local.set $l3
          (i32.add
            (i32.and
              (local.get $p1)
              (i32.const -8))
            (i32.const 1056160)))
        (block $B27
          (block $B28
            (br_if $B28
              (i32.and
                (local.tee $l4
                  (i32.load offset=1056120
                    (i32.const 0)))
                (local.tee $p1
                  (i32.shl
                    (i32.const 1)
                    (i32.shr_u
                      (local.get $p1)
                      (i32.const 3))))))
            (i32.store offset=1056120
              (i32.const 0)
              (i32.or
                (local.get $l4)
                (local.get $p1)))
            (local.set $p1
              (local.get $l3))
            (br $B27))
          (local.set $p1
            (i32.load offset=8
              (local.get $l3))))
        (i32.store offset=12
          (local.get $p1)
          (local.get $p0))
        (i32.store offset=8
          (local.get $l3)
          (local.get $p0))
        (i32.store offset=12
          (local.get $p0)
          (local.get $l3))
        (i32.store offset=8
          (local.get $p0)
          (local.get $p1))
        (return))
      (local.set $l3
        (i32.const 31))
      (block $B29
        (br_if $B29
          (i32.gt_u
            (local.get $p1)
            (i32.const 16777215)))
        (local.set $l3
          (i32.add
            (i32.sub
              (i32.and
                (i32.shr_u
                  (local.get $p1)
                  (i32.sub
                    (i32.const 38)
                    (local.tee $l3
                      (i32.clz
                        (i32.shr_u
                          (local.get $p1)
                          (i32.const 8))))))
                (i32.const 1))
              (i32.shl
                (local.get $l3)
                (i32.const 1)))
            (i32.const 62))))
      (i32.store offset=28
        (local.get $p0)
        (local.get $l3))
      (i64.store offset=16 align=4
        (local.get $p0)
        (i64.const 0))
      (local.set $l4
        (i32.add
          (i32.shl
            (local.get $l3)
            (i32.const 2))
          (i32.const 1056424)))
      (block $B30
        (br_if $B30
          (i32.and
            (local.tee $l6
              (i32.load offset=1056124
                (i32.const 0)))
            (local.tee $l2
              (i32.shl
                (i32.const 1)
                (local.get $l3)))))
        (i32.store
          (local.get $l4)
          (local.get $p0))
        (i32.store offset=1056124
          (i32.const 0)
          (i32.or
            (local.get $l6)
            (local.get $l2)))
        (i32.store offset=24
          (local.get $p0)
          (local.get $l4))
        (i32.store offset=8
          (local.get $p0)
          (local.get $p0))
        (i32.store offset=12
          (local.get $p0)
          (local.get $p0))
        (return))
      (local.set $l3
        (i32.shl
          (local.get $p1)
          (select
            (i32.const 0)
            (i32.sub
              (i32.const 25)
              (i32.shr_u
                (local.get $l3)
                (i32.const 1)))
            (i32.eq
              (local.get $l3)
              (i32.const 31)))))
      (local.set $l6
        (i32.load
          (local.get $l4)))
      (block $B31
        (loop $L32
          (br_if $B31
            (i32.eq
              (i32.and
                (i32.load offset=4
                  (local.tee $l4
                    (local.get $l6)))
                (i32.const -8))
              (local.get $p1)))
          (local.set $l6
            (i32.shr_u
              (local.get $l3)
              (i32.const 29)))
          (local.set $l3
            (i32.shl
              (local.get $l3)
              (i32.const 1)))
          (br_if $L32
            (local.tee $l6
              (i32.load
                (local.tee $l2
                  (i32.add
                    (i32.add
                      (local.get $l4)
                      (i32.and
                        (local.get $l6)
                        (i32.const 4)))
                    (i32.const 16)))))))
        (i32.store
          (local.get $l2)
          (local.get $p0))
        (i32.store offset=24
          (local.get $p0)
          (local.get $l4))
        (i32.store offset=12
          (local.get $p0)
          (local.get $p0))
        (i32.store offset=8
          (local.get $p0)
          (local.get $p0))
        (return))
      (i32.store offset=12
        (local.tee $p1
          (i32.load offset=8
            (local.get $l4)))
        (local.get $p0))
      (i32.store offset=8
        (local.get $l4)
        (local.get $p0))
      (i32.store offset=24
        (local.get $p0)
        (i32.const 0))
      (i32.store offset=12
        (local.get $p0)
        (local.get $l4))
      (i32.store offset=8
        (local.get $p0)
        (local.get $p1))))
  (func $internal_memalign (type $t4) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32)
    (block $B0
      (block $B1
        (br_if $B1
          (i32.and
            (local.tee $l2
              (select
                (local.get $p0)
                (i32.const 16)
                (i32.gt_u
                  (local.get $p0)
                  (i32.const 16))))
            (i32.add
              (local.get $l2)
              (i32.const -1))))
        (local.set $p0
          (local.get $l2))
        (br $B0))
      (local.set $l3
        (i32.const 32))
      (loop $L2
        (local.set $l3
          (i32.shl
            (local.tee $p0
              (local.get $l3))
            (i32.const 1)))
        (br_if $L2
          (i32.lt_u
            (local.get $p0)
            (local.get $l2)))))
    (block $B3
      (br_if $B3
        (i32.gt_u
          (i32.sub
            (i32.const -64)
            (local.get $p0))
          (local.get $p1)))
      (i32.store offset=1056616
        (i32.const 0)
        (i32.const 48))
      (return
        (i32.const 0)))
    (block $B4
      (br_if $B4
        (local.tee $l3
          (call $dlmalloc
            (i32.add
              (i32.add
                (local.get $p0)
                (local.tee $p1
                  (select
                    (i32.const 16)
                    (i32.and
                      (i32.add
                        (local.get $p1)
                        (i32.const 19))
                      (i32.const -16))
                    (i32.lt_u
                      (local.get $p1)
                      (i32.const 11)))))
              (i32.const 12)))))
      (return
        (i32.const 0)))
    (local.set $l2
      (i32.add
        (local.get $l3)
        (i32.const -8)))
    (block $B5
      (block $B6
        (br_if $B6
          (i32.and
            (i32.add
              (local.get $p0)
              (i32.const -1))
            (local.get $l3)))
        (local.set $p0
          (local.get $l2))
        (br $B5))
      (local.set $l6
        (i32.sub
          (i32.and
            (local.tee $l5
              (i32.load
                (local.tee $l4
                  (i32.add
                    (local.get $l3)
                    (i32.const -4)))))
            (i32.const -8))
          (local.tee $l3
            (i32.sub
              (local.tee $p0
                (i32.add
                  (local.tee $l3
                    (i32.add
                      (i32.and
                        (i32.add
                          (i32.add
                            (local.get $l3)
                            (local.get $p0))
                          (i32.const -1))
                        (i32.sub
                          (i32.const 0)
                          (local.get $p0)))
                      (i32.const -8)))
                  (select
                    (i32.const 0)
                    (local.get $p0)
                    (i32.gt_u
                      (i32.sub
                        (local.get $l3)
                        (local.get $l2))
                      (i32.const 15)))))
              (local.get $l2)))))
      (block $B7
        (br_if $B7
          (i32.and
            (local.get $l5)
            (i32.const 3)))
        (i32.store offset=4
          (local.get $p0)
          (local.get $l6))
        (i32.store
          (local.get $p0)
          (i32.add
            (i32.load
              (local.get $l2))
            (local.get $l3)))
        (br $B5))
      (i32.store offset=4
        (local.get $p0)
        (i32.or
          (i32.or
            (local.get $l6)
            (i32.and
              (i32.load offset=4
                (local.get $p0))
              (i32.const 1)))
          (i32.const 2)))
      (i32.store offset=4
        (local.tee $l6
          (i32.add
            (local.get $p0)
            (local.get $l6)))
        (i32.or
          (i32.load offset=4
            (local.get $l6))
          (i32.const 1)))
      (i32.store
        (local.get $l4)
        (i32.or
          (i32.or
            (local.get $l3)
            (i32.and
              (i32.load
                (local.get $l4))
              (i32.const 1)))
          (i32.const 2)))
      (i32.store offset=4
        (local.tee $l6
          (i32.add
            (local.get $l2)
            (local.get $l3)))
        (i32.or
          (i32.load offset=4
            (local.get $l6))
          (i32.const 1)))
      (call $dispose_chunk
        (local.get $l2)
        (local.get $l3)))
    (block $B8
      (br_if $B8
        (i32.eqz
          (i32.and
            (local.tee $l3
              (i32.load offset=4
                (local.get $p0)))
            (i32.const 3))))
      (br_if $B8
        (i32.le_u
          (local.tee $l2
            (i32.and
              (local.get $l3)
              (i32.const -8)))
          (i32.add
            (local.get $p1)
            (i32.const 16))))
      (i32.store offset=4
        (local.get $p0)
        (i32.or
          (i32.or
            (local.get $p1)
            (i32.and
              (local.get $l3)
              (i32.const 1)))
          (i32.const 2)))
      (i32.store offset=4
        (local.tee $l3
          (i32.add
            (local.get $p0)
            (local.get $p1)))
        (i32.or
          (local.tee $p1
            (i32.sub
              (local.get $l2)
              (local.get $p1)))
          (i32.const 3)))
      (i32.store offset=4
        (local.tee $l2
          (i32.add
            (local.get $p0)
            (local.get $l2)))
        (i32.or
          (i32.load offset=4
            (local.get $l2))
          (i32.const 1)))
      (call $dispose_chunk
        (local.get $l3)
        (local.get $p1)))
    (i32.add
      (local.get $p0)
      (i32.const 8)))
  (func $aligned_alloc (type $t4) (param $p0 i32) (param $p1 i32) (result i32)
    (block $B0
      (br_if $B0
        (i32.gt_u
          (local.get $p0)
          (i32.const 16)))
      (return
        (call $dlmalloc
          (local.get $p1))))
    (call $internal_memalign
      (local.get $p0)
      (local.get $p1)))
  (func $_Exit (type $t1) (param $p0 i32)
    (call $__wasi_proc_exit
      (local.get $p0))
    (unreachable))
  (func $__wasilibc_ensure_environ (type $t0)
    (block $B0
      (br_if $B0
        (i32.ne
          (i32.load offset=1056000
            (i32.const 0))
          (i32.const -1)))
      (call $__wasilibc_initialize_environ)))
  (func $__wasilibc_initialize_environ (type $t0)
    (local $l0 i32) (local $l1 i32) (local $l2 i32)
    (global.set $__stack_pointer
      (local.tee $l0
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 16))))
    (block $B0
      (block $B1
        (br_if $B1
          (call $__wasi_environ_sizes_get
            (i32.add
              (local.get $l0)
              (i32.const 12))
            (i32.add
              (local.get $l0)
              (i32.const 8))))
        (block $B2
          (br_if $B2
            (local.tee $l1
              (i32.load offset=12
                (local.get $l0))))
          (local.set $l1
            (i32.const 1056620))
          (br $B0))
        (block $B3
          (block $B4
            (br_if $B4
              (i32.eqz
                (local.tee $l1
                  (i32.add
                    (local.get $l1)
                    (i32.const 1)))))
            (br_if $B4
              (i32.eqz
                (local.tee $l2
                  (call $malloc
                    (i32.load offset=8
                      (local.get $l0))))))
            (br_if $B3
              (local.tee $l1
                (call $calloc
                  (local.get $l1)
                  (i32.const 4))))
            (call $free
              (local.get $l2)))
          (call $_Exit
            (i32.const 70))
          (unreachable))
        (br_if $B0
          (i32.eqz
            (call $__wasi_environ_get
              (local.get $l1)
              (local.get $l2))))
        (call $free
          (local.get $l2))
        (call $free
          (local.get $l1)))
      (call $_Exit
        (i32.const 71))
      (unreachable))
    (i32.store offset=1056000
      (i32.const 0)
      (local.get $l1))
    (global.set $__stack_pointer
      (i32.add
        (local.get $l0)
        (i32.const 16))))
  (func $__wasi_environ_get (type $t4) (param $p0 i32) (param $p1 i32) (result i32)
    (i32.and
      (call $__imported_wasi_snapshot_preview1_environ_get
        (local.get $p0)
        (local.get $p1))
      (i32.const 65535)))
  (func $__wasi_environ_sizes_get (type $t4) (param $p0 i32) (param $p1 i32) (result i32)
    (i32.and
      (call $__imported_wasi_snapshot_preview1_environ_sizes_get
        (local.get $p0)
        (local.get $p1))
      (i32.const 65535)))
  (func $__wasi_proc_exit (type $t1) (param $p0 i32)
    (call $__imported_wasi_snapshot_preview1_proc_exit
      (local.get $p0))
    (unreachable))
  (func $abort (type $t0)
    (unreachable)
    (unreachable))
  (func $getcwd (type $t4) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32)
    (local.set $l2
      (i32.load offset=1056004
        (i32.const 0)))
    (block $B0
      (block $B1
        (br_if $B1
          (local.get $p0))
        (br_if $B0
          (local.tee $p0
            (call $strdup
              (local.get $l2))))
        (i32.store offset=1056616
          (i32.const 0)
          (i32.const 48))
        (return
          (i32.const 0)))
      (block $B2
        (br_if $B2
          (i32.gt_u
            (i32.add
              (call $strlen
                (local.get $l2))
              (i32.const 1))
            (local.get $p1)))
        (return
          (call $strcpy
            (local.get $p0)
            (local.get $l2))))
      (local.set $p0
        (i32.const 0))
      (i32.store offset=1056616
        (i32.const 0)
        (i32.const 68)))
    (local.get $p0))
  (func $sbrk (type $t3) (param $p0 i32) (result i32)
    (block $B0
      (br_if $B0
        (local.get $p0))
      (return
        (i32.shl
          (memory.size)
          (i32.const 16))))
    (block $B1
      (br_if $B1
        (i32.and
          (local.get $p0)
          (i32.const 65535)))
      (br_if $B1
        (i32.le_s
          (local.get $p0)
          (i32.const -1)))
      (block $B2
        (br_if $B2
          (i32.ne
            (local.tee $p0
              (memory.grow
                (i32.shr_u
                  (local.get $p0)
                  (i32.const 16))))
            (i32.const -1)))
        (i32.store offset=1056616
          (i32.const 0)
          (i32.const 48))
        (return
          (i32.const -1)))
      (return
        (i32.shl
          (local.get $p0)
          (i32.const 16))))
    (call $abort)
    (unreachable))
  (func $getenv (type $t3) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32)
    (call $__wasilibc_ensure_environ)
    (block $B0
      (br_if $B0
        (i32.ne
          (local.tee $l1
            (call $__strchrnul
              (local.get $p0)
              (i32.const 61)))
          (local.get $p0)))
      (return
        (i32.const 0)))
    (local.set $l2
      (i32.const 0))
    (block $B1
      (br_if $B1
        (i32.load8_u
          (i32.add
            (local.get $p0)
            (local.tee $l3
              (i32.sub
                (local.get $l1)
                (local.get $p0))))))
      (br_if $B1
        (i32.eqz
          (local.tee $l4
            (i32.load offset=1056000
              (i32.const 0)))))
      (br_if $B1
        (i32.eqz
          (local.tee $l1
            (i32.load
              (local.get $l4)))))
      (local.set $l4
        (i32.add
          (local.get $l4)
          (i32.const 4)))
      (block $B2
        (loop $L3
          (block $B4
            (br_if $B4
              (call $strncmp
                (local.get $p0)
                (local.get $l1)
                (local.get $l3)))
            (br_if $B2
              (i32.eq
                (i32.load8_u
                  (local.tee $l1
                    (i32.add
                      (local.get $l1)
                      (local.get $l3))))
                (i32.const 61))))
          (local.set $l1
            (i32.load
              (local.get $l4)))
          (local.set $l4
            (i32.add
              (local.get $l4)
              (i32.const 4)))
          (br_if $L3
            (local.get $l1))
          (br $B1)))
      (local.set $l2
        (i32.add
          (local.get $l1)
          (i32.const 1))))
    (local.get $l2))
  (func $dummy (type $t0))
  (func $__wasm_call_dtors (type $t0)
    (call $dummy)
    (call $dummy))
  (func $memcmp (type $t6) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32)
    (local.set $l3
      (i32.const 0))
    (block $B0
      (br_if $B0
        (i32.eqz
          (local.get $p2)))
      (block $B1
        (loop $L2
          (br_if $B1
            (i32.ne
              (local.tee $l4
                (i32.load8_u
                  (local.get $p0)))
              (local.tee $l5
                (i32.load8_u
                  (local.get $p1)))))
          (local.set $p1
            (i32.add
              (local.get $p1)
              (i32.const 1)))
          (local.set $p0
            (i32.add
              (local.get $p0)
              (i32.const 1)))
          (br_if $L2
            (local.tee $p2
              (i32.add
                (local.get $p2)
                (i32.const -1))))
          (br $B0)))
      (local.set $l3
        (i32.sub
          (local.get $l4)
          (local.get $l5))))
    (local.get $l3))
  (func $memcpy (type $t6) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32)
    (block $B0
      (block $B1
        (block $B2
          (br_if $B2
            (i32.gt_u
              (local.get $p2)
              (i32.const 32)))
          (br_if $B1
            (i32.eqz
              (i32.and
                (local.get $p1)
                (i32.const 3))))
          (br_if $B1
            (i32.eqz
              (local.get $p2)))
          (i32.store8
            (local.get $p0)
            (i32.load8_u
              (local.get $p1)))
          (local.set $l3
            (i32.add
              (local.get $p2)
              (i32.const -1)))
          (local.set $l4
            (i32.add
              (local.get $p0)
              (i32.const 1)))
          (br_if $B0
            (i32.eqz
              (i32.and
                (local.tee $l5
                  (i32.add
                    (local.get $p1)
                    (i32.const 1)))
                (i32.const 3))))
          (br_if $B0
            (i32.eqz
              (local.get $l3)))
          (i32.store8 offset=1
            (local.get $p0)
            (i32.load8_u offset=1
              (local.get $p1)))
          (local.set $l3
            (i32.add
              (local.get $p2)
              (i32.const -2)))
          (local.set $l4
            (i32.add
              (local.get $p0)
              (i32.const 2)))
          (br_if $B0
            (i32.eqz
              (i32.and
                (local.tee $l5
                  (i32.add
                    (local.get $p1)
                    (i32.const 2)))
                (i32.const 3))))
          (br_if $B0
            (i32.eqz
              (local.get $l3)))
          (i32.store8 offset=2
            (local.get $p0)
            (i32.load8_u offset=2
              (local.get $p1)))
          (local.set $l3
            (i32.add
              (local.get $p2)
              (i32.const -3)))
          (local.set $l4
            (i32.add
              (local.get $p0)
              (i32.const 3)))
          (br_if $B0
            (i32.eqz
              (i32.and
                (local.tee $l5
                  (i32.add
                    (local.get $p1)
                    (i32.const 3)))
                (i32.const 3))))
          (br_if $B0
            (i32.eqz
              (local.get $l3)))
          (i32.store8 offset=3
            (local.get $p0)
            (i32.load8_u offset=3
              (local.get $p1)))
          (local.set $l3
            (i32.add
              (local.get $p2)
              (i32.const -4)))
          (local.set $l4
            (i32.add
              (local.get $p0)
              (i32.const 4)))
          (local.set $l5
            (i32.add
              (local.get $p1)
              (i32.const 4)))
          (br $B0))
        (memory.copy
          (local.get $p0)
          (local.get $p1)
          (local.get $p2))
        (return
          (local.get $p0)))
      (local.set $l3
        (local.get $p2))
      (local.set $l4
        (local.get $p0))
      (local.set $l5
        (local.get $p1)))
    (block $B3
      (block $B4
        (br_if $B4
          (local.tee $p2
            (i32.and
              (local.get $l4)
              (i32.const 3))))
        (block $B5
          (block $B6
            (br_if $B6
              (i32.ge_u
                (local.get $l3)
                (i32.const 16)))
            (local.set $p2
              (local.get $l3))
            (br $B5))
          (block $B7
            (br_if $B7
              (i32.and
                (local.tee $p2
                  (i32.add
                    (local.get $l3)
                    (i32.const -16)))
                (i32.const 16)))
            (i64.store align=4
              (local.get $l4)
              (i64.load align=4
                (local.get $l5)))
            (i64.store offset=8 align=4
              (local.get $l4)
              (i64.load offset=8 align=4
                (local.get $l5)))
            (local.set $l4
              (i32.add
                (local.get $l4)
                (i32.const 16)))
            (local.set $l5
              (i32.add
                (local.get $l5)
                (i32.const 16)))
            (local.set $l3
              (local.get $p2)))
          (br_if $B5
            (i32.lt_u
              (local.get $p2)
              (i32.const 16)))
          (local.set $p2
            (local.get $l3))
          (loop $L8
            (i64.store align=4
              (local.get $l4)
              (i64.load align=4
                (local.get $l5)))
            (i64.store offset=8 align=4
              (local.get $l4)
              (i64.load offset=8 align=4
                (local.get $l5)))
            (i64.store offset=16 align=4
              (local.get $l4)
              (i64.load offset=16 align=4
                (local.get $l5)))
            (i64.store offset=24 align=4
              (local.get $l4)
              (i64.load offset=24 align=4
                (local.get $l5)))
            (local.set $l4
              (i32.add
                (local.get $l4)
                (i32.const 32)))
            (local.set $l5
              (i32.add
                (local.get $l5)
                (i32.const 32)))
            (br_if $L8
              (i32.gt_u
                (local.tee $p2
                  (i32.add
                    (local.get $p2)
                    (i32.const -32)))
                (i32.const 15)))))
        (block $B9
          (br_if $B9
            (i32.lt_u
              (local.get $p2)
              (i32.const 8)))
          (i64.store align=4
            (local.get $l4)
            (i64.load align=4
              (local.get $l5)))
          (local.set $l5
            (i32.add
              (local.get $l5)
              (i32.const 8)))
          (local.set $l4
            (i32.add
              (local.get $l4)
              (i32.const 8))))
        (block $B10
          (br_if $B10
            (i32.eqz
              (i32.and
                (local.get $p2)
                (i32.const 4))))
          (i32.store
            (local.get $l4)
            (i32.load
              (local.get $l5)))
          (local.set $l5
            (i32.add
              (local.get $l5)
              (i32.const 4)))
          (local.set $l4
            (i32.add
              (local.get $l4)
              (i32.const 4))))
        (block $B11
          (br_if $B11
            (i32.eqz
              (i32.and
                (local.get $p2)
                (i32.const 2))))
          (i32.store16 align=1
            (local.get $l4)
            (i32.load16_u align=1
              (local.get $l5)))
          (local.set $l4
            (i32.add
              (local.get $l4)
              (i32.const 2)))
          (local.set $l5
            (i32.add
              (local.get $l5)
              (i32.const 2))))
        (br_if $B3
          (i32.eqz
            (i32.and
              (local.get $p2)
              (i32.const 1))))
        (i32.store8
          (local.get $l4)
          (i32.load8_u
            (local.get $l5)))
        (return
          (local.get $p0)))
      (block $B12
        (block $B13
          (block $B14
            (block $B15
              (block $B16
                (br_if $B16
                  (i32.lt_u
                    (local.get $l3)
                    (i32.const 32)))
                (block $B17
                  (block $B18
                    (br_table $B15 $B18 $B17 $B3
                      (i32.add
                        (local.get $p2)
                        (i32.const -1))))
                  (i32.store16 align=1
                    (local.get $l4)
                    (i32.load
                      (local.get $l5)))
                  (i32.store offset=2
                    (local.get $l4)
                    (i32.load align=2
                      (i32.add
                        (local.get $l5)
                        (i32.const 2))))
                  (i64.store offset=6 align=4
                    (local.get $l4)
                    (i64.load align=2
                      (i32.add
                        (local.get $l5)
                        (i32.const 6))))
                  (local.set $p2
                    (i32.add
                      (local.get $l4)
                      (i32.const 18)))
                  (local.set $p1
                    (i32.add
                      (local.get $l5)
                      (i32.const 18)))
                  (local.set $l6
                    (i32.const 14))
                  (local.set $l5
                    (i32.load align=2
                      (i32.add
                        (local.get $l5)
                        (i32.const 14))))
                  (local.set $l3
                    (i32.const 14))
                  (br $B14))
                (i32.store8
                  (local.get $l4)
                  (i32.load
                    (local.get $l5)))
                (i32.store offset=1
                  (local.get $l4)
                  (i32.load align=1
                    (i32.add
                      (local.get $l5)
                      (i32.const 1))))
                (i64.store offset=5 align=4
                  (local.get $l4)
                  (i64.load align=1
                    (i32.add
                      (local.get $l5)
                      (i32.const 5))))
                (local.set $p2
                  (i32.add
                    (local.get $l4)
                    (i32.const 17)))
                (local.set $p1
                  (i32.add
                    (local.get $l5)
                    (i32.const 17)))
                (local.set $l6
                  (i32.const 13))
                (local.set $l5
                  (i32.load align=1
                    (i32.add
                      (local.get $l5)
                      (i32.const 13))))
                (local.set $l3
                  (i32.const 15))
                (br $B14))
              (block $B19
                (block $B20
                  (br_if $B20
                    (i32.ge_u
                      (local.get $l3)
                      (i32.const 16)))
                  (local.set $p2
                    (local.get $l4))
                  (local.set $p1
                    (local.get $l5))
                  (br $B19))
                (i32.store8
                  (local.get $l4)
                  (i32.load8_u
                    (local.get $l5)))
                (i32.store offset=1 align=1
                  (local.get $l4)
                  (i32.load offset=1 align=1
                    (local.get $l5)))
                (i64.store offset=5 align=1
                  (local.get $l4)
                  (i64.load offset=5 align=1
                    (local.get $l5)))
                (i32.store16 offset=13 align=1
                  (local.get $l4)
                  (i32.load16_u offset=13 align=1
                    (local.get $l5)))
                (i32.store8 offset=15
                  (local.get $l4)
                  (i32.load8_u offset=15
                    (local.get $l5)))
                (local.set $p2
                  (i32.add
                    (local.get $l4)
                    (i32.const 16)))
                (local.set $p1
                  (i32.add
                    (local.get $l5)
                    (i32.const 16))))
              (br_if $B13
                (i32.and
                  (local.get $l3)
                  (i32.const 8)))
              (br $B12))
            (i32.store8
              (local.get $l4)
              (local.tee $p2
                (i32.load
                  (local.get $l5))))
            (i32.store8 offset=2
              (local.get $l4)
              (i32.shr_u
                (local.get $p2)
                (i32.const 16)))
            (i32.store8 offset=1
              (local.get $l4)
              (i32.shr_u
                (local.get $p2)
                (i32.const 8)))
            (i32.store offset=3
              (local.get $l4)
              (i32.load align=1
                (i32.add
                  (local.get $l5)
                  (i32.const 3))))
            (i64.store offset=7 align=4
              (local.get $l4)
              (i64.load align=1
                (i32.add
                  (local.get $l5)
                  (i32.const 7))))
            (local.set $p2
              (i32.add
                (local.get $l4)
                (i32.const 19)))
            (local.set $p1
              (i32.add
                (local.get $l5)
                (i32.const 19)))
            (local.set $l6
              (i32.const 15))
            (local.set $l5
              (i32.load align=1
                (i32.add
                  (local.get $l5)
                  (i32.const 15))))
            (local.set $l3
              (i32.const 13)))
          (i32.store
            (i32.add
              (local.get $l4)
              (local.get $l6))
            (local.get $l5)))
        (i64.store align=1
          (local.get $p2)
          (i64.load align=1
            (local.get $p1)))
        (local.set $p2
          (i32.add
            (local.get $p2)
            (i32.const 8)))
        (local.set $p1
          (i32.add
            (local.get $p1)
            (i32.const 8))))
      (block $B21
        (br_if $B21
          (i32.eqz
            (i32.and
              (local.get $l3)
              (i32.const 4))))
        (i32.store align=1
          (local.get $p2)
          (i32.load align=1
            (local.get $p1)))
        (local.set $p2
          (i32.add
            (local.get $p2)
            (i32.const 4)))
        (local.set $p1
          (i32.add
            (local.get $p1)
            (i32.const 4))))
      (block $B22
        (br_if $B22
          (i32.eqz
            (i32.and
              (local.get $l3)
              (i32.const 2))))
        (i32.store16 align=1
          (local.get $p2)
          (i32.load16_u align=1
            (local.get $p1)))
        (local.set $p2
          (i32.add
            (local.get $p2)
            (i32.const 2)))
        (local.set $p1
          (i32.add
            (local.get $p1)
            (i32.const 2))))
      (br_if $B3
        (i32.eqz
          (i32.and
            (local.get $l3)
            (i32.const 1))))
      (i32.store8
        (local.get $p2)
        (i32.load8_u
          (local.get $p1))))
    (local.get $p0))
  (func $memmove (type $t6) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32)
    (block $B0
      (block $B1
        (block $B2
          (br_if $B2
            (i32.ge_u
              (local.get $p2)
              (i32.const 33)))
          (br_if $B0
            (i32.eq
              (local.get $p0)
              (local.get $p1)))
          (br_if $B1
            (i32.gt_u
              (i32.sub
                (local.get $p1)
                (local.tee $l3
                  (i32.add
                    (local.get $p0)
                    (local.get $p2))))
              (i32.sub
                (i32.const 0)
                (i32.shl
                  (local.get $p2)
                  (i32.const 1))))))
        (memory.copy
          (local.get $p0)
          (local.get $p1)
          (local.get $p2))
        (br $B0))
      (local.set $l4
        (i32.and
          (i32.xor
            (local.get $p1)
            (local.get $p0))
          (i32.const 3)))
      (block $B3
        (block $B4
          (block $B5
            (br_if $B5
              (i32.ge_u
                (local.get $p0)
                (local.get $p1)))
            (block $B6
              (br_if $B6
                (i32.eqz
                  (local.get $l4)))
              (local.set $l5
                (local.get $p2))
              (local.set $l3
                (local.get $p0))
              (br $B3))
            (block $B7
              (br_if $B7
                (i32.and
                  (local.get $p0)
                  (i32.const 3)))
              (local.set $l5
                (local.get $p2))
              (local.set $l3
                (local.get $p0))
              (br $B4))
            (br_if $B0
              (i32.eqz
                (local.get $p2)))
            (i32.store8
              (local.get $p0)
              (i32.load8_u
                (local.get $p1)))
            (local.set $l5
              (i32.add
                (local.get $p2)
                (i32.const -1)))
            (block $B8
              (br_if $B8
                (i32.and
                  (local.tee $l3
                    (i32.add
                      (local.get $p0)
                      (i32.const 1)))
                  (i32.const 3)))
              (local.set $p1
                (i32.add
                  (local.get $p1)
                  (i32.const 1)))
              (br $B4))
            (br_if $B0
              (i32.eqz
                (local.get $l5)))
            (i32.store8 offset=1
              (local.get $p0)
              (i32.load8_u offset=1
                (local.get $p1)))
            (local.set $l5
              (i32.add
                (local.get $p2)
                (i32.const -2)))
            (block $B9
              (br_if $B9
                (i32.and
                  (local.tee $l3
                    (i32.add
                      (local.get $p0)
                      (i32.const 2)))
                  (i32.const 3)))
              (local.set $p1
                (i32.add
                  (local.get $p1)
                  (i32.const 2)))
              (br $B4))
            (br_if $B0
              (i32.eqz
                (local.get $l5)))
            (i32.store8 offset=2
              (local.get $p0)
              (i32.load8_u offset=2
                (local.get $p1)))
            (local.set $l5
              (i32.add
                (local.get $p2)
                (i32.const -3)))
            (block $B10
              (br_if $B10
                (i32.and
                  (local.tee $l3
                    (i32.add
                      (local.get $p0)
                      (i32.const 3)))
                  (i32.const 3)))
              (local.set $p1
                (i32.add
                  (local.get $p1)
                  (i32.const 3)))
              (br $B4))
            (br_if $B0
              (i32.eqz
                (local.get $l5)))
            (i32.store8 offset=3
              (local.get $p0)
              (i32.load8_u offset=3
                (local.get $p1)))
            (local.set $l3
              (i32.add
                (local.get $p0)
                (i32.const 4)))
            (local.set $p1
              (i32.add
                (local.get $p1)
                (i32.const 4)))
            (local.set $l5
              (i32.add
                (local.get $p2)
                (i32.const -4)))
            (br $B4))
          (block $B11
            (br_if $B11
              (local.get $l4))
            (block $B12
              (br_if $B12
                (i32.eqz
                  (i32.and
                    (local.get $l3)
                    (i32.const 3))))
              (br_if $B0
                (i32.eqz
                  (local.get $p2)))
              (i32.store8
                (local.tee $l4
                  (i32.add
                    (local.get $p0)
                    (local.tee $l3
                      (i32.add
                        (local.get $p2)
                        (i32.const -1)))))
                (i32.load8_u
                  (i32.add
                    (local.get $p1)
                    (local.get $l3))))
              (block $B13
                (br_if $B13
                  (i32.and
                    (local.get $l4)
                    (i32.const 3)))
                (local.set $p2
                  (local.get $l3))
                (br $B12))
              (br_if $B0
                (i32.eqz
                  (local.get $l3)))
              (i32.store8
                (local.tee $l4
                  (i32.add
                    (local.get $p0)
                    (local.tee $l3
                      (i32.add
                        (local.get $p2)
                        (i32.const -2)))))
                (i32.load8_u
                  (i32.add
                    (local.get $p1)
                    (local.get $l3))))
              (block $B14
                (br_if $B14
                  (i32.and
                    (local.get $l4)
                    (i32.const 3)))
                (local.set $p2
                  (local.get $l3))
                (br $B12))
              (br_if $B0
                (i32.eqz
                  (local.get $l3)))
              (i32.store8
                (local.tee $l4
                  (i32.add
                    (local.get $p0)
                    (local.tee $l3
                      (i32.add
                        (local.get $p2)
                        (i32.const -3)))))
                (i32.load8_u
                  (i32.add
                    (local.get $p1)
                    (local.get $l3))))
              (block $B15
                (br_if $B15
                  (i32.and
                    (local.get $l4)
                    (i32.const 3)))
                (local.set $p2
                  (local.get $l3))
                (br $B12))
              (br_if $B0
                (i32.eqz
                  (local.get $l3)))
              (i32.store8
                (i32.add
                  (local.get $p0)
                  (local.tee $p2
                    (i32.add
                      (local.get $p2)
                      (i32.const -4))))
                (i32.load8_u
                  (i32.add
                    (local.get $p1)
                    (local.get $p2)))))
            (br_if $B11
              (i32.lt_u
                (local.get $p2)
                (i32.const 4)))
            (block $B16
              (br_if $B16
                (i32.eqz
                  (local.tee $l3
                    (i32.and
                      (i32.add
                        (i32.shr_u
                          (local.tee $l6
                            (i32.add
                              (local.get $p2)
                              (i32.const -4)))
                          (i32.const 2))
                        (i32.const 1))
                      (i32.const 3)))))
              (local.set $l4
                (i32.add
                  (local.get $p1)
                  (i32.const -4)))
              (local.set $l5
                (i32.add
                  (local.get $p0)
                  (i32.const -4)))
              (loop $L17
                (i32.store
                  (i32.add
                    (local.get $l5)
                    (local.get $p2))
                  (i32.load
                    (i32.add
                      (local.get $l4)
                      (local.get $p2))))
                (local.set $p2
                  (i32.add
                    (local.get $p2)
                    (i32.const -4)))
                (br_if $L17
                  (local.tee $l3
                    (i32.add
                      (local.get $l3)
                      (i32.const -1))))))
            (br_if $B11
              (i32.lt_u
                (local.get $l6)
                (i32.const 12)))
            (local.set $l5
              (i32.add
                (local.get $p1)
                (i32.const -16)))
            (local.set $l6
              (i32.add
                (local.get $p0)
                (i32.const -16)))
            (loop $L18
              (i32.store
                (i32.add
                  (local.tee $l3
                    (i32.add
                      (local.get $l6)
                      (local.get $p2)))
                  (i32.const 12))
                (i32.load
                  (i32.add
                    (local.tee $l4
                      (i32.add
                        (local.get $l5)
                        (local.get $p2)))
                    (i32.const 12))))
              (i32.store
                (i32.add
                  (local.get $l3)
                  (i32.const 8))
                (i32.load
                  (i32.add
                    (local.get $l4)
                    (i32.const 8))))
              (i32.store
                (i32.add
                  (local.get $l3)
                  (i32.const 4))
                (i32.load
                  (i32.add
                    (local.get $l4)
                    (i32.const 4))))
              (i32.store
                (local.get $l3)
                (i32.load
                  (local.get $l4)))
              (br_if $L18
                (i32.gt_u
                  (local.tee $p2
                    (i32.add
                      (local.get $p2)
                      (i32.const -16)))
                  (i32.const 3)))))
          (br_if $B0
            (i32.eqz
              (local.get $p2)))
          (local.set $l3
            (local.get $p2))
          (block $B19
            (br_if $B19
              (i32.eqz
                (local.tee $l4
                  (i32.and
                    (local.get $p2)
                    (i32.const 3)))))
            (local.set $l5
              (i32.add
                (local.get $p1)
                (i32.const -1)))
            (local.set $l6
              (i32.add
                (local.get $p0)
                (i32.const -1)))
            (local.set $l3
              (local.get $p2))
            (loop $L20
              (i32.store8
                (i32.add
                  (local.get $l6)
                  (local.get $l3))
                (i32.load8_u
                  (i32.add
                    (local.get $l5)
                    (local.get $l3))))
              (local.set $l3
                (i32.add
                  (local.get $l3)
                  (i32.const -1)))
              (br_if $L20
                (local.tee $l4
                  (i32.add
                    (local.get $l4)
                    (i32.const -1))))))
          (br_if $B0
            (i32.lt_u
              (local.get $p2)
              (i32.const 4)))
          (local.set $l4
            (i32.add
              (local.get $p1)
              (i32.const -4)))
          (local.set $l5
            (i32.add
              (local.get $p0)
              (i32.const -4)))
          (loop $L21
            (i32.store8
              (i32.add
                (local.tee $p1
                  (i32.add
                    (local.get $l5)
                    (local.get $l3)))
                (i32.const 3))
              (i32.load8_u
                (i32.add
                  (local.tee $p2
                    (i32.add
                      (local.get $l4)
                      (local.get $l3)))
                  (i32.const 3))))
            (i32.store8
              (i32.add
                (local.get $p1)
                (i32.const 2))
              (i32.load8_u
                (i32.add
                  (local.get $p2)
                  (i32.const 2))))
            (i32.store8
              (i32.add
                (local.get $p1)
                (i32.const 1))
              (i32.load8_u
                (i32.add
                  (local.get $p2)
                  (i32.const 1))))
            (i32.store8
              (local.get $p1)
              (i32.load8_u
                (local.get $p2)))
            (br_if $L21
              (local.tee $l3
                (i32.add
                  (local.get $l3)
                  (i32.const -4))))
            (br $B0)))
        (br_if $B3
          (i32.lt_u
            (local.get $l5)
            (i32.const 4)))
        (block $B22
          (br_if $B22
            (i32.eqz
              (local.tee $p2
                (i32.and
                  (i32.add
                    (i32.shr_u
                      (local.tee $l4
                        (i32.add
                          (local.get $l5)
                          (i32.const -4)))
                      (i32.const 2))
                    (i32.const 1))
                  (i32.const 7)))))
          (loop $L23
            (i32.store
              (local.get $l3)
              (i32.load
                (local.get $p1)))
            (local.set $p1
              (i32.add
                (local.get $p1)
                (i32.const 4)))
            (local.set $l3
              (i32.add
                (local.get $l3)
                (i32.const 4)))
            (local.set $l5
              (i32.add
                (local.get $l5)
                (i32.const -4)))
            (br_if $L23
              (local.tee $p2
                (i32.add
                  (local.get $p2)
                  (i32.const -1))))))
        (br_if $B3
          (i32.lt_u
            (local.get $l4)
            (i32.const 28)))
        (loop $L24
          (i32.store
            (local.get $l3)
            (i32.load
              (local.get $p1)))
          (i32.store offset=4
            (local.get $l3)
            (i32.load offset=4
              (local.get $p1)))
          (i32.store offset=8
            (local.get $l3)
            (i32.load offset=8
              (local.get $p1)))
          (i32.store offset=12
            (local.get $l3)
            (i32.load offset=12
              (local.get $p1)))
          (i32.store offset=16
            (local.get $l3)
            (i32.load offset=16
              (local.get $p1)))
          (i32.store offset=20
            (local.get $l3)
            (i32.load offset=20
              (local.get $p1)))
          (i32.store offset=24
            (local.get $l3)
            (i32.load offset=24
              (local.get $p1)))
          (i32.store offset=28
            (local.get $l3)
            (i32.load offset=28
              (local.get $p1)))
          (local.set $p1
            (i32.add
              (local.get $p1)
              (i32.const 32)))
          (local.set $l3
            (i32.add
              (local.get $l3)
              (i32.const 32)))
          (br_if $L24
            (i32.gt_u
              (local.tee $l5
                (i32.add
                  (local.get $l5)
                  (i32.const -32)))
              (i32.const 3)))))
      (br_if $B0
        (i32.eqz
          (local.get $l5)))
      (block $B25
        (block $B26
          (br_if $B26
            (local.tee $l4
              (i32.and
                (local.get $l5)
                (i32.const 7))))
          (local.set $p2
            (local.get $l5))
          (br $B25))
        (local.set $p2
          (local.get $l5))
        (loop $L27
          (i32.store8
            (local.get $l3)
            (i32.load8_u
              (local.get $p1)))
          (local.set $p2
            (i32.add
              (local.get $p2)
              (i32.const -1)))
          (local.set $l3
            (i32.add
              (local.get $l3)
              (i32.const 1)))
          (local.set $p1
            (i32.add
              (local.get $p1)
              (i32.const 1)))
          (br_if $L27
            (local.tee $l4
              (i32.add
                (local.get $l4)
                (i32.const -1))))))
      (br_if $B0
        (i32.lt_u
          (local.get $l5)
          (i32.const 8)))
      (loop $L28
        (i32.store8
          (local.get $l3)
          (i32.load8_u
            (local.get $p1)))
        (i32.store8 offset=1
          (local.get $l3)
          (i32.load8_u offset=1
            (local.get $p1)))
        (i32.store8 offset=2
          (local.get $l3)
          (i32.load8_u offset=2
            (local.get $p1)))
        (i32.store8 offset=3
          (local.get $l3)
          (i32.load8_u offset=3
            (local.get $p1)))
        (i32.store8 offset=4
          (local.get $l3)
          (i32.load8_u offset=4
            (local.get $p1)))
        (i32.store8 offset=5
          (local.get $l3)
          (i32.load8_u offset=5
            (local.get $p1)))
        (i32.store8 offset=6
          (local.get $l3)
          (i32.load8_u offset=6
            (local.get $p1)))
        (i32.store8 offset=7
          (local.get $l3)
          (i32.load8_u offset=7
            (local.get $p1)))
        (local.set $l3
          (i32.add
            (local.get $l3)
            (i32.const 8)))
        (local.set $p1
          (i32.add
            (local.get $p1)
            (i32.const 8)))
        (br_if $L28
          (local.tee $p2
            (i32.add
              (local.get $p2)
              (i32.const -8))))))
    (local.get $p0))
  (func $memset (type $t6) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i64)
    (block $B0
      (br_if $B0
        (i32.lt_u
          (local.get $p2)
          (i32.const 33)))
      (memory.fill
        (local.get $p0)
        (local.get $p1)
        (local.get $p2))
      (return
        (local.get $p0)))
    (block $B1
      (br_if $B1
        (i32.eqz
          (local.get $p2)))
      (i32.store8
        (local.get $p0)
        (local.get $p1))
      (i32.store8
        (i32.add
          (local.tee $l3
            (i32.add
              (local.get $p2)
              (local.get $p0)))
          (i32.const -1))
        (local.get $p1))
      (br_if $B1
        (i32.lt_u
          (local.get $p2)
          (i32.const 3)))
      (i32.store8 offset=2
        (local.get $p0)
        (local.get $p1))
      (i32.store8 offset=1
        (local.get $p0)
        (local.get $p1))
      (i32.store8
        (i32.add
          (local.get $l3)
          (i32.const -3))
        (local.get $p1))
      (i32.store8
        (i32.add
          (local.get $l3)
          (i32.const -2))
        (local.get $p1))
      (br_if $B1
        (i32.lt_u
          (local.get $p2)
          (i32.const 7)))
      (i32.store8 offset=3
        (local.get $p0)
        (local.get $p1))
      (i32.store8
        (i32.add
          (local.get $l3)
          (i32.const -4))
        (local.get $p1))
      (br_if $B1
        (i32.lt_u
          (local.get $p2)
          (i32.const 9)))
      (i32.store
        (local.tee $l5
          (i32.add
            (local.get $p0)
            (local.tee $l4
              (i32.and
                (i32.sub
                  (i32.const 0)
                  (local.get $p0))
                (i32.const 3)))))
        (local.tee $l3
          (i32.mul
            (i32.and
              (local.get $p1)
              (i32.const 255))
            (i32.const 16843009))))
      (i32.store
        (i32.add
          (local.tee $p2
            (i32.add
              (local.get $l5)
              (local.tee $p1
                (i32.and
                  (i32.sub
                    (local.get $p2)
                    (local.get $l4))
                  (i32.const -4)))))
          (i32.const -4))
        (local.get $l3))
      (br_if $B1
        (i32.lt_u
          (local.get $p1)
          (i32.const 9)))
      (i32.store offset=8
        (local.get $l5)
        (local.get $l3))
      (i32.store offset=4
        (local.get $l5)
        (local.get $l3))
      (i32.store
        (i32.add
          (local.get $p2)
          (i32.const -8))
        (local.get $l3))
      (i32.store
        (i32.add
          (local.get $p2)
          (i32.const -12))
        (local.get $l3))
      (br_if $B1
        (i32.lt_u
          (local.get $p1)
          (i32.const 25)))
      (i32.store offset=24
        (local.get $l5)
        (local.get $l3))
      (i32.store offset=20
        (local.get $l5)
        (local.get $l3))
      (i32.store offset=16
        (local.get $l5)
        (local.get $l3))
      (i32.store offset=12
        (local.get $l5)
        (local.get $l3))
      (i32.store
        (i32.add
          (local.get $p2)
          (i32.const -16))
        (local.get $l3))
      (i32.store
        (i32.add
          (local.get $p2)
          (i32.const -20))
        (local.get $l3))
      (i32.store
        (i32.add
          (local.get $p2)
          (i32.const -24))
        (local.get $l3))
      (i32.store
        (i32.add
          (local.get $p2)
          (i32.const -28))
        (local.get $l3))
      (br_if $B1
        (i32.lt_u
          (local.tee $p1
            (i32.sub
              (local.get $p1)
              (local.tee $p2
                (i32.or
                  (i32.and
                    (local.get $l5)
                    (i32.const 4))
                  (i32.const 24)))))
          (i32.const 32)))
      (local.set $l6
        (i64.mul
          (i64.extend_i32_u
            (local.get $l3))
          (i64.const 4294967297)))
      (local.set $p2
        (i32.add
          (local.get $l5)
          (local.get $p2)))
      (loop $L2
        (i64.store offset=24
          (local.get $p2)
          (local.get $l6))
        (i64.store offset=16
          (local.get $p2)
          (local.get $l6))
        (i64.store offset=8
          (local.get $p2)
          (local.get $l6))
        (i64.store
          (local.get $p2)
          (local.get $l6))
        (local.set $p2
          (i32.add
            (local.get $p2)
            (i32.const 32)))
        (br_if $L2
          (i32.gt_u
            (local.tee $p1
              (i32.add
                (local.get $p1)
                (i32.const -32)))
            (i32.const 31)))))
    (local.get $p0))
  (func $__strchrnul (type $t4) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32)
    (block $B0
      (block $B1
        (block $B2
          (block $B3
            (br_if $B3
              (i32.eqz
                (local.tee $l2
                  (i32.and
                    (local.get $p1)
                    (i32.const 255)))))
            (br_if $B1
              (i32.eqz
                (i32.and
                  (local.get $p0)
                  (i32.const 3))))
            (block $B4
              (br_if $B4
                (local.tee $l3
                  (i32.load8_u
                    (local.get $p0))))
              (return
                (local.get $p0)))
            (br_if $B2
              (i32.ne
                (local.get $l3)
                (i32.and
                  (local.get $p1)
                  (i32.const 255))))
            (return
              (local.get $p0)))
          (return
            (i32.add
              (local.get $p0)
              (call $strlen
                (local.get $p0)))))
        (block $B5
          (br_if $B5
            (i32.and
              (local.tee $l3
                (i32.add
                  (local.get $p0)
                  (i32.const 1)))
              (i32.const 3)))
          (local.set $p0
            (local.get $l3))
          (br $B1))
        (br_if $B0
          (i32.eqz
            (local.tee $l4
              (i32.load8_u
                (local.get $l3)))))
        (br_if $B0
          (i32.eq
            (local.get $l4)
            (i32.and
              (local.get $p1)
              (i32.const 255))))
        (block $B6
          (br_if $B6
            (i32.and
              (local.tee $l3
                (i32.add
                  (local.get $p0)
                  (i32.const 2)))
              (i32.const 3)))
          (local.set $p0
            (local.get $l3))
          (br $B1))
        (br_if $B0
          (i32.eqz
            (local.tee $l4
              (i32.load8_u
                (local.get $l3)))))
        (br_if $B0
          (i32.eq
            (local.get $l4)
            (i32.and
              (local.get $p1)
              (i32.const 255))))
        (block $B7
          (br_if $B7
            (i32.and
              (local.tee $l3
                (i32.add
                  (local.get $p0)
                  (i32.const 3)))
              (i32.const 3)))
          (local.set $p0
            (local.get $l3))
          (br $B1))
        (br_if $B0
          (i32.eqz
            (local.tee $l4
              (i32.load8_u
                (local.get $l3)))))
        (br_if $B0
          (i32.eq
            (local.get $l4)
            (i32.and
              (local.get $p1)
              (i32.const 255))))
        (local.set $p0
          (i32.add
            (local.get $p0)
            (i32.const 4))))
      (block $B8
        (br_if $B8
          (i32.and
            (i32.and
              (i32.xor
                (local.tee $l3
                  (i32.load
                    (local.get $p0)))
                (i32.const -1))
              (i32.add
                (local.get $l3)
                (i32.const -16843009)))
            (i32.const -2139062144)))
        (local.set $l2
          (i32.mul
            (local.get $l2)
            (i32.const 16843009)))
        (loop $L9
          (br_if $B8
            (i32.and
              (i32.and
                (i32.xor
                  (local.tee $l3
                    (i32.xor
                      (local.get $l3)
                      (local.get $l2)))
                  (i32.const -1))
                (i32.add
                  (local.get $l3)
                  (i32.const -16843009)))
              (i32.const -2139062144)))
          (br_if $L9
            (i32.eqz
              (i32.and
                (i32.and
                  (i32.xor
                    (local.tee $l3
                      (i32.load
                        (local.tee $p0
                          (i32.add
                            (local.get $p0)
                            (i32.const 4)))))
                    (i32.const -1))
                  (i32.add
                    (local.get $l3)
                    (i32.const -16843009)))
                (i32.const -2139062144))))))
      (local.set $l3
        (i32.add
          (local.get $p0)
          (i32.const -1)))
      (loop $L10
        (br_if $B0
          (i32.eqz
            (local.tee $p0
              (i32.load8_u
                (local.tee $l3
                  (i32.add
                    (local.get $l3)
                    (i32.const 1)))))))
        (br_if $L10
          (i32.ne
            (local.get $p0)
            (i32.and
              (local.get $p1)
              (i32.const 255))))))
    (local.get $l3))
  (func $__stpcpy (type $t4) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32)
    (block $B0
      (block $B1
        (block $B2
          (br_if $B2
            (i32.eqz
              (i32.and
                (i32.xor
                  (local.get $p1)
                  (local.get $p0))
                (i32.const 3))))
          (local.set $l2
            (i32.load8_u
              (local.get $p1)))
          (br $B1))
        (block $B3
          (br_if $B3
            (i32.eqz
              (i32.and
                (local.get $p1)
                (i32.const 3))))
          (i32.store8
            (local.get $p0)
            (local.tee $l2
              (i32.load8_u
                (local.get $p1))))
          (block $B4
            (br_if $B4
              (local.get $l2))
            (return
              (local.get $p0)))
          (local.set $l2
            (i32.add
              (local.get $p0)
              (i32.const 1)))
          (block $B5
            (br_if $B5
              (i32.and
                (local.tee $l3
                  (i32.add
                    (local.get $p1)
                    (i32.const 1)))
                (i32.const 3)))
            (local.set $p0
              (local.get $l2))
            (local.set $p1
              (local.get $l3))
            (br $B3))
          (i32.store8
            (local.get $l2)
            (local.tee $l3
              (i32.load8_u
                (local.get $l3))))
          (br_if $B0
            (i32.eqz
              (local.get $l3)))
          (local.set $l2
            (i32.add
              (local.get $p0)
              (i32.const 2)))
          (block $B6
            (br_if $B6
              (i32.and
                (local.tee $l3
                  (i32.add
                    (local.get $p1)
                    (i32.const 2)))
                (i32.const 3)))
            (local.set $p0
              (local.get $l2))
            (local.set $p1
              (local.get $l3))
            (br $B3))
          (i32.store8
            (local.get $l2)
            (local.tee $l3
              (i32.load8_u
                (local.get $l3))))
          (br_if $B0
            (i32.eqz
              (local.get $l3)))
          (local.set $l2
            (i32.add
              (local.get $p0)
              (i32.const 3)))
          (block $B7
            (br_if $B7
              (i32.and
                (local.tee $l3
                  (i32.add
                    (local.get $p1)
                    (i32.const 3)))
                (i32.const 3)))
            (local.set $p0
              (local.get $l2))
            (local.set $p1
              (local.get $l3))
            (br $B3))
          (i32.store8
            (local.get $l2)
            (local.tee $l3
              (i32.load8_u
                (local.get $l3))))
          (br_if $B0
            (i32.eqz
              (local.get $l3)))
          (local.set $p0
            (i32.add
              (local.get $p0)
              (i32.const 4)))
          (local.set $p1
            (i32.add
              (local.get $p1)
              (i32.const 4))))
        (br_if $B1
          (i32.and
            (i32.and
              (i32.xor
                (local.tee $l2
                  (i32.load
                    (local.get $p1)))
                (i32.const -1))
              (i32.add
                (local.get $l2)
                (i32.const -16843009)))
            (i32.const -2139062144)))
        (loop $L8
          (i32.store
            (local.get $p0)
            (local.get $l2))
          (local.set $p0
            (i32.add
              (local.get $p0)
              (i32.const 4)))
          (br_if $L8
            (i32.eqz
              (i32.and
                (i32.and
                  (i32.xor
                    (local.tee $l2
                      (i32.load
                        (local.tee $p1
                          (i32.add
                            (local.get $p1)
                            (i32.const 4)))))
                    (i32.const -1))
                  (i32.add
                    (local.get $l2)
                    (i32.const -16843009)))
                (i32.const -2139062144))))))
      (i32.store8
        (local.get $p0)
        (local.get $l2))
      (block $B9
        (br_if $B9
          (i32.and
            (local.get $l2)
            (i32.const 255)))
        (return
          (local.get $p0)))
      (local.set $p1
        (i32.add
          (local.get $p1)
          (i32.const 1)))
      (local.set $l2
        (local.get $p0))
      (loop $L10
        (i32.store8 offset=1
          (local.get $l2)
          (local.tee $p0
            (i32.load8_u
              (local.get $p1))))
        (local.set $p1
          (i32.add
            (local.get $p1)
            (i32.const 1)))
        (local.set $l2
          (i32.add
            (local.get $l2)
            (i32.const 1)))
        (br_if $L10
          (local.get $p0))))
    (local.get $l2))
  (func $strcpy (type $t4) (param $p0 i32) (param $p1 i32) (result i32)
    (drop
      (call $__stpcpy
        (local.get $p0)
        (local.get $p1)))
    (local.get $p0))
  (func $strdup (type $t3) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32)
    (block $B0
      (br_if $B0
        (i32.eqz
          (local.tee $l2
            (call $malloc
              (local.tee $l1
                (i32.add
                  (call $strlen
                    (local.get $p0))
                  (i32.const 1)))))))
      (drop
        (call $memcpy
          (local.get $l2)
          (local.get $p0)
          (local.get $l1))))
    (local.get $l2))
  (func $dummy.1 (type $t4) (param $p0 i32) (param $p1 i32) (result i32)
    (local.get $p0))
  (func $__lctrans (type $t4) (param $p0 i32) (param $p1 i32) (result i32)
    (call $dummy.1
      (local.get $p0)
      (local.get $p1)))
  (func $strerror (type $t3) (param $p0 i32) (result i32)
    (local $l1 i32)
    (block $B0
      (br_if $B0
        (local.tee $l1
          (i32.load offset=1056648
            (i32.const 0))))
      (local.set $l1
        (i32.const 1056624))
      (i32.store offset=1056648
        (i32.const 0)
        (i32.const 1056624)))
    (call $__lctrans
      (i32.add
        (i32.load16_u
          (i32.add
            (i32.shl
              (select
                (i32.const 0)
                (local.get $p0)
                (i32.gt_u
                  (local.get $p0)
                  (i32.const 76)))
              (i32.const 1))
            (i32.const 1054416)))
        (i32.const 1052850))
      (i32.load offset=20
        (local.get $l1))))
  (func $strerror_r (type $t6) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32)
    (block $B0
      (block $B1
        (br_if $B1
          (i32.lt_u
            (local.tee $l3
              (call $strlen
                (local.tee $p0
                  (call $strerror
                    (local.get $p0)))))
            (local.get $p2)))
        (local.set $l3
          (i32.const 68))
        (br_if $B0
          (i32.eqz
            (local.get $p2)))
        (i32.store8
          (i32.add
            (call $memcpy
              (local.get $p1)
              (local.get $p0)
              (local.tee $p2
                (i32.add
                  (local.get $p2)
                  (i32.const -1))))
            (local.get $p2))
          (i32.const 0))
        (return
          (i32.const 68)))
      (drop
        (call $memcpy
          (local.get $p1)
          (local.get $p0)
          (i32.add
            (local.get $l3)
            (i32.const 1))))
      (local.set $l3
        (i32.const 0)))
    (local.get $l3))
  (func $strlen (type $t3) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32)
    (local.set $l1
      (local.get $p0))
    (block $B0
      (block $B1
        (br_if $B1
          (i32.eqz
            (i32.and
              (local.get $p0)
              (i32.const 3))))
        (local.set $l1
          (local.get $p0))
        (br_if $B0
          (i32.eqz
            (i32.load8_u
              (local.get $p0))))
        (br_if $B1
          (i32.eqz
            (i32.and
              (local.tee $l1
                (i32.add
                  (local.get $p0)
                  (i32.const 1)))
              (i32.const 3))))
        (br_if $B0
          (i32.eqz
            (i32.load8_u
              (local.get $l1))))
        (br_if $B1
          (i32.eqz
            (i32.and
              (local.tee $l1
                (i32.add
                  (local.get $p0)
                  (i32.const 2)))
              (i32.const 3))))
        (br_if $B0
          (i32.eqz
            (i32.load8_u
              (local.get $l1))))
        (br_if $B1
          (i32.eqz
            (i32.and
              (local.tee $l1
                (i32.add
                  (local.get $p0)
                  (i32.const 3)))
              (i32.const 3))))
        (br_if $B0
          (i32.eqz
            (i32.load8_u
              (local.get $l1))))
        (local.set $l1
          (i32.add
            (local.get $p0)
            (i32.const 4))))
      (local.set $l1
        (i32.add
          (local.get $l1)
          (i32.const -5)))
      (loop $L2
        (local.set $l2
          (i32.add
            (local.get $l1)
            (i32.const 5)))
        (local.set $l1
          (i32.add
            (local.get $l1)
            (i32.const 4)))
        (br_if $L2
          (i32.eqz
            (i32.and
              (i32.and
                (i32.xor
                  (local.tee $l2
                    (i32.load
                      (local.get $l2)))
                  (i32.const -1))
                (i32.add
                  (local.get $l2)
                  (i32.const -16843009)))
              (i32.const -2139062144)))))
      (loop $L3
        (br_if $L3
          (i32.load8_u
            (local.tee $l1
              (i32.add
                (local.get $l1)
                (i32.const 1)))))))
    (i32.sub
      (local.get $l1)
      (local.get $p0)))
  (func $strncmp (type $t6) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32)
    (block $B0
      (br_if $B0
        (local.get $p2))
      (return
        (i32.const 0)))
    (local.set $l3
      (i32.const 0))
    (block $B1
      (br_if $B1
        (i32.eqz
          (local.tee $l4
            (i32.load8_u
              (local.get $p0)))))
      (local.set $p0
        (i32.add
          (local.get $p0)
          (i32.const 1)))
      (local.set $p2
        (i32.add
          (local.get $p2)
          (i32.const -1)))
      (loop $L2
        (block $B3
          (br_if $B3
            (local.tee $l5
              (i32.load8_u
                (local.get $p1))))
          (local.set $l3
            (local.get $l4))
          (br $B1))
        (block $B4
          (br_if $B4
            (local.get $p2))
          (local.set $l3
            (local.get $l4))
          (br $B1))
        (block $B5
          (br_if $B5
            (i32.eq
              (i32.and
                (local.get $l4)
                (i32.const 255))
              (local.get $l5)))
          (local.set $l3
            (local.get $l4))
          (br $B1))
        (local.set $p2
          (i32.add
            (local.get $p2)
            (i32.const -1)))
        (local.set $p1
          (i32.add
            (local.get $p1)
            (i32.const 1)))
        (local.set $l4
          (i32.load8_u
            (local.get $p0)))
        (local.set $p0
          (i32.add
            (local.get $p0)
            (i32.const 1)))
        (br_if $L2
          (local.get $l4))))
    (i32.sub
      (i32.and
        (local.get $l3)
        (i32.const 255))
      (i32.load8_u
        (local.get $p1))))
  (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h8f10bdac25d5749aE (type $t4) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32)
    (global.set $__stack_pointer
      (local.tee $l2
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 16))))
    (local.set $l3
      (i32.load offset=8
        (local.tee $p0
          (i32.load
            (local.get $p0)))))
    (local.set $p0
      (i32.load
        (local.get $p0)))
    (call $_ZN4core3fmt9Formatter10debug_list17h6d3a7adf18bffe95E
      (i32.add
        (local.get $l2)
        (i32.const 4))
      (local.get $p1))
    (block $B0
      (br_if $B0
        (i32.eqz
          (local.get $l3)))
      (loop $L1
        (i32.store offset=12
          (local.get $l2)
          (local.get $p0))
        (drop
          (call $_ZN4core3fmt8builders8DebugSet5entry17h56a3fc7826d78bcaE
            (i32.add
              (local.get $l2)
              (i32.const 4))
            (i32.add
              (local.get $l2)
              (i32.const 12))
            (i32.const 1054572)))
        (local.set $p0
          (i32.add
            (local.get $p0)
            (i32.const 1)))
        (br_if $L1
          (local.tee $l3
            (i32.add
              (local.get $l3)
              (i32.const -1))))))
    (local.set $p0
      (call $_ZN4core3fmt8builders9DebugList6finish17h1d8f7632de8cba13E
        (i32.add
          (local.get $l2)
          (i32.const 4))))
    (global.set $__stack_pointer
      (i32.add
        (local.get $l2)
        (i32.const 16)))
    (local.get $p0))
  (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc5cb3926615a6897E (type $t4) (param $p0 i32) (param $p1 i32) (result i32)
    (local.set $p0
      (i32.load
        (local.get $p0)))
    (block $B0
      (br_if $B0
        (call $_ZN4core3fmt9Formatter15debug_lower_hex17h7ad298462c0c0f4cE
          (local.get $p1)))
      (block $B1
        (br_if $B1
          (call $_ZN4core3fmt9Formatter15debug_upper_hex17h015188d8f739da3eE
            (local.get $p1)))
        (return
          (call $_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17h3b97757dd6a68ac5E
            (local.get $p0)
            (local.get $p1))))
      (return
        (call $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i8$GT$3fmt17h836f61cf8c740e2aE
          (local.get $p0)
          (local.get $p1))))
    (call $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i8$GT$3fmt17hcfe531e5bc34686aE
      (local.get $p0)
      (local.get $p1)))
  (func $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h0b1089beb23b0d2aE (type $t4) (param $p0 i32) (param $p1 i32) (result i32)
    (block $B0
      (br_if $B0
        (call $_ZN4core3fmt9Formatter15debug_lower_hex17h7ad298462c0c0f4cE
          (local.get $p1)))
      (block $B1
        (br_if $B1
          (call $_ZN4core3fmt9Formatter15debug_upper_hex17h015188d8f739da3eE
            (local.get $p1)))
        (return
          (call $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h64316d6d76eb68feE
            (local.get $p0)
            (local.get $p1))))
      (return
        (call $_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h6bfa1d0d94a71d6dE
          (local.get $p0)
          (local.get $p1))))
    (call $_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17hce490a8270b467c3E
      (local.get $p0)
      (local.get $p1)))
  (func $_ZN4core3ptr26drop_in_place$LT$usize$GT$17h5cd244b59f30c5edE (type $t1) (param $p0 i32))
  (func $_ZN4core3ptr37drop_in_place$LT$core..fmt..Error$GT$17hfed29c3f63e1d32aE (type $t1) (param $p0 i32))
  (func $_ZN5alloc7raw_vec11finish_grow17h5462aeacf15bebf2E (type $t9) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (block $B0
      (block $B1
        (br_if $B1
          (i32.eqz
            (local.get $p1)))
        (br_if $B0
          (i32.le_s
            (local.get $p2)
            (i32.const -1)))
        (block $B2
          (block $B3
            (block $B4
              (block $B5
                (br_if $B5
                  (i32.eqz
                    (i32.load offset=4
                      (local.get $p3))))
                (block $B6
                  (br_if $B6
                    (local.tee $p1
                      (i32.load
                        (i32.add
                          (local.get $p3)
                          (i32.const 8)))))
                  (block $B7
                    (br_if $B7
                      (local.get $p2))
                    (local.set $p1
                      (i32.const 1))
                    (br $B3))
                  (drop
                    (i32.load8_u offset=1056013
                      (i32.const 0)))
                  (local.set $p1
                    (call $__rust_alloc
                      (local.get $p2)
                      (i32.const 1)))
                  (br $B4))
                (local.set $p1
                  (call $__rust_realloc
                    (i32.load
                      (local.get $p3))
                    (local.get $p1)
                    (i32.const 1)
                    (local.get $p2)))
                (br $B4))
              (block $B8
                (br_if $B8
                  (local.get $p2))
                (local.set $p1
                  (i32.const 1))
                (br $B3))
              (drop
                (i32.load8_u offset=1056013
                  (i32.const 0)))
              (local.set $p1
                (call $__rust_alloc
                  (local.get $p2)
                  (i32.const 1))))
            (br_if $B2
              (i32.eqz
                (local.get $p1))))
          (i32.store offset=4
            (local.get $p0)
            (local.get $p1))
          (i32.store
            (i32.add
              (local.get $p0)
              (i32.const 8))
            (local.get $p2))
          (i32.store
            (local.get $p0)
            (i32.const 0))
          (return))
        (i32.store offset=4
          (local.get $p0)
          (i32.const 1))
        (i32.store
          (i32.add
            (local.get $p0)
            (i32.const 8))
          (local.get $p2))
        (i32.store
          (local.get $p0)
          (i32.const 1))
        (return))
      (i32.store offset=4
        (local.get $p0)
        (i32.const 0))
      (i32.store
        (i32.add
          (local.get $p0)
          (i32.const 8))
        (local.get $p2))
      (i32.store
        (local.get $p0)
        (i32.const 1))
      (return))
    (i32.store offset=4
      (local.get $p0)
      (i32.const 0))
    (i32.store
      (local.get $p0)
      (i32.const 1)))
  (func $_ZN5alloc5alloc18handle_alloc_error17haf16dbf93a34ba25E (type $t2) (param $p0 i32) (param $p1 i32)
    (call $_ZN5alloc5alloc18handle_alloc_error8rt_error17hb2564f372321dfd5E
      (local.get $p0)
      (local.get $p1))
    (unreachable))
  (func $_ZN5alloc7raw_vec17capacity_overflow17h71c1886b236d8c9dE (type $t0)
    (local $l0 i32)
    (global.set $__stack_pointer
      (local.tee $l0
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 32))))
    (i64.store align=4
      (i32.add
        (local.get $l0)
        (i32.const 20))
      (i64.const 0))
    (i32.store offset=12
      (local.get $l0)
      (i32.const 1))
    (i32.store offset=8
      (local.get $l0)
      (i32.const 1054636))
    (i32.store offset=16
      (local.get $l0)
      (i32.const 1054588))
    (call $_ZN4core9panicking9panic_fmt17h2a1cf3beec13dfc3E
      (i32.add
        (local.get $l0)
        (i32.const 8))
      (i32.const 1054644))
    (unreachable))
  (func $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h4af68b03c21a52d1E (type $t2) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32)
    (global.set $__stack_pointer
      (local.tee $l2
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 32))))
    (block $B0
      (block $B1
        (br_if $B1
          (i32.eqz
            (local.tee $p1
              (i32.add
                (local.get $p1)
                (i32.const 1)))))
        (local.set $l4
          (i32.shr_u
            (i32.xor
              (local.tee $p1
                (select
                  (local.tee $p1
                    (select
                      (local.tee $l4
                        (i32.shl
                          (local.tee $l3
                            (i32.load offset=4
                              (local.get $p0)))
                          (i32.const 1)))
                      (local.get $p1)
                      (i32.gt_u
                        (local.get $l4)
                        (local.get $p1))))
                  (i32.const 8)
                  (i32.gt_u
                    (local.get $p1)
                    (i32.const 8))))
              (i32.const -1))
            (i32.const 31)))
        (block $B2
          (block $B3
            (br_if $B3
              (local.get $l3))
            (i32.store offset=24
              (local.get $l2)
              (i32.const 0))
            (br $B2))
          (i32.store offset=28
            (local.get $l2)
            (local.get $l3))
          (i32.store offset=24
            (local.get $l2)
            (i32.const 1))
          (i32.store offset=20
            (local.get $l2)
            (i32.load
              (local.get $p0))))
        (call $_ZN5alloc7raw_vec11finish_grow17h5462aeacf15bebf2E
          (i32.add
            (local.get $l2)
            (i32.const 8))
          (local.get $l4)
          (local.get $p1)
          (i32.add
            (local.get $l2)
            (i32.const 20)))
        (local.set $l3
          (i32.load offset=12
            (local.get $l2)))
        (block $B4
          (br_if $B4
            (i32.load offset=8
              (local.get $l2)))
          (i32.store offset=4
            (local.get $p0)
            (local.get $p1))
          (i32.store
            (local.get $p0)
            (local.get $l3))
          (br $B0))
        (br_if $B0
          (i32.eq
            (local.get $l3)
            (i32.const -2147483647)))
        (br_if $B1
          (i32.eqz
            (local.get $l3)))
        (call $_ZN5alloc5alloc18handle_alloc_error17haf16dbf93a34ba25E
          (local.get $l3)
          (i32.load
            (i32.add
              (local.get $l2)
              (i32.const 16))))
        (unreachable))
      (call $_ZN5alloc7raw_vec17capacity_overflow17h71c1886b236d8c9dE)
      (unreachable))
    (global.set $__stack_pointer
      (i32.add
        (local.get $l2)
        (i32.const 32))))
  (func $_ZN5alloc5alloc18handle_alloc_error8rt_error17hb2564f372321dfd5E (type $t2) (param $p0 i32) (param $p1 i32)
    (call $__rust_alloc_error_handler
      (local.get $p1)
      (local.get $p0))
    (unreachable))
  (func $_ZN72_$LT$$RF$str$u20$as$u20$alloc..ffi..c_str..CString..new..SpecNewImpl$GT$13spec_new_impl17hbc2c7db29cb7e1d2E (type $t5) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32)
    (global.set $__stack_pointer
      (local.tee $l3
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 32))))
    (block $B0
      (block $B1
        (block $B2
          (block $B3
            (block $B4
              (br_if $B4
                (i32.eqz
                  (local.tee $l4
                    (i32.add
                      (local.get $p2)
                      (i32.const 1)))))
              (br_if $B3
                (i32.le_s
                  (local.get $l4)
                  (i32.const -1)))
              (drop
                (i32.load8_u offset=1056013
                  (i32.const 0)))
              (br_if $B2
                (i32.eqz
                  (local.tee $l5
                    (call $__rust_alloc
                      (local.get $l4)
                      (i32.const 1)))))
              (local.set $l6
                (call $memcpy
                  (local.get $l5)
                  (local.get $p1)
                  (local.get $p2)))
              (block $B5
                (br_if $B5
                  (i32.lt_u
                    (local.get $p2)
                    (i32.const 8)))
                (call $_ZN4core5slice6memchr14memchr_aligned17hcb68703b7d8067b2E
                  (i32.add
                    (local.get $l3)
                    (i32.const 8))
                  (i32.const 0)
                  (local.get $p1)
                  (local.get $p2))
                (local.set $l7
                  (i32.load offset=12
                    (local.get $l3)))
                (local.set $l8
                  (i32.load offset=8
                    (local.get $l3)))
                (br $B0))
              (block $B6
                (br_if $B6
                  (local.get $p2))
                (local.set $l7
                  (i32.const 0))
                (local.set $l8
                  (i32.const 0))
                (br $B0))
              (block $B7
                (br_if $B7
                  (i32.load8_u
                    (local.get $p1)))
                (local.set $l8
                  (i32.const 1))
                (local.set $l7
                  (i32.const 0))
                (br $B0))
              (local.set $l8
                (i32.const 1))
              (br_if $B1
                (i32.eq
                  (local.get $p2)
                  (i32.const 1)))
              (block $B8
                (br_if $B8
                  (i32.load8_u offset=1
                    (local.get $p1)))
                (local.set $l7
                  (i32.const 1))
                (br $B0))
              (local.set $l7
                (i32.const 2))
              (br_if $B1
                (i32.eq
                  (local.get $p2)
                  (i32.const 2)))
              (br_if $B0
                (i32.eqz
                  (i32.load8_u offset=2
                    (local.get $p1))))
              (local.set $l7
                (i32.const 3))
              (br_if $B1
                (i32.eq
                  (local.get $p2)
                  (i32.const 3)))
              (br_if $B0
                (i32.eqz
                  (i32.load8_u offset=3
                    (local.get $p1))))
              (local.set $l7
                (i32.const 4))
              (br_if $B1
                (i32.eq
                  (local.get $p2)
                  (i32.const 4)))
              (br_if $B0
                (i32.eqz
                  (i32.load8_u offset=4
                    (local.get $p1))))
              (local.set $l7
                (i32.const 5))
              (br_if $B1
                (i32.eq
                  (local.get $p2)
                  (i32.const 5)))
              (br_if $B0
                (i32.eqz
                  (i32.load8_u offset=5
                    (local.get $p1))))
              (local.set $l7
                (local.get $p2))
              (local.set $l8
                (i32.const 0))
              (br_if $B0
                (i32.eq
                  (local.get $p2)
                  (i32.const 6)))
              (local.set $l7
                (select
                  (local.get $p2)
                  (i32.const 6)
                  (local.tee $p1
                    (i32.load8_u offset=6
                      (local.get $p1)))))
              (local.set $l8
                (i32.eqz
                  (local.get $p1)))
              (br $B0))
            (call $_ZN4core9panicking5panic17hfe17c7db57004300E
              (i32.const 1054660)
              (i32.const 43)
              (i32.const 1054736))
            (unreachable))
          (call $_ZN5alloc7raw_vec17capacity_overflow17h71c1886b236d8c9dE)
          (unreachable))
        (call $_ZN5alloc5alloc18handle_alloc_error17haf16dbf93a34ba25E
          (i32.const 1)
          (local.get $l4))
        (unreachable))
      (local.set $l7
        (local.get $p2))
      (local.set $l8
        (i32.const 0)))
    (block $B9
      (block $B10
        (br_if $B10
          (local.get $l8))
        (i32.store offset=28
          (local.get $l3)
          (local.get $p2))
        (i32.store offset=24
          (local.get $l3)
          (local.get $l4))
        (i32.store offset=20
          (local.get $l3)
          (local.get $l6))
        (call $_ZN5alloc3ffi5c_str7CString19_from_vec_unchecked17h91419cbe7ca63be5E
          (local.get $l3)
          (i32.add
            (local.get $l3)
            (i32.const 20)))
        (i64.store offset=4 align=4
          (local.get $p0)
          (i64.load
            (local.get $l3)))
        (local.set $l5
          (i32.const 0))
        (br $B9))
      (i32.store offset=8
        (local.get $p0)
        (local.get $p2))
      (i32.store offset=4
        (local.get $p0)
        (local.get $l4))
      (i32.store offset=12
        (local.get $p0)
        (local.get $l7)))
    (i32.store
      (local.get $p0)
      (local.get $l5))
    (global.set $__stack_pointer
      (i32.add
        (local.get $l3)
        (i32.const 32))))
  (func $_ZN5alloc3ffi5c_str7CString19_from_vec_unchecked17h91419cbe7ca63be5E (type $t2) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32)
    (global.set $__stack_pointer
      (local.tee $l2
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 32))))
    (block $B0
      (block $B1
        (block $B2
          (block $B3
            (block $B4
              (br_if $B4
                (i32.ne
                  (local.tee $l3
                    (i32.load offset=4
                      (local.get $p1)))
                  (local.tee $l4
                    (i32.load offset=8
                      (local.get $p1)))))
              (br_if $B2
                (i32.eqz
                  (local.tee $l3
                    (i32.add
                      (local.get $l4)
                      (i32.const 1)))))
              (local.set $l5
                (i32.shr_u
                  (i32.xor
                    (local.get $l3)
                    (i32.const -1))
                  (i32.const 31)))
              (block $B5
                (block $B6
                  (br_if $B6
                    (local.get $l4))
                  (i32.store offset=24
                    (local.get $l2)
                    (i32.const 0))
                  (br $B5))
                (i32.store offset=28
                  (local.get $l2)
                  (local.get $l4))
                (i32.store offset=24
                  (local.get $l2)
                  (i32.const 1))
                (i32.store offset=20
                  (local.get $l2)
                  (i32.load
                    (local.get $p1))))
              (call $_ZN5alloc7raw_vec11finish_grow17h5462aeacf15bebf2E
                (i32.add
                  (local.get $l2)
                  (i32.const 8))
                (local.get $l5)
                (local.get $l3)
                (i32.add
                  (local.get $l2)
                  (i32.const 20)))
              (local.set $l5
                (i32.load offset=12
                  (local.get $l2)))
              (br_if $B3
                (i32.load offset=8
                  (local.get $l2)))
              (i32.store offset=4
                (local.get $p1)
                (local.get $l3))
              (i32.store
                (local.get $p1)
                (local.get $l5)))
            (br_if $B0
              (i32.ne
                (local.get $l4)
                (local.get $l3)))
            (br $B1))
          (br_if $B1
            (i32.eq
              (local.get $l5)
              (i32.const -2147483647)))
          (br_if $B2
            (i32.eqz
              (local.get $l5)))
          (call $_ZN5alloc5alloc18handle_alloc_error17haf16dbf93a34ba25E
            (local.get $l5)
            (i32.load
              (i32.add
                (local.get $l2)
                (i32.const 16))))
          (unreachable))
        (call $_ZN5alloc7raw_vec17capacity_overflow17h71c1886b236d8c9dE)
        (unreachable))
      (call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h4af68b03c21a52d1E
        (local.get $p1)
        (local.get $l4))
      (local.set $l3
        (i32.load offset=4
          (local.get $p1)))
      (local.set $l4
        (i32.load offset=8
          (local.get $p1))))
    (i32.store offset=8
      (local.get $p1)
      (local.tee $l5
        (i32.add
          (local.get $l4)
          (i32.const 1))))
    (i32.store8
      (i32.add
        (local.tee $p1
          (i32.load
            (local.get $p1)))
        (local.get $l4))
      (i32.const 0))
    (block $B7
      (block $B8
        (block $B9
          (br_if $B9
            (i32.gt_u
              (local.get $l3)
              (local.get $l5)))
          (local.set $l4
            (local.get $p1))
          (br $B8))
        (block $B10
          (br_if $B10
            (local.get $l5))
          (local.set $l4
            (i32.const 1))
          (call $__rust_dealloc
            (local.get $p1)
            (local.get $l3)
            (i32.const 1))
          (br $B8))
        (br_if $B7
          (i32.eqz
            (local.tee $l4
              (call $__rust_realloc
                (local.get $p1)
                (local.get $l3)
                (i32.const 1)
                (local.get $l5))))))
      (i32.store offset=4
        (local.get $p0)
        (local.get $l5))
      (i32.store
        (local.get $p0)
        (local.get $l4))
      (global.set $__stack_pointer
        (i32.add
          (local.get $l2)
          (i32.const 32)))
      (return))
    (call $_ZN5alloc5alloc18handle_alloc_error17haf16dbf93a34ba25E
      (i32.const 1)
      (local.get $l5))
    (unreachable))
  (func $_ZN5alloc4sync32arcinner_layout_for_value_layout17h338e91e028154604E (type $t5) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32) (local $l4 i32)
    (global.set $__stack_pointer
      (local.tee $l3
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 16))))
    (block $B0
      (br_if $B0
        (i32.lt_u
          (local.tee $l4
            (i32.and
              (i32.add
                (local.get $p1)
                (i32.const 7))
              (i32.sub
                (i32.const 0)
                (local.get $p1))))
          (i32.add
            (local.get $l4)
            (i32.const -8))))
      (br_if $B0
        (i32.lt_u
          (local.tee $p2
            (i32.add
              (local.get $l4)
              (local.get $p2)))
          (local.get $l4)))
      (br_if $B0
        (i32.gt_u
          (local.get $p2)
          (i32.sub
            (i32.const -2147483648)
            (local.tee $p1
              (select
                (local.get $p1)
                (i32.const 4)
                (i32.gt_u
                  (local.get $p1)
                  (i32.const 4)))))))
      (i32.store
        (local.get $p0)
        (local.get $p1))
      (i32.store offset=4
        (local.get $p0)
        (i32.and
          (i32.add
            (i32.add
              (local.get $p1)
              (local.get $p2))
            (i32.const -1))
          (i32.sub
            (i32.const 0)
            (local.get $p1))))
      (global.set $__stack_pointer
        (i32.add
          (local.get $l3)
          (i32.const 16)))
      (return))
    (call $_ZN4core6result13unwrap_failed17hd8d94c2109be2ae4E
      (i32.const 1054752)
      (i32.const 43)
      (i32.add
        (local.get $l3)
        (i32.const 15))
      (i32.const 1054796)
      (i32.const 1054840))
    (unreachable))
  (func $_ZN64_$LT$alloc..ffi..c_str..NulError$u20$as$u20$core..fmt..Debug$GT$3fmt17hd21c63415083184cE (type $t4) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32)
    (global.set $__stack_pointer
      (local.tee $l2
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 16))))
    (i32.store offset=12
      (local.get $l2)
      (local.get $p0))
    (local.set $p0
      (call $_ZN4core3fmt9Formatter25debug_tuple_field2_finish17h8b57a87d4eadda96E
        (local.get $p1)
        (i32.const 1054856)
        (i32.const 8)
        (i32.add
          (local.get $p0)
          (i32.const 12))
        (i32.const 1054864)
        (i32.add
          (local.get $l2)
          (i32.const 12))
        (i32.const 1054880)))
    (global.set $__stack_pointer
      (i32.add
        (local.get $l2)
        (i32.const 16)))
    (local.get $p0))
  (func $_ZN4core3ops8function6FnOnce9call_once17h0707ebdb78fd3aefE (type $t4) (param $p0 i32) (param $p1 i32) (result i32)
    (drop
      (i32.load
        (local.get $p0)))
    (loop $L0 (result i32)
      (br $L0)))
  (func $_ZN4core3ptr102drop_in_place$LT$$RF$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$u8$GT$$GT$$GT$17h8094d3b132b454a3E (type $t1) (param $p0 i32))
  (func $_ZN4core3ptr37drop_in_place$LT$core..fmt..Error$GT$17hd6506f89a6deb5baE (type $t1) (param $p0 i32))
  (func $_ZN4core9panicking9panic_fmt17h2a1cf3beec13dfc3E (type $t2) (param $p0 i32) (param $p1 i32)
    (local $l2 i32)
    (global.set $__stack_pointer
      (local.tee $l2
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 32))))
    (i32.store16 offset=28
      (local.get $l2)
      (i32.const 1))
    (i32.store offset=24
      (local.get $l2)
      (local.get $p1))
    (i32.store offset=20
      (local.get $l2)
      (local.get $p0))
    (i32.store offset=16
      (local.get $l2)
      (i32.const 1054992))
    (i32.store offset=12
      (local.get $l2)
      (i32.const 1054896))
    (call $rust_begin_unwind
      (i32.add
        (local.get $l2)
        (i32.const 12)))
    (unreachable))
  (func $_ZN4core5slice5index26slice_start_index_len_fail17he7b2fe2a6da776eaE (type $t5) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32)
    (global.set $__stack_pointer
      (local.tee $l3
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 48))))
    (i32.store
      (local.get $l3)
      (local.get $p0))
    (i32.store offset=4
      (local.get $l3)
      (local.get $p1))
    (i64.store align=4
      (i32.add
        (i32.add
          (local.get $l3)
          (i32.const 8))
        (i32.const 12))
      (i64.const 2))
    (i32.store
      (i32.add
        (i32.add
          (local.get $l3)
          (i32.const 32))
        (i32.const 12))
      (i32.const 11))
    (i32.store offset=12
      (local.get $l3)
      (i32.const 2))
    (i32.store offset=8
      (local.get $l3)
      (i32.const 1055608))
    (i32.store offset=36
      (local.get $l3)
      (i32.const 11))
    (i32.store offset=16
      (local.get $l3)
      (i32.add
        (local.get $l3)
        (i32.const 32)))
    (i32.store offset=40
      (local.get $l3)
      (i32.add
        (local.get $l3)
        (i32.const 4)))
    (i32.store offset=32
      (local.get $l3)
      (local.get $l3))
    (call $_ZN4core9panicking9panic_fmt17h2a1cf3beec13dfc3E
      (i32.add
        (local.get $l3)
        (i32.const 8))
      (local.get $p2))
    (unreachable))
  (func $_ZN4core5slice5index24slice_end_index_len_fail17h2d214d250153a7a9E (type $t5) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32)
    (global.set $__stack_pointer
      (local.tee $l3
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 48))))
    (i32.store
      (local.get $l3)
      (local.get $p0))
    (i32.store offset=4
      (local.get $l3)
      (local.get $p1))
    (i64.store align=4
      (i32.add
        (i32.add
          (local.get $l3)
          (i32.const 8))
        (i32.const 12))
      (i64.const 2))
    (i32.store
      (i32.add
        (i32.add
          (local.get $l3)
          (i32.const 32))
        (i32.const 12))
      (i32.const 11))
    (i32.store offset=12
      (local.get $l3)
      (i32.const 2))
    (i32.store offset=8
      (local.get $l3)
      (i32.const 1055640))
    (i32.store offset=36
      (local.get $l3)
      (i32.const 11))
    (i32.store offset=16
      (local.get $l3)
      (i32.add
        (local.get $l3)
        (i32.const 32)))
    (i32.store offset=40
      (local.get $l3)
      (i32.add
        (local.get $l3)
        (i32.const 4)))
    (i32.store offset=32
      (local.get $l3)
      (local.get $l3))
    (call $_ZN4core9panicking9panic_fmt17h2a1cf3beec13dfc3E
      (i32.add
        (local.get $l3)
        (i32.const 8))
      (local.get $p2))
    (unreachable))
  (func $_ZN4core3fmt9Formatter3pad17h3abb0d5578a98d1fE (type $t6) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32)
    (block $B0
      (br_if $B0
        (i32.eqz
          (i32.or
            (local.tee $l3
              (i32.load
                (local.get $p0)))
            (local.tee $l4
              (i32.load offset=8
                (local.get $p0))))))
      (block $B1
        (br_if $B1
          (i32.eqz
            (local.get $l4)))
        (local.set $l5
          (i32.add
            (local.get $p1)
            (local.get $p2)))
        (local.set $l6
          (i32.add
            (i32.load
              (i32.add
                (local.get $p0)
                (i32.const 12)))
            (i32.const 1)))
        (local.set $l7
          (i32.const 0))
        (local.set $l8
          (local.get $p1))
        (block $B2
          (loop $L3
            (local.set $l4
              (local.get $l8))
            (br_if $B2
              (i32.eqz
                (local.tee $l6
                  (i32.add
                    (local.get $l6)
                    (i32.const -1)))))
            (br_if $B1
              (i32.eq
                (local.get $l4)
                (local.get $l5)))
            (block $B4
              (block $B5
                (br_if $B5
                  (i32.le_s
                    (local.tee $l9
                      (i32.load8_s
                        (local.get $l4)))
                    (i32.const -1)))
                (local.set $l8
                  (i32.add
                    (local.get $l4)
                    (i32.const 1)))
                (local.set $l9
                  (i32.and
                    (local.get $l9)
                    (i32.const 255)))
                (br $B4))
              (local.set $l10
                (i32.and
                  (i32.load8_u offset=1
                    (local.get $l4))
                  (i32.const 63)))
              (local.set $l8
                (i32.and
                  (local.get $l9)
                  (i32.const 31)))
              (block $B6
                (br_if $B6
                  (i32.gt_u
                    (local.get $l9)
                    (i32.const -33)))
                (local.set $l9
                  (i32.or
                    (i32.shl
                      (local.get $l8)
                      (i32.const 6))
                    (local.get $l10)))
                (local.set $l8
                  (i32.add
                    (local.get $l4)
                    (i32.const 2)))
                (br $B4))
              (local.set $l10
                (i32.or
                  (i32.shl
                    (local.get $l10)
                    (i32.const 6))
                  (i32.and
                    (i32.load8_u offset=2
                      (local.get $l4))
                    (i32.const 63))))
              (block $B7
                (br_if $B7
                  (i32.ge_u
                    (local.get $l9)
                    (i32.const -16)))
                (local.set $l9
                  (i32.or
                    (local.get $l10)
                    (i32.shl
                      (local.get $l8)
                      (i32.const 12))))
                (local.set $l8
                  (i32.add
                    (local.get $l4)
                    (i32.const 3)))
                (br $B4))
              (br_if $B1
                (i32.eq
                  (local.tee $l9
                    (i32.or
                      (i32.or
                        (i32.shl
                          (local.get $l10)
                          (i32.const 6))
                        (i32.and
                          (i32.load8_u offset=3
                            (local.get $l4))
                          (i32.const 63)))
                      (i32.and
                        (i32.shl
                          (local.get $l8)
                          (i32.const 18))
                        (i32.const 1835008))))
                  (i32.const 1114112)))
              (local.set $l8
                (i32.add
                  (local.get $l4)
                  (i32.const 4))))
            (local.set $l7
              (i32.add
                (i32.sub
                  (local.get $l7)
                  (local.get $l4))
                (local.get $l8)))
            (br_if $L3
              (i32.ne
                (local.get $l9)
                (i32.const 1114112)))
            (br $B1)))
        (br_if $B1
          (i32.eq
            (local.get $l4)
            (local.get $l5)))
        (block $B8
          (br_if $B8
            (i32.gt_s
              (local.tee $l8
                (i32.load8_s
                  (local.get $l4)))
              (i32.const -1)))
          (br_if $B8
            (i32.lt_u
              (local.get $l8)
              (i32.const -32)))
          (br_if $B8
            (i32.lt_u
              (local.get $l8)
              (i32.const -16)))
          (br_if $B1
            (i32.eq
              (i32.or
                (i32.or
                  (i32.or
                    (i32.shl
                      (i32.and
                        (i32.load8_u offset=2
                          (local.get $l4))
                        (i32.const 63))
                      (i32.const 6))
                    (i32.shl
                      (i32.and
                        (i32.load8_u offset=1
                          (local.get $l4))
                        (i32.const 63))
                      (i32.const 12)))
                  (i32.and
                    (i32.load8_u offset=3
                      (local.get $l4))
                    (i32.const 63)))
                (i32.and
                  (i32.shl
                    (i32.and
                      (local.get $l8)
                      (i32.const 255))
                    (i32.const 18))
                  (i32.const 1835008)))
              (i32.const 1114112))))
        (block $B9
          (block $B10
            (br_if $B10
              (i32.eqz
                (local.get $l7)))
            (block $B11
              (br_if $B11
                (i32.lt_u
                  (local.get $l7)
                  (local.get $p2)))
              (local.set $l4
                (i32.const 0))
              (br_if $B10
                (i32.eq
                  (local.get $l7)
                  (local.get $p2)))
              (br $B9))
            (local.set $l4
              (i32.const 0))
            (br_if $B9
              (i32.lt_s
                (i32.load8_s
                  (i32.add
                    (local.get $p1)
                    (local.get $l7)))
                (i32.const -64))))
          (local.set $l4
            (local.get $p1)))
        (local.set $p2
          (select
            (local.get $l7)
            (local.get $p2)
            (local.get $l4)))
        (local.set $p1
          (select
            (local.get $l4)
            (local.get $p1)
            (local.get $l4))))
      (block $B12
        (br_if $B12
          (local.get $l3))
        (return
          (call_indirect $T0 (type $t6)
            (i32.load offset=20
              (local.get $p0))
            (local.get $p1)
            (local.get $p2)
            (i32.load offset=12
              (i32.load
                (i32.add
                  (local.get $p0)
                  (i32.const 24)))))))
      (local.set $l5
        (i32.load offset=4
          (local.get $p0)))
      (block $B13
        (block $B14
          (br_if $B14
            (i32.lt_u
              (local.get $p2)
              (i32.const 16)))
          (local.set $l4
            (call $_ZN4core3str5count14do_count_chars17hd3ed9b0649f420edE
              (local.get $p1)
              (local.get $p2)))
          (br $B13))
        (block $B15
          (br_if $B15
            (local.get $p2))
          (local.set $l4
            (i32.const 0))
          (br $B13))
        (local.set $l6
          (i32.and
            (local.get $p2)
            (i32.const 3)))
        (block $B16
          (block $B17
            (br_if $B17
              (i32.ge_u
                (local.get $p2)
                (i32.const 4)))
            (local.set $l4
              (i32.const 0))
            (local.set $l9
              (i32.const 0))
            (br $B16))
          (local.set $l7
            (i32.and
              (local.get $p2)
              (i32.const -4)))
          (local.set $l4
            (i32.const 0))
          (local.set $l9
            (i32.const 0))
          (loop $L18
            (local.set $l4
              (i32.add
                (i32.add
                  (i32.add
                    (i32.add
                      (local.get $l4)
                      (i32.gt_s
                        (i32.load8_s
                          (local.tee $l8
                            (i32.add
                              (local.get $p1)
                              (local.get $l9))))
                        (i32.const -65)))
                    (i32.gt_s
                      (i32.load8_s
                        (i32.add
                          (local.get $l8)
                          (i32.const 1)))
                      (i32.const -65)))
                  (i32.gt_s
                    (i32.load8_s
                      (i32.add
                        (local.get $l8)
                        (i32.const 2)))
                    (i32.const -65)))
                (i32.gt_s
                  (i32.load8_s
                    (i32.add
                      (local.get $l8)
                      (i32.const 3)))
                  (i32.const -65))))
            (br_if $L18
              (i32.ne
                (local.get $l7)
                (local.tee $l9
                  (i32.add
                    (local.get $l9)
                    (i32.const 4)))))))
        (br_if $B13
          (i32.eqz
            (local.get $l6)))
        (local.set $l8
          (i32.add
            (local.get $p1)
            (local.get $l9)))
        (loop $L19
          (local.set $l4
            (i32.add
              (local.get $l4)
              (i32.gt_s
                (i32.load8_s
                  (local.get $l8))
                (i32.const -65))))
          (local.set $l8
            (i32.add
              (local.get $l8)
              (i32.const 1)))
          (br_if $L19
            (local.tee $l6
              (i32.add
                (local.get $l6)
                (i32.const -1))))))
      (block $B20
        (block $B21
          (br_if $B21
            (i32.le_u
              (local.get $l5)
              (local.get $l4)))
          (local.set $l7
            (i32.sub
              (local.get $l5)
              (local.get $l4)))
          (local.set $l4
            (i32.const 0))
          (block $B22
            (block $B23
              (block $B24
                (br_table $B22 $B24 $B23 $B22 $B22
                  (i32.load8_u offset=32
                    (local.get $p0))))
              (local.set $l4
                (local.get $l7))
              (local.set $l7
                (i32.const 0))
              (br $B22))
            (local.set $l4
              (i32.shr_u
                (local.get $l7)
                (i32.const 1)))
            (local.set $l7
              (i32.shr_u
                (i32.add
                  (local.get $l7)
                  (i32.const 1))
                (i32.const 1))))
          (local.set $l4
            (i32.add
              (local.get $l4)
              (i32.const 1)))
          (local.set $l8
            (i32.load
              (i32.add
                (local.get $p0)
                (i32.const 24))))
          (local.set $l6
            (i32.load offset=16
              (local.get $p0)))
          (local.set $l9
            (i32.load offset=20
              (local.get $p0)))
          (loop $L25
            (br_if $B20
              (i32.eqz
                (local.tee $l4
                  (i32.add
                    (local.get $l4)
                    (i32.const -1)))))
            (br_if $L25
              (i32.eqz
                (call_indirect $T0 (type $t4)
                  (local.get $l9)
                  (local.get $l6)
                  (i32.load offset=16
                    (local.get $l8))))))
          (return
            (i32.const 1)))
        (return
          (call_indirect $T0 (type $t6)
            (i32.load offset=20
              (local.get $p0))
            (local.get $p1)
            (local.get $p2)
            (i32.load offset=12
              (i32.load
                (i32.add
                  (local.get $p0)
                  (i32.const 24)))))))
      (local.set $l4
        (i32.const 1))
      (block $B26
        (br_if $B26
          (call_indirect $T0 (type $t6)
            (local.get $l9)
            (local.get $p1)
            (local.get $p2)
            (i32.load offset=12
              (local.get $l8))))
        (local.set $l4
          (i32.const 0))
        (block $B27
          (loop $L28
            (block $B29
              (br_if $B29
                (i32.ne
                  (local.get $l7)
                  (local.get $l4)))
              (local.set $l4
                (local.get $l7))
              (br $B27))
            (local.set $l4
              (i32.add
                (local.get $l4)
                (i32.const 1)))
            (br_if $L28
              (i32.eqz
                (call_indirect $T0 (type $t4)
                  (local.get $l9)
                  (local.get $l6)
                  (i32.load offset=16
                    (local.get $l8))))))
          (local.set $l4
            (i32.add
              (local.get $l4)
              (i32.const -1))))
        (local.set $l4
          (i32.lt_u
            (local.get $l4)
            (local.get $l7))))
      (return
        (local.get $l4)))
    (call_indirect $T0 (type $t6)
      (i32.load offset=20
        (local.get $p0))
      (local.get $p1)
      (local.get $p2)
      (i32.load offset=12
        (i32.load
          (i32.add
            (local.get $p0)
            (i32.const 24))))))
  (func $_ZN4core9panicking5panic17hfe17c7db57004300E (type $t5) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32)
    (global.set $__stack_pointer
      (local.tee $l3
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 32))))
    (i64.store align=4
      (i32.add
        (local.get $l3)
        (i32.const 12))
      (i64.const 0))
    (i32.store offset=4
      (local.get $l3)
      (i32.const 1))
    (i32.store offset=8
      (local.get $l3)
      (i32.const 1054896))
    (i32.store offset=28
      (local.get $l3)
      (local.get $p1))
    (i32.store offset=24
      (local.get $l3)
      (local.get $p0))
    (i32.store
      (local.get $l3)
      (i32.add
        (local.get $l3)
        (i32.const 24)))
    (call $_ZN4core9panicking9panic_fmt17h2a1cf3beec13dfc3E
      (local.get $l3)
      (local.get $p2))
    (unreachable))
  (func $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h64316d6d76eb68feE (type $t4) (param $p0 i32) (param $p1 i32) (result i32)
    (call $_ZN4core3fmt3num3imp7fmt_u6417hfed220e75c2efd61E
      (i64.load32_u
        (local.get $p0))
      (i32.const 1)
      (local.get $p1)))
  (func $_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17hc26f2ec4db2e95c3E (type $t4) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32)
    (global.set $__stack_pointer
      (local.tee $l2
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 128))))
    (block $B0
      (block $B1
        (block $B2
          (block $B3
            (block $B4
              (br_if $B4
                (i32.and
                  (local.tee $l3
                    (i32.load offset=28
                      (local.get $p1)))
                  (i32.const 16)))
              (br_if $B3
                (i32.and
                  (local.get $l3)
                  (i32.const 32)))
              (local.set $p0
                (call $_ZN4core3fmt3num3imp7fmt_u6417hfed220e75c2efd61E
                  (i64.load32_u
                    (local.get $p0))
                  (i32.const 1)
                  (local.get $p1)))
              (br $B2))
            (local.set $p0
              (i32.load
                (local.get $p0)))
            (local.set $l3
              (i32.const 0))
            (loop $L5
              (i32.store8
                (i32.add
                  (i32.add
                    (local.get $l2)
                    (local.get $l3))
                  (i32.const 127))
                (i32.add
                  (select
                    (i32.const 48)
                    (i32.const 87)
                    (i32.lt_u
                      (local.tee $l4
                        (i32.and
                          (local.get $p0)
                          (i32.const 15)))
                      (i32.const 10)))
                  (local.get $l4)))
              (local.set $l3
                (i32.add
                  (local.get $l3)
                  (i32.const -1)))
              (local.set $l4
                (i32.lt_u
                  (local.get $p0)
                  (i32.const 16)))
              (local.set $p0
                (i32.shr_u
                  (local.get $p0)
                  (i32.const 4)))
              (br_if $L5
                (i32.eqz
                  (local.get $l4))))
            (br_if $B1
              (i32.gt_u
                (local.tee $p0
                  (i32.add
                    (local.get $l3)
                    (i32.const 128)))
                (i32.const 128)))
            (local.set $p0
              (call $_ZN4core3fmt9Formatter12pad_integral17h1706be4d254c2e76E
                (local.get $p1)
                (i32.const 1)
                (i32.const 1055280)
                (i32.const 2)
                (i32.add
                  (i32.add
                    (local.get $l2)
                    (local.get $l3))
                  (i32.const 128))
                (i32.sub
                  (i32.const 0)
                  (local.get $l3))))
            (br $B2))
          (local.set $p0
            (i32.load
              (local.get $p0)))
          (local.set $l3
            (i32.const 0))
          (loop $L6
            (i32.store8
              (i32.add
                (i32.add
                  (local.get $l2)
                  (local.get $l3))
                (i32.const 127))
              (i32.add
                (select
                  (i32.const 48)
                  (i32.const 55)
                  (i32.lt_u
                    (local.tee $l4
                      (i32.and
                        (local.get $p0)
                        (i32.const 15)))
                    (i32.const 10)))
                (local.get $l4)))
            (local.set $l3
              (i32.add
                (local.get $l3)
                (i32.const -1)))
            (local.set $l4
              (i32.lt_u
                (local.get $p0)
                (i32.const 16)))
            (local.set $p0
              (i32.shr_u
                (local.get $p0)
                (i32.const 4)))
            (br_if $L6
              (i32.eqz
                (local.get $l4))))
          (br_if $B0
            (i32.gt_u
              (local.tee $p0
                (i32.add
                  (local.get $l3)
                  (i32.const 128)))
              (i32.const 128)))
          (local.set $p0
            (call $_ZN4core3fmt9Formatter12pad_integral17h1706be4d254c2e76E
              (local.get $p1)
              (i32.const 1)
              (i32.const 1055280)
              (i32.const 2)
              (i32.add
                (i32.add
                  (local.get $l2)
                  (local.get $l3))
                (i32.const 128))
              (i32.sub
                (i32.const 0)
                (local.get $l3)))))
        (global.set $__stack_pointer
          (i32.add
            (local.get $l2)
            (i32.const 128)))
        (return
          (local.get $p0)))
      (call $_ZN4core5slice5index26slice_start_index_len_fail17he7b2fe2a6da776eaE
        (local.get $p0)
        (i32.const 128)
        (i32.const 1055264))
      (unreachable))
    (call $_ZN4core5slice5index26slice_start_index_len_fail17he7b2fe2a6da776eaE
      (local.get $p0)
      (i32.const 128)
      (i32.const 1055264))
    (unreachable))
  (func $_ZN4core3fmt5write17had8ef63591bfa1d0E (type $t6) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32)
    (global.set $__stack_pointer
      (local.tee $l3
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 48))))
    (i32.store
      (i32.add
        (local.get $l3)
        (i32.const 36))
      (local.get $p1))
    (i32.store8 offset=44
      (local.get $l3)
      (i32.const 3))
    (i32.store offset=28
      (local.get $l3)
      (i32.const 32))
    (local.set $l4
      (i32.const 0))
    (i32.store offset=40
      (local.get $l3)
      (i32.const 0))
    (i32.store offset=32
      (local.get $l3)
      (local.get $p0))
    (i32.store offset=20
      (local.get $l3)
      (i32.const 0))
    (i32.store offset=12
      (local.get $l3)
      (i32.const 0))
    (block $B0
      (block $B1
        (block $B2
          (block $B3
            (block $B4
              (br_if $B4
                (local.tee $l5
                  (i32.load offset=16
                    (local.get $p2))))
              (br_if $B3
                (i32.eqz
                  (local.tee $p0
                    (i32.load
                      (i32.add
                        (local.get $p2)
                        (i32.const 12))))))
              (local.set $p1
                (i32.load offset=8
                  (local.get $p2)))
              (local.set $l6
                (i32.shl
                  (local.get $p0)
                  (i32.const 3)))
              (local.set $l4
                (i32.add
                  (i32.and
                    (i32.add
                      (local.get $p0)
                      (i32.const -1))
                    (i32.const 536870911))
                  (i32.const 1)))
              (local.set $p0
                (i32.load
                  (local.get $p2)))
              (loop $L5
                (block $B6
                  (br_if $B6
                    (i32.eqz
                      (local.tee $l7
                        (i32.load
                          (i32.add
                            (local.get $p0)
                            (i32.const 4))))))
                  (br_if $B2
                    (call_indirect $T0 (type $t6)
                      (i32.load offset=32
                        (local.get $l3))
                      (i32.load
                        (local.get $p0))
                      (local.get $l7)
                      (i32.load offset=12
                        (i32.load offset=36
                          (local.get $l3))))))
                (br_if $B2
                  (call_indirect $T0 (type $t4)
                    (i32.load
                      (local.get $p1))
                    (i32.add
                      (local.get $l3)
                      (i32.const 12))
                    (i32.load
                      (i32.add
                        (local.get $p1)
                        (i32.const 4)))))
                (local.set $p1
                  (i32.add
                    (local.get $p1)
                    (i32.const 8)))
                (local.set $p0
                  (i32.add
                    (local.get $p0)
                    (i32.const 8)))
                (br_if $L5
                  (local.tee $l6
                    (i32.add
                      (local.get $l6)
                      (i32.const -8))))
                (br $B3)))
            (br_if $B3
              (i32.eqz
                (local.tee $p1
                  (i32.load
                    (i32.add
                      (local.get $p2)
                      (i32.const 20))))))
            (local.set $l8
              (i32.shl
                (local.get $p1)
                (i32.const 5)))
            (local.set $l4
              (i32.add
                (i32.and
                  (i32.add
                    (local.get $p1)
                    (i32.const -1))
                  (i32.const 134217727))
                (i32.const 1)))
            (local.set $l9
              (i32.load offset=8
                (local.get $p2)))
            (local.set $p0
              (i32.load
                (local.get $p2)))
            (local.set $l6
              (i32.const 0))
            (loop $L7
              (block $B8
                (br_if $B8
                  (i32.eqz
                    (local.tee $p1
                      (i32.load
                        (i32.add
                          (local.get $p0)
                          (i32.const 4))))))
                (br_if $B2
                  (call_indirect $T0 (type $t6)
                    (i32.load offset=32
                      (local.get $l3))
                    (i32.load
                      (local.get $p0))
                    (local.get $p1)
                    (i32.load offset=12
                      (i32.load offset=36
                        (local.get $l3))))))
              (i32.store offset=28
                (local.get $l3)
                (i32.load
                  (i32.add
                    (local.tee $p1
                      (i32.add
                        (local.get $l5)
                        (local.get $l6)))
                    (i32.const 16))))
              (i32.store8 offset=44
                (local.get $l3)
                (i32.load8_u
                  (i32.add
                    (local.get $p1)
                    (i32.const 28))))
              (i32.store offset=40
                (local.get $l3)
                (i32.load
                  (i32.add
                    (local.get $p1)
                    (i32.const 24))))
              (local.set $l10
                (i32.load
                  (i32.add
                    (local.get $p1)
                    (i32.const 12))))
              (local.set $l11
                (i32.const 0))
              (local.set $l7
                (i32.const 0))
              (block $B9
                (block $B10
                  (block $B11
                    (br_table $B10 $B11 $B9 $B10
                      (i32.load
                        (i32.add
                          (local.get $p1)
                          (i32.const 8)))))
                  (local.set $l12
                    (i32.shl
                      (local.get $l10)
                      (i32.const 3)))
                  (local.set $l7
                    (i32.const 0))
                  (br_if $B9
                    (i32.ne
                      (i32.load offset=4
                        (local.tee $l12
                          (i32.add
                            (local.get $l9)
                            (local.get $l12))))
                      (i32.const 64)))
                  (local.set $l10
                    (i32.load
                      (i32.load
                        (local.get $l12)))))
                (local.set $l7
                  (i32.const 1)))
              (i32.store offset=16
                (local.get $l3)
                (local.get $l10))
              (i32.store offset=12
                (local.get $l3)
                (local.get $l7))
              (local.set $l7
                (i32.load
                  (i32.add
                    (local.get $p1)
                    (i32.const 4))))
              (block $B12
                (block $B13
                  (block $B14
                    (br_table $B13 $B14 $B12 $B13
                      (i32.load
                        (local.get $p1))))
                  (local.set $l10
                    (i32.shl
                      (local.get $l7)
                      (i32.const 3)))
                  (br_if $B12
                    (i32.ne
                      (i32.load offset=4
                        (local.tee $l10
                          (i32.add
                            (local.get $l9)
                            (local.get $l10))))
                      (i32.const 64)))
                  (local.set $l7
                    (i32.load
                      (i32.load
                        (local.get $l10)))))
                (local.set $l11
                  (i32.const 1)))
              (i32.store offset=24
                (local.get $l3)
                (local.get $l7))
              (i32.store offset=20
                (local.get $l3)
                (local.get $l11))
              (br_if $B2
                (call_indirect $T0 (type $t4)
                  (i32.load
                    (local.tee $p1
                      (i32.add
                        (local.get $l9)
                        (i32.shl
                          (i32.load
                            (i32.add
                              (local.get $p1)
                              (i32.const 20)))
                          (i32.const 3)))))
                  (i32.add
                    (local.get $l3)
                    (i32.const 12))
                  (i32.load offset=4
                    (local.get $p1))))
              (local.set $p0
                (i32.add
                  (local.get $p0)
                  (i32.const 8)))
              (br_if $L7
                (i32.ne
                  (local.get $l8)
                  (local.tee $l6
                    (i32.add
                      (local.get $l6)
                      (i32.const 32)))))))
          (br_if $B1
            (i32.ge_u
              (local.get $l4)
              (i32.load offset=4
                (local.get $p2))))
          (br_if $B1
            (i32.eqz
              (call_indirect $T0 (type $t6)
                (i32.load offset=32
                  (local.get $l3))
                (i32.load
                  (local.tee $p1
                    (i32.add
                      (i32.load
                        (local.get $p2))
                      (i32.shl
                        (local.get $l4)
                        (i32.const 3)))))
                (i32.load offset=4
                  (local.get $p1))
                (i32.load offset=12
                  (i32.load offset=36
                    (local.get $l3)))))))
        (local.set $p1
          (i32.const 1))
        (br $B0))
      (local.set $p1
        (i32.const 0)))
    (global.set $__stack_pointer
      (i32.add
        (local.get $l3)
        (i32.const 48)))
    (local.get $p1))
  (func $_ZN4core3fmt9Formatter12pad_integral17h1706be4d254c2e76E (type $t12) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32) (param $p5 i32) (result i32)
    (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32)
    (block $B0
      (block $B1
        (br_if $B1
          (local.get $p1))
        (local.set $l6
          (i32.add
            (local.get $p5)
            (i32.const 1)))
        (local.set $l7
          (i32.load offset=28
            (local.get $p0)))
        (local.set $l8
          (i32.const 45))
        (br $B0))
      (local.set $l8
        (select
          (i32.const 43)
          (i32.const 1114112)
          (local.tee $p1
            (i32.and
              (local.tee $l7
                (i32.load offset=28
                  (local.get $p0)))
              (i32.const 1)))))
      (local.set $l6
        (i32.add
          (local.get $p1)
          (local.get $p5))))
    (block $B2
      (block $B3
        (br_if $B3
          (i32.and
            (local.get $l7)
            (i32.const 4)))
        (local.set $p2
          (i32.const 0))
        (br $B2))
      (block $B4
        (block $B5
          (br_if $B5
            (i32.lt_u
              (local.get $p3)
              (i32.const 16)))
          (local.set $p1
            (call $_ZN4core3str5count14do_count_chars17hd3ed9b0649f420edE
              (local.get $p2)
              (local.get $p3)))
          (br $B4))
        (block $B6
          (br_if $B6
            (local.get $p3))
          (local.set $p1
            (i32.const 0))
          (br $B4))
        (local.set $l9
          (i32.and
            (local.get $p3)
            (i32.const 3)))
        (block $B7
          (block $B8
            (br_if $B8
              (i32.ge_u
                (local.get $p3)
                (i32.const 4)))
            (local.set $p1
              (i32.const 0))
            (local.set $l10
              (i32.const 0))
            (br $B7))
          (local.set $l11
            (i32.and
              (local.get $p3)
              (i32.const -4)))
          (local.set $p1
            (i32.const 0))
          (local.set $l10
            (i32.const 0))
          (loop $L9
            (local.set $p1
              (i32.add
                (i32.add
                  (i32.add
                    (i32.add
                      (local.get $p1)
                      (i32.gt_s
                        (i32.load8_s
                          (local.tee $l12
                            (i32.add
                              (local.get $p2)
                              (local.get $l10))))
                        (i32.const -65)))
                    (i32.gt_s
                      (i32.load8_s
                        (i32.add
                          (local.get $l12)
                          (i32.const 1)))
                      (i32.const -65)))
                  (i32.gt_s
                    (i32.load8_s
                      (i32.add
                        (local.get $l12)
                        (i32.const 2)))
                    (i32.const -65)))
                (i32.gt_s
                  (i32.load8_s
                    (i32.add
                      (local.get $l12)
                      (i32.const 3)))
                  (i32.const -65))))
            (br_if $L9
              (i32.ne
                (local.get $l11)
                (local.tee $l10
                  (i32.add
                    (local.get $l10)
                    (i32.const 4)))))))
        (br_if $B4
          (i32.eqz
            (local.get $l9)))
        (local.set $l12
          (i32.add
            (local.get $p2)
            (local.get $l10)))
        (loop $L10
          (local.set $p1
            (i32.add
              (local.get $p1)
              (i32.gt_s
                (i32.load8_s
                  (local.get $l12))
                (i32.const -65))))
          (local.set $l12
            (i32.add
              (local.get $l12)
              (i32.const 1)))
          (br_if $L10
            (local.tee $l9
              (i32.add
                (local.get $l9)
                (i32.const -1))))))
      (local.set $l6
        (i32.add
          (local.get $p1)
          (local.get $l6))))
    (block $B11
      (block $B12
        (br_if $B12
          (i32.load
            (local.get $p0)))
        (local.set $p1
          (i32.const 1))
        (br_if $B11
          (call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17h3a7a7fcfeba16998E
            (local.tee $l12
              (i32.load offset=20
                (local.get $p0)))
            (local.tee $l10
              (i32.load offset=24
                (local.get $p0)))
            (local.get $l8)
            (local.get $p2)
            (local.get $p3)))
        (return
          (call_indirect $T0 (type $t6)
            (local.get $l12)
            (local.get $p4)
            (local.get $p5)
            (i32.load offset=12
              (local.get $l10)))))
      (block $B13
        (br_if $B13
          (i32.gt_u
            (local.tee $l9
              (i32.load offset=4
                (local.get $p0)))
            (local.get $l6)))
        (local.set $p1
          (i32.const 1))
        (br_if $B11
          (call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17h3a7a7fcfeba16998E
            (local.tee $l12
              (i32.load offset=20
                (local.get $p0)))
            (local.tee $l10
              (i32.load offset=24
                (local.get $p0)))
            (local.get $l8)
            (local.get $p2)
            (local.get $p3)))
        (return
          (call_indirect $T0 (type $t6)
            (local.get $l12)
            (local.get $p4)
            (local.get $p5)
            (i32.load offset=12
              (local.get $l10)))))
      (block $B14
        (br_if $B14
          (i32.eqz
            (i32.and
              (local.get $l7)
              (i32.const 8))))
        (local.set $l11
          (i32.load offset=16
            (local.get $p0)))
        (i32.store offset=16
          (local.get $p0)
          (i32.const 48))
        (local.set $l7
          (i32.load8_u offset=32
            (local.get $p0)))
        (local.set $p1
          (i32.const 1))
        (i32.store8 offset=32
          (local.get $p0)
          (i32.const 1))
        (br_if $B11
          (call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17h3a7a7fcfeba16998E
            (local.tee $l12
              (i32.load offset=20
                (local.get $p0)))
            (local.tee $l10
              (i32.load offset=24
                (local.get $p0)))
            (local.get $l8)
            (local.get $p2)
            (local.get $p3)))
        (local.set $p1
          (i32.add
            (i32.sub
              (local.get $l9)
              (local.get $l6))
            (i32.const 1)))
        (block $B15
          (loop $L16
            (br_if $B15
              (i32.eqz
                (local.tee $p1
                  (i32.add
                    (local.get $p1)
                    (i32.const -1)))))
            (br_if $L16
              (i32.eqz
                (call_indirect $T0 (type $t4)
                  (local.get $l12)
                  (i32.const 48)
                  (i32.load offset=16
                    (local.get $l10))))))
          (return
            (i32.const 1)))
        (local.set $p1
          (i32.const 1))
        (br_if $B11
          (call_indirect $T0 (type $t6)
            (local.get $l12)
            (local.get $p4)
            (local.get $p5)
            (i32.load offset=12
              (local.get $l10))))
        (i32.store8 offset=32
          (local.get $p0)
          (local.get $l7))
        (i32.store offset=16
          (local.get $p0)
          (local.get $l11))
        (local.set $p1
          (i32.const 0))
        (br $B11))
      (local.set $l6
        (i32.sub
          (local.get $l9)
          (local.get $l6)))
      (block $B17
        (block $B18
          (block $B19
            (br_table $B17 $B19 $B18 $B19 $B17
              (local.tee $p1
                (i32.load8_u offset=32
                  (local.get $p0)))))
          (local.set $p1
            (local.get $l6))
          (local.set $l6
            (i32.const 0))
          (br $B17))
        (local.set $p1
          (i32.shr_u
            (local.get $l6)
            (i32.const 1)))
        (local.set $l6
          (i32.shr_u
            (i32.add
              (local.get $l6)
              (i32.const 1))
            (i32.const 1))))
      (local.set $p1
        (i32.add
          (local.get $p1)
          (i32.const 1)))
      (local.set $l12
        (i32.load
          (i32.add
            (local.get $p0)
            (i32.const 24))))
      (local.set $l9
        (i32.load offset=16
          (local.get $p0)))
      (local.set $l10
        (i32.load offset=20
          (local.get $p0)))
      (block $B20
        (loop $L21
          (br_if $B20
            (i32.eqz
              (local.tee $p1
                (i32.add
                  (local.get $p1)
                  (i32.const -1)))))
          (br_if $L21
            (i32.eqz
              (call_indirect $T0 (type $t4)
                (local.get $l10)
                (local.get $l9)
                (i32.load offset=16
                  (local.get $l12))))))
        (return
          (i32.const 1)))
      (local.set $p1
        (i32.const 1))
      (br_if $B11
        (call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17h3a7a7fcfeba16998E
          (local.get $l10)
          (local.get $l12)
          (local.get $l8)
          (local.get $p2)
          (local.get $p3)))
      (br_if $B11
        (call_indirect $T0 (type $t6)
          (local.get $l10)
          (local.get $p4)
          (local.get $p5)
          (i32.load offset=12
            (local.get $l12))))
      (local.set $p1
        (i32.const 0))
      (loop $L22
        (block $B23
          (br_if $B23
            (i32.ne
              (local.get $l6)
              (local.get $p1)))
          (return
            (i32.lt_u
              (local.get $l6)
              (local.get $l6))))
        (local.set $p1
          (i32.add
            (local.get $p1)
            (i32.const 1)))
        (br_if $L22
          (i32.eqz
            (call_indirect $T0 (type $t4)
              (local.get $l10)
              (local.get $l9)
              (i32.load offset=16
                (local.get $l12))))))
      (return
        (i32.lt_u
          (i32.add
            (local.get $p1)
            (i32.const -1))
          (local.get $l6))))
    (local.get $p1))
  (func $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h3f8030dbf89bab79E (type $t2) (param $p0 i32) (param $p1 i32)
    (i64.store offset=8
      (local.get $p0)
      (i64.const 8409212631816552094))
    (i64.store
      (local.get $p0)
      (i64.const -6355041371609663837)))
  (func $_ZN4core3fmt8builders10DebugInner5entry17h95ac451b00d433d9E (type $t5) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i64)
    (global.set $__stack_pointer
      (local.tee $l3
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 64))))
    (local.set $l4
      (i32.const 1))
    (block $B0
      (br_if $B0
        (i32.load8_u offset=4
          (local.get $p0)))
      (local.set $l4
        (i32.load8_u offset=5
          (local.get $p0)))
      (block $B1
        (block $B2
          (br_if $B2
            (i32.and
              (local.tee $l6
                (i32.load offset=28
                  (local.tee $l5
                    (i32.load
                      (local.get $p0)))))
              (i32.const 4)))
          (br_if $B1
            (i32.eqz
              (i32.and
                (local.get $l4)
                (i32.const 255))))
          (local.set $l4
            (i32.const 1))
          (br_if $B1
            (i32.eqz
              (call_indirect $T0 (type $t6)
                (i32.load offset=20
                  (local.get $l5))
                (i32.const 1055203)
                (i32.const 2)
                (i32.load offset=12
                  (i32.load
                    (i32.add
                      (local.get $l5)
                      (i32.const 24)))))))
          (br $B0))
        (block $B3
          (br_if $B3
            (i32.and
              (local.get $l4)
              (i32.const 255)))
          (local.set $l4
            (i32.const 1))
          (br_if $B0
            (call_indirect $T0 (type $t6)
              (i32.load offset=20
                (local.get $l5))
              (i32.const 1055217)
              (i32.const 1)
              (i32.load offset=12
                (i32.load
                  (i32.add
                    (local.get $l5)
                    (i32.const 24))))))
          (local.set $l6
            (i32.load offset=28
              (local.get $l5))))
        (local.set $l4
          (i32.const 1))
        (i32.store8 offset=27
          (local.get $l3)
          (i32.const 1))
        (i32.store
          (i32.add
            (local.get $l3)
            (i32.const 52))
          (i32.const 1055172))
        (i64.store offset=12 align=4
          (local.get $l3)
          (i64.load offset=20 align=4
            (local.get $l5)))
        (i32.store offset=20
          (local.get $l3)
          (i32.add
            (local.get $l3)
            (i32.const 27)))
        (i64.store offset=36 align=4
          (local.get $l3)
          (i64.load offset=8 align=4
            (local.get $l5)))
        (local.set $l7
          (i64.load align=4
            (local.get $l5)))
        (i32.store offset=56
          (local.get $l3)
          (local.get $l6))
        (i32.store offset=44
          (local.get $l3)
          (i32.load offset=16
            (local.get $l5)))
        (i32.store8 offset=60
          (local.get $l3)
          (i32.load8_u offset=32
            (local.get $l5)))
        (i64.store offset=28 align=4
          (local.get $l3)
          (local.get $l7))
        (i32.store offset=48
          (local.get $l3)
          (i32.add
            (local.get $l3)
            (i32.const 12)))
        (br_if $B0
          (call_indirect $T0 (type $t4)
            (local.get $p1)
            (i32.add
              (local.get $l3)
              (i32.const 28))
            (i32.load offset=12
              (local.get $p2))))
        (local.set $l4
          (call_indirect $T0 (type $t6)
            (i32.load offset=48
              (local.get $l3))
            (i32.const 1055208)
            (i32.const 2)
            (i32.load offset=12
              (i32.load offset=52
                (local.get $l3)))))
        (br $B0))
      (local.set $l4
        (call_indirect $T0 (type $t4)
          (local.get $p1)
          (local.get $l5)
          (i32.load offset=12
            (local.get $p2)))))
    (i32.store8 offset=5
      (local.get $p0)
      (i32.const 1))
    (i32.store8 offset=4
      (local.get $p0)
      (local.get $l4))
    (global.set $__stack_pointer
      (i32.add
        (local.get $l3)
        (i32.const 64))))
  (func $_ZN63_$LT$core..cell..BorrowMutError$u20$as$u20$core..fmt..Debug$GT$3fmt17h3a038feae060e1e1E (type $t4) (param $p0 i32) (param $p1 i32) (result i32)
    (call_indirect $T0 (type $t6)
      (i32.load offset=20
        (local.get $p1))
      (i32.const 1054897)
      (i32.const 14)
      (i32.load offset=12
        (i32.load
          (i32.add
            (local.get $p1)
            (i32.const 24))))))
  (func $_ZN4core4cell22panic_already_borrowed17ha89a6a6c256b35ffE (type $t1) (param $p0 i32)
    (local $l1 i32)
    (global.set $__stack_pointer
      (local.tee $l1
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 48))))
    (i64.store align=4
      (i32.add
        (local.get $l1)
        (i32.const 24))
      (i64.const 1))
    (i32.store offset=16
      (local.get $l1)
      (i32.const 1))
    (i32.store offset=12
      (local.get $l1)
      (i32.const 1054932))
    (i32.store offset=40
      (local.get $l1)
      (i32.const 65))
    (i32.store offset=20
      (local.get $l1)
      (i32.add
        (local.get $l1)
        (i32.const 36)))
    (i32.store offset=36
      (local.get $l1)
      (i32.add
        (local.get $l1)
        (i32.const 47)))
    (call $_ZN4core9panicking9panic_fmt17h2a1cf3beec13dfc3E
      (i32.add
        (local.get $l1)
        (i32.const 12))
      (local.get $p0))
    (unreachable))
  (func $_ZN4core3ffi5c_str4CStr19from_bytes_with_nul17hb405641cf26425b3E (type $t5) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32)
    (block $B0
      (block $B1
        (block $B2
          (block $B3
            (block $B4
              (block $B5
                (block $B6
                  (br_if $B6
                    (i32.lt_u
                      (local.get $p2)
                      (i32.const 8)))
                  (br_if $B5
                    (i32.eq
                      (local.tee $l3
                        (i32.and
                          (i32.add
                            (local.get $p1)
                            (i32.const 3))
                          (i32.const -4)))
                      (local.get $p1)))
                  (br_if $B5
                    (i32.eqz
                      (local.tee $l3
                        (i32.sub
                          (local.get $l3)
                          (local.get $p1)))))
                  (local.set $l4
                    (i32.const 0))
                  (loop $L7
                    (br_if $B2
                      (i32.eqz
                        (i32.load8_u
                          (i32.add
                            (local.get $p1)
                            (local.get $l4)))))
                    (br_if $L7
                      (i32.ne
                        (local.get $l3)
                        (local.tee $l4
                          (i32.add
                            (local.get $l4)
                            (i32.const 1))))))
                  (br_if $B3
                    (i32.gt_u
                      (local.get $l3)
                      (local.tee $l5
                        (i32.add
                          (local.get $p2)
                          (i32.const -8)))))
                  (br $B4))
                (br_if $B1
                  (i32.eqz
                    (local.get $p2)))
                (block $B8
                  (br_if $B8
                    (i32.load8_u
                      (local.get $p1)))
                  (local.set $l4
                    (i32.const 0))
                  (br $B2))
                (local.set $l4
                  (i32.const 1))
                (br_if $B1
                  (i32.eq
                    (local.get $p2)
                    (i32.const 1)))
                (br_if $B2
                  (i32.eqz
                    (i32.load8_u offset=1
                      (local.get $p1))))
                (local.set $l4
                  (i32.const 2))
                (br_if $B1
                  (i32.eq
                    (local.get $p2)
                    (i32.const 2)))
                (br_if $B2
                  (i32.eqz
                    (i32.load8_u offset=2
                      (local.get $p1))))
                (local.set $l4
                  (i32.const 3))
                (br_if $B1
                  (i32.eq
                    (local.get $p2)
                    (i32.const 3)))
                (br_if $B2
                  (i32.eqz
                    (i32.load8_u offset=3
                      (local.get $p1))))
                (local.set $l4
                  (i32.const 4))
                (br_if $B1
                  (i32.eq
                    (local.get $p2)
                    (i32.const 4)))
                (br_if $B2
                  (i32.eqz
                    (i32.load8_u offset=4
                      (local.get $p1))))
                (local.set $l4
                  (i32.const 5))
                (br_if $B1
                  (i32.eq
                    (local.get $p2)
                    (i32.const 5)))
                (br_if $B2
                  (i32.eqz
                    (i32.load8_u offset=5
                      (local.get $p1))))
                (local.set $l4
                  (i32.const 6))
                (br_if $B1
                  (i32.eq
                    (local.get $p2)
                    (i32.const 6)))
                (br_if $B2
                  (i32.eqz
                    (i32.load8_u offset=6
                      (local.get $p1))))
                (br $B1))
              (local.set $l5
                (i32.add
                  (local.get $p2)
                  (i32.const -8)))
              (local.set $l3
                (i32.const 0)))
            (loop $L9
              (br_if $B3
                (i32.and
                  (i32.or
                    (i32.and
                      (i32.add
                        (local.tee $l6
                          (i32.load
                            (i32.add
                              (local.tee $l4
                                (i32.add
                                  (local.get $p1)
                                  (local.get $l3)))
                              (i32.const 4))))
                        (i32.const -16843009))
                      (i32.xor
                        (local.get $l6)
                        (i32.const -1)))
                    (i32.and
                      (i32.add
                        (local.tee $l4
                          (i32.load
                            (local.get $l4)))
                        (i32.const -16843009))
                      (i32.xor
                        (local.get $l4)
                        (i32.const -1))))
                  (i32.const -2139062144)))
              (br_if $L9
                (i32.le_u
                  (local.tee $l3
                    (i32.add
                      (local.get $l3)
                      (i32.const 8)))
                  (local.get $l5)))))
          (br_if $B1
            (i32.eq
              (local.get $l3)
              (local.get $p2)))
          (loop $L10
            (block $B11
              (br_if $B11
                (i32.load8_u
                  (i32.add
                    (local.get $p1)
                    (local.get $l3))))
              (local.set $l4
                (local.get $l3))
              (br $B2))
            (br_if $L10
              (i32.ne
                (local.get $p2)
                (local.tee $l3
                  (i32.add
                    (local.get $l3)
                    (i32.const 1)))))
            (br $B1)))
        (br_if $B0
          (i32.eq
            (i32.add
              (local.get $l4)
              (i32.const 1))
            (local.get $p2)))
        (i32.store offset=4
          (local.get $p0)
          (i32.const 0))
        (i32.store
          (i32.add
            (local.get $p0)
            (i32.const 8))
          (local.get $l4))
        (i32.store
          (local.get $p0)
          (i32.const 1))
        (return))
      (i32.store offset=4
        (local.get $p0)
        (i32.const 1))
      (i32.store
        (local.get $p0)
        (i32.const 1))
      (return))
    (i32.store offset=4
      (local.get $p0)
      (local.get $p1))
    (i32.store
      (i32.add
        (local.get $p0)
        (i32.const 8))
      (local.get $p2))
    (i32.store
      (local.get $p0)
      (i32.const 0)))
  (func $_ZN4core3str8converts9from_utf817h0e0a399703f2ddceE (type $t5) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i64) (local $l9 i64) (local $l10 i32)
    (block $B0
      (br_if $B0
        (i32.eqz
          (local.get $p2)))
      (local.set $l4
        (select
          (i32.const 0)
          (local.tee $l3
            (i32.add
              (local.get $p2)
              (i32.const -7)))
          (i32.gt_u
            (local.get $l3)
            (local.get $p2))))
      (local.set $l5
        (i32.sub
          (i32.and
            (i32.add
              (local.get $p1)
              (i32.const 3))
            (i32.const -4))
          (local.get $p1)))
      (local.set $l3
        (i32.const 0))
      (loop $L1
        (block $B2
          (block $B3
            (block $B4
              (block $B5
                (br_if $B5
                  (i32.lt_s
                    (local.tee $l7
                      (i32.extend8_s
                        (local.tee $l6
                          (i32.load8_u
                            (i32.add
                              (local.get $p1)
                              (local.get $l3))))))
                    (i32.const 0)))
                (br_if $B4
                  (i32.and
                    (i32.sub
                      (local.get $l5)
                      (local.get $l3))
                    (i32.const 3)))
                (br_if $B3
                  (i32.ge_u
                    (local.get $l3)
                    (local.get $l4)))
                (loop $L6
                  (br_if $B3
                    (i32.and
                      (i32.or
                        (i32.load
                          (i32.add
                            (local.tee $l6
                              (i32.add
                                (local.get $p1)
                                (local.get $l3)))
                            (i32.const 4)))
                        (i32.load
                          (local.get $l6)))
                      (i32.const -2139062144)))
                  (br_if $L6
                    (i32.lt_u
                      (local.tee $l3
                        (i32.add
                          (local.get $l3)
                          (i32.const 8)))
                      (local.get $l4)))
                  (br $B3)))
              (local.set $l8
                (i64.const 1099511627776))
              (local.set $l9
                (i64.const 4294967296))
              (block $B7
                (block $B8
                  (block $B9
                    (block $B10
                      (block $B11
                        (block $B12
                          (block $B13
                            (block $B14
                              (block $B15
                                (block $B16
                                  (block $B17
                                    (block $B18
                                      (br_table $B18 $B17 $B16 $B8
                                        (i32.add
                                          (i32.load8_u
                                            (i32.add
                                              (local.get $l6)
                                              (i32.const 1055656)))
                                          (i32.const -2))))
                                    (br_if $B15
                                      (i32.lt_u
                                        (local.tee $l6
                                          (i32.add
                                            (local.get $l3)
                                            (i32.const 1)))
                                        (local.get $p2)))
                                    (local.set $l8
                                      (i64.const 0))
                                    (local.set $l9
                                      (i64.const 0))
                                    (br $B8))
                                  (local.set $l8
                                    (i64.const 0))
                                  (br_if $B14
                                    (i32.lt_u
                                      (local.tee $l10
                                        (i32.add
                                          (local.get $l3)
                                          (i32.const 1)))
                                      (local.get $p2)))
                                  (local.set $l9
                                    (i64.const 0))
                                  (br $B8))
                                (local.set $l8
                                  (i64.const 0))
                                (br_if $B13
                                  (i32.lt_u
                                    (local.tee $l10
                                      (i32.add
                                        (local.get $l3)
                                        (i32.const 1)))
                                    (local.get $p2)))
                                (local.set $l9
                                  (i64.const 0))
                                (br $B8))
                              (local.set $l8
                                (i64.const 1099511627776))
                              (local.set $l9
                                (i64.const 4294967296))
                              (br_if $B8
                                (i32.gt_s
                                  (i32.load8_s
                                    (i32.add
                                      (local.get $p1)
                                      (local.get $l6)))
                                  (i32.const -65)))
                              (br $B7))
                            (local.set $l10
                              (i32.load8_s
                                (i32.add
                                  (local.get $p1)
                                  (local.get $l10))))
                            (block $B19
                              (block $B20
                                (block $B21
                                  (br_table $B21 $B19 $B19 $B19 $B19 $B19 $B19 $B19 $B19 $B19 $B19 $B19 $B19 $B20 $B19
                                    (i32.add
                                      (local.get $l6)
                                      (i32.const -224))))
                                (br_if $B11
                                  (i32.eq
                                    (i32.and
                                      (local.get $l10)
                                      (i32.const -32))
                                    (i32.const -96)))
                                (br $B12))
                              (br_if $B12
                                (i32.gt_s
                                  (local.get $l10)
                                  (i32.const -97)))
                              (br $B11))
                            (block $B22
                              (br_if $B22
                                (i32.lt_u
                                  (i32.and
                                    (i32.add
                                      (local.get $l7)
                                      (i32.const 31))
                                    (i32.const 255))
                                  (i32.const 12)))
                              (br_if $B12
                                (i32.ne
                                  (i32.and
                                    (local.get $l7)
                                    (i32.const -2))
                                  (i32.const -18)))
                              (br_if $B11
                                (i32.lt_s
                                  (local.get $l10)
                                  (i32.const -64)))
                              (br $B12))
                            (br_if $B11
                              (i32.lt_s
                                (local.get $l10)
                                (i32.const -64)))
                            (br $B12))
                          (local.set $l10
                            (i32.load8_s
                              (i32.add
                                (local.get $p1)
                                (local.get $l10))))
                          (block $B23
                            (block $B24
                              (block $B25
                                (block $B26
                                  (br_table $B25 $B26 $B26 $B26 $B24 $B26
                                    (i32.add
                                      (local.get $l6)
                                      (i32.const -240))))
                                (br_if $B12
                                  (i32.gt_u
                                    (i32.and
                                      (i32.add
                                        (local.get $l7)
                                        (i32.const 15))
                                      (i32.const 255))
                                    (i32.const 2)))
                                (br_if $B12
                                  (i32.ge_s
                                    (local.get $l10)
                                    (i32.const -64)))
                                (br $B23))
                              (br_if $B12
                                (i32.ge_u
                                  (i32.and
                                    (i32.add
                                      (local.get $l10)
                                      (i32.const 112))
                                    (i32.const 255))
                                  (i32.const 48)))
                              (br $B23))
                            (br_if $B12
                              (i32.gt_s
                                (local.get $l10)
                                (i32.const -113))))
                          (block $B27
                            (br_if $B27
                              (i32.lt_u
                                (local.tee $l6
                                  (i32.add
                                    (local.get $l3)
                                    (i32.const 2)))
                                (local.get $p2)))
                            (local.set $l9
                              (i64.const 0))
                            (br $B8))
                          (br_if $B10
                            (i32.gt_s
                              (i32.load8_s
                                (i32.add
                                  (local.get $p1)
                                  (local.get $l6)))
                              (i32.const -65)))
                          (local.set $l9
                            (i64.const 0))
                          (br_if $B8
                            (i32.ge_u
                              (local.tee $l6
                                (i32.add
                                  (local.get $l3)
                                  (i32.const 3)))
                              (local.get $p2)))
                          (br_if $B7
                            (i32.le_s
                              (i32.load8_s
                                (i32.add
                                  (local.get $p1)
                                  (local.get $l6)))
                              (i32.const -65)))
                          (local.set $l8
                            (i64.const 3298534883328))
                          (br $B9))
                        (local.set $l8
                          (i64.const 1099511627776))
                        (br $B9))
                      (local.set $l9
                        (i64.const 0))
                      (br_if $B8
                        (i32.ge_u
                          (local.tee $l6
                            (i32.add
                              (local.get $l3)
                              (i32.const 2)))
                          (local.get $p2)))
                      (br_if $B7
                        (i32.le_s
                          (i32.load8_s
                            (i32.add
                              (local.get $p1)
                              (local.get $l6)))
                          (i32.const -65))))
                    (local.set $l8
                      (i64.const 2199023255552)))
                  (local.set $l9
                    (i64.const 4294967296)))
                (i64.store offset=4 align=4
                  (local.get $p0)
                  (i64.or
                    (i64.or
                      (local.get $l8)
                      (i64.extend_i32_u
                        (local.get $l3)))
                    (local.get $l9)))
                (i32.store
                  (local.get $p0)
                  (i32.const 1))
                (return))
              (local.set $l3
                (i32.add
                  (local.get $l6)
                  (i32.const 1)))
              (br $B2))
            (local.set $l3
              (i32.add
                (local.get $l3)
                (i32.const 1)))
            (br $B2))
          (br_if $B2
            (i32.ge_u
              (local.get $l3)
              (local.get $p2)))
          (loop $L28
            (br_if $B2
              (i32.lt_s
                (i32.load8_s
                  (i32.add
                    (local.get $p1)
                    (local.get $l3)))
                (i32.const 0)))
            (br_if $L28
              (i32.ne
                (local.get $p2)
                (local.tee $l3
                  (i32.add
                    (local.get $l3)
                    (i32.const 1)))))
            (br $B0)))
        (br_if $L1
          (i32.lt_u
            (local.get $l3)
            (local.get $p2)))))
    (i32.store offset=4
      (local.get $p0)
      (local.get $p1))
    (i32.store
      (i32.add
        (local.get $p0)
        (i32.const 8))
      (local.get $p2))
    (i32.store
      (local.get $p0)
      (i32.const 0)))
  (func $_ZN4core3fmt8builders11DebugStruct5field17he4657b93856c74d5E (type $t10) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32) (result i32)
    (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i64)
    (global.set $__stack_pointer
      (local.tee $l5
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 64))))
    (local.set $l6
      (i32.const 1))
    (block $B0
      (br_if $B0
        (i32.load8_u offset=4
          (local.get $p0)))
      (local.set $l7
        (i32.load8_u offset=5
          (local.get $p0)))
      (block $B1
        (br_if $B1
          (i32.and
            (local.tee $l9
              (i32.load offset=28
                (local.tee $l8
                  (i32.load
                    (local.get $p0)))))
            (i32.const 4)))
        (local.set $l6
          (i32.const 1))
        (br_if $B0
          (call_indirect $T0 (type $t6)
            (i32.load offset=20
              (local.get $l8))
            (select
              (i32.const 1055203)
              (i32.const 1055200)
              (local.tee $l7
                (i32.and
                  (local.get $l7)
                  (i32.const 255))))
            (select
              (i32.const 2)
              (i32.const 3)
              (local.get $l7))
            (i32.load offset=12
              (i32.load
                (i32.add
                  (local.get $l8)
                  (i32.const 24))))))
        (local.set $l6
          (i32.const 1))
        (br_if $B0
          (call_indirect $T0 (type $t6)
            (i32.load offset=20
              (local.get $l8))
            (local.get $p1)
            (local.get $p2)
            (i32.load offset=12
              (i32.load offset=24
                (local.get $l8)))))
        (local.set $l6
          (i32.const 1))
        (br_if $B0
          (call_indirect $T0 (type $t6)
            (i32.load offset=20
              (local.get $l8))
            (i32.const 1055152)
            (i32.const 2)
            (i32.load offset=12
              (i32.load offset=24
                (local.get $l8)))))
        (local.set $l6
          (call_indirect $T0 (type $t4)
            (local.get $p3)
            (local.get $l8)
            (i32.load offset=12
              (local.get $p4))))
        (br $B0))
      (block $B2
        (br_if $B2
          (i32.and
            (local.get $l7)
            (i32.const 255)))
        (local.set $l6
          (i32.const 1))
        (br_if $B0
          (call_indirect $T0 (type $t6)
            (i32.load offset=20
              (local.get $l8))
            (i32.const 1055205)
            (i32.const 3)
            (i32.load offset=12
              (i32.load
                (i32.add
                  (local.get $l8)
                  (i32.const 24))))))
        (local.set $l9
          (i32.load offset=28
            (local.get $l8))))
      (local.set $l6
        (i32.const 1))
      (i32.store8 offset=27
        (local.get $l5)
        (i32.const 1))
      (i32.store
        (i32.add
          (local.get $l5)
          (i32.const 52))
        (i32.const 1055172))
      (i64.store offset=12 align=4
        (local.get $l5)
        (i64.load offset=20 align=4
          (local.get $l8)))
      (i32.store offset=20
        (local.get $l5)
        (i32.add
          (local.get $l5)
          (i32.const 27)))
      (i64.store offset=36 align=4
        (local.get $l5)
        (i64.load offset=8 align=4
          (local.get $l8)))
      (local.set $l10
        (i64.load align=4
          (local.get $l8)))
      (i32.store offset=56
        (local.get $l5)
        (local.get $l9))
      (i32.store offset=44
        (local.get $l5)
        (i32.load offset=16
          (local.get $l8)))
      (i32.store8 offset=60
        (local.get $l5)
        (i32.load8_u offset=32
          (local.get $l8)))
      (i64.store offset=28 align=4
        (local.get $l5)
        (local.get $l10))
      (i32.store offset=48
        (local.get $l5)
        (i32.add
          (local.get $l5)
          (i32.const 12)))
      (br_if $B0
        (call $_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hc2e14531b5a9e2d0E
          (i32.add
            (local.get $l5)
            (i32.const 12))
          (local.get $p1)
          (local.get $p2)))
      (br_if $B0
        (call $_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hc2e14531b5a9e2d0E
          (i32.add
            (local.get $l5)
            (i32.const 12))
          (i32.const 1055152)
          (i32.const 2)))
      (br_if $B0
        (call_indirect $T0 (type $t4)
          (local.get $p3)
          (i32.add
            (local.get $l5)
            (i32.const 28))
          (i32.load offset=12
            (local.get $p4))))
      (local.set $l6
        (call_indirect $T0 (type $t6)
          (i32.load offset=48
            (local.get $l5))
          (i32.const 1055208)
          (i32.const 2)
          (i32.load offset=12
            (i32.load offset=52
              (local.get $l5))))))
    (i32.store8 offset=5
      (local.get $p0)
      (i32.const 1))
    (i32.store8 offset=4
      (local.get $p0)
      (local.get $l6))
    (global.set $__stack_pointer
      (i32.add
        (local.get $l5)
        (i32.const 64)))
    (local.get $p0))
  (func $_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17h3b97757dd6a68ac5E (type $t4) (param $p0 i32) (param $p1 i32) (result i32)
    (call $_ZN4core3fmt3num3imp7fmt_u6417hfed220e75c2efd61E
      (i64.load8_u
        (local.get $p0))
      (i32.const 1)
      (local.get $p1)))
  (func $_ZN4core6result13unwrap_failed17hd8d94c2109be2ae4E (type $t13) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32)
    (local $l5 i32)
    (global.set $__stack_pointer
      (local.tee $l5
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 64))))
    (i32.store offset=12
      (local.get $l5)
      (local.get $p1))
    (i32.store offset=8
      (local.get $l5)
      (local.get $p0))
    (i32.store offset=20
      (local.get $l5)
      (local.get $p3))
    (i32.store offset=16
      (local.get $l5)
      (local.get $p2))
    (i64.store align=4
      (i32.add
        (i32.add
          (local.get $l5)
          (i32.const 24))
        (i32.const 12))
      (i64.const 2))
    (i32.store
      (i32.add
        (i32.add
          (local.get $l5)
          (i32.const 48))
        (i32.const 12))
      (i32.const 66))
    (i32.store offset=28
      (local.get $l5)
      (i32.const 2))
    (i32.store offset=24
      (local.get $l5)
      (i32.const 1055156))
    (i32.store offset=52
      (local.get $l5)
      (i32.const 67))
    (i32.store offset=32
      (local.get $l5)
      (i32.add
        (local.get $l5)
        (i32.const 48)))
    (i32.store offset=56
      (local.get $l5)
      (i32.add
        (local.get $l5)
        (i32.const 16)))
    (i32.store offset=48
      (local.get $l5)
      (i32.add
        (local.get $l5)
        (i32.const 8)))
    (call $_ZN4core9panicking9panic_fmt17h2a1cf3beec13dfc3E
      (i32.add
        (local.get $l5)
        (i32.const 24))
      (local.get $p4))
    (unreachable))
  (func $_ZN4core6option13expect_failed17h01cf680af7b4197dE (type $t5) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32)
    (global.set $__stack_pointer
      (local.tee $l3
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 48))))
    (i32.store offset=12
      (local.get $l3)
      (local.get $p1))
    (i32.store offset=8
      (local.get $l3)
      (local.get $p0))
    (i64.store align=4
      (i32.add
        (local.get $l3)
        (i32.const 28))
      (i64.const 1))
    (i32.store offset=20
      (local.get $l3)
      (i32.const 1))
    (i32.store offset=16
      (local.get $l3)
      (i32.const 1054940))
    (i32.store offset=44
      (local.get $l3)
      (i32.const 67))
    (i32.store offset=24
      (local.get $l3)
      (i32.add
        (local.get $l3)
        (i32.const 40)))
    (i32.store offset=40
      (local.get $l3)
      (i32.add
        (local.get $l3)
        (i32.const 8)))
    (call $_ZN4core9panicking9panic_fmt17h2a1cf3beec13dfc3E
      (i32.add
        (local.get $l3)
        (i32.const 16))
      (local.get $p2))
    (unreachable))
  (func $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hd03777854f5d8623E (type $t4) (param $p0 i32) (param $p1 i32) (result i32)
    (call $_ZN4core3fmt9Formatter3pad17h3abb0d5578a98d1fE
      (local.get $p1)
      (i32.load
        (local.get $p0))
      (i32.load offset=4
        (local.get $p0))))
  (func $_ZN70_$LT$core..panic..location..Location$u20$as$u20$core..fmt..Display$GT$3fmt17h11de13d4848f3a34E (type $t4) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32)
    (global.set $__stack_pointer
      (local.tee $l2
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 48))))
    (i32.store
      (i32.add
        (local.get $l2)
        (i32.const 44))
      (i32.const 11))
    (i32.store
      (i32.add
        (i32.add
          (local.get $l2)
          (i32.const 24))
        (i32.const 12))
      (i32.const 11))
    (i64.store align=4
      (i32.add
        (local.get $l2)
        (i32.const 12))
      (i64.const 3))
    (i32.store offset=4
      (local.get $l2)
      (i32.const 3))
    (i32.store
      (local.get $l2)
      (i32.const 1054952))
    (i32.store offset=28
      (local.get $l2)
      (i32.const 67))
    (i32.store offset=24
      (local.get $l2)
      (local.get $p0))
    (i32.store offset=40
      (local.get $l2)
      (i32.add
        (local.get $p0)
        (i32.const 12)))
    (i32.store offset=32
      (local.get $l2)
      (i32.add
        (local.get $p0)
        (i32.const 8)))
    (local.set $p0
      (i32.load
        (i32.add
          (local.get $p1)
          (i32.const 24))))
    (i32.store offset=8
      (local.get $l2)
      (i32.add
        (local.get $l2)
        (i32.const 24)))
    (local.set $p0
      (call $_ZN4core3fmt5write17had8ef63591bfa1d0E
        (i32.load offset=20
          (local.get $p1))
        (local.get $p0)
        (local.get $l2)))
    (global.set $__stack_pointer
      (i32.add
        (local.get $l2)
        (i32.const 48)))
    (local.get $p0))
  (func $_ZN4core5panic10panic_info9PanicInfo7payload17h92ff74072d48dd3dE (type $t2) (param $p0 i32) (param $p1 i32)
    (i64.store
      (local.get $p0)
      (i64.load align=4
        (local.get $p1))))
  (func $_ZN4core5panic10panic_info9PanicInfo7message17hd9078e78509cb0c8E (type $t3) (param $p0 i32) (result i32)
    (i32.load offset=8
      (local.get $p0)))
  (func $_ZN4core5panic10panic_info9PanicInfo8location17hc9d8fb23293bf248E (type $t3) (param $p0 i32) (result i32)
    (i32.load offset=12
      (local.get $p0)))
  (func $_ZN4core5panic10panic_info9PanicInfo10can_unwind17h942bbac4bd6b8273E (type $t3) (param $p0 i32) (result i32)
    (i32.load8_u offset=16
      (local.get $p0)))
  (func $_ZN73_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Display$GT$3fmt17h9ca92e289b06e7c8E (type $t4) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32)
    (global.set $__stack_pointer
      (local.tee $l2
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 64))))
    (local.set $l3
      (i32.const 1))
    (block $B0
      (br_if $B0
        (call_indirect $T0 (type $t6)
          (local.tee $l4
            (i32.load offset=20
              (local.get $p1)))
          (i32.const 1054976)
          (i32.const 12)
          (local.tee $l6
            (i32.load offset=12
              (local.tee $l5
                (i32.load
                  (i32.add
                    (local.get $p1)
                    (i32.const 24))))))))
      (local.set $p1
        (i32.load offset=12
          (local.get $p0)))
      (i64.store align=4
        (i32.add
          (i32.add
            (local.get $l2)
            (i32.const 16))
          (i32.const 12))
        (i64.const 3))
      (i32.store
        (i32.add
          (local.get $l2)
          (i32.const 60))
        (i32.const 11))
      (i32.store
        (i32.add
          (i32.add
            (local.get $l2)
            (i32.const 40))
          (i32.const 12))
        (i32.const 11))
      (i32.store offset=20
        (local.get $l2)
        (i32.const 3))
      (i32.store offset=16
        (local.get $l2)
        (i32.const 1054952))
      (i32.store offset=56
        (local.get $l2)
        (i32.add
          (local.get $p1)
          (i32.const 12)))
      (i32.store offset=48
        (local.get $l2)
        (i32.add
          (local.get $p1)
          (i32.const 8)))
      (i32.store offset=44
        (local.get $l2)
        (i32.const 67))
      (i32.store offset=40
        (local.get $l2)
        (local.get $p1))
      (i32.store offset=24
        (local.get $l2)
        (i32.add
          (local.get $l2)
          (i32.const 40)))
      (br_if $B0
        (call $_ZN4core3fmt5write17had8ef63591bfa1d0E
          (local.get $l4)
          (local.get $l5)
          (i32.add
            (local.get $l2)
            (i32.const 16))))
      (block $B1
        (block $B2
          (br_if $B2
            (i32.eqz
              (local.tee $p1
                (i32.load offset=8
                  (local.get $p0)))))
          (br_if $B0
            (call_indirect $T0 (type $t6)
              (local.get $l4)
              (i32.const 1054988)
              (i32.const 2)
              (local.get $l6)))
          (i64.store
            (i32.add
              (i32.add
                (local.get $l2)
                (i32.const 40))
              (i32.const 16))
            (i64.load align=4
              (i32.add
                (local.get $p1)
                (i32.const 16))))
          (i64.store
            (i32.add
              (i32.add
                (local.get $l2)
                (i32.const 40))
              (i32.const 8))
            (i64.load align=4
              (i32.add
                (local.get $p1)
                (i32.const 8))))
          (i64.store offset=40
            (local.get $l2)
            (i64.load align=4
              (local.get $p1)))
          (br_if $B0
            (call $_ZN4core3fmt5write17had8ef63591bfa1d0E
              (local.get $l4)
              (local.get $l5)
              (i32.add
                (local.get $l2)
                (i32.const 40))))
          (br $B1))
        (call_indirect $T0 (type $t2)
          (local.get $l2)
          (local.tee $p1
            (i32.load
              (local.get $p0)))
          (i32.load offset=12
            (i32.load offset=4
              (local.get $p0))))
        (br_if $B1
          (i32.eqz
            (i64.eqz
              (i64.or
                (i64.xor
                  (i64.load
                    (local.get $l2))
                  (i64.const -4493808902380553279))
                (i64.xor
                  (i64.load
                    (i32.add
                      (local.get $l2)
                      (i32.const 8)))
                  (i64.const -163230743173927068))))))
        (br_if $B0
          (call_indirect $T0 (type $t6)
            (local.get $l4)
            (i32.const 1054988)
            (i32.const 2)
            (local.get $l6)))
        (br_if $B0
          (call_indirect $T0 (type $t6)
            (local.get $l4)
            (i32.load
              (local.get $p1))
            (i32.load offset=4
              (local.get $p1))
            (local.get $l6))))
      (local.set $l3
        (i32.const 0)))
    (global.set $__stack_pointer
      (i32.add
        (local.get $l2)
        (i32.const 64)))
    (local.get $l3))
  (func $_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17hce490a8270b467c3E (type $t4) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32)
    (global.set $__stack_pointer
      (local.tee $l2
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 128))))
    (local.set $p0
      (i32.load
        (local.get $p0)))
    (local.set $l3
      (i32.const 0))
    (loop $L0
      (i32.store8
        (i32.add
          (i32.add
            (local.get $l2)
            (local.get $l3))
          (i32.const 127))
        (i32.add
          (select
            (i32.const 48)
            (i32.const 87)
            (i32.lt_u
              (local.tee $l4
                (i32.and
                  (local.get $p0)
                  (i32.const 15)))
              (i32.const 10)))
          (local.get $l4)))
      (local.set $l3
        (i32.add
          (local.get $l3)
          (i32.const -1)))
      (local.set $l4
        (i32.lt_u
          (local.get $p0)
          (i32.const 16)))
      (local.set $p0
        (i32.shr_u
          (local.get $p0)
          (i32.const 4)))
      (br_if $L0
        (i32.eqz
          (local.get $l4))))
    (block $B1
      (br_if $B1
        (i32.le_u
          (local.tee $p0
            (i32.add
              (local.get $l3)
              (i32.const 128)))
          (i32.const 128)))
      (call $_ZN4core5slice5index26slice_start_index_len_fail17he7b2fe2a6da776eaE
        (local.get $p0)
        (i32.const 128)
        (i32.const 1055264))
      (unreachable))
    (local.set $p0
      (call $_ZN4core3fmt9Formatter12pad_integral17h1706be4d254c2e76E
        (local.get $p1)
        (i32.const 1)
        (i32.const 1055280)
        (i32.const 2)
        (i32.add
          (i32.add
            (local.get $l2)
            (local.get $l3))
          (i32.const 128))
        (i32.sub
          (i32.const 0)
          (local.get $l3))))
    (global.set $__stack_pointer
      (i32.add
        (local.get $l2)
        (i32.const 128)))
    (local.get $p0))
  (func $_ZN4core9panicking19assert_failed_inner17hb532fdb7475e8a75E (type $t14) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32) (param $p5 i32) (param $p6 i32)
    (local $l7 i32)
    (global.set $__stack_pointer
      (local.tee $l7
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 112))))
    (i32.store offset=12
      (local.get $l7)
      (local.get $p2))
    (i32.store offset=8
      (local.get $l7)
      (local.get $p1))
    (i32.store offset=20
      (local.get $l7)
      (local.get $p4))
    (i32.store offset=16
      (local.get $l7)
      (local.get $p3))
    (block $B0
      (block $B1
        (block $B2
          (block $B3
            (br_table $B3 $B2 $B1 $B3
              (i32.and
                (local.get $p0)
                (i32.const 255))))
          (i32.store offset=24
            (local.get $l7)
            (i32.const 1055008))
          (local.set $p2
            (i32.const 2))
          (br $B0))
        (i32.store offset=24
          (local.get $l7)
          (i32.const 1055010))
        (local.set $p2
          (i32.const 2))
        (br $B0))
      (i32.store offset=24
        (local.get $l7)
        (i32.const 1055012))
      (local.set $p2
        (i32.const 7)))
    (i32.store offset=28
      (local.get $l7)
      (local.get $p2))
    (block $B4
      (br_if $B4
        (i32.load
          (local.get $p5)))
      (i32.store
        (i32.add
          (local.get $l7)
          (i32.const 76))
        (i32.const 66))
      (i32.store
        (i32.add
          (i32.add
            (local.get $l7)
            (i32.const 56))
          (i32.const 12))
        (i32.const 66))
      (i64.store align=4
        (i32.add
          (i32.add
            (local.get $l7)
            (i32.const 88))
          (i32.const 12))
        (i64.const 3))
      (i32.store offset=92
        (local.get $l7)
        (i32.const 3))
      (i32.store offset=88
        (local.get $l7)
        (i32.const 1055068))
      (i32.store offset=60
        (local.get $l7)
        (i32.const 67))
      (i32.store offset=96
        (local.get $l7)
        (i32.add
          (local.get $l7)
          (i32.const 56)))
      (i32.store offset=72
        (local.get $l7)
        (i32.add
          (local.get $l7)
          (i32.const 16)))
      (i32.store offset=64
        (local.get $l7)
        (i32.add
          (local.get $l7)
          (i32.const 8)))
      (i32.store offset=56
        (local.get $l7)
        (i32.add
          (local.get $l7)
          (i32.const 24)))
      (call $_ZN4core9panicking9panic_fmt17h2a1cf3beec13dfc3E
        (i32.add
          (local.get $l7)
          (i32.const 88))
        (local.get $p6))
      (unreachable))
    (i64.store
      (i32.add
        (i32.add
          (local.get $l7)
          (i32.const 32))
        (i32.const 16))
      (i64.load align=4
        (i32.add
          (local.get $p5)
          (i32.const 16))))
    (i64.store
      (i32.add
        (i32.add
          (local.get $l7)
          (i32.const 32))
        (i32.const 8))
      (i64.load align=4
        (i32.add
          (local.get $p5)
          (i32.const 8))))
    (i64.store offset=32
      (local.get $l7)
      (i64.load align=4
        (local.get $p5)))
    (i64.store align=4
      (i32.add
        (i32.add
          (local.get $l7)
          (i32.const 88))
        (i32.const 12))
      (i64.const 4))
    (i32.store
      (i32.add
        (local.get $l7)
        (i32.const 84))
      (i32.const 66))
    (i32.store
      (i32.add
        (local.get $l7)
        (i32.const 76))
      (i32.const 66))
    (i32.store
      (i32.add
        (i32.add
          (local.get $l7)
          (i32.const 56))
        (i32.const 12))
      (i32.const 68))
    (i32.store offset=92
      (local.get $l7)
      (i32.const 4))
    (i32.store offset=88
      (local.get $l7)
      (i32.const 1055120))
    (i32.store offset=60
      (local.get $l7)
      (i32.const 67))
    (i32.store offset=96
      (local.get $l7)
      (i32.add
        (local.get $l7)
        (i32.const 56)))
    (i32.store offset=80
      (local.get $l7)
      (i32.add
        (local.get $l7)
        (i32.const 16)))
    (i32.store offset=72
      (local.get $l7)
      (i32.add
        (local.get $l7)
        (i32.const 8)))
    (i32.store offset=64
      (local.get $l7)
      (i32.add
        (local.get $l7)
        (i32.const 32)))
    (i32.store offset=56
      (local.get $l7)
      (i32.add
        (local.get $l7)
        (i32.const 24)))
    (call $_ZN4core9panicking9panic_fmt17h2a1cf3beec13dfc3E
      (i32.add
        (local.get $l7)
        (i32.const 88))
      (local.get $p6))
    (unreachable))
  (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h680182318a1eb4faE (type $t4) (param $p0 i32) (param $p1 i32) (result i32)
    (call_indirect $T0 (type $t4)
      (i32.load
        (local.get $p0))
      (local.get $p1)
      (i32.load offset=12
        (i32.load offset=4
          (local.get $p0)))))
  (func $_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17h10cf4083cd0de1b3E (type $t4) (param $p0 i32) (param $p1 i32) (result i32)
    (call $_ZN4core3fmt5write17had8ef63591bfa1d0E
      (i32.load offset=20
        (local.get $p1))
      (i32.load
        (i32.add
          (local.get $p1)
          (i32.const 24)))
      (local.get $p0)))
  (func $_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hc2e14531b5a9e2d0E (type $t6) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32) (local $l13 i32)
    (local.set $l3
      (i32.load offset=4
        (local.get $p0)))
    (local.set $l4
      (i32.load
        (local.get $p0)))
    (local.set $l5
      (i32.load offset=8
        (local.get $p0)))
    (local.set $l6
      (i32.const 0))
    (local.set $l7
      (i32.const 0))
    (local.set $l8
      (i32.const 0))
    (local.set $l9
      (i32.const 0))
    (block $B0
      (loop $L1
        (br_if $B0
          (i32.and
            (local.get $l9)
            (i32.const 255)))
        (block $B2
          (block $B3
            (br_if $B3
              (i32.gt_u
                (local.get $l8)
                (local.get $p2)))
            (loop $L4
              (local.set $l10
                (i32.add
                  (local.get $p1)
                  (local.get $l8)))
              (block $B5
                (block $B6
                  (block $B7
                    (block $B8
                      (block $B9
                        (br_if $B9
                          (i32.lt_u
                            (local.tee $l11
                              (i32.sub
                                (local.get $p2)
                                (local.get $l8)))
                            (i32.const 8)))
                        (br_if $B8
                          (i32.eq
                            (local.tee $p0
                              (i32.and
                                (i32.add
                                  (local.get $l10)
                                  (i32.const 3))
                                (i32.const -4)))
                            (local.get $l10)))
                        (br_if $B8
                          (i32.eqz
                            (local.tee $p0
                              (i32.sub
                                (local.get $p0)
                                (local.get $l10)))))
                        (local.set $l12
                          (i32.const 0))
                        (loop $L10
                          (br_if $B5
                            (i32.eq
                              (i32.load8_u
                                (i32.add
                                  (local.get $l10)
                                  (local.get $l12)))
                              (i32.const 10)))
                          (br_if $L10
                            (i32.ne
                              (local.get $p0)
                              (local.tee $l12
                                (i32.add
                                  (local.get $l12)
                                  (i32.const 1))))))
                        (br_if $B6
                          (i32.gt_u
                            (local.get $p0)
                            (local.tee $l13
                              (i32.add
                                (local.get $l11)
                                (i32.const -8)))))
                        (br $B7))
                      (block $B11
                        (br_if $B11
                          (i32.ne
                            (local.get $p2)
                            (local.get $l8)))
                        (local.set $l8
                          (local.get $p2))
                        (br $B3))
                      (local.set $l12
                        (i32.const 0))
                      (loop $L12
                        (br_if $B5
                          (i32.eq
                            (i32.load8_u
                              (i32.add
                                (local.get $l10)
                                (local.get $l12)))
                            (i32.const 10)))
                        (br_if $L12
                          (i32.ne
                            (local.get $l11)
                            (local.tee $l12
                              (i32.add
                                (local.get $l12)
                                (i32.const 1))))))
                      (local.set $l8
                        (local.get $p2))
                      (br $B3))
                    (local.set $l13
                      (i32.add
                        (local.get $l11)
                        (i32.const -8)))
                    (local.set $p0
                      (i32.const 0)))
                  (loop $L13
                    (br_if $B6
                      (i32.and
                        (i32.or
                          (i32.and
                            (i32.add
                              (i32.xor
                                (local.tee $l9
                                  (i32.load
                                    (i32.add
                                      (local.tee $l12
                                        (i32.add
                                          (local.get $l10)
                                          (local.get $p0)))
                                      (i32.const 4))))
                                (i32.const 168430090))
                              (i32.const -16843009))
                            (i32.xor
                              (local.get $l9)
                              (i32.const -1)))
                          (i32.and
                            (i32.add
                              (i32.xor
                                (local.tee $l12
                                  (i32.load
                                    (local.get $l12)))
                                (i32.const 168430090))
                              (i32.const -16843009))
                            (i32.xor
                              (local.get $l12)
                              (i32.const -1))))
                        (i32.const -2139062144)))
                    (br_if $L13
                      (i32.le_u
                        (local.tee $p0
                          (i32.add
                            (local.get $p0)
                            (i32.const 8)))
                        (local.get $l13)))))
                (block $B14
                  (br_if $B14
                    (i32.ne
                      (local.get $p0)
                      (local.get $l11)))
                  (local.set $l8
                    (local.get $p2))
                  (br $B3))
                (loop $L15
                  (block $B16
                    (br_if $B16
                      (i32.ne
                        (i32.load8_u
                          (i32.add
                            (local.get $l10)
                            (local.get $p0)))
                        (i32.const 10)))
                    (local.set $l12
                      (local.get $p0))
                    (br $B5))
                  (br_if $L15
                    (i32.ne
                      (local.get $l11)
                      (local.tee $p0
                        (i32.add
                          (local.get $p0)
                          (i32.const 1))))))
                (local.set $l8
                  (local.get $p2))
                (br $B3))
              (local.set $l8
                (i32.add
                  (local.tee $p0
                    (i32.add
                      (local.get $l8)
                      (local.get $l12)))
                  (i32.const 1)))
              (block $B17
                (br_if $B17
                  (i32.ge_u
                    (local.get $p0)
                    (local.get $p2)))
                (br_if $B17
                  (i32.ne
                    (i32.load8_u
                      (i32.add
                        (local.get $p1)
                        (local.get $p0)))
                    (i32.const 10)))
                (local.set $l9
                  (i32.const 0))
                (local.set $l13
                  (local.get $l8))
                (local.set $p0
                  (local.get $l8))
                (br $B2))
              (br_if $L4
                (i32.le_u
                  (local.get $l8)
                  (local.get $p2)))))
          (local.set $l9
            (i32.const 1))
          (local.set $l13
            (local.get $l7))
          (local.set $p0
            (local.get $p2))
          (br_if $B0
            (i32.eq
              (local.get $l7)
              (local.get $p2))))
        (block $B18
          (block $B19
            (br_if $B19
              (i32.eqz
                (i32.load8_u
                  (local.get $l5))))
            (br_if $B18
              (call_indirect $T0 (type $t6)
                (local.get $l4)
                (i32.const 1055196)
                (i32.const 4)
                (i32.load offset=12
                  (local.get $l3)))))
          (local.set $l12
            (i32.add
              (local.get $p1)
              (local.get $l7)))
          (local.set $l10
            (i32.sub
              (local.get $p0)
              (local.get $l7)))
          (local.set $l11
            (i32.const 0))
          (block $B20
            (br_if $B20
              (i32.eq
                (local.get $p0)
                (local.get $l7)))
            (local.set $l11
              (i32.eq
                (i32.load8_u
                  (i32.add
                    (i32.add
                      (local.get $l10)
                      (local.get $l12))
                    (i32.const -1)))
                (i32.const 10))))
          (i32.store8
            (local.get $l5)
            (local.get $l11))
          (local.set $l7
            (local.get $l13))
          (br_if $L1
            (i32.eqz
              (call_indirect $T0 (type $t6)
                (local.get $l4)
                (local.get $l12)
                (local.get $l10)
                (i32.load offset=12
                  (local.get $l3)))))))
      (local.set $l6
        (i32.const 1)))
    (local.get $l6))
  (func $_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$10write_char17h7f9bf6bd361198b7E (type $t4) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32)
    (local.set $l2
      (i32.load offset=4
        (local.get $p0)))
    (local.set $l3
      (i32.load
        (local.get $p0)))
    (block $B0
      (br_if $B0
        (i32.eqz
          (i32.load8_u
            (local.tee $p0
              (i32.load offset=8
                (local.get $p0))))))
      (br_if $B0
        (i32.eqz
          (call_indirect $T0 (type $t6)
            (local.get $l3)
            (i32.const 1055196)
            (i32.const 4)
            (i32.load offset=12
              (local.get $l2)))))
      (return
        (i32.const 1)))
    (i32.store8
      (local.get $p0)
      (i32.eq
        (local.get $p1)
        (i32.const 10)))
    (call_indirect $T0 (type $t4)
      (local.get $l3)
      (local.get $p1)
      (i32.load offset=16
        (local.get $l2))))
  (func $_ZN4core3fmt8builders10DebugTuple5field17hff85d3edc7dd9fa9E (type $t6) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i64)
    (global.set $__stack_pointer
      (local.tee $l3
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 64))))
    (local.set $l4
      (i32.load
        (local.get $p0)))
    (local.set $l5
      (i32.const 1))
    (block $B0
      (br_if $B0
        (i32.load8_u offset=8
          (local.get $p0)))
      (block $B1
        (br_if $B1
          (i32.and
            (local.tee $l7
              (i32.load offset=28
                (local.tee $l6
                  (i32.load offset=4
                    (local.get $p0)))))
            (i32.const 4)))
        (local.set $l5
          (i32.const 1))
        (br_if $B0
          (call_indirect $T0 (type $t6)
            (i32.load offset=20
              (local.get $l6))
            (select
              (i32.const 1055203)
              (i32.const 1055213)
              (local.get $l4))
            (select
              (i32.const 2)
              (i32.const 1)
              (local.get $l4))
            (i32.load offset=12
              (i32.load
                (i32.add
                  (local.get $l6)
                  (i32.const 24))))))
        (local.set $l5
          (call_indirect $T0 (type $t4)
            (local.get $p1)
            (local.get $l6)
            (i32.load offset=12
              (local.get $p2))))
        (br $B0))
      (block $B2
        (br_if $B2
          (local.get $l4))
        (local.set $l5
          (i32.const 1))
        (br_if $B0
          (call_indirect $T0 (type $t6)
            (i32.load offset=20
              (local.get $l6))
            (i32.const 1055214)
            (i32.const 2)
            (i32.load offset=12
              (i32.load
                (i32.add
                  (local.get $l6)
                  (i32.const 24))))))
        (local.set $l7
          (i32.load offset=28
            (local.get $l6))))
      (local.set $l5
        (i32.const 1))
      (i32.store8 offset=27
        (local.get $l3)
        (i32.const 1))
      (i32.store
        (i32.add
          (local.get $l3)
          (i32.const 52))
        (i32.const 1055172))
      (i64.store offset=12 align=4
        (local.get $l3)
        (i64.load offset=20 align=4
          (local.get $l6)))
      (i32.store offset=20
        (local.get $l3)
        (i32.add
          (local.get $l3)
          (i32.const 27)))
      (i64.store offset=36 align=4
        (local.get $l3)
        (i64.load offset=8 align=4
          (local.get $l6)))
      (local.set $l8
        (i64.load align=4
          (local.get $l6)))
      (i32.store offset=56
        (local.get $l3)
        (local.get $l7))
      (i32.store offset=44
        (local.get $l3)
        (i32.load offset=16
          (local.get $l6)))
      (i32.store8 offset=60
        (local.get $l3)
        (i32.load8_u offset=32
          (local.get $l6)))
      (i64.store offset=28 align=4
        (local.get $l3)
        (local.get $l8))
      (i32.store offset=48
        (local.get $l3)
        (i32.add
          (local.get $l3)
          (i32.const 12)))
      (br_if $B0
        (call_indirect $T0 (type $t4)
          (local.get $p1)
          (i32.add
            (local.get $l3)
            (i32.const 28))
          (i32.load offset=12
            (local.get $p2))))
      (local.set $l5
        (call_indirect $T0 (type $t6)
          (i32.load offset=48
            (local.get $l3))
          (i32.const 1055208)
          (i32.const 2)
          (i32.load offset=12
            (i32.load offset=52
              (local.get $l3))))))
    (i32.store8 offset=8
      (local.get $p0)
      (local.get $l5))
    (i32.store
      (local.get $p0)
      (i32.add
        (local.get $l4)
        (i32.const 1)))
    (global.set $__stack_pointer
      (i32.add
        (local.get $l3)
        (i32.const 64)))
    (local.get $p0))
  (func $_ZN4core3fmt8builders8DebugSet5entry17h56a3fc7826d78bcaE (type $t6) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (call $_ZN4core3fmt8builders10DebugInner5entry17h95ac451b00d433d9E
      (local.get $p0)
      (local.get $p1)
      (local.get $p2))
    (local.get $p0))
  (func $_ZN4core3fmt8builders9DebugList6finish17h1d8f7632de8cba13E (type $t3) (param $p0 i32) (result i32)
    (local $l1 i32)
    (local.set $l1
      (i32.const 1))
    (block $B0
      (br_if $B0
        (i32.load8_u offset=4
          (local.get $p0)))
      (local.set $l1
        (call_indirect $T0 (type $t6)
          (i32.load offset=20
            (local.tee $p0
              (i32.load
                (local.get $p0))))
          (i32.const 1055236)
          (i32.const 1)
          (i32.load offset=12
            (i32.load
              (i32.add
                (local.get $p0)
                (i32.const 24)))))))
    (local.get $l1))
  (func $_ZN4core3fmt5Write9write_fmt17h59f34f24a826850fE (type $t4) (param $p0 i32) (param $p1 i32) (result i32)
    (call $_ZN4core3fmt5write17had8ef63591bfa1d0E
      (local.get $p0)
      (i32.const 1055172)
      (local.get $p1)))
  (func $_ZN4core3str5count14do_count_chars17hd3ed9b0649f420edE (type $t4) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32)
    (block $B0
      (block $B1
        (br_if $B1
          (i32.lt_u
            (local.get $p1)
            (local.tee $l3
              (i32.sub
                (local.tee $l2
                  (i32.and
                    (i32.add
                      (local.get $p0)
                      (i32.const 3))
                    (i32.const -4)))
                (local.get $p0)))))
        (br_if $B1
          (i32.lt_u
            (local.tee $l4
              (i32.sub
                (local.get $p1)
                (local.get $l3)))
            (i32.const 4)))
        (local.set $l5
          (i32.and
            (local.get $l4)
            (i32.const 3)))
        (local.set $l6
          (i32.const 0))
        (local.set $p1
          (i32.const 0))
        (block $B2
          (br_if $B2
            (local.tee $l7
              (i32.eq
                (local.get $l2)
                (local.get $p0))))
          (local.set $p1
            (i32.const 0))
          (block $B3
            (block $B4
              (br_if $B4
                (i32.ge_u
                  (i32.add
                    (local.get $l2)
                    (i32.xor
                      (local.get $p0)
                      (i32.const -1)))
                  (i32.const 3)))
              (local.set $l8
                (i32.const 0))
              (br $B3))
            (local.set $l8
              (i32.const 0))
            (loop $L5
              (local.set $p1
                (i32.add
                  (i32.add
                    (i32.add
                      (i32.add
                        (local.get $p1)
                        (i32.gt_s
                          (i32.load8_s
                            (local.tee $l9
                              (i32.add
                                (local.get $p0)
                                (local.get $l8))))
                          (i32.const -65)))
                      (i32.gt_s
                        (i32.load8_s
                          (i32.add
                            (local.get $l9)
                            (i32.const 1)))
                        (i32.const -65)))
                    (i32.gt_s
                      (i32.load8_s
                        (i32.add
                          (local.get $l9)
                          (i32.const 2)))
                      (i32.const -65)))
                  (i32.gt_s
                    (i32.load8_s
                      (i32.add
                        (local.get $l9)
                        (i32.const 3)))
                    (i32.const -65))))
              (br_if $L5
                (local.tee $l8
                  (i32.add
                    (local.get $l8)
                    (i32.const 4))))))
          (br_if $B2
            (local.get $l7))
          (local.set $l2
            (i32.sub
              (local.get $p0)
              (local.get $l2)))
          (local.set $l9
            (i32.add
              (local.get $p0)
              (local.get $l8)))
          (loop $L6
            (local.set $p1
              (i32.add
                (local.get $p1)
                (i32.gt_s
                  (i32.load8_s
                    (local.get $l9))
                  (i32.const -65))))
            (local.set $l9
              (i32.add
                (local.get $l9)
                (i32.const 1)))
            (br_if $L6
              (local.tee $l2
                (i32.add
                  (local.get $l2)
                  (i32.const 1))))))
        (local.set $l8
          (i32.add
            (local.get $p0)
            (local.get $l3)))
        (block $B7
          (br_if $B7
            (i32.eqz
              (local.get $l5)))
          (local.set $l6
            (i32.gt_s
              (i32.load8_s
                (local.tee $l9
                  (i32.add
                    (local.get $l8)
                    (i32.and
                      (local.get $l4)
                      (i32.const -4)))))
              (i32.const -65)))
          (br_if $B7
            (i32.eq
              (local.get $l5)
              (i32.const 1)))
          (local.set $l6
            (i32.add
              (local.get $l6)
              (i32.gt_s
                (i32.load8_s offset=1
                  (local.get $l9))
                (i32.const -65))))
          (br_if $B7
            (i32.eq
              (local.get $l5)
              (i32.const 2)))
          (local.set $l6
            (i32.add
              (local.get $l6)
              (i32.gt_s
                (i32.load8_s offset=2
                  (local.get $l9))
                (i32.const -65)))))
        (local.set $l3
          (i32.shr_u
            (local.get $l4)
            (i32.const 2)))
        (local.set $l2
          (i32.add
            (local.get $l6)
            (local.get $p1)))
        (loop $L8
          (local.set $l6
            (local.get $l8))
          (br_if $B0
            (i32.eqz
              (local.get $l3)))
          (local.set $l7
            (i32.and
              (local.tee $l4
                (select
                  (local.get $l3)
                  (i32.const 192)
                  (i32.lt_u
                    (local.get $l3)
                    (i32.const 192))))
              (i32.const 3)))
          (local.set $l5
            (i32.shl
              (local.get $l4)
              (i32.const 2)))
          (local.set $l9
            (i32.const 0))
          (block $B9
            (br_if $B9
              (i32.lt_u
                (local.get $l4)
                (i32.const 4)))
            (local.set $p0
              (i32.add
                (local.get $l6)
                (i32.and
                  (local.get $l5)
                  (i32.const 1008))))
            (local.set $l9
              (i32.const 0))
            (local.set $p1
              (local.get $l6))
            (loop $L10
              (local.set $l9
                (i32.add
                  (i32.and
                    (i32.or
                      (i32.shr_u
                        (i32.xor
                          (local.tee $l8
                            (i32.load
                              (i32.add
                                (local.get $p1)
                                (i32.const 12))))
                          (i32.const -1))
                        (i32.const 7))
                      (i32.shr_u
                        (local.get $l8)
                        (i32.const 6)))
                    (i32.const 16843009))
                  (i32.add
                    (i32.and
                      (i32.or
                        (i32.shr_u
                          (i32.xor
                            (local.tee $l8
                              (i32.load
                                (i32.add
                                  (local.get $p1)
                                  (i32.const 8))))
                            (i32.const -1))
                          (i32.const 7))
                        (i32.shr_u
                          (local.get $l8)
                          (i32.const 6)))
                      (i32.const 16843009))
                    (i32.add
                      (i32.and
                        (i32.or
                          (i32.shr_u
                            (i32.xor
                              (local.tee $l8
                                (i32.load
                                  (i32.add
                                    (local.get $p1)
                                    (i32.const 4))))
                              (i32.const -1))
                            (i32.const 7))
                          (i32.shr_u
                            (local.get $l8)
                            (i32.const 6)))
                        (i32.const 16843009))
                      (i32.add
                        (i32.and
                          (i32.or
                            (i32.shr_u
                              (i32.xor
                                (local.tee $l8
                                  (i32.load
                                    (local.get $p1)))
                                (i32.const -1))
                              (i32.const 7))
                            (i32.shr_u
                              (local.get $l8)
                              (i32.const 6)))
                          (i32.const 16843009))
                        (local.get $l9))))))
              (br_if $L10
                (i32.ne
                  (local.tee $p1
                    (i32.add
                      (local.get $p1)
                      (i32.const 16)))
                  (local.get $p0)))))
          (local.set $l3
            (i32.sub
              (local.get $l3)
              (local.get $l4)))
          (local.set $l8
            (i32.add
              (local.get $l6)
              (local.get $l5)))
          (local.set $l2
            (i32.add
              (i32.shr_u
                (i32.mul
                  (i32.add
                    (i32.and
                      (i32.shr_u
                        (local.get $l9)
                        (i32.const 8))
                      (i32.const 16711935))
                    (i32.and
                      (local.get $l9)
                      (i32.const 16711935)))
                  (i32.const 65537))
                (i32.const 16))
              (local.get $l2)))
          (br_if $L8
            (i32.eqz
              (local.get $l7))))
        (local.set $p1
          (i32.and
            (i32.or
              (i32.shr_u
                (i32.xor
                  (local.tee $p1
                    (i32.load
                      (local.tee $l9
                        (i32.add
                          (local.get $l6)
                          (i32.shl
                            (i32.and
                              (local.get $l4)
                              (i32.const 252))
                            (i32.const 2))))))
                  (i32.const -1))
                (i32.const 7))
              (i32.shr_u
                (local.get $p1)
                (i32.const 6)))
            (i32.const 16843009)))
        (block $B11
          (br_if $B11
            (i32.eq
              (local.get $l7)
              (i32.const 1)))
          (local.set $p1
            (i32.add
              (i32.and
                (i32.or
                  (i32.shr_u
                    (i32.xor
                      (local.tee $l8
                        (i32.load offset=4
                          (local.get $l9)))
                      (i32.const -1))
                    (i32.const 7))
                  (i32.shr_u
                    (local.get $l8)
                    (i32.const 6)))
                (i32.const 16843009))
              (local.get $p1)))
          (br_if $B11
            (i32.eq
              (local.get $l7)
              (i32.const 2)))
          (local.set $p1
            (i32.add
              (i32.and
                (i32.or
                  (i32.shr_u
                    (i32.xor
                      (local.tee $l9
                        (i32.load offset=8
                          (local.get $l9)))
                      (i32.const -1))
                    (i32.const 7))
                  (i32.shr_u
                    (local.get $l9)
                    (i32.const 6)))
                (i32.const 16843009))
              (local.get $p1))))
        (return
          (i32.add
            (i32.shr_u
              (i32.mul
                (i32.add
                  (i32.and
                    (i32.shr_u
                      (local.get $p1)
                      (i32.const 8))
                    (i32.const 459007))
                  (i32.and
                    (local.get $p1)
                    (i32.const 16711935)))
                (i32.const 65537))
              (i32.const 16))
            (local.get $l2))))
      (block $B12
        (br_if $B12
          (local.get $p1))
        (return
          (i32.const 0)))
      (local.set $l8
        (i32.and
          (local.get $p1)
          (i32.const 3)))
      (block $B13
        (block $B14
          (br_if $B14
            (i32.ge_u
              (local.get $p1)
              (i32.const 4)))
          (local.set $l2
            (i32.const 0))
          (local.set $l9
            (i32.const 0))
          (br $B13))
        (local.set $l3
          (i32.and
            (local.get $p1)
            (i32.const -4)))
        (local.set $l2
          (i32.const 0))
        (local.set $l9
          (i32.const 0))
        (loop $L15
          (local.set $l2
            (i32.add
              (i32.add
                (i32.add
                  (i32.add
                    (local.get $l2)
                    (i32.gt_s
                      (i32.load8_s
                        (local.tee $p1
                          (i32.add
                            (local.get $p0)
                            (local.get $l9))))
                      (i32.const -65)))
                  (i32.gt_s
                    (i32.load8_s
                      (i32.add
                        (local.get $p1)
                        (i32.const 1)))
                    (i32.const -65)))
                (i32.gt_s
                  (i32.load8_s
                    (i32.add
                      (local.get $p1)
                      (i32.const 2)))
                  (i32.const -65)))
              (i32.gt_s
                (i32.load8_s
                  (i32.add
                    (local.get $p1)
                    (i32.const 3)))
                (i32.const -65))))
          (br_if $L15
            (i32.ne
              (local.get $l3)
              (local.tee $l9
                (i32.add
                  (local.get $l9)
                  (i32.const 4)))))))
      (br_if $B0
        (i32.eqz
          (local.get $l8)))
      (local.set $p1
        (i32.add
          (local.get $p0)
          (local.get $l9)))
      (loop $L16
        (local.set $l2
          (i32.add
            (local.get $l2)
            (i32.gt_s
              (i32.load8_s
                (local.get $p1))
              (i32.const -65))))
        (local.set $p1
          (i32.add
            (local.get $p1)
            (i32.const 1)))
        (br_if $L16
          (local.tee $l8
            (i32.add
              (local.get $l8)
              (i32.const -1))))))
    (local.get $l2))
  (func $_ZN4core3fmt9Formatter12pad_integral12write_prefix17h3a7a7fcfeba16998E (type $t10) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32) (result i32)
    (local $l5 i32)
    (block $B0
      (block $B1
        (block $B2
          (br_if $B2
            (i32.eq
              (local.get $p2)
              (i32.const 1114112)))
          (local.set $l5
            (i32.const 1))
          (br_if $B1
            (call_indirect $T0 (type $t4)
              (local.get $p0)
              (local.get $p2)
              (i32.load offset=16
                (local.get $p1)))))
        (br_if $B0
          (local.get $p3))
        (local.set $l5
          (i32.const 0)))
      (return
        (local.get $l5)))
    (call_indirect $T0 (type $t6)
      (local.get $p0)
      (local.get $p3)
      (local.get $p4)
      (i32.load offset=12
        (local.get $p1))))
  (func $_ZN4core3fmt9Formatter9write_fmt17hd3a20ec36a39f80cE (type $t4) (param $p0 i32) (param $p1 i32) (result i32)
    (call $_ZN4core3fmt5write17had8ef63591bfa1d0E
      (i32.load offset=20
        (local.get $p0))
      (i32.load
        (i32.add
          (local.get $p0)
          (i32.const 24)))
      (local.get $p1)))
  (func $_ZN4core3fmt9Formatter15debug_lower_hex17h7ad298462c0c0f4cE (type $t3) (param $p0 i32) (result i32)
    (i32.shr_u
      (i32.and
        (i32.load8_u offset=28
          (local.get $p0))
        (i32.const 16))
      (i32.const 4)))
  (func $_ZN4core3fmt9Formatter15debug_upper_hex17h015188d8f739da3eE (type $t3) (param $p0 i32) (result i32)
    (i32.shr_u
      (i32.and
        (i32.load8_u offset=28
          (local.get $p0))
        (i32.const 32))
      (i32.const 5)))
  (func $_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h435774f7b8fcddc9E (type $t10) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32) (result i32)
    (local $l5 i32)
    (global.set $__stack_pointer
      (local.tee $l5
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 16))))
    (i32.store8 offset=12
      (local.get $l5)
      (call_indirect $T0 (type $t6)
        (i32.load offset=20
          (local.get $p0))
        (local.get $p1)
        (local.get $p2)
        (i32.load offset=12
          (i32.load
            (i32.add
              (local.get $p0)
              (i32.const 24))))))
    (i32.store offset=8
      (local.get $l5)
      (local.get $p0))
    (i32.store8 offset=13
      (local.get $l5)
      (i32.eqz
        (local.get $p2)))
    (i32.store offset=4
      (local.get $l5)
      (i32.const 0))
    (local.set $p0
      (call $_ZN4core3fmt8builders10DebugTuple5field17hff85d3edc7dd9fa9E
        (i32.add
          (local.get $l5)
          (i32.const 4))
        (local.get $p3)
        (local.get $p4)))
    (local.set $p2
      (i32.load8_u offset=12
        (local.get $l5)))
    (block $B0
      (block $B1
        (br_if $B1
          (local.tee $p1
            (i32.load
              (local.get $p0))))
        (local.set $p0
          (i32.ne
            (i32.and
              (local.get $p2)
              (i32.const 255))
            (i32.const 0)))
        (br $B0))
      (local.set $p0
        (i32.const 1))
      (br_if $B0
        (i32.and
          (local.get $p2)
          (i32.const 255)))
      (local.set $p2
        (i32.load offset=8
          (local.get $l5)))
      (block $B2
        (br_if $B2
          (i32.ne
            (local.get $p1)
            (i32.const 1)))
        (br_if $B2
          (i32.eqz
            (i32.and
              (i32.load8_u offset=13
                (local.get $l5))
              (i32.const 255))))
        (br_if $B2
          (i32.and
            (i32.load8_u offset=28
              (local.get $p2))
            (i32.const 4)))
        (local.set $p0
          (i32.const 1))
        (br_if $B0
          (call_indirect $T0 (type $t6)
            (i32.load offset=20
              (local.get $p2))
            (i32.const 1055216)
            (i32.const 1)
            (i32.load offset=12
              (i32.load
                (i32.add
                  (local.get $p2)
                  (i32.const 24)))))))
      (local.set $p0
        (call_indirect $T0 (type $t6)
          (i32.load offset=20
            (local.get $p2))
          (i32.const 1054896)
          (i32.const 1)
          (i32.load offset=12
            (i32.load
              (i32.add
                (local.get $p2)
                (i32.const 24)))))))
    (global.set $__stack_pointer
      (i32.add
        (local.get $l5)
        (i32.const 16)))
    (local.get $p0))
  (func $_ZN4core3fmt9Formatter25debug_tuple_field2_finish17h8b57a87d4eadda96E (type $t15) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32) (param $p5 i32) (param $p6 i32) (result i32)
    (local $l7 i32)
    (global.set $__stack_pointer
      (local.tee $l7
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 16))))
    (i32.store8 offset=12
      (local.get $l7)
      (call_indirect $T0 (type $t6)
        (i32.load offset=20
          (local.get $p0))
        (local.get $p1)
        (local.get $p2)
        (i32.load offset=12
          (i32.load
            (i32.add
              (local.get $p0)
              (i32.const 24))))))
    (i32.store offset=8
      (local.get $l7)
      (local.get $p0))
    (i32.store8 offset=13
      (local.get $l7)
      (i32.eqz
        (local.get $p2)))
    (i32.store offset=4
      (local.get $l7)
      (i32.const 0))
    (local.set $p0
      (call $_ZN4core3fmt8builders10DebugTuple5field17hff85d3edc7dd9fa9E
        (call $_ZN4core3fmt8builders10DebugTuple5field17hff85d3edc7dd9fa9E
          (i32.add
            (local.get $l7)
            (i32.const 4))
          (local.get $p3)
          (local.get $p4))
        (local.get $p5)
        (local.get $p6)))
    (local.set $p2
      (i32.load8_u offset=12
        (local.get $l7)))
    (block $B0
      (block $B1
        (br_if $B1
          (local.tee $p1
            (i32.load
              (local.get $p0))))
        (local.set $p0
          (i32.ne
            (i32.and
              (local.get $p2)
              (i32.const 255))
            (i32.const 0)))
        (br $B0))
      (local.set $p0
        (i32.const 1))
      (br_if $B0
        (i32.and
          (local.get $p2)
          (i32.const 255)))
      (local.set $p2
        (i32.load offset=8
          (local.get $l7)))
      (block $B2
        (br_if $B2
          (i32.ne
            (local.get $p1)
            (i32.const 1)))
        (br_if $B2
          (i32.eqz
            (i32.and
              (i32.load8_u offset=13
                (local.get $l7))
              (i32.const 255))))
        (br_if $B2
          (i32.and
            (i32.load8_u offset=28
              (local.get $p2))
            (i32.const 4)))
        (local.set $p0
          (i32.const 1))
        (br_if $B0
          (call_indirect $T0 (type $t6)
            (i32.load offset=20
              (local.get $p2))
            (i32.const 1055216)
            (i32.const 1)
            (i32.load offset=12
              (i32.load
                (i32.add
                  (local.get $p2)
                  (i32.const 24)))))))
      (local.set $p0
        (call_indirect $T0 (type $t6)
          (i32.load offset=20
            (local.get $p2))
          (i32.const 1054896)
          (i32.const 1)
          (i32.load offset=12
            (i32.load
              (i32.add
                (local.get $p2)
                (i32.const 24)))))))
    (global.set $__stack_pointer
      (i32.add
        (local.get $l7)
        (i32.const 16)))
    (local.get $p0))
  (func $_ZN4core3fmt9Formatter10debug_list17h6d3a7adf18bffe95E (type $t2) (param $p0 i32) (param $p1 i32)
    (local $l2 i32)
    (local.set $l2
      (call_indirect $T0 (type $t6)
        (i32.load offset=20
          (local.get $p1))
        (i32.const 1054949)
        (i32.const 1)
        (i32.load offset=12
          (i32.load
            (i32.add
              (local.get $p1)
              (i32.const 24))))))
    (i32.store8 offset=5
      (local.get $p0)
      (i32.const 0))
    (i32.store8 offset=4
      (local.get $p0)
      (local.get $l2))
    (i32.store
      (local.get $p0)
      (local.get $p1)))
  (func $_ZN43_$LT$bool$u20$as$u20$core..fmt..Display$GT$3fmt17h766e77db32ad58ccE (type $t4) (param $p0 i32) (param $p1 i32) (result i32)
    (block $B0
      (br_if $B0
        (i32.load8_u
          (local.get $p0)))
      (return
        (call $_ZN4core3fmt9Formatter3pad17h3abb0d5578a98d1fE
          (local.get $p1)
          (i32.const 1055482)
          (i32.const 5))))
    (call $_ZN4core3fmt9Formatter3pad17h3abb0d5578a98d1fE
      (local.get $p1)
      (i32.const 1055487)
      (i32.const 4)))
  (func $_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h168a697adc3298ffE (type $t6) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (call $_ZN4core3fmt9Formatter3pad17h3abb0d5578a98d1fE
      (local.get $p2)
      (local.get $p0)
      (local.get $p1)))
  (func $_ZN4core5slice6memchr14memchr_aligned17hcb68703b7d8067b2E (type $t9) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32)
    (block $B0
      (block $B1
        (block $B2
          (block $B3
            (br_if $B3
              (i32.eq
                (local.tee $l4
                  (i32.and
                    (i32.add
                      (local.get $p2)
                      (i32.const 3))
                    (i32.const -4)))
                (local.get $p2)))
            (br_if $B3
              (i32.eqz
                (local.tee $l4
                  (select
                    (local.tee $l4
                      (i32.sub
                        (local.get $l4)
                        (local.get $p2)))
                    (local.get $p3)
                    (i32.lt_u
                      (local.get $l4)
                      (local.get $p3))))))
            (local.set $l5
              (i32.const 0))
            (local.set $l6
              (i32.and
                (local.get $p1)
                (i32.const 255)))
            (local.set $l7
              (i32.const 1))
            (loop $L4
              (br_if $B0
                (i32.eq
                  (i32.load8_u
                    (i32.add
                      (local.get $p2)
                      (local.get $l5)))
                  (local.get $l6)))
              (br_if $L4
                (i32.ne
                  (local.get $l4)
                  (local.tee $l5
                    (i32.add
                      (local.get $l5)
                      (i32.const 1))))))
            (br_if $B1
              (i32.gt_u
                (local.get $l4)
                (local.tee $l8
                  (i32.add
                    (local.get $p3)
                    (i32.const -8)))))
            (br $B2))
          (local.set $l8
            (i32.add
              (local.get $p3)
              (i32.const -8)))
          (local.set $l4
            (i32.const 0)))
        (local.set $l5
          (i32.mul
            (i32.and
              (local.get $p1)
              (i32.const 255))
            (i32.const 16843009)))
        (loop $L5
          (br_if $B1
            (i32.and
              (i32.or
                (i32.and
                  (i32.add
                    (local.tee $l7
                      (i32.xor
                        (i32.load
                          (i32.add
                            (local.tee $l6
                              (i32.add
                                (local.get $p2)
                                (local.get $l4)))
                            (i32.const 4)))
                        (local.get $l5)))
                    (i32.const -16843009))
                  (i32.xor
                    (local.get $l7)
                    (i32.const -1)))
                (i32.and
                  (i32.add
                    (local.tee $l6
                      (i32.xor
                        (i32.load
                          (local.get $l6))
                        (local.get $l5)))
                    (i32.const -16843009))
                  (i32.xor
                    (local.get $l6)
                    (i32.const -1))))
              (i32.const -2139062144)))
          (br_if $L5
            (i32.le_u
              (local.tee $l4
                (i32.add
                  (local.get $l4)
                  (i32.const 8)))
              (local.get $l8)))))
      (local.set $l7
        (i32.const 0))
      (block $B6
        (br_if $B6
          (i32.eq
            (local.get $l4)
            (local.get $p3)))
        (local.set $l5
          (i32.and
            (local.get $p1)
            (i32.const 255)))
        (loop $L7
          (block $B8
            (br_if $B8
              (i32.ne
                (i32.load8_u
                  (i32.add
                    (local.get $p2)
                    (local.get $l4)))
                (local.get $l5)))
            (local.set $l5
              (local.get $l4))
            (local.set $l7
              (i32.const 1))
            (br $B0))
          (br_if $L7
            (i32.ne
              (local.get $p3)
              (local.tee $l4
                (i32.add
                  (local.get $l4)
                  (i32.const 1)))))))
      (local.set $l5
        (local.get $p3)))
    (i32.store offset=4
      (local.get $p0)
      (local.get $l5))
    (i32.store
      (local.get $p0)
      (local.get $l7)))
  (func $_ZN4core5slice6memchr7memrchr17h23f7e4ee8de38ed7E (type $t9) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32)
    (local.set $l4
      (local.get $p3))
    (local.set $l5
      (local.get $p3))
    (block $B0
      (block $B1
        (block $B2
          (block $B3
            (block $B4
              (br_if $B4
                (i32.lt_u
                  (local.get $p3)
                  (local.tee $l6
                    (i32.sub
                      (i32.and
                        (i32.add
                          (local.get $p2)
                          (i32.const 3))
                        (i32.const -4))
                      (local.get $p2)))))
              (local.set $l4
                (i32.sub
                  (local.get $p3)
                  (local.tee $l7
                    (i32.and
                      (i32.sub
                        (local.get $p3)
                        (local.get $l6))
                      (i32.const 7)))))
              (br_if $B3
                (i32.lt_u
                  (local.get $p3)
                  (local.get $l7)))
              (local.set $l5
                (local.get $l6)))
            (local.set $l8
              (i32.sub
                (i32.const 0)
                (local.get $l4)))
            (local.set $l9
              (i32.add
                (local.get $p2)
                (i32.const -1)))
            (local.set $l10
              (i32.and
                (local.get $p1)
                (i32.const 255)))
            (local.set $l6
              (local.get $p3))
            (loop $L5
              (br_if $B2
                (i32.eqz
                  (i32.add
                    (local.get $l8)
                    (local.get $l6))))
              (local.set $l7
                (i32.add
                  (local.get $l9)
                  (local.get $l6)))
              (local.set $l6
                (i32.add
                  (local.get $l6)
                  (i32.const -1)))
              (br_if $L5
                (i32.ne
                  (i32.load8_u
                    (local.get $l7))
                  (local.get $l10)))
              (br $B1)))
          (call $_ZN4core5slice5index26slice_start_index_len_fail17he7b2fe2a6da776eaE
            (local.get $l4)
            (local.get $p3)
            (i32.const 1055540))
          (unreachable))
        (local.set $l7
          (i32.mul
            (i32.and
              (local.get $p1)
              (i32.const 255))
            (i32.const 16843009)))
        (block $B6
          (loop $L7
            (br_if $B6
              (i32.le_u
                (local.tee $l6
                  (local.get $l4))
                (local.get $l5)))
            (local.set $l4
              (i32.add
                (local.get $l6)
                (i32.const -8)))
            (br_if $L7
              (i32.eqz
                (i32.and
                  (i32.or
                    (i32.and
                      (i32.add
                        (local.tee $l9
                          (i32.xor
                            (i32.load
                              (i32.add
                                (local.tee $l8
                                  (i32.add
                                    (local.get $p2)
                                    (local.get $l6)))
                                (i32.const -4)))
                            (local.get $l7)))
                        (i32.const -16843009))
                      (i32.xor
                        (local.get $l9)
                        (i32.const -1)))
                    (i32.and
                      (i32.add
                        (local.tee $l8
                          (i32.xor
                            (i32.load
                              (i32.add
                                (local.get $l8)
                                (i32.const -8)))
                            (local.get $l7)))
                        (i32.const -16843009))
                      (i32.xor
                        (local.get $l8)
                        (i32.const -1))))
                  (i32.const -2139062144))))))
        (block $B8
          (br_if $B8
            (i32.gt_u
              (local.get $l6)
              (local.get $p3)))
          (local.set $l4
            (i32.add
              (local.get $p2)
              (i32.const -1)))
          (local.set $l8
            (i32.and
              (local.get $p1)
              (i32.const 255)))
          (loop $L9
            (block $B10
              (br_if $B10
                (local.get $l6))
              (local.set $l7
                (i32.const 0))
              (br $B0))
            (local.set $l7
              (i32.add
                (local.get $l4)
                (local.get $l6)))
            (local.set $l6
              (i32.add
                (local.get $l6)
                (i32.const -1)))
            (br_if $B1
              (i32.eq
                (i32.load8_u
                  (local.get $l7))
                (local.get $l8)))
            (br $L9)))
        (call $_ZN4core5slice5index24slice_end_index_len_fail17h2d214d250153a7a9E
          (local.get $l6)
          (local.get $p3)
          (i32.const 1055524))
        (unreachable))
      (local.set $l7
        (i32.const 1)))
    (i32.store offset=4
      (local.get $p0)
      (local.get $l6))
    (i32.store
      (local.get $p0)
      (local.get $l7)))
  (func $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i8$GT$3fmt17h836f61cf8c740e2aE (type $t4) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32)
    (global.set $__stack_pointer
      (local.tee $l2
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 128))))
    (local.set $l3
      (i32.load8_u
        (local.get $p0)))
    (local.set $p0
      (i32.const 0))
    (loop $L0
      (i32.store8
        (i32.add
          (i32.add
            (local.get $l2)
            (local.get $p0))
          (i32.const 127))
        (i32.add
          (select
            (i32.const 48)
            (i32.const 55)
            (i32.lt_u
              (local.tee $l4
                (i32.and
                  (local.get $l3)
                  (i32.const 15)))
              (i32.const 10)))
          (local.get $l4)))
      (local.set $p0
        (i32.add
          (local.get $p0)
          (i32.const -1)))
      (local.set $l3
        (i32.shr_u
          (local.tee $l4
            (i32.and
              (local.get $l3)
              (i32.const 255)))
          (i32.const 4)))
      (br_if $L0
        (i32.ge_u
          (local.get $l4)
          (i32.const 16))))
    (block $B1
      (br_if $B1
        (i32.le_u
          (local.tee $l3
            (i32.add
              (local.get $p0)
              (i32.const 128)))
          (i32.const 128)))
      (call $_ZN4core5slice5index26slice_start_index_len_fail17he7b2fe2a6da776eaE
        (local.get $l3)
        (i32.const 128)
        (i32.const 1055264))
      (unreachable))
    (local.set $p0
      (call $_ZN4core3fmt9Formatter12pad_integral17h1706be4d254c2e76E
        (local.get $p1)
        (i32.const 1)
        (i32.const 1055280)
        (i32.const 2)
        (i32.add
          (i32.add
            (local.get $l2)
            (local.get $p0))
          (i32.const 128))
        (i32.sub
          (i32.const 0)
          (local.get $p0))))
    (global.set $__stack_pointer
      (i32.add
        (local.get $l2)
        (i32.const 128)))
    (local.get $p0))
  (func $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i8$GT$3fmt17hcfe531e5bc34686aE (type $t4) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32)
    (global.set $__stack_pointer
      (local.tee $l2
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 128))))
    (local.set $l3
      (i32.load8_u
        (local.get $p0)))
    (local.set $p0
      (i32.const 0))
    (loop $L0
      (i32.store8
        (i32.add
          (i32.add
            (local.get $l2)
            (local.get $p0))
          (i32.const 127))
        (i32.add
          (select
            (i32.const 48)
            (i32.const 87)
            (i32.lt_u
              (local.tee $l4
                (i32.and
                  (local.get $l3)
                  (i32.const 15)))
              (i32.const 10)))
          (local.get $l4)))
      (local.set $p0
        (i32.add
          (local.get $p0)
          (i32.const -1)))
      (local.set $l3
        (i32.shr_u
          (local.tee $l4
            (i32.and
              (local.get $l3)
              (i32.const 255)))
          (i32.const 4)))
      (br_if $L0
        (i32.ge_u
          (local.get $l4)
          (i32.const 16))))
    (block $B1
      (br_if $B1
        (i32.le_u
          (local.tee $l3
            (i32.add
              (local.get $p0)
              (i32.const 128)))
          (i32.const 128)))
      (call $_ZN4core5slice5index26slice_start_index_len_fail17he7b2fe2a6da776eaE
        (local.get $l3)
        (i32.const 128)
        (i32.const 1055264))
      (unreachable))
    (local.set $p0
      (call $_ZN4core3fmt9Formatter12pad_integral17h1706be4d254c2e76E
        (local.get $p1)
        (i32.const 1)
        (i32.const 1055280)
        (i32.const 2)
        (i32.add
          (i32.add
            (local.get $l2)
            (local.get $p0))
          (i32.const 128))
        (i32.sub
          (i32.const 0)
          (local.get $p0))))
    (global.set $__stack_pointer
      (i32.add
        (local.get $l2)
        (i32.const 128)))
    (local.get $p0))
  (func $_ZN4core3fmt3num49_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u8$GT$3fmt17hef7e04efd7e432c9E (type $t4) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32)
    (global.set $__stack_pointer
      (local.tee $l2
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 128))))
    (block $B0
      (block $B1
        (block $B2
          (block $B3
            (block $B4
              (br_if $B4
                (i32.and
                  (local.tee $l3
                    (i32.load offset=28
                      (local.get $p1)))
                  (i32.const 16)))
              (br_if $B3
                (i32.and
                  (local.get $l3)
                  (i32.const 32)))
              (local.set $p0
                (call $_ZN4core3fmt3num3imp7fmt_u6417hfed220e75c2efd61E
                  (i64.load8_u
                    (local.get $p0))
                  (i32.const 1)
                  (local.get $p1)))
              (br $B2))
            (local.set $l3
              (i32.load8_u
                (local.get $p0)))
            (local.set $p0
              (i32.const 0))
            (loop $L5
              (i32.store8
                (i32.add
                  (i32.add
                    (local.get $l2)
                    (local.get $p0))
                  (i32.const 127))
                (i32.add
                  (select
                    (i32.const 48)
                    (i32.const 87)
                    (i32.lt_u
                      (local.tee $l4
                        (i32.and
                          (local.get $l3)
                          (i32.const 15)))
                      (i32.const 10)))
                  (local.get $l4)))
              (local.set $p0
                (i32.add
                  (local.get $p0)
                  (i32.const -1)))
              (local.set $l3
                (i32.shr_u
                  (local.tee $l4
                    (i32.and
                      (local.get $l3)
                      (i32.const 255)))
                  (i32.const 4)))
              (br_if $L5
                (i32.ge_u
                  (local.get $l4)
                  (i32.const 16))))
            (br_if $B1
              (i32.gt_u
                (local.tee $l3
                  (i32.add
                    (local.get $p0)
                    (i32.const 128)))
                (i32.const 128)))
            (local.set $p0
              (call $_ZN4core3fmt9Formatter12pad_integral17h1706be4d254c2e76E
                (local.get $p1)
                (i32.const 1)
                (i32.const 1055280)
                (i32.const 2)
                (i32.add
                  (i32.add
                    (local.get $l2)
                    (local.get $p0))
                  (i32.const 128))
                (i32.sub
                  (i32.const 0)
                  (local.get $p0))))
            (br $B2))
          (local.set $l3
            (i32.load8_u
              (local.get $p0)))
          (local.set $p0
            (i32.const 0))
          (loop $L6
            (i32.store8
              (i32.add
                (i32.add
                  (local.get $l2)
                  (local.get $p0))
                (i32.const 127))
              (i32.add
                (select
                  (i32.const 48)
                  (i32.const 55)
                  (i32.lt_u
                    (local.tee $l4
                      (i32.and
                        (local.get $l3)
                        (i32.const 15)))
                    (i32.const 10)))
                (local.get $l4)))
            (local.set $p0
              (i32.add
                (local.get $p0)
                (i32.const -1)))
            (local.set $l3
              (i32.shr_u
                (local.tee $l4
                  (i32.and
                    (local.get $l3)
                    (i32.const 255)))
                (i32.const 4)))
            (br_if $L6
              (i32.ge_u
                (local.get $l4)
                (i32.const 16))))
          (br_if $B0
            (i32.gt_u
              (local.tee $l3
                (i32.add
                  (local.get $p0)
                  (i32.const 128)))
              (i32.const 128)))
          (local.set $p0
            (call $_ZN4core3fmt9Formatter12pad_integral17h1706be4d254c2e76E
              (local.get $p1)
              (i32.const 1)
              (i32.const 1055280)
              (i32.const 2)
              (i32.add
                (i32.add
                  (local.get $l2)
                  (local.get $p0))
                (i32.const 128))
              (i32.sub
                (i32.const 0)
                (local.get $p0)))))
        (global.set $__stack_pointer
          (i32.add
            (local.get $l2)
            (i32.const 128)))
        (return
          (local.get $p0)))
      (call $_ZN4core5slice5index26slice_start_index_len_fail17he7b2fe2a6da776eaE
        (local.get $l3)
        (i32.const 128)
        (i32.const 1055264))
      (unreachable))
    (call $_ZN4core5slice5index26slice_start_index_len_fail17he7b2fe2a6da776eaE
      (local.get $l3)
      (i32.const 128)
      (i32.const 1055264))
    (unreachable))
  (func $_ZN4core3fmt3num3imp7fmt_u6417hfed220e75c2efd61E (type $t16) (param $p0 i64) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i64) (local $l6 i32) (local $l7 i32) (local $l8 i32)
    (global.set $__stack_pointer
      (local.tee $l3
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 48))))
    (local.set $l4
      (i32.const 39))
    (block $B0
      (block $B1
        (br_if $B1
          (i64.ge_u
            (local.get $p0)
            (i64.const 10000)))
        (local.set $l5
          (local.get $p0))
        (br $B0))
      (local.set $l4
        (i32.const 39))
      (loop $L2
        (i32.store16 align=1
          (i32.add
            (local.tee $l6
              (i32.add
                (i32.add
                  (local.get $l3)
                  (i32.const 9))
                (local.get $l4)))
            (i32.const -4))
          (i32.load16_u align=1
            (i32.add
              (i32.shl
                (local.tee $l8
                  (i32.div_u
                    (i32.and
                      (local.tee $l7
                        (i32.wrap_i64
                          (i64.sub
                            (local.get $p0)
                            (i64.mul
                              (local.tee $l5
                                (i64.div_u
                                  (local.get $p0)
                                  (i64.const 10000)))
                              (i64.const 10000)))))
                      (i32.const 65535))
                    (i32.const 100)))
                (i32.const 1))
              (i32.const 1055282))))
        (i32.store16 align=1
          (i32.add
            (local.get $l6)
            (i32.const -2))
          (i32.load16_u align=1
            (i32.add
              (i32.shl
                (i32.and
                  (i32.sub
                    (local.get $l7)
                    (i32.mul
                      (local.get $l8)
                      (i32.const 100)))
                  (i32.const 65535))
                (i32.const 1))
              (i32.const 1055282))))
        (local.set $l4
          (i32.add
            (local.get $l4)
            (i32.const -4)))
        (local.set $l6
          (i64.gt_u
            (local.get $p0)
            (i64.const 99999999)))
        (local.set $p0
          (local.get $l5))
        (br_if $L2
          (local.get $l6))))
    (block $B3
      (br_if $B3
        (i32.le_u
          (local.tee $l6
            (i32.wrap_i64
              (local.get $l5)))
          (i32.const 99)))
      (i32.store16 align=1
        (i32.add
          (i32.add
            (local.get $l3)
            (i32.const 9))
          (local.tee $l4
            (i32.add
              (local.get $l4)
              (i32.const -2))))
        (i32.load16_u align=1
          (i32.add
            (i32.shl
              (i32.and
                (i32.sub
                  (local.tee $l6
                    (i32.wrap_i64
                      (local.get $l5)))
                  (i32.mul
                    (local.tee $l6
                      (i32.div_u
                        (i32.and
                          (local.get $l6)
                          (i32.const 65535))
                        (i32.const 100)))
                    (i32.const 100)))
                (i32.const 65535))
              (i32.const 1))
            (i32.const 1055282)))))
    (block $B4
      (block $B5
        (br_if $B5
          (i32.lt_u
            (local.get $l6)
            (i32.const 10)))
        (i32.store16 align=1
          (i32.add
            (i32.add
              (local.get $l3)
              (i32.const 9))
            (local.tee $l4
              (i32.add
                (local.get $l4)
                (i32.const -2))))
          (i32.load16_u align=1
            (i32.add
              (i32.shl
                (local.get $l6)
                (i32.const 1))
              (i32.const 1055282))))
        (br $B4))
      (i32.store8
        (i32.add
          (i32.add
            (local.get $l3)
            (i32.const 9))
          (local.tee $l4
            (i32.add
              (local.get $l4)
              (i32.const -1))))
        (i32.add
          (local.get $l6)
          (i32.const 48))))
    (local.set $l4
      (call $_ZN4core3fmt9Formatter12pad_integral17h1706be4d254c2e76E
        (local.get $p2)
        (local.get $p1)
        (i32.const 1054896)
        (i32.const 0)
        (i32.add
          (i32.add
            (local.get $l3)
            (i32.const 9))
          (local.get $l4))
        (i32.sub
          (i32.const 39)
          (local.get $l4))))
    (global.set $__stack_pointer
      (i32.add
        (local.get $l3)
        (i32.const 48)))
    (local.get $l4))
  (func $_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h6bfa1d0d94a71d6dE (type $t4) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32)
    (global.set $__stack_pointer
      (local.tee $l2
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 128))))
    (local.set $p0
      (i32.load
        (local.get $p0)))
    (local.set $l3
      (i32.const 0))
    (loop $L0
      (i32.store8
        (i32.add
          (i32.add
            (local.get $l2)
            (local.get $l3))
          (i32.const 127))
        (i32.add
          (select
            (i32.const 48)
            (i32.const 55)
            (i32.lt_u
              (local.tee $l4
                (i32.and
                  (local.get $p0)
                  (i32.const 15)))
              (i32.const 10)))
          (local.get $l4)))
      (local.set $l3
        (i32.add
          (local.get $l3)
          (i32.const -1)))
      (local.set $l4
        (i32.lt_u
          (local.get $p0)
          (i32.const 16)))
      (local.set $p0
        (i32.shr_u
          (local.get $p0)
          (i32.const 4)))
      (br_if $L0
        (i32.eqz
          (local.get $l4))))
    (block $B1
      (br_if $B1
        (i32.le_u
          (local.tee $p0
            (i32.add
              (local.get $l3)
              (i32.const 128)))
          (i32.const 128)))
      (call $_ZN4core5slice5index26slice_start_index_len_fail17he7b2fe2a6da776eaE
        (local.get $p0)
        (i32.const 128)
        (i32.const 1055264))
      (unreachable))
    (local.set $p0
      (call $_ZN4core3fmt9Formatter12pad_integral17h1706be4d254c2e76E
        (local.get $p1)
        (i32.const 1)
        (i32.const 1055280)
        (i32.const 2)
        (i32.add
          (i32.add
            (local.get $l2)
            (local.get $l3))
          (i32.const 128))
        (i32.sub
          (i32.const 0)
          (local.get $l3))))
    (global.set $__stack_pointer
      (i32.add
        (local.get $l2)
        (i32.const 128)))
    (local.get $p0))
  (func $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h9ba3446b38a435f8E (type $t4) (param $p0 i32) (param $p1 i32) (result i32)
    (call $_ZN4core3fmt3num3imp7fmt_u6417hfed220e75c2efd61E
      (select
        (i64.extend_i32_u
          (local.tee $p0
            (i32.load
              (local.get $p0))))
        (i64.sub
          (i64.const 0)
          (i64.extend_i32_s
            (local.get $p0)))
        (local.tee $p0
          (i32.gt_s
            (local.get $p0)
            (i32.const -1))))
      (local.get $p0)
      (local.get $p1)))
  (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h417a31c5fac84daaE (type $t4) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32)
    (global.set $__stack_pointer
      (local.tee $l2
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 16))))
    (block $B0
      (block $B1
        (br_if $B1
          (i32.load8_u
            (local.tee $l3
              (i32.load
                (local.get $p0)))))
        (local.set $p0
          (call_indirect $T0 (type $t6)
            (i32.load offset=20
              (local.get $p1))
            (i32.const 1055912)
            (i32.const 4)
            (i32.load offset=12
              (i32.load
                (i32.add
                  (local.get $p1)
                  (i32.const 24))))))
        (br $B0))
      (local.set $p0
        (i32.const 1))
      (i32.store
        (local.get $l2)
        (i32.add
          (local.get $l3)
          (i32.const 1)))
      (i32.store8 offset=12
        (local.get $l2)
        (call_indirect $T0 (type $t6)
          (i32.load offset=20
            (local.get $p1))
          (i32.const 1055916)
          (i32.const 4)
          (i32.load offset=12
            (i32.load
              (i32.add
                (local.get $p1)
                (i32.const 24))))))
      (i32.store offset=8
        (local.get $l2)
        (local.get $p1))
      (i32.store8 offset=13
        (local.get $l2)
        (i32.const 0))
      (i32.store offset=4
        (local.get $l2)
        (i32.const 0))
      (local.set $p1
        (call $_ZN4core3fmt8builders10DebugTuple5field17hff85d3edc7dd9fa9E
          (i32.add
            (local.get $l2)
            (i32.const 4))
          (local.get $l2)
          (i32.const 1055220)))
      (local.set $l3
        (i32.load8_u offset=12
          (local.get $l2)))
      (block $B2
        (br_if $B2
          (local.tee $p1
            (i32.load
              (local.get $p1))))
        (local.set $p0
          (i32.ne
            (i32.and
              (local.get $l3)
              (i32.const 255))
            (i32.const 0)))
        (br $B0))
      (br_if $B0
        (i32.and
          (local.get $l3)
          (i32.const 255)))
      (local.set $l3
        (i32.load offset=8
          (local.get $l2)))
      (block $B3
        (br_if $B3
          (i32.ne
            (local.get $p1)
            (i32.const 1)))
        (br_if $B3
          (i32.eqz
            (i32.and
              (i32.load8_u offset=13
                (local.get $l2))
              (i32.const 255))))
        (br_if $B3
          (i32.and
            (i32.load8_u offset=28
              (local.get $l3))
            (i32.const 4)))
        (local.set $p0
          (i32.const 1))
        (br_if $B0
          (call_indirect $T0 (type $t6)
            (i32.load offset=20
              (local.get $l3))
            (i32.const 1055216)
            (i32.const 1)
            (i32.load offset=12
              (i32.load
                (i32.add
                  (local.get $l3)
                  (i32.const 24)))))))
      (local.set $p0
        (call_indirect $T0 (type $t6)
          (i32.load offset=20
            (local.get $l3))
          (i32.const 1054896)
          (i32.const 1)
          (i32.load offset=12
            (i32.load
              (i32.add
                (local.get $l3)
                (i32.const 24)))))))
    (global.set $__stack_pointer
      (i32.add
        (local.get $l2)
        (i32.const 16)))
    (local.get $p0))
  (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h43da34db70ea53a2E (type $t4) (param $p0 i32) (param $p1 i32) (result i32)
    (call $_ZN4core3fmt3num49_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u8$GT$3fmt17hef7e04efd7e432c9E
      (i32.load
        (local.get $p0))
      (local.get $p1)))
  (func $_ZN64_$LT$core..str..error..Utf8Error$u20$as$u20$core..fmt..Debug$GT$3fmt17hf566352a01b5ce7bE (type $t4) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32)
    (global.set $__stack_pointer
      (local.tee $l2
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 16))))
    (i32.store offset=4
      (local.get $l2)
      (i32.add
        (local.get $p0)
        (i32.const 4)))
    (local.set $l3
      (call_indirect $T0 (type $t6)
        (i32.load offset=20
          (local.get $p1))
        (i32.const 1055936)
        (i32.const 9)
        (i32.load offset=12
          (i32.load
            (i32.add
              (local.get $p1)
              (i32.const 24))))))
    (i32.store8 offset=13
      (local.get $l2)
      (i32.const 0))
    (i32.store8 offset=12
      (local.get $l2)
      (local.get $l3))
    (i32.store offset=8
      (local.get $l2)
      (local.get $p1))
    (local.set $l3
      (call $_ZN4core3fmt8builders11DebugStruct5field17he4657b93856c74d5E
        (call $_ZN4core3fmt8builders11DebugStruct5field17he4657b93856c74d5E
          (i32.add
            (local.get $l2)
            (i32.const 8))
          (i32.const 1055945)
          (i32.const 11)
          (local.get $p0)
          (i32.const 1055920))
        (i32.const 1055956)
        (i32.const 9)
        (i32.add
          (local.get $l2)
          (i32.const 4))
        (i32.const 1055968)))
    (local.set $p0
      (i32.load8_u offset=12
        (local.get $l2)))
    (block $B0
      (block $B1
        (br_if $B1
          (i32.load8_u offset=13
            (local.get $l2)))
        (local.set $p1
          (i32.ne
            (i32.and
              (local.get $p0)
              (i32.const 255))
            (i32.const 0)))
        (br $B0))
      (local.set $p1
        (i32.const 1))
      (br_if $B0
        (i32.and
          (local.get $p0)
          (i32.const 255)))
      (block $B2
        (br_if $B2
          (i32.and
            (i32.load8_u offset=28
              (local.tee $p1
                (i32.load
                  (local.get $l3))))
            (i32.const 4)))
        (local.set $p1
          (call_indirect $T0 (type $t6)
            (i32.load offset=20
              (local.get $p1))
            (i32.const 1055211)
            (i32.const 2)
            (i32.load offset=12
              (i32.load offset=24
                (local.get $p1)))))
        (br $B0))
      (local.set $p1
        (call_indirect $T0 (type $t6)
          (i32.load offset=20
            (local.get $p1))
          (i32.const 1055210)
          (i32.const 1)
          (i32.load offset=12
            (i32.load offset=24
              (local.get $p1))))))
    (global.set $__stack_pointer
      (i32.add
        (local.get $l2)
        (i32.const 16)))
    (local.get $p1))
  (func $_ZN69_$LT$core..alloc..layout..LayoutError$u20$as$u20$core..fmt..Debug$GT$3fmt17h374c219f5e29d88bE (type $t4) (param $p0 i32) (param $p1 i32) (result i32)
    (call_indirect $T0 (type $t6)
      (i32.load offset=20
        (local.get $p1))
      (i32.const 1055984)
      (i32.const 11)
      (i32.load offset=12
        (i32.load
          (i32.add
            (local.get $p1)
            (i32.const 24))))))
  (table $T0 78 78 funcref)
  (memory $memory (export "memory") 17)
  (global $__stack_pointer (mut i32) (i32.const 1048576))
  (elem $e0 (i32.const 1) func $_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hccc4fb6254324a13E $_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h55f2299227dc690dE $_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17ha15ac4440a8677acE $_ZN5joins4main17ha474ec42ad7a0c7bE $_ZN70_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17ha854d72a5f1d811cE $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h9ba3446b38a435f8E $_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h775b299b9ce7fbe9E $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h4c79d637da76059fE $_ZN60_$LT$std..io..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17hf8951a5d79bef3c5E $_ZN91_$LT$std..sys_common..backtrace.._print..DisplayBacktrace$u20$as$u20$core..fmt..Display$GT$3fmt17h4fb833ea5e1599c3E $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h64316d6d76eb68feE $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h0c336d50b98ca2bfE $_ZN73_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Display$GT$3fmt17h9ca92e289b06e7c8E $_ZN3std5alloc24default_alloc_error_hook17hd357644e8c327da6E $_ZN4core3ptr120drop_in_place$LT$$LP$$RF$std..ffi..os_str..OsString$C$$RF$core..option..Option$LT$std..ffi..os_str..OsString$GT$$RP$$GT$17h3dd621b5eb8d4d4dE $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17ha36630586f98f407E $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h3c7c9008ec711291E $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h51cb4d06b6ebea7cE $_ZN4core3ptr88drop_in_place$LT$std..io..Write..write_fmt..Adapter$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h57f06e96a6f52cf3E $_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h80dcf8d7aa07b140E $_ZN4core3fmt5Write10write_char17h4a7262c89090d582E $_ZN4core3fmt5Write9write_fmt17h46f3c0b32049693cE $_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h89e956ed77fdd1aaE $_ZN4core3fmt5Write10write_char17h8ddc71bbf0a79198E $_ZN4core3fmt5Write9write_fmt17h20b6c6e353698811E $_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h84a08b0c9833640aE $_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$9write_str17hfd391b928290f606E $_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h240011c34bd1b64eE $_ZN4core3fmt5Write9write_fmt17hfce2690fee613c66E $_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h0248d5eaee56b2f9E $_ZN4core3fmt5Write10write_char17h04f9b27636a7844eE $_ZN4core3fmt5Write9write_fmt17h7ea8854abbacdc78E $_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6a6d34b8305b51a9E $_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$5write17he8a044bd59dee814E $_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$14write_vectored17h3fc6a150a9f58c3cE $_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$17is_write_vectored17h7b644f8512451b45E $_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$5flush17h7d5059d513ec90f2E $_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hd9d3541acb1f1d64E $_ZN3std2io5Write18write_all_vectored17hf742781032f6b341E $_ZN3std2io5Write9write_fmt17h1a4225950d08dbefE $_ZN4core3ptr29drop_in_place$LT$$LP$$RP$$GT$17hd511273b9ffff3e8E $_ZN64_$LT$std..sys..wasi..stdio..Stderr$u20$as$u20$std..io..Write$GT$5write17hf4097102d87f2895E $_ZN64_$LT$std..sys..wasi..stdio..Stderr$u20$as$u20$std..io..Write$GT$14write_vectored17h457c0257437e50a4E $_ZN64_$LT$std..sys..wasi..stdio..Stderr$u20$as$u20$std..io..Write$GT$17is_write_vectored17hf93cf3412519714cE $_ZN64_$LT$std..sys..wasi..stdio..Stderr$u20$as$u20$std..io..Write$GT$5flush17hde3c98b3e4277850E $_ZN3std2io5Write9write_all17h9b107671da0abf1eE $_ZN3std2io5Write18write_all_vectored17h83249f2e17a749ceE $_ZN3std2io5Write9write_fmt17hfe8371fd0b5f892bE $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hbd2f3d82883a57ccE $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h35d7b88db3d025d8E $_ZN99_$LT$std..panicking..begin_panic_handler..StaticStrPayload$u20$as$u20$core..panic..PanicPayload$GT$8take_box17hf927a7595f477ffeE $_ZN99_$LT$std..panicking..begin_panic_handler..StaticStrPayload$u20$as$u20$core..panic..PanicPayload$GT$3get17h3a85570d8e84cc1eE $_ZN4core3ptr77drop_in_place$LT$std..panicking..begin_panic_handler..FormatStringPayload$GT$17hc7e95d8507c6874dE $_ZN102_$LT$std..panicking..begin_panic_handler..FormatStringPayload$u20$as$u20$core..panic..PanicPayload$GT$8take_box17hdd931f59f9f0ae52E $_ZN102_$LT$std..panicking..begin_panic_handler..FormatStringPayload$u20$as$u20$core..panic..PanicPayload$GT$3get17h46514f5c8c9e22deE $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h8d81b619716461bbE $_ZN64_$LT$core..str..error..Utf8Error$u20$as$u20$core..fmt..Debug$GT$3fmt17hf566352a01b5ce7bE $_ZN4core3ptr26drop_in_place$LT$usize$GT$17h5cd244b59f30c5edE $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc5cb3926615a6897E $_ZN4core3ptr37drop_in_place$LT$core..fmt..Error$GT$17hfed29c3f63e1d32aE $_ZN69_$LT$core..alloc..layout..LayoutError$u20$as$u20$core..fmt..Debug$GT$3fmt17h374c219f5e29d88bE $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h0b1089beb23b0d2aE $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h8f10bdac25d5749aE $_ZN4core3ops8function6FnOnce9call_once17h0707ebdb78fd3aefE $_ZN63_$LT$core..cell..BorrowMutError$u20$as$u20$core..fmt..Debug$GT$3fmt17h3a038feae060e1e1E $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h680182318a1eb4faE $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hd03777854f5d8623E $_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17h10cf4083cd0de1b3E $_ZN4core3ptr37drop_in_place$LT$core..fmt..Error$GT$17hd6506f89a6deb5baE $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h3f8030dbf89bab79E $_ZN4core3ptr102drop_in_place$LT$$RF$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$u8$GT$$GT$$GT$17h8094d3b132b454a3E $_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hc2e14531b5a9e2d0E $_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$10write_char17h7f9bf6bd361198b7E $_ZN4core3fmt5Write9write_fmt17h59f34f24a826850fE $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h43da34db70ea53a2E $_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17hc26f2ec4db2e95c3E $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h417a31c5fac84daaE)
  (data $.rodata (i32.const 1048576) "\01\00\00\00\04\00\00\00\04\00\00\00\02\00\00\00\03\00\00\00\03\00\00\00invalid args\18\00\10\00\0c\00\00\00/rustc/a28077b28a02b92985b3a3faecf92813155f1ea1/library/core/src/fmt/mod.rs\00,\00\10\00K\00\00\00?\01\00\00\0d\00\00\00Bonjour\0a\88\00\10\00\08\00\00\00()\00\00called `Option::unwrap()` on a `None` value/rustc/a28077b28a02b92985b3a3faecf92813155f1ea1/library/core/src/cell/once.rsreentrant init\00\00\14\01\10\00\0e\00\00\00\c7\00\10\00M\00\00\00\bc\00\00\00\09\00\00\00\00\00\00\00\0f\00\00\00\04\00\00\00\04\00\00\00\10\00\00\00internal error: entered unreachable code/rustc/a28077b28a02b92985b3a3faecf92813155f1ea1/library/alloc/src/vec/mod.rsx\01\10\00L\00\00\00\fe\07\00\00$\00\00\00Ok\00\00\0f\00\00\00\04\00\00\00\04\00\00\00\11\00\00\00Err\00\0f\00\00\00\04\00\00\00\04\00\00\00\12\00\00\00\13\00\00\00\0c\00\00\00\04\00\00\00\14\00\00\00\15\00\00\00\16\00\00\00\13\00\00\00\0c\00\00\00\04\00\00\00\17\00\00\00\18\00\00\00\19\00\00\00\1a\00\00\00\0c\00\00\00\04\00\00\00\1b\00\00\00\1c\00\00\00\1d\00\00\00\13\00\00\00\0c\00\00\00\04\00\00\00\1e\00\00\00\1f\00\00\00 \00\00\00mainfatal runtime error: unwrap failed: CString::new(\22main\22) = \0a`\02\10\00;\00\00\00\9b\02\10\00\01\00\00\00library/std/src/rt.rs\00\00\00\ac\02\10\00\15\00\00\00r\00\00\00\0d\00\00\00library/std/src/thread/mod.rsfailed to generate unique thread ID: bitspace exhausted\f1\02\10\007\00\00\00\d4\02\10\00\1d\00\00\00\9a\04\00\00\0d\00\00\00RUST_BACKTRACEcalled `Result::unwrap()` on an `Err` valuefailed to write the buffered data\00\00y\03\10\00!\00\00\00\17\00\00\00\9c\00\10\00\00\00\00\00library/std/src/io/buffered/linewritershim.rsassertion failed: mid <= self.len()\b0\03\10\00-\00\00\00\01\01\00\00)\00\00\00entity not foundpermission deniedconnection refusedconnection resethost unreachablenetwork unreachableconnection abortednot connectedaddress in useaddress not availablenetwork downbroken pipeentity already existsoperation would blocknot a directoryis a directorydirectory not emptyread-only filesystem or storage mediumfilesystem loop or indirection limit (e.g. symlink loop)stale network file handleinvalid input parameterinvalid datatimed outwrite zerono storage spaceseek on unseekable filefilesystem quota exceededfile too largeresource busyexecutable file busydeadlockcross-device link or renametoo many linksinvalid filenameargument list too longoperation interruptedunsupportedunexpected end of fileout of memoryother erroruncategorized error\00\1b\00 (os error )\9c\00\10\00\00\00\00\00\00\07\10\00\0b\00\00\00\0b\07\10\00\01\00\00\00library/std/src/io/stdio.rs\00$\07\10\00\1b\00\00\00}\02\00\00\13\00\00\00$\07\10\00\1b\00\00\00\ea\02\00\00\14\00\00\00failed printing to : \00\00\00`\07\10\00\13\00\00\00s\07\10\00\02\00\00\00$\07\10\00\1b\00\00\00\fb\03\00\00\09\00\00\00stdoutlibrary/std/src/io/mod.rs\00\9e\07\10\00\19\00\00\00t\05\00\00 \00\00\00advancing io slices beyond their length\00\c8\07\10\00'\00\00\00\9e\07\10\00\19\00\00\00v\05\00\00\0d\00\00\00advancing IoSlice beyond its length\00\08\08\10\00#\00\00\00library/std/src/sys/wasi/io.rs\00\004\08\10\00\1e\00\00\00\17\00\00\00\0d\00\00\00failed to write whole bufferd\08\10\00\1c\00\00\00\17\00\00\00\9e\07\10\00\19\00\00\00^\06\00\00$\00\00\00formatter error\00\9c\08\10\00\0f\00\00\00(\00\00\00library/std/src/panic.rs\b8\08\10\00\18\00\00\00\f5\00\00\00\12\00\00\00fullcannot recursively acquire mutex\e4\08\10\00 \00\00\00library/std/src/sys/wasi/../unsupported/locks/mutex.rs\00\00\0c\09\10\006\00\00\00\14\00\00\00\09\00\00\00library/std/src/sync/once.rsT\09\10\00\1c\00\00\00\95\00\00\002\00\00\00T\09\10\00\1c\00\00\00\d0\00\00\00\14\00\00\00T\09\10\00\1c\00\00\00\d0\00\00\001\00\00\00lock count overflow in reentrant mutexlibrary/std/src/sync/remutex.rs\00\00\00\c6\09\10\00\1f\00\00\00\91\00\00\00\0e\00\00\00file name contained an unexpected NUL byte\00\00\f8\09\10\00*\00\00\00\14\00\00\00\02\00\00\00$\0a\10\00stack backtrace:\0a\00\00\008\0a\10\00\11\00\00\00note: Some details are omitted, run with `RUST_BACKTRACE=full` for a verbose backtrace.\0aT\0a\10\00X\00\00\00fatal runtime error: assertion failed: thread_info.stack_guard.get().is_none() && thread_info.thread.get().is_none()\0a\00\00\00\b4\0a\10\00u\00\00\00memory allocation of  bytes failed\0a\004\0b\10\00\15\00\00\00I\0b\10\00\0e\00\00\00 bytes failed\00\00\004\0b\10\00\15\00\00\00h\0b\10\00\0d\00\00\00library/std/src/alloc.rs\88\0b\10\00\18\00\00\00b\01\00\00\09\00\00\00library/std/src/panicking.rs\b0\0b\10\00\1c\00\00\00\fa\00\00\00$\00\00\00Box<dyn Any><unnamed>\00\00\00!\00\00\00\0c\00\00\00\04\00\00\00\22\00\00\00#\00\00\00$\00\00\00%\00\00\00&\00\00\00'\00\00\00(\00\00\00)\00\00\00\00\00\00\00\01\00\00\00*\00\00\00+\00\00\00,\00\00\00-\00\00\00.\00\00\00/\00\00\000\00\00\00thread '' panicked at :\0aD\0c\10\00\08\00\00\00L\0c\10\00\0e\00\00\00Z\0c\10\00\02\00\00\00\9b\02\10\00\01\00\00\00note: run with `RUST_BACKTRACE=1` environment variable to display a backtrace\0a\00\00|\0c\10\00N\00\00\00\b0\0b\10\00\1c\00\00\00S\02\00\00\1f\00\00\00\b0\0b\10\00\1c\00\00\00T\02\00\00\1e\00\00\00\1a\00\00\00\0c\00\00\00\04\00\00\001\00\00\00\0f\00\00\00\08\00\00\00\04\00\00\002\00\00\00\0f\00\00\00\08\00\00\00\04\00\00\003\00\00\004\00\00\005\00\00\00\10\00\00\00\04\00\00\006\00\00\007\00\00\00)\00\00\00\00\00\00\00\01\00\00\008\00\00\00\0apanicked after panic::always_abort(), aborting.\0a\00\00\00\9c\00\10\00\00\00\00\00L\0d\10\001\00\00\00thread panicked while processing panic. aborting.\0a\00\00\90\0d\10\002\00\00\00thread caused non-unwinding panic. aborting.\0a\00\00\00\cc\0d\10\00-\00\00\00fatal runtime error: failed to initiate panic, error \00\00\00\04\0e\10\005\00\00\00\9b\02\10\00\01\00\00\00\0f\00\00\00\08\00\00\00\04\00\00\009\00\00\00library/std/src/sys/wasi/os.rs\00\00\5c\0e\10\00\1e\00\00\00C\00\00\006\00\00\00strerror_r failure\00\00\8c\0e\10\00\12\00\00\00\5c\0e\10\00\1e\00\00\00A\00\00\00\0d\00\00\00\08\00fatal runtime error: rwlock locked for writing\0a\00\00\00\ba\0e\10\00/\00\00\00Once instance has previously been poisoned\00\00\f4\0e\10\00*\00\00\00one-time initialization may not be performed recursively(\0f\10\008\00\00\00\10\00\00\00\11\00\00\00\12\00\00\00\10\00\00\00\10\00\00\00\13\00\00\00\12\00\00\00\0d\00\00\00\0e\00\00\00\15\00\00\00\0c\00\00\00\0b\00\00\00\15\00\00\00\15\00\00\00\0f\00\00\00\0e\00\00\00\13\00\00\00&\00\00\008\00\00\00\19\00\00\00\17\00\00\00\0c\00\00\00\09\00\00\00\0a\00\00\00\10\00\00\00\17\00\00\00\19\00\00\00\0e\00\00\00\0d\00\00\00\14\00\00\00\08\00\00\00\1b\00\00\00\0e\00\00\00\10\00\00\00\16\00\00\00\15\00\00\00\0b\00\00\00\16\00\00\00\0d\00\00\00\0b\00\00\00\13\00\00\00\10\04\10\00 \04\10\001\04\10\00C\04\10\00S\04\10\00c\04\10\00v\04\10\00\88\04\10\00\95\04\10\00\a3\04\10\00\b8\04\10\00\c4\04\10\00\cf\04\10\00\e4\04\10\00\f9\04\10\00\08\05\10\00\16\05\10\00)\05\10\00O\05\10\00\87\05\10\00\a0\05\10\00\b7\05\10\00\c3\05\10\00\cc\05\10\00\d6\05\10\00\e6\05\10\00\fd\05\10\00\16\06\10\00$\06\10\001\06\10\00E\06\10\00M\06\10\00h\06\10\00v\06\10\00\86\06\10\00\9c\06\10\00\b1\06\10\00\bc\06\10\00\d2\06\10\00\df\06\10\00\ea\06\10\00/\00Success\00Illegal byte sequence\00Domain error\00Result not representable\00Not a tty\00Permission denied\00Operation not permitted\00No such file or directory\00No such process\00File exists\00Value too large for data type\00No space left on device\00Out of memory\00Resource busy\00Interrupted system call\00Resource temporarily unavailable\00Invalid seek\00Cross-device link\00Read-only file system\00Directory not empty\00Connection reset by peer\00Operation timed out\00Connection refused\00Host is unreachable\00Address in use\00Broken pipe\00I/O error\00No such device or address\00No such device\00Not a directory\00Is a directory\00Text file busy\00Exec format error\00Invalid argument\00Argument list too long\00Symbolic link loop\00Filename too long\00Too many open files in system\00No file descriptors available\00Bad file descriptor\00No child process\00Bad address\00File too large\00Too many links\00No locks available\00Resource deadlock would occur\00State not recoverable\00Previous owner died\00Operation canceled\00Function not implemented\00No message of desired type\00Identifier removed\00Link has been severed\00Protocol error\00Bad message\00Not a socket\00Destination address required\00Message too large\00Protocol wrong type for socket\00Protocol not available\00Protocol not supported\00Not supported\00Address family not supported by protocol\00Address not available\00Network is down\00Network unreachable\00Connection reset by network\00Connection aborted\00No buffer space available\00Socket is connected\00Socket not connected\00Operation already in progress\00Operation in progress\00Stale file handle\00Quota exceeded\00Multihop attempted\00Capabilities insufficient\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00u\02N\00\d6\01\e2\04\b9\04\18\01\8e\05\ed\02\16\04\f2\00\97\03\01\038\05\af\01\82\01O\03/\04\1e\00\d4\05\a2\00\12\03\1e\03\c2\01\de\03\08\00\ac\05\00\01d\02\f1\01e\054\02\8c\02\cf\02-\03L\04\e3\05\9f\02\f8\04\1c\05\08\05\b1\02K\05\15\02x\00R\02<\03\f1\03\e4\00\c3\03}\04\cc\00\aa\03y\05$\02n\01m\03\22\04\ab\04D\00\fb\01\ae\00\83\03`\00\e5\01\07\04\94\04^\04+\00X\019\01\92\00\c2\05\9b\01C\02F\01\f6\05\00\00:\00\00\00\04\00\00\00\04\00\00\00;\00\00\00library/alloc/src/raw_vec.rscapacity overflow\00\00\00\98\17\10\00\11\00\00\00|\17\10\00\1c\00\00\00\16\02\00\00\05\00\00\00called `Option::unwrap()` on a `None` valuelibrary/alloc/src/ffi/c_str.rs\00\00\00\ef\17\10\00\1e\00\00\00\1b\01\00\007\00\00\00called `Result::unwrap()` on an `Err` value\00<\00\00\00\00\00\00\00\01\00\00\00=\00\00\00library/alloc/src/sync.rs\00\00\00\5c\18\10\00\19\00\00\00n\01\00\002\00\00\00NulError:\00\00\00\04\00\00\00\04\00\00\00>\00\00\00:\00\00\00\04\00\00\00\04\00\00\00?\00\00\00)BorrowMutErroralready borrowed: \00\00\00\bf\18\10\00\12\00\00\00\b0\18\10\00\00\00\00\00:[\00\00\b0\18\10\00\00\00\00\00\e4\18\10\00\01\00\00\00\e4\18\10\00\01\00\00\00panicked at :\0a\00\00E\00\00\00\00\00\00\00\01\00\00\00F\00\00\00==!=matchesassertion `left  right` failed\0a  left: \0a right: \00+\19\10\00\10\00\00\00;\19\10\00\17\00\00\00R\19\10\00\09\00\00\00 right` failed: \0a  left: \00\00\00+\19\10\00\10\00\00\00t\19\10\00\10\00\00\00\84\19\10\00\09\00\00\00R\19\10\00\09\00\00\00: \00\00\b0\18\10\00\00\00\00\00\b0\19\10\00\02\00\00\00G\00\00\00\0c\00\00\00\04\00\00\00H\00\00\00I\00\00\00J\00\00\00     { ,  {\0a,\0a} }((\0a,\0a\00\00G\00\00\00\04\00\00\00\04\00\00\00K\00\00\00]library/core/src/fmt/num.rs\05\1a\10\00\1b\00\00\00i\00\00\00\17\00\00\000x00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899falsetruelibrary/core/src/slice/memchr.rs\00\03\1b\10\00 \00\00\00\ad\00\00\00\09\00\00\00\03\1b\10\00 \00\00\00\91\00\00\00\1e\00\00\00range start index  out of range for slice of length D\1b\10\00\12\00\00\00V\1b\10\00\22\00\00\00range end index \88\1b\10\00\10\00\00\00V\1b\10\00\22\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\04\04\04\04\04\00\00\00\00\00\00\00\00\00\00\00NoneSomeG\00\00\00\04\00\00\00\04\00\00\00L\00\00\00Utf8Errorvalid_up_toerror_len\00\00\00G\00\00\00\04\00\00\00\04\00\00\00M\00\00\00LayoutError")
  (data $.data (i32.const 1055996) "\01\00\00\00\ff\ff\ff\ff\b0\10\10\00"))
