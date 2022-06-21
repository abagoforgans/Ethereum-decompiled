contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function test() {
    require ext_code.size(stor0)
    call stor0.0x27aa6398 with:
         gas gas_remaining wei
        args 0xb6a128fb3bc5a8807d72a0d0ce76b4a3b59f86a6, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}



}
