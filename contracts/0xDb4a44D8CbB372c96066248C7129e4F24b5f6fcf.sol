contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
uint256 sub_61971f4f;
uint256 withdrawnTokens;
uint256 sub_cfbc531f;
uint256 maxGoal;
uint256 openingTime;
uint256 closingTime;
address walletAddress;
uint8 stor9; offset 160
uint128 stor9; offset 160
address tokenAddress;

function canWithdrawBeforeEnd() {
    return bool(uint8(stor9.field_160))
}

function withdrawnTokens() {
    return withdrawnTokens
}

function closingTime() {
    return closingTime
}

function wallet() {
    return walletAddress
}

function sub_61971f4f(?) {
    return sub_61971f4f
}

function owner() {
    return owner
}

function openingTime() {
    return openingTime
}

function sub_cfbc531f(?) {
    return sub_cfbc531f
}

function isManager(address arg1) {
    require arg1
    return bool(stor1[address(arg1)])
}

function maxGoal() {
    return maxGoal
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function setMaxGoal(uint256 arg1) {
    require msg.sender == owner
    maxGoal = arg1
}

function hasClosed() {
    if 0 == closingTime:
        return 0
    return (block.timestamp > closingTime)
}

function hasStarted() {
    if 0 == openingTime:
        return 1
    return (block.timestamp > openingTime)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setCanWithdrawBeforeEnd(bool arg1) {
    require msg.sender == owner
    Mask(96, 0, stor9.field_160) = Mask(96, 0, arg1)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function addManager(address arg1) {
    require msg.sender == owner
    require arg1
    require not stor1[address(arg1)]
    stor1[address(arg1)] = 1
    emit ManagerAdded(arg1);
}

function removeManager(address arg1) {
    require msg.sender == owner
    require arg1
    require stor1[address(arg1)]
    stor1[address(arg1)] = 0
    emit ManagerRemoved(arg1);
}

function setTimes(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    if arg2:
        if arg2 < arg1:
            revert with 0, 'wrong value for closingTime'
    openingTime = arg1
    closingTime = arg2
}

function totalRaised() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require withdrawnTokens + ext_call.return_data[0] >= ext_call.return_data[0]
    require sub_cfbc531f >= 0
    return (sub_cfbc531f + withdrawnTokens + ext_call.return_data[0])
}

function maxGoalReached() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require withdrawnTokens + ext_call.return_data[0] >= ext_call.return_data[0]
    require sub_cfbc531f >= 0
    return sub_cfbc531f + withdrawnTokens + ext_call.return_data[0] >= maxGoal
}

function recoverERC20(address arg1, address arg2, uint256 arg3) {
    if owner != msg.sender:
        require msg.sender
        if not stor1[address(msg.sender)]:
            revert with 0, 'unauthorized'
    if tokenAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'to transfer project's funds use withdrawTokens'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function totalFee() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require withdrawnTokens + ext_call.return_data[0] >= ext_call.return_data[0]
    require sub_cfbc531f >= 0
    if not sub_cfbc531f + withdrawnTokens + ext_call.return_data[0]:
        return 0
    require (sub_cfbc531f * sub_61971f4f) + (withdrawnTokens * sub_61971f4f) + (ext_call.return_data[0] * sub_61971f4f) / sub_cfbc531f + withdrawnTokens + ext_call.return_data[0] == sub_61971f4f
    return ((sub_cfbc531f * sub_61971f4f) + (withdrawnTokens * sub_61971f4f) + (ext_call.return_data[0] * sub_61971f4f) / 1000)
}

function withdrawFees(address arg1, uint256 arg2) {
    require msg.sender == owner
    if not uint8(stor9.field_160):
        if closingTime:
            if block.timestamp <= closingTime:
                revert with 0, 'can't withdraw'
    require arg2 + sub_cfbc531f >= sub_cfbc531f
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require withdrawnTokens + ext_call.return_data[0] >= ext_call.return_data[0]
    require sub_cfbc531f >= 0
    if not sub_cfbc531f + withdrawnTokens + ext_call.return_data[0]:
        if arg2 + sub_cfbc531f > 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'can't withdraw more than available fee'
    else:
        require (sub_cfbc531f * sub_61971f4f) + (withdrawnTokens * sub_61971f4f) + (ext_call.return_data[0] * sub_61971f4f) / sub_cfbc531f + withdrawnTokens + ext_call.return_data[0] == sub_61971f4f
        if arg2 + sub_cfbc531f > (sub_cfbc531f * sub_61971f4f) + (withdrawnTokens * sub_61971f4f) + (ext_call.return_data[0] * sub_61971f4f) / 1000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'can't withdraw more than available fee'
    sub_cfbc531f += arg2
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function withdrawTokens(address arg1, uint256 arg2) {
    if owner != msg.sender:
        require msg.sender
        if not stor1[address(msg.sender)]:
            revert with 0, 'unauthorized'
    if not uint8(stor9.field_160):
        if closingTime:
            if block.timestamp <= closingTime:
                revert with 0, 'can't withdraw'
    require arg2 + withdrawnTokens >= withdrawnTokens
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require withdrawnTokens + ext_call.return_data[0] >= ext_call.return_data[0]
    require sub_cfbc531f >= 0
    if not sub_cfbc531f + withdrawnTokens + ext_call.return_data[0]:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require withdrawnTokens + ext_call.return_data[0] >= ext_call.return_data[0]
        require sub_cfbc531f >= 0
        require 0 <= sub_cfbc531f + withdrawnTokens + ext_call.return_data[0]
        if arg2 > sub_cfbc531f + ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'can't withdraw more than available token'
    else:
        require (sub_cfbc531f * sub_61971f4f) + (withdrawnTokens * sub_61971f4f) + (ext_call.return_data[0] * sub_61971f4f) / sub_cfbc531f + withdrawnTokens + ext_call.return_data[0] == sub_61971f4f
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require withdrawnTokens + ext_call.return_data[0] >= ext_call.return_data[0]
        require sub_cfbc531f >= 0
        require (sub_cfbc531f * sub_61971f4f) + (withdrawnTokens * sub_61971f4f) + (ext_call.return_data[0] * sub_61971f4f) / 1000 <= sub_cfbc531f + withdrawnTokens + ext_call.return_data[0]
        if arg2 > sub_cfbc531f + ext_call.return_data[0] - ((sub_cfbc531f * sub_61971f4f) + (withdrawnTokens * sub_61971f4f) + (ext_call.return_data[0] * sub_61971f4f) / 1000):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'can't withdraw more than available token'
    withdrawnTokens += arg2
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}



}
