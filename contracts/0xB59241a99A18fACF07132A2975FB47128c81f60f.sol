contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint8 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
address stor16;
address stor17;
address stor18;
address stor19;
address stor20;
address stor21;
uint256 stor22;
address stor23;
address stor24;
uint8 stor26;
uint8 stor26; offset 8

function _fallback() payable {
    stor3 = 0
    stor4 = 20 * 10^18
    stor5 = 0
    stor6 = 3333333
    stor7 = 427665 * 3600
    stor8 = 420345 * 3600
    stor9 = 419313 * 3600
    stor10 = 419649 * 3600
    stor11 = 420033 * 3600
    stor12 = 418569 * 3600
    stor13 = 426537 * 3600
    stor22 = 10
    uint8(stor26.field_0) = 0
    uint8(stor26.field_8) = 1
    require not msg.value
    stor0 = msg.sender
    stor1 = msg.sender
    stor23 = code.data[8887 len 20]
    stor24 = 0xbf5b5b6f3c223dc9f3c7c009af358c55705c3941
    require ext_code.size(code.data[8887 len 20])
    call code.data[8887 len 20].0x313ce567 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor22 = stor22^ext_call.return_data[31 len 1]
    stor16 = code.data[8919 len 20]
    stor17 = code.data[8951 len 20]
    stor18 = code.data[8983 len 20]
    stor19 = code.data[9015 len 20]
    stor20 = code.data[9047 len 20]
    stor21 = code.data[9079 len 20]
    return code.data[549 len 8326]
}



// =====================  Runtime code  =====================


#
#  - setParams()
#
const contractBalance = eth.balance(this.address)


address owner;
address serverAddress;
array of uint256 icoStagePeriod;
uint8 stor3;
uint256 threshold;
uint256 totalCollected;
uint256 pricePerTokenInWei;
uint256 agingTime;
uint256 stor13;
array of struct bonuses;
array of uint256 bonusesAfterClose;
address prPoolAddress;
address foundersAddress;
address advisoryAddress;
address bountiesAddress;
address lotteryAddress;
address angelInvestorsAddress;
address tokenRewardAddress;
address oldTokenRewardAddress;
mapping of uint256 balanceOf;
uint8 stor26;
uint8 allowManuallyMintTokens; offset 8

function bonusesAfterClose(uint256 arg1) {
    require arg1 < bonusesAfterClose.length
    return bonusesAfterClose[arg1]
}

function advisory() {
    return advisoryAddress
}

function agingTime() {
    return agingTime
}

function founders() {
    return foundersAddress
}

function threshold() {
    return threshold
}

function IcoStagePeriod(uint256 arg1) {
    require arg1 < icoStagePeriod.length
    return icoStagePeriod[arg1].field_0
}

