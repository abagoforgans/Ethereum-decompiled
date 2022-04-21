contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
address stor7;
uint256 stor8;

function _fallback() payable {
    uint8(stor0.field_160) = 0
    stor2 = 40000 * 10^18
    stor3 = 0
    stor4 = 0
    stor5 = 0
    stor6 = 1510560780
    stor7 = 0
    mem[96] = 15
    mem[128] = 10
    mem[160] = 5
    mem[192] = 3
    s = 0
    idx = 96
    while 224 > idx:
        stor8 = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and stor8
        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
        idx = idx + 32
        continue 
    idx = 4
    s = 8
    while idx:
        uint256(stor[s].field_0) = !(255 * 256^idx) and uint256(stor[s].field_0)
        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
        s = (idx + 1 / 32) + s
        continue 
    idx = (-2 * None + 3 / 32) + (None * None + 3 / 32) + 8
    while 9 > idx:
        uint8(stor[idx].field_0) = 0
        idx = idx + 1
        continue 
    mem[224] = 24 * 3600
    mem[256] = 48 * 24 * 3600
    mem[288] = 168 * 24 * 3600
    mem[320] = 336 * 24 * 3600
    s = 9
    idx = 224
    while 352 > idx:
        stor[s].field_0 % 16777216 = mem[idx + 29 len 3]
        Mask(232, 0, stor[s].field_24) = 0
        s = s + 1
        idx = idx + 32
        continue 
    idx = 13
    while 13 > idx:
        uint256(stor[idx].field_0) = 0
        idx = idx + 1
        continue 
    require not msg.value
    address(stor0.field_0) = msg.sender
    return code.data[588 len 5527]
}



// =====================  Runtime code  =====================


const getContractEtherBalance = eth.balance(this.address)

const ICO_START_TIME = 1510560780

const TOTAL_SUPPLY = 34540000 * 10^18

const NAME = 'Pulsar'

const TOKEN_SCALE = 10^18

const MIN_ACCEPTED_VALUE = 10^18

const MIN_BUYBACK_VALUE = 10^18

const SYMBOL = 'PVC'


uint8 contractState; offset 160
address owner;
mapping of uint256 contractTokenBalance;
uint256 bountyTokens;
uint256 sellingPrice;
uint256 buybackPrice;
uint256 etherAccumulator;
uint256 icoStartTime;
address trustedSenderAddress;
array of uint8 stor8;
array of uint256 stor9;

function sellingPrice() {
    return sellingPrice
}

function bountyTokens() {
    return bountyTokens
}

function getContractTokenBalance() {
    return contractTokenBalance[address(this.address)]
}

function getTokenBalance(address arg1) {
    require arg1
    return contractTokenBalance[address(arg1)]
}

function etherAccumulator() {
    return etherAccumulator
}

function trustedSender() {
    return trustedSenderAddress
}

function balanceOf(address arg1) {
    return contractTokenBalance[arg1]
}

function getContractState() {
    require contractState <= 5
    return contractState
}

function owner() {
    return owner
}

function buybackPrice() {
    return buybackPrice
}

function icoStartTime() {
    return icoStartTime
}

function destroyContract() {
    require owner == msg.sender
    require contractState <= 5
    require contractState == 4
    contractState = 5
    require contractState <= 5
    emit State(contractState);
    selfdestruct(owner)
}

function calcTokensToEthers(uint256 arg1) {
    return (arg1 * buybackPrice / 10^18)
}

function getEtherBalance(address arg1) {
    require arg1
    return eth.balance(arg1)
}

function setICOStartTime(uint256 arg1) {
    require owner == msg.sender
    icoStartTime = arg1
}

function calcAmountWithBonus(uint256 arg1, uint8 arg2) {
    return (arg1 * uint8(arg2 + 100) / 100)
}

function setTrustedSender(address arg1) {
    require owner == msg.sender
    trustedSenderAddress = arg1
}

function getDistributedTokens() {
    return (-contractTokenBalance[address(this.address)] + 34540000 * 10^18)
}

function setSellingPrice(uint256 arg1) {
    require owner == msg.sender
    require arg1
    sellingPrice = arg1
}

function setBuybackPrice(uint256 arg1) {
    require owner == msg.sender
    require arg1 > 0
    buybackPrice = arg1
}

