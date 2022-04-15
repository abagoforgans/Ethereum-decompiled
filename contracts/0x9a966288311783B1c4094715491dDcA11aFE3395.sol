contract main {


// =======================  Init code  ======================


uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
address stor5;

function _fallback() {
    stor1 = 8333 * 10^16
    stor2 = 2000 * 10^18
    stor3 = 418236 * 3600
    stor4 = 418332 * 3600
    stor5 = 0x2a00bfd8379786adfebb6f2f59011535a4f8d4e4
    return code.data[287 len 1901]
}



// =====================  Runtime code  =====================


mapping of uint256 balances;
uint256 minGoal;
uint256 maxGoal;
uint256 startTime;
uint256 endTime;
address projectWalletAddress;
uint256 stor6;

function balances(address arg1) {
    return balances[arg1]
}

function endTime() {
    return endTime
}

function startTime() {
    return startTime
}

function projectWallet() {
    return projectWalletAddress
}

function minGoal() {
    return minGoal
}

function maxGoal() {
    return maxGoal
}

function transferToProjectWallet() {
    require eth.balance(this.address) > 0
    require stor6 >= minGoal
    call projectWalletAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function transferRemaining() {
    require stor6 < minGoal
    require block.timestamp >= endTime + (1440 * 24 * 3600)
    require eth.balance(this.address) > 0
    call projectWalletAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function refund() {
    require block.timestamp > endTime
    require stor6 < minGoal
    require block.timestamp < endTime + (1440 * 24 * 3600)
    require balances[address(msg.sender)] > 0
    balances[address(msg.sender)] = 0
    call msg.sender with:
       value balances[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require msg.value > 0
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require stor6 < maxGoal
    require stor6 + msg.value >= stor6
    if stor6 + msg.value <= maxGoal:
        require balances[address(msg.sender)] + msg.value >= balances[address(msg.sender)]
        balances[address(msg.sender)] += msg.value
        require stor6 + msg.value >= stor6
        stor6 += msg.value
    else:
        call msg.sender with:
           value stor6 + msg.value - maxGoal wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require balances[address(msg.sender)] + maxGoal - stor6 >= balances[address(msg.sender)]
        balances[address(msg.sender)] = balances[address(msg.sender)] + maxGoal - stor6
        require maxGoal >= stor6
        stor6 = maxGoal
}



}
