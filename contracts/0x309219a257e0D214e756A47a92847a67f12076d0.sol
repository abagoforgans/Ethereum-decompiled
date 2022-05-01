contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
mapping of uint8 stor2;

function _fallback() {
    mem[96 len -1551] = code.data[1945 len -1551]
    mem[64] = -1455
    stor0 = msg.sender
    stor1[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor2[0] = uint8(bool(mem[128]))
    return code.data[394 len 1551]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 name;
mapping of uint8 stor2;

function name() {
    return name[0 len name.length]
}

function onList(address arg1) {
    return bool(stor2[arg1])
}

function owner() {
    return owner
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

function changeList(address arg1, bool arg2) {
    require msg.sender == owner
    require arg1
    if bool(stor2[address(arg1)]) != arg2:
        stor2[address(arg1)] = uint8(arg2)
        emit ChangeWhiteList(arg2, arg1);
}



}
