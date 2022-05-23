contract main {




// =====================  Runtime code  =====================


#
#  - sub_9778fc0e(?)
#
address owner;
address newOwner;
address registryAddress;
address sub_68f7d4b3Address;
address sub_985660bdAddress;
uint256 stor5;

function sub_68f7d4b3(?) {
    return sub_68f7d4b3Address
}

function registry() {
    return registryAddress
}

function owner() {
    return owner
}

function sub_985660bd(?) {
    return sub_985660bdAddress
}

function newOwner() {
    return newOwner
}

function _fallback() payable {
    revert
}

function setMinDeposit(uint256 arg1) {
    require msg.sender == owner
    stor5 = arg1
}

function sub_0fc71158(?) {
    require msg.sender == owner
    sub_985660bdAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require owner != arg1
    newOwner = arg1
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnerUpdate(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function setOwner(address arg1) {
    require msg.sender == owner
    require owner != arg1
    require arg1
    emit OwnerUpdate(owner, arg1);
    owner = arg1
    newOwner = 0
}



}