function tokenReward() {
    return tokenRewardAddress
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function owner() {
    return owner
}

function IcoClosedManually() {
    return bool(stor3)
}

function prPool() {
    return prPoolAddress
}

function bonuses(uint256 arg1) {
    require arg1 < bonuses.length
    return bonuses[arg1].field_0
}

function angelInvestors() {
    return angelInvestorsAddress
}

function lottery() {
    return lotteryAddress
}

function oldTokenReward() {
    return oldTokenRewardAddress
}

function pricePerTokenInWei() {
    return pricePerTokenInWei
}

function bounties() {
    return bountiesAddress
}

function totalCollected() {
    return totalCollected
}

function allowManuallyMintTokens() {
    return bool(allowManuallyMintTokens)
}

function server() {
    return serverAddress
}

function kill() {
    require owner == msg.sender
    require 1 < icoStagePeriod.length
    if block.timestamp < uint256(icoStagePeriod.field_256):
        if not stor3:
            require pricePerTokenInWei > threshold - totalCollected
    if eth.balance(this.address) > 0:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa6f9dae1 with:
         gas gas_remaining - 710 wei
        args owner
    require ext_call.success
    selfdestruct(owner)
}

function changeOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function changeServer(address arg1) {
    require owner == msg.sender
    serverAddress = arg1
}

function disableManuallyMintTokens() {
    require owner == msg.sender
    allowManuallyMintTokens = 0
}

function closeICO() {
    require owner == msg.sender
    require 0 < icoStagePeriod.length
    require block.timestamp >= uint256(icoStagePeriod.field_0)
    require 1 < icoStagePeriod.length
    require block.timestamp < uint256(icoStagePeriod.field_256)
    require not stor3
    stor3 = 1
}

function isIcoClosed() {
    require 1 < icoStagePeriod.length
    if block.timestamp >= uint256(icoStagePeriod.field_256):
        return block.timestamp >= uint256(icoStagePeriod.field_256)
    if stor3:
        return bool(stor3)
    return (pricePerTokenInWei > threshold - totalCollected)
}

function safeWithdrawal(uint256 arg1) {
    require owner == msg.sender
    require eth.balance(this.address) >= arg1
    require 0 < icoStagePeriod.length
    if block.timestamp >= uint256(icoStagePeriod.field_0):
        require 1 < icoStagePeriod.length
        if block.timestamp < uint256(icoStagePeriod.field_256):
            if not stor3:
                require pricePerTokenInWei > threshold - totalCollected
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
        emit FundTransfer(msg.sender, arg1, 0);
}

function mintTokens(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require serverAddress == msg.sender
    require allowManuallyMintTokens
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _16 = mem[(32 * idx) + 128]
        require idx < arg1.length
        require ext_code.size(oldTokenRewardAddress)
        call oldTokenRewardAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args address(mem[(32 * idx) + 128])
        require ext_call.success
        mem[(32 * arg1.length) + 128] = 0x23a36d2b00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + 132] = address(_16)
        mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
        mem[(32 * arg1.length) + 196] = 427473 * 3600
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0x23a36d2b with:
             gas gas_remaining - 710 wei
            args address(_16), ext_call.return_data[0], 427473 * 3600
        require ext_call.success
        idx = idx + 1
        continue 
}

