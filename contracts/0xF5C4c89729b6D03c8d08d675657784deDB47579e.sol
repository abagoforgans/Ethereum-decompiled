contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;

function _fallback() payable {
    stor0 = 0xab8c0420ad39a5727fd43c917679e8822bff1c51
    stor1 = 0xaec2e87e0a235266d9c5adc9deb4b2e29b54d009
    stor2 = stor1
    return code.data[223 len 1070]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;

function sub_bc035a02(?) {
    require msg.sender == stor0
    require arg1 != stor1
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 50 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 50 wei
        args address(this.address), ext_call.return_data[0]
    require ext_call.success
}

function _fallback() {
    require ext_code.size(stor2)
    call stor2.0x70a08231 with:
         gas gas_remaining - 50 wei
        args this.address
    require ext_call.success
    if ext_call.return_data[0] <= 0:
    require not msg.value
    require ext_code.size(stor2)
    call stor2.0xa9059cbb with:
         gas gas_remaining - 50 wei
        args stor0, ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
}



}
