contract main {




// =====================  Runtime code  =====================


uint256 startPriceForHLPMT;
uint256 maxHLPMTMarkup;
uint256 stepForPrice;
uint256 startTime;
uint256 lastMiningTime;
uint256 decimals;
address tokenAddress;
address miningTokenAddress;
address daoAddress;
address fundAddress;
address owner;
uint256 numOfMiningTimes;
mapping of uint256 payments;
mapping of uint256 paymentsTimestamps;
mapping of uint256 miningReward;
mapping of uint256 lastRewardTime;

function maxHLPMTMarkup() {
    return maxHLPMTMarkup
}

function decimals() {
    return decimals
}

function getMiningReward(uint256 arg1) {
    return miningReward[arg1]
}

function dao() {
    return daoAddress
}

function stepForPrice() {
    return stepForPrice
}

function miningToken() {
    return miningTokenAddress
}

function startTime() {
    return startTime
}

function getLastRewardTime(uint256 arg1) {
    return lastRewardTime[arg1]
}

function owner() {
    return owner
}

function lastMiningTime() {
    return lastMiningTime
}

function fund() {
    return fundAddress
}

function numOfMiningTimes() {
    return numOfMiningTimes
}

function payments(address arg1) {
    return payments[arg1]
}

function paymentsTimestamps(address arg1) {
    return paymentsTimestamps[arg1]
}

function startPriceForHLPMT() {
    return startPriceForHLPMT
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function setDao(address arg1) {
    require msg.sender == owner
    require arg1
    daoAddress = arg1
}

function setFund(address arg1) {
    require msg.sender == owner
    require arg1
    fundAddress = arg1
}

function setToken(address arg1) {
    require msg.sender == owner
    require arg1
    tokenAddress = arg1
}

function setMiningToken(address arg1) {
    require msg.sender == owner
    require arg1
    miningTokenAddress = arg1
}

function withdrawPayments() {
    require payments[msg.sender]
    require paymentsTimestamps[msg.sender] <= block.timestamp
    payments[address(msg.sender)] = 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, payments[msg.sender]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function asyncSend(address arg1, uint256 arg2, uint256 arg3) {
    require msg.sender == daoAddress
    require arg2 + payments[address(arg1)] >= payments[address(arg1)]
    payments[address(arg1)] += arg2
    paymentsTimestamps[address(arg1)] = arg3
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args daoAddress, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function getPrice(uint256 arg1) {
    require startTime <= arg1
    if not arg1 - startTime / 720 * 24 * 3600:
        if 0 <= maxHLPMTMarkup:
            return (10^18 * startPriceForHLPMT)
    else:
        require stepForPrice * arg1 - startTime / 720 * 24 * 3600 / arg1 - startTime / 720 * 24 * 3600 == stepForPrice
        if stepForPrice * arg1 - startTime / 720 * 24 * 3600 <= maxHLPMTMarkup:
            return ((10^18 * startPriceForHLPMT) + (10^18 * stepForPrice * arg1 - startTime / 720 * 24 * 3600))
    return ((10^18 * startPriceForHLPMT) + (10^18 * maxHLPMTMarkup))
}

function checkReward(uint256[] arg1) {
    idx = 0
    while idx < arg1.length:
        mem[0] = cd[((32 * idx) + arg1 + 36)]
        mem[32] = 15
        if numOfMiningTimes > lastRewardTime[cd[((32 * idx) + arg1 + 36)]]:
            require idx < arg1.length
            mem[0] = cd[((32 * idx) + arg1 + 36)]
            mem[32] = 15
            s = stor[sha3(mem[0 len 64])] + 1
            t = 0
            while s <= numOfMiningTimes:
                mem[0] = s
                mem[32] = 14
                s = s + 1
                t = miningReward[s] + t
                continue 
        idx = idx + 1
        continue 
    return 0
}

function miningTokensOf(address arg1) {
    mem[96] = 0xb1cee33000000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(miningTokenAddress)
    call miningTokenAddress.arrayOfTokensByAddress(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], address(arg1) << 64
    require mem[96 len 4], address(arg1) << 64 <= 4294967296
    require mem[96 len 4], address(arg1) << 64 + 32 <= return_data.size
    require mem[mem[96 len 4], address(arg1) << 64 + 96] <= 4294967296 and mem[96 len 4], address(arg1) << 64 + (32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = 32
    mem[ceil32(return_data.size) + 128] = mem[_4 + 96]
    _8 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 160 len floor32(mem[_4 + 96])] = mem[_4 + 128 len floor32(mem[_4 + 96])]
    return 32, mem[ceil32(return_data.size) + 128 len (32 * _8) + 32]
}

function sendReward(uint256[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 15
        if numOfMiningTimes > lastRewardTime[mem[(32 * idx) + 128]]:
            require idx < arg1.length
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 15
            s = stor[sha3(mem[0 len 64])] + 1
            t = 0
            while s <= numOfMiningTimes:
                mem[0] = s
                mem[32] = 14
                s = s + 1
                t = miningReward[s] + t
                continue 
            require idx < arg1.length
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 15
            lastRewardTime[mem[(32 * idx) + 128]] = numOfMiningTimes
            require idx < arg1.length
            require ext_code.size(miningTokenAddress)
            call miningTokenAddress.ownerOf(uint256 arg1) with:
                 gas gas_remaining wei
                args mem[(32 * idx) + 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * arg1.length) + 132] = address(ext_call.return_data[0])
            mem[(32 * arg1.length) + 164] = t
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), t
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        idx = idx + 1
        continue 
}

function getReward(uint256[] arg1) {
    require 0 < arg1.length
    require ext_code.size(miningTokenAddress)
    call miningTokenAddress.ownerOf(uint256 arg1) with:
         gas gas_remaining wei
        args cd[(arg1 + 36)]
    mem[96] = ext_call.return_data[0]
    s = 0
    while ext_call.success:
        require return_data.size >= 32
        if msg.sender == mem[108 len 20]:
            require s < arg1.length
            mem[0] = cd[((32 * s) + arg1 + 36)]
            mem[32] = 15
            if numOfMiningTimes > lastRewardTime[cd[((32 * s) + arg1 + 36)]]:
                require s < arg1.length
                mem[0] = cd[((32 * s) + arg1 + 36)]
                mem[32] = 15
                idx = stor[sha3(mem[0 len 64])] + 1
                t = 0
                while idx <= numOfMiningTimes:
                    mem[0] = idx
                    mem[32] = 14
                    require s < arg1.length
                    mem[100] = cd[((32 * s) + arg1 + 36)]
                    require ext_code.size(miningTokenAddress)
                    call miningTokenAddress.ownerOf(uint256 arg1) with:
                         gas gas_remaining wei
                        args cd[((32 * s) + arg1 + 36)]
                    mem[96] = ext_call.return_data[0]
                    idx = idx + 1
                    t = miningReward[idx] + t
                    continue 
                require s < arg1.length
                mem[0] = cd[((32 * s) + arg1 + 36)]
                mem[32] = 15
                lastRewardTime[cd[((32 * s) + arg1 + 36)]] = numOfMiningTimes
        require s + 1 < arg1.length
        mem[100] = cd[((32 * s + 1) + arg1 + 36)]
        require ext_code.size(miningTokenAddress)
        call miningTokenAddress.ownerOf(uint256 arg1) with:
             gas gas_remaining wei
            args cd[((32 * s + 1) + arg1 + 36)]
        mem[96] = ext_call.return_data[0]
        s = s + 1
        continue 
    revert with ext_call.return_data[0 len return_data.size]
}

function mining() {
    require block.timestamp > lastMiningTime + (24 * 3600)
    lastMiningTime = block.timestamp - (block.timestamp % 24 * 3600)
    s = 0
    s = 0
    s = 0
    idx = 0
    while idx < block.timestamp - lastMiningTime / 24 * 3600:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x18160ddd with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(tokenAddress)
        call tokenAddress.getMaxTotalSupply() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] <= ext_call.return_data[0]
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args daoAddress, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args fundAddress, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(miningTokenAddress)
        call miningTokenAddress.0x18160ddd with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        numOfMiningTimes++
        mem[0] = numOfMiningTimes + 1
        mem[32] = 14
        miningReward[stor11 + 1] = 0 / ext_call.return_data[0]
        mem[100] = this.address
        mem[132] = 0
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args this.address, 0
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        s = 0 / ext_call.return_data[0]
        s = ext_call.return_data[0]
        s = 0 / 1000
        idx = idx + 1
        continue 
}

function buyHLPMT() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0xdd62ed3e with:
         gas gas_remaining wei
        args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require startTime <= block.timestamp
    if not block.timestamp - startTime / 720 * 24 * 3600:
        if 0 <= maxHLPMTMarkup:
            require ext_call.return_data[0] >= 10^18 * startPriceForHLPMT
            require 10^18 * startPriceForHLPMT
            if not ext_call.return_data[0] / 10^18 * startPriceForHLPMT:
                require ext_code.size(tokenAddress)
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, fundAddress, 0
            else:
                require 10^18 * startPriceForHLPMT * ext_call.return_data[0] / 10^18 * startPriceForHLPMT / ext_call.return_data[0] / 10^18 * startPriceForHLPMT == 10^18 * startPriceForHLPMT
                require ext_code.size(tokenAddress)
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, fundAddress, 10^18 * startPriceForHLPMT * ext_call.return_data[0] / 10^18 * startPriceForHLPMT
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            s = 0
            idx = 0
            while idx < ext_call.return_data[0] / 10^18 * startPriceForHLPMT:
                require ext_code.size(miningTokenAddress)
                call miningTokenAddress.0x18160ddd with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[100] = msg.sender
                mem[132] = ext_call.return_data[0]
                require ext_code.size(miningTokenAddress)
                call miningTokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[0] = ext_call.return_data[0]
                mem[32] = 15
                lastRewardTime[ext_call.return_data[0]] = numOfMiningTimes
                s = ext_call.return_data[0]
                idx = idx + 1
                continue 
        else:
            require ext_call.return_data[0] >= (10^18 * startPriceForHLPMT) + (10^18 * maxHLPMTMarkup)
            require (10^18 * startPriceForHLPMT) + (10^18 * maxHLPMTMarkup)
            if not ext_call.return_data[0] / (10^18 * startPriceForHLPMT) + (10^18 * maxHLPMTMarkup):
                require ext_code.size(tokenAddress)
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, fundAddress, 0
            else:
                require (10^18 * startPriceForHLPMT * ext_call.return_data[0] / (10^18 * startPriceForHLPMT) + (10^18 * maxHLPMTMarkup)) + (10^18 * maxHLPMTMarkup * ext_call.return_data[0] / (10^18 * startPriceForHLPMT) + (10^18 * maxHLPMTMarkup)) / ext_call.return_data[0] / (10^18 * startPriceForHLPMT) + (10^18 * maxHLPMTMarkup) == (10^18 * startPriceForHLPMT) + (10^18 * maxHLPMTMarkup)
                require ext_code.size(tokenAddress)
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, fundAddress, (10^18 * startPriceForHLPMT * ext_call.return_data[0] / (10^18 * startPriceForHLPMT) + (10^18 * maxHLPMTMarkup)) + (10^18 * maxHLPMTMarkup * ext_call.return_data[0] / (10^18 * startPriceForHLPMT) + (10^18 * maxHLPMTMarkup))
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            s = 0
            idx = 0
            while idx < ext_call.return_data[0] / (10^18 * startPriceForHLPMT) + (10^18 * maxHLPMTMarkup):
                require ext_code.size(miningTokenAddress)
                call miningTokenAddress.0x18160ddd with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[100] = msg.sender
                mem[132] = ext_call.return_data[0]
                require ext_code.size(miningTokenAddress)
                call miningTokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[0] = ext_call.return_data[0]
                mem[32] = 15
                lastRewardTime[ext_call.return_data[0]] = numOfMiningTimes
                s = ext_call.return_data[0]
                idx = idx + 1
                continue 
    else:
        require stepForPrice * block.timestamp - startTime / 720 * 24 * 3600 / block.timestamp - startTime / 720 * 24 * 3600 == stepForPrice
        if stepForPrice * block.timestamp - startTime / 720 * 24 * 3600 <= maxHLPMTMarkup:
            require ext_call.return_data[0] >= (10^18 * startPriceForHLPMT) + (10^18 * stepForPrice * block.timestamp - startTime / 720 * 24 * 3600)
            require (10^18 * startPriceForHLPMT) + (10^18 * stepForPrice * block.timestamp - startTime / 720 * 24 * 3600)
            if not ext_call.return_data[0] / (10^18 * startPriceForHLPMT) + (10^18 * stepForPrice * block.timestamp - startTime / 720 * 24 * 3600):
                require ext_code.size(tokenAddress)
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, fundAddress, 0
            else:
                require (10^18 * startPriceForHLPMT * ext_call.return_data[0] / (10^18 * startPriceForHLPMT) + (10^18 * stepForPrice * block.timestamp - startTime / 720 * 24 * 3600)) + (10^18 * stepForPrice * block.timestamp - startTime / 720 * 24 * 3600 * ext_call.return_data[0] / (10^18 * startPriceForHLPMT) + (10^18 * stepForPrice * block.timestamp - startTime / 720 * 24 * 3600)) / ext_call.return_data[0] / (10^18 * startPriceForHLPMT) + (10^18 * stepForPrice * block.timestamp - startTime / 720 * 24 * 3600) == (10^18 * startPriceForHLPMT) + (10^18 * stepForPrice * block.timestamp - startTime / 720 * 24 * 3600)
                require ext_code.size(tokenAddress)
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, fundAddress, (10^18 * startPriceForHLPMT * ext_call.return_data[0] / (10^18 * startPriceForHLPMT) + (10^18 * stepForPrice * block.timestamp - startTime / 720 * 24 * 3600)) + (10^18 * stepForPrice * block.timestamp - startTime / 720 * 24 * 3600 * ext_call.return_data[0] / (10^18 * startPriceForHLPMT) + (10^18 * stepForPrice * block.timestamp - startTime / 720 * 24 * 3600))
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            s = 0
            idx = 0
            while idx < ext_call.return_data[0] / (10^18 * startPriceForHLPMT) + (10^18 * stepForPrice * block.timestamp - startTime / 720 * 24 * 3600):
                require ext_code.size(miningTokenAddress)
                call miningTokenAddress.0x18160ddd with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[100] = msg.sender
                mem[132] = ext_call.return_data[0]
                require ext_code.size(miningTokenAddress)
                call miningTokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[0] = ext_call.return_data[0]
                mem[32] = 15
                lastRewardTime[ext_call.return_data[0]] = numOfMiningTimes
                s = ext_call.return_data[0]
                idx = idx + 1
                continue 
        else:
            require ext_call.return_data[0] >= (10^18 * startPriceForHLPMT) + (10^18 * maxHLPMTMarkup)
            require (10^18 * startPriceForHLPMT) + (10^18 * maxHLPMTMarkup)
            if not ext_call.return_data[0] / (10^18 * startPriceForHLPMT) + (10^18 * maxHLPMTMarkup):
                require ext_code.size(tokenAddress)
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, fundAddress, 0
            else:
                require (10^18 * startPriceForHLPMT * ext_call.return_data[0] / (10^18 * startPriceForHLPMT) + (10^18 * maxHLPMTMarkup)) + (10^18 * maxHLPMTMarkup * ext_call.return_data[0] / (10^18 * startPriceForHLPMT) + (10^18 * maxHLPMTMarkup)) / ext_call.return_data[0] / (10^18 * startPriceForHLPMT) + (10^18 * maxHLPMTMarkup) == (10^18 * startPriceForHLPMT) + (10^18 * maxHLPMTMarkup)
                require ext_code.size(tokenAddress)
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, fundAddress, (10^18 * startPriceForHLPMT * ext_call.return_data[0] / (10^18 * startPriceForHLPMT) + (10^18 * maxHLPMTMarkup)) + (10^18 * maxHLPMTMarkup * ext_call.return_data[0] / (10^18 * startPriceForHLPMT) + (10^18 * maxHLPMTMarkup))
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            s = 0
            idx = 0
            while idx < ext_call.return_data[0] / (10^18 * startPriceForHLPMT) + (10^18 * maxHLPMTMarkup):
                require ext_code.size(miningTokenAddress)
                call miningTokenAddress.0x18160ddd with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[100] = msg.sender
                mem[132] = ext_call.return_data[0]
                require ext_code.size(miningTokenAddress)
                call miningTokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[0] = ext_call.return_data[0]
                mem[32] = 15
                lastRewardTime[ext_call.return_data[0]] = numOfMiningTimes
                s = ext_call.return_data[0]
                idx = idx + 1
                continue 
}



}
