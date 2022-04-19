contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[59 len 489]
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

function sub_082bd0b3(?) payable {
    call 0x6f6deb5db0c4994a8283a01d6cfeeb27fc3bbe9c with:
       funct Mask(32, 224, sha3('won()')) >> 224
         gas 200000 wei
}

function _fallback() payable {
    if eth.balance(msg.sender) >= msg.value:
        call msg.sender with:
           funct Mask(32, 224, sha3('won()')) >> 224
             gas 150000 wei
}



}
