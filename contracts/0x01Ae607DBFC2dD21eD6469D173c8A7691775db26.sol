contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() payable {
    stor1 = 0x24f929f9ab84f1c540b8ff1f67728246bfec12e1
    require not msg.value
    stor0 = msg.sender
    return code.data[179 len 735]
}



// =====================  Runtime code  =====================


address stor0;
address adminAddress;

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    if stor0 != msg.sender:
        require msg.sender == adminAddress
    require arg1
    emit OwnershipTransferred(stor0, arg1);
    adminAddress = arg1
}



}
