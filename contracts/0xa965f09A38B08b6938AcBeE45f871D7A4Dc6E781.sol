contract main {




// =====================  Runtime code  =====================


#
#  - sub_a33b2d26(?)
#  - sub_c709a742(?)
#  - sub_e19c0809(?)
#
mapping of uint8 stor0;
uint8 stor1;
uint256 sub_c2fa002e;
mapping of uint256 nonce_;

function isPauser(address arg1) {
    require arg1
    return bool(stor0[address(arg1)])
}

function paused() {
    return bool(stor1)
}

function sub_c2fa002e(?) {
    return sub_c2fa002e
}

function nonce_(address arg1, address arg2, uint256 arg3) {
    return nonce_[address(arg1)][address(arg2)][arg3]
}

function _fallback() payable {
    revert
}

function unpause() {
    require msg.sender
    require stor0[address(msg.sender)]
    require stor1
    stor1 = 0
    emit Unpaused(msg.sender);
}

function pause() {
    require msg.sender
    require stor0[address(msg.sender)]
    require not stor1
    stor1 = 1
    emit Paused(msg.sender);
}

function renouncePauser() {
    require msg.sender
    require stor0[address(msg.sender)]
    stor0[address(msg.sender)] = 0
    emit PauserRemoved(msg.sender);
}

function addPauser(address arg1) {
    require msg.sender
    require stor0[address(msg.sender)]
    require arg1
    require not stor0[address(arg1)]
    stor0[address(arg1)] = 1
    emit PauserAdded(arg1);
}



}
