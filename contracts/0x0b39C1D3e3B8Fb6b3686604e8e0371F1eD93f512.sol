contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor3;
array of uint256 stor4;
array of uint256 stor5;
uint8 stor6;
uint256 stor7;
uint256 stor8;

function _fallback() payable {
    mem[128] = 'Token 0.1'
    bool(stor3.length) = 0
    stor3.length.field_1 = 9
    stor3.length.field_8 = 'Token 0.1' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    mem[160 len -2543] = code.data[2952 len -2543]
    stor0 = msg.sender
    stor7 = mem[160]
    stor8 = mem[160]
    stor4[] = Array(len=mem[mem[192] + 160], data=mem[mem[192] + 192 len mem[mem[192] + 160]])
    stor6 = mem[255 len 1]
    stor5[] = Array(len=mem[mem[256] + 160], data=mem[mem[256] + 192 len mem[mem[256] + 160]])
    return code.data[409 len 2543]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint256 balances;
mapping of uint256 allowance;
array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 freeTokens;
uint256 totalSupply;

function name() {
    return name[0 len name.length]
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

function standard() {
    return standard[0 len standard.length]
}

function freeTokens() {
    return freeTokens
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
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setTokens(address arg1, uint256 arg2) {
    require owner == msg.sender
    require arg2 <= freeTokens
    freeTokens -= arg2
    require arg2 + balances[address(arg1)] >= balances[address(arg1)]
    balances[address(arg1)] += arg2
    emit Transfer(arg2, this.address, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    require arg2 + balances[arg1] >= balances[arg1]
    balances[address(arg1)] = arg2 + balances[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function withdrawalTokens(address arg1, address arg2, uint256 arg3) {
    require owner == msg.sender
    require arg3 <= balances[address(arg1)]
    balances[address(arg1)] -= arg3
    require arg3 + balances[arg2] >= balances[arg2]
    balances[address(arg2)] = arg3 + balances[arg2]
    emit Transfer(arg3, arg1, arg2);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg3 <= balances[address(arg1)]
    balances[address(arg1)] -= arg3
    require arg3 + balances[arg2] >= balances[arg2]
    balances[address(arg2)] = arg3 + balances[arg2]
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
