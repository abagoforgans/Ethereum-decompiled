contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
array of uint256 stor3;
array of uint256 stor4;
uint8 stor5;
array of uint256 stor6;
address stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint8 stor11;

function _fallback() payable {
    stor5 = 0
    mem[128] = 'v1'
    bool(stor6.length) = 0
    stor6.length.field_1 = 2
    stor6.length.field_8 = 'v1' / 256
    idx = 0
    while stor6.length + 31 / 32 > idx:
        stor6[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor9 = 1
    stor10 = 0
    require not msg.value
    mem[160 len -5039] = code.data[5666 len -5039]
    stor3[] = Array(len=mem[mem[160] + 160], data=mem[mem[160] + 192 len mem[mem[160] + 160]])
    stor4[] = Array(len=mem[mem[192] + 160], data=mem[mem[192] + 192 len mem[mem[192] + 160]])
    stor7 = msg.sender
    stor1[address(msg.sender)] = mem[224]
    stor0 = mem[224]
    stor8 = mem[256]
    stor11 = mem[319 len 1]
    return code.data[627 len 5039]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of uint256 version;
address stor7;
uint256 fundingStart;
uint256 minContrib;
uint256 frozenSupply;
uint8 discountMultiplier;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function version() {
    return version[0 len version.length]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function discountMultiplier() {
    return discountMultiplier
}

function fundingStart() {
    return fundingStart
}

function frozenSupply() {
    return frozenSupply
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function minContrib() {
    return minContrib
}

function kill() {
    require msg.sender == stor7
    selfdestruct(stor7)
}

function isFundingOpen() {
    return block.timestamp >= fundingStart
}

function setMinimum(uint256 arg1) {
    require msg.sender == stor7
    minContrib = arg1
}

function timeFundingStart(uint256 arg1) {
    require msg.sender == stor7
    fundingStart = arg1
}

function freezeSupply(uint256 arg1) {
    require msg.sender == stor7
    require balanceOf[stor7] >= arg1
    frozenSupply = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function withdraw() {
    require msg.sender == stor7
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function _fallback() payable {
    require block.timestamp >= fundingStart
    require stor7 != msg.sender
    require msg.value / 10^15 >= minContrib
    require balanceOf[stor7] >= (msg.value / 10^15) - frozenSupply
    require msg.value / 10^15 > 0
    balanceOf[stor7] -= msg.value / 10^15
    balanceOf[address(msg.sender)] += msg.value / 10^15
    emit Transfer((msg.value / 10^15), stor7, msg.sender);
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
