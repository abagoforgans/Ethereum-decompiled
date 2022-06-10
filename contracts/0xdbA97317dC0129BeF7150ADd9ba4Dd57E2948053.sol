contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint8 stor7;
uint256 stor8;
uint256 stor9;

function _fallback() {
    stor0 = msg.sender
    require code.data[4738 len 32] + code.data[4802 len 32] >= code.data[4738 len 32]
    require code.data[4738 len 32] + code.data[4802 len 32] <= 100
    require code.data[4674 len 32] > block.timestamp
    require code.data[4654 len 20]
    stor7 = 0
    stor1 = code.data[4654 len 20]
    stor2 = code.data[4674 len 32]
    stor3 = code.data[4706 len 32]
    stor4 = code.data[4738 len 32]
    stor5 = code.data[4770 len 32]
    stor6 = code.data[4802 len 32]
    require stor2 + stor3 >= stor2
    stor8 = stor2 + stor3
    require stor8 + stor5 >= stor8
    stor9 = stor8 + stor5
    return code.data[542 len 4100]
}



// =====================  Runtime code  =====================


address owner;
address tokenAddress;
uint256 startTime;
uint256 cliffDuration;
uint256 cliffReleasePercentage;
uint256 slopeDuration;
uint256 slopeReleasePercentage;
uint8 stor7;
uint256 cliffTime;
uint256 timelockEndTime;
mapping of uint256 allocatedTokens;
mapping of uint256 withdrawnTokens;
mapping of uint8 stor12;

function cliffTime() {
    return cliffTime
}

function allocatedTokens(address arg1) {
    return allocatedTokens[arg1]
}

function withdrawalPaused(address arg1) {
    return bool(stor12[arg1])
}

function startTime() {
    return startTime
}

function slopeDuration() {
    return slopeDuration
}

function owner() {
    return owner
}

function slopeReleasePercentage() {
    return slopeReleasePercentage
}

function cliffReleasePercentage() {
    return cliffReleasePercentage
}

function timelockEndTime() {
    return timelockEndTime
}

function cliffDuration() {
    return cliffDuration
}

function withdrawnTokens(address arg1) {
    return withdrawnTokens[arg1]
}