function calcEthersToTokens(uint256 arg1, uint8 arg2) {
    require sellingPrice
    return (10^18 * arg1 / sellingPrice * uint8(arg2 + 100) / 100)
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function stopICO() {
    require owner == msg.sender
    require contractState <= 5
    require contractState == 1
    contractState = 2
    require contractState <= 5
    emit State(contractState);
}

function pauseBuyback() {
    require owner == msg.sender
    require contractState <= 5
    require contractState == 3
    contractState = 4
    require contractState <= 5
    emit State(contractState);
}

function transferEthersToOwner(uint256 arg1) {
    require owner == msg.sender
    require eth.balance(this.address) >= arg1
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function calcBonusPercent() {
    idx = 0
    while uint8(idx) < 4:
        if block.timestamp - icoStartTime > stor9[uint8(idx)]:
            idx = idx + 1
            continue 
        require uint8(idx) < 4
        return stor8[uint8(idx)]
    return 0
}

function startICO(uint256 arg1) {
    require owner == msg.sender
    require contractState <= 5
    require not contractState
    require owner == msg.sender
    require arg1
    sellingPrice = arg1
    contractTokenBalance[address(this.address)] = 34540000 * 10^18
    contractState = 1
    require contractState <= 5
    emit State(contractState);
}

function enableBuyback(uint256 arg1) {
    require owner == msg.sender
    require contractState <= 5
    if contractState != 2:
        require contractState <= 5
        require contractState == 4
    require owner == msg.sender
    require arg1 > 0
    buybackPrice = arg1
    contractState = 3
    require contractState <= 5
    emit State(contractState);
}

function transferTokens(address arg1, uint256 arg2) {
    if owner != msg.sender:
        require trustedSenderAddress == msg.sender
    require contractState <= 5
    require contractState == 1
    require block.timestamp >= icoStartTime
    require arg1
    require arg2 > 0
    require contractTokenBalance[address(this.address)] >= arg2
    require contractTokenBalance[address(arg1)] + arg2 > contractTokenBalance[address(arg1)]
    contractTokenBalance[address(this.address)] -= arg2
    contractTokenBalance[arg1] += arg2
    emit Transfer(arg2, this.address, arg1);
}

function grantBounty(address arg1, uint256 arg2) {
    require owner == msg.sender
    require contractState <= 5
    if contractState != 1:
        require contractState <= 5
        require contractState == 2
    require bountyTokens >= arg2
    require block.timestamp >= icoStartTime
    require arg1
    require arg2 > 0
    require contractTokenBalance[address(this.address)] >= arg2
    require contractTokenBalance[address(arg1)] + arg2 > contractTokenBalance[address(arg1)]
    contractTokenBalance[address(this.address)] -= arg2
    contractTokenBalance[arg1] += arg2
    emit Transfer(arg2, this.address, arg1);
    bountyTokens -= arg2
}

function buyback(uint256 arg1) {
    require contractState <= 5
    require contractState == 3
    require buybackPrice > 0
    require arg1 >= 10^18
    require owner != msg.sender
    require eth.balance(this.address) >= arg1 * buybackPrice / 10^18
    require this.address
    require arg1 > 0
    require contractTokenBalance[address(msg.sender)] >= arg1
    require contractTokenBalance[address(this.address)] + arg1 > contractTokenBalance[address(this.address)]
    contractTokenBalance[address(msg.sender)] -= arg1
    contractTokenBalance[this.address] += arg1
    emit Transfer(arg1, msg.sender, this.address);
    call msg.sender with:
       value arg1 * buybackPrice / 10^18 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function refundInvestment(address arg1, uint256 arg2) {
    require owner == msg.sender
    require contractState <= 5
    if contractState != 2:
        require contractState <= 5
        require contractState == 4
    require owner != arg1
    require arg1 != this.address
    require contractTokenBalance[address(arg1)] > 0
    require eth.balance(this.address) >= arg2
    require this.address
    require contractTokenBalance[address(arg1)] > 0
    require contractTokenBalance[address(arg1)] >= contractTokenBalance[address(arg1)]
    require contractTokenBalance[address(this.address)] + contractTokenBalance[address(arg1)] > contractTokenBalance[address(this.address)]
    contractTokenBalance[address(arg1)] = 0
    contractTokenBalance[this.address] += contractTokenBalance[address(arg1)]
    emit Transfer(contractTokenBalance[address(arg1)], arg1, this.address);
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function invest() payable {
    require contractState <= 5
    require contractState == 1
    require block.timestamp >= icoStartTime
    require msg.value >= 10^18
    idx = 0
    while uint8(idx) < 4:
        if block.timestamp - icoStartTime > stor9[uint8(idx)]:
            idx = idx + 1
            continue 
        require uint8(idx) < 4
        require sellingPrice
        require contractTokenBalance[address(this.address)] >= 10^18 * msg.value / sellingPrice * uint8(stor8[uint8(idx)] + 100) / 100
        require msg.sender
        require 10^18 * msg.value / sellingPrice * uint8(stor8[uint8(idx)] + 100) / 100 > 0
        require contractTokenBalance[address(this.address)] >= 10^18 * msg.value / sellingPrice * uint8(stor8[uint8(idx)] + 100) / 100
        require contractTokenBalance[address(msg.sender)] + (10^18 * msg.value / sellingPrice * uint8(stor8[uint8(idx)] + 100) / 100) > contractTokenBalance[address(msg.sender)]
        contractTokenBalance[address(this.address)] -= 10^18 * msg.value / sellingPrice * uint8(stor8[uint8(idx)] + 100) / 100
        contractTokenBalance[msg.sender] += 10^18 * msg.value / sellingPrice * uint8(stor8[uint8(idx)] + 100) / 100
        emit Transfer((10^18 * msg.value / sellingPrice * uint8(stor8[uint8(idx)] + 100) / 100), this.address, msg.sender);
        etherAccumulator += msg.value
    require sellingPrice
    require contractTokenBalance[address(this.address)] >= 100 * 10^18 * msg.value / sellingPrice / 100
    require msg.sender
    require 100 * 10^18 * msg.value / sellingPrice / 100 > 0
    require contractTokenBalance[address(this.address)] >= 100 * 10^18 * msg.value / sellingPrice / 100
    require contractTokenBalance[address(msg.sender)] + (100 * 10^18 * msg.value / sellingPrice / 100) > contractTokenBalance[address(msg.sender)]
    contractTokenBalance[address(this.address)] -= 100 * 10^18 * msg.value / sellingPrice / 100
    contractTokenBalance[msg.sender] += 100 * 10^18 * msg.value / sellingPrice / 100
    emit Transfer((100 * 10^18 * msg.value / sellingPrice / 100), this.address, msg.sender);
    etherAccumulator += msg.value
}

function _fallback() payable {
    require contractState <= 5
    require contractState == 1
    require block.timestamp >= icoStartTime
    require msg.value >= 10^18
    idx = 0
    while uint8(idx) < 4:
        if block.timestamp - icoStartTime > stor9[uint8(idx)]:
            idx = idx + 1
            continue 
        require uint8(idx) < 4
        require sellingPrice
        require contractTokenBalance[address(this.address)] >= 10^18 * msg.value / sellingPrice * uint8(stor8[uint8(idx)] + 100) / 100
        require msg.sender
        require 10^18 * msg.value / sellingPrice * uint8(stor8[uint8(idx)] + 100) / 100 > 0
        require contractTokenBalance[address(this.address)] >= 10^18 * msg.value / sellingPrice * uint8(stor8[uint8(idx)] + 100) / 100
        require contractTokenBalance[address(msg.sender)] + (10^18 * msg.value / sellingPrice * uint8(stor8[uint8(idx)] + 100) / 100) > contractTokenBalance[address(msg.sender)]
        contractTokenBalance[address(this.address)] -= 10^18 * msg.value / sellingPrice * uint8(stor8[uint8(idx)] + 100) / 100
        contractTokenBalance[msg.sender] += 10^18 * msg.value / sellingPrice * uint8(stor8[uint8(idx)] + 100) / 100
        emit Transfer((10^18 * msg.value / sellingPrice * uint8(stor8[uint8(idx)] + 100) / 100), this.address, msg.sender);
        etherAccumulator += msg.value
    require sellingPrice
    require contractTokenBalance[address(this.address)] >= 100 * 10^18 * msg.value / sellingPrice / 100
    require msg.sender
    require 100 * 10^18 * msg.value / sellingPrice / 100 > 0
    require contractTokenBalance[address(this.address)] >= 100 * 10^18 * msg.value / sellingPrice / 100
    require contractTokenBalance[address(msg.sender)] + (100 * 10^18 * msg.value / sellingPrice / 100) > contractTokenBalance[address(msg.sender)]
    contractTokenBalance[address(this.address)] -= 100 * 10^18 * msg.value / sellingPrice / 100
    contractTokenBalance[msg.sender] += 100 * 10^18 * msg.value / sellingPrice / 100
    emit Transfer((100 * 10^18 * msg.value / sellingPrice / 100), this.address, msg.sender);
    etherAccumulator += msg.value
}



}
