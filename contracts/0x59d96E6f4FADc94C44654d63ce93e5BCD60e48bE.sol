contract main {




// =====================  Runtime code  =====================


const isMember(address arg1) = 1


address owner;
address newOwner;
array of uint256 sub_9a159bf6;
mapping of uint8 stor3;

function owner() {
    return owner
}

function sub_9a159bf6(?) {
    return sub_9a159bf6[arg1][0 len sub_9a159bf6[arg1].length]
}

function newOwner() {
    return newOwner
}

function sub_e410df8b(?) {
    return bool(stor3[arg1])
}

function _fallback() payable {
    revert
}

function sub_8d4025fe(?) {
    require msg.sender == owner
    stor3[address(arg1)] = 0
}

function sub_998a853d(?) {
    require msg.sender == owner
    stor3[address(arg1)] = 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    newOwner = arg1
}

function sub_65455fdc(?) {
    if bool(stor3[address(arg1)]) != 1:
        return '0'
    return '1'
}

function setName(string arg1) {
    sub_9a159bf6[address(msg.sender)][] = Array(len=arg1.length, data=arg1[all])
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
    newOwner = 0
}



}
