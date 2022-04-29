contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
address stor3;
uint256 stor4;
mapping of struct stor6;

function _fallback() {
    require code.data[17937 len 32] >= block.timestamp
    require code.data[17969 len 32] >= code.data[17937 len 32]
    require code.data[18001 len 32] > 0
    require code.data[18045 len 20]
    create contract with 0 wei
                    code: code.data[10866 len 7071]
    require create.new_address
    stor0 = address(create.new_address)
    stor1 = code.data[17937 len 32]
    stor2 = code.data[17969 len 32]
    stor4 = code.data[18001 len 32]
    stor3 = code.data[18045 len 20]
    stor6[0].field_0 = 420994 * 3600
    stor6[0].field_256 = 1516442399
    stor6[0].field_512 = 75 * 10^16
    stor6[0].field_768 = 25
    stor6[1].field_0 = 421234 * 3600
    stor6[1].field_256 = 1517479199
    stor6[1].field_512 = 5 * 10^17
    stor6[1].field_768 = 15
    stor6[2].field_0 = 421522 * 3600
    stor6[2].field_256 = 1518256799
    stor6[2].field_512 = 25 * 10^16
    stor6[2].field_768 = 5
    stor6[3].field_0 = 421738 * 3600
    stor6[3].field_256 = 1523350799
    stor6[3].field_512 = 10^15
    stor6[3].field_768 = 0
    stor6[3].field_1024 = 0
    require ext_code.size(stor0)
    call stor0.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args stor3, 55000000 * 10^18
    require ext_call.success
    return code.data[1500 len 9366]
}



// =====================  Runtime code  =====================


const FOUNDERS_SHARE = 30000000 * 10^18

const RESERVE_FUND = 15000000 * 10^18

const BOUNTY_FUND = 5000000 * 10^18

const CONTENT_FUND = 5000000 * 10^18


address tokenAddress;
uint256 startTime;
uint256 endTime;
address walletAddress;
uint256 rate;
uint256 weiRaised;
mapping of struct stor6;

function rate() {
    return rate
}

function endTime() {
    return endTime
}

function weiRaised() {
    return weiRaised
}

function wallet() {
    return walletAddress
}

function startTime() {
    return startTime
}

function token() {
    return tokenAddress
}

function hasEnded() {
    return (block.timestamp > endTime)
}

function currentIcoPhaseBonus() {
    idx = 0
    while idx < 4:
        mem[0] = idx
        mem[32] = 6
        if stor6[idx].field_0 > block.timestamp:
            idx = idx + 1
            continue 
        mem[0] = idx
        mem[32] = 6
        if stor6[idx].field_256 < block.timestamp:
            idx = idx + 1
            continue 
        return stor6[idx].field_768
    return 0
}

function currentIcoPhaseMinimum() {
    idx = 0
    while idx < 4:
        mem[0] = idx
        mem[32] = 6
        if stor6[idx].field_0 > block.timestamp:
            idx = idx + 1
            continue 
        mem[0] = idx
        mem[32] = 6
        if stor6[idx].field_256 < block.timestamp:
            idx = idx + 1
            continue 
        return stor6[idx].field_512
    return 0
}

