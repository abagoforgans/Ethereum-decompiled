contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor2;
array of uint256 stor3;
uint8 stor4;
uint256 stor5;
uint8 stor7;
mapping of uint256 stor8;

function _fallback() payable {
    stor4 = 8
    stor7 = 1
    require not msg.value
    stor0 = msg.sender
    stor5 = 10^9 * 10^stor4
    stor8[address(msg.sender)] = stor5
    bool(stor2.length) = 0
    stor2.length.field_1 = 8
    stor2.length.field_8 = 'attestt3' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor3.length) = 0
    stor3.length.field_1 = 8
    stor3.length.field_8 = 'attestt3' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    return code.data[596 len 5386]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 stor6;
uint8 stor7;
mapping of uint256 balanceOf;
mapping of uint256 stor9;
mapping of uint256 preTotalTokens;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function preTotalTokens(address arg1) {
    return preTotalTokens[arg1]
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function frozenAccount(address arg1) {
    return bool(stor1[arg1])
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function sub_34c2ab81(?) {
    require msg.sender == owner
    require stor7
    stor7 = 0
    stor6 = arg1
}

function freezeAccount(address arg1, bool arg2) {
    require msg.sender == owner
    stor1[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function releaseCount() {
    if not stor6:
        return 0
    require stor6 <= block.timestamp
    require (block.timestamp - stor6 / 300) + 1 >= block.timestamp - stor6 / 300
    if (block.timestamp - stor6 / 300) + 1 >= 10:
        return 10
    return ((block.timestamp - stor6 / 300) + 1)
}

function transfer(address arg1, uint256 arg2) {
    require not stor7
    require not stor1[address(msg.sender)]
    require not stor1[address(arg1)]
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    if stor9[address(msg.sender)] > 0:
        require block.timestamp > stor6
        if 10 * block.timestamp - stor6 / 300 > 90:
            stor9[address(msg.sender)] = 0
        else:
            stor9[address(msg.sender)] = (90 * preTotalTokens[address(msg.sender)]) - (10 * block.timestamp - stor6 / 300 * preTotalTokens[address(msg.sender)]) / 100
            require arg2 <= balanceOf[address(msg.sender)] - stor9[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function lock(address arg1, uint256 arg2) {
    require msg.sender == owner
    require not stor1[address(arg1)]
    if not arg2:
        require balanceOf[stor0] >= 0
        require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        require balanceOf[address(arg1)] > balanceOf[address(arg1)]
        require arg1
        require 0 <= balanceOf[stor0]
        require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        require preTotalTokens[address(arg1)] >= preTotalTokens[address(arg1)]
        if not preTotalTokens[address(arg1)]:
            stor9[address(arg1)] = 0
        else:
            require preTotalTokens[address(arg1)]
            require 90 * preTotalTokens[address(arg1)] / preTotalTokens[address(arg1)] == 90
            stor9[address(arg1)] = 90 * preTotalTokens[address(arg1)] / 100
        emit Transfer(0, owner, arg1);
    else:
        require arg2
        require arg2 * 10^decimals / arg2 == 10^decimals
        require balanceOf[stor0] >= arg2 * 10^decimals
        require balanceOf[address(arg1)] + (arg2 * 10^decimals) >= balanceOf[address(arg1)]
        require balanceOf[address(arg1)] + (arg2 * 10^decimals) > balanceOf[address(arg1)]
        require arg1
        require arg2 * 10^decimals <= balanceOf[stor0]
        balanceOf[stor0] += -1 * arg2 * 10^decimals
        require balanceOf[address(arg1)] + (arg2 * 10^decimals) >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += arg2 * 10^decimals
        require preTotalTokens[address(arg1)] + (arg2 * 10^decimals) >= preTotalTokens[address(arg1)]
        preTotalTokens[address(arg1)] += arg2 * 10^decimals
        if not preTotalTokens[address(arg1)]:
            stor9[address(arg1)] = 0
        else:
            require preTotalTokens[address(arg1)]
            require 90 * preTotalTokens[address(arg1)] / preTotalTokens[address(arg1)] == 90
            stor9[address(arg1)] = 90 * preTotalTokens[address(arg1)] / 100
        emit Transfer((arg2 * 10^decimals), owner, arg1);
}



}
