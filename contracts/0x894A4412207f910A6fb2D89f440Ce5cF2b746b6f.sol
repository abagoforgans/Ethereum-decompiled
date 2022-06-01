contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint8 stor2;
array of uint256 stor3;
array of uint256 stor4;
bool stor5; offset 256
uint8 stor5;
uint16 stor5; offset 8
mapping of uint256 stor7;

function _fallback() {
    stor0 = msg.sender
    bool(stor3.length) = 0
    stor3.length.field_1 = 6
    stor3.length.field_8 = 'Platin' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor4.length) = 0
    stor4.length.field_1 = 4
    stor4.length.field_8 = 'PTNX' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 18
    stor1 = 1000000000 * 10^18
    require stor7[address(msg.sender)] + 1000000000 * 10^18 >= stor7[address(msg.sender)]
    stor7[address(msg.sender)] += 1000000000 * 10^18
    uint8(stor5.field_0) = 1
    uint16(stor5.field_8) = 0
    stor5.field_256 % 1 = 0
    return code.data[527 len 4057]
}



// =====================  Runtime code  =====================


address owner;
uint256 totalSupply;
uint8 decimals;
array of uint256 name;
array of uint256 symbol;
bool stor5; offset 256
uint8 stor5;
uint8 stor5; offset 8
uint8 stor5; offset 16
mapping of uint256 allowance;
mapping of uint256 balances;
mapping of uint256 sub_43cf9cb6;

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

function sub_43cf9cb6(?) {
    return sub_43cf9cb6[arg1]
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function tokenTransfersFrozen() {
    return bool(uint8(stor5.field_0))
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function contractLaunched() {
    return bool(uint8(stor5.field_16))
}

function tokenMintingEnabled() {
    return bool(uint8(stor5.field_8))
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
    return 1
}

function thawTokenTransfers() {
    require owner == msg.sender
    uint8(stor5.field_0) = 0
    emit ThawTokenTransfers(1, msg.sender);
    return 1
}

function enableTokenMinting() {
    require owner == msg.sender
    uint8(stor5.field_8) = 1
    emit TokenMintingEnabled(msg.sender, 1);
    return 1
}

function disableTokenMinting() {
    require owner == msg.sender
    uint8(stor5.field_8) = 0
    emit TokenMintingDisabled(msg.sender, 1);
    return 1
}

function freezeTokenTransfers() {
    require owner == msg.sender
    uint8(stor5.field_0) = 1
    emit FreezeTokenTransfers(1, msg.sender);
    return 1
}

function approve(address arg1, uint256 arg2) {
    require arg2 > 0
    require balances[address(msg.sender)] >= arg2
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function launchContract() {
    require owner == msg.sender
    require not uint8(stor5.field_16)
    uint8(stor5.field_0) = 0
    uint8(stor5.field_8) = 1
    uint8(stor5.field_16) = 1
    stor5.field_256 % 1 = 0
    emit LaunchContract(1, msg.sender);
}

function BurnTokens(uint256 arg1) {
    require owner == msg.sender
    require arg1 > 0
    require arg1 <= totalSupply
    require totalSupply - arg1 > 0
    require balances[address(msg.sender)] > arg1
    require arg1 <= balances[address(msg.sender)]
    require balances[address(msg.sender)] - arg1 > 0
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg1
    emit Transfer(arg1, msg.sender, 0);
    return 1
}

function IncreaseSupply(uint256 arg1) {
    require owner == msg.sender
    require uint8(stor5.field_8)
    require arg1 > 0
    require arg1 + totalSupply >= totalSupply
    require arg1 + totalSupply > 0
    require arg1 + totalSupply >= totalSupply
    require arg1 + totalSupply > totalSupply
    require arg1 + totalSupply >= totalSupply
    totalSupply += arg1
    require arg1 + balances[address(msg.sender)] >= balances[address(msg.sender)]
    balances[address(msg.sender)] += arg1
    emit Transfer(arg1, 0, msg.sender);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor5.field_0)
    require arg2 > 0
    require arg1
    require arg2 <= balances[address(msg.sender)]
    require balances[address(msg.sender)] - arg2 >= 0
    require arg2 + balances[address(arg1)] >= balances[address(arg1)]
    require arg2 + balances[address(arg1)] > 0
    require arg2 + balances[address(arg1)] >= balances[address(arg1)]
    require arg2 + balances[address(arg1)] > balances[address(arg1)]
    require arg2 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    require arg2 + balances[arg1] >= balances[arg1]
    balances[address(arg1)] = arg2 + balances[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require not uint8(stor5.field_0)
    require arg3 > 0
    require arg2
    require arg3 <= balances[address(arg1)]
    require balances[address(arg1)] - arg3 >= 0
    require arg3 + balances[address(arg2)] >= balances[address(arg2)]
    require arg3 + balances[address(arg2)] > 0
    require arg3 + balances[address(arg2)] >= balances[address(arg2)]
    require arg3 + balances[address(arg2)] > balances[address(arg2)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg3 <= balances[address(arg1)]
    balances[address(arg1)] -= arg3
    require arg3 + balances[arg2] >= balances[arg2]
    balances[address(arg2)] = arg3 + balances[arg2]
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function multiTransfer(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require owner == msg.sender
    require arg1.length > 0
    require arg1.length == arg2.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _26 = mem[(32 * idx) + 128]
        require idx < arg2.length
        require not uint8(stor5.field_0)
        require mem[(32 * idx) + (32 * arg1.length) + 160] > 0
        require mem[(32 * idx) + 140 len 20]
        require mem[(32 * idx) + (32 * arg1.length) + 160] <= balances[address(msg.sender)]
        require balances[address(msg.sender)] - mem[(32 * idx) + (32 * arg1.length) + 160] >= 0
        require mem[(32 * idx) + (32 * arg1.length) + 160] + balances[address(mem[(32 * idx) + 128])] >= balances[address(mem[(32 * idx) + 128])]
        require mem[(32 * idx) + (32 * arg1.length) + 160] + balances[address(mem[(32 * idx) + 128])] > 0
        require mem[(32 * idx) + (32 * arg1.length) + 160] + balances[address(mem[(32 * idx) + 128])] >= balances[address(mem[(32 * idx) + 128])]
        require mem[(32 * idx) + (32 * arg1.length) + 160] + balances[address(mem[(32 * idx) + 128])] > balances[address(mem[(32 * idx) + 128])]
        require mem[(32 * idx) + (32 * arg1.length) + 160] <= balances[address(msg.sender)]
        balances[address(msg.sender)] -= mem[(32 * idx) + (32 * arg1.length) + 160]
        require mem[(32 * idx) + (32 * arg1.length) + 160] + balances[mem[(32 * idx) + 140 len 20]] >= balances[mem[(32 * idx) + 140 len 20]]
        mem[32] = 7
        balances[address(mem[(32 * idx) + 128])] = mem[(32 * idx) + (32 * arg1.length) + 160] + balances[mem[(32 * idx) + 140 len 20]]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
        emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], msg.sender, address(_26));
        idx = idx + 1
        continue 
    return 1
}



}
