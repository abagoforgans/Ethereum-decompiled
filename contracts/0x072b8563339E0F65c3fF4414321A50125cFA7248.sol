contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
address stor3;
uint256 stor4;
uint256 stor6;
uint128 stor7; offset 160
address stor7;
uint256 stor10;

function _fallback() payable {
    Mask(96, 0, stor7.field_160) = 0
    require not msg.value
    require code.data[22180 len 32]
    require code.data[22148 len 32] >= block.timestamp
    require code.data[22148 len 32] + (720 * 24 * 3600) >= code.data[22148 len 32]
    require 11125000 * 10^18 / code.data[22180 len 32] > 0
    require code.data[22288 len 20]
    stor0 = 0
    stor1 = code.data[22148 len 32]
    stor2 = code.data[22148 len 32] + (720 * 24 * 3600)
    stor4 = 11125000 * 10^18 / code.data[22180 len 32]
    stor3 = code.data[22288 len 20]
    require code.data[22180 len 32] > 0
    stor6 = code.data[22180 len 32]
    address(stor7.field_0) = msg.sender
    require code.data[22148 len 32] > code.data[22116 len 32]
    mem[15205] = code.data[22320 len 20]
    mem[15237] = code.data[22352 len 20]
    mem[15269] = code.data[22384 len 20]
    create contract with 0 wei
                    code: code.data[7359 len 14757], 50000000 * 10^18, code.data[22148 len 32] + (8760 * 24 * 3600), mem[15205 len 96]
    require create.new_address
    stor0 = address(create.new_address)
    stor10 = code.data[22116 len 32]
    require ext_code.size(stor0)
    call stor0.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args code.data[22224 len 20], 10500000 * 10^18
    require ext_call.success
    require ext_code.size(stor0)
    call stor0.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(code.data[22244 len 32]), 2875000 * 10^18
    require ext_call.success
    require ext_code.size(stor0)
    call stor0.mintTeamTokens(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args 10000000 * 10^18
    require ext_call.success
    require ext_code.size(stor0)
    call stor0.mintReserveTokens(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args 10000000 * 10^18
    require ext_call.success
    require ext_code.size(stor0)
    call stor0.mintAdvisorsTokens(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args 5500000 * 10^18
    require ext_call.success
    return code.data[2058 len 5301]
}



// =====================  Runtime code  =====================


const MISCELLANEOUS_TOKENS_SUPPLY = 2875000 * 10^18

const ADVISORS_TOKENS_SUPPLY = 5500000 * 10^18

const TEAM_TOKENS_SUPPLY = 10000000 * 10^18

const MAX_SUPPLY = 50000000 * 10^18

const SALE_TOKENS_SUPPLY = 11125000 * 10^18

const RESERVE_TOKENS_SUPPLY = 10000000 * 10^18

const INVESTMENT_FUND_TOKENS_SUPPLY = 10500000 * 10^18


address tokenAddress;
uint256 startTime;
uint256 endTime;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint256 cap;
uint8 stor7; offset 160
uint128 stor7; offset 160
address owner;
uint256 totalSold;
uint256 soldDuringTokensale;
uint256 presaleStartTime;
mapping of uint256 presaleLimit;

function presaleLimit(address arg1) {
    return presaleLimit[arg1]
}

function rate() {
    return rate
}

function endTime() {
    return endTime
}

function cap() {
    return cap
}

function weiRaised() {
    return weiRaised
}

function wallet() {
    return walletAddress
}

function paused() {
    return bool(uint8(stor7.field_160))
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function totalSold() {
    return totalSold
}

function soldDuringTokensale() {
    return soldDuringTokensale
}

function presaleStartTime() {
    return presaleStartTime
}

function token() {
    return tokenAddress
}

function hasEnded() {
    if block.timestamp > endTime:
        return (block.timestamp > endTime)
    return weiRaised >= cap
}

function unpause() {
    require msg.sender == owner
    require uint8(stor7.field_160)
    Mask(96, 0, stor7.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor7.field_160)
    Mask(96, 0, stor7.field_160) = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setHardCap(uint256 arg1) {
    require msg.sender == owner
    require block.timestamp < presaleStartTime
    cap = arg1
    require arg1
    rate = 11125000 * 10^18 / arg1
}

function finalise() {
    if block.timestamp <= endTime:
        require weiRaised >= cap
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa4399263 with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function addPresaleWallets(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    require block.timestamp < startTime
    require arg1.length == arg2.length
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 11
        presaleLimit[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * arg1.length) + 160]
        idx = idx + 1
        continue 
}

function buyTokens(address arg1) payable {
    require arg1
    require not uint8(stor7.field_160)
    require weiRaised + msg.value >= weiRaised
    if block.timestamp < startTime:
        require msg.value <= presaleLimit[address(msg.sender)]
        require weiRaised + msg.value >= weiRaised
        require weiRaised + msg.value <= cap
        require block.timestamp >= presaleStartTime
        require block.timestamp < startTime
    else:
        if block.timestamp > endTime:
            require msg.value <= presaleLimit[address(msg.sender)]
            require weiRaised + msg.value >= weiRaised
            require weiRaised + msg.value <= cap
            require block.timestamp >= presaleStartTime
            require block.timestamp < startTime
        else:
            if not msg.value:
                require msg.value <= presaleLimit[address(msg.sender)]
                require weiRaised + msg.value >= weiRaised
                require weiRaised + msg.value <= cap
                require block.timestamp >= presaleStartTime
                require block.timestamp < startTime
            else:
                if weiRaised + msg.value > cap:
                    require msg.value <= presaleLimit[address(msg.sender)]
                    require weiRaised + msg.value >= weiRaised
                    require weiRaised + msg.value <= cap
                    require block.timestamp >= presaleStartTime
                    require block.timestamp < startTime
    if not msg.value:
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args address(arg1), 0
        require ext_call.success
        emit TokenPurchase(msg.value, 0, msg.sender, arg1);
    else:
        require msg.value
        require msg.value * rate / msg.value == rate
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
    if block.timestamp < startTime:
        require msg.value <= presaleLimit[address(msg.sender)]
        presaleLimit[address(msg.sender)] -= msg.value
    if not msg.value:
        require totalSold >= totalSold
    require msg.value
    require msg.value * rate / msg.value == rate
    require totalSold + (msg.value * rate) >= totalSold
    totalSold += msg.value * rate
}

function _fallback() payable {
    require msg.sender
    require not uint8(stor7.field_160)
    require weiRaised + msg.value >= weiRaised
    if block.timestamp < startTime:
        require msg.value <= presaleLimit[address(msg.sender)]
        require weiRaised + msg.value >= weiRaised
        require weiRaised + msg.value <= cap
        require block.timestamp >= presaleStartTime
        require block.timestamp < startTime
    else:
        if block.timestamp > endTime:
            require msg.value <= presaleLimit[address(msg.sender)]
            require weiRaised + msg.value >= weiRaised
            require weiRaised + msg.value <= cap
            require block.timestamp >= presaleStartTime
            require block.timestamp < startTime
        else:
            if not msg.value:
                require msg.value <= presaleLimit[address(msg.sender)]
                require weiRaised + msg.value >= weiRaised
                require weiRaised + msg.value <= cap
                require block.timestamp >= presaleStartTime
                require block.timestamp < startTime
            else:
                if weiRaised + msg.value > cap:
                    require msg.value <= presaleLimit[address(msg.sender)]
                    require weiRaised + msg.value >= weiRaised
                    require weiRaised + msg.value <= cap
                    require block.timestamp >= presaleStartTime
                    require block.timestamp < startTime
    if not msg.value:
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, 0
        require ext_call.success
        emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
    else:
        require msg.value
        require msg.value * rate / msg.value == rate
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
    if block.timestamp < startTime:
        require msg.value <= presaleLimit[address(msg.sender)]
        presaleLimit[address(msg.sender)] -= msg.value
    if not msg.value:
        require totalSold >= totalSold
    require msg.value
    require msg.value * rate / msg.value == rate
    require totalSold + (msg.value * rate) >= totalSold
    totalSold += msg.value * rate
}



}
