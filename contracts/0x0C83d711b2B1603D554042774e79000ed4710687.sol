contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() payable {
    stor1 = 0x6f6deb5db0c4994a8283a01d6cfeeb27fc3bbe9c
    require not msg.value
    stor0 = msg.sender
    return code.data[95 len 703]
}



// =====================  Runtime code  =====================


address owner;
address lottoAddress;

function owner() {
    return owner
}

function lotto() {
    return lottoAddress
}

function kill() {
    require owner == msg.sender
    selfdestruct(owner)
}

function gimme() payable {
    call lottoAddress with:
       funct Mask(32, 224, sha3(512970598441)) >> 224
       value 10^15 wei
         gas 150000 wei
}

function _fallback() payable {
    if eth.balance(lottoAddress) >= msg.value:
        call lottoAddress with:
           funct Mask(32, 224, sha3(512970598441)) >> 224
             gas 150000 wei
}

function sub_5cecee36(?) payable {
    call lottoAddress with:
       funct Mask(32, 224, sha3('playRandom(address)')) >> 224
       value arg1 wei
         gas 150000 wei
        args this.address
}



}
