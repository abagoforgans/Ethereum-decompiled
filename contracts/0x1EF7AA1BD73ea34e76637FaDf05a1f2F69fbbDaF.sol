contract main {




// =====================  Runtime code  =====================


const sub_175a4abd(?) = 0x26e2fa524b85072ed7fb5d5d9237804dc6c0a140

const sub_25ac9325(?) = 500000000 * 10^18

const sub_2f6e6e19(?) = (12 * 3600)

const sub_42ddec25(?) = 0x80babf0c6966e390b52941bf42bd48d814f3ffe8

const sub_79316a2e(?) = (6 * 3600)

const sub_dd95e5c6(?) = 6000000000 * 10^18

const sub_eefcd0df(?) = 0x298cf0d5b60a0ad885518adcb4c3fc49b36d347

const sub_ef53d2ea(?) = 0x8b4c571dd05ca52d02532143f879d182692fd817

const TEAM_ADDR = 0x8dc1c5d34f252a205865b5824ffb966da7aa18

const INITIAL_SUPPLY = 10000000000 * 10^18

const PRIVATE_SALE_AMOUNT = 1600000000 * 10^18

const TEAM_AMOUNT = 1500000000 * 10^18

const GAS_LIMIT_IN_WEI = 5 * 10^10


address tokenAddress;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint8 stor4; offset 160
uint128 stor4; offset 160
address owner;
uint256 cap;
mapping of uint256 contributions;
mapping of uint256 caps;
uint256 startTime;
uint256 openingTime;
uint256 closingTime;
uint8 stor11;

function rate() {
    return rate
}

function cap() {
    return cap
}

function weiRaised() {
    return weiRaised
}

function contributions(address arg1) {
    return contributions[arg1]
}

function closingTime() {
    return closingTime
}

function wallet() {
    return walletAddress
}

function paused() {
    return bool(uint8(stor4.field_160))
}

function caps(address arg1) {
    return caps[arg1]
}

function startTime() {
    return startTime
}

function getUserCap(address arg1) {
    return caps[address(arg1)]
}

function owner() {
    return owner
}

function openingTime() {
    return openingTime
}

function getUserContribution(address arg1) {
    return contributions[address(arg1)]
}

function sub_c24a9f09(?) {
    return bool(stor11)
}

function token() {
    return tokenAddress
}

function capReached() {
    return weiRaised >= cap
}

function hasClosed() {
    return (block.timestamp > closingTime)
}

function setUserCap(address arg1, uint256 arg2) {
    require msg.sender == owner
    caps[address(arg1)] = arg2
}

function unpause() {
    require msg.sender == owner
    require uint8(stor4.field_160)
    Mask(96, 0, stor4.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor4.field_160)
    Mask(96, 0, stor4.field_160) = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setGroupCap(address[] arg1, uint256 arg2) {
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 7
        caps[address(cd[((32 * idx) + arg1 + 36)])] = arg2
        idx = idx + 1
        continue 
}

function drainRemainingToken() {
    require msg.sender == owner
    require block.timestamp > closingTime
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args 0x80babf0c6966e390b52941bf42bd48d814f3ffe8, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_d52a7f8f(?) {
    if block.timestamp < startTime:
        return 0
    require startTime <= block.timestamp
    if block.timestamp - startTime < 12 * 3600:
        return caps[address(arg1)]
    require (block.timestamp + -startTime - (12 * 3600) / 6 * 3600) + 1 >= block.timestamp + -startTime - (12 * 3600) / 6 * 3600
    if (block.timestamp + -startTime - (12 * 3600) / 6 * 3600) + 1 >= 256:
        return 0
    if not caps[address(arg1)]:
        return 0
    require caps[address(arg1)]
    require caps[address(arg1)] * 2^((block.timestamp + -startTime - (12 * 3600) / 6 * 3600) + 1) / caps[address(arg1)] == 2^((block.timestamp + -startTime - (12 * 3600) / 6 * 3600) + 1)
    return (caps[address(arg1)] * 2^((block.timestamp + -startTime - (12 * 3600) / 6 * 3600) + 1))
}

function sub_7c19095b(?) {
    require msg.sender == owner
    require block.timestamp < openingTime
    require not stor11
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args 0x26e2fa524b85072ed7fb5d5d9237804dc6c0a140, 1600000000 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args 0x298cf0d5b60a0ad885518adcb4c3fc49b36d347, 500000000 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args 0x8dc1c5d34f252a205865b5824ffb966da7aa18, 1500000000 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args 0x80babf0c6966e390b52941bf42bd48d814f3ffe8, 6000000000 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor11 = 1
}

function buyTokens(address arg1) payable {
    require block.gasprice <= 5 * 10^10
    require arg1
    require msg.value
    require weiRaised + msg.value >= weiRaised
    require weiRaised + msg.value <= cap
    require block.timestamp >= openingTime
    require block.timestamp <= closingTime
    if block.timestamp < startTime:
        require contributions[address(arg1)] + msg.value >= contributions[address(arg1)]
        require contributions[address(arg1)] + msg.value <= 0
    else:
        require startTime <= block.timestamp
        if block.timestamp - startTime < 12 * 3600:
            require contributions[address(arg1)] + msg.value >= contributions[address(arg1)]
            require contributions[address(arg1)] + msg.value <= caps[address(arg1)]
        else:
            require (block.timestamp + -startTime - (12 * 3600) / 6 * 3600) + 1 >= block.timestamp + -startTime - (12 * 3600) / 6 * 3600
            if (block.timestamp + -startTime - (12 * 3600) / 6 * 3600) + 1 >= 256:
                require contributions[address(arg1)] + msg.value >= contributions[address(arg1)]
                require contributions[address(arg1)] + msg.value <= 0
            else:
                if not caps[address(arg1)]:
                    require contributions[address(arg1)] + msg.value >= contributions[address(arg1)]
                    require contributions[address(arg1)] + msg.value <= 0
                else:
                    require caps[address(arg1)]
                    require caps[address(arg1)] * 2^((block.timestamp + -startTime - (12 * 3600) / 6 * 3600) + 1) / caps[address(arg1)] == 2^((block.timestamp + -startTime - (12 * 3600) / 6 * 3600) + 1)
                    require contributions[address(arg1)] + msg.value >= contributions[address(arg1)]
                    require contributions[address(arg1)] + msg.value <= caps[address(arg1)] * 2^((block.timestamp + -startTime - (12 * 3600) / 6 * 3600) + 1)
    if block.timestamp < startTime:
        require contributions[address(arg1)] + msg.value >= contributions[address(arg1)]
        require contributions[address(arg1)] + msg.value <= 0
    else:
        require startTime <= block.timestamp
        if block.timestamp - startTime < 12 * 3600:
            require contributions[address(arg1)] + msg.value >= contributions[address(arg1)]
            require contributions[address(arg1)] + msg.value <= caps[address(arg1)]
        else:
            require (block.timestamp + -startTime - (12 * 3600) / 6 * 3600) + 1 >= block.timestamp + -startTime - (12 * 3600) / 6 * 3600
            if (block.timestamp + -startTime - (12 * 3600) / 6 * 3600) + 1 >= 256:
                require contributions[address(arg1)] + msg.value >= contributions[address(arg1)]
                require contributions[address(arg1)] + msg.value <= 0
            else:
                if not caps[address(arg1)]:
                    require contributions[address(arg1)] + msg.value >= contributions[address(arg1)]
                    require contributions[address(arg1)] + msg.value <= 0
                else:
                    require caps[address(arg1)]
                    require caps[address(arg1)] * 2^((block.timestamp + -startTime - (12 * 3600) / 6 * 3600) + 1) / caps[address(arg1)] == 2^((block.timestamp + -startTime - (12 * 3600) / 6 * 3600) + 1)
                    require contributions[address(arg1)] + msg.value >= contributions[address(arg1)]
                    require contributions[address(arg1)] + msg.value <= caps[address(arg1)] * 2^((block.timestamp + -startTime - (12 * 3600) / 6 * 3600) + 1)
    if not msg.value:
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit TokenPurchase(msg.value, 0, msg.sender, arg1);
    else:
        require msg.value
        require msg.value * rate / msg.value == rate
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), msg.value * rate
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit TokenPurchase(msg.value, msg.value * rate, msg.sender, arg1);
    require contributions[address(arg1)] + msg.value >= contributions[address(arg1)]
    contributions[address(arg1)] += msg.value
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    require block.gasprice <= 5 * 10^10
    require msg.sender
    require msg.value
    require weiRaised + msg.value >= weiRaised
    require weiRaised + msg.value <= cap
    require block.timestamp >= openingTime
    require block.timestamp <= closingTime
    if block.timestamp < startTime:
        require contributions[address(msg.sender)] + msg.value >= contributions[address(msg.sender)]
        require contributions[address(msg.sender)] + msg.value <= 0
    else:
        require startTime <= block.timestamp
        if block.timestamp - startTime < 12 * 3600:
            require contributions[address(msg.sender)] + msg.value >= contributions[address(msg.sender)]
            require contributions[address(msg.sender)] + msg.value <= caps[address(msg.sender)]
        else:
            require (block.timestamp + -startTime - (12 * 3600) / 6 * 3600) + 1 >= block.timestamp + -startTime - (12 * 3600) / 6 * 3600
            if (block.timestamp + -startTime - (12 * 3600) / 6 * 3600) + 1 >= 256:
                require contributions[address(msg.sender)] + msg.value >= contributions[address(msg.sender)]
                require contributions[address(msg.sender)] + msg.value <= 0
            else:
                if not caps[address(msg.sender)]:
                    require contributions[address(msg.sender)] + msg.value >= contributions[address(msg.sender)]
                    require contributions[address(msg.sender)] + msg.value <= 0
                else:
                    require caps[address(msg.sender)]
                    require caps[address(msg.sender)] * 2^((block.timestamp + -startTime - (12 * 3600) / 6 * 3600) + 1) / caps[address(msg.sender)] == 2^((block.timestamp + -startTime - (12 * 3600) / 6 * 3600) + 1)
                    require contributions[address(msg.sender)] + msg.value >= contributions[address(msg.sender)]
                    require contributions[address(msg.sender)] + msg.value <= caps[address(msg.sender)] * 2^((block.timestamp + -startTime - (12 * 3600) / 6 * 3600) + 1)
    if block.timestamp < startTime:
        require contributions[address(msg.sender)] + msg.value >= contributions[address(msg.sender)]
        require contributions[address(msg.sender)] + msg.value <= 0
    else:
        require startTime <= block.timestamp
        if block.timestamp - startTime < 12 * 3600:
            require contributions[address(msg.sender)] + msg.value >= contributions[address(msg.sender)]
            require contributions[address(msg.sender)] + msg.value <= caps[address(msg.sender)]
        else:
            require (block.timestamp + -startTime - (12 * 3600) / 6 * 3600) + 1 >= block.timestamp + -startTime - (12 * 3600) / 6 * 3600
            if (block.timestamp + -startTime - (12 * 3600) / 6 * 3600) + 1 >= 256:
                require contributions[address(msg.sender)] + msg.value >= contributions[address(msg.sender)]
                require contributions[address(msg.sender)] + msg.value <= 0
            else:
                if not caps[address(msg.sender)]:
                    require contributions[address(msg.sender)] + msg.value >= contributions[address(msg.sender)]
                    require contributions[address(msg.sender)] + msg.value <= 0
                else:
                    require caps[address(msg.sender)]
                    require caps[address(msg.sender)] * 2^((block.timestamp + -startTime - (12 * 3600) / 6 * 3600) + 1) / caps[address(msg.sender)] == 2^((block.timestamp + -startTime - (12 * 3600) / 6 * 3600) + 1)
                    require contributions[address(msg.sender)] + msg.value >= contributions[address(msg.sender)]
                    require contributions[address(msg.sender)] + msg.value <= caps[address(msg.sender)] * 2^((block.timestamp + -startTime - (12 * 3600) / 6 * 3600) + 1)
    if not msg.value:
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
    else:
        require msg.value
        require msg.value * rate / msg.value == rate
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, msg.value * rate
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
    require contributions[address(msg.sender)] + msg.value >= contributions[address(msg.sender)]
    contributions[address(msg.sender)] += msg.value
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
