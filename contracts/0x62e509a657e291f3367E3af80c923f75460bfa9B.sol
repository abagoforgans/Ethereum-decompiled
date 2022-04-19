contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[57 len 671]
}



// =====================  Runtime code  =====================


address owner;

function owner() {
    return owner
}

function kill() {
    require owner == msg.sender
    selfdestruct(owner)
}

function _fallback() payable {
    if eth.balance(msg.sender) >= msg.value:
        call msg.sender with:
           funct Mask(32, 224, sha3(512970598441)) >> 224
             gas 150000 wei
}

function gimme() payable {
    call 0x6f6deb5db0c4994a8283a01d6cfeeb27fc3bbe9c with:
       funct Mask(32, 224, sha3(512970598441)) >> 224
       value 10^18 wei
         gas gas_remaining - 34050 wei
}

function sub_082bd0b3(?) payable {
    call 0x6f6deb5db0c4994a8283a01d6cfeeb27fc3bbe9c with:
       funct Mask(32, 224, sha3('playRandom(address)')) >> 224
       value 10^18 wei
         gas gas_remaining - 34050 wei
        args this.address
}



}
