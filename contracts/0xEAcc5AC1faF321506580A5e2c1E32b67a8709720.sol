contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
address stor3;
array of uint256 stor4;
array of uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
bool stor9; offset 256
uint8 stor9;
uint8 stor9; offset 8
uint256 stor10;

function _fallback() payable {
    mem[128] = 'Veritas Group Limited Equity Tok'
    mem[160] = 'en'
    stor4.length = 69
    s = 0
    idx = 128
    while 162 > idx:
        stor4[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 2
    while stor4.length + 31 / 32 > idx:
        stor4[idx] = 0
        idx = idx + 1
        continue 
    bool(stor5.length) = 0
    stor5.length.field_1 = 4
    stor5.length.field_8 = 'VGLE' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor6 = 8
    stor7 = 251
    stor8 = 251
    uint8(stor9.field_0) = 1
    uint8(stor9.field_8) = 1
    stor9.field_256 % 1 = 0
    stor10 = 12 * 10^15
    require not msg.value
    stor3 = msg.sender
    stor3 = msg.sender
    stor0 = stor10
    stor1[address(msg.sender)] = stor10
    return code.data[538 len 4207]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 buyRate;
uint256 sellRate;
uint8 allowBuying;
uint8 allowSelling; offset 8
uint256 stor9; offset 8
uint256 stor9;

function name() {
    return name[0 len name.length]
}

function allowBuying() {
    return bool(allowBuying)
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function allowSelling() {
    return bool(allowSelling)
}

function sellRate() {
    return sellRate
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
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

function buyRate() {
    return buyRate
}

function Destroy() {
    require owner == msg.sender
    selfdestruct(owner)
}

function ToggleFreezeSelling() {
    require owner == msg.sender
    Mask(248, 0, stor9.field_8) = Mask(248, 0, not allowSelling)
}

function ToggleFreezeBuying() {
    require owner == msg.sender
    uint256(stor9.field_0) = not allowBuying or Mask(248, 8, uint256(stor9.field_0))
}

function ChangeBuyRate(uint256 arg1) {
    require owner == msg.sender
    require arg1 > 0
    buyRate = arg1
    emit BuyRateChanged(buyRate, arg1);
}

function ChangeSellRate(uint256 arg1) {
    require owner == msg.sender
    require arg1 > 0
    sellRate = arg1
    emit SellRateChanged(sellRate, arg1);
}

function RetrieveFunds() {
    require owner == msg.sender
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
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
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require balanceOf[stor3] + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[stor3] + balanceOf[arg1]
    balanceOf[stor3] = 0
    require owner == msg.sender
    if arg1:
        owner = arg1
    emit OwnerTransfered(owner, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function BuyTokens(address arg1) payable {
    require allowBuying
    require arg1
    require owner != arg1
    require msg.value > 0
    if msg.value / 10^18:
        require msg.value / 10^18
        require buyRate * msg.value / 10^18 / msg.value / 10^18 == buyRate
    require (buyRate * msg.value / 10^18) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += buyRate * msg.value / 10^18
    require buyRate * msg.value / 10^18 <= balanceOf[stor3]
    balanceOf[stor3] += -1 * buyRate * msg.value / 10^18
    emit TokenPurchase(msg.value, buyRate * msg.value / 10^18, msg.sender, arg1);
}

function _fallback() payable {
    require allowBuying
    require msg.sender
    require owner != msg.sender
    require msg.value > 0
    if msg.value / 10^18:
        require msg.value / 10^18
        require buyRate * msg.value / 10^18 / msg.value / 10^18 == buyRate
    require (buyRate * msg.value / 10^18) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += buyRate * msg.value / 10^18
    require buyRate * msg.value / 10^18 <= balanceOf[stor3]
    balanceOf[stor3] += -1 * buyRate * msg.value / 10^18
    emit TokenPurchase(msg.value, buyRate * msg.value / 10^18, msg.sender, msg.sender);
}

function SellTokens(uint256 arg1) {
    require allowSelling
    require owner != msg.sender
    require msg.sender
    require arg1 > 0
    require balanceOf[address(msg.sender)] >= arg1
    require arg1 + balanceOf[stor3] >= balanceOf[stor3]
    balanceOf[stor3] += arg1
    require arg1 <= balanceOf[msg.sender]
    balanceOf[address(msg.sender)] = balanceOf[msg.sender] - arg1
    require sellRate
    require arg1 / sellRate > 0
    if arg1 / sellRate:
        require arg1 / sellRate
        require 10^18 * arg1 / sellRate / arg1 / sellRate == 10^18
    call msg.sender with:
       value 10^18 * arg1 / sellRate wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit TokenSold(arg1, msg.sender);
}



}
