contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
array of uint256 stor3;
address stor4;
uint128 stor5; offset 160
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;

function _fallback() payable {
    bool(stor3.length) = 0
    stor3.length.field_1 = 3
    stor3.length.field_8 = '1.0' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor9 = 0
    stor10 = 0
    stor11 = 1000
    require not msg.value
    stor4 = code.data[7835 len 20]
    stor5 = 0
    stor6 = 0
    stor7 = 0
    stor8 = 10^18 * code.data[7855 len 32]
    stor0 = 10000000 * 10^18
    stor1[address(msg.sender)] = stor0
    require stor8 <= stor0
    return code.data[639 len 7184]
}



// =====================  Runtime code  =====================


const name = 'Bili'

const decimals = 18

const symbol = 'BL'


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 version;
address ethFundDepositAddress;
uint8 stor5; offset 160
uint128 stor5; offset 160
address newContractAddr;
uint256 fundingStartBlock;
uint256 fundingStopBlock;
uint256 currentSupply;
uint256 tokenRaised;
uint256 tokenMigrated;
uint256 tokenExchangeRate;

function isFunding() {
    return bool(uint8(stor5.field_160))
}

function totalSupply() {
    return totalSupply
}

function tokenRaised() {
    return tokenRaised
}

function newContractAddr() {
    return newContractAddr
}

function tokenExchangeRate() {
    return tokenExchangeRate
}

function version() {
    return version[0 len version.length]
}

function tokenMigrated() {
    return tokenMigrated
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function currentSupply() {
    return currentSupply
}

function ethFundDeposit() {
    return ethFundDepositAddress
}

function fundingStartBlock() {
    return fundingStartBlock
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function fundingStopBlock() {
    return fundingStopBlock
}

function changeOwner(address arg1) {
    require msg.sender == ethFundDepositAddress
    require arg1
    ethFundDepositAddress = arg1
}

function stopFunding() {
    require msg.sender == ethFundDepositAddress
    require uint8(stor5.field_160)
    Mask(96, 0, stor5.field_160) = 0
}

function setMigrateContract(address arg1) {
    require msg.sender == ethFundDepositAddress
    require arg1 != newContractAddr
    newContractAddr = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setTokenExchangeRate(uint256 arg1) {
    require msg.sender == ethFundDepositAddress
    require arg1
    require arg1 != tokenExchangeRate
    tokenExchangeRate = arg1
}

function transferETH() {
    require msg.sender == ethFundDepositAddress
    require eth.balance(this.address)
    call ethFundDepositAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function decreaseSupply(uint256 arg1) {
    require msg.sender == ethFundDepositAddress
    require (10^18 * arg1) + tokenRaised <= currentSupply
    require currentSupply >= 10^18 * arg1
    currentSupply += -1 * 10^18 * arg1
    emit DecreaseSupply((10^18 * arg1));
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

function startFunding(uint256 arg1, uint256 arg2) {
    require msg.sender == ethFundDepositAddress
    require not uint8(stor5.field_160)
    require arg1 < arg2
    require block.number < arg1
    fundingStartBlock = arg1
    fundingStopBlock = arg2
    Mask(96, 0, stor5.field_160) = 1
}

function increaseSupply(uint256 arg1) {
    require msg.sender == ethFundDepositAddress
    require (10^18 * arg1) + currentSupply <= totalSupply
    require currentSupply + (10^18 * arg1) >= currentSupply
    require currentSupply + (10^18 * arg1) >= 10^18 * arg1
    currentSupply += 10^18 * arg1
    emit IncreaseSupply((10^18 * arg1));
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

function allocateToken(address arg1, uint256 arg2) {
    require msg.sender == ethFundDepositAddress
    require arg2
    require arg1
    if 10^18 * arg2:
        require 10^18 * arg2
        require 10^18 * arg2 * tokenExchangeRate / 10^18 * arg2 == tokenExchangeRate
    require (10^18 * arg2 * tokenExchangeRate) + tokenRaised <= currentSupply
    require tokenRaised + (10^18 * arg2 * tokenExchangeRate) >= tokenRaised
    require tokenRaised + (10^18 * arg2 * tokenExchangeRate) >= 10^18 * arg2 * tokenExchangeRate
    tokenRaised += 10^18 * arg2 * tokenExchangeRate
    balanceOf[address(arg1)] += 10^18 * arg2 * tokenExchangeRate
    emit AllocateToken((10^18 * arg2 * tokenExchangeRate), arg1);
}

function migrate() {
    require not uint8(stor5.field_160)
    require newContractAddr
    require balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] = 0
    require tokenMigrated + balanceOf[address(msg.sender)] >= tokenMigrated
    require tokenMigrated + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    tokenMigrated += balanceOf[address(msg.sender)]
    require ext_code.size(newContractAddr)
    call newContractAddr.migrate(address arg1, uint256 arg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, balanceOf[address(msg.sender)]
    require ext_call.success
    require ext_call.return_data[0]
    emit Migrate(balanceOf[address(msg.sender)], msg.sender);
}

function _fallback() payable {
    require uint8(stor5.field_160)
    require msg.value
    require block.number >= fundingStartBlock
    require block.number <= fundingStopBlock
    if msg.value:
        require msg.value
        require msg.value * tokenExchangeRate / msg.value == tokenExchangeRate
    require (msg.value * tokenExchangeRate) + tokenRaised <= currentSupply
    require tokenRaised + (msg.value * tokenExchangeRate) >= tokenRaised
    require tokenRaised + (msg.value * tokenExchangeRate) >= msg.value * tokenExchangeRate
    tokenRaised += msg.value * tokenExchangeRate
    balanceOf[address(msg.sender)] += msg.value * tokenExchangeRate
    emit IssueToken((msg.value * tokenExchangeRate), msg.sender);
}



}
