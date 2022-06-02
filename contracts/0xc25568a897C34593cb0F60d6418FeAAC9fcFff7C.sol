contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 email;
uint256 time;

function time() {
    return time
}

function email() {
    return email[0 len email.length]
}

function owner() {
    return owner
}

function deactivate() {
    require msg.sender == owner
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function changeTime(uint256 arg1) {
    require msg.sender == owner
    require arg1 > block.timestamp
    time = arg1
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}



}
