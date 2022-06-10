contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() payable {
    stor0 = 0x6795cf8eb25585eadc356ae32ac6641016c550f2
    stor1 = 0x744d70fdbe2ba4cf95131626614a1763df805b9e
    return code.data[146 len 602]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() {
    require msg.sender == stor0
    require ext_code.size(stor1)
    call stor1.balanceOf(address arg1) with:
         gas gas_remaining - 50 wei
        args this.address
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining - 50 wei
        args stor0, ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
}

function sweep(address arg1) {
    require msg.sender == stor0
    require ext_code.size(arg1)
    call arg1.balanceOf(address arg1) with:
         gas gas_remaining - 50 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining - 50 wei
        args stor0, ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
}



}
