contract main {


// =======================  Init code  ======================


address stor1;

function _fallback() {
    stor1 = msg.sender
    return code.data[57 len 821]
}



// =====================  Runtime code  =====================


address creatorAddress;
mapping of struct sub_d73d805d;

function creator() {
    return creatorAddress
}

function sub_d73d805d(?) {
    return sub_d73d805d[Mask(192, 64, arg1)].field_0, sub_d73d805d[Mask(192, 64, arg1)].field_256
}

function kill() {
    require creatorAddress == msg.sender
    selfdestruct(creatorAddress)
}

function _fallback() payable {
    revert
}

function sub_1fbe11a3(?) {
    sub_d73d805d[Mask(192, 64, arg1)].field_256 = arg2
    emit 0x3587bbf2: Mask(192, 64, arg1)
}

function withdraw() payable {
    require creatorAddress == msg.sender
    call creatorAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_d9535d25(?) {
    require creatorAddress == msg.sender
    call sub_d73d805d[Mask(192, 64, arg1)].field_0 with:
       value sub_d73d805d[Mask(192, 64, arg1)].field_256 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
