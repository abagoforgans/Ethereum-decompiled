contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
array of uint256 stor2;
array of uint256 stor3;
uint8 stor4;
uint256 stor5;
uint256 stor6;
mapping of uint8 stor7;
bool stor8; offset 256
uint8 stor8;
uint8 stor8; offset 8
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
address stor13;
address stor14;
address stor15;

function _fallback() payable {
    bool(stor2.length) = 0
    stor2.length.field_1 = 17
    stor2.length.field_8 = 'CryptoBazar Token' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor3.length) = 0
    stor3.length.field_1 = 3
    stor3.length.field_8 = 'CBZ' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor4 = 8
    stor5 = 10^9 * 10^8
    stor6 = 10^15
    uint8(stor8.field_0) = 1
    uint8(stor8.field_8) = 0
    stor8.field_256 % 1 = 0
    stor9 = 0
    stor10 = 0
    stor11 = 0
    stor12 = 0
    stor13 = 0
    stor14 = 0
    stor15 = 0
    stor13 = code.data[5791 len 20]
    stor14 = code.data[5823 len 20]
    stor15 = code.data[5855 len 20]
    stor0[code.data[5791 len 20]] = 0
    stor0[stor14] = 0
    stor0[stor15] = 0
    stor7[stor13] = 1
    stor7[stor14] = 1
    stor7[stor15] = 1
    return code.data[672 len 5107]
}



// =====================  Runtime code  =====================


const isToken = 1


mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 price;
mapping of uint8 stor7;
uint8 stor8;
uint8 stor8; offset 8
uint256 stor8; offset 8
uint256 statsEthereumRaised;
uint256 statsSold;
uint256 statsMinted;
uint256 statsTotal;
address owner;
address minterAddress;
address walletAddress;

function name() {
    return name[0 len name.length]
}

function minter() {
    return minterAddress
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function StatsSold() {
    return statsSold
}

function StatsEthereumRaised() {
    return statsEthereumRaised
}

function sellPrice() {
    return price
}

function wallet() {
    return walletAddress
}

function allowedTransfer(address arg1) {
    return bool(stor7[arg1])
}

function StatsTotal() {
    return statsTotal
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function TransferAllowed() {
    return bool(uint8(stor8.field_0))
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function price() {
    return price
}

function CrowdsalePaused() {
    return bool(uint8(stor8.field_8))
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function StatsMinted() {
    return statsMinted
}

function setTransferAllowance(bool arg1) {
    require owner == msg.sender
    uint8(stor8.field_0) = uint8(arg1)
}

function eventPause(bool arg1) {
    require owner == msg.sender
    Mask(248, 0, stor8.field_8) = Mask(248, 0, arg1)
}

function allowTransfer(address arg1, bool arg2) {
    require owner == msg.sender
    stor7[address(arg1)] = uint8(arg2)
}

function changeOwner(address arg1) {
    require owner == msg.sender
    balanceOf[arg1] = balanceOf[stor13]
    balanceOf[stor13] = 0
    owner = arg1
}

function setTokenPrice(uint256 arg1) {
    require owner == msg.sender
    price = arg1
    emit PriceChanged(Array(len=13, data='New price is '), arg1);
}

function changeMinter(address arg1) {
    require owner == msg.sender
    balanceOf[arg1] = balanceOf[stor14]
    balanceOf[stor14] = 0
    minterAddress = arg1
}

function changeWallet(address arg1) {
    require owner == msg.sender
    balanceOf[arg1] = balanceOf[stor15]
    balanceOf[stor15] = 0
    walletAddress = arg1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseTokens(address arg1, uint256 arg2) {
    require minterAddress == msg.sender
    require arg2 > 0
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= statsMinted
    statsMinted -= arg2
    require arg2 <= statsTotal
    statsTotal -= arg2
    emit Transfer(arg2, arg1, 0);
    emit Burn(arg2, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if not uint8(stor8.field_0):
        require stor7[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    require arg2 + balanceOf[arg1] >= arg2
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if not uint8(stor8.field_0):
        require stor7[address(msg.sender)]
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    require arg3 + balanceOf[address(arg2)] >= arg3
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function mintTokens(address arg1, uint256 arg2) {
    require minterAddress == msg.sender
    require arg2 > 0
    require arg2 + statsTotal >= statsTotal
    require arg2 + statsTotal >= arg2
    require arg2 + statsTotal <= totalSupply
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    require arg2 + balanceOf[address(arg1)] >= arg2
    balanceOf[address(arg1)] += arg2
    require arg2 + statsMinted >= statsMinted
    require arg2 + statsMinted >= arg2
    statsMinted += arg2
    require arg2 + statsTotal >= statsTotal
    require arg2 + statsTotal >= arg2
    statsTotal += arg2
    emit Transfer(arg2, 0, this.address);
    emit Transfer(arg2, this.address, arg1);
    emit Mint(arg2, arg1);
    return 1
}

function _fallback() payable {
    require owner != msg.sender
    require minterAddress != msg.sender
    require walletAddress != msg.sender
    require not uint8(stor8.field_8)
    require msg.value >= price
    require price
    require msg.value / price > 0
    require (msg.value / price) + statsTotal >= statsTotal
    require (msg.value / price) + statsTotal >= msg.value / price
    require (msg.value / price) + statsTotal <= totalSupply
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require (msg.value / price) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    require (msg.value / price) + balanceOf[address(msg.sender)] >= msg.value / price
    balanceOf[address(msg.sender)] += msg.value / price
    require (msg.value / price) + statsSold >= statsSold
    require (msg.value / price) + statsSold >= msg.value / price
    statsSold += msg.value / price
    require (msg.value / price) + statsTotal >= statsTotal
    require (msg.value / price) + statsTotal >= msg.value / price
    statsTotal += msg.value / price
    emit Transfer((msg.value / price), 0, this.address);
    emit Transfer((msg.value / price), this.address, msg.sender);
    require msg.value + statsEthereumRaised >= statsEthereumRaised
    require msg.value + statsEthereumRaised >= msg.value
    statsEthereumRaised += msg.value
    emit Buy(msg.value, msg.value / price, msg.sender);
}

function buy() payable {
    require owner != msg.sender
    require minterAddress != msg.sender
    require walletAddress != msg.sender
    require not uint8(stor8.field_8)
    require msg.value >= price
    require price
    require msg.value / price > 0
    require (msg.value / price) + statsTotal >= statsTotal
    require (msg.value / price) + statsTotal >= msg.value / price
    require (msg.value / price) + statsTotal <= totalSupply
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require (msg.value / price) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    require (msg.value / price) + balanceOf[address(msg.sender)] >= msg.value / price
    balanceOf[address(msg.sender)] += msg.value / price
    require (msg.value / price) + statsSold >= statsSold
    require (msg.value / price) + statsSold >= msg.value / price
    statsSold += msg.value / price
    require (msg.value / price) + statsTotal >= statsTotal
    require (msg.value / price) + statsTotal >= msg.value / price
    statsTotal += msg.value / price
    emit Transfer((msg.value / price), 0, this.address);
    emit Transfer((msg.value / price), this.address, msg.sender);
    require msg.value + statsEthereumRaised >= statsEthereumRaised
    require msg.value + statsEthereumRaised >= msg.value
    statsEthereumRaised += msg.value
    emit Buy(msg.value, msg.value / price, msg.sender);
    return 1
}



}
