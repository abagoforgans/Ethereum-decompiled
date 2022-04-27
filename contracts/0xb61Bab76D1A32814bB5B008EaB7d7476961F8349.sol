contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;

function _fallback() {
    stor0 = msg.sender
    stor1 = msg.sender
    stor2 = 0x773b9fa70b834d849f6fe9a361244096ddf84a26
    emit 0xcf4689ff: stor1
    return code.data[351 len 936]
}



// =====================  Runtime code  =====================


address stor0;
address sub_a4592aa2Address;
address sub_b574714fAddress;

function sub_a4592aa2(?) {
    return sub_a4592aa2Address
}

function sub_b574714f(?) {
    return sub_b574714fAddress
}

function kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function flush() {
    call sub_a4592aa2Address with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    if msg.value > 0:
        emit Deposit(sub_a4592aa2Address, msg.value);
        call sub_b574714fAddress with:
           value eth.balance(this.address) wei
             gas 40000 wei
        require ext_call.success
}



}
