contract main {




// =====================  Runtime code  =====================


#
#  - checkpoint(uint256 arg1, uint256 arg2, uint256 arg3, bytes arg4)
#
mapping of uint8 stor0;
address owner;
mapping of uint8 stor2;
uint8 paused;
address coreContractAddress; offset 8
address coreExtraContractAddress;
uint256 dailyExpLimit;
mapping of struct checkpoint;

function getCheckpoint(uint256 arg1) {
    return checkpoint[arg1].field_0, checkpoint[arg1].field_256
}

function isPauser(address arg1) {
    require arg1
    return bool(stor2[address(arg1)])
}

function dailyExpLimit() {
    return dailyExpLimit
}

function paused() {
    return bool(paused)
}

function coreExtraContract() {
    return coreExtraContractAddress
}

function owner() {
    return owner
}

function isMinter(address arg1) {
    require arg1
    return bool(stor0[address(arg1)])
}

function coreContract() {
    return coreContractAddress
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renouncePauser() {
    require msg.sender
    stor2[address(msg.sender)] = 0
}

function renounceMinter() {
    require msg.sender
    stor0[address(msg.sender)] = 0
}

function setDailyExpLimit(uint256 arg1) {
    require msg.sender == owner
    dailyExpLimit = arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function unpause() {
    require msg.sender
    require stor2[address(msg.sender)]
    require paused
    paused = 0
    emit Unpaused()
}

function pause() {
    require msg.sender
    require stor2[address(msg.sender)]
    require not paused
    paused = 1
    emit Paused()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function addPauser(address arg1) {
    require msg.sender
    require stor2[address(msg.sender)]
    require arg1
    stor2[address(arg1)] = 1
    emit PauserAdded(arg1);
}

function addMinter(address arg1) {
    require msg.sender
    require stor0[address(msg.sender)]
    require arg1
    stor0[address(arg1)] = 1
    emit MinterAdded(arg1);
}



}
