contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
array of uint256 stor3;
address stor4;
address stor5;
uint128 stor6; offset 168
uint128 stor6; offset 160
address stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;

function _fallback() payable {
    bool(stor3.length) = 0
    stor3.length.field_1 = 3
    stor3.length.field_8 = '1.0' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor7 = 12300
    stor8 = 9400
    stor9 = 0
    require not msg.value
    Mask(96, 0, stor6.field_160) = 0
    Mask(88, 0, stor6.field_168) = 0
    stor4 = code.data[7454 len 20]
    stor5 = code.data[7486 len 20]
    address(stor6.field_0) = code.data[7518 len 20]
    stor0 = 19500000 * 10^18
    stor1[stor5] = 19500000 * 10^18
    emit CreateKWH(19500000 * 10^18, stor5);
    return code.data[858 len 6584]
}



// =====================  Runtime code  =====================


const name = 'KWHCoin'

const decimals = 18

const tokenCreationCap = 195000000 * 10^18

const kwhFund = 19500000 * 10^18

const symbol = 'KWH'


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 version;
address stor4;
address stor5;
uint8 stor6; offset 160
uint8 stor6; offset 168
uint128 stor6; offset 168
uint128 stor6; offset 160
address stor6;
uint256 preSaleTokenExchangeRate;
uint256 icoTokenExchangeRate;
uint256 ethRaised;
address checkaddress;

function icoTokenExchangeRate() {
    return icoTokenExchangeRate
}

function totalSupply() {
    return totalSupply
}

function preSaleTokenExchangeRate() {
    return preSaleTokenExchangeRate
}

function version() {
    return version[0 len version.length]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function isFinalized() {
    return bool(uint8(stor6.field_160))
}

function checkaddress() {
    return checkaddress
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function ethRaised() {
    return ethRaised
}

function isIco() {
    return bool(uint8(stor6.field_168))
}

function _fallback() payable {
    revert
}

function setIcoTokenExchangeRate(uint256 arg1) {
    require msg.sender == address(stor6.field_0)
    icoTokenExchangeRate = arg1
}

function checkKhFundDepositAddress() {
    require msg.sender == address(stor6.field_0)
    checkaddress = stor5
    return checkaddress
}

function checkEthFundDepositAddress() {
    require msg.sender == address(stor6.field_0)
    checkaddress = stor4
    return checkaddress
}

function setPreSaleTokenExchangeRate(uint256 arg1) {
    require msg.sender == address(stor6.field_0)
    preSaleTokenExchangeRate = arg1
}

function checkEthRaised() {
    require msg.sender == address(stor6.field_0)
    ethRaised = eth.balance(this.address)
    return ethRaised
}

function checkKwhDeployerAddress() {
    require msg.sender == address(stor6.field_0)
    checkaddress = address(stor6.field_0)
    return checkaddress
}

function sendFundHome2() {
    require msg.sender == address(stor6.field_0)
    call address(stor6.field_0) with:
       value 5 * 10^18 wei
         gas 0 wei
    require ext_call.success
}

function sendFundHome() {
    require msg.sender == address(stor6.field_0)
    call stor4 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function endIco() {
    require msg.sender == address(stor6.field_0)
    Mask(96, 0, stor6.field_160) = 1
    call stor4 with:
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

function startIco() {
    require msg.sender == address(stor6.field_0)
    Mask(88, 0, stor6.field_168) = 1
    call stor4 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
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
    if arg3 <= 0:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function createTokens() payable {
    require not uint8(stor6.field_160)
    require msg.value
    if not uint8(stor6.field_168):
        if msg.value:
            require msg.value
            require msg.value * preSaleTokenExchangeRate / msg.value == preSaleTokenExchangeRate
        require totalSupply + (msg.value * preSaleTokenExchangeRate) >= totalSupply
        require totalSupply + (msg.value * preSaleTokenExchangeRate) >= msg.value * preSaleTokenExchangeRate
        require 195000000 * 10^18 >= totalSupply + (msg.value * preSaleTokenExchangeRate)
        totalSupply += msg.value * preSaleTokenExchangeRate
        balanceOf[address(msg.sender)] += msg.value * preSaleTokenExchangeRate
        emit CreateKWH((msg.value * preSaleTokenExchangeRate), msg.sender);
    else:
        if msg.value:
            require msg.value
            require msg.value * icoTokenExchangeRate / msg.value == icoTokenExchangeRate
        require totalSupply + (msg.value * icoTokenExchangeRate) >= totalSupply
        require totalSupply + (msg.value * icoTokenExchangeRate) >= msg.value * icoTokenExchangeRate
        require 195000000 * 10^18 >= totalSupply + (msg.value * icoTokenExchangeRate)
        totalSupply += msg.value * icoTokenExchangeRate
        balanceOf[address(msg.sender)] += msg.value * icoTokenExchangeRate
        emit CreateKWH((msg.value * icoTokenExchangeRate), msg.sender);
}



}
