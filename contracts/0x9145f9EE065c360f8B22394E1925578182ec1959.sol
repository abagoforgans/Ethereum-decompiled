contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;
address receiverAddress;
uint256 startTime;
uint256 cliff;
uint256 totalPeriods;
uint256 sub_cf0f0e9c;
uint256 totalTokens;
uint256 tokensClaimed;

function cliff() {
    return cliff
}

function startTime() {
    return startTime
}

function totalTokens() {
    return totalTokens
}

function owner() {
    return owner
}

function tokensClaimed() {
    return tokensClaimed
}

function sub_cf0f0e9c(?) {
    return sub_cf0f0e9c
}

function receiver() {
    return receiverAddress
}

function token() {
    return tokenAddress
}

function totalPeriods() {
    return totalPeriods
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function changeReceiver(address arg1) {
    require msg.sender == owner
    require arg1
    receiverAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function killVesting() {
    require msg.sender == owner
    require tokensClaimed <= totalTokens
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args owner, totalTokens - tokensClaimed
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    tokensClaimed = totalTokens
    emit VestingKilled()
}

function fundVesting(uint256 arg1) {
    require msg.sender == owner
    if totalTokens:
        revert with 0, 'Vesting already funded'
    require ext_code.size(tokenAddress)
    call tokenAddress.0xdd62ed3e with:
         gas gas_remaining wei
        args owner, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == arg1
    totalTokens = arg1
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args owner, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit VestingFunded(arg1);
}

function claimTokens() {
    if totalTokens <= 0:
        revert with 0, 'Vesting has not been funded yet'
    if receiverAddress != msg.sender:
        revert with 0, 'Only receiver can claim tokens'
    require cliff + startTime >= startTime
    if block.timestamp <= cliff + startTime:
        revert with 0, 'Vesting hasnt started yet'
    require cliff + startTime >= startTime
    require cliff + startTime <= block.timestamp
    require sub_cf0f0e9c
    require totalPeriods
    if not totalTokens / totalPeriods:
        require tokensClaimed <= 0
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args receiverAddress, -tokensClaimed
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0 >= tokensClaimed
        tokensClaimed = 0
        emit TokensClaimed(-tokensClaimed);
    else:
        require block.timestamp - cliff - startTime / sub_cf0f0e9c * totalTokens / totalPeriods / totalTokens / totalPeriods == block.timestamp - cliff - startTime / sub_cf0f0e9c
        require tokensClaimed <= block.timestamp - cliff - startTime / sub_cf0f0e9c * totalTokens / totalPeriods
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args receiverAddress, (block.timestamp - cliff - startTime / sub_cf0f0e9c * totalTokens / totalPeriods) - tokensClaimed
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require block.timestamp - cliff - startTime / sub_cf0f0e9c * totalTokens / totalPeriods >= tokensClaimed
        tokensClaimed = block.timestamp - cliff - startTime / sub_cf0f0e9c * totalTokens / totalPeriods
        emit TokensClaimed(((block.timestamp - cliff - startTime / sub_cf0f0e9c * totalTokens / totalPeriods) - tokensClaimed));
}



}
