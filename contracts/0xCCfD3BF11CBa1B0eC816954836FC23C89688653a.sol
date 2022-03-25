contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() payable {
    stor0 = 0xab8c0420ad39a5727fd43c917679e8822bff1c51
    stor1 = 0xaec2e87e0a235266d9c5adc9deb4b2e29b54d009
    return code.data[146 len 602]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() {
    require msg.sender == stor0
    require ext_code.size(stor1)
    call stor1.balanceOf(address rg1) with:
         gas gas_remaining - 50 wei
        args this.address
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args stor0, ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
}

function sweep(address arg1) {
    require msg.sender == stor0
    require ext_code.size(arg1)
    call arg1.balanceOf(address rg1) with:
         gas gas_remaining - 50 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args stor0, ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
}



}
