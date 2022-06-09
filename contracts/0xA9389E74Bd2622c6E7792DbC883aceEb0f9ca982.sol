contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
address stor3;
address stor4;

function _fallback() payable {
    stor0 = 0x55cd43b6d6d0232abfa21667e61acd96b09b26d5
    stor1 = 0x5d00d312e171be5342067c09bae883f9bcb2003b
    stor2 = 0x95daaab98046846bf4b2853e23cba236fa394a31
    stor3 = stor1
    stor4 = stor2
    require not msg.value
    return code.data[482 len 1408]
}



// =====================  Runtime code  =====================


address stor0;
address stor3;
address stor4;

function _fallback() payable {
  stop
}

function sub_12fe9c8e(?) {
    require ext_code.size(stor4)
    call stor4.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args stor0, arg1
    require ext_call.success
}

function sub_19fa22cf(?) {
    require ext_code.size(stor3)
    call stor3.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args stor0, arg1
    require ext_call.success
}

function payService(uint256 arg1, uint32 arg2, string arg3, uint64 arg4, uint64 arg5, uint64 arg6, uint64 arg7, uint64 arg8, uint64 arg9) {
    require ext_code.size(stor4)
    call stor4.0xf8788382 with:
         gas gas_remaining - 710 wei
        args arg1, arg2 << 224, Array(len=arg3.length, data=arg3[all]), arg4 << 192, arg5 << 192, arg6 << 192, arg7 << 192, arg8 << 192, arg9 << 192
    require ext_call.success
}



}
