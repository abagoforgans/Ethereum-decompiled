contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
address hubAddress;
mapping of struct users;

function hub() {
    return hubAddress
}

function isUser(address arg1) {
    return bool(users[address(arg1)].field_0)
}

function paused() {
    return bool(uint8(stor0.field_160))
}

function owner() {
    return owner
}

function users(address arg1) {
    return bool(users[arg1].field_0), users[arg1].field_256, users[arg1].field_512
}

function destroy() {
    require msg.sender == owner
    selfdestruct(owner)
}

function destroyAndSend(address arg1) {
    require msg.sender == owner
    selfdestruct(arg1)
}

function _fallback() {
  stop
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function provenanceOf(address arg1) {
    if not users[address(arg1)].field_0:
        return 0
    return users[address(arg1)].field_512
}

function unpause() {
    require msg.sender == owner
    require uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setProvenance(address arg1, uint256 arg2) {
    require msg.sender == owner
    require users[address(arg1)].field_0
    users[address(arg1)].field_512 = arg2
    emit 0xed67a1ab: arg2, arg1
    return 1
}

function register() {
    require not uint8(stor0.field_160)
    require not users[address(msg.sender)].field_0
    users[address(msg.sender)].field_0 = 1
    users[address(msg.sender)].field_256 = block.number
    users[address(msg.sender)].field_512 = 0
    emit 0x7959d986: msg.sender
    return 1
}

function sub_098e356b(?) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.expertScoreOf(address arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == owner
    require users[address(arg2)].field_0
    users[address(arg2)].field_512 = ext_call.return_data[0]
    emit 0xed67a1ab: ext_call.return_data[0], arg2
    emit 0xbc0a3ec3: arg1
    return 1
}



}
