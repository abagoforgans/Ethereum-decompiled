contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
address stor6;
uint8 stor8;
mapping of uint256 stor9;

function _fallback() {
    stor3 = 10000000000 * 10^18
    stor6 = msg.sender
    stor9[stor6] = stor3
    bool(stor0.length) = 0
    stor0.length.field_1 = 12
    stor0.length.field_8 = 'JP TOKEN 15B' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 8
    stor1.length.field_8 = 'JPMD1LC1' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 18
    stor4 = stor3
    stor5 = 300
    stor8 = 1
    return code.data[640 len 7824]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 remaining;
uint256 ethRate;
address owner;
uint256 collectedAmount;
uint8 icoStatus;
mapping of uint256 balanceOf;
mapping of uint256 investors;
mapping of uint256 allowance;
mapping of uint8 stor12;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function amountCollected() {
    return collectedAmount
}

function remaining() {
    return remaining
}

function investors(address arg1) {
    return investors[arg1]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function getEthRate() {
    require msg.sender == owner
    return ethRate
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function frozenAccount(address arg1) {
    return bool(stor12[arg1])
}

function ethRate() {
    return ethRate
}

function icoStatus() {
    return icoStatus
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function getCollectedAmount() {
    return collectedAmount
}

function withdraw_all() {
    require msg.sender == owner
    selfdestruct(msg.sender)
}

function setEthRate(uint256 arg1) {
    require msg.sender == owner
    ethRate = arg1
}

function changeIcoStatus(uint8 arg1) {
    require msg.sender == owner
    icoStatus = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
    balanceOf[stor6] = 0
    balanceOf[address(arg1)] = remaining
}

function freezeAccount(address arg1, bool arg2) {
    require msg.sender == owner
    stor12[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function mintToken(uint256 arg1) {
    require msg.sender == owner
    balanceOf[stor6] += 10^18 * arg1
    totalSupply += 10^18 * arg1
    emit Transfer((10^18 * arg1), 0, owner);
}

function withdraw(uint256 arg1) {
    require msg.sender == owner
    if arg1 > 0:
        call msg.sender with:
           value 10^18 * arg1 wei
             gas 2300 * is_zero(value) wei
}

function burn(uint256 arg1) {
    require balanceOf[address(msg.sender)] > arg1
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require balanceOf[address(arg1)] >= arg2
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg2
    allowance[address(arg1)][address(msg.sender)] -= arg2
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor12[address(msg.sender)]
    require arg1
    require balanceOf[address(msg.sender)] > arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    require ext_code.size(arg1)
    call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 < allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require not stor12[address(arg1)]
    require arg2
    require balanceOf[address(arg1)] > arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sellOffline(address arg1, uint256 arg2) {
    require msg.sender == owner
    require remaining > 0
    require 10^18 * arg2 < remaining
    remaining += -1 * 10^18 * arg2
    require not stor12[stor6]
    require arg1
    require balanceOf[stor6] > 10^18 * arg2
    require balanceOf[address(arg1)] + (10^18 * arg2) > balanceOf[address(arg1)]
    balanceOf[stor6] += -1 * 10^18 * arg2
    balanceOf[address(arg1)] += 10^18 * arg2
    emit Transfer((10^18 * arg2), owner, arg1);
    emit TransferSell(10^18 * arg2, Array(len=7, data='Offline'), owner, arg1);
}

function _fallback() payable {
    require remaining > 0
    require icoStatus == 1
    require 10^18 * msg.value / 10^16 * ethRate / 10 < remaining
    remaining += -1 * 10^18 * msg.value / 10^16 * ethRate / 10
    collectedAmount += msg.value / 10^18
    require not stor12[stor6]
    require msg.sender
    require balanceOf[stor6] > 10^18 * msg.value / 10^16 * ethRate / 10
    require balanceOf[address(msg.sender)] + (10^18 * msg.value / 10^16 * ethRate / 10) > balanceOf[address(msg.sender)]
    balanceOf[stor6] += -1 * 10^18 * msg.value / 10^16 * ethRate / 10
    balanceOf[address(msg.sender)] += 10^18 * msg.value / 10^16 * ethRate / 10
    emit Transfer((10^18 * msg.value / 10^16 * ethRate / 10), owner, msg.sender);
    emit TransferSell(10^18 * msg.value / 10^16 * ethRate / 10, Array(len=6, data='Online'), owner, msg.sender);
}



}
