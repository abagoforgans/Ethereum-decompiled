contract main {




// =====================  Runtime code  =====================


address owner;
uint256 sub_6e8cddb6;
uint256 sub_a223171a;

function sub_6e8cddb6(?) {
    return sub_6e8cddb6
}

function getOwner() {
    return owner
}

function sub_a223171a(?) {
    return sub_a223171a
}

function kill() {
    require msg.sender == owner
    emit 0x74b6b62e: sub_6e8cddb6, sub_a223171a
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function publish(uint256 arg1, bytes32 arg2) {
    require msg.sender == owner
    emit 0x74b6b62e: sub_6e8cddb6, sub_a223171a
    sub_6e8cddb6 = block.number
    sub_a223171a = arg1
}



}
