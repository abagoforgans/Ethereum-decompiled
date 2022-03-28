contract main {


// =======================  Init code  ======================


address stor0;

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    if msg.value > 0:
        emit Deposit(msg.value, msg.sender, 88);
}

function collect() payable {
    if msg.sender == stor0:
        call stor0 with:
           value eth.balance(this.address) wei
             gas 0 wei
}



// =====================  Runtime code  =====================




}
