contract main {




// =====================  Runtime code  =====================


address owner;
uint256 rate;

function getRate() payable {
    return rate
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function setRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    rate = arg1
}

function renounceOwnership() payable {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}



}
