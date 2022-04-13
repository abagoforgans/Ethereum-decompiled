contract main {


// =======================  Init code  ======================


array of uint256 stor0;
uint256 stor1;
uint256 stor2;
array of uint256 stor3;
mapping of uint256 stor4;
address stor6;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 18
    stor0.length.field_8 = ' HoneySuckleTimes ' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor1 = 2
    bool(stor3.length) = 0
    stor3.length.field_1 = 3
    stor3.length.field_8 = 'HST' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    stor6 = 0xdd222da99a11df13a97e861383ae1b15e808e70a
    stor4[0xdd222da99a11df13a97e861383ae1b15e808e70a] = 300 * 10^6 * 10^stor1
    stor2 = 300 * 10^6 * 10^stor1
    return code.data[562 len 3775]
}



// =====================  Runtime code  =====================


array of uint256 name;
uint256 decimals;
uint256 totalSupply;
array of uint256 symbol;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address stor6;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
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

function setOwner(address arg1) {
    require msg.sender == stor6
    balanceOf[address(arg1)] = balanceOf[stor6]
    balanceOf[stor6] = 0
    stor6 = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function mint(uint256 arg1) {
    require msg.sender == stor6
    if arg1 <= 0:
        return 0
    totalSupply += arg1
    balanceOf[stor6] += arg1
    emit Mint(arg1, msg.sender);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
