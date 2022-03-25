contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() payable {
    stor0 = 0xab8c0420ad39a5727fd43c917679e8822bff1c51
    stor1 = 0xaec2e87e0a235266d9c5adc9deb4b2e29b54d009
    return code.data[146 len 483]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
    require not msg.value
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining - 50 wei
        args this.address
    require ext_call.success
    if ext_call.return_data[0] <= 0:
    require not msg.value
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining - 50 wei
        args stor0, ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
}



}
