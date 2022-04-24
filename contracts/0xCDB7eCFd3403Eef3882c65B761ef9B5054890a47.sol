contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint256 stor2;
address stor3;
uint256 stor4;
uint8 stor6;
mapping of uint256 stor7;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 12
    stor0.length.field_8 = 'Hurify Token' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 3
    stor1.length.field_8 = 'HUR' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 18
    stor6 = 0
    require not msg.value
    stor3 = msg.sender
    stor7[address(msg.sender)] = 212500000 * 10^stor2
    stor4 = 273125000 * 10^stor2
    require stor7[address(code.data[7016 len 32])] + (53125000 * 10^stor2) >= stor7[address(code.data[7016 len 32])]
    stor7[address(code.data[7016 len 32])] += 53125000 * 10^stor2
    return code.data[797 len 6219]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint256 decimals;
address owner;
uint256 totalSupply;
uint256 stor5;
uint8 hault;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function hault() {
    return bool(hault)
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
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

function unpause() {
    require owner == msg.sender
    hault = 0
}

function pauseable() {
    require owner == msg.sender
    hault = 1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(msg.sender, address(arg1), arg2);
    return 1
}

function tokensup(uint256 arg1) {
    require owner == msg.sender
    require totalSupply + (arg1 * 10^decimals) >= totalSupply
    totalSupply += arg1 * 10^decimals
    require balanceOf[stor3] + (arg1 * 10^decimals) >= balanceOf[stor3]
    balanceOf[stor3] += arg1 * 10^decimals
}

function burn(uint256 arg1) {
    require owner == msg.sender
    require balanceOf[address(msg.sender)] >= arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not hault
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function hurmint(address arg1, uint256 arg2) {
    require owner == msg.sender
    require stor5 <= totalSupply
    require arg2 * 10^decimals <= balanceOf[stor3]
    balanceOf[stor3] += -1 * arg2 * 10^decimals
    require balanceOf[address(arg1)] + (arg2 * 10^decimals) >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2 * 10^decimals
    require stor5 + (arg2 * 10^decimals) >= stor5
    stor5 += arg2 * 10^decimals
    emit Transfer((arg2 * 10^decimals), owner, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require not hault
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function hurifymint(address arg1, uint256 arg2, uint256 arg3) {
    require owner == msg.sender
    require stor5 <= totalSupply
    if arg3 == 1:
        require 6000 * arg2 * 10^decimals <= balanceOf[stor3]
        balanceOf[stor3] += -6000 * arg2 * 10^decimals
        require balanceOf[address(arg1)] + (6000 * arg2 * 10^decimals) >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += 6000 * arg2 * 10^decimals
        require stor5 + (6000 * arg2 * 10^decimals) >= stor5
        stor5 += 6000 * arg2 * 10^decimals
        emit Transfer((6000 * arg2 * 10^decimals), owner, arg1);
    else:
        if arg3 != 2:
            require 0 <= balanceOf[stor3]
            require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
            require stor5 >= stor5
            emit Transfer(0, owner, arg1);
        else:
            require 5000 * arg2 * 10^decimals <= balanceOf[stor3]
            balanceOf[stor3] += -5000 * arg2 * 10^decimals
            require balanceOf[address(arg1)] + (5000 * arg2 * 10^decimals) >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] += 5000 * arg2 * 10^decimals
            require stor5 + (5000 * arg2 * 10^decimals) >= stor5
            stor5 += 5000 * arg2 * 10^decimals
            emit Transfer((5000 * arg2 * 10^decimals), owner, arg1);
}



}
