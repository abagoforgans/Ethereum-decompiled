contract main {




// =====================  Runtime code  =====================


function delegatecall_selfdestruct(address arg1) {
    delegate arg1 with:
       funct (Mask(32, 224, sha3('selfdestruct(0x094f2cdef86e77fd6', '6ea9246ce8f2f653453a5ce)')) >> 224)
         gas gas_remaining wei
        args this.address
    return bool(delegate.return_code)
}

function _fallback() payable {
    revert
}



}
