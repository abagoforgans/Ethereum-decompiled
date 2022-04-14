contract main {


// =======================  Init code  ======================


array of uint256 stor0;
uint128 stor1; offset 168
uint128 stor1; offset 160
address stor1;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor11;
uint256 stor15;
mapping of uint256 stor16;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 3
    stor0.length.field_8 = '1.0' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor15 = 2000
    require not msg.value
    Mask(96, 0, stor1.field_160) = 0
    Mask(88, 0, stor1.field_168) = 0
    stor5 = 0
    address(stor1.field_0) = 0x9e8de5be5b046d2c85db22324260d624e0ddadf4
    stor8 = 21250 * 10^18
    stor11 = 898444106206663
    stor6 = 4000
    stor7 = 0
    stor9 = 0
    stor16[address(stor1.field_0)] = 5000000 * 10^18
    emit CreateEVN(5000000 * 10^18, address(stor1.field_0));
    return code.data[730 len 5804]
}



// =====================  Runtime code  =====================


const name = 'EvenCoin'

const currentEthBlock = block.number

const decimals = 18

const founderFund = 5000000 * 10^18

const preMinedFund = 10000000 * 10^18

const symbol = 'EVN'


array of uint256 version;
uint8 stor1; offset 160
uint8 stor1; offset 168
uint128 stor1; offset 168
uint128 stor1; offset 160
address founderAddress;
uint256 firstWeek;
uint256 secondWeek;
uint256 thirdWeek;
uint256 soldCoins;
uint256 totalGenesisAddresses;
uint256 currentGenesisAddresses;
uint256 initialSupplyPerAddress;
uint256 initialBlockCount;
bool stor10;
uint256 stor10;
uint256 rewardPerBlockPerAddress;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 tokenExchangeRate;
mapping of uint256 balanceOf;
mapping of uint8 stor17;

function initialSupplyPerAddress() {
    return initialSupplyPerAddress
}

function totalGenesisAddresses() {
    return totalGenesisAddresses
}

function tokenExchangeRate() {
    return tokenExchangeRate
}

function founder() {
    return founderAddress
}

function version() {
    return version[0 len version.length]
}

function saleStarted() {
    return bool(uint8(stor1.field_168))
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function firstWeek() {
    return firstWeek
}

function isFinalized() {
    return bool(uint8(stor1.field_160))
}

function currentGenesisAddresses() {
    return currentGenesisAddresses
}

function soldCoins() {
    return soldCoins
}

function secondWeek() {
    return secondWeek
}

function thirdWeek() {
    return thirdWeek
}

function genesisAddress(address arg1) {
    return bool(stor17[arg1])
}

function rewardPerBlockPerAddress() {
    return rewardPerBlockPerAddress
}

function initialBlockCount() {
    return initialBlockCount
}

function maxTotalSupply() {
    return ((initialSupplyPerAddress * totalGenesisAddresses) + 15000000 * 10^18)
}

function currentBlock() {
    if initialBlockCount:
        return (block.number - initialBlockCount)
    else:
        return 0
}

function startSale() {
    require not uint8(stor1.field_168)
    require msg.sender == founderAddress
    firstWeek = block.timestamp + (168 * 24 * 3600)
    secondWeek = firstWeek + (168 * 24 * 3600)
    thirdWeek = secondWeek + (168 * 24 * 3600)
    Mask(88, 0, stor1.field_168) = 1
}

function totalSupply() {
    if not initialBlockCount:
        stor12 = 0
    else:
        uint256(stor10) = block.number - initialBlockCount
        if bool(stor10):
            uint256(stor10)--
        stor12 = rewardPerBlockPerAddress * uint256(stor10)
    return ((stor12 * totalGenesisAddresses) + 15000000 * 10^18)
}

function availableBalanceOf(address arg1) {
    if not stor17[address(arg1)]:
        return balanceOf[address(arg1)]
    uint256(stor10) = block.number - initialBlockCount
    if bool(stor10):
        uint256(stor10)--
    if uint256(stor10) >= 6570 * 3600:
        return balanceOf[address(arg1)]
    stor12 = rewardPerBlockPerAddress * uint256(stor10)
    stor14 = initialSupplyPerAddress - stor12
    stor13 = balanceOf[address(arg1)] - stor14
    return stor13
}

function setGenesisAddressArray(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require initialBlockCount
    if currentGenesisAddresses + arg1.length > totalGenesisAddresses:
        return 0
    if founderAddress != msg.sender:
        return 0
    currentGenesisAddresses += arg1.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        balanceOf[mem[(32 * idx) + 140 len 20]] = initialSupplyPerAddress
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 17
        stor17[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor17[address(arg1)]
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    if stor17[address(msg.sender)]:
        uint256(stor10) = block.number - initialBlockCount
        if bool(stor10):
            uint256(stor10)--
        if uint256(stor10) < 6570 * 3600:
            stor12 = rewardPerBlockPerAddress * uint256(stor10)
            stor14 = initialSupplyPerAddress - stor12
            stor13 = balanceOf[address(msg.sender)] - stor14
            require arg2 <= stor13
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function finalize() {
    require not uint8(stor1.field_160)
    require msg.sender == founderAddress
    if soldCoins < 10000000 * 10^18:
        require 10000000 * 10^18 >= soldCoins
        require 10000000 * 10^18 >= -soldCoins + 10000000 * 10^18
        soldCoins = 10000000 * 10^18
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + -soldCoins + 10000000 * 10^18
        emit CreateEVN((-soldCoins + 10000000 * 10^18), msg.sender);
    call founderAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    Mask(96, 0, stor1.field_160) = 1
    if not bool(block.number):
        initialBlockCount = block.number
    else:
        require block.number + 1 >= block.number
        require block.number + 1 >= 1
        initialBlockCount = block.number + 1
}

function _fallback() payable {
    require not uint8(stor1.field_160)
    require uint8(stor1.field_168)
    require msg.value
    if block.timestamp <= firstWeek:
        if block.timestamp <= secondWeek:
            if block.timestamp > thirdWeek:
                tokenExchangeRate = 500
        else:
            if block.timestamp < thirdWeek:
                tokenExchangeRate = 1000
            else:
                if block.timestamp > thirdWeek:
                    tokenExchangeRate = 500
    else:
        if block.timestamp < secondWeek:
            tokenExchangeRate = 1500
        else:
            if block.timestamp <= secondWeek:
                if block.timestamp > thirdWeek:
                    tokenExchangeRate = 500
            else:
                if block.timestamp < thirdWeek:
                    tokenExchangeRate = 1000
                else:
                    if block.timestamp > thirdWeek:
                        tokenExchangeRate = 500
    if msg.value:
        require msg.value
        require msg.value * tokenExchangeRate / msg.value == tokenExchangeRate
    require soldCoins + (msg.value * tokenExchangeRate) >= soldCoins
    require soldCoins + (msg.value * tokenExchangeRate) >= msg.value * tokenExchangeRate
    require 10000000 * 10^18 >= soldCoins + (msg.value * tokenExchangeRate)
    soldCoins += msg.value * tokenExchangeRate
    balanceOf[address(msg.sender)] += msg.value * tokenExchangeRate
    emit CreateEVN((msg.value * tokenExchangeRate), msg.sender);
}



}