function buyTokens(address arg1) payable {
    require arg1
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require msg.value
    require msg.value * rate / msg.value == rate
    idx = 0
    while idx < 4:
        mem[0] = idx
        mem[32] = 6
        if stor6[idx].field_0 > block.timestamp:
            idx = idx + 1
            continue 
        mem[0] = idx
        mem[32] = 6
        if stor6[idx].field_256 < block.timestamp:
            idx = idx + 1
            continue 
        require msg.value >= stor6[idx].field_512
        idx = 0
        while idx < 4:
            mem[0] = idx
            mem[32] = 6
            if stor6[idx].field_0 > block.timestamp:
                idx = idx + 1
                continue 
            mem[0] = idx
            mem[32] = 6
            if stor6[idx].field_256 < block.timestamp:
                idx = idx + 1
                continue 
            if not msg.value * rate:
                require msg.value * rate >= msg.value * rate
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), msg.value * rate
                require ext_call.success
                emit TokenPurchase(msg.value, msg.value * rate, msg.sender, arg1);
            else:
                require msg.value * rate
                require msg.value * rate * stor6[idx].field_768 / msg.value * rate == stor6[idx].field_768
                require (msg.value * rate) + (msg.value * rate * stor6[idx].field_768 / 100) >= msg.value * rate
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), (msg.value * rate) + (msg.value * rate * stor6[idx].field_768 / 100)
                require ext_call.success
                emit TokenPurchase(msg.value, (msg.value * rate) + (msg.value * rate * stor6[idx].field_768 / 100), msg.sender, arg1);
            call walletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
        if msg.value * rate:
            require msg.value * rate
            require not 0 / msg.value * rate
        require msg.value * rate >= msg.value * rate
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args address(arg1), msg.value * rate
        require ext_call.success
        emit TokenPurchase(msg.value, msg.value * rate, msg.sender, arg1);
        call walletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
    require msg.value >= 0
    idx = 0
    while idx < 4:
        mem[0] = idx
        mem[32] = 6
        if stor6[idx].field_0 > block.timestamp:
            idx = idx + 1
            continue 
        mem[0] = idx
        mem[32] = 6
        if stor6[idx].field_256 < block.timestamp:
            idx = idx + 1
            continue 
        if not msg.value * rate:
            require msg.value * rate >= msg.value * rate
            require weiRaised + msg.value >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args address(arg1), msg.value * rate
            require ext_call.success
            emit TokenPurchase(msg.value, msg.value * rate, msg.sender, arg1);
        else:
            require msg.value * rate
            require msg.value * rate * stor6[idx].field_768 / msg.value * rate == stor6[idx].field_768
            require (msg.value * rate) + (msg.value * rate * stor6[idx].field_768 / 100) >= msg.value * rate
            require weiRaised + msg.value >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args address(arg1), (msg.value * rate) + (msg.value * rate * stor6[idx].field_768 / 100)
            require ext_call.success
            emit TokenPurchase(msg.value, (msg.value * rate) + (msg.value * rate * stor6[idx].field_768 / 100), msg.sender, arg1);
        call walletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
    if msg.value * rate:
        require msg.value * rate
        require not 0 / msg.value * rate
    require msg.value * rate >= msg.value * rate
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), msg.value * rate
    require ext_call.success
    emit TokenPurchase(msg.value, msg.value * rate, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function _fallback() payable {
    require msg.sender
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require msg.value
    require msg.value * rate / msg.value == rate
    idx = 0
    while idx < 4:
        mem[0] = idx
        mem[32] = 6
        if stor6[idx].field_0 > block.timestamp:
            idx = idx + 1
            continue 
        mem[0] = idx
        mem[32] = 6
        if stor6[idx].field_256 < block.timestamp:
            idx = idx + 1
            continue 
        require msg.value >= stor6[idx].field_512
        idx = 0
        while idx < 4:
            mem[0] = idx
            mem[32] = 6
            if stor6[idx].field_0 > block.timestamp:
                idx = idx + 1
                continue 
            mem[0] = idx
            mem[32] = 6
            if stor6[idx].field_256 < block.timestamp:
                idx = idx + 1
                continue 
            if not msg.value * rate:
                require msg.value * rate >= msg.value * rate
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, msg.value * rate
                require ext_call.success
                emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
            else:
                require msg.value * rate
                require msg.value * rate * stor6[idx].field_768 / msg.value * rate == stor6[idx].field_768
                require (msg.value * rate) + (msg.value * rate * stor6[idx].field_768 / 100) >= msg.value * rate
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (msg.value * rate) + (msg.value * rate * stor6[idx].field_768 / 100)
                require ext_call.success
                emit TokenPurchase(msg.value, (msg.value * rate) + (msg.value * rate * stor6[idx].field_768 / 100), msg.sender, msg.sender);
            call walletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
        if msg.value * rate:
            require msg.value * rate
            require not 0 / msg.value * rate
        require msg.value * rate >= msg.value * rate
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, msg.value * rate
        require ext_call.success
        emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
        call walletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
    require msg.value >= 0
    idx = 0
    while idx < 4:
        mem[0] = idx
        mem[32] = 6
        if stor6[idx].field_0 > block.timestamp:
            idx = idx + 1
            continue 
        mem[0] = idx
        mem[32] = 6
        if stor6[idx].field_256 < block.timestamp:
            idx = idx + 1
            continue 
        if not msg.value * rate:
            require msg.value * rate >= msg.value * rate
            require weiRaised + msg.value >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args msg.sender, msg.value * rate
            require ext_call.success
            emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
        else:
            require msg.value * rate
            require msg.value * rate * stor6[idx].field_768 / msg.value * rate == stor6[idx].field_768
            require (msg.value * rate) + (msg.value * rate * stor6[idx].field_768 / 100) >= msg.value * rate
            require weiRaised + msg.value >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args msg.sender, (msg.value * rate) + (msg.value * rate * stor6[idx].field_768 / 100)
            require ext_call.success
            emit TokenPurchase(msg.value, (msg.value * rate) + (msg.value * rate * stor6[idx].field_768 / 100), msg.sender, msg.sender);
        call walletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
    if msg.value * rate:
        require msg.value * rate
        require not 0 / msg.value * rate
    require msg.value * rate >= msg.value * rate
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value * rate
    require ext_call.success
    emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
