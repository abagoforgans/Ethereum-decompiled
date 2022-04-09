contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[97 len 604]
}



// =====================  Runtime code  =====================


address stor0;

function kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    if msg.value > 0:
        emit Deposit(msg.value, msg.sender, 88);
}

function collect() {
    if msg.sender == stor0:
        call stor0 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
}



}
