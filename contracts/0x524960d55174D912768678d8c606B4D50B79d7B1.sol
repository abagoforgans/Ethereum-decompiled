contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 607]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function transfer() {
    call 0x96a65609a7b84e8842732deb08f56c3e21ac6f8a with:
       funct Mask(32, 224, 'register') >> 224
         gas gas_remaining - 25710 wei
        args Mask(224, 0, 'register'), 'CentraToken'
    call 0x96a65609a7b84e8842732deb08f56c3e21ac6f8a with:
       funct Mask(32, 224, sha3('transfer(address,uint256)')) >> 224
         gas gas_remaining - 25710 wei
        args 0xaa27f8c1160886aacba64b2319d8d5469ef2af79, 1
    if ext_call.success:
        return 1
    else:
        return 0
}



}
