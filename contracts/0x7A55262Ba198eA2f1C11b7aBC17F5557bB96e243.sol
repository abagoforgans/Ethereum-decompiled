contract main {




// =====================  Runtime code  =====================


const CONTINUE_MINTING = 1

const TOKEN_NAME = 'Mapping Aggregation Platform'

const TOKEN_SYMBOL = 'MPLT'

const TOKEN_DECIMAL_MULTIPLIER = 10^18

const TOKEN_DECIMALS = 18

const TARGET_USER = 0xd32ca1815a347589e922c3a58d42c8f4f8a9770b

const PAUSED = 0

const TOKEN_DECIMALS_UINT8 = 18

const START_TIME = 1538847900


address tokenAddress;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint256 openingTime;
uint256 closingTime;
uint8 stor6; offset 160
address owner;
uint256 cap;
uint8 stor8;

function initialized() {
    return bool(stor8)
}

function rate() {
    return rate
}

function endTime() {
    return closingTime
}

function cap() {
    return cap
}

function weiRaised() {
    return weiRaised
}

function closingTime() {
    return closingTime
}

function wallet() {
    return walletAddress
}

function startTime() {
    return openingTime
}

function isFinalized() {
    return bool(stor6)
}

function owner() {
    return owner
}

function openingTime() {
    return openingTime
}

function token() {
    return tokenAddress
}

function capReached() {
    return weiRaised >= cap
}

function hasStarted() {
    return block.timestamp >= openingTime
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

function hasEnded() {
    require weiRaised <= cap
    if block.timestamp > closingTime:
        return (block.timestamp > closingTime)
    if weiRaised >= cap:
        return weiRaised >= cap
    return (cap - weiRaised < 5 * 10^17)
}

function hasClosed() {
    require weiRaised <= cap
    if block.timestamp > closingTime:
        return (block.timestamp > closingTime)
    if weiRaised >= cap:
        return weiRaised >= cap
    return (cap - weiRaised < 5 * 10^17)
}

function setEndTime(uint256 arg1) {
    require msg.sender == owner
    require block.timestamp < closingTime
    require arg1 > block.timestamp
    require arg1 > openingTime
    emit TimesChanged(openingTime, arg1, openingTime, closingTime);
    closingTime = arg1
}

function finalize() {
    require msg.sender == owner
    require not stor6
    require weiRaised <= cap
    if block.timestamp <= closingTime:
        if weiRaised < cap:
            require cap - weiRaised < 5 * 10^17
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining wei
        args 0xd32ca1815a347589e922c3a58d42c8f4f8a9770b
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Finalized()
    stor6 = 1
}

function init() {
    require msg.sender == owner
    require not stor8
    stor8 = 1
    mem[288] = 0xaaa82e8eb37a78e29bc9b91d2e292968c1ac4d32
    mem[320] = 0x67d0feb8276c91d3fcada42f59113d9dd009b216
    mem[352] = 100000 * 10^18
    mem[384] = 250 * 10^18 * 3600
    mem[416] = 0
    mem[448] = 0
    idx = 0
    while idx < 2:
        require idx < 2
        if not mem[(32 * idx) + 440 len 8]:
            _24 = mem[(32 * idx) + 352]
            mem[484] = mem[(32 * idx) + 300 len 20]
            mem[516] = _24
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args mem[484], _24
        else:
            _23 = mem[(32 * idx) + 352]
            _27 = mem[(32 * idx) + 416]
            mem[484] = mem[(32 * idx) + 300 len 20]
            mem[516] = _23
            mem[548] = uint64(_27)
            require ext_code.size(tokenAddress)
            call tokenAddress.mintAndFreeze(address arg1, uint256 arg2, uint64 arg3) with:
                 gas gas_remaining wei
                args mem[484], _23, uint64(_27)
        mem[480] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0xd32ca1815a347589e922c3a58d42c8f4f8a9770b);
    owner = 0xd32ca1815a347589e922c3a58d42c8f4f8a9770b
    emit Initialized()
}

function buyTokens(address arg1) payable {
    require msg.value >= 5 * 10^17
    require msg.value <= 6000 * 10^18
    require block.timestamp >= openingTime
    require block.timestamp <= closingTime
    require arg1
    require msg.value
    require msg.value + weiRaised >= weiRaised
    require msg.value + weiRaised <= cap
    mem[256] = 0
    mem[288] = 6000 * 10^18
    mem[320] = 1538847960
    mem[352] = 1540443595
    mem[384] = 300
    s = 0
    s = 0
    idx = 0
    s = rate
    while idx < 1:
        if mem[(32 * idx) + 256] > weiRaised:
            if idx < 1:
                if mem[(32 * idx) + 344 len 8] > block.timestamp:
                    if mem[(32 * idx) + 256] > weiRaised:
                        s = mem[(32 * idx) + 344 len 8] <= block.timestamp
                        s = mem[(32 * idx) + 256] <= weiRaised
                        idx = idx + 1
                        s = s
                        continue 
                    if mem[(32 * idx) + 344 len 8] > block.timestamp:
                        s = mem[(32 * idx) + 344 len 8] <= block.timestamp
                        s = mem[(32 * idx) + 256] <= weiRaised
                        idx = idx + 1
                        s = s
                        continue 
                    if idx < 1:
                        s = mem[(32 * idx) + 344 len 8] <= block.timestamp
                        s = mem[(32 * idx) + 256] <= weiRaised
                        idx = idx + 1
                        s = s + (s * mem[(32 * idx) + 384] / 1000)
                        continue 
                else:
                    if idx < 1:
                        if mem[(32 * idx) + 256] > weiRaised:
                            s = block.timestamp < mem[(32 * idx) + 376 len 8]
                            s = mem[(32 * idx) + 256] <= weiRaised
                            idx = idx + 1
                            s = s
                            continue 
                        if block.timestamp >= mem[(32 * idx) + 376 len 8]:
                            s = block.timestamp < mem[(32 * idx) + 376 len 8]
                            s = mem[(32 * idx) + 256] <= weiRaised
                            idx = idx + 1
                            s = s
                            continue 
                        if idx < 1:
                            s = block.timestamp < mem[(32 * idx) + 376 len 8]
                            s = mem[(32 * idx) + 256] <= weiRaised
                            idx = idx + 1
                            s = s + (s * mem[(32 * idx) + 384] / 1000)
                            continue 
        else:
            if idx < 1:
                if mem[(32 * idx) + 344 len 8] > block.timestamp:
                    if weiRaised >= mem[(32 * idx) + 288]:
                        s = mem[(32 * idx) + 344 len 8] <= block.timestamp
                        s = weiRaised < mem[(32 * idx) + 288]
                        idx = idx + 1
                        s = s
                        continue 
                    if mem[(32 * idx) + 344 len 8] > block.timestamp:
                        s = mem[(32 * idx) + 344 len 8] <= block.timestamp
                        s = weiRaised < mem[(32 * idx) + 288]
                        idx = idx + 1
                        s = s
                        continue 
                    if idx < 1:
                        s = mem[(32 * idx) + 344 len 8] <= block.timestamp
                        s = weiRaised < mem[(32 * idx) + 288]
                        idx = idx + 1
                        s = s + (s * mem[(32 * idx) + 384] / 1000)
                        continue 
                else:
                    if idx < 1:
                        if weiRaised >= mem[(32 * idx) + 288]:
                            s = block.timestamp < mem[(32 * idx) + 376 len 8]
                            s = weiRaised < mem[(32 * idx) + 288]
                            idx = idx + 1
                            s = s
                            continue 
                        if block.timestamp >= mem[(32 * idx) + 376 len 8]:
                            s = block.timestamp < mem[(32 * idx) + 376 len 8]
                            s = weiRaised < mem[(32 * idx) + 288]
                            idx = idx + 1
                            s = s
                            continue 
                        if idx < 1:
                            s = block.timestamp < mem[(32 * idx) + 376 len 8]
                            s = weiRaised < mem[(32 * idx) + 288]
                            idx = idx + 1
                            s = s + (s * mem[(32 * idx) + 384] / 1000)
                            continue 
        revert
    if not msg.value:
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args address(arg1), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit TokenPurchase(msg.value, 0, msg.sender, arg1);
    else:
        require s * msg.value / msg.value == s
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args address(arg1), s * msg.value / 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit TokenPurchase(msg.value, s * msg.value / 10^18, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    require msg.value >= 5 * 10^17
    require msg.value <= 6000 * 10^18
    require block.timestamp >= openingTime
    require block.timestamp <= closingTime
    require msg.sender
    require msg.value
    require msg.value + weiRaised >= weiRaised
    require msg.value + weiRaised <= cap
    mem[256] = 0
    mem[288] = 6000 * 10^18
    mem[320] = 1538847960
    mem[352] = 1540443595
    mem[384] = 300
    s = 0
    s = 0
    idx = 0
    s = rate
    while idx < 1:
        if mem[(32 * idx) + 256] > weiRaised:
            if idx < 1:
                if mem[(32 * idx) + 344 len 8] > block.timestamp:
                    if mem[(32 * idx) + 256] > weiRaised:
                        s = mem[(32 * idx) + 344 len 8] <= block.timestamp
                        s = mem[(32 * idx) + 256] <= weiRaised
                        idx = idx + 1
                        s = s
                        continue 
                    if mem[(32 * idx) + 344 len 8] > block.timestamp:
                        s = mem[(32 * idx) + 344 len 8] <= block.timestamp
                        s = mem[(32 * idx) + 256] <= weiRaised
                        idx = idx + 1
                        s = s
                        continue 
                    if idx < 1:
                        s = mem[(32 * idx) + 344 len 8] <= block.timestamp
                        s = mem[(32 * idx) + 256] <= weiRaised
                        idx = idx + 1
                        s = s + (s * mem[(32 * idx) + 384] / 1000)
                        continue 
                else:
                    if idx < 1:
                        if mem[(32 * idx) + 256] > weiRaised:
                            s = block.timestamp < mem[(32 * idx) + 376 len 8]
                            s = mem[(32 * idx) + 256] <= weiRaised
                            idx = idx + 1
                            s = s
                            continue 
                        if block.timestamp >= mem[(32 * idx) + 376 len 8]:
                            s = block.timestamp < mem[(32 * idx) + 376 len 8]
                            s = mem[(32 * idx) + 256] <= weiRaised
                            idx = idx + 1
                            s = s
                            continue 
                        if idx < 1:
                            s = block.timestamp < mem[(32 * idx) + 376 len 8]
                            s = mem[(32 * idx) + 256] <= weiRaised
                            idx = idx + 1
                            s = s + (s * mem[(32 * idx) + 384] / 1000)
                            continue 
        else:
            if idx < 1:
                if mem[(32 * idx) + 344 len 8] > block.timestamp:
                    if weiRaised >= mem[(32 * idx) + 288]:
                        s = mem[(32 * idx) + 344 len 8] <= block.timestamp
                        s = weiRaised < mem[(32 * idx) + 288]
                        idx = idx + 1
                        s = s
                        continue 
                    if mem[(32 * idx) + 344 len 8] > block.timestamp:
                        s = mem[(32 * idx) + 344 len 8] <= block.timestamp
                        s = weiRaised < mem[(32 * idx) + 288]
                        idx = idx + 1
                        s = s
                        continue 
                    if idx < 1:
                        s = mem[(32 * idx) + 344 len 8] <= block.timestamp
                        s = weiRaised < mem[(32 * idx) + 288]
                        idx = idx + 1
                        s = s + (s * mem[(32 * idx) + 384] / 1000)
                        continue 
                else:
                    if idx < 1:
                        if weiRaised >= mem[(32 * idx) + 288]:
                            s = block.timestamp < mem[(32 * idx) + 376 len 8]
                            s = weiRaised < mem[(32 * idx) + 288]
                            idx = idx + 1
                            s = s
                            continue 
                        if block.timestamp >= mem[(32 * idx) + 376 len 8]:
                            s = block.timestamp < mem[(32 * idx) + 376 len 8]
                            s = weiRaised < mem[(32 * idx) + 288]
                            idx = idx + 1
                            s = s
                            continue 
                        if idx < 1:
                            s = block.timestamp < mem[(32 * idx) + 376 len 8]
                            s = weiRaised < mem[(32 * idx) + 288]
                            idx = idx + 1
                            s = s + (s * mem[(32 * idx) + 384] / 1000)
                            continue 
        revert
    if not msg.value:
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
    else:
        require s * msg.value / msg.value == s
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, s * msg.value / 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit TokenPurchase(msg.value, s * msg.value / 10^18, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
