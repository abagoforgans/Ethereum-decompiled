contract main {


// =======================  Init code  ======================


mapping of uint256 stor1;
address stor3;
array of uint256 stor4;
array of uint256 stor5;
uint256 stor6;
address stor7;
address stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint8 stor12;
uint32 stor12;
array of uint256 stor13;
uint256 storAC51;
uint256 stor1313;
uint256 stor2606;
uint256 stor335B;
uint256 stor767E;
uint256 stor90D9;
uint256 stor9DCC;
uint256 storE9D2;

function _fallback() payable {
    bool(stor4.length) = 0
    stor4.length.field_1 = 18
    stor4.length.field_8 = 'Royal Kingdom Coin' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor5.length) = 0
    stor5.length.field_1 = 3
    stor5.length.field_8 = 'RKC' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor6 = 18
    stor7 = 0xb79f963f200f85d0e3dd60c82abb8f80b5869cb9
    stor8 = 0x1c01c01c01c01c01c01c01c01c01c01c01c01c01
    stor9 = 0
    stor10 = 0
    stor11 = 0
    stor12 % 16777216 = 0
    require not msg.value
    stor3 = msg.sender
    require stor3 == msg.sender
    require not uint8(stor12)
    uint8(stor12) = 1
    stor1313 = 7508811 * 10^18
    storE9D2 = 4025712 * 10^18
    stor9DCC = 300275 * 10^18
    stor335B = 150000 * 10^18
    stor90D9 = 150000 * 10^18
    stor767E = 25 * 10^18 * 3600
    storAC51 = 75000 * 10^18
    stor2606 = 202 * 10^18
    stor9 = 12300000 * 10^18
    stor1[stor8] = 750 * 10^18 * 24 * 3600
    stor10 = stor1[stor8]
    stor9 = 15000000 * 10^18
    emit SupplyChanged(0, 15000000 * 10^18);
    stor11 = 2500
    stor13.length = 0
    if not stor13.length <= 0:
        idx = 0
        while stor13.length > idx:
            stor13[idx] = 0
            idx = idx + 1
            continue 
    return code.data[1350 len 6557]
}



// =====================  Runtime code  =====================


const atto = 10^18

const ICO_START_TIME = (416614 * 3600)

const INITIAL_SUPPLY = 15000000 * 10^18

const TEST_MODE = 0


uint256 totalSupply;
mapping of uint256 balance;
mapping of uint256 allowance;
address owner;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
address teamWalletAddress;
address ico_address;
uint256 supply;
uint256 ico_starting_supply;
uint256 currentPriceAttoTokensPerWei;
uint8 stor12;
uint8 stor12; offset 8
uint8 stor12; offset 16
array of uint256 premiumPacks;
mapping of uint256 balancePremiumsPaid;
uint256 storAC51;
uint256 stor1313;
uint256 stor2606;
uint256 stor335B;
uint256 stor767E;
uint256 stor90D9;
uint256 stor9DCC;
uint256 storE9D2;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function ico_address() {
    return ico_address
}

function isICOOpened() {
    return bool(uint8(stor12.field_8))
}

function decimals() {
    return decimals
}

function current_price_atto_tokens_per_wei() {
    return currentPriceAttoTokensPerWei
}

function teamWallet() {
    return teamWalletAddress
}

function getPremiumCount() {
    return premiumPacks.length
}

function preSoldSharesDistributed() {
    return bool(uint8(stor12.field_0))
}

function current_supply() {
    return supply
}

function getSupply() {
    return supply
}

function balanceOf(address arg1) {
    return balance[address(arg1)]
}

function owner() {
    return owner
}

