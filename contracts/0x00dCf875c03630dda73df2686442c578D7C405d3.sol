contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = 0xead6be34ce315940264519f250d8160f369fa5cd
    stor1 = 0xe41d2489571d322189246dafa5ebde1f4699f498
    return code.data[200 len 739]
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
