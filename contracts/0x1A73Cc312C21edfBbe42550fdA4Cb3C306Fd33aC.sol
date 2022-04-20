contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;

function _fallback() payable {
    address(stor0.field_0) = msg.sender
    uint8(stor0.field_160) = 1
    require not msg.value
    return code.data[93 len 803]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address creatorAddress;

function creator() {
    return creatorAddress
}

function _fallback() payable {
    require uint8(stor0.field_160)
    emit LogReceived(msg.sender, msg.value);
}

function sub_c84dabcf(?) {
    require creatorAddress == msg.sender
    Mask(96, 0, stor0.field_160) = Mask(96, 0, arg1)
}

function withdraw() {
    require creatorAddress == msg.sender
    require eth.balance(this.address)
    emit LogWithdraw(0xf017e7fd09ea4a1c838af4517289f997bc479ece, 80 * eth.balance(this.address) / 100);
    emit LogWithdraw(creatorAddress, 20 * eth.balance(this.address) / 100);
    call 0xf017e7fd09ea4a1c838af4517289f997bc479ece with:
       value 80 * eth.balance(this.address) / 100 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call creatorAddress with:
       value 20 * eth.balance(this.address) / 100 wei
         gas 2300 * is_zero(value) wei
}



}
