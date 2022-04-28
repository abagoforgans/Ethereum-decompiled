contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
uint256 stor2;
address stor3;
array of uint256 stor4;
uint8 stor5;
array of uint256 stor6;
array of uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;

function _fallback() payable {
    bool(stor7.length) = 0
    stor7.length.field_1 = 4
    stor7.length.field_8 = 'H1.0' / 256
    idx = 0
    while stor7.length + 31 / 32 > idx:
        stor7[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    stor3 = msg.sender
    stor0[address(msg.sender)] = 10^12
    stor2 = 10^12
    bool(stor4.length) = 0
    stor4.length.field_1 = 11
    stor4.length.field_8 = 'BitProCoinX' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor5 = 4
    bool(stor6.length) = 0
    stor6.length.field_1 = 4
    stor6.length.field_8 = 'BPCX' / 256
    idx = 0
    while stor6.length + 31 / 32 > idx:
        stor6[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor8 = 7668200000
    stor9 = 7668200000
    stor10 = 0
    return code.data[656 len 6780]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
address owner;
array of uint256 name;
uint8 decimals;
array of uint256 symbol;
array of uint256 version;
uint256 sellPrice;
uint256 buyPrice;
uint256 numInvestors;
mapping of struct investors;

function name() {
    return name[0 len name.length]
}

function numInvestors() {
    return numInvestors
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function investors(uint256 arg1) {
    return investors[arg1].field_0, 
           investors[arg1].field_256,
           investors[arg1].field_512,
           investors[arg1].field_768,
           investors[arg1].field_1024
}

function sellPrice() {
    return sellPrice
}

function version() {
    return version[0 len version.length]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function buyPrice() {
    return buyPrice
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

function onlyPay() payable {
    require msg.sender == owner
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setPrices(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    require 10^decimals
    sellPrice = arg1 / 10^decimals
    buyPrice = arg2 / 10^decimals
}

function withdraw(uint256 arg1) {
    require msg.sender == owner
    require eth.balance(this.address) > arg1
    require msg.sender == owner
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
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
    require msg.value > 0
    require buyPrice
    require balanceOf[address(this.address)] >= msg.value / buyPrice
    balanceOf[address(msg.sender)] += msg.value / buyPrice
    balanceOf[address(this.address)] -= msg.value / buyPrice
    emit Transfer((msg.value / buyPrice), this.address, msg.sender);
    numInvestors++
}

function sell(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(this.address)] += arg1
    balanceOf[address(msg.sender)] -= arg1
    call msg.sender with:
       value arg1 * sellPrice wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Transfer(arg1, msg.sender, this.address);
    return (arg1 * sellPrice)
}

function buy() payable {
    require msg.value > 0
    require buyPrice
    require balanceOf[address(this.address)] >= msg.value / buyPrice
    balanceOf[address(msg.sender)] += msg.value / buyPrice
    balanceOf[address(this.address)] -= msg.value / buyPrice
    emit Transfer((msg.value / buyPrice), this.address, msg.sender);
    numInvestors++
    return (msg.value / buyPrice)
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

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    mem[ceil32(arg3.length) + 128] = Mask(32, 224, sha3('receiveApproval(address,uint256,', 'address,bytes)'))
    mem[ceil32(arg3.length) + 228 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        call arg1 with:
           funct Mask(32, 224, sha3('receiveApproval(address,uint256,', 'address,bytes)')) >> 224
             gas gas_remaining - 25710 wei
            args msg.sender, arg2, address(this.address), Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 228] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 260 len arg3.length % 32]
        call arg1 with:
           funct Mask(32, 224, sha3('receiveApproval(address,uint256,', 'address,bytes)')) >> 224
             gas gas_remaining - 25710 wei
            args msg.sender, arg2, address(this.address), Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + 228 len floor32(arg3.length) + -ceil32(arg3.length) + 32]
    require ext_call.success
    return 1
}



}
