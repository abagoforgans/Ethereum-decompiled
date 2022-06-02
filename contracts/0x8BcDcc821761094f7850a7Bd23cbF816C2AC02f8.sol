contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function transfer() {
    call 0x96a65609a7b84e8842732deb08f56c3e21ac6f8a with:
       funct Mask(32, 224, sha3('transfer(address,uint256)')) >> 224
         gas gas_remaining wei
        args 0xe68fc89a36ecfc592ee7f4aef299877ffacaeaec, 1
    if ext_call.success:
        return 1
    else:
        return 0
}



}
