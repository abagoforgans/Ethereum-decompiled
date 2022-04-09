contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = 0x48d466b7c0d32b61e8a82cd2bcf060f7c3f966df
    stor1 = 0x6810e776880c02933d47db1b9fc05908e5386b96
    return code.data[200 len 739]
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
