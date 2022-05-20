contract main {




// =====================  Runtime code  =====================


address owner;
uint8 stor1; offset 160
uint128 stor1; offset 160
address tokenAddress;
uint256 cap;
uint256 minimumDeposit;
uint256 tokensDeposited;
uint256 interestRate;
uint256 vaultDepositDeadlineTime;
uint256 vaultUnlockTime;
uint256 vaultLockDays;
address rewardWalletAddress;
mapping of uint256 lockedBalances;

function lockedBalances(address arg1) {
    return lockedBalances[arg1]
}

function vaultUnlocked() {
    return bool(uint8(stor1.field_160))
}

function tokensDeposited() {
    return tokensDeposited
}

function vaultLockDays() {
    return vaultLockDays
}

function cap() {
    return cap
}

function vaultDepositDeadlineTime() {
    return vaultDepositDeadlineTime
}

function minimumDeposit() {
    return minimumDeposit
}

function interestRate() {
    return interestRate
}

function owner() {
    return owner
}

function vaultUnlockTime() {
    return vaultUnlockTime
}

function rewardWallet() {
    return rewardWalletAddress
}

function token() {
    return tokenAddress
}

function _fallback() {
  stop
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function reclaimEther() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function reclaimToken(address arg1) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function lockToken(uint256 arg1) {
    require arg1 >= minimumDeposit
    require block.timestamp < vaultDepositDeadlineTime
    require tokensDeposited + arg1 >= tokensDeposited
    require tokensDeposited + arg1 <= cap
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require lockedBalances[address(msg.sender)] + arg1 >= lockedBalances[address(msg.sender)]
    lockedBalances[address(msg.sender)] += arg1
    require tokensDeposited + arg1 >= tokensDeposited
    tokensDeposited += arg1
    emit TokenLocked(msg.sender, arg1);
}

function finalizeVault() {
    require msg.sender == owner
    require not uint8(stor1.field_160)
    require block.timestamp >= vaultUnlockTime
    Mask(96, 0, stor1.field_160) = 1
    if not tokensDeposited:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args rewardWalletAddress, address(this.address), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
    else:
        if tokensDeposited:
            if tokensDeposited * interestRate / tokensDeposited == interestRate:
                if not tokensDeposited * interestRate / 36500:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args rewardWalletAddress, address(this.address), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                else:
                    if tokensDeposited * interestRate / 36500:
                        if tokensDeposited * interestRate / 36500 * vaultLockDays / tokensDeposited * interestRate / 36500 == vaultLockDays:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args rewardWalletAddress, address(this.address), tokensDeposited * interestRate / 36500 * vaultLockDays
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
    revert
}

function forceWithdrawToken(address arg1) {
    require msg.sender == owner
    require uint8(stor1.field_160)
    if not interestRate:
        require lockedBalances[address(arg1)] >= lockedBalances[address(arg1)]
        require lockedBalances[address(arg1)] > 0
        lockedBalances[address(arg1)] = 0
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), lockedBalances[address(arg1)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit TokenWithdrawal(address(arg1), lockedBalances[address(arg1)]);
    else:
        require interestRate
        require interestRate * lockedBalances[address(arg1)] / interestRate == lockedBalances[address(arg1)]
        if not interestRate * lockedBalances[address(arg1)] / 36500:
            require lockedBalances[address(arg1)] >= lockedBalances[address(arg1)]
            require lockedBalances[address(arg1)] > 0
            lockedBalances[address(arg1)] = 0
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), lockedBalances[address(arg1)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            emit TokenWithdrawal(address(arg1), lockedBalances[address(arg1)]);
        else:
            require interestRate * lockedBalances[address(arg1)] / 36500
            require interestRate * lockedBalances[address(arg1)] / 36500 * vaultLockDays / interestRate * lockedBalances[address(arg1)] / 36500 == vaultLockDays
            require lockedBalances[address(arg1)] + (interestRate * lockedBalances[address(arg1)] / 36500 * vaultLockDays) >= lockedBalances[address(arg1)]
            require lockedBalances[address(arg1)] + (interestRate * lockedBalances[address(arg1)] / 36500 * vaultLockDays) > 0
            lockedBalances[address(arg1)] = 0
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), lockedBalances[address(arg1)] + (interestRate * lockedBalances[address(arg1)] / 36500 * vaultLockDays)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            emit TokenWithdrawal(address(arg1), lockedBalances[address(arg1)] + (interestRate * lockedBalances[address(arg1)] / 36500 * vaultLockDays));
}

function withdrawToken() {
    require uint8(stor1.field_160)
    if not interestRate:
        require lockedBalances[address(msg.sender)] >= lockedBalances[address(msg.sender)]
        require lockedBalances[address(msg.sender)] > 0
        lockedBalances[address(msg.sender)] = 0
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, lockedBalances[address(msg.sender)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit TokenWithdrawal(msg.sender, lockedBalances[address(msg.sender)]);
    else:
        require interestRate
        require interestRate * lockedBalances[address(msg.sender)] / interestRate == lockedBalances[address(msg.sender)]
        if not interestRate * lockedBalances[address(msg.sender)] / 36500:
            require lockedBalances[address(msg.sender)] >= lockedBalances[address(msg.sender)]
            require lockedBalances[address(msg.sender)] > 0
            lockedBalances[address(msg.sender)] = 0
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, lockedBalances[address(msg.sender)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            emit TokenWithdrawal(msg.sender, lockedBalances[address(msg.sender)]);
        else:
            require interestRate * lockedBalances[address(msg.sender)] / 36500
            require interestRate * lockedBalances[address(msg.sender)] / 36500 * vaultLockDays / interestRate * lockedBalances[address(msg.sender)] / 36500 == vaultLockDays
            require lockedBalances[address(msg.sender)] + (interestRate * lockedBalances[address(msg.sender)] / 36500 * vaultLockDays) >= lockedBalances[address(msg.sender)]
            require lockedBalances[address(msg.sender)] + (interestRate * lockedBalances[address(msg.sender)] / 36500 * vaultLockDays) > 0
            lockedBalances[address(msg.sender)] = 0
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, lockedBalances[address(msg.sender)] + (interestRate * lockedBalances[address(msg.sender)] / 36500 * vaultLockDays)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            emit TokenWithdrawal(msg.sender, lockedBalances[address(msg.sender)] + (interestRate * lockedBalances[address(msg.sender)] / 36500 * vaultLockDays));
}



}
