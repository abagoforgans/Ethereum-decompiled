contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;

function _fallback() payable {
    stor1 = 0
    stor2 = 0
    require not msg.value
    stor0 = 0x993fae61f2072200cd377b5b376cba3ab137b361
    stor1 = msg.sender
    return code.data[255 len 33994]
}



// =====================  Runtime code  =====================


#
#  - send()
#
address sub_d5f3a61aAddress;
address owner;

function owner() {
    return owner
}

function sub_d5f3a61a(?) {
    return sub_d5f3a61aAddress
}

function _fallback() payable {
    emit LogBuy(msg.sender, msg.value);
}

function withdraw() {
    require msg.sender == owner
    if eth.balance(this.address) > 0:
        emit 0xd9e44922: eth.balance(this.address)
        call 0xa4cc50d124ba4bf9bbbb56aec8a0df014f1b818a with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}



}
