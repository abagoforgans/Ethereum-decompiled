contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;

function _fallback() {
    stor0 = msg.sender
    stor1 = msg.sender
    stor2 = 0xaa520238276dbd2a8ac210211bcd19674446af72
    emit 0xcf4689ff: stor1
    return code.data[351 len 1168]
}



// =====================  Runtime code  =====================


address stor0;
address sub_a4592aa2Address;
address exchangeAddress;

function sub_a4592aa2(?) {
    return sub_a4592aa2Address
}

function exchange() {
    return exchangeAddress
}

function kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function changeExchange(address arg1) {
    require msg.sender == sub_a4592aa2Address
    exchangeAddress = arg1
}

function flush() {
    call sub_a4592aa2Address with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    if msg.value > 0:
        emit Deposit(exchangeAddress, msg.value);
        call exchangeAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}



}
