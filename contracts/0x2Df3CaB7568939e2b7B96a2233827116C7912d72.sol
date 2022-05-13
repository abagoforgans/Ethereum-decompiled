contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = 0xff18a0e035b7d835d47189a000547f041a57f5d0
    require not msg.value
    return code.data[68 len 1451]
}



// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function sub_169db7dc(?) {
    require ext_code.size(stor0)
    call stor0.0x6be0b72d with:
         gas gas_remaining wei
        args 0, 40, 50, 25, 0, 0, 10, 10, 10^6, 1
    require ext_call.success
    require ext_code.size(stor0)
    call stor0.0x6be0b72d with:
         gas gas_remaining wei
        args 0, 41, 100, 50, 0, 0, 1, 25, 500000, 1
    require ext_call.success
    require ext_code.size(stor0)
    call stor0.0x6be0b72d with:
         gas gas_remaining wei
        args 0, 42, 0, 0, 10^16, 0, 200, 10, 5 * 10^6, 1
    require ext_call.success
    require ext_code.size(stor0)
    call stor0.0x6be0b72d with:
         gas gas_remaining wei
        args 0, 43, 250, 125, 0, 0, 25, 1, 2 * 10^6, 1
    require ext_call.success
    require ext_code.size(stor0)
    call stor0.0x6be0b72d with:
         gas gas_remaining wei
        args 0, 44, 500, 250, 0, 0, 20, 40, 500000, 1
    require ext_call.success
    require ext_code.size(stor0)
    call stor0.0x6be0b72d with:
         gas gas_remaining wei
        args 0, 45, 0, 2500, 2 * 10^16, 0, 0, 0, 10 * 10^6, 1
    require ext_call.success
    require ext_code.size(stor0)
    call stor0.0x6be0b72d with:
         gas gas_remaining wei
        args 0, 46, 750, 375, 0, 0, 40, 20, 3 * 10^6, 1
    require ext_call.success
    require ext_code.size(stor0)
    call stor0.0x6be0b72d with:
         gas gas_remaining wei
        args 0, 47, 0, 0, 10 * 10^18, 0, 20000, 10000, 10^9, 0
    require ext_call.success
}



}
