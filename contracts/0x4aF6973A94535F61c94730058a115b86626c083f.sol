contract main {


// =======================  Init code  ======================


address stor1;

function _fallback() {
    stor1 = msg.sender
    return code.data[57 len 903]
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

function sub_106b96ce(?) {
    require owner == msg.sender
    lottoAddress = arg1
    call arg1 with:
       funct Mask(32, 224, '0x266995760000000000000000000000') >> 224
       value msg.value wei
         gas 250000 wei
        args Mask(224, 0, '0x266995760000000000000000000000'), '00000000000000000000000000000000', '0000ab339e', this.address
    emit 0x4f65d98f: 0, this.address
}



}
