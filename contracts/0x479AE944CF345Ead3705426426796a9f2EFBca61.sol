contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = 0x262e83a24d2a5bad0c145e91026adbb36078afb5
    require not msg.value
    return code.data[66 len 462]
}



// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function supportsInterface(bytes4 arg1) {
    return (Mask(32, 224, arg1) == 0x3b3b57de00000000000000000000000000000000000000000000000000000000)
}

function addr(bytes32 arg1) {
    require ext_code.size(stor0)
    call stor0.0xfb8ad6ff with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[12 len 20]
}



}
