contract main {




// =====================  Runtime code  =====================


function kill() {
    selfdestruct(msg.sender)
}

function sub_4bc85c18(?) {
    call arg1 with:
       funct Mask(32, 224, sha3('selfdestruct(address)')) >> 224
         gas gas_remaining wei
        args arg2
}

function _fallback() payable {
    revert
}



}
