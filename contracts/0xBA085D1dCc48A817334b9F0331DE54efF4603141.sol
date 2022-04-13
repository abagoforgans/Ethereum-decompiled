contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() payable {
    stor0 = msg.sender
    stor1 = msg.sender
    require not msg.value
    return code.data[74 len 478]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;

function kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    emit Deposit(msg.sender, msg.value);
}

function sub_d6701ebe(?) {
    if stor0 == msg.sender:
        stor1 = arg1
}

function GetMoney() {
    if stor0 == msg.sender:
        call stor0 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}



}
