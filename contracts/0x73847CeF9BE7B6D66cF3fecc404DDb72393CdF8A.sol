contract main {


// =======================  Init code  ======================


function _fallback() {
    require ext_code.size(0x6810e776880c02933d47db1b9fc05908e5386b96)
    call 0x6810e776880c02933d47db1b9fc05908e5386b96.0x70a08231 with:
         gas gas_remaining - 710 wei
        args 0
    require ext_call.success
    require ext_code.size(0x6810e776880c02933d47db1b9fc05908e5386b96)
    call 0x6810e776880c02933d47db1b9fc05908e5386b96.approve(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args 0x9d6418dda3ce01d31922d0235877c1fbc58ed969, ext_call.return_data[0]
    require ext_call.success
    return code.data[449 len 54]
}



// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}



}
