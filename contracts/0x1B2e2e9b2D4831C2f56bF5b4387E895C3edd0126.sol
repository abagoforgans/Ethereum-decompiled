contract main {




// =====================  Runtime code  =====================


address stor0;

function PayMain(address arg1) {
    stor0 = arg1
}

function _fallback() payable {
    require ext_code.size(stor0)
    call stor0.0x7e62ef64 with:
       value msg.value wei
         gas gas_remaining wei
        args 10^12, 158892323232
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
