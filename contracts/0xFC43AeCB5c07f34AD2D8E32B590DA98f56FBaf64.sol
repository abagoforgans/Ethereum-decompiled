contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
uint8 stor1;
address stor1; offset 8
address stor2;

function isPauser(address arg1) {
    require arg1
    return bool(stor0[address(arg1)])
}

function paused() {
    return bool(uint8(stor1.field_0))
}

function sub_4d1599ae(?) {
    require msg.sender
    require stor0[address(msg.sender)]
    stor2 = arg1
}

function sub_bd6cb222(?) {
    require msg.sender
    require stor0[address(msg.sender)]
    address(stor1.field_8) = arg1
}

function renouncePauser() {
    require msg.sender
    require stor0[address(msg.sender)]
    stor0[address(msg.sender)] = 0
    emit PauserRemoved(msg.sender);
}

function unpause() {
    require msg.sender
    require stor0[address(msg.sender)]
    require uint8(stor1.field_0)
    uint8(stor1.field_0) = 0
    emit Unpaused(msg.sender);
}

function pause() {
    require msg.sender
    require stor0[address(msg.sender)]
    require not uint8(stor1.field_0)
    uint8(stor1.field_0) = 1
    emit Paused(msg.sender);
}

function addPauser(address arg1) {
    require msg.sender
    require stor0[address(msg.sender)]
    require arg1
    require not stor0[address(arg1)]
    stor0[address(arg1)] = 1
    emit PauserAdded(arg1);
}

function _fallback() payable {
    require not uint8(stor1.field_0)
    call address(stor1.field_8) with:
       value msg.value / 2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor2 with:
       value msg.value / 2 wei
         gas 2300 * is_zero(value) wei
}



}
