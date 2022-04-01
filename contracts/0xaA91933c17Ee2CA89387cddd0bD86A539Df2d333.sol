contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[57 len 1064]
}



// =====================  Runtime code  =====================


address creatorAddress;
array of struct stor1;

function creator() {
    return creatorAddress
}

function _fallback() payable {
    revert
}

function tiles(uint256 arg1) {
    require arg1 < 16384
    return stor1[arg1].field_0, stor1[arg1].field_0, stor1[arg1].field_0, stor1[arg1].field_232
}

function withdraw(uint256 arg1) {
    require creatorAddress == msg.sender
    call creatorAddress with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function withdrawAll() {
    require creatorAddress == msg.sender
    call creatorAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_e3dc3dfa(?) payable {
    require arg1 < 16384
    require msg.value / 10^12 % 281474976710656 > stor1[arg1].field_184
    stor1[arg1].field_0 = arg2 % 16777216
    stor1[arg1].field_24 = msg.sender
    stor1[arg1].field_184 = msg.value / 10^12 % 281474976710656
    stor1[arg1].field_232 = stor1[arg1].field_232 + 1 % 16777216
    require arg1 < 16384
    stor1[arg1].field_24 = stor1[arg1].field_24
    stor1[arg1].field_184 = 0
    stor1[arg1].field_184 = stor1[arg1].field_184
    stor1[arg1].field_232 = 0
    stor1[arg1].field_232 = 0
    call creatorAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit 0x1f046729: msg.sender, arg1 << 240, arg2 % 16777216
}



}
