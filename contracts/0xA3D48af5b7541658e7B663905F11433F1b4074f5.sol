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
mapping of uint256 stor9;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 12
    stor0.length.field_8 = 'Oyster Pearl' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 4
    stor1.length.field_8 = 'TPRL' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 18
    stor4 = 0
    uint16(stor5.field_160) = 0
    require not msg.value
    address(stor5.field_0) = msg.sender
    stor3 = 101 * 10^6 * 10^stor2
    stor9[address(msg.sender)] = 101 * 10^6 * 10^stor2
    stor6 = 5 * 10^(stor2 - 1)
    stor7.field_0 % 4 = 0
    Mask(254, 0, stor7.field_2) = Mask(254, 0, 10^(stor2 - 1))
    stor8 = 10^(stor2 - 1)
    return code.data[512 len 4405]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 funds;
uint8 stor5; offset 160
uint8 stor5; offset 168
address owner;
uint256 claimAmount;
uint256 payAmount;
uint256 feeAmount;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor11;
mapping of uint256 claimed;

function ownerLock() {
    return bool(uint8(stor5.field_168))
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function buried(address arg1) {
    return bool(stor11[arg1])
}

function feeAmount() {
    return feeAmount
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function claimAmount() {
    return claimAmount
}

function owner() {
    return owner
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

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function openSale() {
    require not uint8(stor5.field_168)
    require block.number < 8 * 10^6
    require owner == msg.sender
    uint8(stor5.field_160) = 0
}

function selfLock() {
    require not uint8(stor5.field_168)
    require block.number < 8 * 10^6
    require owner == msg.sender
    uint8(stor5.field_168) = 1
}

function closeSale() {
    require not uint8(stor5.field_168)
    require block.number < 8 * 10^6
    require owner == msg.sender
    uint8(stor5.field_160) = 1
}

function transferOwnership(address arg1) {
    require not uint8(stor5.field_168)
    require block.number < 8 * 10^6
    require owner == msg.sender
    owner = arg1
}

function burn(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function bury() {
    require balanceOf[address(msg.sender)] > claimAmount
    require not stor11[address(msg.sender)]
    stor11[address(msg.sender)] = 1
    claimed[address(msg.sender)] = 1
    emit Bury(balanceOf[address(msg.sender)], msg.sender);
}

function withdrawFunds() {
    require not uint8(stor5.field_168)
    require block.number < 8 * 10^6
    require owner == msg.sender
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
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

function amendAmount(uint8 arg1, uint8 arg2, uint8 arg3) {
    require not uint8(stor5.field_168)
    require block.number < 8 * 10^6
    require owner == msg.sender
    require arg1 == uint8(arg2 + arg3)
    claimAmount = 10^(decimals - 1) * arg1
    payAmount = 10^(decimals - 1) * arg2
    feeAmount = arg3 * 10^(decimals - 1)
}

function _fallback() payable {
    require not uint8(stor5.field_160)
    require msg.value >= 10^15
    require (5000 * msg.value) + totalSupply <= 500 * 10^6 * 10^decimals
    totalSupply += 5000 * msg.value
    balanceOf[address(msg.sender)] += 5000 * msg.value
    funds += msg.value
    emit Transfer((5000 * msg.value), this.address, msg.sender);
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    require ext_code.size(arg1)
    call arg1.0x8f4ffcb1 with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function claim(address arg1, address arg2) {
    require stor11[address(msg.sender)]
    if claimed[address(msg.sender)] != 1:
        require block.timestamp - claimed[address(msg.sender)] >= 60
    require balanceOf[address(msg.sender)] >= claimAmount
    claimed[address(msg.sender)] = block.timestamp
    balanceOf[address(msg.sender)] -= claimAmount
    balanceOf[arg1] -= payAmount
    balanceOf[arg2] -= feeAmount
    emit Claim(arg1, arg2);
}

function transfer(address arg1, uint256 arg2) {
    require not stor11[address(msg.sender)]
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[msg.sender] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require balanceOf[address(arg1)] + balanceOf[msg.sender] == balanceOf[msg.sender] + balanceOf[address(arg1)]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require not stor11[address(arg1)]
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    balanceOf[arg1] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    require balanceOf[address(arg2)] + balanceOf[arg1] == balanceOf[arg1] + balanceOf[address(arg2)]
    return 1
}



}
