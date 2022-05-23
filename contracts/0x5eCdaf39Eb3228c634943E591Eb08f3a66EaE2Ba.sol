contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function delegatecall_selfdestruct(address arg1) {
    delegate arg1 with:
       funct (Mask(32, 224, sha3('address)')) >> 224)
         gas gas_remaining wei
        args this.address
    return bool(delegate.return_code)
}



}
