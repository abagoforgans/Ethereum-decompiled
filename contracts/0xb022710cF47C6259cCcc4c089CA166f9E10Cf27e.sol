contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = 0x55340fc7c3dfbb1a3886605c25e83e6b7fb93d8
    return code.data[117 len 848]
}



// =====================  Runtime code  =====================


address tokenAddress;

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function sub_2b823efe(?) {
    require ext_code.size(tokenAddress)
    call tokenAddress.0xcae9ca51 with:
         gas gas_remaining - 710 wei
        args 0, 0, 2567, 96, 0, mem[228]
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining - 710 wei
        args 0x32ac627f02ba65dbfa40d6d63d3e6a7bd66292a5, 0xcb2d4dfead8b9e59b0f776118727e69e9f67f6d3, 2567
    require ext_call.success
    return 0
}



}
