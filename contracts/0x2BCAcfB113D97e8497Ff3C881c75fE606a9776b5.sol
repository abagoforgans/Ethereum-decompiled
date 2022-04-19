contract main {


// =======================  Init code  ======================


address stor1;

function _fallback() {
    stor1 = msg.sender
    return code.data[57 len 871]
}



// =====================  Runtime code  =====================


address lottoAddress;
address owner;

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

function gimme() {
    require owner == msg.sender
    call lottoAddress with:
       funct Mask(32, 224, sha3('won()')) >> 224
         gas 250000 wei
}

function _fallback() payable {
    if gas_remaining > 250000:
        call lottoAddress with:
           funct Mask(32, 224, sha3('won()')) >> 224
             gas 250000 wei
}

function sub_082bd0b3(?) {
    require owner == msg.sender
    lottoAddress = 0x6f6deb5db0c4994a8283a01d6cfeeb27fc3bbe9c
    call 0x6f6deb5db0c4994a8283a01d6cfeeb27fc3bbe9c with:
       funct Mask(32, 224, sha3('playSystem(uint256,address)')) >> 224
       value msg.value wei
         gas 250000 wei
        args 0, this.address
    emit 0x4f65d98f: 0, this.address
}



}
