contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = code.data[558 len 20]
    return code.data[123 len 423]
}



// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function balanceOf(address arg1) {
    require ext_code.size(stor0)
    call stor0.0x70a08231 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}



}
