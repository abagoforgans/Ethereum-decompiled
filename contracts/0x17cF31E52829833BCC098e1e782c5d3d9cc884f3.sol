contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
address stor5;
uint256 stor6;

function _fallback() {
    require code.data[3481 len 20]
    require code.data[3513 len 20]
    require code.data[3597 len 32] > 100 * 10^18
    stor0 = code.data[3481 len 20]
    stor1 = code.data[3513 len 20]
    stor2 = code.data[3533 len 32]
    stor3 = code.data[3565 len 32]
    stor4 = code.data[3597 len 32]
    stor5 = code.data[3641 len 20]
    stor6 = block.timestamp
    return code.data[428 len 3041]
}



// =====================  Runtime code  =====================


const decimals = 18

const oneMonth = (720 * 24 * 3600)


address adminAddress;
address withdrawAddress;
uint256 lockingPeriodInMonths;
uint256 vestingPeriodInMonths;
uint256 monthlyWithdrawLimitInWei;
address tokenAddress;
uint256 startTime;

function monthlyWithdrawLimitInWei() {
    return monthlyWithdrawLimitInWei
}

function withdrawAddress() {
    return withdrawAddress
}

function lockingPeriodInMonths() {
    return lockingPeriodInMonths
}

function startTime() {
    return startTime
}

function vestingPeriodInMonths() {
    return vestingPeriodInMonths
}

function token() {
    return tokenAddress
}

function adminAddress() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function finalizeConfig() {
    require msg.sender == adminAddress
    adminAddress = 0
}

function changeStartTime(uint256 arg1) {
    require msg.sender == adminAddress
    startTime = arg1
}

function changeTokenAddress(address arg1) {
    require msg.sender == adminAddress
    tokenAddress = arg1
}

function changeWithdrawAddress(address arg1) {
    require msg.sender == adminAddress
    withdrawAddress = arg1
}

function changeLockingPeriod(uint256 arg1) {
    require msg.sender == adminAddress
    lockingPeriodInMonths = arg1
}

function changeVestingPeriod(uint256 arg1) {
    require msg.sender == adminAddress
    vestingPeriodInMonths = arg1
}

function changeMonthlyWithdrawLimit(uint256 arg1) {
    require msg.sender == adminAddress
    monthlyWithdrawLimitInWei = arg1
}

function withdraw(uint256 arg1) {
    require startTime <= block.timestamp
    require (block.timestamp - startTime / 720 * 24 * 3600) + 1 >= block.timestamp - startTime / 720 * 24 * 3600
    require (block.timestamp - startTime / 720 * 24 * 3600) + 1 >= lockingPeriodInMonths
    require lockingPeriodInMonths + vestingPeriodInMonths >= lockingPeriodInMonths
    if (block.timestamp - startTime / 720 * 24 * 3600) + 1 >= lockingPeriodInMonths + vestingPeriodInMonths:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require arg1 <= ext_call.return_data[0]
        require ext_call.return_data[0] - arg1 >= 0
    else:
        require (block.timestamp - startTime / 720 * 24 * 3600) + 1 <= lockingPeriodInMonths + vestingPeriodInMonths
        if not lockingPeriodInMonths + vestingPeriodInMonths + -(block.timestamp - startTime / 720 * 24 * 3600) - 1:
            require ext_code.size(tokenAddress)
            call tokenAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            require arg1 <= ext_call.return_data[0]
            require ext_call.return_data[0] - arg1 >= 0
        else:
            require lockingPeriodInMonths + vestingPeriodInMonths + -(block.timestamp - startTime / 720 * 24 * 3600) - 1
            require -monthlyWithdrawLimitInWei + (lockingPeriodInMonths * monthlyWithdrawLimitInWei) + (vestingPeriodInMonths * monthlyWithdrawLimitInWei) - (block.timestamp - startTime / 720 * 24 * 3600 * monthlyWithdrawLimitInWei) / lockingPeriodInMonths + vestingPeriodInMonths + -(block.timestamp - startTime / 720 * 24 * 3600) - 1 == monthlyWithdrawLimitInWei
            require ext_code.size(tokenAddress)
            call tokenAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            require arg1 <= ext_call.return_data[0]
            require ext_call.return_data[0] - arg1 >= -monthlyWithdrawLimitInWei + (lockingPeriodInMonths * monthlyWithdrawLimitInWei) + (vestingPeriodInMonths * monthlyWithdrawLimitInWei) - (block.timestamp - startTime / 720 * 24 * 3600 * monthlyWithdrawLimitInWei)
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args withdrawAddress, arg1
    require ext_call.success
    require ext_call.return_data[0]
    return 1
}



}
