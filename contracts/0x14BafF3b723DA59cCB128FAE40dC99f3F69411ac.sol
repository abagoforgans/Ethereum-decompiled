contract main {




// =====================  Runtime code  =====================


const CONTINUE_MINTING = 0

const TOKEN_NAME = 'AdvancedHiveProtocal'

const TOKEN_SYMBOL = 'AHP'

const TOKEN_DECIMAL_MULTIPLIER = 10^18

const TOKEN_DECIMALS = 18

const TARGET_USER = 0x17b578b9315c377acda93317e3c380bb0c620e6c

const PAUSED = 0

const TOKEN_DECIMALS_UINT8 = 18

const START_TIME = (433414 * 3600)


address tokenAddress;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint256 openingTime;
uint256 closingTime;
uint8 stor6; offset 160
address owner;
uint256 cap;
uint8 initialized;

function initialized() {
    return bool(initialized)
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

function hasEnded() {
    if block.timestamp > closingTime:
        return (block.timestamp > closingTime)
    return weiRaised >= cap
}

function hasClosed() {
    if block.timestamp > closingTime:
        return (block.timestamp > closingTime)
    return weiRaised >= cap
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
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
    if block.timestamp <= closingTime:
        require weiRaised >= cap
    require ext_code.size(tokenAddress)
    call tokenAddress.0x7d64bcb4 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining wei
        args 0x17b578b9315c377acda93317e3c380bb0c620e6c
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Finalized()
    stor6 = 1
}

function init() {
    require msg.sender == owner
    require not initialized
    initialized = 1
    mem[192] = 0x17b578b9315c377acda93317e3c380bb0c620e6c
    mem[224] = 7000000000 * 10^18
    mem[256] = 0
    idx = 0
    while idx < 1:
        require idx < 1
        if not mem[(32 * idx) + 280 len 8]:
            _24 = mem[(32 * idx) + 224]
            mem[292] = mem[(32 * idx) + 204 len 20]
            mem[324] = _24
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args mem[292], _24
        else:
            _23 = mem[(32 * idx) + 224]
            _27 = mem[(32 * idx) + 256]
            mem[292] = mem[(32 * idx) + 204 len 20]
            mem[324] = _23
            mem[356] = uint64(_27)
            require ext_code.size(tokenAddress)
            call tokenAddress.mintAndFreeze(address arg1, uint256 arg2, uint64 arg3) with:
                 gas gas_remaining wei
                args mem[292], _23, uint64(_27)
        mem[288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0x17b578b9315c377acda93317e3c380bb0c620e6c);
    owner = 0x17b578b9315c377acda93317e3c380bb0c620e6c
    emit Initialized()
}

function buyTokens(address arg1) payable {
    require block.timestamp >= openingTime
    require block.timestamp <= closingTime
    require arg1
    require msg.value
    require msg.value + weiRaised >= weiRaised
    require msg.value + weiRaised <= cap
    mem[576] = 0
    mem[608] = 0
    mem[640] = 0
    mem[672] = 1200000 * 10^18
    mem[704] = 1200000 * 10^18
    mem[736] = 1200000 * 10^18
    mem[768] = 433414 * 3600
    mem[800] = 1560466740
    mem[832] = 1561071540
    mem[864] = 1560466740
    mem[896] = 1561071540
    mem[928] = 1561935535
    mem[960] = 1000
    mem[992] = 500
    mem[1024] = 250
    s = 0
    s = 0
    idx = 0
    s = rate
    while idx < 3:
        if mem[(32 * idx) + 576] > weiRaised:
            if idx < 3:
                if mem[(32 * idx) + 792 len 8] > block.timestamp:
                    if mem[(32 * idx) + 576] > weiRaised:
                        s = mem[(32 * idx) + 792 len 8] <= block.timestamp
                        s = mem[(32 * idx) + 576] <= weiRaised
                        idx = idx + 1
                        s = s
                        continue 
                    if mem[(32 * idx) + 792 len 8] > block.timestamp:
                        s = mem[(32 * idx) + 792 len 8] <= block.timestamp
                        s = mem[(32 * idx) + 576] <= weiRaised
                        idx = idx + 1
                        s = s
                        continue 
                    if idx < 3:
                        s = mem[(32 * idx) + 792 len 8] <= block.timestamp
                        s = mem[(32 * idx) + 576] <= weiRaised
                        idx = idx + 1
                        s = s + (s * mem[(32 * idx) + 960] / 1000)
                        continue 
                else:
                    if idx < 3:
                        if mem[(32 * idx) + 576] > weiRaised:
                            s = block.timestamp < mem[(32 * idx) + 888 len 8]
                            s = mem[(32 * idx) + 576] <= weiRaised
                            idx = idx + 1
                            s = s
                            continue 
                        if block.timestamp >= mem[(32 * idx) + 888 len 8]:
                            s = block.timestamp < mem[(32 * idx) + 888 len 8]
                            s = mem[(32 * idx) + 576] <= weiRaised
                            idx = idx + 1
                            s = s
                            continue 
                        if idx < 3:
                            s = block.timestamp < mem[(32 * idx) + 888 len 8]
                            s = mem[(32 * idx) + 576] <= weiRaised
                            idx = idx + 1
                            s = s + (s * mem[(32 * idx) + 960] / 1000)
                            continue 
        else:
            if idx < 3:
                if mem[(32 * idx) + 792 len 8] > block.timestamp:
                    if weiRaised >= mem[(32 * idx) + 672]:
                        s = mem[(32 * idx) + 792 len 8] <= block.timestamp
                        s = weiRaised < mem[(32 * idx) + 672]
                        idx = idx + 1
                        s = s
                        continue 
                    if mem[(32 * idx) + 792 len 8] > block.timestamp:
                        s = mem[(32 * idx) + 792 len 8] <= block.timestamp
                        s = weiRaised < mem[(32 * idx) + 672]
                        idx = idx + 1
                        s = s
                        continue 
                    if idx < 3:
                        s = mem[(32 * idx) + 792 len 8] <= block.timestamp
                        s = weiRaised < mem[(32 * idx) + 672]
                        idx = idx + 1
                        s = s + (s * mem[(32 * idx) + 960] / 1000)
                        continue 
                else:
                    if idx < 3:
                        if weiRaised >= mem[(32 * idx) + 672]:
                            s = block.timestamp < mem[(32 * idx) + 888 len 8]
                            s = weiRaised < mem[(32 * idx) + 672]
                            idx = idx + 1
                            s = s
                            continue 
                        if block.timestamp >= mem[(32 * idx) + 888 len 8]:
                            s = block.timestamp < mem[(32 * idx) + 888 len 8]
                            s = weiRaised < mem[(32 * idx) + 672]
                            idx = idx + 1
                            s = s
                            continue 
                        if idx < 3:
                            s = block.timestamp < mem[(32 * idx) + 888 len 8]
                            s = weiRaised < mem[(32 * idx) + 672]
                            idx = idx + 1
                            s = s + (s * mem[(32 * idx) + 960] / 1000)
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
    require block.timestamp >= openingTime
    require block.timestamp <= closingTime
    require msg.sender
    require msg.value
    require msg.value + weiRaised >= weiRaised
    require msg.value + weiRaised <= cap
    mem[576] = 0
    mem[608] = 0
    mem[640] = 0
    mem[672] = 1200000 * 10^18
    mem[704] = 1200000 * 10^18
    mem[736] = 1200000 * 10^18
    mem[768] = 433414 * 3600
    mem[800] = 1560466740
    mem[832] = 1561071540
    mem[864] = 1560466740
    mem[896] = 1561071540
    mem[928] = 1561935535
    mem[960] = 1000
    mem[992] = 500
    mem[1024] = 250
    s = 0
    s = 0
    idx = 0
    s = rate
    while idx < 3:
        if mem[(32 * idx) + 576] > weiRaised:
            if idx < 3:
                if mem[(32 * idx) + 792 len 8] > block.timestamp:
                    if mem[(32 * idx) + 576] > weiRaised:
                        s = mem[(32 * idx) + 792 len 8] <= block.timestamp
                        s = mem[(32 * idx) + 576] <= weiRaised
                        idx = idx + 1
                        s = s
                        continue 
                    if mem[(32 * idx) + 792 len 8] > block.timestamp:
                        s = mem[(32 * idx) + 792 len 8] <= block.timestamp
                        s = mem[(32 * idx) + 576] <= weiRaised
                        idx = idx + 1
                        s = s
                        continue 
                    if idx < 3:
                        s = mem[(32 * idx) + 792 len 8] <= block.timestamp
                        s = mem[(32 * idx) + 576] <= weiRaised
                        idx = idx + 1
                        s = s + (s * mem[(32 * idx) + 960] / 1000)
                        continue 
                else:
                    if idx < 3:
                        if mem[(32 * idx) + 576] > weiRaised:
                            s = block.timestamp < mem[(32 * idx) + 888 len 8]
                            s = mem[(32 * idx) + 576] <= weiRaised
                            idx = idx + 1
                            s = s
                            continue 
                        if block.timestamp >= mem[(32 * idx) + 888 len 8]:
                            s = block.timestamp < mem[(32 * idx) + 888 len 8]
                            s = mem[(32 * idx) + 576] <= weiRaised
                            idx = idx + 1
                            s = s
                            continue 
                        if idx < 3:
                            s = block.timestamp < mem[(32 * idx) + 888 len 8]
                            s = mem[(32 * idx) + 576] <= weiRaised
                            idx = idx + 1
                            s = s + (s * mem[(32 * idx) + 960] / 1000)
                            continue 
        else:
            if idx < 3:
                if mem[(32 * idx) + 792 len 8] > block.timestamp:
                    if weiRaised >= mem[(32 * idx) + 672]:
                        s = mem[(32 * idx) + 792 len 8] <= block.timestamp
                        s = weiRaised < mem[(32 * idx) + 672]
                        idx = idx + 1
                        s = s
                        continue 
                    if mem[(32 * idx) + 792 len 8] > block.timestamp:
                        s = mem[(32 * idx) + 792 len 8] <= block.timestamp
                        s = weiRaised < mem[(32 * idx) + 672]
                        idx = idx + 1
                        s = s
                        continue 
                    if idx < 3:
                        s = mem[(32 * idx) + 792 len 8] <= block.timestamp
                        s = weiRaised < mem[(32 * idx) + 672]
                        idx = idx + 1
                        s = s + (s * mem[(32 * idx) + 960] / 1000)
                        continue 
                else:
                    if idx < 3:
                        if weiRaised >= mem[(32 * idx) + 672]:
                            s = block.timestamp < mem[(32 * idx) + 888 len 8]
                            s = weiRaised < mem[(32 * idx) + 672]
                            idx = idx + 1
                            s = s
                            continue 
                        if block.timestamp >= mem[(32 * idx) + 888 len 8]:
                            s = block.timestamp < mem[(32 * idx) + 888 len 8]
                            s = weiRaised < mem[(32 * idx) + 672]
                            idx = idx + 1
                            s = s
                            continue 
                        if idx < 3:
                            s = block.timestamp < mem[(32 * idx) + 888 len 8]
                            s = weiRaised < mem[(32 * idx) + 672]
                            idx = idx + 1
                            s = s + (s * mem[(32 * idx) + 960] / 1000)
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
