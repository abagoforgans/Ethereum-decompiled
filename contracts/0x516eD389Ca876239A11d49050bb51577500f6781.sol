contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
address stor3;
array of uint256 stor5;
uint8 stor6;

function _fallback() payable {
    bool(stor5.length) = 0
    stor5.length.field_1 = 3
    stor5.length.field_8 = '1.0' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor6 = 0
    require not msg.value
    stor3 = msg.sender
    stor0 = 5 * 10^17
    stor1[address(msg.sender)] = code.data[5066 len 32]
    return code.data[501 len 4565]
}



// =====================  Runtime code  =====================


const name = 'Fuel of Token'

const decimals = 8

const symbol = 'FUT'

const MILLION = 10^14


uint256 fUTTotalSupply;
mapping of uint256 balances;
mapping of uint256 allowance;
address owner;
address newOwner;
array of uint256 version;
uint8 stor6;

function totalSupply() {
    return fUTTotalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function version() {
    return version[0 len version.length]
}

function getFUTTotalSupply() {
    return fUTTotalSupply
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function owner() {
    return owner
}

function newOwner() {
    return newOwner
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
