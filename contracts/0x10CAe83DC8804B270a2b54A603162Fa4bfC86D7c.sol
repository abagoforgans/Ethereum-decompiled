contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = code.data[707 len 20]
    return code.data[126 len 569]
}



// =====================  Runtime code  =====================


address contractAAddress;

function contractA() {
    return contractAAddress
}

function _fallback() payable {
    revert
}

function sub_2b823efe(?) {
    call contractAAddress with:
       funct Mask(32, 224, sha3('mintToken(address, uint)')) >> 224
         gas gas_remaining - 25710 wei
        args 0x32ac627f02ba65dbfa40d6d63d3e6a7bd66292a5, 256
    return bool(ext_call.success)
}



}
