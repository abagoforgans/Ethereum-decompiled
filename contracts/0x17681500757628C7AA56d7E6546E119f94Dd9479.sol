contract main {


// =======================  Init code  ======================


address stor0;
uint8 stor1; offset 160
array of uint256 stor2;
array of uint256 stor3;
array of uint256 stor4;
uint256 stor5;
address stor15;

function _fallback() payable {
    stor1 = 0
    require not msg.value
    mem[96 len -12618] = code.data[13027 len -12618]
    mem[64] = -12522
    stor0 = msg.sender
    stor2[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor15 = mem[140 len 20]
    stor3[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    stor4[] = Array(len=mem[mem[192] + 96], data=mem[mem[192] + 128 len mem[mem[192] + 96]])
    stor5 = mem[224]
    return code.data[409 len 12618]
}



// =====================  Runtime code  =====================


#
#  - createToken(string arg1, string arg2, uint8 arg3, address[] arg4, uint256[] arg5, uint256[] arg6)
#
const version = '1.0.0'


address owner;
uint8 stor1; offset 160
address pendingOwner;
array of uint256 id;
array of uint256 name;
array of uint256 website;
uint256 whitePaperHash;
uint256 fundingThreshold;
uint256 fundingGoal;
uint256 tokenPrice;
uint8 timeMode;
uint256 startTime;
uint256 finishTime;
uint8 bonusMode;
array of uint256 bonusLevels;
array of uint256 bonusRates;
address beneficiaryAddress;
uint256 amountRaised;
uint256 minContribution;
uint256 earlySuccessTimestamp;
uint256 earlySuccessBlock;
mapping of uint256 contributions;
address tokenAddress;

function timeMode() {
    require timeMode <= 1
    return timeMode
}

function name() {
    return name[0 len name.length]
}

function beneficiary() {
    return beneficiaryAddress
}

function contributions(address arg1) {
    return contributions[arg1]
}

function bonusMode() {
    require bonusMode <= 4
    return bonusMode
}

function earlySuccessBlock() {
    return earlySuccessBlock
}

function finishTime() {
    return finishTime
}

function whitePaperHash() {
    return whitePaperHash
}

function startTime() {
    return startTime
}

function fundingGoal() {
    return fundingGoal
}

function amountRaised() {
    return amountRaised
}

function tokenPrice() {
    return tokenPrice
}

function bonusRates(uint256 arg1) {
    require arg1 < bonusRates.length
    return bonusRates[arg1]
}

function owner() {
    return owner
}

function earlySuccessTimestamp() {
    return earlySuccessTimestamp
}

function minContribution() {
    return minContribution
}

function id() {
    return id[0 len id.length]
}

function fundingThreshold() {
    return fundingThreshold
}

function website() {
    return website[0 len website.length]
}

function bonusLevels(uint256 arg1) {
    require arg1 < bonusLevels.length
    return bonusLevels[arg1]
}

function pendingOwner() {
    return pendingOwner
}

function token() {
    return tokenAddress
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    pendingOwner = arg1
}

function claimOwnership() {
    require pendingOwner == msg.sender
    emit OwnershipTransferred(owner, pendingOwner);
    owner = pendingOwner
    pendingOwner = 0
}

function reclaimToken(address arg1) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
}

function stage() {
    if not tokenAddress:
        return 0
    require timeMode <= 1
    if timeMode == 1:
        if block.timestamp < startTime:
            return 1
        if finishTime > block.timestamp:
            if fundingGoal > amountRaised:
                return 2
            return 4
    else:
        if block.number < startTime:
            return 1
        if finishTime > block.number:
            if fundingGoal > amountRaised:
                return 2
            return 4
    if amountRaised >= fundingThreshold:
        return 4
    return 3
}

function withdrawRefund() {
    require tokenAddress
    require timeMode <= 1
    if timeMode == 1:
        require block.timestamp >= startTime
        require finishTime <= block.timestamp
    else:
        require block.number >= startTime
        require finishTime <= block.number
    require amountRaised < fundingThreshold
    require not stor1
    stor1 = 1
    require contributions[address(msg.sender)] > 0
    contributions[address(msg.sender)] = 0
    call msg.sender with:
       value contributions[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Refund(msg.sender, contributions[address(msg.sender)]);
    stor1 = 0
}

function releaseTokens() {
    require tokenAddress
    require timeMode <= 1
    if timeMode == 1:
        require block.timestamp >= startTime
        if finishTime > block.timestamp:
            require fundingGoal <= amountRaised
        else:
            require amountRaised >= fundingThreshold
    else:
        require block.number >= startTime
        if finishTime > block.number:
            require fundingGoal <= amountRaised
        else:
            require amountRaised >= fundingThreshold
    require ext_code.size(tokenAddress)
    call tokenAddress.mintingFinished() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require not ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x7d64bcb4 with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function withdrawPayout() {
    require tokenAddress
    require timeMode <= 1
    if timeMode == 1:
        require block.timestamp >= startTime
        if finishTime > block.timestamp:
            require fundingGoal <= amountRaised
        else:
            require amountRaised >= fundingThreshold
    else:
        require block.number >= startTime
        if finishTime > block.number:
            require fundingGoal <= amountRaised
        else:
            require amountRaised >= fundingThreshold
    require beneficiaryAddress == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.mintingFinished() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[0]:
        call beneficiaryAddress with:
           value eth.balance(this.address) wei
             gas gas_remaining - 34710 wei
        require ext_call.success
    else:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x7d64bcb4 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        call beneficiaryAddress with:
           value eth.balance(this.address) wei
             gas gas_remaining - 34710 wei
    emit Payout(beneficiaryAddress, eth.balance(this.address));
}

function setParams(uint256[] arg1, uint8[] arg2, uint256[] arg3, uint256[] arg4) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = arg4.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require owner == msg.sender
    if tokenAddress:
        require timeMode <= 1
        if timeMode == 1:
            require block.timestamp >= startTime
            if finishTime > block.timestamp:
                require fundingGoal <= amountRaised
                revert
            else:
                require amountRaised < fundingThreshold
                revert
        else:
            require block.number >= startTime
            if finishTime > block.number:
                require fundingGoal <= amountRaised
                revert
            else:
                require amountRaised < fundingThreshold
                revert
    else:
        require not fundingGoal
        require 0 < arg1.length
        fundingThreshold = mem[128]
        require 1 < arg1.length
        fundingGoal = mem[160]
        require 2 < arg1.length
        tokenPrice = mem[192]
        require 0 < arg2.length
        require mem[(32 * arg1.length) + 191 len 1] <= 1
        timeMode = mem[(32 * arg1.length) + 191 len 1]
        require 3 < arg1.length
        startTime = mem[224]
        require 4 < arg1.length
        finishTime = mem[256]
        require 1 < arg2.length
        require mem[(32 * arg1.length) + 223 len 1] <= 4
        bonusMode = mem[(32 * arg1.length) + 223 len 1]
        bonusLevels.length = arg3.length
        if not arg3.length:
            idx = 0
            while bonusLevels.length > idx:
                bonusLevels[idx] = 0
                idx = idx + 1
                continue 
            bonusRates.length = arg4.length
            if not arg4.length:
                idx = 0
                while bonusRates.length > idx:
                    bonusRates[idx] = 0
                    idx = idx + 1
                    continue 
                require fundingThreshold > 0
                require fundingThreshold <= fundingGoal
                require startTime < finishTime
                require timeMode <= 1
                if not timeMode:
                    require block.number < startTime
                    require bonusLevels.length == bonusRates.length
                else:
                    require block.timestamp < startTime
                    require bonusLevels.length == bonusRates.length
            else:
                s = 0
                idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224
                while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224 > idx:
                    bonusRates[s] = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * arg4.length) + 31) >> 5
                while bonusRates.length > idx:
                    bonusRates[idx] = 0
                    idx = idx + 1
                    continue 
                require fundingThreshold > 0
                require fundingThreshold <= fundingGoal
                require startTime < finishTime
                require timeMode <= 1
                if not timeMode:
                    require block.number < startTime
                    require bonusLevels.length == bonusRates.length
                else:
                    require block.timestamp < startTime
                    require bonusLevels.length == bonusRates.length
        else:
            s = 0
            idx = (32 * arg1.length) + (32 * arg2.length) + 192
            while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192 > idx:
                bonusLevels[s] = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg3.length) + 31) >> 5
            while bonusLevels.length > idx:
                bonusLevels[idx] = 0
                idx = idx + 1
                continue 
            bonusRates.length = arg4.length
            if not arg4.length:
                idx = 0
                while bonusRates.length > idx:
                    bonusRates[idx] = 0
                    idx = idx + 1
                    continue 
                require fundingThreshold > 0
                require fundingThreshold <= fundingGoal
                require startTime < finishTime
                require timeMode <= 1
                if not timeMode:
                    require block.number < startTime
                    require bonusLevels.length == bonusRates.length
                else:
                    require block.timestamp < startTime
                    require bonusLevels.length == bonusRates.length
            else:
                s = 0
                idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224
                while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224 > idx:
                    bonusRates[s] = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * arg4.length) + 31) >> 5
                while bonusRates.length > idx:
                    bonusRates[idx] = 0
                    idx = idx + 1
                    continue 
                require fundingThreshold > 0
                require fundingThreshold <= fundingGoal
                require startTime < finishTime
                require timeMode <= 1
                if not timeMode:
                    require block.number < startTime
                    require bonusLevels.length == bonusRates.length
                else:
                    require block.timestamp < startTime
                    require bonusLevels.length == bonusRates.length
}

