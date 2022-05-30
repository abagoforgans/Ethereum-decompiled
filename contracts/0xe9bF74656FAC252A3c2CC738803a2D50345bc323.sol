contract main {




// =====================  Runtime code  =====================


uint256 maxCount;
uint256 budget;
uint256 totalUnlocked;
uint256 startYum;
uint256 nextRewardAmount;
uint256 count;
address owner;
address tokenAddress;

function count() {
    return count
}

function nextRewardAmount() {
    return nextRewardAmount
}

function owner() {
    return owner
}

function startYum() {
    return startYum
}

function maxCount() {
    return maxCount
}

function totalUnlocked() {
    return totalUnlocked
}

function budget() {
    return budget
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function changeOwnerTo(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function changeYumAddressTo(address arg1) {
    require msg.sender == owner
    tokenAddress = arg1
}

function calcNextReward() {
    if count:
        require count
        require 100 * 10^6 * count / count == 100 * 10^6
    require (100 * 10^6 * count / 500) + 100 * 10^6 >= 100 * 10^6 * count / 500
    if startYum:
        require startYum
        require 100 * 10^6 * startYum / startYum == 100 * 10^6
    require (100 * 10^6 * count / 500) + 100 * 10^6 > 0
    require (100 * 10^6 * count / 500) + 100 * 10^6
    emit CalcNextReward(count, 100 * 10^6 * startYum / (100 * 10^6 * count / 500) + 100 * 10^6);
    return (100 * 10^6 * startYum / (100 * 10^6 * count / 500) + 100 * 10^6)
}

function retrieveAll() {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Retrieve(owner, ext_call.return_data[0]);
}

function addBudget(uint256 arg1, uint256 arg2, uint256 arg3) {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg1 + budget >= budget
    budget += arg1
    startYum = arg2
    count = arg3
    if count:
        require count
        require 100 * 10^6 * count / count == 100 * 10^6
    require (100 * 10^6 * count / 500) + 100 * 10^6 >= 100 * 10^6 * count / 500
    if startYum:
        require startYum
        require 100 * 10^6 * startYum / startYum == 100 * 10^6
    require (100 * 10^6 * count / 500) + 100 * 10^6 > 0
    require (100 * 10^6 * count / 500) + 100 * 10^6
    emit CalcNextReward(count, 100 * 10^6 * startYum / (100 * 10^6 * count / 500) + 100 * 10^6);
    nextRewardAmount = 100 * 10^6 * startYum / (100 * 10^6 * count / 500) + 100 * 10^6
    emit AddBudget(budget, startYum);
}

function sendNextRewardTo(address arg1) {
    require msg.sender == owner
    require nextRewardAmount > 0
    require nextRewardAmount + totalUnlocked >= totalUnlocked
    require nextRewardAmount + totalUnlocked <= budget
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), nextRewardAmount
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require nextRewardAmount <= budget
    budget -= nextRewardAmount
    if count < maxCount:
        count++
    totalUnlocked += nextRewardAmount
    if count:
        require count
        require 100 * 10^6 * count / count == 100 * 10^6
    require (100 * 10^6 * count / 500) + 100 * 10^6 >= 100 * 10^6 * count / 500
    if startYum:
        require startYum
        require 100 * 10^6 * startYum / startYum == 100 * 10^6
    require (100 * 10^6 * count / 500) + 100 * 10^6 > 0
    require (100 * 10^6 * count / 500) + 100 * 10^6
    emit CalcNextReward(count, 100 * 10^6 * startYum / (100 * 10^6 * count / 500) + 100 * 10^6);
    nextRewardAmount = 100 * 10^6 * startYum / (100 * 10^6 * count / 500) + 100 * 10^6
    emit UnlockReward(address(arg1), nextRewardAmount);
}



}
