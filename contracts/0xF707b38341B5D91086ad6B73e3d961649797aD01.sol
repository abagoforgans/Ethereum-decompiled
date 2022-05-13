contract main {




// =====================  Runtime code  =====================


address owner;
address factoryAddress;
mapping of uint8 stor2;

function sub_571a22dd(?) {
    return bool(stor2[arg1])
}

function owner() {
    return owner
}

function factory() {
    return factoryAddress
}

function _fallback() payable {
    revert
}

function setFactory(address arg1) {
    require msg.sender == owner
    factoryAddress = arg1
}

function mixGenes(uint256 arg1, uint256 arg2, uint256 arg3) {
    return (bool(stor2[address(msg.sender)]) == 1)
}

function sub_62c59704(?) {
    require bool(stor2[address(msg.sender)]) == 1
    emit 0x15d100e2: msg.sender, arg1
}

function sub_81e8dfa2(?) {
    require bool(stor2[address(msg.sender)]) == 1
    emit 0x5180589a: msg.sender, arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_0596030d(?) {
    require msg.sender == factoryAddress
    stor2[address(arg1)] = 1
    emit 0xd58bd056: arg1, arg2
    emit 0x5180589a: arg1, arg2
}



}
