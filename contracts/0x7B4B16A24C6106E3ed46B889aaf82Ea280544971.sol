contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
address stor3;
array of uint256 stor5;

function _fallback() payable {
    bool(stor5.length) = 0
    stor5.length.field_1 = 3
    stor5.length.field_8 = '1.0' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    stor3 = msg.sender
    stor0 = code.data[5991 len 32]
    stor1[address(msg.sender)] = code.data[5991 len 32]
    return code.data[465 len 5526]
}



// =====================  Runtime code  =====================


const name = 'Six Domain Token'

const decimals = 8

const symbol = 'SDT'


uint256 totalSupply;
mapping of uint256 balances;
mapping of uint256 allowance;
address owner;
address newOwner;
array of uint256 version;
uint8 stor6;
mapping of uint8 stor7;
array of address sub_d6efe0d7;

function sub_0ad777a4(?) {
    return bool(stor7[arg1])
}

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function version() {
    return version[0 len version.length]
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function owner() {
    return owner
}

function sub_8fdb0f71(?) {
    return sub_d6efe0d7.length
}

function getTotalSupply() {
    return totalSupply
}

function newOwner() {
    return newOwner
}

function sub_d6efe0d7(?) {
    require arg1 < sub_d6efe0d7.length
    return address(sub_d6efe0d7[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function disabled() {
    return bool(stor6)
}

function kill() {
    require msg.sender == owner
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function acceptOwnership() {
    if msg.sender == newOwner:
        owner = newOwner
}

function changeOwner(address arg1) {
    require msg.sender == owner
    newOwner = arg1
}

function setDisabled(bool arg1) {
    require msg.sender == owner
    stor6 = uint8(arg1)
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor6
    if not stor7[address(arg1)]:
        stor7[address(arg1)] = 1
        sub_d6efe0d7.length++
        if not sub_d6efe0d7.length <= sub_d6efe0d7.length + 1:
            idx = sub_d6efe0d7.length + 1
            while sub_d6efe0d7.length > idx:
                uint256(sub_d6efe0d7[idx]) = 0
                idx = idx + 1
                continue 
        address(sub_d6efe0d7[sub_d6efe0d7.length]) = arg1
    if balances[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    balances[address(msg.sender)] -= arg2
    balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor6
    if not stor7[address(arg2)]:
        stor7[address(arg2)] = 1
        sub_d6efe0d7.length++
        if not sub_d6efe0d7.length <= sub_d6efe0d7.length + 1:
            idx = sub_d6efe0d7.length + 1
            while sub_d6efe0d7.length > idx:
                uint256(sub_d6efe0d7[idx]) = 0
                idx = idx + 1
                continue 
        address(sub_d6efe0d7[sub_d6efe0d7.length]) = arg2
    if balances[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    balances[address(arg2)] += arg3
    balances[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
