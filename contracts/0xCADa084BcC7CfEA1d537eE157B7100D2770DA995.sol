contract main {


// =======================  Init code  ======================


uint256 stor2;
array of uint256 stor3;
uint256 stor4;
array of uint256 stor5;
address stor6;

function _fallback() payable {
    stor2 = 0
    bool(stor3.length) = 0
    stor3.length.field_1 = 22
    stor3.length.field_8 = 'EthlendReputationToken' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor4 = 18
    bool(stor5.length) = 0
    stor5.length.field_1 = 3
    stor5.length.field_8 = 'CRE' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor6 = 0
    require not msg.value
    stor6 = msg.sender
    return code.data[512 len 4098]
}



// =====================  Runtime code  =====================


const transferFrom(address arg1, address arg2, uint256 arg3) = 0

const transfer(address arg1, uint256 arg2) = 0


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 allSupply;
array of uint256 name;
uint256 decimals;
array of uint256 symbol;
address creatorAddress;
mapping of uint256 stor7;

function creator() {
    return creatorAddress
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return allSupply
}

function decimals() {
    return decimals
}

function allSupply() {
    return allSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function changeCreator(address arg1) {
    require msg.sender == creatorAddress
    creatorAddress = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burnTokens(address arg1) {
    require msg.sender == creatorAddress
    allSupply -= balanceOf[address(arg1)]
    balanceOf[address(arg1)] = 0
    return 1
}

function sub_04524263(?) {
    if stor7[address(arg1)] <= balanceOf[address(arg1)]:
        return (balanceOf[address(arg1)] - stor7[address(arg1)])
    else:
        return 0
}

function unlockTokens(address arg1, uint256 arg2) {
    require msg.sender == creatorAddress
    require stor7[address(arg1)] >= arg2
    stor7[address(arg1)] -= arg2
    return 1
}

function issueTokens(address arg1, uint256 arg2) {
    require msg.sender == creatorAddress
    if not arg2:
        return 0
    balanceOf[address(arg1)] += arg2
    allSupply += arg2
    return 1
}

function lockTokens(address arg1, uint256 arg2) {
    require msg.sender == creatorAddress
    require balanceOf[address(arg1)] - stor7[address(arg1)] >= arg2
    stor7[address(arg1)] += arg2
    return 1
}



}
