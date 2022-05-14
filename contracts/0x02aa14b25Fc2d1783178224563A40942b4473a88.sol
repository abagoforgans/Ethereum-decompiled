contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
mapping of uint8 stor1;

function isWhitelisted(address arg1) {
    return bool(stor1[address(arg1)])
}

function paused() {
    return bool(uint8(stor0.field_160))
}

function owner() {
    return owner
}

function whitelist(address arg1) {
    return bool(stor1[arg1])
}

function _fallback() payable {
    revert
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

function removeAddress(address arg1) {
    require msg.sender == owner
    require stor1[address(arg1)]
    stor1[address(arg1)] = 0
    emit 0xf3c7960e: msg.sender, arg1
    return 1
}

function addAddress(address arg1) {
    require msg.sender == owner
    require arg1
    require not stor1[address(arg1)]
    stor1[address(arg1)] = 1
    emit 0xba23efe5: msg.sender, arg1
    return 1
}



}
