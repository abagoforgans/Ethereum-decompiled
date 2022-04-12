contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;
uint256 stor3;
address stor4;
uint128 stor5; offset 168
uint128 stor5; offset 160
address stor5;
uint256 stor8;

function _fallback() payable {
    stor2 = 24 * 3600
    stor3 = 0
    stor4 = 0
    address(stor5.field_0) = 0
    Mask(96, 0, stor5.field_160) = 0
    Mask(88, 0, stor5.field_168) = 0
    stor8 = 0
    require not msg.value
    stor0 = msg.sender
    require block.timestamp < code.data[4045 len 32]
    require code.data[3993 len 20]
    stor3 = code.data[4045 len 32]
    stor2 = code.data[4077 len 32]
    stor4 = code.data[3993 len 20]
    address(stor5.field_0) = code.data[4025 len 20]
    mem[224] = code.data[3993 len 20]
    mem[256] = code.data[4025 len 20]
    emit LogCreate(address rg1, address rg2, uint256 rg3, uint256 rg4):
                   mem[224 len 64],
                   code.data[4045 len 32],
                   code.data[4077 len 32],
    return code.data[746 len 3235]
}



// =====================  Runtime code  =====================


const MIN_FUND = 10^16

const CRAWDSALE_END_DAY = 7

const CRAWDSALE_START_DAY = 1


address owner;
address newOwner;
uint256 dayCycle;
uint256 fundingStartTime;
address ethFundDepositAddress;
uint8 isFinalize; offset 160
uint8 isPause; offset 168
uint128 stor5; offset 168
uint128 stor5; offset 160
address investorDepositAddress;
mapping of uint256 dailyTotals;
mapping of uint256 userBuys;
uint256 totalContributedETH;

function fundingStartTime() {
    return fundingStartTime
}

function dayCycle() {
    return dayCycle
}

function userBuys(uint256 arg1, address arg2) {
    return userBuys[arg1][arg2]
}

function totalContributedETH() {
    return totalContributedETH
}

function isFinalize() {
    return bool(isFinalize)
}

function dailyTotals(uint256 arg1) {
    return dailyTotals[arg1]
}

function owner() {
    return owner
}

function ethFundDeposit() {
    return ethFundDepositAddress
}

function newOwner() {
    return newOwner
}

function investorDeposit() {
    return investorDepositAddress
}

function isPause() {
    return bool(isPause)
}

function kill() {
    require msg.sender == owner
    selfdestruct(owner)
}

function acceptOwnership() {
    if msg.sender == newOwner:
        owner = newOwner
}

function changeOwner(address arg1) {
    require msg.sender == owner
    newOwner = arg1
}

function finalize() {
    require msg.sender == owner
    Mask(96, 0, stor5.field_160) = 1
    emit LogFinalize(block.timestamp);
}

function pause(bool arg1) {
    require msg.sender == owner
    Mask(88, 0, stor5.field_168) = Mask(88, 0, arg1)
    emit LogPause(block.timestamp, arg1);
}

function today() {
    require block.timestamp - fundingStartTime <= block.timestamp
    require dayCycle
    return ((block.timestamp - fundingStartTime / dayCycle) + 1)
}

function importExchangeSale(uint256 arg1, address arg2, uint256 arg3) {
    require msg.sender == owner
    require arg1 >= 1
    require arg1 <= 7
    userBuys[arg1][address(arg2)] += arg3
    dailyTotals[arg1] += arg3
    totalContributedETH += arg3
    emit LogBuy(arg1, address(arg2), arg3);
}

function _fallback() payable {
    require not isPause
    require not isFinalize
    require msg.value >= 10^16
    call ethFundDepositAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require block.timestamp - fundingStartTime <= block.timestamp
    require dayCycle
    require (block.timestamp - fundingStartTime / dayCycle) + 1 >= 1
    require (block.timestamp - fundingStartTime / dayCycle) + 1 <= 7
    userBuys[(block.timestamp - stor3 / stor2) + 1][address(msg.sender)] += msg.value
    dailyTotals[(block.timestamp - stor3 / stor2) + 1] += msg.value
    totalContributedETH += msg.value
    emit LogBuy((block.timestamp - fundingStartTime / dayCycle) + 1, msg.sender, msg.value);
}



}
