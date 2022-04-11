contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
array of uint256 stor3;
array of uint256 stor4;
uint256 stor5;
uint256 stor6;

function _fallback() payable {
    bool(stor3.length) = 0
    stor3.length.field_1 = 13
    stor3.length.field_8 = 'XPMCollateral' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor4.length) = 0
    stor4.length.field_1 = 4
    stor4.length.field_8 = 'XPMC' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor5 = 0
    stor6 = 10 * 10^6
    require not msg.value
    stor0 = stor6
    stor1[address(msg.sender)] = stor6
    return code.data[445 len 3200]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 INITIAL_SUPPLY;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function INITIAL_SUPPLY() {
    return INITIAL_SUPPLY
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

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
