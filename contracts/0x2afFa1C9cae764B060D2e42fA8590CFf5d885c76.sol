contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[54 len 1164]
}



// =====================  Runtime code  =====================


address stor0;
array of uint256 sub_8abb9845;

function funder() {
    return sub_8abb9845[0 len sub_8abb9845.length]
}

function sub_8abb9845(?) {
    return sub_8abb9845[0 len sub_8abb9845.length]
}

function kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    emit Deposit(msg.sender, msg.value);
}

function getBalance() {
    if stor0 != msg.sender:
        return 0
    return eth.balance(this.address)
}

function sub_a41cca29(?) {
    if stor0 == msg.sender:
        sub_8abb9845[] = Array(len=arg1.length, data=arg1[all])
}



}