function customPayment(address arg1, uint256 arg2) {
    require serverAddress == msg.sender
    require stor26
    require arg2 >= 5 * 10^16
    require 0 < icoStagePeriod.length
    require block.timestamp >= uint256(icoStagePeriod.field_0)
    require 1 < icoStagePeriod.length
    require block.timestamp < uint256(icoStagePeriod.field_256)
    require not stor3
    require pricePerTokenInWei <= threshold - totalCollected
    if threshold - totalCollected >= arg2:
        idx = 0
        s = pricePerTokenInWei
        while idx < bonuses.length:
            if arg2 >= bonuses[idx].field_0:
                require idx < bonuses.length
                mem[0] = 14
                if arg2 < bonuses[idx].field_0:
                    idx = idx + 1
                    s = s
                    continue 
                require idx + 1 < bonuses.length
                mem[0] = 14
                if arg2 >= bonuses[idx].field_256:
                    if idx != bonuses.length - 1:
                        idx = idx + 1
                        s = s
                        continue 
                if idx >= 15:
                    if (10 * idx) + 930:
                        idx = idx + 1
                        s = 1000 * s / (10 * idx) + 930
                        continue 
                else:
                    if idx > 11:
                        if (5 * idx) + 1010:
                            idx = idx + 1
                            s = 1000 * s / (5 * idx) + 1010
                            continue 
                    else:
                        if (5 * idx) + 1005:
                            idx = idx + 1
                            s = 1000 * s / (5 * idx) + 1005
                            continue 
                revert
            require s
            require threshold
            if 100 * totalCollected / threshold <= 50:
                idx = 0
                while idx < bonusesAfterClose.length:
                    if 10 * idx > 100 * totalCollected / threshold:
                        idx = idx + 1
                        continue 
                    if (10 * idx) + 10 <= 100 * totalCollected / threshold:
                        idx = idx + 1
                        continue 
                    require idx < bonusesAfterClose.length
                    balanceOf[address(arg1)] += arg2 / s * s
                    totalCollected += arg2 / s * s
                    require ext_code.size(tokenRewardAddress)
                    call tokenRewardAddress.0x23a36d2b with:
                         gas gas_remaining - 710 wei
                        args address(arg1), (arg2 / s) + (arg2 / s * bonusesAfterClose[idx] / 1000), agingTime
                    require ext_call.success
                    require ext_code.size(tokenRewardAddress)
                    call tokenRewardAddress.0x23a36d2b with:
                         gas gas_remaining - 710 wei
                        args foundersAddress, (arg2 / s) + (arg2 / s * bonusesAfterClose[idx] / 1000) / 10, stor13
                    require ext_call.success
            balanceOf[address(arg1)] += arg2 / s * s
            totalCollected += arg2 / s * s
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0x23a36d2b with:
                 gas gas_remaining - 710 wei
                args address(arg1), arg2 / s, agingTime
            require ext_call.success
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0x23a36d2b with:
                 gas gas_remaining - 710 wei
                args foundersAddress, arg2 / s / 10, stor13
            require ext_call.success
        require s
        require threshold
        if 100 * totalCollected / threshold <= 50:
            idx = 0
            while idx < bonusesAfterClose.length:
                if 10 * idx > 100 * totalCollected / threshold:
                    idx = idx + 1
                    continue 
                if (10 * idx) + 10 <= 100 * totalCollected / threshold:
                    idx = idx + 1
                    continue 
                require idx < bonusesAfterClose.length
                balanceOf[address(arg1)] += arg2 / s * s
                totalCollected += arg2 / s * s
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0x23a36d2b with:
                     gas gas_remaining - 710 wei
                    args address(arg1), (arg2 / s) + (arg2 / s * bonusesAfterClose[idx] / 1000), agingTime
                require ext_call.success
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0x23a36d2b with:
                     gas gas_remaining - 710 wei
                    args foundersAddress, (arg2 / s) + (arg2 / s * bonusesAfterClose[idx] / 1000) / 10, stor13
                require ext_call.success
        balanceOf[address(arg1)] += arg2 / s * s
        totalCollected += arg2 / s * s
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0x23a36d2b with:
             gas gas_remaining - 710 wei
            args address(arg1), arg2 / s, agingTime
        require ext_call.success
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0x23a36d2b with:
             gas gas_remaining - 710 wei
            args foundersAddress, arg2 / s / 10, stor13
    else:
        idx = 0
        s = pricePerTokenInWei
        while idx < bonuses.length:
            if threshold - totalCollected >= bonuses[idx].field_0:
                require idx < bonuses.length
                mem[0] = 14
                if threshold - totalCollected < bonuses[idx].field_0:
                    idx = idx + 1
                    s = s
                    continue 
                require idx + 1 < bonuses.length
                mem[0] = 14
                if threshold - totalCollected >= bonuses[idx].field_256:
                    if idx != bonuses.length - 1:
                        idx = idx + 1
                        s = s
                        continue 
                if idx >= 15:
                    if (10 * idx) + 930:
                        idx = idx + 1
                        s = 1000 * s / (10 * idx) + 930
                        continue 
                else:
                    if idx > 11:
                        if (5 * idx) + 1010:
                            idx = idx + 1
                            s = 1000 * s / (5 * idx) + 1010
                            continue 
                    else:
                        if (5 * idx) + 1005:
                            idx = idx + 1
                            s = 1000 * s / (5 * idx) + 1005
                            continue 
                revert
            require s
            require threshold
            if 100 * totalCollected / threshold <= 50:
                idx = 0
                while idx < bonusesAfterClose.length:
                    if 10 * idx > 100 * totalCollected / threshold:
                        idx = idx + 1
                        continue 
                    if (10 * idx) + 10 <= 100 * totalCollected / threshold:
                        idx = idx + 1
                        continue 
                    require idx < bonusesAfterClose.length
                    balanceOf[address(arg1)] += threshold - totalCollected / s * s
                    totalCollected += threshold - totalCollected / s * s
                    require ext_code.size(tokenRewardAddress)
                    call tokenRewardAddress.0x23a36d2b with:
                         gas gas_remaining - 710 wei
                        args address(arg1), (threshold - totalCollected / s) + (threshold - totalCollected / s * bonusesAfterClose[idx] / 1000), agingTime
                    require ext_call.success
                    require ext_code.size(tokenRewardAddress)
                    call tokenRewardAddress.0x23a36d2b with:
                         gas gas_remaining - 710 wei
                        args foundersAddress, (threshold - totalCollected / s) + (threshold - totalCollected / s * bonusesAfterClose[idx] / 1000) / 10, stor13
                    require ext_call.success
            balanceOf[address(arg1)] += threshold - totalCollected / s * s
            totalCollected += threshold - totalCollected / s * s
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0x23a36d2b with:
                 gas gas_remaining - 710 wei
                args address(arg1), threshold - totalCollected / s, agingTime
            require ext_call.success
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0x23a36d2b with:
                 gas gas_remaining - 710 wei
                args foundersAddress, threshold - totalCollected / s / 10, stor13
            require ext_call.success
        require s
        require threshold
        if 100 * totalCollected / threshold <= 50:
            idx = 0
            while idx < bonusesAfterClose.length:
                if 10 * idx > 100 * totalCollected / threshold:
                    idx = idx + 1
                    continue 
                if (10 * idx) + 10 <= 100 * totalCollected / threshold:
                    idx = idx + 1
                    continue 
                require idx < bonusesAfterClose.length
                balanceOf[address(arg1)] += threshold - totalCollected / s * s
                totalCollected += threshold - totalCollected / s * s
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0x23a36d2b with:
                     gas gas_remaining - 710 wei
                    args address(arg1), (threshold - totalCollected / s) + (threshold - totalCollected / s * bonusesAfterClose[idx] / 1000), agingTime
                require ext_call.success
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0x23a36d2b with:
                     gas gas_remaining - 710 wei
                    args foundersAddress, (threshold - totalCollected / s) + (threshold - totalCollected / s * bonusesAfterClose[idx] / 1000) / 10, stor13
                require ext_call.success
        balanceOf[address(arg1)] += threshold - totalCollected / s * s
        totalCollected += threshold - totalCollected / s * s
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0x23a36d2b with:
             gas gas_remaining - 710 wei
            args address(arg1), threshold - totalCollected / s, agingTime
        require ext_call.success
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0x23a36d2b with:
             gas gas_remaining - 710 wei
            args foundersAddress, threshold - totalCollected / s / 10, stor13
    require ext_call.success
}

