contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[800 len 20]
    return code.data[104 len 684]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;

function kill() {
    if stor0 == msg.sender:
        selfdestruct(stor0)
    emit 0x80c94629: Array(len=12, data='Falsch...!!!')
}

function _fallback() payable {
    if msg.value <= 0:
        emit 0x80c94629: Array(len=1, data='?')
    else:
        emit Added(address(msg.sender), msg.value, gas_remaining, block.number);
        emit 0x45d67952: eth.balance(this.address), gas_remaining, block.number, Array(len=3, data='!!!')
        call stor1 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}



}
