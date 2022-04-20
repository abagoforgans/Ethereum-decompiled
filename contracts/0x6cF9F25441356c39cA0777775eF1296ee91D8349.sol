contract main {


// =======================  Init code  ======================


address stor0;
bool stor1; offset 256
uint8 stor1; offset 160
address stor1;

function _fallback() payable {
    stor0 = msg.sender
    address(stor1.field_0) = 0xde0ead565011c795f7082f7a3c4a9f5df84fed25
    uint8(stor1.field_160) = 1
    stor1.field_256 % 1 = 0
    require not msg.value
    return code.data[127 len 1020]
}



// =====================  Runtime code  =====================


address creatorAddress;
uint8 stor1; offset 160
uint128 stor1; offset 160
address sub_a87588e7Address;

function creator() {
    return creatorAddress
}

function sub_a87588e7(?) {
    return sub_a87588e7Address
}

function _fallback() payable {
    require uint8(stor1.field_160)
    emit LogReceived(msg.sender, msg.value);
}

function sub_c84dabcf(?) {
    require creatorAddress == msg.sender
    Mask(96, 0, stor1.field_160) = Mask(96, 0, arg1)
}

function withdraw() {
    require creatorAddress == msg.sender
    require eth.balance(this.address)
    emit LogWithdraw(0xf017e7fd09ea4a1c838af4517289f997bc479ece, 80 * eth.balance(this.address) / 100);
    emit LogWithdraw(creatorAddress, 5 * eth.balance(this.address) / 100);
    emit LogWithdraw(sub_a87588e7Address, 15 * eth.balance(this.address) / 100);
    call 0xf017e7fd09ea4a1c838af4517289f997bc479ece with:
       value 80 * eth.balance(this.address) / 100 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call creatorAddress with:
       value 5 * eth.balance(this.address) / 100 wei
         gas 2300 * is_zero(value) wei
    call sub_a87588e7Address with:
       value 15 * eth.balance(this.address) / 100 wei
         gas 2300 * is_zero(value) wei
}



}
