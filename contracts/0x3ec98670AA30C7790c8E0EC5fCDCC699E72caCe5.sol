contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256[] arg1, uint256[] arg2, address arg3)
#  - deposit(address arg1, uint256 arg2)
#
address owner;
address DYDX_MARGINAddress;
uint256 stor2;
mapping of uint256 availableForBucket;
uint256 availableTotal;
mapping of uint256 principalForBucket;
uint256 principalTotal;
mapping of uint256 weightForBucketForAccount;
mapping of uint256 weightForBucket;
uint256 criticalBucket;
uint256 cachedRepaidAmount;
uint8 stor11;
uint256 POSITION_ID;
address HELD_TOKENAddress;
uint32 BUCKET_TIME; offset 160
uint32 INTEREST_RATE; offset 192
uint32 INTEREST_PERIOD; offset 224
address OWED_TOKENAddress;
uint32 MAX_DURATION;
uint32 CALL_TIMELIMIT; offset 32
uint32 MIN_HELD_TOKEN_NUMERATOR; offset 64
uint32 MIN_HELD_TOKEN_DENOMINATOR; offset 96
mapping of uint8 stor16;
mapping of uint8 stor17;
uint256 RECOVERY_DELAY;
uint256 stor5B8C;

function DYDX_MARGIN() {
    return DYDX_MARGINAddress
}

function BUCKET_TIME() {
    return BUCKET_TIME
}

function HELD_TOKEN() {
    return HELD_TOKENAddress
}

function cachedRepaidAmount() {
    return cachedRepaidAmount
}

function CALL_TIMELIMIT() {
    return CALL_TIMELIMIT
}

function weightForBucket(uint256 arg1) {
    return weightForBucket[arg1]
}

function MIN_HELD_TOKEN_NUMERATOR() {
    return MIN_HELD_TOKEN_NUMERATOR
}

function RECOVERY_DELAY() {
    return RECOVERY_DELAY
}

function wasForceClosed() {
    return bool(stor11)
}

function principalForBucket(uint256 arg1) {
    return principalForBucket[arg1]
}

function INTEREST_PERIOD() {
    return INTEREST_PERIOD
}

function INTEREST_RATE() {
    return INTEREST_RATE
}

function principalTotal() {
    return principalTotal
}

function criticalBucket() {
    return criticalBucket
}

function MIN_HELD_TOKEN_DENOMINATOR() {
    return MIN_HELD_TOKEN_DENOMINATOR
}

function owner() {
    return owner
}

function TRUSTED_MARGIN_CALLERS(address arg1) {
    return bool(stor16[arg1])
}

function weightForBucketForAccount(uint256 arg1, address arg2) {
    return weightForBucketForAccount[arg1][arg2]
}

function MAX_DURATION() {
    return MAX_DURATION
}

function availableTotal() {
    return availableTotal
}

function TRUSTED_WITHDRAWERS(address arg1) {
    return bool(stor17[arg1])
}

function POSITION_ID() {
    return POSITION_ID
}

function OWED_TOKEN() {
    return OWED_TOKENAddress
}

function availableForBucket(uint256 arg1) {
    return availableForBucket[arg1]
}

