contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = 0x2815169a1a708e64ed2ee876d3d574a6a0504276
    require not msg.value
    return code.data[66 len 282]
}



// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function sub_c01f9aba(?) {
    call stor0 with:
       funct Mask(32, 224, sha3('RandomSignature()')) >> 224
         gas gas_remaining - 25710 wei
}



}
