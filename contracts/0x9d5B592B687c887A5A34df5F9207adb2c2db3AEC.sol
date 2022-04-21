contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
uint256 stor3;
uint256 stor4;
uint16 stor5; offset 160
address stor5;
uint256 stor6;
uint8 stor7;
uint256 stor7; offset 2
uint256 stor8;
uint256 stor9;
uint256 stor10;
mapping of uint256 stor11;

function _fallback() {
    address(stor5.field_0) = msg.sender
    bool(stor0.length) = 0
    stor0.length.field_1 = 20
    stor0.length.field_8 = 'Ethereum Black Token' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 4
    stor1.length.field_8 = 'ETBT' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 18
    uint16(stor5.field_160) = 0
    stor4 = 0
    stor3 = 3500000 * 10^18
    stor11[address(stor5.field_0)] = 3500000 * 10^18
    stor6 = 5 * 10^(stor2 - 1)
    stor7.field_0 % 4 = 0
    Mask(254, 0, stor7.field_2) = Mask(254, 0, 10^(stor2 - 1))
    stor8 = 10^(stor2 - 1)
    stor9 = 8760 * 24 * 3600
    stor10 = 40 * 10^stor2
    return code.data[536 len 5241]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 funds;
uint8 stor5; offset 160
uint8 stor5; offset 168
address directorAddress;
uint256 claimAmount;
uint256 payAmount;
uint256 feeAmount;
uint256 epoch;
uint256 retentionMax;
mapping of uint256 balances;
mapping of uint256 allowance;
mapping of uint8 stor13;
mapping of uint256 claimed;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function retentionMax() {
    return retentionMax
}

function balances(address arg1) {
    return balances[arg1]
}

function decimals() {
    return decimals
}

function buried(address arg1) {
    return bool(stor13[arg1])
}

function director() {
    return directorAddress
}

function feeAmount() {
    return feeAmount
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function claimAmount() {
    return claimAmount
}

function epoch() {
    return epoch
}

function symbol() {
    return symbol[0 len symbol.length]
}

function saleClosed() {
    return bool(uint8(stor5.field_160))
}

function payAmount() {
    return payAmount
}

function claimed(address arg1) {
    return claimed[arg1]
}

function funds() {
    return funds
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function directorLock() {
    return bool(uint8(stor5.field_168))
}

function transferDirector(address arg1) {
    require directorAddress == msg.sender
    directorAddress = arg1
}

function amendEpoch(uint256 arg1) {
    require not uint8(stor5.field_168)
    require directorAddress == msg.sender
    epoch = arg1
    return 1
}

function openSale() {
    require not uint8(stor5.field_168)
    require directorAddress == msg.sender
    require uint8(stor5.field_160)
    uint8(stor5.field_160) = 0
    return 1
}

function closeSale() {
    require not uint8(stor5.field_168)
    require directorAddress == msg.sender
    require not uint8(stor5.field_160)
    uint8(stor5.field_160) = 1
    return 1
}

function amendRetention(uint8 arg1, uint8 arg2) {
    require not uint8(stor5.field_168)
    require directorAddress == msg.sender
    retentionMax = arg1 * 10^(decimals - arg2)
    return 1
}

function approve(address arg1, uint256 arg2) {
    require not stor13[address(msg.sender)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function withdrawFunds() {
    require directorAddress == msg.sender
    call directorAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function selfLock() payable {
    require not uint8(stor5.field_168)
    require directorAddress == msg.sender
    require uint8(stor5.field_160)
    require msg.value == 10 * 10^18
    uint8(stor5.field_168) = 1
}

function burn(uint256 arg1) {
    require not stor13[address(msg.sender)]
    require balances[address(msg.sender)] >= arg1
    balances[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function bury() {
    require not stor13[address(msg.sender)]
    require balances[address(msg.sender)] >= claimAmount
    require balances[address(msg.sender)] <= retentionMax
    stor13[address(msg.sender)] = 1
    claimed[address(msg.sender)] = 1
    emit Bury(balances[address(msg.sender)], msg.sender);
    return 1
}

function amendClaim(uint8 arg1, uint8 arg2, uint8 arg3, uint8 arg4) {
    require not uint8(stor5.field_168)
    require directorAddress == msg.sender
    require arg1 == uint8(arg2 + arg3)
    claimAmount = 10^(decimals - arg4) * arg1
    payAmount = 10^(decimals - arg4) * arg2
    feeAmount = arg3 * 10^(decimals - arg4)
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require not stor13[address(arg1)]
    require balances[address(arg1)] >= arg2
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    balances[address(arg1)] -= arg2
    allowance[address(arg1)][address(msg.sender)] -= arg2
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function _fallback() payable {
    require not uint8(stor5.field_160)
    require msg.value >= 10^15
    require (10000 * msg.value) + totalSupply <= 4 * 10^6 * 10^decimals
    totalSupply += 10000 * msg.value
    balances[address(msg.sender)] += 10000 * msg.value
    funds += msg.value
    emit Transfer((10000 * msg.value), this.address, msg.sender);
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    require not stor13[address(msg.sender)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor13[address(msg.sender)]
    if stor13[address(arg1)]:
        require arg2 + balances[address(arg1)] <= retentionMax
    require arg1
    require balances[address(msg.sender)] >= arg2
    require balances[address(arg1)] + arg2 > balances[address(arg1)]
    balances[msg.sender] -= arg2
    balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require balances[address(arg1)] + balances[msg.sender] == balances[msg.sender] + balances[address(arg1)]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require not stor13[address(arg1)]
    if stor13[address(arg2)]:
        require arg3 + balances[address(arg2)] <= retentionMax
    require arg2
    require balances[address(arg1)] >= arg3
    require balances[address(arg2)] + arg3 > balances[address(arg2)]
    balances[arg1] -= arg3
    balances[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    require balances[address(arg2)] + balances[arg1] == balances[arg1] + balances[address(arg2)]
    return 1
}

function claim(address arg1, address arg2) {
    require stor13[address(msg.sender)]
    require arg2 != arg1
    require arg1 != msg.sender
    require arg2 != msg.sender
    if claimed[address(msg.sender)] != 1:
        require block.timestamp - claimed[address(msg.sender)] >= epoch
    require balances[address(msg.sender)] >= claimAmount
    claimed[address(msg.sender)] = block.timestamp
    balances[msg.sender] -= claimAmount
    balances[arg1] += payAmount
    balances[address(arg2)] += feeAmount
    emit Claim(msg.sender, arg1, arg2);
    emit Transfer(payAmount, msg.sender, arg1);
    emit Transfer(feeAmount, msg.sender, arg2);
    require balances[address(arg2)] + balances[arg1] + balances[msg.sender] == balances[arg1] + balances[msg.sender] + balances[address(arg2)]
    return 1
}



}
