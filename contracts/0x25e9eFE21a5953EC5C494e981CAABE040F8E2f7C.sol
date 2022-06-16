contract main {




// =====================  Runtime code  =====================


address owner;
address updaterAddress;
mapping of uint256 rate;

function getRate(string arg1) {
    return rate[arg1[all]]
}

function owner() {
    return owner
}

function updater() {
    return updaterAddress
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function transferUpdater(address arg1) {
    require owner == msg.sender
    require arg1
    emit UpdaterTransferred(updaterAddress, arg1);
    updaterAddress = arg1
}

function updateRate(string arg1, uint256 arg2) {
    require updaterAddress == msg.sender
    require arg2
    rate[arg1[all]] = arg2
    emit RateUpdated(Array(len=arg1.length, data=arg1[all]), arg2);
}



}
