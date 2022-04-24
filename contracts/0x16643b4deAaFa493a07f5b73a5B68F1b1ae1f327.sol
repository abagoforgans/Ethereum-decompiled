contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = msg.sender
    stor0 = msg.sender
    stor1 = stor0
    return code.data[256 len 2241]
}



// =====================  Runtime code  =====================


address owner;
address curatorAddress;
mapping of uint8 stor2;

function isWhitelisted(address arg1) {
    return bool(stor2[address(arg1)])
}

function owner() {
    return owner
}

function whitelist(address arg1) {
    return bool(stor2[arg1])
}

function curator() {
    return curatorAddress
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function removeInvestor(address arg1) {
    require msg.sender == curatorAddress
    require arg1
    require stor2[address(arg1)]
    stor2[address(arg1)] = 0
}

function addInvestor(address arg1) {
    require msg.sender == curatorAddress
    require arg1
    require not stor2[address(arg1)]
    stor2[address(arg1)] = 1
}

function transferCurationRights(address arg1) {
    require msg.sender == owner
    require arg1
    emit CurationRightsTransferred(curatorAddress, arg1);
    curatorAddress = arg1
}



}
