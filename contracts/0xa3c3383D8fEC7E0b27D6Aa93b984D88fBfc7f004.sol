contract main {




// =====================  Runtime code  =====================


mapping of struct stor0;
mapping of struct listings;
address tokenAddress;
address votingAddress;
address parameterizerAddress;
array of uint256 name;

function isWhitelisted(bytes32 arg1) {
    return bool(listings[arg1].field_256)
}

function name() {
    return name[0 len name.length]
}

function tokenClaims(uint256 arg1, address arg2) {
    return bool(stor0[arg1][4][address(arg2)].field_0)
}

function listings(bytes32 arg1) {
    return listings[arg1].field_0, 
           bool(listings[arg1].field_256),
           listings[arg1].field_256,
           listings[arg1].field_512,
           listings[arg1].field_768,
           listings[arg1].field_1024
}

function parameterizer() {
    return parameterizerAddress
}

function token() {
    return tokenAddress
}

function voting() {
    return votingAddress
}

function _fallback() payable {
    revert
}

function appWasMade(bytes32 arg1) {
    return (listings[arg1].field_0 > 0)
}

function getData(bytes32 arg1) {
    if not listings[arg1].field_256:
        return 0
    return 1, listings[arg1].field_1024
}

function challenges(uint256 arg1) {
    return stor0[arg1].field_0, stor0[arg1].field_256, bool(stor0[arg1].field_416), stor0[arg1].field_512, stor0[arg1].field_768
}

function challengeExists(bytes32 arg1) {
    if listings[arg1].field_768 <= 0:
        return (listings[arg1].field_768 > 0)
    return not bool(stor0[stor1[arg1].field_768].field_416)
}

function canBeWhitelisted(bytes32 arg1) {
    if listings[arg1].field_0 <= 0:
        return 0
    if listings[arg1].field_0 >= block.timestamp:
        return 0
    if listings[arg1].field_256:
        return 0
    if listings[arg1].field_768:
        if bool(stor0[stor1[arg1].field_768].field_416) != 1:
            return 0
    return 1
}

function voterReward(address arg1, uint256 arg2, uint256 arg3) {
    require ext_code.size(votingAddress)
    call votingAddress.0xb43bd069 with:
         gas gas_remaining wei
        args address(arg1), arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require stor0[arg2].field_768
    return (ext_call.return_data[0] * stor0[arg2].field_0 / stor0[arg2].field_768)
}

function challengeCanBeResolved(bytes32 arg1) {
    require listings[arg1].field_768 > 0
    require not stor0[stor1[arg1].field_768].field_416
    require ext_code.size(votingAddress)
    call votingAddress.0xee684830 with:
         gas gas_remaining wei
        args listings[arg1].field_768
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function deposit(bytes32 arg1, uint256 arg2) {
    require listings[arg1].field_264 == msg.sender
    listings[arg1].field_512 += arg2
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit _Deposit(arg2, listings[arg1].field_512, arg1, msg.sender);
}

function determineReward(uint256 arg1) {
    require not stor0[arg1].field_416
    require ext_code.size(votingAddress)
    call votingAddress.0xee684830 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(votingAddress)
    call votingAddress.getTotalNumberOfTokensForWinningOption(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        return ((2 * stor0[arg1].field_512) - stor0[arg1].field_0)
    return (2 * stor0[arg1].field_512)
}

function withdraw(bytes32 arg1, uint256 arg2) {
    require listings[arg1].field_264 == msg.sender
    require arg2 <= listings[arg1].field_512
    require ext_code.size(parameterizerAddress)
    call parameterizerAddress.0x693ec85e with:
         gas gas_remaining wei
        args Array(len=10, data='minDeposit')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require listings[arg1].field_512 - arg2 >= ext_call.return_data[0]
    listings[arg1].field_512 -= arg2
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit _Withdrawal(arg2, listings[arg1].field_512, arg1, msg.sender);
}

function exit(bytes32 arg1) {
    require msg.sender == listings[arg1].field_264
    require listings[arg1].field_256
    if listings[arg1].field_768:
        require stor0[stor1[arg1].field_768].field_416
    if not listings[arg1].field_256:
        emit _ApplicationRemoved(arg1);
    else:
        emit _ListingRemoved(arg1);
    listings[arg1].field_0 = 0
    listings[arg1].field_256 = 0
    listings[arg1].field_264 = 0
    listings[arg1].field_512 = 0
    listings[arg1].field_768 = 0
    listings[arg1].field_1024 = 0
    if listings[arg1].field_512 > 0:
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args listings[arg1].field_256, listings[arg1].field_512
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    emit _ListingWithdrawn(arg1);
}

function claimReward(uint256 arg1, uint256 arg2) {
    require not stor0[arg1][4][address(msg.sender)].field_0
    require bool(stor0[arg1].field_416) == 1
    require ext_code.size(votingAddress)
    call votingAddress.0xb43bd069 with:
         gas gas_remaining wei
        args msg.sender, arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(votingAddress)
    call votingAddress.0xb43bd069 with:
         gas gas_remaining wei
        args msg.sender, arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require stor0[arg1].field_768
    stor0[arg1].field_768 -= ext_call.return_data[0]
    stor0[arg1].field_0 -= ext_call.return_data[0] * stor0[arg1].field_0 / stor0[arg1].field_768
    stor0[arg1][4][address(msg.sender)].field_0 = 1
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0] * stor0[arg1].field_0 / stor0[arg1].field_768
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit _RewardClaimed((ext_call.return_data[0] * stor0[arg1].field_0 / stor0[arg1].field_768), arg1, msg.sender);
}

function sub_ee4f133d(?) {
    require not listings[arg1].field_256
    require listings[arg1].field_0 <= 0
    require ext_code.size(parameterizerAddress)
    call parameterizerAddress.0x693ec85e with:
         gas gas_remaining wei
        args Array(len=10, data='minDeposit')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg2 >= ext_call.return_data[0]
    listings[arg1].field_264 = msg.sender
    listings[arg1].field_1024 = arg3
    require ext_code.size(parameterizerAddress)
    call parameterizerAddress.0x693ec85e with:
         gas gas_remaining wei
        args Array(len=13, data='applyStageLen')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require block.timestamp + ext_call.return_data[0] >= block.timestamp
    listings[arg1].field_0 = block.timestamp + ext_call.return_data[0]
    listings[arg1].field_512 = arg2
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args listings[arg1].field_256, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit 0xc3a87a0e: arg2, listings[arg1].field_0, arg3, arg1, msg.sender
}

function challenge(bytes32 arg1, bytes32 arg2) {
    require ext_code.size(parameterizerAddress)
    call parameterizerAddress.0x693ec85e with:
         gas gas_remaining wei
        args Array(len=10, data='minDeposit')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if listings[arg1].field_0 <= 0:
        require listings[arg1].field_256
    if listings[arg1].field_768:
        require stor0[stor1[arg1].field_768].field_416
    if listings[arg1].field_512 < ext_call.return_data[0]:
        if not listings[arg1].field_256:
            emit _ApplicationRemoved(arg1);
        else:
            emit _ListingRemoved(arg1);
        listings[arg1].field_0 = 0
        listings[arg1].field_256 = 0
        listings[arg1].field_264 = 0
        listings[arg1].field_512 = 0
        listings[arg1].field_768 = 0
        listings[arg1].field_1024 = 0
        if listings[arg1].field_512 > 0:
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args listings[arg1].field_256, listings[arg1].field_512
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
        emit _TouchAndRemoved(arg1);
        return 0
    require ext_code.size(parameterizerAddress)
    call parameterizerAddress.0x693ec85e with:
         gas gas_remaining wei
        args Array(len=10, data='voteQuorum')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(parameterizerAddress)
    call parameterizerAddress.0x693ec85e with:
         gas gas_remaining wei
        args Array(len=14, data='commitStageLen')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(parameterizerAddress)
    call parameterizerAddress.0x693ec85e with:
         gas gas_remaining wei
        args Array(len=14, data='revealStageLen')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(votingAddress)
    call votingAddress.0x32ed3d60 with:
         gas gas_remaining wei
        args ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(parameterizerAddress)
    call parameterizerAddress.0x693ec85e with:
         gas gas_remaining wei
        args Array(len=15, data='dispensationPct')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor0[ext_call.return_data[0]].field_0 = (100 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 100
    stor0[ext_call.return_data[0]].field_256 = msg.sender
    stor0[ext_call.return_data[0]].field_416 = 0
    stor0[ext_call.return_data[0]].field_512 = ext_call.return_data[0]
    stor0[ext_call.return_data[0]].field_768 = 0
    listings[arg1].field_768 = ext_call.return_data[0]
    listings[arg1].field_512 -= ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(votingAddress)
    call votingAddress.0x6148fed5 with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    emit 0x2db1f9e1: ext_call.return_data[0], arg2, ext_call.return_data[0], ext_call.return_data[32], arg1, msg.sender
    return ext_call.return_data[0]
}

function updateStatus(bytes32 arg1) {
    if listings[arg1].field_0 <= 0:
        require listings[arg1].field_768 > 0
        require not stor0[stor1[arg1].field_768].field_416
        require ext_code.size(votingAddress)
        call votingAddress.0xee684830 with:
             gas gas_remaining wei
            args listings[arg1].field_768
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require not stor0[stor1[arg1].field_768].field_416
        require ext_code.size(votingAddress)
        call votingAddress.0xee684830 with:
             gas gas_remaining wei
            args listings[arg1].field_768
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require ext_code.size(votingAddress)
        call votingAddress.getTotalNumberOfTokensForWinningOption(uint256 arg1) with:
             gas gas_remaining wei
            args listings[arg1].field_768
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        stor0[stor1[arg1].field_768].field_416 = 1
        require ext_code.size(votingAddress)
        call votingAddress.getTotalNumberOfTokensForWinningOption(uint256 arg1) with:
             gas gas_remaining wei
            args listings[arg1].field_768
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        stor0[stor1[arg1].field_768].field_768 = ext_call.return_data[0]
        require ext_code.size(votingAddress)
        call votingAddress.0x49403183 with:
             gas gas_remaining wei
            args listings[arg1].field_768
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if ext_call.return_data[0]:
                if not listings[arg1].field_256:
                    emit _ApplicationWhitelisted(arg1);
                listings[arg1].field_256 = 1
                listings[arg1].field_512 = listings[arg1].field_512 + (2 * stor0[stor1[arg1].field_768].field_512) - stor0[stor1[arg1].field_768].field_0
                emit _ChallengeFailed(stor0[stor1[arg1].field_768].field_0, stor0[stor1[arg1].field_768].field_768, arg1, listings[arg1].field_768);
            else:
                if not listings[arg1].field_256:
                    emit _ApplicationRemoved(arg1);
                else:
                    emit _ListingRemoved(arg1);
                listings[arg1].field_0 = 0
                listings[arg1].field_256 = 0
                listings[arg1].field_264 = 0
                listings[arg1].field_512 = 0
                listings[arg1].field_768 = 0
                listings[arg1].field_1024 = 0
                require ext_code.size(tokenAddress)
                if listings[arg1].field_512 > 0:
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args listings[arg1].field_256, listings[arg1].field_512
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args stor0[stor1[arg1].field_768].field_256, (2 * stor0[stor1[arg1].field_768].field_512) - stor0[stor1[arg1].field_768].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                emit _ChallengeSucceeded(stor0[stor1[arg1].field_768].field_0, stor0[stor1[arg1].field_768].field_768, arg1, listings[arg1].field_768);
        else:
            if ext_call.return_data[0]:
                if not listings[arg1].field_256:
                    emit _ApplicationWhitelisted(arg1);
                listings[arg1].field_256 = 1
                listings[arg1].field_512 += 2 * stor0[stor1[arg1].field_768].field_512
                emit _ChallengeFailed(stor0[stor1[arg1].field_768].field_0, stor0[stor1[arg1].field_768].field_768, arg1, listings[arg1].field_768);
            else:
                if not listings[arg1].field_256:
                    emit _ApplicationRemoved(arg1);
                else:
                    emit _ListingRemoved(arg1);
                listings[arg1].field_0 = 0
                listings[arg1].field_256 = 0
                listings[arg1].field_264 = 0
                listings[arg1].field_512 = 0
                listings[arg1].field_768 = 0
                listings[arg1].field_1024 = 0
                require ext_code.size(tokenAddress)
                if listings[arg1].field_512 > 0:
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args listings[arg1].field_256, listings[arg1].field_512
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args stor0[stor1[arg1].field_768].field_256, 2 * stor0[stor1[arg1].field_768].field_512
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                emit _ChallengeSucceeded(stor0[stor1[arg1].field_768].field_0, stor0[stor1[arg1].field_768].field_768, arg1, listings[arg1].field_768);
    else:
        if listings[arg1].field_0 >= block.timestamp:
            require listings[arg1].field_768 > 0
            require not stor0[stor1[arg1].field_768].field_416
            require ext_code.size(votingAddress)
            call votingAddress.0xee684830 with:
                 gas gas_remaining wei
                args listings[arg1].field_768
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require not stor0[stor1[arg1].field_768].field_416
            require ext_code.size(votingAddress)
            call votingAddress.0xee684830 with:
                 gas gas_remaining wei
                args listings[arg1].field_768
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require ext_code.size(votingAddress)
            call votingAddress.getTotalNumberOfTokensForWinningOption(uint256 arg1) with:
                 gas gas_remaining wei
                args listings[arg1].field_768
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            stor0[stor1[arg1].field_768].field_416 = 1
            require ext_code.size(votingAddress)
            call votingAddress.getTotalNumberOfTokensForWinningOption(uint256 arg1) with:
                 gas gas_remaining wei
                args listings[arg1].field_768
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            stor0[stor1[arg1].field_768].field_768 = ext_call.return_data[0]
            require ext_code.size(votingAddress)
            call votingAddress.0x49403183 with:
                 gas gas_remaining wei
                args listings[arg1].field_768
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                if ext_call.return_data[0]:
                    if not listings[arg1].field_256:
                        emit _ApplicationWhitelisted(arg1);
                    listings[arg1].field_256 = 1
                    listings[arg1].field_512 = listings[arg1].field_512 + (2 * stor0[stor1[arg1].field_768].field_512) - stor0[stor1[arg1].field_768].field_0
                    emit _ChallengeFailed(stor0[stor1[arg1].field_768].field_0, stor0[stor1[arg1].field_768].field_768, arg1, listings[arg1].field_768);
                else:
                    if not listings[arg1].field_256:
                        emit _ApplicationRemoved(arg1);
                    else:
                        emit _ListingRemoved(arg1);
                    listings[arg1].field_0 = 0
                    listings[arg1].field_256 = 0
                    listings[arg1].field_264 = 0
                    listings[arg1].field_512 = 0
                    listings[arg1].field_768 = 0
                    listings[arg1].field_1024 = 0
                    require ext_code.size(tokenAddress)
                    if listings[arg1].field_512 > 0:
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args listings[arg1].field_256, listings[arg1].field_512
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0[stor1[arg1].field_768].field_256, (2 * stor0[stor1[arg1].field_768].field_512) - stor0[stor1[arg1].field_768].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    emit _ChallengeSucceeded(stor0[stor1[arg1].field_768].field_0, stor0[stor1[arg1].field_768].field_768, arg1, listings[arg1].field_768);
            else:
                if ext_call.return_data[0]:
                    if not listings[arg1].field_256:
                        emit _ApplicationWhitelisted(arg1);
                    listings[arg1].field_256 = 1
                    listings[arg1].field_512 += 2 * stor0[stor1[arg1].field_768].field_512
                    emit _ChallengeFailed(stor0[stor1[arg1].field_768].field_0, stor0[stor1[arg1].field_768].field_768, arg1, listings[arg1].field_768);
                else:
                    if not listings[arg1].field_256:
                        emit _ApplicationRemoved(arg1);
                    else:
                        emit _ListingRemoved(arg1);
                    listings[arg1].field_0 = 0
                    listings[arg1].field_256 = 0
                    listings[arg1].field_264 = 0
                    listings[arg1].field_512 = 0
                    listings[arg1].field_768 = 0
                    listings[arg1].field_1024 = 0
                    require ext_code.size(tokenAddress)
                    if listings[arg1].field_512 > 0:
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args listings[arg1].field_256, listings[arg1].field_512
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0[stor1[arg1].field_768].field_256, 2 * stor0[stor1[arg1].field_768].field_512
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    emit _ChallengeSucceeded(stor0[stor1[arg1].field_768].field_0, stor0[stor1[arg1].field_768].field_768, arg1, listings[arg1].field_768);
        else:
            if listings[arg1].field_256:
                require listings[arg1].field_768 > 0
                require not stor0[stor1[arg1].field_768].field_416
                require ext_code.size(votingAddress)
                call votingAddress.0xee684830 with:
                     gas gas_remaining wei
                    args listings[arg1].field_768
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require not stor0[stor1[arg1].field_768].field_416
                require ext_code.size(votingAddress)
                call votingAddress.0xee684830 with:
                     gas gas_remaining wei
                    args listings[arg1].field_768
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_code.size(votingAddress)
                call votingAddress.getTotalNumberOfTokensForWinningOption(uint256 arg1) with:
                     gas gas_remaining wei
                    args listings[arg1].field_768
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                stor0[stor1[arg1].field_768].field_416 = 1
                require ext_code.size(votingAddress)
                call votingAddress.getTotalNumberOfTokensForWinningOption(uint256 arg1) with:
                     gas gas_remaining wei
                    args listings[arg1].field_768
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                stor0[stor1[arg1].field_768].field_768 = ext_call.return_data[0]
                require ext_code.size(votingAddress)
                call votingAddress.0x49403183 with:
                     gas gas_remaining wei
                    args listings[arg1].field_768
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    if ext_call.return_data[0]:
                        if not listings[arg1].field_256:
                            emit _ApplicationWhitelisted(arg1);
                        listings[arg1].field_256 = 1
                        listings[arg1].field_512 = listings[arg1].field_512 + (2 * stor0[stor1[arg1].field_768].field_512) - stor0[stor1[arg1].field_768].field_0
                        emit _ChallengeFailed(stor0[stor1[arg1].field_768].field_0, stor0[stor1[arg1].field_768].field_768, arg1, listings[arg1].field_768);
                    else:
                        if not listings[arg1].field_256:
                            emit _ApplicationRemoved(arg1);
                        else:
                            emit _ListingRemoved(arg1);
                        listings[arg1].field_0 = 0
                        listings[arg1].field_256 = 0
                        listings[arg1].field_264 = 0
                        listings[arg1].field_512 = 0
                        listings[arg1].field_768 = 0
                        listings[arg1].field_1024 = 0
                        require ext_code.size(tokenAddress)
                        if listings[arg1].field_512 > 0:
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args listings[arg1].field_256, listings[arg1].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor0[stor1[arg1].field_768].field_256, (2 * stor0[stor1[arg1].field_768].field_512) - stor0[stor1[arg1].field_768].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        emit _ChallengeSucceeded(stor0[stor1[arg1].field_768].field_0, stor0[stor1[arg1].field_768].field_768, arg1, listings[arg1].field_768);
                else:
                    if ext_call.return_data[0]:
                        if not listings[arg1].field_256:
                            emit _ApplicationWhitelisted(arg1);
                        listings[arg1].field_256 = 1
                        listings[arg1].field_512 += 2 * stor0[stor1[arg1].field_768].field_512
                        emit _ChallengeFailed(stor0[stor1[arg1].field_768].field_0, stor0[stor1[arg1].field_768].field_768, arg1, listings[arg1].field_768);
                    else:
                        if not listings[arg1].field_256:
                            emit _ApplicationRemoved(arg1);
                        else:
                            emit _ListingRemoved(arg1);
                        listings[arg1].field_0 = 0
                        listings[arg1].field_256 = 0
                        listings[arg1].field_264 = 0
                        listings[arg1].field_512 = 0
                        listings[arg1].field_768 = 0
                        listings[arg1].field_1024 = 0
                        require ext_code.size(tokenAddress)
                        if listings[arg1].field_512 > 0:
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args listings[arg1].field_256, listings[arg1].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor0[stor1[arg1].field_768].field_256, 2 * stor0[stor1[arg1].field_768].field_512
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        emit _ChallengeSucceeded(stor0[stor1[arg1].field_768].field_0, stor0[stor1[arg1].field_768].field_768, arg1, listings[arg1].field_768);
            else:
                if not listings[arg1].field_768:
                    if not listings[arg1].field_256:
                        emit _ApplicationWhitelisted(arg1);
                    listings[arg1].field_256 = 1
                else:
                    if bool(stor0[stor1[arg1].field_768].field_416) == 1:
                        if not listings[arg1].field_256:
                            emit _ApplicationWhitelisted(arg1);
                        listings[arg1].field_256 = 1
                    else:
                        require listings[arg1].field_768 > 0
                        require not stor0[stor1[arg1].field_768].field_416
                        require ext_code.size(votingAddress)
                        call votingAddress.0xee684830 with:
                             gas gas_remaining wei
                            args listings[arg1].field_768
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        require not stor0[stor1[arg1].field_768].field_416
                        require ext_code.size(votingAddress)
                        call votingAddress.0xee684830 with:
                             gas gas_remaining wei
                            args listings[arg1].field_768
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        require ext_code.size(votingAddress)
                        call votingAddress.getTotalNumberOfTokensForWinningOption(uint256 arg1) with:
                             gas gas_remaining wei
                            args listings[arg1].field_768
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor0[stor1[arg1].field_768].field_416 = 1
                        require ext_code.size(votingAddress)
                        call votingAddress.getTotalNumberOfTokensForWinningOption(uint256 arg1) with:
                             gas gas_remaining wei
                            args listings[arg1].field_768
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor0[stor1[arg1].field_768].field_768 = ext_call.return_data[0]
                        require ext_code.size(votingAddress)
                        call votingAddress.0x49403183 with:
                             gas gas_remaining wei
                            args listings[arg1].field_768
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            if ext_call.return_data[0]:
                                if not listings[arg1].field_256:
                                    emit _ApplicationWhitelisted(arg1);
                                listings[arg1].field_256 = 1
                                listings[arg1].field_512 = listings[arg1].field_512 + (2 * stor0[stor1[arg1].field_768].field_512) - stor0[stor1[arg1].field_768].field_0
                                emit _ChallengeFailed(stor0[stor1[arg1].field_768].field_0, stor0[stor1[arg1].field_768].field_768, arg1, listings[arg1].field_768);
                            else:
                                if not listings[arg1].field_256:
                                    emit _ApplicationRemoved(arg1);
                                else:
                                    emit _ListingRemoved(arg1);
                                listings[arg1].field_0 = 0
                                listings[arg1].field_256 = 0
                                listings[arg1].field_264 = 0
                                listings[arg1].field_512 = 0
                                listings[arg1].field_768 = 0
                                listings[arg1].field_1024 = 0
                                require ext_code.size(tokenAddress)
                                if listings[arg1].field_512 > 0:
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args listings[arg1].field_256, listings[arg1].field_512
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor0[stor1[arg1].field_768].field_256, (2 * stor0[stor1[arg1].field_768].field_512) - stor0[stor1[arg1].field_768].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit _ChallengeSucceeded(stor0[stor1[arg1].field_768].field_0, stor0[stor1[arg1].field_768].field_768, arg1, listings[arg1].field_768);
                        else:
                            if ext_call.return_data[0]:
                                if not listings[arg1].field_256:
                                    emit _ApplicationWhitelisted(arg1);
                                listings[arg1].field_256 = 1
                                listings[arg1].field_512 += 2 * stor0[stor1[arg1].field_768].field_512
                                emit _ChallengeFailed(stor0[stor1[arg1].field_768].field_0, stor0[stor1[arg1].field_768].field_768, arg1, listings[arg1].field_768);
                            else:
                                if not listings[arg1].field_256:
                                    emit _ApplicationRemoved(arg1);
                                else:
                                    emit _ListingRemoved(arg1);
                                listings[arg1].field_0 = 0
                                listings[arg1].field_256 = 0
                                listings[arg1].field_264 = 0
                                listings[arg1].field_512 = 0
                                listings[arg1].field_768 = 0
                                listings[arg1].field_1024 = 0
                                require ext_code.size(tokenAddress)
                                if listings[arg1].field_512 > 0:
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args listings[arg1].field_256, listings[arg1].field_512
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor0[stor1[arg1].field_768].field_256, 2 * stor0[stor1[arg1].field_768].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit _ChallengeSucceeded(stor0[stor1[arg1].field_768].field_0, stor0[stor1[arg1].field_768].field_768, arg1, listings[arg1].field_768);
}



}
