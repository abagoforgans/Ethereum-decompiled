contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[60 len 396]
}



// =====================  Runtime code  =====================


address owner;

function speak() {
    return owner
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function deposit(bytes32 arg1) payable {
    emit Deposit(msg.value, msg.sender, arg1);
}



}