function allocationFinished() {
    return bool(stor7)
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function finishAllocation() {
    require msg.sender == owner
    stor7 = 1
    return 1
}

function pauseWithdrawal(address arg1) {
    require msg.sender == owner
    stor12[address(arg1)] = 1
    return 1
}

function unpauseWithdrawal(address arg1) {
    require msg.sender == owner
    stor12[address(arg1)] = 0
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function allocateTokens(address arg1, uint256 arg2) {
    require calldata.size >= 68
    require msg.sender == owner
    require not stor7
    allocatedTokens[address(arg1)] = arg2
    return 1
}

function availableForWithdrawal(address arg1) {
    if block.timestamp < cliffTime:
        return 0
    if block.timestamp >= timelockEndTime:
        if withdrawnTokens[address(arg1)] <= allocatedTokens[address(arg1)]:
            return (allocatedTokens[address(arg1)] - withdrawnTokens[address(arg1)])
    else:
        if not cliffReleasePercentage:
            if not allocatedTokens[address(arg1)]:
                if cliffTime <= block.timestamp:
                    if slopeDuration:
                        if 0 / slopeDuration >= 0:
                            if withdrawnTokens[address(arg1)] <= 0 / slopeDuration:
                                return ((0 / slopeDuration) - withdrawnTokens[address(arg1)])
            else:
                if allocatedTokens[address(arg1)]:
                    if allocatedTokens[address(arg1)] * slopeReleasePercentage / allocatedTokens[address(arg1)] == slopeReleasePercentage:
                        if cliffTime <= block.timestamp:
                            if not allocatedTokens[address(arg1)] * slopeReleasePercentage / 100:
                                if slopeDuration:
                                    if 0 / slopeDuration >= 0:
                                        if withdrawnTokens[address(arg1)] <= 0 / slopeDuration:
                                            return ((0 / slopeDuration) - withdrawnTokens[address(arg1)])
                            else:
                                if allocatedTokens[address(arg1)] * slopeReleasePercentage / 100:
                                    if (block.timestamp * allocatedTokens[address(arg1)] * slopeReleasePercentage / 100) - (cliffTime * allocatedTokens[address(arg1)] * slopeReleasePercentage / 100) / allocatedTokens[address(arg1)] * slopeReleasePercentage / 100 == block.timestamp - cliffTime:
                                        if slopeDuration:
                                            if (block.timestamp * allocatedTokens[address(arg1)] * slopeReleasePercentage / 100) - (cliffTime * allocatedTokens[address(arg1)] * slopeReleasePercentage / 100) / slopeDuration >= 0:
                                                if withdrawnTokens[address(arg1)] <= (block.timestamp * allocatedTokens[address(arg1)] * slopeReleasePercentage / 100) - (cliffTime * allocatedTokens[address(arg1)] * slopeReleasePercentage / 100) / slopeDuration:
                                                    return (((block.timestamp * allocatedTokens[address(arg1)] * slopeReleasePercentage / 100) - (cliffTime * allocatedTokens[address(arg1)] * slopeReleasePercentage / 100) / slopeDuration) - withdrawnTokens[address(arg1)])
        else:
            if cliffReleasePercentage:
                if cliffReleasePercentage * allocatedTokens[address(arg1)] / cliffReleasePercentage == allocatedTokens[address(arg1)]:
                    if not allocatedTokens[address(arg1)]:
                        if cliffTime <= block.timestamp:
                            if slopeDuration:
                                if (cliffReleasePercentage * allocatedTokens[address(arg1)] / 100) + (0 / slopeDuration) >= cliffReleasePercentage * allocatedTokens[address(arg1)] / 100:
                                    if withdrawnTokens[address(arg1)] <= (cliffReleasePercentage * allocatedTokens[address(arg1)] / 100) + (0 / slopeDuration):
                                        return ((cliffReleasePercentage * allocatedTokens[address(arg1)] / 100) + (0 / slopeDuration) - withdrawnTokens[address(arg1)])
                    else:
                        if allocatedTokens[address(arg1)]:
                            if allocatedTokens[address(arg1)] * slopeReleasePercentage / allocatedTokens[address(arg1)] == slopeReleasePercentage:
                                if cliffTime <= block.timestamp:
                                    if not allocatedTokens[address(arg1)] * slopeReleasePercentage / 100:
                                        if slopeDuration:
                                            if (cliffReleasePercentage * allocatedTokens[address(arg1)] / 100) + (0 / slopeDuration) >= cliffReleasePercentage * allocatedTokens[address(arg1)] / 100:
                                                if withdrawnTokens[address(arg1)] <= (cliffReleasePercentage * allocatedTokens[address(arg1)] / 100) + (0 / slopeDuration):
                                                    return ((cliffReleasePercentage * allocatedTokens[address(arg1)] / 100) + (0 / slopeDuration) - withdrawnTokens[address(arg1)])
                                    else:
                                        if allocatedTokens[address(arg1)] * slopeReleasePercentage / 100:
                                            if (block.timestamp * allocatedTokens[address(arg1)] * slopeReleasePercentage / 100) - (cliffTime * allocatedTokens[address(arg1)] * slopeReleasePercentage / 100) / allocatedTokens[address(arg1)] * slopeReleasePercentage / 100 == block.timestamp - cliffTime:
                                                if slopeDuration:
                                                    if (cliffReleasePercentage * allocatedTokens[address(arg1)] / 100) + ((block.timestamp * allocatedTokens[address(arg1)] * slopeReleasePercentage / 100) - (cliffTime * allocatedTokens[address(arg1)] * slopeReleasePercentage / 100) / slopeDuration) >= cliffReleasePercentage * allocatedTokens[address(arg1)] / 100:
                                                        if withdrawnTokens[address(arg1)] <= (cliffReleasePercentage * allocatedTokens[address(arg1)] / 100) + ((block.timestamp * allocatedTokens[address(arg1)] * slopeReleasePercentage / 100) - (cliffTime * allocatedTokens[address(arg1)] * slopeReleasePercentage / 100) / slopeDuration):
                                                            return ((cliffReleasePercentage * allocatedTokens[address(arg1)] / 100) + ((block.timestamp * allocatedTokens[address(arg1)] * slopeReleasePercentage / 100) - (cliffTime * allocatedTokens[address(arg1)] * slopeReleasePercentage / 100) / slopeDuration) - withdrawnTokens[address(arg1)])
    revert
}

function withdraw() {
    require not stor12[address(msg.sender)]
    require block.timestamp >= cliffTime
    if block.timestamp >= timelockEndTime:
        if withdrawnTokens[address(msg.sender)] <= allocatedTokens[address(msg.sender)]:
            require allocatedTokens[address(msg.sender)] - withdrawnTokens[address(msg.sender)] > 0
            if allocatedTokens[address(msg.sender)] >= withdrawnTokens[address(msg.sender)]:
                withdrawnTokens[address(msg.sender)] = allocatedTokens[address(msg.sender)]
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, allocatedTokens[address(msg.sender)] - withdrawnTokens[address(msg.sender)]
                require ext_call.success
                if ext_call.return_data[0]:
                    return 1
    else:
        if not cliffReleasePercentage:
            if not allocatedTokens[address(msg.sender)]:
                if cliffTime <= block.timestamp:
                    if slopeDuration:
                        if 0 / slopeDuration >= 0:
                            if withdrawnTokens[address(msg.sender)] <= 0 / slopeDuration:
                                require (0 / slopeDuration) - withdrawnTokens[address(msg.sender)] > 0
                                if 0 / slopeDuration >= withdrawnTokens[address(msg.sender)]:
                                    withdrawnTokens[address(msg.sender)] = 0 / slopeDuration
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, (0 / slopeDuration) - withdrawnTokens[address(msg.sender)]
                                    require ext_call.success
                                    if ext_call.return_data[0]:
                                        return 1
            else:
                if allocatedTokens[address(msg.sender)]:
                    if allocatedTokens[address(msg.sender)] * slopeReleasePercentage / allocatedTokens[address(msg.sender)] == slopeReleasePercentage:
                        if cliffTime <= block.timestamp:
                            if not allocatedTokens[address(msg.sender)] * slopeReleasePercentage / 100:
                                if slopeDuration:
                                    if 0 / slopeDuration >= 0:
                                        if withdrawnTokens[address(msg.sender)] <= 0 / slopeDuration:
                                            require (0 / slopeDuration) - withdrawnTokens[address(msg.sender)] > 0
                                            if 0 / slopeDuration >= withdrawnTokens[address(msg.sender)]:
                                                withdrawnTokens[address(msg.sender)] = 0 / slopeDuration
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, (0 / slopeDuration) - withdrawnTokens[address(msg.sender)]
                                                require ext_call.success
                                                if ext_call.return_data[0]:
                                                    return 1
                            else:
                                if allocatedTokens[address(msg.sender)] * slopeReleasePercentage / 100:
                                    if (block.timestamp * allocatedTokens[address(msg.sender)] * slopeReleasePercentage / 100) - (cliffTime * allocatedTokens[address(msg.sender)] * slopeReleasePercentage / 100) / allocatedTokens[address(msg.sender)] * slopeReleasePercentage / 100 == block.timestamp - cliffTime:
                                        if slopeDuration:
                                            if (block.timestamp * allocatedTokens[address(msg.sender)] * slopeReleasePercentage / 100) - (cliffTime * allocatedTokens[address(msg.sender)] * slopeReleasePercentage / 100) / slopeDuration >= 0:
                                                if withdrawnTokens[address(msg.sender)] <= (block.timestamp * allocatedTokens[address(msg.sender)] * slopeReleasePercentage / 100) - (cliffTime * allocatedTokens[address(msg.sender)] * slopeReleasePercentage / 100) / slopeDuration:
                                                    require ((block.timestamp * allocatedTokens[address(msg.sender)] * slopeReleasePercentage / 100) - (cliffTime * allocatedTokens[address(msg.sender)] * slopeReleasePercentage / 100) / slopeDuration) - withdrawnTokens[address(msg.sender)] > 0
                                                    if (block.timestamp * allocatedTokens[address(msg.sender)] * slopeReleasePercentage / 100) - (cliffTime * allocatedTokens[address(msg.sender)] * slopeReleasePercentage / 100) / slopeDuration >= withdrawnTokens[address(msg.sender)]:
                                                        withdrawnTokens[address(msg.sender)] = (block.timestamp * allocatedTokens[address(msg.sender)] * slopeReleasePercentage / 100) - (cliffTime * allocatedTokens[address(msg.sender)] * slopeReleasePercentage / 100) / slopeDuration
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, ((block.timestamp * allocatedTokens[address(msg.sender)] * slopeReleasePercentage / 100) - (cliffTime * allocatedTokens[address(msg.sender)] * slopeReleasePercentage / 100) / slopeDuration) - withdrawnTokens[address(msg.sender)]
                                                        require ext_call.success
                                                        if ext_call.return_data[0]:
                                                            return 1
        else:
            if cliffReleasePercentage:
                if cliffReleasePercentage * allocatedTokens[address(msg.sender)] / cliffReleasePercentage == allocatedTokens[address(msg.sender)]:
                    if not allocatedTokens[address(msg.sender)]:
                        if cliffTime <= block.timestamp:
                            if slopeDuration:
                                if (cliffReleasePercentage * allocatedTokens[address(msg.sender)] / 100) + (0 / slopeDuration) >= cliffReleasePercentage * allocatedTokens[address(msg.sender)] / 100:
                                    if withdrawnTokens[address(msg.sender)] <= (cliffReleasePercentage * allocatedTokens[address(msg.sender)] / 100) + (0 / slopeDuration):
                                        require (cliffReleasePercentage * allocatedTokens[address(msg.sender)] / 100) + (0 / slopeDuration) - withdrawnTokens[address(msg.sender)] > 0
                                        if (cliffReleasePercentage * allocatedTokens[address(msg.sender)] / 100) + (0 / slopeDuration) >= withdrawnTokens[address(msg.sender)]:
                                            withdrawnTokens[address(msg.sender)] = (cliffReleasePercentage * allocatedTokens[address(msg.sender)] / 100) + (0 / slopeDuration)
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, (cliffReleasePercentage * allocatedTokens[address(msg.sender)] / 100) + (0 / slopeDuration) - withdrawnTokens[address(msg.sender)]
                                            require ext_call.success
                                            if ext_call.return_data[0]:
                                                return 1
                    else:
                        if allocatedTokens[address(msg.sender)]:
                            if allocatedTokens[address(msg.sender)] * slopeReleasePercentage / allocatedTokens[address(msg.sender)] == slopeReleasePercentage:
                                if cliffTime <= block.timestamp:
                                    if not allocatedTokens[address(msg.sender)] * slopeReleasePercentage / 100:
                                        if slopeDuration:
                                            if (cliffReleasePercentage * allocatedTokens[address(msg.sender)] / 100) + (0 / slopeDuration) >= cliffReleasePercentage * allocatedTokens[address(msg.sender)] / 100:
                                                if withdrawnTokens[address(msg.sender)] <= (cliffReleasePercentage * allocatedTokens[address(msg.sender)] / 100) + (0 / slopeDuration):
                                                    require (cliffReleasePercentage * allocatedTokens[address(msg.sender)] / 100) + (0 / slopeDuration) - withdrawnTokens[address(msg.sender)] > 0
                                                    if (cliffReleasePercentage * allocatedTokens[address(msg.sender)] / 100) + (0 / slopeDuration) >= withdrawnTokens[address(msg.sender)]:
                                                        withdrawnTokens[address(msg.sender)] = (cliffReleasePercentage * allocatedTokens[address(msg.sender)] / 100) + (0 / slopeDuration)
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, (cliffReleasePercentage * allocatedTokens[address(msg.sender)] / 100) + (0 / slopeDuration) - withdrawnTokens[address(msg.sender)]
                                                        require ext_call.success
                                                        if ext_call.return_data[0]:
                                                            return 1
                                    else:
                                        if allocatedTokens[address(msg.sender)] * slopeReleasePercentage / 100:
                                            if (block.timestamp * allocatedTokens[address(msg.sender)] * slopeReleasePercentage / 100) - (cliffTime * allocatedTokens[address(msg.sender)] * slopeReleasePercentage / 100) / allocatedTokens[address(msg.sender)] * slopeReleasePercentage / 100 == block.timestamp - cliffTime:
                                                if slopeDuration:
                                                    if (cliffReleasePercentage * allocatedTokens[address(msg.sender)] / 100) + ((block.timestamp * allocatedTokens[address(msg.sender)] * slopeReleasePercentage / 100) - (cliffTime * allocatedTokens[address(msg.sender)] * slopeReleasePercentage / 100) / slopeDuration) >= cliffReleasePercentage * allocatedTokens[address(msg.sender)] / 100:
                                                        if withdrawnTokens[address(msg.sender)] <= (cliffReleasePercentage * allocatedTokens[address(msg.sender)] / 100) + ((block.timestamp * allocatedTokens[address(msg.sender)] * slopeReleasePercentage / 100) - (cliffTime * allocatedTokens[address(msg.sender)] * slopeReleasePercentage / 100) / slopeDuration):
                                                            require (cliffReleasePercentage * allocatedTokens[address(msg.sender)] / 100) + ((block.timestamp * allocatedTokens[address(msg.sender)] * slopeReleasePercentage / 100) - (cliffTime * allocatedTokens[address(msg.sender)] * slopeReleasePercentage / 100) / slopeDuration) - withdrawnTokens[address(msg.sender)] > 0
                                                            if (cliffReleasePercentage * allocatedTokens[address(msg.sender)] / 100) + ((block.timestamp * allocatedTokens[address(msg.sender)] * slopeReleasePercentage / 100) - (cliffTime * allocatedTokens[address(msg.sender)] * slopeReleasePercentage / 100) / slopeDuration) >= withdrawnTokens[address(msg.sender)]:
                                                                withdrawnTokens[address(msg.sender)] = (cliffReleasePercentage * allocatedTokens[address(msg.sender)] / 100) + ((block.timestamp * allocatedTokens[address(msg.sender)] * slopeReleasePercentage / 100) - (cliffTime * allocatedTokens[address(msg.sender)] * slopeReleasePercentage / 100) / slopeDuration)
                                                                require ext_code.size(tokenAddress)
                                                                call tokenAddress.0xa9059cbb with:
                                                                     gas gas_remaining - 710 wei
                                                                    args msg.sender, (cliffReleasePercentage * allocatedTokens[address(msg.sender)] / 100) + ((block.timestamp * allocatedTokens[address(msg.sender)] * slopeReleasePercentage / 100) - (cliffTime * allocatedTokens[address(msg.sender)] * slopeReleasePercentage / 100) / slopeDuration) - withdrawnTokens[address(msg.sender)]
                                                                require ext_call.success
                                                                if ext_call.return_data[0]:
                                                                    return 1
    revert
}



}
