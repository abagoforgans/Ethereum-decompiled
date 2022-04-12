contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
array of uint256 stor3;
array of uint256 stor4;
uint256 stor5;
address stor8;
address stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint8 stor16;
uint256 stor16; offset 16
uint256 stor16; offset 8

function _fallback() payable {
    bool(stor3.length) = 0
    stor3.length.field_1 = 12
    stor3.length.field_8 = 'iProud Token' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor4.length) = 0
    stor4.length.field_1 = 6
    stor4.length.field_8 = 'iProud' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor5 = 18
    stor8 = 0
    stor9 = 0
    stor10 = 2546 * 10^6
    stor11 = 2 * 10^17
    stor12 = 10^17
    stor13 = 15 * 10^16
    stor14 = 25 * 10^16
    stor15 = 3 * 10^17
    uint8(stor16.field_0) = 0
    Mask(248, 0, stor16.field_8) = 0
    Mask(240, 0, stor16.field_16) = 0
    require not msg.value
    stor8 = msg.sender
    stor0[address(msg.sender)] = 88888888
    return code.data[793 len 5444]
}



// =====================  Runtime code  =====================


const price = 30000


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 startBlock;
uint256 endBlock;
address founderAddress;
address signerAddress;
uint256 totalCap;
uint256 icoCap;
uint256 preIcoCap;
uint256 devAllocation;
uint256 founderAllocation;
uint256 ecosystemAllocation;
uint8 founderAllocated;
uint8 ecosystemAllocated; offset 8
uint8 halted; offset 16
uint256 stor16; offset 16

function name() {
    return name[0 len name.length]
}

function endBlock() {
    return endBlock
}

function totalCap() {
    return totalCap
}

function totalSupply() {
    return totalSupply
}

function signer() {
    return signerAddress
}

function decimals() {
    return decimals
}

function startBlock() {
    return startBlock
}

function devAllocation() {
    return devAllocation
}

function founder() {
    return founderAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function ecosystemAllocated() {
    return bool(ecosystemAllocated)
}

function founderAllocation() {
    return founderAllocation
}

function symbol() {
    return symbol[0 len symbol.length]
}

function founderAllocated() {
    return bool(founderAllocated)
}

function halted() {
    return bool(halted)
}

function ecosystemAllocation() {
    return ecosystemAllocation
}

function preIcoCap() {
    return preIcoCap
}

function icoCap() {
    return icoCap
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function halt() {
    require msg.sender == founderAddress
    stor16 = 1
}

function unhalt() {
    require msg.sender == founderAddress
    stor16 = 0
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
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
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function allocateFounderTokens() {
    require msg.sender == founderAddress
    require not founderAllocated
    require balanceOf[address(msg.sender)] + (totalCap * founderAllocation / 10^18) >= balanceOf[address(msg.sender)]
    require balanceOf[address(msg.sender)] + (totalCap * founderAllocation / 10^18) >= totalCap * founderAllocation / 10^18
    balanceOf[address(msg.sender)] += totalCap * founderAllocation / 10^18
    require totalSupply + (totalCap * founderAllocation / 10^18) >= totalSupply
    require totalSupply + (totalCap * founderAllocation / 10^18) >= totalCap * founderAllocation / 10^18
    totalSupply += totalCap * founderAllocation / 10^18
    founderAllocated = 1
    emit AllocateFounderTokens(msg.sender);
}

function sub_55c0aabf(?) {
    if msg.value / 10^18:
        require msg.value / 10^18
        require 30000 * msg.value / 10^18 / msg.value / 10^18 == 30000
    require totalSupply + (30000 * msg.value / 10^18) >= totalSupply
    require totalSupply + (30000 * msg.value / 10^18) >= 30000 * msg.value / 10^18
    require totalSupply + (30000 * msg.value / 10^18) <= totalCap
    require balanceOf[address(arg1)] + (30000 * msg.value / 10^18) >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + (30000 * msg.value / 10^18) >= 30000 * msg.value / 10^18
    balanceOf[address(arg1)] += 30000 * msg.value / 10^18
    require totalSupply + (30000 * msg.value / 10^18) >= totalSupply
    require totalSupply + (30000 * msg.value / 10^18) >= 30000 * msg.value / 10^18
    totalSupply += 30000 * msg.value / 10^18
    call founderAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Buy(msg.value, 30000 * msg.value / 10^18, arg1);
}

function _fallback() payable {
    if msg.value / 10^18:
        require msg.value / 10^18
        require 30000 * msg.value / 10^18 / msg.value / 10^18 == 30000
    require totalSupply + (30000 * msg.value / 10^18) >= totalSupply
    require totalSupply + (30000 * msg.value / 10^18) >= 30000 * msg.value / 10^18
    require totalSupply + (30000 * msg.value / 10^18) <= totalCap
    require balanceOf[address(msg.sender)] + (30000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
    require balanceOf[address(msg.sender)] + (30000 * msg.value / 10^18) >= 30000 * msg.value / 10^18
    balanceOf[address(msg.sender)] += 30000 * msg.value / 10^18
    require totalSupply + (30000 * msg.value / 10^18) >= totalSupply
    require totalSupply + (30000 * msg.value / 10^18) >= 30000 * msg.value / 10^18
    totalSupply += 30000 * msg.value / 10^18
    call founderAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Buy(msg.value, 30000 * msg.value / 10^18, msg.sender);
}



}