function _fallback() payable {
    revert
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

function cancelMarginCallOnBehalfOf(address arg1, bytes32 arg2) {
    if DYDX_MARGINAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyMargin#onlyMargin: Only Margin can call'
    stor2++
    if arg2 != POSITION_ID:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BucketLender#onlyPosition: Incorrect position'
    if not stor16[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'BucketLender#cancelMarginCallOnBehalfOf: Margin-call-canceler must be trusted'
    if stor2 + 1 != stor2:
        revert with 0, 'Reentrancy check failure'
    return this.address
}

function marginCallOnBehalfOf(address arg1, bytes32 arg2, uint256 arg3) {
    if DYDX_MARGINAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyMargin#onlyMargin: Only Margin can call'
    stor2++
    if arg2 != POSITION_ID:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BucketLender#onlyPosition: Incorrect position'
    if not stor16[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'BucketLender#marginCallOnBehalfOf: Margin-caller must be trusted'
    if arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'BucketLender#marginCallOnBehalfOf: Deposit amount must be zero'
    if stor2 + 1 != stor2:
        revert with 0, 'Reentrancy check failure'
    return this.address
}

function getBucketOwedAmount(uint256 arg1) {
    require ext_code.size(DYDX_MARGINAddress)
    staticcall DYDX_MARGINAddress.isPositionClosed(bytes32 arg1) with:
            gas gas_remaining wei
           args POSITION_ID
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        return 0
    if not principalForBucket[arg1]:
        return 0
    require ext_code.size(DYDX_MARGINAddress)
    staticcall DYDX_MARGINAddress.getPositionOwedAmountAtTime(bytes32 arg1, uint256 arg2, uint32 arg3) with:
            gas gas_remaining wei
           args POSITION_ID, principalTotal, uint32(block.timestamp)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not principalForBucket[arg1]:
        if principalTotal:
            return (0 / principalTotal)
    else:
        if ext_call.return_data[0] * principalForBucket[arg1] / principalForBucket[arg1] == ext_call.return_data[0]:
            if principalTotal:
                return (ext_call.return_data[0] * principalForBucket[arg1] / principalTotal)
    revert
}

function getCurrentBucket() {
    require ext_code.size(DYDX_MARGINAddress)
    staticcall DYDX_MARGINAddress.isPositionClosed(bytes32 arg1) with:
            gas gas_remaining wei
           args POSITION_ID
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    require ext_code.size(DYDX_MARGINAddress)
    staticcall DYDX_MARGINAddress.containsPosition(bytes32 arg1) with:
            gas gas_remaining wei
           args POSITION_ID
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    require ext_code.size(DYDX_MARGINAddress)
    staticcall DYDX_MARGINAddress.getPositionStartTimestamp(bytes32 arg1) with:
            gas gas_remaining wei
           args POSITION_ID
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[28 len 4] <= block.timestamp
    require BUCKET_TIME
    require (block.timestamp - ext_call.return_data[28 len 4] / BUCKET_TIME) + 1 >= block.timestamp - ext_call.return_data[28 len 4] / BUCKET_TIME
    return ((block.timestamp - ext_call.return_data[28 len 4] / BUCKET_TIME) + 1)
}

function verifyLoanOffering(address[9] arg1, uint256[7] arg2, uint32[4] arg3, bytes32 arg4, bytes arg5) {
    if DYDX_MARGINAddress != msg.sender:
        revert with 0, 'OnlyMargin#onlyMargin: Only Margin can call'
    stor2++
    if cd[644] != POSITION_ID:
        revert with 0, 'BucketLender#onlyPosition: Incorrect position'
    require ext_code.size(DYDX_MARGINAddress)
    staticcall DYDX_MARGINAddress.containsPosition(bytes32 arg1) with:
            gas gas_remaining wei
           args POSITION_ID
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'BucketLender#verifyLoanOffering: This contract should not open a new position'
    require OWED_TOKENAddress == address(call.data[4])
    require HELD_TOKENAddress == address(call.data[36])
    require this.address == address(call.data[68])
    require this.address == address(call.data[100])
    if address(call.data[132]):
        revert with 0, 'BucketLender#verifyLoanOffering: loanOffering.taker is non-zero'
    if address(call.data[196]):
        revert with 0, 'BucketLender#verifyLoanOffering: loanOffering.feeRecipient is non-zero'
    if address(call.data[164]):
        revert with 0, 'BucketLender#verifyLoanOffering: loanOffering.positionOwner is non-zero'
    if address(call.data[228]):
        revert with 0, 'BucketLender#verifyLoanOffering: loanOffering.lenderFeeToken is non-zero'
    if address(call.data[260]):
        revert with 0, 'BucketLender#verifyLoanOffering: loanOffering.takerFeeToken is non-zero'
    if call.data[292] != -1:
        revert with 0, 'BucketLender#verifyLoanOffering: loanOffering.maxAmount is incorrect'
    if call.data[324]:
        revert with 0, 'BucketLender#verifyLoanOffering: loanOffering.minAmount is non-zero'
    if call.data[356]:
        revert with 0, 'BucketLender#verifyLoanOffering: loanOffering.minHeldToken is non-zero'
    if call.data[388]:
        revert with 0, 'BucketLender#verifyLoanOffering: loanOffering.lenderFee is non-zero'
    if call.data[420]:
        revert with 0, 'BucketLender#verifyLoanOffering: loanOffering.takerFee is non-zero'
    if call.data[452] != -1:
        revert with 0, 'BucketLender#verifyLoanOffering: expirationTimestamp is incorrect'
    if call.data[484]:
        revert with 0, 'BucketLender#verifyLoanOffering: loanOffering.salt is non-zero'
    if uint32(call.data[516]) != test266151307():
        revert with 0, 'BucketLender#verifyLoanOffering: loanOffering.callTimelimit is incorrect'
    if uint32(call.data[548]) != test266151307():
        revert with 0, 'BucketLender#verifyLoanOffering: loanOffering.maxDuration is incorrect'
    require not INTEREST_RATE
    require not INTEREST_PERIOD
    if stor2 + 1 != stor2:
        revert with 0, 'Reentrancy check failure'
    return this.address
}

function receiveLoanOwnership(address arg1, bytes32 arg2) {
    if DYDX_MARGINAddress != msg.sender:
        revert with 0, 'OnlyMargin#onlyMargin: Only Margin can call'
    stor2++
    if arg2 != POSITION_ID:
        revert with 0, 'BucketLender#onlyPosition: Incorrect position'
    require ext_code.size(DYDX_MARGINAddress)
    staticcall DYDX_MARGINAddress.getPosition(bytes32 arg1) with:
            gas gas_remaining wei
           args POSITION_ID
    mem[1248 len 384] = ext_call.return_data[0 len 384]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 384
    mem[ceil32(return_data.size) + 1248] = ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 1280] = ext_call.return_data[44 len 20]
    mem[ceil32(return_data.size) + 1440] = ext_call.return_data[220 len 4]
    mem[ceil32(return_data.size) + 1536] = ext_call.return_data[316 len 4]
    mem[ceil32(return_data.size) + 1568] = ext_call.return_data[348 len 4]
    mem[ceil32(return_data.size) + 1600] = ext_call.return_data[380 len 4]
    if not MIN_HELD_TOKEN_NUMERATOR:
        require MIN_HELD_TOKEN_DENOMINATOR
        require ext_call.return_data[128] > 0
        require not principalTotal
        require arg1 != this.address
        if OWED_TOKENAddress != mem[ceil32(return_data.size) + 1260 len 20]:
            revert with 0, 'BucketLender#receiveLoanOwnership: Position owedToken mismatch'
        if HELD_TOKENAddress != mem[ceil32(return_data.size) + 1292 len 20]:
            revert with 0, 'BucketLender#receiveLoanOwnership: Position heldToken mismatch'
        if MAX_DURATION != mem[ceil32(return_data.size) + 1564 len 4]:
            revert with 0, 'BucketLender#receiveLoanOwnership: Position maxDuration mismatch'
        if CALL_TIMELIMIT != mem[ceil32(return_data.size) + 1468 len 4]:
            revert with 0, 'BucketLender#receiveLoanOwnership: Position callTimeLimit mismatch'
        if INTEREST_RATE != mem[ceil32(return_data.size) + 1596 len 4]:
            revert with 0, 'BucketLender#receiveLoanOwnership: Position interestRate mismatch'
        if INTEREST_PERIOD != mem[ceil32(return_data.size) + 1628 len 4]:
            revert with 0, 'BucketLender#receiveLoanOwnership: Position interestPeriod mismatch'
        require ext_code.size(DYDX_MARGINAddress)
        staticcall DYDX_MARGINAddress.getPositionBalance(bytes32 arg1) with:
                gas gas_remaining wei
               args POSITION_ID
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 0 / MIN_HELD_TOKEN_DENOMINATOR:
            revert with 0, 'BucketLender#receiveLoanOwnership: Not enough heldToken as collateral'
    else:
        require ext_call.return_data[128] * MIN_HELD_TOKEN_NUMERATOR / MIN_HELD_TOKEN_NUMERATOR == ext_call.return_data[128]
        require MIN_HELD_TOKEN_DENOMINATOR
        require ext_call.return_data[128] > 0
        require not principalTotal
        require arg1 != this.address
        if OWED_TOKENAddress != mem[ceil32(return_data.size) + 1260 len 20]:
            revert with 0, 'BucketLender#receiveLoanOwnership: Position owedToken mismatch'
        if HELD_TOKENAddress != mem[ceil32(return_data.size) + 1292 len 20]:
            revert with 0, 'BucketLender#receiveLoanOwnership: Position heldToken mismatch'
        if MAX_DURATION != mem[ceil32(return_data.size) + 1564 len 4]:
            revert with 0, 'BucketLender#receiveLoanOwnership: Position maxDuration mismatch'
        if CALL_TIMELIMIT != mem[ceil32(return_data.size) + 1468 len 4]:
            revert with 0, 'BucketLender#receiveLoanOwnership: Position callTimeLimit mismatch'
        if INTEREST_RATE != mem[ceil32(return_data.size) + 1596 len 4]:
            revert with 0, 'BucketLender#receiveLoanOwnership: Position interestRate mismatch'
        if INTEREST_PERIOD != mem[ceil32(return_data.size) + 1628 len 4]:
            revert with 0, 'BucketLender#receiveLoanOwnership: Position interestPeriod mismatch'
        require ext_code.size(DYDX_MARGINAddress)
        staticcall DYDX_MARGINAddress.getPositionBalance(bytes32 arg1) with:
                gas gas_remaining wei
               args POSITION_ID
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[128] * MIN_HELD_TOKEN_NUMERATOR / MIN_HELD_TOKEN_DENOMINATOR:
            revert with 0, 'BucketLender#receiveLoanOwnership: Not enough heldToken as collateral'
    stor5B8C = ext_call.return_data[128]
    principalTotal = ext_call.return_data[128]
    require ext_call.return_data[128] + weightForBucket[0] >= weightForBucket[0]
    weightForBucket[0] += ext_call.return_data[128]
    require ext_call.return_data[128] + weightForBucketForAccount[0][address(arg1)] >= weightForBucketForAccount[0][address(arg1)]
    weightForBucketForAccount[0][address(arg1)] += ext_call.return_data[128]
    if stor2 + 1 != stor2:
        revert with 0, 'Reentrancy check failure'
    return this.address
}

function rebalanceBuckets() payable {
    mem[64] = 96
    require not msg.value
    stor2++
    if not stor11:
        require ext_code.size(DYDX_MARGINAddress)
        staticcall DYDX_MARGINAddress.getPositionPrincipal(bytes32 arg1) with:
                gas gas_remaining wei
               args POSITION_ID
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] <= principalTotal
        if principalTotal - ext_call.return_data[0]:
            require ext_code.size(DYDX_MARGINAddress)
            staticcall DYDX_MARGINAddress.getTotalOwedTokenRepaidToLender(bytes32 arg1) with:
                    gas gas_remaining wei
                   args POSITION_ID
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require cachedRepaidAmount <= ext_call.return_data[0]
            require ext_call.return_data[0] - cachedRepaidAmount >= principalTotal - ext_call.return_data[0]
            require cachedRepaidAmount <= ext_call.return_data[0]
            s = 0
            s = criticalBucket
            while principalTotal - ext_call.return_data[0] > 0:
                require s <= criticalBucket
                mem[0] = s
                mem[32] = 5
                if principalTotal - ext_call.return_data[0] < principalForBucket[s]:
                    if not principalTotal - ext_call.return_data[0]:
                        s = principalTotal - ext_call.return_data[0]
                        s = s - 1
                        continue 
                    if (principalTotal * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (principalTotal * cachedRepaidAmount) + (ext_call.return_data[0] * cachedRepaidAmount) / principalTotal - ext_call.return_data[0] == ext_call.return_data[0] - cachedRepaidAmount:
                        if principalTotal - ext_call.return_data[0]:
                            if not (principalTotal * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (principalTotal * cachedRepaidAmount) + (ext_call.return_data[0] * cachedRepaidAmount) / principalTotal - ext_call.return_data[0]:
                                if not principalTotal - ext_call.return_data[0]:
                                    if (principalTotal * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (principalTotal * cachedRepaidAmount) + (ext_call.return_data[0] * cachedRepaidAmount) / principalTotal - ext_call.return_data[0] <= ext_call.return_data[0] - cachedRepaidAmount:
                                        s = principalTotal - ext_call.return_data[0]
                                        s = s - 1
                                        continue 
                                else:
                                    if principalTotal - ext_call.return_data[0] <= principalTotal:
                                        mem[32] = 5
                                        if principalTotal - ext_call.return_data[0] <= principalForBucket[s]:
                                            mem[mem[64]] = ext_call.return_data[0]
                                            mem[mem[64] + 32] = s
                                            mem[mem[64] + 64] = principalForBucket[s] - principalTotal + ext_call.return_data[0]
                                            mem[mem[64] + 96] = principalTotal - ext_call.return_data[0]
                                            emit PrincipalDecreased(ext_call.return_data[0], s, principalForBucket[s] - principalTotal + ext_call.return_data[0], principalTotal - ext_call.return_data[0]);
                                            principalTotal = ext_call.return_data[0]
                                            mem[0] = s
                                            mem[32] = 5
                                            principalForBucket[s] = principalForBucket[s] - principalTotal + ext_call.return_data[0]
                                            if (principalTotal * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (principalTotal * cachedRepaidAmount) + (ext_call.return_data[0] * cachedRepaidAmount) / principalTotal - ext_call.return_data[0] <= ext_call.return_data[0] - cachedRepaidAmount:
                                                s = principalTotal - ext_call.return_data[0]
                                                s = s - 1
                                                continue 
                            else:
                                if ((principalTotal * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (principalTotal * cachedRepaidAmount) + (ext_call.return_data[0] * cachedRepaidAmount) / principalTotal - ext_call.return_data[0]) + availableTotal >= availableTotal:
                                    mem[32] = 3
                                    if ((principalTotal * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (principalTotal * cachedRepaidAmount) + (ext_call.return_data[0] * cachedRepaidAmount) / principalTotal - ext_call.return_data[0]) + availableForBucket[s] >= availableForBucket[s]:
                                        mem[mem[64]] = ((principalTotal * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (principalTotal * cachedRepaidAmount) + (ext_call.return_data[0] * cachedRepaidAmount) / principalTotal - ext_call.return_data[0]) + availableTotal
                                        mem[mem[64] + 32] = s
                                        mem[mem[64] + 64] = ((principalTotal * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (principalTotal * cachedRepaidAmount) + (ext_call.return_data[0] * cachedRepaidAmount) / principalTotal - ext_call.return_data[0]) + availableForBucket[s]
                                        mem[mem[64] + 96] = (principalTotal * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (principalTotal * cachedRepaidAmount) + (ext_call.return_data[0] * cachedRepaidAmount) / principalTotal - ext_call.return_data[0]
                                        emit AvailableIncreased(((principalTotal * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (principalTotal * cachedRepaidAmount) + (ext_call.return_data[0] * cachedRepaidAmount) / principalTotal - ext_call.return_data[0]) + availableTotal, s, ((principalTotal * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (principalTotal * cachedRepaidAmount) + (ext_call.return_data[0] * cachedRepaidAmount) / principalTotal - ext_call.return_data[0]) + availableForBucket[s], (principalTotal * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (principalTotal * cachedRepaidAmount) + (ext_call.return_data[0] * cachedRepaidAmount) / principalTotal - ext_call.return_data[0]);
                                        availableTotal += (principalTotal * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (principalTotal * cachedRepaidAmount) + (ext_call.return_data[0] * cachedRepaidAmount) / principalTotal - ext_call.return_data[0]
                                        mem[0] = s
                                        mem[32] = 3
                                        availableForBucket[s] += (principalTotal * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (principalTotal * cachedRepaidAmount) + (ext_call.return_data[0] * cachedRepaidAmount) / principalTotal - ext_call.return_data[0]
                                        if not principalTotal - ext_call.return_data[0]:
                                            if (principalTotal * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (principalTotal * cachedRepaidAmount) + (ext_call.return_data[0] * cachedRepaidAmount) / principalTotal - ext_call.return_data[0] <= ext_call.return_data[0] - cachedRepaidAmount:
                                                s = principalTotal - ext_call.return_data[0]
                                                s = s - 1
                                                continue 
                                        else:
                                            if principalTotal - ext_call.return_data[0] <= principalTotal:
                                                mem[32] = 5
                                                if principalTotal - ext_call.return_data[0] <= principalForBucket[s]:
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    mem[mem[64] + 32] = s
                                                    mem[mem[64] + 64] = principalForBucket[s] - principalTotal + ext_call.return_data[0]
                                                    mem[mem[64] + 96] = principalTotal - ext_call.return_data[0]
                                                    emit PrincipalDecreased(ext_call.return_data[0], s, principalForBucket[s] - principalTotal + ext_call.return_data[0], principalTotal - ext_call.return_data[0]);
                                                    principalTotal = ext_call.return_data[0]
                                                    mem[0] = s
                                                    mem[32] = 5
                                                    principalForBucket[s] = principalForBucket[s] - principalTotal + ext_call.return_data[0]
                                                    if (principalTotal * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (principalTotal * cachedRepaidAmount) + (ext_call.return_data[0] * cachedRepaidAmount) / principalTotal - ext_call.return_data[0] <= ext_call.return_data[0] - cachedRepaidAmount:
                                                        s = principalTotal - ext_call.return_data[0]
                                                        s = s - 1
                                                        continue 
                else:
                    if not principalForBucket[s]:
                        s = principalForBucket[s]
                        s = s - 1
                        continue 
                    if (ext_call.return_data[0] * principalForBucket[s]) - (cachedRepaidAmount * principalForBucket[s]) / principalForBucket[s] == ext_call.return_data[0] - cachedRepaidAmount:
                        if principalTotal - ext_call.return_data[0]:
                            if not (ext_call.return_data[0] * principalForBucket[s]) - (cachedRepaidAmount * principalForBucket[s]) / principalTotal - ext_call.return_data[0]:
                                if not principalForBucket[s]:
                                    if principalForBucket[s] <= principalTotal - ext_call.return_data[0]:
                                        if (ext_call.return_data[0] * principalForBucket[s]) - (cachedRepaidAmount * principalForBucket[s]) / principalTotal - ext_call.return_data[0] <= ext_call.return_data[0] - cachedRepaidAmount:
                                            s = principalForBucket[s]
                                            s = s - 1
                                            continue 
                                else:
                                    if principalForBucket[s] <= principalTotal:
                                        mem[32] = 5
                                        if principalForBucket[s] <= principalForBucket[s]:
                                            mem[mem[64]] = principalTotal - principalForBucket[s]
                                            mem[mem[64] + 32] = s
                                            mem[mem[64] + 64] = 0
                                            mem[mem[64] + 96] = principalForBucket[s]
                                            emit PrincipalDecreased(principalTotal - principalForBucket[s], s, 0, principalForBucket[s]);
                                            principalTotal -= principalForBucket[s]
                                            mem[0] = s
                                            mem[32] = 5
                                            principalForBucket[s] = 0
                                            if principalForBucket[s] <= principalTotal - ext_call.return_data[0]:
                                                if (ext_call.return_data[0] * principalForBucket[s]) - (cachedRepaidAmount * principalForBucket[s]) / principalTotal - ext_call.return_data[0] <= ext_call.return_data[0] - cachedRepaidAmount:
                                                    s = principalForBucket[s]
                                                    s = s - 1
                                                    continue 
                            else:
                                if ((ext_call.return_data[0] * principalForBucket[s]) - (cachedRepaidAmount * principalForBucket[s]) / principalTotal - ext_call.return_data[0]) + availableTotal >= availableTotal:
                                    mem[32] = 3
                                    if ((ext_call.return_data[0] * principalForBucket[s]) - (cachedRepaidAmount * principalForBucket[s]) / principalTotal - ext_call.return_data[0]) + availableForBucket[s] >= availableForBucket[s]:
                                        mem[mem[64]] = ((ext_call.return_data[0] * principalForBucket[s]) - (cachedRepaidAmount * principalForBucket[s]) / principalTotal - ext_call.return_data[0]) + availableTotal
                                        mem[mem[64] + 32] = s
                                        mem[mem[64] + 64] = ((ext_call.return_data[0] * principalForBucket[s]) - (cachedRepaidAmount * principalForBucket[s]) / principalTotal - ext_call.return_data[0]) + availableForBucket[s]
                                        mem[mem[64] + 96] = (ext_call.return_data[0] * principalForBucket[s]) - (cachedRepaidAmount * principalForBucket[s]) / principalTotal - ext_call.return_data[0]
                                        emit AvailableIncreased(((ext_call.return_data[0] * principalForBucket[s]) - (cachedRepaidAmount * principalForBucket[s]) / principalTotal - ext_call.return_data[0]) + availableTotal, s, ((ext_call.return_data[0] * principalForBucket[s]) - (cachedRepaidAmount * principalForBucket[s]) / principalTotal - ext_call.return_data[0]) + availableForBucket[s], (ext_call.return_data[0] * principalForBucket[s]) - (cachedRepaidAmount * principalForBucket[s]) / principalTotal - ext_call.return_data[0]);
                                        availableTotal += (ext_call.return_data[0] * principalForBucket[s]) - (cachedRepaidAmount * principalForBucket[s]) / principalTotal - ext_call.return_data[0]
                                        mem[0] = s
                                        mem[32] = 3
                                        availableForBucket[s] += (ext_call.return_data[0] * principalForBucket[s]) - (cachedRepaidAmount * principalForBucket[s]) / principalTotal - ext_call.return_data[0]
                                        if not principalForBucket[s]:
                                            if principalForBucket[s] <= principalTotal - ext_call.return_data[0]:
                                                if (ext_call.return_data[0] * principalForBucket[s]) - (cachedRepaidAmount * principalForBucket[s]) / principalTotal - ext_call.return_data[0] <= ext_call.return_data[0] - cachedRepaidAmount:
                                                    s = principalForBucket[s]
                                                    s = s - 1
                                                    continue 
                                        else:
                                            if principalForBucket[s] <= principalTotal:
                                                mem[32] = 5
                                                if principalForBucket[s] <= principalForBucket[s]:
                                                    mem[mem[64]] = principalTotal - principalForBucket[s]
                                                    mem[mem[64] + 32] = s
                                                    mem[mem[64] + 64] = 0
                                                    mem[mem[64] + 96] = principalForBucket[s]
                                                    emit PrincipalDecreased(principalTotal - principalForBucket[s], s, 0, principalForBucket[s]);
                                                    principalTotal -= principalForBucket[s]
                                                    mem[0] = s
                                                    mem[32] = 5
                                                    principalForBucket[s] = 0
                                                    if principalForBucket[s] <= principalTotal - ext_call.return_data[0]:
                                                        if (ext_call.return_data[0] * principalForBucket[s]) - (cachedRepaidAmount * principalForBucket[s]) / principalTotal - ext_call.return_data[0] <= ext_call.return_data[0] - cachedRepaidAmount:
                                                            s = principalForBucket[s]
                                                            s = s - 1
                                                            continue 
                revert
            require not principalTotal - ext_call.return_data[0]
            require not ext_call.return_data[0] - cachedRepaidAmount
            cachedRepaidAmount = ext_call.return_data[0]
        require ext_call.return_data[0] == principalTotal
    if stor2 + 1 != stor2:
        revert with 0, 'Reentrancy check failure'
}

function forceRecoverCollateralOnBehalfOf(address arg1, bytes32 arg2, address arg3) {
    if DYDX_MARGINAddress != msg.sender:
        revert with 0, 'OnlyMargin#onlyMargin: Only Margin can call'
    stor2++
    if arg2 != POSITION_ID:
        revert with 0, 'BucketLender#onlyPosition: Incorrect position'
    require ext_code.size(DYDX_MARGINAddress)
    staticcall DYDX_MARGINAddress.getPosition(bytes32 arg1) with:
            gas gas_remaining wei
           args arg2
    mem[1248 len 384] = ext_call.return_data[0 len 384]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 384
    mem[64] = ceil32(return_data.size) + 1632
    mem[ceil32(return_data.size) + 1440] = ext_call.return_data[220 len 4]
    mem[ceil32(return_data.size) + 1472] = ext_call.return_data[252 len 4]
    mem[ceil32(return_data.size) + 1504] = ext_call.return_data[284 len 4]
    mem[ceil32(return_data.size) + 1536] = ext_call.return_data[316 len 4]
    require mem[ceil32(return_data.size) + 1564 len 4] + mem[ceil32(return_data.size) + 1500 len 4] >= mem[ceil32(return_data.size) + 1500 len 4]
    if mem[ceil32(return_data.size) + 1532 len 4] <= 0:
        require RECOVERY_DELAY >= 0
        if block.timestamp < RECOVERY_DELAY + mem[ceil32(return_data.size) + 1564 len 4] + mem[ceil32(return_data.size) + 1500 len 4]:
            revert with 0, 'BucketLenderWithRecoveryDelay#forceRecoverCollateralOnBehalfOf: Recovery too early'
    else:
        require mem[ceil32(return_data.size) + 1468 len 4] + mem[ceil32(return_data.size) + 1532 len 4] >= mem[ceil32(return_data.size) + 1532 len 4]
        require RECOVERY_DELAY >= 0
        if mem[ceil32(return_data.size) + 1564 len 4] + mem[ceil32(return_data.size) + 1500 len 4] < mem[ceil32(return_data.size) + 1468 len 4] + mem[ceil32(return_data.size) + 1532 len 4]:
            if block.timestamp < RECOVERY_DELAY + mem[ceil32(return_data.size) + 1564 len 4] + mem[ceil32(return_data.size) + 1500 len 4]:
                revert with 0, 'BucketLenderWithRecoveryDelay#forceRecoverCollateralOnBehalfOf: Recovery too early'
        else:
            if block.timestamp < RECOVERY_DELAY + mem[ceil32(return_data.size) + 1468 len 4] + mem[ceil32(return_data.size) + 1532 len 4]:
                revert with 0, 'BucketLenderWithRecoveryDelay#forceRecoverCollateralOnBehalfOf: Recovery too early'
    if arg3 != this.address:
        revert with 0, 'BucketLender#forceRecoverCollateralOnBehalfOf: Recipient must be this contract'
    if not stor11:
        require ext_code.size(DYDX_MARGINAddress)
        staticcall DYDX_MARGINAddress.getPositionPrincipal(bytes32 arg1) with:
                gas gas_remaining wei
               args POSITION_ID
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] <= principalTotal
        if principalTotal - ext_call.return_data[0]:
            require ext_code.size(DYDX_MARGINAddress)
            staticcall DYDX_MARGINAddress.getTotalOwedTokenRepaidToLender(bytes32 arg1) with:
                    gas gas_remaining wei
                   args POSITION_ID
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require cachedRepaidAmount <= ext_call.return_data[0]
            require ext_call.return_data[0] - cachedRepaidAmount >= principalTotal - ext_call.return_data[0]
            require cachedRepaidAmount <= ext_call.return_data[0]
            s = 0
            s = criticalBucket
            while principalTotal - ext_call.return_data[0] > 0:
                require s <= criticalBucket
                mem[0] = s
                mem[32] = 5
                if principalTotal - ext_call.return_data[0] < principalForBucket[s]:
                    if not principalTotal - ext_call.return_data[0]:
                        s = principalTotal - ext_call.return_data[0]
                        s = s - 1
                        continue 
                    if (principalTotal * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (principalTotal * cachedRepaidAmount) + (ext_call.return_data[0] * cachedRepaidAmount) / principalTotal - ext_call.return_data[0] == ext_call.return_data[0] - cachedRepaidAmount:
                        if principalTotal - ext_call.return_data[0]:
                            if not (principalTotal * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (principalTotal * cachedRepaidAmount) + (ext_call.return_data[0] * cachedRepaidAmount) / principalTotal - ext_call.return_data[0]:
                                if not principalTotal - ext_call.return_data[0]:
                                    if (principalTotal * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (principalTotal * cachedRepaidAmount) + (ext_call.return_data[0] * cachedRepaidAmount) / principalTotal - ext_call.return_data[0] <= ext_call.return_data[0] - cachedRepaidAmount:
                                        s = principalTotal - ext_call.return_data[0]
                                        s = s - 1
                                        continue 
                                else:
                                    if principalTotal - ext_call.return_data[0] <= principalTotal:
                                        mem[32] = 5
                                        if principalTotal - ext_call.return_data[0] <= principalForBucket[s]:
                                            mem[mem[64]] = ext_call.return_data[0]
                                            mem[mem[64] + 32] = s
                                            mem[mem[64] + 64] = principalForBucket[s] - principalTotal + ext_call.return_data[0]
                                            mem[mem[64] + 96] = principalTotal - ext_call.return_data[0]
                                            emit PrincipalDecreased(ext_call.return_data[0], s, principalForBucket[s] - principalTotal + ext_call.return_data[0], principalTotal - ext_call.return_data[0]);
                                            principalTotal = ext_call.return_data[0]
                                            mem[0] = s
                                            mem[32] = 5
                                            principalForBucket[s] = principalForBucket[s] - principalTotal + ext_call.return_data[0]
                                            if (principalTotal * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (principalTotal * cachedRepaidAmount) + (ext_call.return_data[0] * cachedRepaidAmount) / principalTotal - ext_call.return_data[0] <= ext_call.return_data[0] - cachedRepaidAmount:
                                                s = principalTotal - ext_call.return_data[0]
                                                s = s - 1
                                                continue 
                            else:
                                if ((principalTotal * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (principalTotal * cachedRepaidAmount) + (ext_call.return_data[0] * cachedRepaidAmount) / principalTotal - ext_call.return_data[0]) + availableTotal >= availableTotal:
                                    mem[32] = 3
                                    if ((principalTotal * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (principalTotal * cachedRepaidAmount) + (ext_call.return_data[0] * cachedRepaidAmount) / principalTotal - ext_call.return_data[0]) + availableForBucket[s] >= availableForBucket[s]:
                                        mem[mem[64]] = ((principalTotal * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (principalTotal * cachedRepaidAmount) + (ext_call.return_data[0] * cachedRepaidAmount) / principalTotal - ext_call.return_data[0]) + availableTotal
                                        mem[mem[64] + 32] = s
                                        mem[mem[64] + 64] = ((principalTotal * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (principalTotal * cachedRepaidAmount) + (ext_call.return_data[0] * cachedRepaidAmount) / principalTotal - ext_call.return_data[0]) + availableForBucket[s]
                                        mem[mem[64] + 96] = (principalTotal * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (principalTotal * cachedRepaidAmount) + (ext_call.return_data[0] * cachedRepaidAmount) / principalTotal - ext_call.return_data[0]
                                        emit AvailableIncreased(((principalTotal * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (principalTotal * cachedRepaidAmount) + (ext_call.return_data[0] * cachedRepaidAmount) / principalTotal - ext_call.return_data[0]) + availableTotal, s, ((principalTotal * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (principalTotal * cachedRepaidAmount) + (ext_call.return_data[0] * cachedRepaidAmount) / principalTotal - ext_call.return_data[0]) + availableForBucket[s], (principalTotal * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (principalTotal * cachedRepaidAmount) + (ext_call.return_data[0] * cachedRepaidAmount) / principalTotal - ext_call.return_data[0]);
                                        availableTotal += (principalTotal * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (principalTotal * cachedRepaidAmount) + (ext_call.return_data[0] * cachedRepaidAmount) / principalTotal - ext_call.return_data[0]
                                        mem[0] = s
                                        mem[32] = 3
                                        availableForBucket[s] += (principalTotal * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (principalTotal * cachedRepaidAmount) + (ext_call.return_data[0] * cachedRepaidAmount) / principalTotal - ext_call.return_data[0]
                                        if not principalTotal - ext_call.return_data[0]:
                                            if (principalTotal * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (principalTotal * cachedRepaidAmount) + (ext_call.return_data[0] * cachedRepaidAmount) / principalTotal - ext_call.return_data[0] <= ext_call.return_data[0] - cachedRepaidAmount:
                                                s = principalTotal - ext_call.return_data[0]
                                                s = s - 1
                                                continue 
                                        else:
                                            if principalTotal - ext_call.return_data[0] <= principalTotal:
                                                mem[32] = 5
                                                if principalTotal - ext_call.return_data[0] <= principalForBucket[s]:
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    mem[mem[64] + 32] = s
                                                    mem[mem[64] + 64] = principalForBucket[s] - principalTotal + ext_call.return_data[0]
                                                    mem[mem[64] + 96] = principalTotal - ext_call.return_data[0]
                                                    emit PrincipalDecreased(ext_call.return_data[0], s, principalForBucket[s] - principalTotal + ext_call.return_data[0], principalTotal - ext_call.return_data[0]);
                                                    principalTotal = ext_call.return_data[0]
                                                    mem[0] = s
                                                    mem[32] = 5
                                                    principalForBucket[s] = principalForBucket[s] - principalTotal + ext_call.return_data[0]
                                                    if (principalTotal * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (principalTotal * cachedRepaidAmount) + (ext_call.return_data[0] * cachedRepaidAmount) / principalTotal - ext_call.return_data[0] <= ext_call.return_data[0] - cachedRepaidAmount:
                                                        s = principalTotal - ext_call.return_data[0]
                                                        s = s - 1
                                                        continue 
                else:
                    if not principalForBucket[s]:
                        s = principalForBucket[s]
                        s = s - 1
                        continue 
                    if (ext_call.return_data[0] * principalForBucket[s]) - (cachedRepaidAmount * principalForBucket[s]) / principalForBucket[s] == ext_call.return_data[0] - cachedRepaidAmount:
                        if principalTotal - ext_call.return_data[0]:
                            if not (ext_call.return_data[0] * principalForBucket[s]) - (cachedRepaidAmount * principalForBucket[s]) / principalTotal - ext_call.return_data[0]:
                                if not principalForBucket[s]:
                                    if principalForBucket[s] <= principalTotal - ext_call.return_data[0]:
                                        if (ext_call.return_data[0] * principalForBucket[s]) - (cachedRepaidAmount * principalForBucket[s]) / principalTotal - ext_call.return_data[0] <= ext_call.return_data[0] - cachedRepaidAmount:
                                            s = principalForBucket[s]
                                            s = s - 1
                                            continue 
                                else:
                                    if principalForBucket[s] <= principalTotal:
                                        mem[32] = 5
                                        if principalForBucket[s] <= principalForBucket[s]:
                                            mem[mem[64]] = principalTotal - principalForBucket[s]
                                            mem[mem[64] + 32] = s
                                            mem[mem[64] + 64] = 0
                                            mem[mem[64] + 96] = principalForBucket[s]
                                            emit PrincipalDecreased(principalTotal - principalForBucket[s], s, 0, principalForBucket[s]);
                                            principalTotal -= principalForBucket[s]
                                            mem[0] = s
                                            mem[32] = 5
                                            principalForBucket[s] = 0
                                            if principalForBucket[s] <= principalTotal - ext_call.return_data[0]:
                                                if (ext_call.return_data[0] * principalForBucket[s]) - (cachedRepaidAmount * principalForBucket[s]) / principalTotal - ext_call.return_data[0] <= ext_call.return_data[0] - cachedRepaidAmount:
                                                    s = principalForBucket[s]
                                                    s = s - 1
                                                    continue 
                            else:
                                if ((ext_call.return_data[0] * principalForBucket[s]) - (cachedRepaidAmount * principalForBucket[s]) / principalTotal - ext_call.return_data[0]) + availableTotal >= availableTotal:
                                    mem[32] = 3
                                    if ((ext_call.return_data[0] * principalForBucket[s]) - (cachedRepaidAmount * principalForBucket[s]) / principalTotal - ext_call.return_data[0]) + availableForBucket[s] >= availableForBucket[s]:
                                        mem[mem[64]] = ((ext_call.return_data[0] * principalForBucket[s]) - (cachedRepaidAmount * principalForBucket[s]) / principalTotal - ext_call.return_data[0]) + availableTotal
                                        mem[mem[64] + 32] = s
                                        mem[mem[64] + 64] = ((ext_call.return_data[0] * principalForBucket[s]) - (cachedRepaidAmount * principalForBucket[s]) / principalTotal - ext_call.return_data[0]) + availableForBucket[s]
                                        mem[mem[64] + 96] = (ext_call.return_data[0] * principalForBucket[s]) - (cachedRepaidAmount * principalForBucket[s]) / principalTotal - ext_call.return_data[0]
                                        emit AvailableIncreased(((ext_call.return_data[0] * principalForBucket[s]) - (cachedRepaidAmount * principalForBucket[s]) / principalTotal - ext_call.return_data[0]) + availableTotal, s, ((ext_call.return_data[0] * principalForBucket[s]) - (cachedRepaidAmount * principalForBucket[s]) / principalTotal - ext_call.return_data[0]) + availableForBucket[s], (ext_call.return_data[0] * principalForBucket[s]) - (cachedRepaidAmount * principalForBucket[s]) / principalTotal - ext_call.return_data[0]);
                                        availableTotal += (ext_call.return_data[0] * principalForBucket[s]) - (cachedRepaidAmount * principalForBucket[s]) / principalTotal - ext_call.return_data[0]
                                        mem[0] = s
                                        mem[32] = 3
                                        availableForBucket[s] += (ext_call.return_data[0] * principalForBucket[s]) - (cachedRepaidAmount * principalForBucket[s]) / principalTotal - ext_call.return_data[0]
                                        if not principalForBucket[s]:
                                            if principalForBucket[s] <= principalTotal - ext_call.return_data[0]:
                                                if (ext_call.return_data[0] * principalForBucket[s]) - (cachedRepaidAmount * principalForBucket[s]) / principalTotal - ext_call.return_data[0] <= ext_call.return_data[0] - cachedRepaidAmount:
                                                    s = principalForBucket[s]
                                                    s = s - 1
                                                    continue 
                                        else:
                                            if principalForBucket[s] <= principalTotal:
                                                mem[32] = 5
                                                if principalForBucket[s] <= principalForBucket[s]:
                                                    mem[mem[64]] = principalTotal - principalForBucket[s]
                                                    mem[mem[64] + 32] = s
                                                    mem[mem[64] + 64] = 0
                                                    mem[mem[64] + 96] = principalForBucket[s]
                                                    emit PrincipalDecreased(principalTotal - principalForBucket[s], s, 0, principalForBucket[s]);
                                                    principalTotal -= principalForBucket[s]
                                                    mem[0] = s
                                                    mem[32] = 5
                                                    principalForBucket[s] = 0
                                                    if principalForBucket[s] <= principalTotal - ext_call.return_data[0]:
                                                        if (ext_call.return_data[0] * principalForBucket[s]) - (cachedRepaidAmount * principalForBucket[s]) / principalTotal - ext_call.return_data[0] <= ext_call.return_data[0] - cachedRepaidAmount:
                                                            s = principalForBucket[s]
                                                            s = s - 1
                                                            continue 
                revert
            require not principalTotal - ext_call.return_data[0]
            require not ext_call.return_data[0] - cachedRepaidAmount
            cachedRepaidAmount = ext_call.return_data[0]
        require ext_call.return_data[0] == principalTotal
    stor11 = 1
    if stor2 + 1 != stor2:
        revert with 0, 'Reentrancy check failure'
    return this.address
}

function withdrawExcessToken(address arg1, address arg2) payable {
    mem[64] = 96
    require not msg.value
    require msg.sender == owner
    if stor11:
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if OWED_TOKENAddress == arg1:
            require availableTotal <= ext_call.return_data[0]
            if ext_call.return_data[0] - availableTotal:
                if arg2 != this.address:
                    require ext_code.size(arg1)
                    call arg1.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg2), ext_call.return_data[0] - availableTotal
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if return_data.size:
                        if 32 != return_data.size:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TokenInteract#transfer: Transfer failed'
                        if not ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TokenInteract#transfer: Transfer failed'
            return (ext_call.return_data[0] - availableTotal)
        if HELD_TOKENAddress == arg1:
            if stor11:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'BucketLender#withdrawExcessToken: heldToken cannot be withdrawn if force-closed'
        if ext_call.return_data[0]:
            if arg2 != this.address:
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg2), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if return_data.size:
                    if 32 != return_data.size:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TokenInteract#transfer: Transfer failed'
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TokenInteract#transfer: Transfer failed'
    else:
        require ext_code.size(DYDX_MARGINAddress)
        staticcall DYDX_MARGINAddress.getPositionPrincipal(bytes32 arg1) with:
                gas gas_remaining wei
               args POSITION_ID
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] <= principalTotal
        if not principalTotal - ext_call.return_data[0]:
            require ext_call.return_data[0] == principalTotal
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if OWED_TOKENAddress == arg1:
                require availableTotal <= ext_call.return_data[0]
                if ext_call.return_data[0] - availableTotal:
                    if arg2 != this.address:
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg2), ext_call.return_data[0] - availableTotal
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if return_data.size:
                            if 32 != return_data.size:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TokenInteract#transfer: Transfer failed'
                            if not ext_call.return_data[0]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TokenInteract#transfer: Transfer failed'
                return (ext_call.return_data[0] - availableTotal)
            if HELD_TOKENAddress == arg1:
                if stor11:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'BucketLender#withdrawExcessToken: heldToken cannot be withdrawn if force-closed'
            if ext_call.return_data[0]:
                if arg2 != this.address:
                    require ext_code.size(arg1)
                    call arg1.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg2), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if return_data.size:
                        if 32 != return_data.size:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TokenInteract#transfer: Transfer failed'
                        if not ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TokenInteract#transfer: Transfer failed'
        else:
            require ext_code.size(DYDX_MARGINAddress)
            staticcall DYDX_MARGINAddress.getTotalOwedTokenRepaidToLender(bytes32 arg1) with:
                    gas gas_remaining wei
                   args POSITION_ID
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require cachedRepaidAmount <= ext_call.return_data[0]
            require ext_call.return_data[0] - cachedRepaidAmount >= principalTotal - ext_call.return_data[0]
            require cachedRepaidAmount <= ext_call.return_data[0]
            s = 0
            s = criticalBucket
            while principalTotal - ext_call.return_data[0] > 0:
                require s <= criticalBucket
                mem[0] = s
                mem[32] = 5
                if principalTotal - ext_call.return_data[0] < principalForBucket[s]:
                    if not principalTotal - ext_call.return_data[0]:
                        s = principalTotal - ext_call.return_data[0]
                        s = s - 1
                        continue 
                    if (principalTotal * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (principalTotal * cachedRepaidAmount) + (ext_call.return_data[0] * cachedRepaidAmount) / principalTotal - ext_call.return_data[0] == ext_call.return_data[0] - cachedRepaidAmount:
                        if principalTotal - ext_call.return_data[0]:
                            if not (principalTotal * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (principalTotal * cachedRepaidAmount) + (ext_call.return_data[0] * cachedRepaidAmount) / principalTotal - ext_call.return_data[0]:
                                if not principalTotal - ext_call.return_data[0]:
                                    if (principalTotal * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (principalTotal * cachedRepaidAmount) + (ext_call.return_data[0] * cachedRepaidAmount) / principalTotal - ext_call.return_data[0] <= ext_call.return_data[0] - cachedRepaidAmount:
                                        s = principalTotal - ext_call.return_data[0]
                                        s = s - 1
                                        continue 
                                else:
                                    if principalTotal - ext_call.return_data[0] <= principalTotal:
                                        mem[32] = 5
                                        if principalTotal - ext_call.return_data[0] <= principalForBucket[s]:
                                            mem[mem[64]] = ext_call.return_data[0]
                                            mem[mem[64] + 32] = s
                                            mem[mem[64] + 64] = principalForBucket[s] - principalTotal + ext_call.return_data[0]
                                            mem[mem[64] + 96] = principalTotal - ext_call.return_data[0]
                                            emit PrincipalDecreased(ext_call.return_data[0], s, principalForBucket[s] - principalTotal + ext_call.return_data[0], principalTotal - ext_call.return_data[0]);
                                            principalTotal = ext_call.return_data[0]
                                            mem[0] = s
                                            mem[32] = 5
                                            principalForBucket[s] = principalForBucket[s] - principalTotal + ext_call.return_data[0]
                                            if (principalTotal * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (principalTotal * cachedRepaidAmount) + (ext_call.return_data[0] * cachedRepaidAmount) / principalTotal - ext_call.return_data[0] <= ext_call.return_data[0] - cachedRepaidAmount:
                                                s = principalTotal - ext_call.return_data[0]
                                                s = s - 1
                                                continue 
                            else:
                                if ((principalTotal * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (principalTotal * cachedRepaidAmount) + (ext_call.return_data[0] * cachedRepaidAmount) / principalTotal - ext_call.return_data[0]) + availableTotal >= availableTotal:
                                    mem[32] = 3
                                    if ((principalTotal * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (principalTotal * cachedRepaidAmount) + (ext_call.return_data[0] * cachedRepaidAmount) / principalTotal - ext_call.return_data[0]) + availableForBucket[s] >= availableForBucket[s]:
                                        mem[mem[64]] = ((principalTotal * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (principalTotal * cachedRepaidAmount) + (ext_call.return_data[0] * cachedRepaidAmount) / principalTotal - ext_call.return_data[0]) + availableTotal
                                        mem[mem[64] + 32] = s
                                        mem[mem[64] + 64] = ((principalTotal * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (principalTotal * cachedRepaidAmount) + (ext_call.return_data[0] * cachedRepaidAmount) / principalTotal - ext_call.return_data[0]) + availableForBucket[s]
                                        mem[mem[64] + 96] = (principalTotal * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (principalTotal * cachedRepaidAmount) + (ext_call.return_data[0] * cachedRepaidAmount) / principalTotal - ext_call.return_data[0]
                                        emit AvailableIncreased(((principalTotal * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (principalTotal * cachedRepaidAmount) + (ext_call.return_data[0] * cachedRepaidAmount) / principalTotal - ext_call.return_data[0]) + availableTotal, s, ((principalTotal * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (principalTotal * cachedRepaidAmount) + (ext_call.return_data[0] * cachedRepaidAmount) / principalTotal - ext_call.return_data[0]) + availableForBucket[s], (principalTotal * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (principalTotal * cachedRepaidAmount) + (ext_call.return_data[0] * cachedRepaidAmount) / principalTotal - ext_call.return_data[0]);
                                        availableTotal += (principalTotal * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (principalTotal * cachedRepaidAmount) + (ext_call.return_data[0] * cachedRepaidAmount) / principalTotal - ext_call.return_data[0]
                                        mem[0] = s
                                        mem[32] = 3
                                        availableForBucket[s] += (principalTotal * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (principalTotal * cachedRepaidAmount) + (ext_call.return_data[0] * cachedRepaidAmount) / principalTotal - ext_call.return_data[0]
                                        if not principalTotal - ext_call.return_data[0]:
                                            if (principalTotal * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (principalTotal * cachedRepaidAmount) + (ext_call.return_data[0] * cachedRepaidAmount) / principalTotal - ext_call.return_data[0] <= ext_call.return_data[0] - cachedRepaidAmount:
                                                s = principalTotal - ext_call.return_data[0]
                                                s = s - 1
                                                continue 
                                        else:
                                            if principalTotal - ext_call.return_data[0] <= principalTotal:
                                                mem[32] = 5
                                                if principalTotal - ext_call.return_data[0] <= principalForBucket[s]:
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    mem[mem[64] + 32] = s
                                                    mem[mem[64] + 64] = principalForBucket[s] - principalTotal + ext_call.return_data[0]
                                                    mem[mem[64] + 96] = principalTotal - ext_call.return_data[0]
                                                    emit PrincipalDecreased(ext_call.return_data[0], s, principalForBucket[s] - principalTotal + ext_call.return_data[0], principalTotal - ext_call.return_data[0]);
                                                    principalTotal = ext_call.return_data[0]
                                                    mem[0] = s
                                                    mem[32] = 5
                                                    principalForBucket[s] = principalForBucket[s] - principalTotal + ext_call.return_data[0]
                                                    if (principalTotal * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (principalTotal * cachedRepaidAmount) + (ext_call.return_data[0] * cachedRepaidAmount) / principalTotal - ext_call.return_data[0] <= ext_call.return_data[0] - cachedRepaidAmount:
                                                        s = principalTotal - ext_call.return_data[0]
                                                        s = s - 1
                                                        continue 
                else:
                    if not principalForBucket[s]:
                        s = principalForBucket[s]
                        s = s - 1
                        continue 
                    if (ext_call.return_data[0] * principalForBucket[s]) - (cachedRepaidAmount * principalForBucket[s]) / principalForBucket[s] == ext_call.return_data[0] - cachedRepaidAmount:
                        if principalTotal - ext_call.return_data[0]:
                            if not (ext_call.return_data[0] * principalForBucket[s]) - (cachedRepaidAmount * principalForBucket[s]) / principalTotal - ext_call.return_data[0]:
                                if not principalForBucket[s]:
                                    if principalForBucket[s] <= principalTotal - ext_call.return_data[0]:
                                        if (ext_call.return_data[0] * principalForBucket[s]) - (cachedRepaidAmount * principalForBucket[s]) / principalTotal - ext_call.return_data[0] <= ext_call.return_data[0] - cachedRepaidAmount:
                                            s = principalForBucket[s]
                                            s = s - 1
                                            continue 
                                else:
                                    if principalForBucket[s] <= principalTotal:
                                        mem[32] = 5
                                        if principalForBucket[s] <= principalForBucket[s]:
                                            mem[mem[64]] = principalTotal - principalForBucket[s]
                                            mem[mem[64] + 32] = s
                                            mem[mem[64] + 64] = 0
                                            mem[mem[64] + 96] = principalForBucket[s]
                                            emit PrincipalDecreased(principalTotal - principalForBucket[s], s, 0, principalForBucket[s]);
                                            principalTotal -= principalForBucket[s]
                                            mem[0] = s
                                            mem[32] = 5
                                            principalForBucket[s] = 0
                                            if principalForBucket[s] <= principalTotal - ext_call.return_data[0]:
                                                if (ext_call.return_data[0] * principalForBucket[s]) - (cachedRepaidAmount * principalForBucket[s]) / principalTotal - ext_call.return_data[0] <= ext_call.return_data[0] - cachedRepaidAmount:
                                                    s = principalForBucket[s]
                                                    s = s - 1
                                                    continue 
                            else:
                                if ((ext_call.return_data[0] * principalForBucket[s]) - (cachedRepaidAmount * principalForBucket[s]) / principalTotal - ext_call.return_data[0]) + availableTotal >= availableTotal:
                                    mem[32] = 3
                                    if ((ext_call.return_data[0] * principalForBucket[s]) - (cachedRepaidAmount * principalForBucket[s]) / principalTotal - ext_call.return_data[0]) + availableForBucket[s] >= availableForBucket[s]:
                                        mem[mem[64]] = ((ext_call.return_data[0] * principalForBucket[s]) - (cachedRepaidAmount * principalForBucket[s]) / principalTotal - ext_call.return_data[0]) + availableTotal
                                        mem[mem[64] + 32] = s
                                        mem[mem[64] + 64] = ((ext_call.return_data[0] * principalForBucket[s]) - (cachedRepaidAmount * principalForBucket[s]) / principalTotal - ext_call.return_data[0]) + availableForBucket[s]
                                        mem[mem[64] + 96] = (ext_call.return_data[0] * principalForBucket[s]) - (cachedRepaidAmount * principalForBucket[s]) / principalTotal - ext_call.return_data[0]
                                        emit AvailableIncreased(((ext_call.return_data[0] * principalForBucket[s]) - (cachedRepaidAmount * principalForBucket[s]) / principalTotal - ext_call.return_data[0]) + availableTotal, s, ((ext_call.return_data[0] * principalForBucket[s]) - (cachedRepaidAmount * principalForBucket[s]) / principalTotal - ext_call.return_data[0]) + availableForBucket[s], (ext_call.return_data[0] * principalForBucket[s]) - (cachedRepaidAmount * principalForBucket[s]) / principalTotal - ext_call.return_data[0]);
                                        availableTotal += (ext_call.return_data[0] * principalForBucket[s]) - (cachedRepaidAmount * principalForBucket[s]) / principalTotal - ext_call.return_data[0]
                                        mem[0] = s
                                        mem[32] = 3
                                        availableForBucket[s] += (ext_call.return_data[0] * principalForBucket[s]) - (cachedRepaidAmount * principalForBucket[s]) / principalTotal - ext_call.return_data[0]
                                        if not principalForBucket[s]:
                                            if principalForBucket[s] <= principalTotal - ext_call.return_data[0]:
                                                if (ext_call.return_data[0] * principalForBucket[s]) - (cachedRepaidAmount * principalForBucket[s]) / principalTotal - ext_call.return_data[0] <= ext_call.return_data[0] - cachedRepaidAmount:
                                                    s = principalForBucket[s]
                                                    s = s - 1
                                                    continue 
                                        else:
                                            if principalForBucket[s] <= principalTotal:
                                                mem[32] = 5
                                                if principalForBucket[s] <= principalForBucket[s]:
                                                    mem[mem[64]] = principalTotal - principalForBucket[s]
                                                    mem[mem[64] + 32] = s
                                                    mem[mem[64] + 64] = 0
                                                    mem[mem[64] + 96] = principalForBucket[s]
                                                    emit PrincipalDecreased(principalTotal - principalForBucket[s], s, 0, principalForBucket[s]);
                                                    principalTotal -= principalForBucket[s]
                                                    mem[0] = s
                                                    mem[32] = 5
                                                    principalForBucket[s] = 0
                                                    if principalForBucket[s] <= principalTotal - ext_call.return_data[0]:
                                                        if (ext_call.return_data[0] * principalForBucket[s]) - (cachedRepaidAmount * principalForBucket[s]) / principalTotal - ext_call.return_data[0] <= ext_call.return_data[0] - cachedRepaidAmount:
                                                            s = principalForBucket[s]
                                                            s = s - 1
                                                            continue 
                revert
            require not principalTotal - ext_call.return_data[0]
            require not ext_call.return_data[0] - cachedRepaidAmount
            cachedRepaidAmount = ext_call.return_data[0]
            require ext_call.return_data[0] == principalTotal
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if OWED_TOKENAddress == arg1:
                require availableTotal <= ext_call.return_data[0]
                if ext_call.return_data[0] - availableTotal:
                    if arg2 != this.address:
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg2), ext_call.return_data[0] - availableTotal
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if return_data.size:
                            if 32 != return_data.size:
                                revert with 0, 'TokenInteract#transfer: Transfer failed'
                            if not ext_call.return_data[0]:
                                revert with 0, 'TokenInteract#transfer: Transfer failed'
                return (ext_call.return_data[0] - availableTotal)
            if HELD_TOKENAddress == arg1:
                if stor11:
                    revert with 0, 'BucketLender#withdrawExcessToken: heldToken cannot be withdrawn if force-closed'
            if ext_call.return_data[0]:
                if arg2 != this.address:
                    require ext_code.size(arg1)
                    call arg1.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg2), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if return_data.size:
                        if 32 != return_data.size:
                            revert with 0, 'TokenInteract#transfer: Transfer failed'
                        if not ext_call.return_data[0]:
                            revert with 0, 'TokenInteract#transfer: Transfer failed'
    return ext_call.return_data[0]
}

function increaseLoanOnBehalfOf(address arg1, bytes32 arg2, uint256 arg3, uint256 arg4) payable {
    mem[64] = 96
    require not msg.value
    if DYDX_MARGINAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyMargin#onlyMargin: Only Margin can call'
    stor2++
    if arg2 != POSITION_ID:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BucketLender#onlyPosition: Incorrect position'
    if arg1 != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'BucketLender#increaseLoanOnBehalfOf: Other lenders cannot lend for this position'
    require ext_code.size(DYDX_MARGINAddress)
    staticcall DYDX_MARGINAddress.isPositionCalled(bytes32 arg1) with:
            gas gas_remaining wei
           args POSITION_ID
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'BucketLender#increaseLoanOnBehalfOf: No lending while the position is margin-called'
    require ext_code.size(DYDX_MARGINAddress)
    staticcall DYDX_MARGINAddress.getPositionPrincipal(bytes32 arg1) with:
            gas gas_remaining wei
           args POSITION_ID
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg3 <= ext_call.return_data[0]
    require ext_call.return_data[0] - arg3 <= principalTotal
    if not principalTotal - ext_call.return_data[0] + arg3:
        if arg4 > availableTotal:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'BucketLender#accountForIncrease: No lending not-accounted-for funds'
        require ext_code.size(DYDX_MARGINAddress)
        staticcall DYDX_MARGINAddress.isPositionClosed(bytes32 arg1) with:
                gas gas_remaining wei
               args POSITION_ID
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require not ext_call.return_data[0]
        require ext_code.size(DYDX_MARGINAddress)
        staticcall DYDX_MARGINAddress.containsPosition(bytes32 arg1) with:
                gas gas_remaining wei
               args POSITION_ID
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            s = 0
            s = criticalBucket
            while arg3 > 0:
                require s <= 0
                mem[0] = s
                mem[32] = 3
                if arg4 < availableForBucket[s]:
                    if not arg4:
                        s = arg4
                        s = s + 1
                        continue 
                    if arg3 * arg4 / arg4 == arg3:
                        if arg4:
                            if arg4 <= availableTotal:
                                mem[32] = 3
                                if arg4 <= availableForBucket[s]:
                                    mem[mem[64]] = availableTotal - arg4
                                    mem[mem[64] + 32] = s
                                    mem[mem[64] + 64] = availableForBucket[s] - arg4
                                    mem[mem[64] + 96] = arg4
                                    emit AvailableDecreased(availableTotal - arg4, s, availableForBucket[s] - arg4, arg4);
                                    availableTotal -= arg4
                                    mem[0] = s
                                    mem[32] = 3
                                    availableForBucket[s] -= arg4
                                    if not arg3 * arg4 / arg4:
                                        if arg3 * arg4 / arg4 <= arg3:
                                            if arg4 <= arg4:
                                                s = arg4
                                                s = s + 1
                                                continue 
                                    else:
                                        if (arg3 * arg4 / arg4) + principalTotal >= principalTotal:
                                            mem[32] = 5
                                            if (arg3 * arg4 / arg4) + principalForBucket[s] >= principalForBucket[s]:
                                                mem[mem[64]] = (arg3 * arg4 / arg4) + principalTotal
                                                mem[mem[64] + 32] = s
                                                mem[mem[64] + 64] = (arg3 * arg4 / arg4) + principalForBucket[s]
                                                mem[mem[64] + 96] = arg3 * arg4 / arg4
                                                emit PrincipalIncreased((arg3 * arg4 / arg4) + principalTotal, s, (arg3 * arg4 / arg4) + principalForBucket[s], arg3 * arg4 / arg4);
                                                principalTotal += arg3 * arg4 / arg4
                                                mem[0] = s
                                                mem[32] = 5
                                                principalForBucket[s] += arg3 * arg4 / arg4
                                                if arg3 * arg4 / arg4 <= arg3:
                                                    if arg4 <= arg4:
                                                        s = arg4
                                                        s = s + 1
                                                        continue 
                else:
                    if not availableForBucket[s]:
                        s = availableForBucket[s]
                        s = s + 1
                        continue 
                    if arg3 * availableForBucket[s] / availableForBucket[s] == arg3:
                        if arg4:
                            if not availableForBucket[s]:
                                if not arg3 * availableForBucket[s] / arg4:
                                    if arg3 * availableForBucket[s] / arg4 <= arg3:
                                        if availableForBucket[s] <= arg4:
                                            s = availableForBucket[s]
                                            s = s + 1
                                            continue 
                                else:
                                    if (arg3 * availableForBucket[s] / arg4) + principalTotal >= principalTotal:
                                        mem[32] = 5
                                        if (arg3 * availableForBucket[s] / arg4) + principalForBucket[s] >= principalForBucket[s]:
                                            mem[mem[64]] = (arg3 * availableForBucket[s] / arg4) + principalTotal
                                            mem[mem[64] + 32] = s
                                            mem[mem[64] + 64] = (arg3 * availableForBucket[s] / arg4) + principalForBucket[s]
                                            mem[mem[64] + 96] = arg3 * availableForBucket[s] / arg4
                                            emit PrincipalIncreased((arg3 * availableForBucket[s] / arg4) + principalTotal, s, (arg3 * availableForBucket[s] / arg4) + principalForBucket[s], arg3 * availableForBucket[s] / arg4);
                                            principalTotal += arg3 * availableForBucket[s] / arg4
                                            mem[0] = s
                                            mem[32] = 5
                                            principalForBucket[s] += arg3 * availableForBucket[s] / arg4
                                            if arg3 * availableForBucket[s] / arg4 <= arg3:
                                                if availableForBucket[s] <= arg4:
                                                    s = availableForBucket[s]
                                                    s = s + 1
                                                    continue 
                            else:
                                if availableForBucket[s] <= availableTotal:
                                    mem[32] = 3
                                    if availableForBucket[s] <= availableForBucket[s]:
                                        mem[mem[64]] = availableTotal - availableForBucket[s]
                                        mem[mem[64] + 32] = s
                                        mem[mem[64] + 64] = 0
                                        mem[mem[64] + 96] = availableForBucket[s]
                                        emit AvailableDecreased(availableTotal - availableForBucket[s], s, 0, availableForBucket[s]);
                                        availableTotal -= availableForBucket[s]
                                        mem[0] = s
                                        mem[32] = 3
                                        availableForBucket[s] = 0
                                        if not arg3 * availableForBucket[s] / arg4:
                                            if arg3 * availableForBucket[s] / arg4 <= arg3:
                                                if availableForBucket[s] <= arg4:
                                                    s = availableForBucket[s]
                                                    s = s + 1
                                                    continue 
                                        else:
                                            if (arg3 * availableForBucket[s] / arg4) + principalTotal >= principalTotal:
                                                mem[32] = 5
                                                if (arg3 * availableForBucket[s] / arg4) + principalForBucket[s] >= principalForBucket[s]:
                                                    mem[mem[64]] = (arg3 * availableForBucket[s] / arg4) + principalTotal
                                                    mem[mem[64] + 32] = s
                                                    mem[mem[64] + 64] = (arg3 * availableForBucket[s] / arg4) + principalForBucket[s]
                                                    mem[mem[64] + 96] = arg3 * availableForBucket[s] / arg4
                                                    emit PrincipalIncreased((arg3 * availableForBucket[s] / arg4) + principalTotal, s, (arg3 * availableForBucket[s] / arg4) + principalForBucket[s], arg3 * availableForBucket[s] / arg4);
                                                    principalTotal += arg3 * availableForBucket[s] / arg4
                                                    mem[0] = s
                                                    mem[32] = 5
                                                    principalForBucket[s] += arg3 * availableForBucket[s] / arg4
                                                    if arg3 * availableForBucket[s] / arg4 <= arg3:
                                                        if availableForBucket[s] <= arg4:
                                                            s = availableForBucket[s]
                                                            s = s + 1
                                                            continue 
                revert
        else:
            require ext_code.size(DYDX_MARGINAddress)
            staticcall DYDX_MARGINAddress.getPositionStartTimestamp(bytes32 arg1) with:
                    gas gas_remaining wei
                   args POSITION_ID
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[28 len 4] <= block.timestamp
            require BUCKET_TIME
            require (block.timestamp - ext_call.return_data[28 len 4] / BUCKET_TIME) + 1 >= block.timestamp - ext_call.return_data[28 len 4] / BUCKET_TIME
            s = 0
            s = criticalBucket
            while arg3 > 0:
                require s <= (block.timestamp - uint32(ext_call.return_data[0]) / BUCKET_TIME) + 1
                mem[0] = s
                mem[32] = 3
                if arg4 < availableForBucket[s]:
                    if not arg4:
                        s = arg4
                        s = s + 1
                        continue 
                    if arg3 * arg4 / arg4 == arg3:
                        if arg4:
                            if arg4 <= availableTotal:
                                mem[32] = 3
                                if arg4 <= availableForBucket[s]:
                                    mem[mem[64]] = availableTotal - arg4
                                    mem[mem[64] + 32] = s
                                    mem[mem[64] + 64] = availableForBucket[s] - arg4
                                    mem[mem[64] + 96] = arg4
                                    emit AvailableDecreased(availableTotal - arg4, s, availableForBucket[s] - arg4, arg4);
                                    availableTotal -= arg4
                                    mem[0] = s
                                    mem[32] = 3
                                    availableForBucket[s] -= arg4
                                    if not arg3 * arg4 / arg4:
                                        if arg3 * arg4 / arg4 <= arg3:
                                            if arg4 <= arg4:
                                                s = arg4
                                                s = s + 1
                                                continue 
                                    else:
                                        if (arg3 * arg4 / arg4) + principalTotal >= principalTotal:
                                            mem[32] = 5
                                            if (arg3 * arg4 / arg4) + principalForBucket[s] >= principalForBucket[s]:
                                                mem[mem[64]] = (arg3 * arg4 / arg4) + principalTotal
                                                mem[mem[64] + 32] = s
                                                mem[mem[64] + 64] = (arg3 * arg4 / arg4) + principalForBucket[s]
                                                mem[mem[64] + 96] = arg3 * arg4 / arg4
                                                emit PrincipalIncreased((arg3 * arg4 / arg4) + principalTotal, s, (arg3 * arg4 / arg4) + principalForBucket[s], arg3 * arg4 / arg4);
                                                principalTotal += arg3 * arg4 / arg4
                                                mem[0] = s
                                                mem[32] = 5
                                                principalForBucket[s] += arg3 * arg4 / arg4
                                                if arg3 * arg4 / arg4 <= arg3:
                                                    if arg4 <= arg4:
                                                        s = arg4
                                                        s = s + 1
                                                        continue 
                else:
                    if not availableForBucket[s]:
                        s = availableForBucket[s]
                        s = s + 1
                        continue 
                    if arg3 * availableForBucket[s] / availableForBucket[s] == arg3:
                        if arg4:
                            if not availableForBucket[s]:
                                if not arg3 * availableForBucket[s] / arg4:
                                    if arg3 * availableForBucket[s] / arg4 <= arg3:
                                        if availableForBucket[s] <= arg4:
                                            s = availableForBucket[s]
                                            s = s + 1
                                            continue 
                                else:
                                    if (arg3 * availableForBucket[s] / arg4) + principalTotal >= principalTotal:
                                        mem[32] = 5
                                        if (arg3 * availableForBucket[s] / arg4) + principalForBucket[s] >= principalForBucket[s]:
                                            mem[mem[64]] = (arg3 * availableForBucket[s] / arg4) + principalTotal
                                            mem[mem[64] + 32] = s
                                            mem[mem[64] + 64] = (arg3 * availableForBucket[s] / arg4) + principalForBucket[s]
                                            mem[mem[64] + 96] = arg3 * availableForBucket[s] / arg4
                                            emit PrincipalIncreased((arg3 * availableForBucket[s] / arg4) + principalTotal, s, (arg3 * availableForBucket[s] / arg4) + principalForBucket[s], arg3 * availableForBucket[s] / arg4);
                                            principalTotal += arg3 * availableForBucket[s] / arg4
                                            mem[0] = s
                                            mem[32] = 5
                                            principalForBucket[s] += arg3 * availableForBucket[s] / arg4
                                            if arg3 * availableForBucket[s] / arg4 <= arg3:
                                                if availableForBucket[s] <= arg4:
                                                    s = availableForBucket[s]
                                                    s = s + 1
                                                    continue 
                            else:
                                if availableForBucket[s] <= availableTotal:
                                    mem[32] = 3
                                    if availableForBucket[s] <= availableForBucket[s]:
                                        mem[mem[64]] = availableTotal - availableForBucket[s]
                                        mem[mem[64] + 32] = s
                                        mem[mem[64] + 64] = 0
                                        mem[mem[64] + 96] = availableForBucket[s]
                                        emit AvailableDecreased(availableTotal - availableForBucket[s], s, 0, availableForBucket[s]);
                                        availableTotal -= availableForBucket[s]
                                        mem[0] = s
                                        mem[32] = 3
                                        availableForBucket[s] = 0
                                        if not arg3 * availableForBucket[s] / arg4:
                                            if arg3 * availableForBucket[s] / arg4 <= arg3:
                                                if availableForBucket[s] <= arg4:
                                                    s = availableForBucket[s]
                                                    s = s + 1
                                                    continue 
                                        else:
                                            if (arg3 * availableForBucket[s] / arg4) + principalTotal >= principalTotal:
                                                mem[32] = 5
                                                if (arg3 * availableForBucket[s] / arg4) + principalForBucket[s] >= principalForBucket[s]:
                                                    mem[mem[64]] = (arg3 * availableForBucket[s] / arg4) + principalTotal
                                                    mem[mem[64] + 32] = s
                                                    mem[mem[64] + 64] = (arg3 * availableForBucket[s] / arg4) + principalForBucket[s]
                                                    mem[mem[64] + 96] = arg3 * availableForBucket[s] / arg4
                                                    emit PrincipalIncreased((arg3 * availableForBucket[s] / arg4) + principalTotal, s, (arg3 * availableForBucket[s] / arg4) + principalForBucket[s], arg3 * availableForBucket[s] / arg4);
                                                    principalTotal += arg3 * availableForBucket[s] / arg4
                                                    mem[0] = s
                                                    mem[32] = 5
                                                    principalForBucket[s] += arg3 * availableForBucket[s] / arg4
                                                    if arg3 * availableForBucket[s] / arg4 <= arg3:
                                                        if availableForBucket[s] <= arg4:
                                                            s = availableForBucket[s]
                                                            s = s + 1
                                                            continue 
                revert
    else:
        require ext_code.size(DYDX_MARGINAddress)
        staticcall DYDX_MARGINAddress.getTotalOwedTokenRepaidToLender(bytes32 arg1) with:
                gas gas_remaining wei
               args POSITION_ID
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require cachedRepaidAmount <= ext_call.return_data[0]
        require ext_call.return_data[0] - cachedRepaidAmount >= principalTotal - ext_call.return_data[0] + arg3
        require cachedRepaidAmount <= ext_call.return_data[0]
        s = 0
        s = criticalBucket
        while principalTotal - ext_call.return_data[0] + arg3 > 0:
            require s <= criticalBucket
            mem[0] = s
            mem[32] = 5
            if principalTotal - ext_call.return_data[0] + arg3 < principalForBucket[s]:
                if not principalTotal - ext_call.return_data[0] + arg3:
                    s = principalTotal - ext_call.return_data[0] + arg3
                    s = s - 1
                    continue 
                if (principalTotal * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + (arg3 * ext_call.return_data[0]) - (principalTotal * cachedRepaidAmount) + (ext_call.return_data[0] * cachedRepaidAmount) - (arg3 * cachedRepaidAmount) / principalTotal - ext_call.return_data[0] + arg3 == ext_call.return_data[0] - cachedRepaidAmount:
                    if principalTotal - ext_call.return_data[0] + arg3:
                        if not (principalTotal * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + (arg3 * ext_call.return_data[0]) - (principalTotal * cachedRepaidAmount) + (ext_call.return_data[0] * cachedRepaidAmount) - (arg3 * cachedRepaidAmount) / principalTotal - ext_call.return_data[0] + arg3:
                            if not principalTotal - ext_call.return_data[0] + arg3:
                                if (principalTotal * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + (arg3 * ext_call.return_data[0]) - (principalTotal * cachedRepaidAmount) + (ext_call.return_data[0] * cachedRepaidAmount) - (arg3 * cachedRepaidAmount) / principalTotal - ext_call.return_data[0] + arg3 <= ext_call.return_data[0] - cachedRepaidAmount:
                                    s = principalTotal - ext_call.return_data[0] + arg3
                                    s = s - 1
                                    continue 
                            else:
                                if principalTotal - ext_call.return_data[0] + arg3 <= principalTotal:
                                    mem[32] = 5
                                    if principalTotal - ext_call.return_data[0] + arg3 <= principalForBucket[s]:
                                        mem[mem[64]] = ext_call.return_data[0] - arg3
                                        mem[mem[64] + 32] = s
                                        mem[mem[64] + 64] = principalForBucket[s] - principalTotal + ext_call.return_data[0] - arg3
                                        mem[mem[64] + 96] = principalTotal - ext_call.return_data[0] + arg3
                                        emit PrincipalDecreased(ext_call.return_data[0] - arg3, s, principalForBucket[s] - principalTotal + ext_call.return_data[0] - arg3, principalTotal - ext_call.return_data[0] + arg3);
                                        principalTotal = ext_call.return_data[0] - arg3
                                        mem[0] = s
                                        mem[32] = 5
                                        principalForBucket[s] = principalForBucket[s] - principalTotal + ext_call.return_data[0] - arg3
                                        if (principalTotal * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + (arg3 * ext_call.return_data[0]) - (principalTotal * cachedRepaidAmount) + (ext_call.return_data[0] * cachedRepaidAmount) - (arg3 * cachedRepaidAmount) / principalTotal - ext_call.return_data[0] + arg3 <= ext_call.return_data[0] - cachedRepaidAmount:
                                            s = principalTotal - ext_call.return_data[0] + arg3
                                            s = s - 1
                                            continue 
                        else:
                            if ((principalTotal * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + (arg3 * ext_call.return_data[0]) - (principalTotal * cachedRepaidAmount) + (ext_call.return_data[0] * cachedRepaidAmount) - (arg3 * cachedRepaidAmount) / principalTotal - ext_call.return_data[0] + arg3) + availableTotal >= availableTotal:
                                mem[32] = 3
                                if ((principalTotal * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + (arg3 * ext_call.return_data[0]) - (principalTotal * cachedRepaidAmount) + (ext_call.return_data[0] * cachedRepaidAmount) - (arg3 * cachedRepaidAmount) / principalTotal - ext_call.return_data[0] + arg3) + availableForBucket[s] >= availableForBucket[s]:
                                    mem[mem[64]] = ((principalTotal * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + (arg3 * ext_call.return_data[0]) - (principalTotal * cachedRepaidAmount) + (ext_call.return_data[0] * cachedRepaidAmount) - (arg3 * cachedRepaidAmount) / principalTotal - ext_call.return_data[0] + arg3) + availableTotal
                                    mem[mem[64] + 32] = s
                                    mem[mem[64] + 64] = ((principalTotal * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + (arg3 * ext_call.return_data[0]) - (principalTotal * cachedRepaidAmount) + (ext_call.return_data[0] * cachedRepaidAmount) - (arg3 * cachedRepaidAmount) / principalTotal - ext_call.return_data[0] + arg3) + availableForBucket[s]
                                    mem[mem[64] + 96] = (principalTotal * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + (arg3 * ext_call.return_data[0]) - (principalTotal * cachedRepaidAmount) + (ext_call.return_data[0] * cachedRepaidAmount) - (arg3 * cachedRepaidAmount) / principalTotal - ext_call.return_data[0] + arg3
                                    emit AvailableIncreased(((principalTotal * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + (arg3 * ext_call.return_data[0]) - (principalTotal * cachedRepaidAmount) + (ext_call.return_data[0] * cachedRepaidAmount) - (arg3 * cachedRepaidAmount) / principalTotal - ext_call.return_data[0] + arg3) + availableTotal, s, ((principalTotal * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + (arg3 * ext_call.return_data[0]) - (principalTotal * cachedRepaidAmount) + (ext_call.return_data[0] * cachedRepaidAmount) - (arg3 * cachedRepaidAmount) / principalTotal - ext_call.return_data[0] + arg3) + availableForBucket[s], (principalTotal * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + (arg3 * ext_call.return_data[0]) - (principalTotal * cachedRepaidAmount) + (ext_call.return_data[0] * cachedRepaidAmount) - (arg3 * cachedRepaidAmount) / principalTotal - ext_call.return_data[0] + arg3);
                                    availableTotal += (principalTotal * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + (arg3 * ext_call.return_data[0]) - (principalTotal * cachedRepaidAmount) + (ext_call.return_data[0] * cachedRepaidAmount) - (arg3 * cachedRepaidAmount) / principalTotal - ext_call.return_data[0] + arg3
                                    mem[0] = s
                                    mem[32] = 3
                                    availableForBucket[s] += (principalTotal * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + (arg3 * ext_call.return_data[0]) - (principalTotal * cachedRepaidAmount) + (ext_call.return_data[0] * cachedRepaidAmount) - (arg3 * cachedRepaidAmount) / principalTotal - ext_call.return_data[0] + arg3
                                    if not principalTotal - ext_call.return_data[0] + arg3:
                                        if (principalTotal * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + (arg3 * ext_call.return_data[0]) - (principalTotal * cachedRepaidAmount) + (ext_call.return_data[0] * cachedRepaidAmount) - (arg3 * cachedRepaidAmount) / principalTotal - ext_call.return_data[0] + arg3 <= ext_call.return_data[0] - cachedRepaidAmount:
                                            s = principalTotal - ext_call.return_data[0] + arg3
                                            s = s - 1
                                            continue 
                                    else:
                                        if principalTotal - ext_call.return_data[0] + arg3 <= principalTotal:
                                            mem[32] = 5
                                            if principalTotal - ext_call.return_data[0] + arg3 <= principalForBucket[s]:
                                                mem[mem[64]] = ext_call.return_data[0] - arg3
                                                mem[mem[64] + 32] = s
                                                mem[mem[64] + 64] = principalForBucket[s] - principalTotal + ext_call.return_data[0] - arg3
                                                mem[mem[64] + 96] = principalTotal - ext_call.return_data[0] + arg3
                                                emit PrincipalDecreased(ext_call.return_data[0] - arg3, s, principalForBucket[s] - principalTotal + ext_call.return_data[0] - arg3, principalTotal - ext_call.return_data[0] + arg3);
                                                principalTotal = ext_call.return_data[0] - arg3
                                                mem[0] = s
                                                mem[32] = 5
                                                principalForBucket[s] = principalForBucket[s] - principalTotal + ext_call.return_data[0] - arg3
                                                if (principalTotal * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + (arg3 * ext_call.return_data[0]) - (principalTotal * cachedRepaidAmount) + (ext_call.return_data[0] * cachedRepaidAmount) - (arg3 * cachedRepaidAmount) / principalTotal - ext_call.return_data[0] + arg3 <= ext_call.return_data[0] - cachedRepaidAmount:
                                                    s = principalTotal - ext_call.return_data[0] + arg3
                                                    s = s - 1
                                                    continue 
            else:
                if not principalForBucket[s]:
                    s = principalForBucket[s]
                    s = s - 1
                    continue 
                if (ext_call.return_data[0] * principalForBucket[s]) - (cachedRepaidAmount * principalForBucket[s]) / principalForBucket[s] == ext_call.return_data[0] - cachedRepaidAmount:
                    if principalTotal - ext_call.return_data[0] + arg3:
                        if not (ext_call.return_data[0] * principalForBucket[s]) - (cachedRepaidAmount * principalForBucket[s]) / principalTotal - ext_call.return_data[0] + arg3:
                            if not principalForBucket[s]:
                                if principalForBucket[s] <= principalTotal - ext_call.return_data[0] + arg3:
                                    if (ext_call.return_data[0] * principalForBucket[s]) - (cachedRepaidAmount * principalForBucket[s]) / principalTotal - ext_call.return_data[0] + arg3 <= ext_call.return_data[0] - cachedRepaidAmount:
                                        s = principalForBucket[s]
                                        s = s - 1
                                        continue 
                            else:
                                if principalForBucket[s] <= principalTotal:
                                    mem[32] = 5
                                    if principalForBucket[s] <= principalForBucket[s]:
                                        mem[mem[64]] = principalTotal - principalForBucket[s]
                                        mem[mem[64] + 32] = s
                                        mem[mem[64] + 64] = 0
                                        mem[mem[64] + 96] = principalForBucket[s]
                                        emit PrincipalDecreased(principalTotal - principalForBucket[s], s, 0, principalForBucket[s]);
                                        principalTotal -= principalForBucket[s]
                                        mem[0] = s
                                        mem[32] = 5
                                        principalForBucket[s] = 0
                                        if principalForBucket[s] <= principalTotal - ext_call.return_data[0] + arg3:
                                            if (ext_call.return_data[0] * principalForBucket[s]) - (cachedRepaidAmount * principalForBucket[s]) / principalTotal - ext_call.return_data[0] + arg3 <= ext_call.return_data[0] - cachedRepaidAmount:
                                                s = principalForBucket[s]
                                                s = s - 1
                                                continue 
                        else:
                            if ((ext_call.return_data[0] * principalForBucket[s]) - (cachedRepaidAmount * principalForBucket[s]) / principalTotal - ext_call.return_data[0] + arg3) + availableTotal >= availableTotal:
                                mem[32] = 3
                                if ((ext_call.return_data[0] * principalForBucket[s]) - (cachedRepaidAmount * principalForBucket[s]) / principalTotal - ext_call.return_data[0] + arg3) + availableForBucket[s] >= availableForBucket[s]:
                                    mem[mem[64]] = ((ext_call.return_data[0] * principalForBucket[s]) - (cachedRepaidAmount * principalForBucket[s]) / principalTotal - ext_call.return_data[0] + arg3) + availableTotal
                                    mem[mem[64] + 32] = s
                                    mem[mem[64] + 64] = ((ext_call.return_data[0] * principalForBucket[s]) - (cachedRepaidAmount * principalForBucket[s]) / principalTotal - ext_call.return_data[0] + arg3) + availableForBucket[s]
                                    mem[mem[64] + 96] = (ext_call.return_data[0] * principalForBucket[s]) - (cachedRepaidAmount * principalForBucket[s]) / principalTotal - ext_call.return_data[0] + arg3
                                    emit AvailableIncreased(((ext_call.return_data[0] * principalForBucket[s]) - (cachedRepaidAmount * principalForBucket[s]) / principalTotal - ext_call.return_data[0] + arg3) + availableTotal, s, ((ext_call.return_data[0] * principalForBucket[s]) - (cachedRepaidAmount * principalForBucket[s]) / principalTotal - ext_call.return_data[0] + arg3) + availableForBucket[s], (ext_call.return_data[0] * principalForBucket[s]) - (cachedRepaidAmount * principalForBucket[s]) / principalTotal - ext_call.return_data[0] + arg3);
                                    availableTotal += (ext_call.return_data[0] * principalForBucket[s]) - (cachedRepaidAmount * principalForBucket[s]) / principalTotal - ext_call.return_data[0] + arg3
                                    mem[0] = s
                                    mem[32] = 3
                                    availableForBucket[s] += (ext_call.return_data[0] * principalForBucket[s]) - (cachedRepaidAmount * principalForBucket[s]) / principalTotal - ext_call.return_data[0] + arg3
                                    if not principalForBucket[s]:
                                        if principalForBucket[s] <= principalTotal - ext_call.return_data[0] + arg3:
                                            if (ext_call.return_data[0] * principalForBucket[s]) - (cachedRepaidAmount * principalForBucket[s]) / principalTotal - ext_call.return_data[0] + arg3 <= ext_call.return_data[0] - cachedRepaidAmount:
                                                s = principalForBucket[s]
                                                s = s - 1
                                                continue 
                                    else:
                                        if principalForBucket[s] <= principalTotal:
                                            mem[32] = 5
                                            if principalForBucket[s] <= principalForBucket[s]:
                                                mem[mem[64]] = principalTotal - principalForBucket[s]
                                                mem[mem[64] + 32] = s
                                                mem[mem[64] + 64] = 0
                                                mem[mem[64] + 96] = principalForBucket[s]
                                                emit PrincipalDecreased(principalTotal - principalForBucket[s], s, 0, principalForBucket[s]);
                                                principalTotal -= principalForBucket[s]
                                                mem[0] = s
                                                mem[32] = 5
                                                principalForBucket[s] = 0
                                                if principalForBucket[s] <= principalTotal - ext_call.return_data[0] + arg3:
                                                    if (ext_call.return_data[0] * principalForBucket[s]) - (cachedRepaidAmount * principalForBucket[s]) / principalTotal - ext_call.return_data[0] + arg3 <= ext_call.return_data[0] - cachedRepaidAmount:
                                                        s = principalForBucket[s]
                                                        s = s - 1
                                                        continue 
            revert
        require not principalTotal - ext_call.return_data[0] + arg3
        require not ext_call.return_data[0] - cachedRepaidAmount
        cachedRepaidAmount = ext_call.return_data[0]
        if arg4 > availableTotal:
            revert with 0, 'BucketLender#accountForIncrease: No lending not-accounted-for funds'
        require ext_code.size(DYDX_MARGINAddress)
        staticcall DYDX_MARGINAddress.isPositionClosed(bytes32 arg1) with:
                gas gas_remaining wei
               args POSITION_ID
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require not ext_call.return_data[0]
        require ext_code.size(DYDX_MARGINAddress)
        staticcall DYDX_MARGINAddress.containsPosition(bytes32 arg1) with:
                gas gas_remaining wei
               args POSITION_ID
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            s = 0
            s = criticalBucket
            while arg3 > 0:
                require s <= 0
                mem[0] = s
                mem[32] = 3
                if arg4 < availableForBucket[s]:
                    if not arg4:
                        s = arg4
                        s = s + 1
                        continue 
                    if arg3 * arg4 / arg4 == arg3:
                        if arg4:
                            if arg4 <= availableTotal:
                                mem[32] = 3
                                if arg4 <= availableForBucket[s]:
                                    mem[mem[64]] = availableTotal - arg4
                                    mem[mem[64] + 32] = s
                                    mem[mem[64] + 64] = availableForBucket[s] - arg4
                                    mem[mem[64] + 96] = arg4
                                    emit AvailableDecreased(availableTotal - arg4, s, availableForBucket[s] - arg4, arg4);
                                    availableTotal -= arg4
                                    mem[0] = s
                                    mem[32] = 3
                                    availableForBucket[s] -= arg4
                                    if not arg3 * arg4 / arg4:
                                        if arg3 * arg4 / arg4 <= arg3:
                                            if arg4 <= arg4:
                                                s = arg4
                                                s = s + 1
                                                continue 
                                    else:
                                        if (arg3 * arg4 / arg4) + principalTotal >= principalTotal:
                                            mem[32] = 5
                                            if (arg3 * arg4 / arg4) + principalForBucket[s] >= principalForBucket[s]:
                                                mem[mem[64]] = (arg3 * arg4 / arg4) + principalTotal
                                                mem[mem[64] + 32] = s
                                                mem[mem[64] + 64] = (arg3 * arg4 / arg4) + principalForBucket[s]
                                                mem[mem[64] + 96] = arg3 * arg4 / arg4
                                                emit PrincipalIncreased((arg3 * arg4 / arg4) + principalTotal, s, (arg3 * arg4 / arg4) + principalForBucket[s], arg3 * arg4 / arg4);
                                                principalTotal += arg3 * arg4 / arg4
                                                mem[0] = s
                                                mem[32] = 5
                                                principalForBucket[s] += arg3 * arg4 / arg4
                                                if arg3 * arg4 / arg4 <= arg3:
                                                    if arg4 <= arg4:
                                                        s = arg4
                                                        s = s + 1
                                                        continue 
                else:
                    if not availableForBucket[s]:
                        s = availableForBucket[s]
                        s = s + 1
                        continue 
                    if arg3 * availableForBucket[s] / availableForBucket[s] == arg3:
                        if arg4:
                            if not availableForBucket[s]:
                                if not arg3 * availableForBucket[s] / arg4:
                                    if arg3 * availableForBucket[s] / arg4 <= arg3:
                                        if availableForBucket[s] <= arg4:
                                            s = availableForBucket[s]
                                            s = s + 1
                                            continue 
                                else:
                                    if (arg3 * availableForBucket[s] / arg4) + principalTotal >= principalTotal:
                                        mem[32] = 5
                                        if (arg3 * availableForBucket[s] / arg4) + principalForBucket[s] >= principalForBucket[s]:
                                            mem[mem[64]] = (arg3 * availableForBucket[s] / arg4) + principalTotal
                                            mem[mem[64] + 32] = s
                                            mem[mem[64] + 64] = (arg3 * availableForBucket[s] / arg4) + principalForBucket[s]
                                            mem[mem[64] + 96] = arg3 * availableForBucket[s] / arg4
                                            emit PrincipalIncreased((arg3 * availableForBucket[s] / arg4) + principalTotal, s, (arg3 * availableForBucket[s] / arg4) + principalForBucket[s], arg3 * availableForBucket[s] / arg4);
                                            principalTotal += arg3 * availableForBucket[s] / arg4
                                            mem[0] = s
                                            mem[32] = 5
                                            principalForBucket[s] += arg3 * availableForBucket[s] / arg4
                                            if arg3 * availableForBucket[s] / arg4 <= arg3:
                                                if availableForBucket[s] <= arg4:
                                                    s = availableForBucket[s]
                                                    s = s + 1
                                                    continue 
                            else:
                                if availableForBucket[s] <= availableTotal:
                                    mem[32] = 3
                                    if availableForBucket[s] <= availableForBucket[s]:
                                        mem[mem[64]] = availableTotal - availableForBucket[s]
                                        mem[mem[64] + 32] = s
                                        mem[mem[64] + 64] = 0
                                        mem[mem[64] + 96] = availableForBucket[s]
                                        emit AvailableDecreased(availableTotal - availableForBucket[s], s, 0, availableForBucket[s]);
                                        availableTotal -= availableForBucket[s]
                                        mem[0] = s
                                        mem[32] = 3
                                        availableForBucket[s] = 0
                                        if not arg3 * availableForBucket[s] / arg4:
                                            if arg3 * availableForBucket[s] / arg4 <= arg3:
                                                if availableForBucket[s] <= arg4:
                                                    s = availableForBucket[s]
                                                    s = s + 1
                                                    continue 
                                        else:
                                            if (arg3 * availableForBucket[s] / arg4) + principalTotal >= principalTotal:
                                                mem[32] = 5
                                                if (arg3 * availableForBucket[s] / arg4) + principalForBucket[s] >= principalForBucket[s]:
                                                    mem[mem[64]] = (arg3 * availableForBucket[s] / arg4) + principalTotal
                                                    mem[mem[64] + 32] = s
                                                    mem[mem[64] + 64] = (arg3 * availableForBucket[s] / arg4) + principalForBucket[s]
                                                    mem[mem[64] + 96] = arg3 * availableForBucket[s] / arg4
                                                    emit PrincipalIncreased((arg3 * availableForBucket[s] / arg4) + principalTotal, s, (arg3 * availableForBucket[s] / arg4) + principalForBucket[s], arg3 * availableForBucket[s] / arg4);
                                                    principalTotal += arg3 * availableForBucket[s] / arg4
                                                    mem[0] = s
                                                    mem[32] = 5
                                                    principalForBucket[s] += arg3 * availableForBucket[s] / arg4
                                                    if arg3 * availableForBucket[s] / arg4 <= arg3:
                                                        if availableForBucket[s] <= arg4:
                                                            s = availableForBucket[s]
                                                            s = s + 1
                                                            continue 
                revert
        else:
            require ext_code.size(DYDX_MARGINAddress)
            staticcall DYDX_MARGINAddress.getPositionStartTimestamp(bytes32 arg1) with:
                    gas gas_remaining wei
                   args POSITION_ID
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require uint32(ext_call.return_data[0]) <= block.timestamp
            require BUCKET_TIME
            require (block.timestamp - uint32(ext_call.return_data[0]) / BUCKET_TIME) + 1 >= block.timestamp - uint32(ext_call.return_data[0]) / BUCKET_TIME
            s = 0
            s = criticalBucket
            while arg3 > 0:
                require s <= (block.timestamp - uint32(ext_call.return_data[0]) / BUCKET_TIME) + 1
                mem[0] = s
                mem[32] = 3
                if arg4 < availableForBucket[s]:
                    if not arg4:
                        s = arg4
                        s = s + 1
                        continue 
                    if arg3 * arg4 / arg4 == arg3:
                        if arg4:
                            if arg4 <= availableTotal:
                                mem[32] = 3
                                if arg4 <= availableForBucket[s]:
                                    mem[mem[64]] = availableTotal - arg4
                                    mem[mem[64] + 32] = s
                                    mem[mem[64] + 64] = availableForBucket[s] - arg4
                                    mem[mem[64] + 96] = arg4
                                    emit AvailableDecreased(availableTotal - arg4, s, availableForBucket[s] - arg4, arg4);
                                    availableTotal -= arg4
                                    mem[0] = s
                                    mem[32] = 3
                                    availableForBucket[s] -= arg4
                                    if not arg3 * arg4 / arg4:
                                        if arg3 * arg4 / arg4 <= arg3:
                                            if arg4 <= arg4:
                                                s = arg4
                                                s = s + 1
                                                continue 
                                    else:
                                        if (arg3 * arg4 / arg4) + principalTotal >= principalTotal:
                                            mem[32] = 5
                                            if (arg3 * arg4 / arg4) + principalForBucket[s] >= principalForBucket[s]:
                                                mem[mem[64]] = (arg3 * arg4 / arg4) + principalTotal
                                                mem[mem[64] + 32] = s
                                                mem[mem[64] + 64] = (arg3 * arg4 / arg4) + principalForBucket[s]
                                                mem[mem[64] + 96] = arg3 * arg4 / arg4
                                                emit PrincipalIncreased((arg3 * arg4 / arg4) + principalTotal, s, (arg3 * arg4 / arg4) + principalForBucket[s], arg3 * arg4 / arg4);
                                                principalTotal += arg3 * arg4 / arg4
                                                mem[0] = s
                                                mem[32] = 5
                                                principalForBucket[s] += arg3 * arg4 / arg4
                                                if arg3 * arg4 / arg4 <= arg3:
                                                    if arg4 <= arg4:
                                                        s = arg4
                                                        s = s + 1
                                                        continue 
                else:
                    if not availableForBucket[s]:
                        s = availableForBucket[s]
                        s = s + 1
                        continue 
                    if arg3 * availableForBucket[s] / availableForBucket[s] == arg3:
                        if arg4:
                            if not availableForBucket[s]:
                                if not arg3 * availableForBucket[s] / arg4:
                                    if arg3 * availableForBucket[s] / arg4 <= arg3:
                                        if availableForBucket[s] <= arg4:
                                            s = availableForBucket[s]
                                            s = s + 1
                                            continue 
                                else:
                                    if (arg3 * availableForBucket[s] / arg4) + principalTotal >= principalTotal:
                                        mem[32] = 5
                                        if (arg3 * availableForBucket[s] / arg4) + principalForBucket[s] >= principalForBucket[s]:
                                            mem[mem[64]] = (arg3 * availableForBucket[s] / arg4) + principalTotal
                                            mem[mem[64] + 32] = s
                                            mem[mem[64] + 64] = (arg3 * availableForBucket[s] / arg4) + principalForBucket[s]
                                            mem[mem[64] + 96] = arg3 * availableForBucket[s] / arg4
                                            emit PrincipalIncreased((arg3 * availableForBucket[s] / arg4) + principalTotal, s, (arg3 * availableForBucket[s] / arg4) + principalForBucket[s], arg3 * availableForBucket[s] / arg4);
                                            principalTotal += arg3 * availableForBucket[s] / arg4
                                            mem[0] = s
                                            mem[32] = 5
                                            principalForBucket[s] += arg3 * availableForBucket[s] / arg4
                                            if arg3 * availableForBucket[s] / arg4 <= arg3:
                                                if availableForBucket[s] <= arg4:
                                                    s = availableForBucket[s]
                                                    s = s + 1
                                                    continue 
                            else:
                                if availableForBucket[s] <= availableTotal:
                                    mem[32] = 3
                                    if availableForBucket[s] <= availableForBucket[s]:
                                        mem[mem[64]] = availableTotal - availableForBucket[s]
                                        mem[mem[64] + 32] = s
                                        mem[mem[64] + 64] = 0
                                        mem[mem[64] + 96] = availableForBucket[s]
                                        emit AvailableDecreased(availableTotal - availableForBucket[s], s, 0, availableForBucket[s]);
                                        availableTotal -= availableForBucket[s]
                                        mem[0] = s
                                        mem[32] = 3
                                        availableForBucket[s] = 0
                                        if not arg3 * availableForBucket[s] / arg4:
                                            if arg3 * availableForBucket[s] / arg4 <= arg3:
                                                if availableForBucket[s] <= arg4:
                                                    s = availableForBucket[s]
                                                    s = s + 1
                                                    continue 
                                        else:
                                            if (arg3 * availableForBucket[s] / arg4) + principalTotal >= principalTotal:
                                                mem[32] = 5
                                                if (arg3 * availableForBucket[s] / arg4) + principalForBucket[s] >= principalForBucket[s]:
                                                    mem[mem[64]] = (arg3 * availableForBucket[s] / arg4) + principalTotal
                                                    mem[mem[64] + 32] = s
                                                    mem[mem[64] + 64] = (arg3 * availableForBucket[s] / arg4) + principalForBucket[s]
                                                    mem[mem[64] + 96] = arg3 * availableForBucket[s] / arg4
                                                    emit PrincipalIncreased((arg3 * availableForBucket[s] / arg4) + principalTotal, s, (arg3 * availableForBucket[s] / arg4) + principalForBucket[s], arg3 * availableForBucket[s] / arg4);
                                                    principalTotal += arg3 * availableForBucket[s] / arg4
                                                    mem[0] = s
                                                    mem[32] = 5
                                                    principalForBucket[s] += arg3 * availableForBucket[s] / arg4
                                                    if arg3 * availableForBucket[s] / arg4 <= arg3:
                                                        if availableForBucket[s] <= arg4:
                                                            s = availableForBucket[s]
                                                            s = s + 1
                                                            continue 
                revert
    require not arg3
    require not arg4
    if criticalBucket:
        criticalBucket = 0
    require ext_call.return_data[0] == principalTotal
    if stor2 + 1 != stor2:
        revert with 0, 'Reentrancy check failure'
    return this.address
}



}
