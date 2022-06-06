contract main {




// =====================  Runtime code  =====================


const CONTINUE_MINTING = 1

const TOKEN_NAME = 'GenPay'

const TOKEN_SYMBOL = 'GNP'

const TOKEN_DECIMAL_MULTIPLIER = 100 * 10^6

const TOKEN_DECIMALS = 8

const TARGET_USER = 0xd66d698d2367896ba7eb0a20335c0c2a0e64fbf2

const PAUSED = 1

const TOKEN_DECIMALS_UINT8 = 8

const START_TIME = (429019 * 3600)


address tokenAddress;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint256 openingTime;
uint256 closingTime;
uint8 stor6; offset 160
address owner;
uint256 cap;
mapping of uint8 stor8;
uint8 stor9;

function initialized() {
    return bool(stor9)
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

function isWhitelisted(address arg1) {
    return bool(stor8[address(arg1)])
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

function addAddressToWhitelist(address arg1) {
    require msg.sender == owner
    stor8[address(arg1)] = 1
    emit WhitelistedAddressAdded(arg1);
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function removeAddressFromWhitelist(address arg1) {
    require msg.sender == owner
    stor8[address(arg1)] = 0
    emit WhitelistedAddressRemoved(arg1);
}

function addAddressesToWhitelist(address[] arg1) {
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 8
        stor8[address(cd[((32 * idx) + arg1 + 36)])] = 1
        emit WhitelistedAddressAdded(address(cd[((32 * idx) + arg1 + 36)]));
        idx = idx + 1
        continue 
}

function removeAddressesFromWhitelist(address[] arg1) {
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 8
        stor8[address(cd[((32 * idx) + arg1 + 36)])] = 0
        emit WhitelistedAddressRemoved(address(cd[((32 * idx) + arg1 + 36)]));
        idx = idx + 1
        continue 
}

function init() {
    require msg.sender == owner
    require not stor9
    stor9 = 1
    require ext_code.size(tokenAddress)
    call tokenAddress.0x8456cb59 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0xd66d698d2367896ba7eb0a20335c0c2a0e64fbf2);
    owner = 0xd66d698d2367896ba7eb0a20335c0c2a0e64fbf2
    emit Initialized()
}

function finalize() {
    require msg.sender == owner
    require not stor6
    if block.timestamp <= closingTime:
        require weiRaised >= cap
    require ext_code.size(tokenAddress)
    call tokenAddress.0x3f4ba83a with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining wei
        args 0xd66d698d2367896ba7eb0a20335c0c2a0e64fbf2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Finalized()
    stor6 = 1
}

function buyTokens(address arg1) payable {
    require stor8[address(arg1)]
    require block.timestamp >= openingTime
    require block.timestamp <= closingTime
    require arg1
    require msg.value
    require msg.value + weiRaised >= weiRaised
    require msg.value + weiRaised <= cap
    mem[256] = 0
    mem[288] = 400 * 10^18
    mem[320] = 429019 * 3600
    mem[352] = 1544900395
    mem[384] = 450
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
    require stor8[address(msg.sender)]
    require block.timestamp >= openingTime
    require block.timestamp <= closingTime
    require msg.sender
    require msg.value
    require msg.value + weiRaised >= weiRaised
    require msg.value + weiRaised <= cap
    mem[256] = 0
    mem[288] = 400 * 10^18
    mem[320] = 429019 * 3600
    mem[352] = 1544900395
    mem[384] = 450
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
