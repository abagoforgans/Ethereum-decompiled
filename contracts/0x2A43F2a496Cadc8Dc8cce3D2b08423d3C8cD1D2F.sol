contract main {


// =======================  Init code  ======================


function _fallback() {
    require ext_code.size(address(code.data[502 len 32]))
    call address(code.data[502 len 32]).0x70a08231 with:
         gas gas_remaining - 710 wei
        args 0
    require ext_call.success
    require ext_code.size(address(code.data[502 len 32]))
    call address(code.data[502 len 32]).0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(code.data[534 len 32]), ext_call.return_data[0]
    require ext_call.success
    return code.data[448 len 54]
}



// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}



}
