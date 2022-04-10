contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;

function _fallback() payable {
    uint8(stor0.field_160) = 0
    require not msg.value
    address(stor0.field_0) = msg.sender
    require address(stor0.field_0) == msg.sender
    require not uint8(stor0.field_160)
    uint8(stor0.field_160) = 1
    emit Pause()
    return code.data[260 len 1279]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
mapping of uint256 sub_ef9e5743;

function paused() {
    return bool(stor0)
}

function owner() {
    return owner
}

function sub_ef9e5743(?) {
    return sub_ef9e5743[Mask(80, 176, arg1)]
}

function destroy() {
    require owner == msg.sender
    selfdestruct(owner)
}

function destroyAndSend(address arg1) {
    require owner == msg.sender
    selfdestruct(arg1)
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function unpause() {
    require owner == msg.sender
    require stor0
    stor0 = 0
    emit Unpause()
    return 1
}

function pause() {
    require owner == msg.sender
    require not stor0
    stor0 = 1
    emit Pause()
    return 1
}

function sub_4fa51a39(?) payable {
    require not stor0
    require Mask(80, 176, arg1)
    sub_ef9e5743[Mask(80, 176, arg1)] += msg.value
    emit 0xe1fdb0a5: msg.value, msg.sender, Mask(80, 176, arg1)
}

function withdraw() {
    require owner == msg.sender
    require not stor0
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit 0xe1fdb0a5: eth.balance(this.address), owner, 0
}



}
