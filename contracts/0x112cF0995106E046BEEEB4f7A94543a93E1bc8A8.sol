contract main {


// =======================  Init code  ======================


address stor1;

function _fallback() {
    stor1 = msg.sender
    return code.data[57 len 895]
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
         gas 150000 wei
}

function _fallback() payable {
    if gas_remaining > 100000:
        call lottoAddress with:
           funct Mask(32, 224, sha3('won()')) >> 224
             gas 150000 wei
}

function sub_505bc766(?) {
    require owner == msg.sender
    lottoAddress = arg1
    call arg1 with:
       funct Mask(32, 224, sha3('playSystem(uint,address)')) >> 224
       value msg.value wei
         gas 250000 wei
        args 11271731, arg2
    emit 0xdc01d021: address(arg1), address(arg2), 11271731
}



}
