contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[54 len 324]
}



// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


address owner;

function getOwner() {
    return owner
}

function kill() {
    if owner != msg.sender:
    selfdestruct(owner)
}

function _fallback() payable {
    emit Deposit(msg.sender, msg.value);
}



}
