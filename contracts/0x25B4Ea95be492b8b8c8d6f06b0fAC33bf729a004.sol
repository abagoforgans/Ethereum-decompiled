contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;

function _fallback() payable {
    mem[96 len -3166] = code.data[3421 len -3166]
    mem[64] = -3070
    stor0 = msg.sender
    stor1[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    return code.data[255 len 3166]
}



// =====================  Runtime code  =====================


#
#  - sub_11eab55f(?)
#
address mediatorAddress;
array of uint256 user;

function user() {
    return user[0 len user.length]
}

function mediator() {
    return mediatorAddress
}

function cancel() {
    require mediatorAddress == msg.sender
    selfdestruct(mediatorAddress)
}

function _fallback() payable {
    call mediatorAddress with:
       value msg.value / 10 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function refund(address arg1) {
    require mediatorAddress == msg.sender
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
