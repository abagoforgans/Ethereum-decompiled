contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
uint8 stor3;
array of uint256 stor4;
address stor5;
array of uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;

function _fallback() payable {
    stor3 = 18
    bool(stor4.length) = 0
    stor4.length.field_1 = 19
    stor4.length.field_8 = 'Solar Eclipse Token' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor6.length) = 0
    stor6.length.field_1 = 3
    stor6.length.field_8 = 'SET' / 256
    idx = 0
    while stor6.length + 31 / 32 > idx:
        stor6[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor7 = 1503330410
    stor8 = 1503349461
    stor9 = 149597870700
    stor10 = 92955807
    stor11 = 299792458
    stor12 = 10^18 * stor9
    stor13 = stor10
    stor14 = 10 * 10^18 * stor11
    require not msg.value
    stor5 = msg.sender
    stor0 = stor14
    stor1[stor5] = stor14
    return code.data[640 len 3706]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 decimals;
array of uint256 name;
address stor5;
array of uint256 symbol;
uint256 stor7;
uint256 stor8;
uint256 totalSupplyCap;
uint256 tokensPerETH;
uint256 ownerTokens;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function tokensPerETH() {
    return tokensPerETH
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

function totalSupplyCap() {
    return totalSupplyCap
}

function ownerTokens() {
    return ownerTokens
}

function allowance(address arg1, address arg2) {
    require calldata.size == 68
    return allowance[address(arg1)][address(arg2)]
}

function ownerWithdraw() {
    require msg.sender == stor5
    call stor5 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function approve(address arg1, uint256 arg2) {
    require calldata.size == 68
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size == 68
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
    require calldata.size == 100
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

function _fallback() payable {
    require block.timestamp >= stor7
    require block.timestamp <= stor8
    require totalSupply < totalSupplyCap
    if totalSupply + (msg.value * tokensPerETH) <= totalSupplyCap:
        totalSupply += msg.value * tokensPerETH
        balanceOf[address(msg.sender)] += msg.value * tokensPerETH
    else:
        totalSupply = totalSupplyCap
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + totalSupplyCap - totalSupply
}



}
