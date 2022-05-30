contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() {
    stor0 = msg.sender
}

function B() payable {
    call stor1 with:
       funct Mask(32, 224, sha3('getTokens()')) >> 224
         gas gas_remaining wei
}

function C(address arg1) payable {
    call arg1 with:
       funct Mask(32, 224, sha3('B()')) >> 224
         gas gas_remaining wei
}



}