function _fallback() payable {
    require tokenAddress
    require timeMode <= 1
    if timeMode == 1:
        require block.timestamp >= startTime
        require finishTime > block.timestamp
    else:
        require block.number >= startTime
        require finishTime > block.number
    require fundingGoal > amountRaised
    require minContribution <= msg.value
    require msg.value + contributions[address(msg.sender)] >= contributions[address(msg.sender)]
    contributions[address(msg.sender)] += msg.value
    require bonusMode <= 4
    if bonusMode == 3:
        s = 0
        t = 0
        u = msg.value
        idx = 0
        v = amountRaised
        while idx < bonusLevels.length:
            mem[0] = 13
            if v > bonusLevels[idx]:
                s = s
                t = t
                u = u
                idx = idx + 1
                v = v
                continue 
            require idx < bonusLevels.length
            require v <= bonusLevels[idx]
            if u > bonusLevels[idx] - v:
                require bonusLevels[idx] >= v
                require idx < bonusRates.length
                mem[0] = 14
                if not bonusLevels[idx] - v:
                    if (bonusLevels[idx] * bonusRates[idx]) - (v * bonusRates[idx]) + t >= t:
                        if bonusLevels[idx] - v <= u:
                            s = bonusLevels[idx] - v
                            t = (bonusLevels[idx] * bonusRates[idx]) - (v * bonusRates[idx]) + t
                            u = u - bonusLevels[idx] + v
                            idx = idx + 1
                            v = bonusLevels[idx]
                            continue 
                else:
                    if bonusLevels[idx] - v:
                        if (bonusLevels[idx] * bonusRates[idx]) - (v * bonusRates[idx]) / bonusLevels[idx] - v == bonusRates[idx]:
                            if (bonusLevels[idx] * bonusRates[idx]) - (v * bonusRates[idx]) + t >= t:
                                if bonusLevels[idx] - v <= u:
                                    s = bonusLevels[idx] - v
                                    t = (bonusLevels[idx] * bonusRates[idx]) - (v * bonusRates[idx]) + t
                                    u = u - bonusLevels[idx] + v
                                    idx = idx + 1
                                    v = bonusLevels[idx]
                                    continue 
                revert
            require u + v >= v
            require idx < bonusRates.length
            if u:
                require u
                require bonusRates[idx] * u / u == bonusRates[idx]
            require (bonusRates[idx] * u) + t >= t
            require ext_code.size(tokenAddress)
            call tokenAddress.0x313ce567 with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            if (bonusRates[idx] * u) + t / 10^18:
                require (bonusRates[idx] * u) + t / 10^18
                require 10^ext_call.return_data[31 len 1] * (bonusRates[idx] * u) + t / 10^18 / (bonusRates[idx] * u) + t / 10^18 == 10^ext_call.return_data[31 len 1]
            require tokenPrice
            require msg.value + amountRaised >= amountRaised
            amountRaised += msg.value
            require msg.value + amountRaised <= fundingGoal
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args msg.sender, 10^uint8(ext_call.return_data[0]) * (bonusRates[idx] * u) + t / 10^18 / tokenPrice
            require ext_call.success
            require ext_call.return_data[0]
            emit Contribution(msg.sender, msg.value);
            if fundingGoal <= amountRaised:
                earlySuccessTimestamp = block.timestamp
                earlySuccessBlock = block.number
                require ext_code.size(tokenAddress)
                call tokenAddress.0x7d64bcb4 with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                emit EarlySuccess()
        if u:
            require u
            require 10^18 * u / u == 10^18
        require (10^18 * u) + t >= t
        require ext_code.size(tokenAddress)
        call tokenAddress.0x313ce567 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        if (10^18 * u) + t / 10^18:
            require (10^18 * u) + t / 10^18
            require 10^ext_call.return_data[31 len 1] * (10^18 * u) + t / 10^18 / (10^18 * u) + t / 10^18 == 10^ext_call.return_data[31 len 1]
        require tokenPrice
        require msg.value + amountRaised >= amountRaised
        amountRaised += msg.value
        require msg.value + amountRaised <= fundingGoal
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, 10^uint8(ext_call.return_data[0]) * (10^18 * u) + t / 10^18 / tokenPrice
    else:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x313ce567 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        if msg.value:
            require msg.value
            require 10^ext_call.return_data[31 len 1] * msg.value / msg.value == 10^ext_call.return_data[31 len 1]
        require tokenPrice
        require bonusMode <= 4
        require bonusMode <= 4
        require bonusMode <= 4
        if bonusMode != 1:
            if bonusMode != 2:
                if bonusMode != 4:
                    idx = 0
                    while idx < bonusLevels.length:
                        mem[0] = 13
                        if 0 > bonusLevels[idx]:
                            idx = idx + 1
                            continue 
                        require idx < bonusRates.length
                        if 10^uint8(ext_call.return_data[0]) * msg.value / tokenPrice:
                            require 10^uint8(ext_call.return_data[0]) * msg.value / tokenPrice
                            require bonusRates[idx] * 10^uint8(ext_call.return_data[0]) * msg.value / tokenPrice / 10^uint8(ext_call.return_data[0]) * msg.value / tokenPrice == bonusRates[idx]
                        require msg.value + amountRaised >= amountRaised
                        amountRaised += msg.value
                        require msg.value + amountRaised <= fundingGoal
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, bonusRates[idx] * 10^uint8(ext_call.return_data[0]) * msg.value / tokenPrice / 10^18
                        require ext_call.success
                        require ext_call.return_data[0]
                        emit Contribution(msg.sender, msg.value);
                        if fundingGoal <= amountRaised:
                            earlySuccessTimestamp = block.timestamp
                            earlySuccessBlock = block.number
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x7d64bcb4 with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            emit EarlySuccess()
                else:
                    idx = 0
                    while idx < bonusLevels.length:
                        mem[0] = 13
                        if msg.value > bonusLevels[idx]:
                            idx = idx + 1
                            continue 
                        require idx < bonusRates.length
                        if 10^uint8(ext_call.return_data[0]) * msg.value / tokenPrice:
                            require 10^uint8(ext_call.return_data[0]) * msg.value / tokenPrice
                            require bonusRates[idx] * 10^uint8(ext_call.return_data[0]) * msg.value / tokenPrice / 10^uint8(ext_call.return_data[0]) * msg.value / tokenPrice == bonusRates[idx]
                        require msg.value + amountRaised >= amountRaised
                        amountRaised += msg.value
                        require msg.value + amountRaised <= fundingGoal
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, bonusRates[idx] * 10^uint8(ext_call.return_data[0]) * msg.value / tokenPrice / 10^18
                        require ext_call.success
                        require ext_call.return_data[0]
                        emit Contribution(msg.sender, msg.value);
                        if fundingGoal <= amountRaised:
                            earlySuccessTimestamp = block.timestamp
                            earlySuccessBlock = block.number
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x7d64bcb4 with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            emit EarlySuccess()
            else:
                if bonusMode != 4:
                    idx = 0
                    while idx < bonusLevels.length:
                        mem[0] = 13
                        if block.timestamp > bonusLevels[idx]:
                            idx = idx + 1
                            continue 
                        require idx < bonusRates.length
                        if 10^uint8(ext_call.return_data[0]) * msg.value / tokenPrice:
                            require 10^uint8(ext_call.return_data[0]) * msg.value / tokenPrice
                            require bonusRates[idx] * 10^uint8(ext_call.return_data[0]) * msg.value / tokenPrice / 10^uint8(ext_call.return_data[0]) * msg.value / tokenPrice == bonusRates[idx]
                        require msg.value + amountRaised >= amountRaised
                        amountRaised += msg.value
                        require msg.value + amountRaised <= fundingGoal
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, bonusRates[idx] * 10^uint8(ext_call.return_data[0]) * msg.value / tokenPrice / 10^18
                        require ext_call.success
                        require ext_call.return_data[0]
                        emit Contribution(msg.sender, msg.value);
                        if fundingGoal <= amountRaised:
                            earlySuccessTimestamp = block.timestamp
                            earlySuccessBlock = block.number
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x7d64bcb4 with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            emit EarlySuccess()
                else:
                    idx = 0
                    while idx < bonusLevels.length:
                        mem[0] = 13
                        if msg.value > bonusLevels[idx]:
                            idx = idx + 1
                            continue 
                        require idx < bonusRates.length
                        if 10^uint8(ext_call.return_data[0]) * msg.value / tokenPrice:
                            require 10^uint8(ext_call.return_data[0]) * msg.value / tokenPrice
                            require bonusRates[idx] * 10^uint8(ext_call.return_data[0]) * msg.value / tokenPrice / 10^uint8(ext_call.return_data[0]) * msg.value / tokenPrice == bonusRates[idx]
                        require msg.value + amountRaised >= amountRaised
                        amountRaised += msg.value
                        require msg.value + amountRaised <= fundingGoal
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, bonusRates[idx] * 10^uint8(ext_call.return_data[0]) * msg.value / tokenPrice / 10^18
                        require ext_call.success
                        require ext_call.return_data[0]
                        emit Contribution(msg.sender, msg.value);
                        if fundingGoal <= amountRaised:
                            earlySuccessTimestamp = block.timestamp
                            earlySuccessBlock = block.number
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x7d64bcb4 with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            emit EarlySuccess()
        else:
            if bonusMode != 2:
                if bonusMode != 4:
                    idx = 0
                    while idx < bonusLevels.length:
                        mem[0] = 13
                        if block.number > bonusLevels[idx]:
                            idx = idx + 1
                            continue 
                        require idx < bonusRates.length
                        if 10^uint8(ext_call.return_data[0]) * msg.value / tokenPrice:
                            require 10^uint8(ext_call.return_data[0]) * msg.value / tokenPrice
                            require bonusRates[idx] * 10^uint8(ext_call.return_data[0]) * msg.value / tokenPrice / 10^uint8(ext_call.return_data[0]) * msg.value / tokenPrice == bonusRates[idx]
                        require msg.value + amountRaised >= amountRaised
                        amountRaised += msg.value
                        require msg.value + amountRaised <= fundingGoal
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, bonusRates[idx] * 10^uint8(ext_call.return_data[0]) * msg.value / tokenPrice / 10^18
                        require ext_call.success
                        require ext_call.return_data[0]
                        emit Contribution(msg.sender, msg.value);
                        if fundingGoal <= amountRaised:
                            earlySuccessTimestamp = block.timestamp
                            earlySuccessBlock = block.number
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x7d64bcb4 with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            emit EarlySuccess()
                else:
                    idx = 0
                    while idx < bonusLevels.length:
                        mem[0] = 13
                        if msg.value > bonusLevels[idx]:
                            idx = idx + 1
                            continue 
                        require idx < bonusRates.length
                        if 10^uint8(ext_call.return_data[0]) * msg.value / tokenPrice:
                            require 10^uint8(ext_call.return_data[0]) * msg.value / tokenPrice
                            require bonusRates[idx] * 10^uint8(ext_call.return_data[0]) * msg.value / tokenPrice / 10^uint8(ext_call.return_data[0]) * msg.value / tokenPrice == bonusRates[idx]
                        require msg.value + amountRaised >= amountRaised
                        amountRaised += msg.value
                        require msg.value + amountRaised <= fundingGoal
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, bonusRates[idx] * 10^uint8(ext_call.return_data[0]) * msg.value / tokenPrice / 10^18
                        require ext_call.success
                        require ext_call.return_data[0]
                        emit Contribution(msg.sender, msg.value);
                        if fundingGoal <= amountRaised:
                            earlySuccessTimestamp = block.timestamp
                            earlySuccessBlock = block.number
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x7d64bcb4 with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            emit EarlySuccess()
            else:
                if bonusMode != 4:
                    idx = 0
                    while idx < bonusLevels.length:
                        mem[0] = 13
                        if block.timestamp > bonusLevels[idx]:
                            idx = idx + 1
                            continue 
                        require idx < bonusRates.length
                        if 10^uint8(ext_call.return_data[0]) * msg.value / tokenPrice:
                            require 10^uint8(ext_call.return_data[0]) * msg.value / tokenPrice
                            require bonusRates[idx] * 10^uint8(ext_call.return_data[0]) * msg.value / tokenPrice / 10^uint8(ext_call.return_data[0]) * msg.value / tokenPrice == bonusRates[idx]
                        require msg.value + amountRaised >= amountRaised
                        amountRaised += msg.value
                        require msg.value + amountRaised <= fundingGoal
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, bonusRates[idx] * 10^uint8(ext_call.return_data[0]) * msg.value / tokenPrice / 10^18
                        require ext_call.success
                        require ext_call.return_data[0]
                        emit Contribution(msg.sender, msg.value);
                        if fundingGoal <= amountRaised:
                            earlySuccessTimestamp = block.timestamp
                            earlySuccessBlock = block.number
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x7d64bcb4 with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            emit EarlySuccess()
                else:
                    idx = 0
                    while idx < bonusLevels.length:
                        mem[0] = 13
                        if msg.value > bonusLevels[idx]:
                            idx = idx + 1
                            continue 
                        require idx < bonusRates.length
                        if 10^uint8(ext_call.return_data[0]) * msg.value / tokenPrice:
                            require 10^uint8(ext_call.return_data[0]) * msg.value / tokenPrice
                            require bonusRates[idx] * 10^uint8(ext_call.return_data[0]) * msg.value / tokenPrice / 10^uint8(ext_call.return_data[0]) * msg.value / tokenPrice == bonusRates[idx]
                        require msg.value + amountRaised >= amountRaised
                        amountRaised += msg.value
                        require msg.value + amountRaised <= fundingGoal
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, bonusRates[idx] * 10^uint8(ext_call.return_data[0]) * msg.value / tokenPrice / 10^18
                        require ext_call.success
                        require ext_call.return_data[0]
                        emit Contribution(msg.sender, msg.value);
                        if fundingGoal <= amountRaised:
                            earlySuccessTimestamp = block.timestamp
                            earlySuccessBlock = block.number
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x7d64bcb4 with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            emit EarlySuccess()
        require msg.value + amountRaised >= amountRaised
        amountRaised += msg.value
        require msg.value + amountRaised <= fundingGoal
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, 10^uint8(ext_call.return_data[0]) * msg.value / tokenPrice
    require ext_call.success
    require ext_call.return_data[0]
    emit Contribution(msg.sender, msg.value);
    if fundingGoal <= amountRaised:
        earlySuccessTimestamp = block.timestamp
        earlySuccessBlock = block.number
        require ext_code.size(tokenAddress)
        call tokenAddress.0x7d64bcb4 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        emit EarlySuccess()
}



}
