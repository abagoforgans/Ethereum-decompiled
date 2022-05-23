contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
array of uint256 stor3;
address stor4;
uint8 stor5; offset 160
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
    stor11 = 625
    require not msg.value
    stor4 = code.data[4426 len 20]
    stor5 = 0
    stor6 = 0
    stor7 = 0
    stor8 = 10^18 * code.data[4446 len 32]
    stor0 = 210000000 * 10^18
    stor1[address(msg.sender)] = 210000000 * 10^18
    require stor8 <= 210000000 * 10^18
    return code.data[492 len 3922]
}



// =====================  Runtime code  =====================


const name = 'Ocean'

const decimals = 18

const symbol = 'OAT'


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 version;
address ethFundDepositAddress;
uint8 stor5; offset 160
address newContractAddr;
uint256 fundingStartBlock;
uint256 fundingStopBlock;
uint256 currentSupply;
uint256 tokenRaised;
uint256 tokenMigrated;
uint256 tokenExchangeRate;

function isFunding() {
    return bool(stor5)
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

function stopFunding() {
    require ethFundDepositAddress == msg.sender
    require stor5
    stor5 = 0
}

function changeOwner(address arg1) {
    require ethFundDepositAddress == msg.sender
    require arg1
    ethFundDepositAddress = arg1
}

function setMigrateContract(address arg1) {
    require ethFundDepositAddress == msg.sender
    require newContractAddr != arg1
    newContractAddr = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setTokenExchangeRate(uint256 arg1) {
    require ethFundDepositAddress == msg.sender
    require arg1
    require arg1 != tokenExchangeRate
    tokenExchangeRate = arg1
}

function startFunding(uint256 arg1, uint256 arg2) {
    require ethFundDepositAddress == msg.sender
    require not stor5
    require arg1 < arg2
    require block.number < arg1
    fundingStartBlock = arg1
    fundingStopBlock = arg2
    stor5 = 1
}

function transferETH() {
    require ethFundDepositAddress == msg.sender
    require eth.balance(this.address)
    call ethFundDepositAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function decreaseSupply(uint256 arg1) {
    require ethFundDepositAddress == msg.sender
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
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function increaseSupply(uint256 arg1) {
    require ethFundDepositAddress == msg.sender
    require (10^18 * arg1) + currentSupply <= totalSupply
    require (10^18 * arg1) + currentSupply >= currentSupply
    require (10^18 * arg1) + currentSupply >= 10^18 * arg1
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
    balanceOf[arg1] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function migrate() {
    require not stor5
    require newContractAddr
    require balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] = 0
    require balanceOf[address(msg.sender)] + tokenMigrated >= tokenMigrated
    require balanceOf[address(msg.sender)] + tokenMigrated >= balanceOf[address(msg.sender)]
    tokenMigrated += balanceOf[address(msg.sender)]
    require ext_code.size(newContractAddr)
    call newContractAddr.migrate(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, balanceOf[address(msg.sender)]
    require ext_call.success
    require ext_call.return_data[0]
    emit Migrate(balanceOf[address(msg.sender)], msg.sender);
}

function allocateToken(address arg1, uint256 arg2) {
    require ethFundDepositAddress == msg.sender
    require arg2
    require arg1
    if 10^18 * arg2:
        require 10^18 * arg2
        require 10^18 * tokenExchangeRate * arg2 / 10^18 * arg2 == tokenExchangeRate
    require (10^18 * tokenExchangeRate * arg2) + tokenRaised <= currentSupply
    require (10^18 * tokenExchangeRate * arg2) + tokenRaised >= tokenRaised
    require (10^18 * tokenExchangeRate * arg2) + tokenRaised >= 10^18 * tokenExchangeRate * arg2
    tokenRaised += 10^18 * tokenExchangeRate * arg2
    balanceOf[address(arg1)] += 10^18 * tokenExchangeRate * arg2
    emit AllocateToken((10^18 * tokenExchangeRate * arg2), arg1);
}

function _fallback() payable {
    require stor5
    require msg.value
    require block.number >= fundingStartBlock
    require block.number <= fundingStopBlock
    if msg.value:
        require msg.value
        require tokenExchangeRate * msg.value / msg.value == tokenExchangeRate
    require (tokenExchangeRate * msg.value) + tokenRaised <= currentSupply
    require (tokenExchangeRate * msg.value) + tokenRaised >= tokenRaised
    require (tokenExchangeRate * msg.value) + tokenRaised >= tokenExchangeRate * msg.value
    tokenRaised += tokenExchangeRate * msg.value
    balanceOf[address(msg.sender)] += tokenExchangeRate * msg.value
    emit IssueToken((tokenExchangeRate * msg.value), msg.sender);
}



}
