contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[153 len 709]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
    revert
}

function get() {
    require msg.sender == stor0
    require ext_code.size(stor1)
    call stor1.balanceOf(address rg1) with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args address(this.address), msg.sender, ext_call.return_data[0]
    require ext_call.success
}



}
