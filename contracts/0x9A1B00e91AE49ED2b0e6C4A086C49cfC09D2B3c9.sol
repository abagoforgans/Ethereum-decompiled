contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;
uint8 stor3;
array of uint256 stor4;
array of uint256 stor5;
mapping of uint256 stor6;

function _fallback() {
    stor0 = msg.sender
    stor2 = 500000000 * 10^18
    stor3 = 18
    bool(stor5.length) = 0
    stor5.length.field_1 = 10
    stor5.length.field_8 = 'TokenDraft' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor4.length) = 0
    stor4.length.field_1 = 3
    stor4.length.field_8 = 'FAN' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor6[stor0] = stor2
    return code.data[420 len 3133]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
uint256 totalSupply;
uint8 decimals;
array of uint256 symbol;
array of uint256 name;
mapping of uint256 balances;
mapping of uint256 allowed;

function name() {
    return name[0 len name.length]
}

function moderators(address arg1) {
    return bool(stor1[arg1])
}

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function decimals() {
    return decimals
}

function allowed(address arg1, address arg2) {
    return allowed[arg1][arg2]
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowed[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
    return 1
}

function addModerator(address arg1) {
    require owner == msg.sender
    require arg1
    stor1[address(arg1)] = 1
    emit AddMod(msg.sender, arg1, 1);
    return 1
}

function removeModerator(address arg1) {
    require owner == msg.sender
    require arg1
    stor1[address(arg1)] = 0
    emit RemoveMod(msg.sender, arg1, 1);
    return 1
}

function approve(address arg1, uint256 arg2) {
    require arg2 > 0
    allowed[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function tokenBurn(uint256 arg1) {
    if owner != msg.sender:
        require bool(stor1[address(msg.sender)]) == 1
    require arg1 > 0
    require balances[address(msg.sender)] >= arg1
    require arg1 <= totalSupply
    require totalSupply - arg1 >= 0
    require arg1 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit BurnTokens(msg.sender, arg1, 1);
    emit Transfer(arg1, msg.sender, 0);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg2 > 0
    require arg1
    require balances[address(msg.sender)] >= arg2
    require arg2 <= balances[address(msg.sender)]
    require balances[address(msg.sender)] - arg2 >= 0
    require arg2 + balances[address(arg1)] >= balances[address(arg1)]
    require arg2 + balances[address(arg1)] > balances[address(arg1)]
    require arg2 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    require arg2 + balances[arg1] >= balances[arg1]
    balances[address(arg1)] = arg2 + balances[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require allowed[address(arg1)][address(msg.sender)] >= arg3
    require arg3 > 0
    require arg2
    require balances[address(arg1)] >= arg3
    require arg3 <= balances[address(arg1)]
    require balances[address(arg1)] - arg3 >= 0
    require arg3 + balances[address(arg2)] >= balances[address(arg2)]
    require arg3 + balances[address(arg2)] > balances[address(arg2)]
    require arg3 <= allowed[address(arg1)][address(msg.sender)]
    require allowed[address(arg1)][address(msg.sender)] - arg3 >= 0
    require arg3 <= allowed[address(arg1)][address(msg.sender)]
    allowed[address(arg1)][address(msg.sender)] -= arg3
    require arg3 <= balances[address(arg1)]
    balances[address(arg1)] -= arg3
    require arg3 + balances[arg2] >= balances[arg2]
    balances[address(arg2)] = arg3 + balances[arg2]
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
