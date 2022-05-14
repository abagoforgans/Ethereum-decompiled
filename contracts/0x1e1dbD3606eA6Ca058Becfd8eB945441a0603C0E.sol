contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;

function _fallback() payable {
    address(stor0.field_0) = msg.sender
    uint8(stor0.field_160) = 0
    return code.data[48 len 746]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;

function paused() {
    return bool(stor0)
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function unpause() {
    require owner == msg.sender
    require stor0
    stor0 = 0
    emit Unpause()
}

function pause() {
    require owner == msg.sender
    require not stor0
    stor0 = 1
    emit Pause()
}



}
