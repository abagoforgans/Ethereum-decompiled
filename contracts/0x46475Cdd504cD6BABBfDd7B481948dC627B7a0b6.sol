contract main {




// =====================  Runtime code  =====================


function test() {
    require ext_code.size(0x41871c888c683051d60cad924a44bce30f02e335)
    call 0x41871c888c683051d60cad924a44bce30f02e335.0x2e1a7d4d with:
         gas gas_remaining wei
        args 10^13
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    require ext_code.size(0x41871c888c683051d60cad924a44bce30f02e335)
    call 0x41871c888c683051d60cad924a44bce30f02e335.0x2e1a7d4d with:
         gas gas_remaining wei
        args 10^13
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