function _fallback() payable {
    require stor26
    require msg.value >= 5 * 10^16
    require 0 < icoStagePeriod.length
    require block.timestamp >= uint256(icoStagePeriod.field_0)
    require 1 < icoStagePeriod.length
    require block.timestamp < uint256(icoStagePeriod.field_256)
    require not stor3
    require pricePerTokenInWei <= threshold - totalCollected
    emit FundTransfer(msg.sender, msg.value, 1);
    if threshold - totalCollected >= msg.value:
        idx = 0
        s = pricePerTokenInWei
        while idx < bonuses.length:
            if msg.value >= bonuses[idx].field_0:
                require idx < bonuses.length
                mem[0] = 14
                if msg.value < bonuses[idx].field_0:
                    idx = idx + 1
                    s = s
                    continue 
                require idx + 1 < bonuses.length
                mem[0] = 14
                if msg.value >= bonuses[idx].field_256:
                    if idx != bonuses.length - 1:
                        idx = idx + 1
                        s = s
                        continue 
                if idx >= 15:
                    if (10 * idx) + 930:
                        idx = idx + 1
                        s = 1000 * s / (10 * idx) + 930
                        continue 
                else:
                    if idx > 11:
                        if (5 * idx) + 1010:
                            idx = idx + 1
                            s = 1000 * s / (5 * idx) + 1010
                            continue 
                    else:
                        if (5 * idx) + 1005:
                            idx = idx + 1
                            s = 1000 * s / (5 * idx) + 1005
                            continue 
                revert
            require s
            require threshold
            if 100 * totalCollected / threshold <= 50:
                idx = 0
                while idx < bonusesAfterClose.length:
                    if 10 * idx > 100 * totalCollected / threshold:
                        idx = idx + 1
                        continue 
                    if (10 * idx) + 10 <= 100 * totalCollected / threshold:
                        idx = idx + 1
                        continue 
                    require idx < bonusesAfterClose.length
                    balanceOf[address(msg.sender)] += msg.value / s * s
                    totalCollected += msg.value / s * s
                    require ext_code.size(tokenRewardAddress)
                    call tokenRewardAddress.0x23a36d2b with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (msg.value / s) + (msg.value / s * bonusesAfterClose[idx] / 1000), agingTime
                    require ext_call.success
                    require ext_code.size(tokenRewardAddress)
                    call tokenRewardAddress.0x23a36d2b with:
                         gas gas_remaining - 710 wei
                        args foundersAddress, (msg.value / s) + (msg.value / s * bonusesAfterClose[idx] / 1000) / 10, stor13
                    require ext_call.success
                    if msg.value - (msg.value / s * s) > 0:
                        call msg.sender with:
                           value msg.value - (msg.value / s * s) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit FundTransfer(msg.sender, msg.value - (msg.value / s * s), 0);
            balanceOf[address(msg.sender)] += msg.value / s * s
            totalCollected += msg.value / s * s
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0x23a36d2b with:
                 gas gas_remaining - 710 wei
                args msg.sender, msg.value / s, agingTime
            require ext_call.success
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0x23a36d2b with:
                 gas gas_remaining - 710 wei
                args foundersAddress, msg.value / s / 10, stor13
            require ext_call.success
            if msg.value - (msg.value / s * s) > 0:
                call msg.sender with:
                   value msg.value - (msg.value / s * s) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                emit FundTransfer(msg.sender, msg.value - (msg.value / s * s), 0);
        require s
        require threshold
        if 100 * totalCollected / threshold <= 50:
            idx = 0
            while idx < bonusesAfterClose.length:
                if 10 * idx > 100 * totalCollected / threshold:
                    idx = idx + 1
                    continue 
                if (10 * idx) + 10 <= 100 * totalCollected / threshold:
                    idx = idx + 1
                    continue 
                require idx < bonusesAfterClose.length
                balanceOf[address(msg.sender)] += msg.value / s * s
                totalCollected += msg.value / s * s
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0x23a36d2b with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (msg.value / s) + (msg.value / s * bonusesAfterClose[idx] / 1000), agingTime
                require ext_call.success
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0x23a36d2b with:
                     gas gas_remaining - 710 wei
                    args foundersAddress, (msg.value / s) + (msg.value / s * bonusesAfterClose[idx] / 1000) / 10, stor13
                require ext_call.success
                if msg.value - (msg.value / s * s) > 0:
                    call msg.sender with:
                       value msg.value - (msg.value / s * s) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit FundTransfer(msg.sender, msg.value - (msg.value / s * s), 0);
        balanceOf[address(msg.sender)] += msg.value / s * s
        totalCollected += msg.value / s * s
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0x23a36d2b with:
             gas gas_remaining - 710 wei
            args msg.sender, msg.value / s, agingTime
        require ext_call.success
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0x23a36d2b with:
             gas gas_remaining - 710 wei
            args foundersAddress, msg.value / s / 10, stor13
        require ext_call.success
        if msg.value - (msg.value / s * s) > 0:
            call msg.sender with:
               value msg.value - (msg.value / s * s) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit FundTransfer(msg.sender, msg.value - (msg.value / s * s), 0);
    else:
        idx = 0
        s = pricePerTokenInWei
        while idx < bonuses.length:
            if threshold - totalCollected >= bonuses[idx].field_0:
                require idx < bonuses.length
                mem[0] = 14
                if threshold - totalCollected < bonuses[idx].field_0:
                    idx = idx + 1
                    s = s
                    continue 
                require idx + 1 < bonuses.length
                mem[0] = 14
                if threshold - totalCollected >= bonuses[idx].field_256:
                    if idx != bonuses.length - 1:
                        idx = idx + 1
                        s = s
                        continue 
                if idx >= 15:
                    if (10 * idx) + 930:
                        idx = idx + 1
                        s = 1000 * s / (10 * idx) + 930
                        continue 
                else:
                    if idx > 11:
                        if (5 * idx) + 1010:
                            idx = idx + 1
                            s = 1000 * s / (5 * idx) + 1010
                            continue 
                    else:
                        if (5 * idx) + 1005:
                            idx = idx + 1
                            s = 1000 * s / (5 * idx) + 1005
                            continue 
                revert
            require s
            require threshold
            if 100 * totalCollected / threshold <= 50:
                idx = 0
                while idx < bonusesAfterClose.length:
                    if 10 * idx > 100 * totalCollected / threshold:
                        idx = idx + 1
                        continue 
                    if (10 * idx) + 10 <= 100 * totalCollected / threshold:
                        idx = idx + 1
                        continue 
                    require idx < bonusesAfterClose.length
                    balanceOf[address(msg.sender)] += threshold - totalCollected / s * s
                    totalCollected += threshold - totalCollected / s * s
                    require ext_code.size(tokenRewardAddress)
                    call tokenRewardAddress.0x23a36d2b with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (threshold - totalCollected / s) + (threshold - totalCollected / s * bonusesAfterClose[idx] / 1000), agingTime
                    require ext_call.success
                    require ext_code.size(tokenRewardAddress)
                    call tokenRewardAddress.0x23a36d2b with:
                         gas gas_remaining - 710 wei
                        args foundersAddress, (threshold - totalCollected / s) + (threshold - totalCollected / s * bonusesAfterClose[idx] / 1000) / 10, stor13
                    require ext_call.success
                    if msg.value - (threshold - totalCollected / s * s) > 0:
                        call msg.sender with:
                           value msg.value - (threshold - totalCollected / s * s) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit FundTransfer(msg.sender, msg.value - (threshold - totalCollected / s * s), 0);
            balanceOf[address(msg.sender)] += threshold - totalCollected / s * s
            totalCollected += threshold - totalCollected / s * s
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0x23a36d2b with:
                 gas gas_remaining - 710 wei
                args msg.sender, threshold - totalCollected / s, agingTime
            require ext_call.success
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0x23a36d2b with:
                 gas gas_remaining - 710 wei
                args foundersAddress, threshold - totalCollected / s / 10, stor13
            require ext_call.success
            if msg.value - (threshold - totalCollected / s * s) > 0:
                call msg.sender with:
                   value msg.value - (threshold - totalCollected / s * s) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                emit FundTransfer(msg.sender, msg.value - (threshold - totalCollected / s * s), 0);
        require s
        require threshold
        if 100 * totalCollected / threshold <= 50:
            idx = 0
            while idx < bonusesAfterClose.length:
                if 10 * idx > 100 * totalCollected / threshold:
                    idx = idx + 1
                    continue 
                if (10 * idx) + 10 <= 100 * totalCollected / threshold:
                    idx = idx + 1
                    continue 
                require idx < bonusesAfterClose.length
                balanceOf[address(msg.sender)] += threshold - totalCollected / s * s
                totalCollected += threshold - totalCollected / s * s
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0x23a36d2b with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (threshold - totalCollected / s) + (threshold - totalCollected / s * bonusesAfterClose[idx] / 1000), agingTime
                require ext_call.success
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0x23a36d2b with:
                     gas gas_remaining - 710 wei
                    args foundersAddress, (threshold - totalCollected / s) + (threshold - totalCollected / s * bonusesAfterClose[idx] / 1000) / 10, stor13
                require ext_call.success
                if msg.value - (threshold - totalCollected / s * s) > 0:
                    call msg.sender with:
                       value msg.value - (threshold - totalCollected / s * s) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit FundTransfer(msg.sender, msg.value - (threshold - totalCollected / s * s), 0);
        balanceOf[address(msg.sender)] += threshold - totalCollected / s * s
        totalCollected += threshold - totalCollected / s * s
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0x23a36d2b with:
             gas gas_remaining - 710 wei
            args msg.sender, threshold - totalCollected / s, agingTime
        require ext_call.success
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0x23a36d2b with:
             gas gas_remaining - 710 wei
            args foundersAddress, threshold - totalCollected / s / 10, stor13
        require ext_call.success
        if msg.value - (threshold - totalCollected / s * s) > 0:
            call msg.sender with:
               value msg.value - (threshold - totalCollected / s * s) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit FundTransfer(msg.sender, msg.value - (threshold - totalCollected / s * s), 0);
}



}
