contract main {




// =====================  Runtime code  =====================


address stor0;

function close() {
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can call this function.'
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}



}
