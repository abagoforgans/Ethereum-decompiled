contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint8 stor9;

function _fallback() payable {
    stor4 = 0
    stor5 = 0
    stor6 = 0
    stor9 = 0
    require not msg.value
    stor0 = msg.sender
    stor1 = code.data[5227 len 20]
    stor2 = code.data[5259 len 20]
    stor3 = code.data[5279 len 32]
    stor7 = code.data[5311 len 32]
    stor8 = code.data[5311 len 32] + (24 * 3600 * code.data[5343 len 32])
    return code.data[363 len 4852]
}



// =====================  Runtime code  =====================


const name = 'PlayBets Closed Pre-Sale'


address owner;
address tokenAddress;
address beneficiaryAddress;
uint256 tokensPerEth;
uint256 weiRaised;
uint256 tokensSold;
uint256 investorCount;
uint256 startTime;
uint256 endTime;
uint8 stor9;

function endTime() {
    return endTime
}

function beneficiary() {
    return beneficiaryAddress
}

function weiRaised() {
    return weiRaised
}

function tokensSold() {
    return tokensSold
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function tokensPerEth() {
    return tokensPerEth
}

function investorCount() {
    return investorCount
}

function crowdsaleFinished() {
    return bool(stor9)
}

function token() {
    return tokenAddress
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdraw(uint256 arg1) {
    require msg.sender == owner
    call beneficiaryAddress with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function manualSell(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    require tokensSold + arg2 >= tokensSold
    tokensSold += arg2
}

function finishCrowdsale() {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args beneficiaryAddress, ext_call.return_data[0]
    require ext_call.success
    stor9 = 1
}

function _fallback() payable {
    require msg.value >= 10^16
    require block.timestamp > startTime
    require block.timestamp < endTime
    require not stor9
    require msg.sender
    mem[384] = 120
    mem[416] = 115
    mem[448] = 110
    mem[480] = 105
    mem[512] = 100
    mem[544] = 24
    mem[576] = 48
    mem[608] = 168
    mem[640] = 336
    idx = 0
    s = 0
    t = startTime
    while uint8(idx) < 4:
        require startTime + (3600 * mem[(32 * uint8(idx)) + 544]) >= startTime
        if s >= block.timestamp:
            idx = idx + 1
            s = startTime + (3600 * mem[(32 * uint8(idx)) + 544])
            t = startTime + (3600 * mem[(32 * uint8(idx)) + 544])
            continue 
        if block.timestamp > startTime + (3600 * mem[(32 * uint8(idx)) + 544]):
            idx = idx + 1
            s = startTime + (3600 * mem[(32 * uint8(idx)) + 544])
            t = startTime + (3600 * mem[(32 * uint8(idx)) + 544])
            continue 
        require uint8(idx) < 5
        if tokensPerEth * msg.value:
            require tokensPerEth * msg.value
            require tokensPerEth * msg.value * mem[(32 * uint8(idx)) + 384] / tokensPerEth * msg.value == mem[(32 * uint8(idx)) + 384]
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        if ext_call.return_data[0] >= tokensPerEth * msg.value * mem[(32 * uint8(idx)) + 384] / 100:
            require ext_code.size(tokenAddress)
            call tokenAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args msg.sender
            require ext_call.success
            if not ext_call.return_data[0]:
                investorCount++
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, tokensPerEth * msg.value * mem[(32 * uint8(idx)) + 384] / 100
            require ext_call.success
            require weiRaised + msg.value >= weiRaised
            weiRaised += msg.value
            require tokensSold + (tokensPerEth * msg.value * mem[(32 * uint8(idx)) + 384] / 100) >= tokensSold
            tokensSold += tokensPerEth * msg.value * mem[(32 * uint8(idx)) + 384] / 100
            emit NewContribution(tokensPerEth * msg.value * mem[(32 * uint8(idx)) + 384] / 100, msg.value, msg.sender);
        else:
            if msg.value:
                require msg.value
                require msg.value * ext_call.return_data[0] / msg.value == ext_call.return_data[0]
            require tokensPerEth * msg.value * mem[(32 * uint8(idx)) + 384] / 100
            require msg.value * ext_call.return_data[0] / tokensPerEth * msg.value * mem[(32 * uint8(idx)) + 384] / 100 <= msg.value
            call msg.sender with:
               value msg.value - (msg.value * ext_call.return_data[0] / tokensPerEth * msg.value * mem[(32 * uint8(idx)) + 384] / 100) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require ext_code.size(tokenAddress)
            call tokenAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args msg.sender
            require ext_call.success
            if not ext_call.return_data[0]:
                investorCount++
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, ext_call.return_data[0]
            require ext_call.success
            require weiRaised + (msg.value * ext_call.return_data[0] / tokensPerEth * msg.value * mem[(32 * uint8(idx)) + 384] / 100) >= weiRaised
            weiRaised += msg.value * ext_call.return_data[0] / tokensPerEth * msg.value * mem[(32 * uint8(idx)) + 384] / 100
            require tokensSold + ext_call.return_data[0] >= tokensSold
            tokensSold += ext_call.return_data[0]
            emit NewContribution(ext_call.return_data[0], msg.value * ext_call.return_data[0] / tokensPerEth * msg.value * mem[(32 * uint8(idx)) + 384] / 100, msg.sender);
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        if not ext_call.return_data[0]:
            emit GoalReached(weiRaised, tokensSold);
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if ext_call.return_data[0] >= tokensPerEth * msg.value:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args msg.sender
        require ext_call.success
        if not ext_call.return_data[0]:
            investorCount++
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, tokensPerEth * msg.value
        require ext_call.success
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require tokensSold + (tokensPerEth * msg.value) >= tokensSold
        tokensSold += tokensPerEth * msg.value
        emit NewContribution(tokensPerEth * msg.value, msg.value, msg.sender);
    else:
        if msg.value:
            require msg.value
            require msg.value * ext_call.return_data[0] / msg.value == ext_call.return_data[0]
        require tokensPerEth * msg.value
        require msg.value * ext_call.return_data[0] / tokensPerEth * msg.value <= msg.value
        call msg.sender with:
           value msg.value - (msg.value * ext_call.return_data[0] / tokensPerEth * msg.value) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args msg.sender
        require ext_call.success
        if not ext_call.return_data[0]:
            investorCount++
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, ext_call.return_data[0]
        require ext_call.success
        require weiRaised + (msg.value * ext_call.return_data[0] / tokensPerEth * msg.value) >= weiRaised
        weiRaised += msg.value * ext_call.return_data[0] / tokensPerEth * msg.value
        require tokensSold + ext_call.return_data[0] >= tokensSold
        tokensSold += ext_call.return_data[0]
        emit NewContribution(ext_call.return_data[0], msg.value * ext_call.return_data[0] / tokensPerEth * msg.value, msg.sender);
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if not ext_call.return_data[0]:
        emit GoalReached(weiRaised, tokensSold);
}



}
