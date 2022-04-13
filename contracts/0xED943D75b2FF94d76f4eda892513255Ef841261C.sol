contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[62 len 590]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint256 cap;

function owner() {
    return owner
}

function getCap(address arg1) {
    return cap[address(arg1)]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function listAddress(address arg1, uint256 arg2) {
    require owner == msg.sender
    cap[address(arg1)] = arg2
    emit ListAddress(address(arg1), arg2, block.timestamp);
}



}
