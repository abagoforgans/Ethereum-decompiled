contract main {




// =====================  Runtime code  =====================


address owner;
address sub_15d53771Address;
address tokenAddress;
uint256 vestingBonusMultiplier;
uint256 vestingBonusMultiplierPrecision;
uint256 vestingDuration;
uint256 vestingStartTime;
uint8 stor7;
mapping of struct allocations;
mapping of address vesting;

function sub_0e1cdc63(?) {
    return bool(stor7)
}

function vestingDuration() {
    return vestingDuration
}

function sub_15d53771(?) {
    return sub_15d53771Address
}

function vestingBonusMultiplierPrecision() {
    return vestingBonusMultiplierPrecision
}

function allocations(address arg1) {
    return bool(allocations[arg1].field_0), allocations[arg1].field_256, bool(allocations[arg1].field_512)
}

function owner() {
    return owner
}

function vestingStartTime() {
    return vestingStartTime
}

function vesting(address arg1) {
    return vesting[arg1]
}

function vestingBonusMultiplier() {
    return vestingBonusMultiplier
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function activateWithdrawal() {
    require msg.sender == owner
    stor7 = 1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function releaseVestedTokens(address arg1) {
    require arg1
    require ext_code.size(vesting[address(arg1)])
    call vesting[address(arg1)].release(address arg1) with:
         gas gas_remaining wei
        args tokenAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function escapeHatch() {
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
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function withdraw() {
    require not allocations[address(msg.sender)].field_512
    require stor7
    require ext_code.size(sub_15d53771Address)
    call sub_15d53771Address.contributions(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    allocations[address(msg.sender)].field_512 = 1
    allocations[address(msg.sender)].field_0 = uint8(bool(ext_call.return_data[0]))
    if not ext_call.return_data[0]:
        allocations[address(msg.sender)].field_256 = ext_call.return_data[32]
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit LogLSTsWithdrawn(msg.sender, ext_call.return_data[32]);
    else:
        if not ext_call.return_data[32]:
            require vestingBonusMultiplierPrecision
            allocations[address(msg.sender)].field_256 = 0 / vestingBonusMultiplierPrecision
            require 0 / vestingBonusMultiplierPrecision / 10 <= 0 / vestingBonusMultiplierPrecision
            create contract with 0 wei
                            code: code.data[5710 len 4359], msg.sender, vestingStartTime, 0, vestingDuration, 0
            if not create.new_address:
                revert with ext_call.return_data[0 len return_data.size]
            vesting[address(msg.sender)] = address(create.new_address)
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 0 / vestingBonusMultiplierPrecision / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            emit LogLSTsWithdrawn(msg.sender, 0 / vestingBonusMultiplierPrecision / 10);
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args vesting[address(msg.sender)], (0 / vestingBonusMultiplierPrecision) - (0 / vestingBonusMultiplierPrecision / 10)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            emit LogTimeVestingLSTsWithdrawn(vesting[address(msg.sender)], (0 / vestingBonusMultiplierPrecision) - (0 / vestingBonusMultiplierPrecision / 10), vestingStartTime, 0, vestingDuration);
        else:
            require ext_call.return_data[32]
            require ext_call.return_data[32] * vestingBonusMultiplier / ext_call.return_data[32] == vestingBonusMultiplier
            require vestingBonusMultiplierPrecision
            allocations[address(msg.sender)].field_256 = ext_call.return_data[32] * vestingBonusMultiplier / vestingBonusMultiplierPrecision
            require ext_call.return_data[32] * vestingBonusMultiplier / vestingBonusMultiplierPrecision / 10 <= ext_call.return_data[32] * vestingBonusMultiplier / vestingBonusMultiplierPrecision
            create contract with 0 wei
                            code: code.data[5710 len 4359], msg.sender, vestingStartTime, 0, vestingDuration, 0
            if not create.new_address:
                revert with ext_call.return_data[0 len return_data.size]
            vesting[address(msg.sender)] = address(create.new_address)
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[32] * vestingBonusMultiplier / vestingBonusMultiplierPrecision / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            emit LogLSTsWithdrawn(msg.sender, ext_call.return_data[32] * vestingBonusMultiplier / vestingBonusMultiplierPrecision / 10);
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args vesting[address(msg.sender)], (ext_call.return_data[32] * vestingBonusMultiplier / vestingBonusMultiplierPrecision) - (ext_call.return_data[32] * vestingBonusMultiplier / vestingBonusMultiplierPrecision / 10)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            emit LogTimeVestingLSTsWithdrawn(vesting[address(msg.sender)], (ext_call.return_data[32] * vestingBonusMultiplier / vestingBonusMultiplierPrecision) - (ext_call.return_data[32] * vestingBonusMultiplier / vestingBonusMultiplierPrecision / 10), vestingStartTime, 0, vestingDuration);
}



}
