contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = msg.sender
    emit OwnershipTransferred(0, stor0);
    return code.data[283 len 1546]
}



// =====================  Runtime code  =====================


address owner;
address managerAddress;

function manager() {
    return managerAddress
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function isAdmin() {
    if msg.sender == owner:
        return True
    return (msg.sender == managerAddress)
}

function transferManager(address arg1) {
    if owner != msg.sender:
        require msg.sender == managerAddress
    managerAddress = arg1
    emit OwnershipTransferred(managerAddress, arg1);
}

function sendMultiSig(address arg1, uint256 arg2, bytes arg3, uint256 arg4, uint256 arg5, bytes arg6) {
    if owner != msg.sender:
        require msg.sender == managerAddress
    emit Transacted(msg.sender, 0x1f2c039aae663f8f2a8e86eaef22bf7a6c70dec8, 0x1fa6d5998744a02e7b15dca88b8ce58825cd1a761be58f0073ce3e5382b66c5d, address(arg1), arg2, Array(len=arg3.length, data=arg3[all]));
}



}