function getBalancePremiumsPaid(address arg1) {
    return balancePremiumsPaid[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function getPremiumPack(uint256 arg1) {
    require arg1 < premiumPacks.length
    return premiumPacks[arg1]
}

function getCurrentPriceAttoTokensPerWei() {
    return currentPriceAttoTokensPerWei
}

function isICOClosed() {
    return bool(uint8(stor12.field_16))
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function getAttoTokensLeftForICO() {
    return balance[stor8]
}

function ico_starting_supply() {
    return ico_starting_supply
}

function premiumPacks(uint256 arg1) {
    require arg1 < premiumPacks.length
    return premiumPacks[arg1]
}

function getBalance(address arg1) {
    return balance[address(arg1)]
}

function getAttoTokensBoughtInICO() {
    return (ico_starting_supply - balance[stor8])
}

function getAttoTokensAmountPerWei(uint256 arg1) {
    return (arg1 * currentPriceAttoTokensPerWei)
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function getAttoTokensAmountPerWeiInternal(uint256 arg1) payable {
    return (arg1 * currentPriceAttoTokensPerWei)
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
}

function openICO() {
    require owner == msg.sender
    require not uint8(stor12.field_8)
    require not uint8(stor12.field_16)
    uint8(stor12.field_8) = 1
    emit ICOOpened()
}

function calculateCurrentPrice(uint256 arg1) {
    require (arg1 / 10^18) + 150000
    require 136 <= 395500000 / (arg1 / 10^18) + 150000
    return ((395500000 / (arg1 / 10^18) + 150000) - 136)
}

function pullEtherFromContract() {
    require owner == msg.sender
    require uint8(stor12.field_16)
    call teamWalletAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function closeICO() {
    require owner == msg.sender
    require not uint8(stor12.field_16)
    require uint8(stor12.field_8)
    uint8(stor12.field_8) = 0
    uint8(stor12.field_16) = 1
    premiumPacks.length = 1
    if not premiumPacks.length <= 1:
        idx = 1
        while premiumPacks.length > idx:
            premiumPacks[idx] = 0
            idx = idx + 1
            continue 
    require 0 < premiumPacks.length
    premiumPacks = balance[stor8]
    balance[stor8] = 0
    emit ICOClosed()
}

function distributePreSoldShares() {
    require owner == msg.sender
    require not uint8(stor12.field_0)
    uint8(stor12.field_0) = 1
    stor1313 = 7508811 * 10^18
    storE9D2 = 4025712 * 10^18
    stor9DCC = 300275 * 10^18
    stor335B = 150000 * 10^18
    stor90D9 = 150000 * 10^18
    stor767E = 25 * 10^18 * 3600
    storAC51 = 75000 * 10^18
    stor2606 = 202 * 10^18
    supply = 12300000 * 10^18
    balance[stor8] = 750 * 10^18 * 24 * 3600
    ico_starting_supply = balance[stor8]
    supply = 15000000 * 10^18
    emit SupplyChanged(0, 15000000 * 10^18);
}

function sendPremiumPack(uint256 arg1) {
    require owner == msg.sender
    require not uint8(stor12.field_8)
    require uint8(stor12.field_16)
    if balance[address(msg.sender)] > supply / 100:
        if block.timestamp <= 416614 * 3600:
            require arg1 <= supply / 20 * -block.timestamp + (416614 * 3600) / 720 * 24 * 3600
        else:
            require arg1 <= supply / 20 * block.timestamp - (416614 * 3600) / 720 * 24 * 3600
    premiumPacks.length++
    if not premiumPacks.length <= premiumPacks.length + 1:
        idx = premiumPacks.length + 1
        while premiumPacks.length > idx:
            premiumPacks[idx] = 0
            idx = idx + 1
            continue 
    require premiumPacks.length - 1 < premiumPacks.length
    premiumPacks[premiumPacks.length] = arg1
    require arg1 <= balance[address(msg.sender)]
    balance[address(msg.sender)] -= arg1
}

function buy() payable {
    require msg.value
    require uint8(stor12.field_8)
    require not uint8(stor12.field_16)
    require msg.value * currentPriceAttoTokensPerWei <= supply / 100
    require msg.value * currentPriceAttoTokensPerWei <= balance[stor8]
    require msg.value * currentPriceAttoTokensPerWei <= balance[stor8]
    balance[stor8] += -1 * msg.value * currentPriceAttoTokensPerWei
    require (msg.value * currentPriceAttoTokensPerWei) + balance[msg.sender] >= balance[msg.sender]
    balance[address(msg.sender)] = (msg.value * currentPriceAttoTokensPerWei) + balance[msg.sender]
    require (ico_starting_supply - balance[stor8] / 10^18) + 150000
    require 136 <= 395500000 / (ico_starting_supply - balance[stor8] / 10^18) + 150000
    currentPriceAttoTokensPerWei = (395500000 / (ico_starting_supply - balance[stor8] / 10^18) + 150000) - 136
    if not (395500000 / (ico_starting_supply - balance[stor8] / 10^18) + 150000) - 136:
        currentPriceAttoTokensPerWei = 1
    if currentPriceAttoTokensPerWei != currentPriceAttoTokensPerWei:
        emit PriceChanged(currentPriceAttoTokensPerWei, currentPriceAttoTokensPerWei);
    emit RKCAcquired(msg.sender, msg.value, msg.value * currentPriceAttoTokensPerWei);
}

function _fallback() payable {
    require msg.value
    require uint8(stor12.field_8)
    require not uint8(stor12.field_16)
    require msg.value * currentPriceAttoTokensPerWei <= supply / 100
    require msg.value * currentPriceAttoTokensPerWei <= balance[stor8]
    require msg.value * currentPriceAttoTokensPerWei <= balance[stor8]
    balance[stor8] += -1 * msg.value * currentPriceAttoTokensPerWei
    require (msg.value * currentPriceAttoTokensPerWei) + balance[msg.sender] >= balance[msg.sender]
    balance[address(msg.sender)] = (msg.value * currentPriceAttoTokensPerWei) + balance[msg.sender]
    require (ico_starting_supply - balance[stor8] / 10^18) + 150000
    require 136 <= 395500000 / (ico_starting_supply - balance[stor8] / 10^18) + 150000
    currentPriceAttoTokensPerWei = (395500000 / (ico_starting_supply - balance[stor8] / 10^18) + 150000) - 136
    if not (395500000 / (ico_starting_supply - balance[stor8] / 10^18) + 150000) - 136:
        currentPriceAttoTokensPerWei = 1
    if currentPriceAttoTokensPerWei != currentPriceAttoTokensPerWei:
        emit PriceChanged(currentPriceAttoTokensPerWei, currentPriceAttoTokensPerWei);
    emit RKCAcquired(msg.sender, msg.value, msg.value * currentPriceAttoTokensPerWei);
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    require not uint8(stor12.field_8)
    require uint8(stor12.field_16)
    if balance[address(msg.sender)] > supply / 100:
        if block.timestamp <= 416614 * 3600:
            require arg2 <= supply / 20 * -block.timestamp + (416614 * 3600) / 720 * 24 * 3600
        else:
            require arg2 <= supply / 20 * block.timestamp - (416614 * 3600) / 720 * 24 * 3600
    if premiumPacks.length > balancePremiumsPaid[address(msg.sender)]:
        mem[0] = msg.sender
        mem[32] = 14
        s = 0
        idx = stor[sha3(mem[0 len 64])]
        while idx <= premiumPacks.length - 1:
            if not supply:
                s = s
                idx = idx + 1
                continue 
            require idx < premiumPacks.length
            require supply
            require (balance[address(msg.sender)] * premiumPacks[idx] / supply) + balance[address(msg.sender)] >= balance[address(msg.sender)]
            mem[0] = msg.sender
            mem[32] = 1
            balance[address(msg.sender)] += balance[address(msg.sender)] * premiumPacks[idx] / supply
            s = balance[address(msg.sender)] * premiumPacks[idx] / supply
            idx = idx + 1
            continue 
        balancePremiumsPaid[address(msg.sender)] = premiumPacks.length
    if premiumPacks.length > balancePremiumsPaid[address(arg1)]:
        mem[0] = arg1
        mem[32] = 14
        s = 0
        idx = stor[sha3(mem[0 len 64])]
        while idx <= premiumPacks.length - 1:
            if not supply:
                s = s
                idx = idx + 1
                continue 
            require idx < premiumPacks.length
            require supply
            require (balance[address(arg1)] * premiumPacks[idx] / supply) + balance[address(arg1)] >= balance[address(arg1)]
            mem[0] = arg1
            mem[32] = 1
            balance[address(arg1)] += balance[address(arg1)] * premiumPacks[idx] / supply
            s = balance[address(arg1)] * premiumPacks[idx] / supply
            idx = idx + 1
            continue 
        balancePremiumsPaid[address(arg1)] = premiumPacks.length
    require calldata.size >= 68
    require arg2 <= balance[address(msg.sender)]
    balance[address(msg.sender)] -= arg2
    require arg2 + balance[arg1] >= balance[arg1]
    balance[address(arg1)] = arg2 + balance[arg1]
    emit Transfer(arg2, msg.sender, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor12.field_8)
    require uint8(stor12.field_16)
    if balance[address(arg1)] > supply / 100:
        if block.timestamp <= 416614 * 3600:
            require arg3 <= supply / 20 * -block.timestamp + (416614 * 3600) / 720 * 24 * 3600
        else:
            require arg3 <= supply / 20 * block.timestamp - (416614 * 3600) / 720 * 24 * 3600
    if premiumPacks.length > balancePremiumsPaid[address(arg1)]:
        mem[0] = arg1
        mem[32] = 14
        s = 0
        idx = stor[sha3(mem[0 len 64])]
        while idx <= premiumPacks.length - 1:
            if not supply:
                s = s
                idx = idx + 1
                continue 
            require idx < premiumPacks.length
            require supply
            require (balance[address(arg1)] * premiumPacks[idx] / supply) + balance[address(arg1)] >= balance[address(arg1)]
            mem[0] = arg1
            mem[32] = 1
            balance[address(arg1)] += balance[address(arg1)] * premiumPacks[idx] / supply
            s = balance[address(arg1)] * premiumPacks[idx] / supply
            idx = idx + 1
            continue 
        balancePremiumsPaid[address(arg1)] = premiumPacks.length
    if premiumPacks.length > balancePremiumsPaid[address(arg2)]:
        mem[0] = arg2
        mem[32] = 14
        s = 0
        idx = stor[sha3(mem[0 len 64])]
        while idx <= premiumPacks.length - 1:
            if not supply:
                s = s
                idx = idx + 1
                continue 
            require idx < premiumPacks.length
            require supply
            require (balance[address(arg2)] * premiumPacks[idx] / supply) + balance[address(arg2)] >= balance[address(arg2)]
            mem[0] = arg2
            mem[32] = 1
            balance[address(arg2)] += balance[address(arg2)] * premiumPacks[idx] / supply
            s = balance[address(arg2)] * premiumPacks[idx] / supply
            idx = idx + 1
            continue 
        balancePremiumsPaid[address(arg2)] = premiumPacks.length
    require arg3 + balance[address(arg2)] >= balance[address(arg2)]
    balance[address(arg2)] += arg3
    require arg3 <= balance[arg1]
    balance[address(arg1)] = balance[arg1] - arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
}



}
