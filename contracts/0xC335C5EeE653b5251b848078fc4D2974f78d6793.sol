contract main {




// =====================  Runtime code  =====================


address owner;
uint8 stor1; offset 160
uint128 stor1; offset 160
address receiverAddress;

function owner() {
    return owner
}

function sub_e6205b91(?) {
    return bool(uint8(stor1.field_160))
}

function receiver() {
    return receiverAddress
}

function setOwner(address arg1) {
    require msg.sender == owner
    owner = arg1
    emit NewOwner(owner);
}

function setReceiver(address arg1) {
    require msg.sender == owner
    receiverAddress = arg1
    emit 0x4a2963bf: receiverAddress
}

function sub_0e38bb78(?) {
    require msg.sender == owner
    Mask(96, 0, stor1.field_160) = 1
    emit 0xb4138eaa: bool(uint8(stor1.field_160))
}

function sub_639a2114(?) {
    require msg.sender == owner
    Mask(96, 0, stor1.field_160) = 0
    emit 0xb4138eaa: bool(uint8(stor1.field_160))
}

function transferEther(uint256 arg1) {
    require msg.sender == owner
    call receiverAddress with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    require uint8(stor1.field_160)
    call receiverAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x8c69129c: receiverAddress, msg.value, msg.sender
}

function sub_e737f30c(?) payable {
    require uint8(stor1.field_160)
    call receiverAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x2c5bc2f0: msg.sender, receiverAddress, msg.value, arg1
}

function transferTokens(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args receiverAddress, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit TokenTransfer(address(arg1), receiverAddress, arg2);
}



}
