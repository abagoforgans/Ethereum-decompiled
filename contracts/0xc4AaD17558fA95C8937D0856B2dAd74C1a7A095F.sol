contract main {


// =======================  Init code  ======================


uint128 stor0; offset 160
address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
address stor5;
address stor6;
address stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint8 stor11;

function _fallback() payable {
    Mask(96, 0, stor0.field_160) = 0
    stor11 = 0
    require not msg.value
    address(stor0.field_0) = msg.sender
    require code.data[9650 len 32] >= block.timestamp
    require code.data[9682 len 32] >= code.data[9650 len 32]
    require code.data[9714 len 32] > 0
    require code.data[9810 len 32] > 0
    require code.data[9746 len 32] > 0
    require code.data[9630 len 20]
    create contract with 0 wei
                    code: code.data[6907 len 2679], code.data[9630 len 20]
    require create.new_address
    stor6 = address(create.new_address)
    stor7 = code.data[9598 len 20]
    stor5 = code.data[9630 len 20]
    stor8 = code.data[9650 len 32]
    stor9 = code.data[9682 len 32]
    stor10 = stor8 + (24 * 3600)
    stor1 = code.data[9778 len 32]
    stor4 = code.data[9714 len 32]
    stor3 = code.data[9810 len 32]
    stor2 = code.data[9746 len 32]
    return code.data[767 len 6140]
}



// =====================  Runtime code  =====================


const WEI_TO_COGS = 10^10


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
uint256 firstDayCap;
uint256 cap;
uint256 goal;
uint256 rate;
address walletAddress;
address vaultAddress;
address tokenAddress;
uint256 startTime;
uint256 endTime;
uint256 firstDay;
uint8 stor11;
uint256 weiRaised;
mapping of uint8 stor13;
mapping of uint256 contribution;

function rate() {
    return rate
}

function endTime() {
    return endTime
}

function cap() {
    return cap
}

function isWhitelisted(address arg1) {
    return bool(stor13[address(arg1)])
}

function goal() {
    return goal
}

function weiRaised() {
    return weiRaised
}

function wallet() {
    return walletAddress
}

function firstDayCap() {
    return firstDayCap
}

function startTime() {
    return startTime
}

function isFinalized() {
    return bool(stor11)
}

function owner() {
    return owner
}

function whitelist(address arg1) {
    return bool(stor13[arg1])
}

function firstDay() {
    return firstDay
}

function contribution(address arg1) {
    return contribution[arg1]
}

function vault() {
    return vaultAddress
}

function token() {
    return tokenAddress
}

function capReached() {
    return weiRaised >= cap
}

function goalReached() {
    return weiRaised >= goal
}

function hasEnded() {
    if block.timestamp > endTime:
        return (block.timestamp > endTime)
    return weiRaised >= cap
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function claimRefund() {
    require not uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 1
    require stor11
    require weiRaised < goal
    require ext_code.size(vaultAddress)
    call vaultAddress.refund(address rg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    Mask(96, 0, stor0.field_160) = 0
}

function updateWhitelist(address[] arg1, bool arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 13
        stor13[mem[(32 * idx) + 140 len 20]] = uint8(arg2)
        s = mem[(32 * idx) + 128]
        idx = idx + 1
        continue 
}

function claimUnsold() {
    require msg.sender == owner
    require endTime <= block.timestamp
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if ext_call.return_data[0] > 0:
        require ext_code.size(tokenAddress)
        call tokenAddress.transferTokens(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args msg.sender, ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
}

function finalize() {
    require msg.sender == owner
    require not stor11
    if block.timestamp <= endTime:
        require weiRaised >= cap
    require ext_code.size(vaultAddress)
    if weiRaised < goal:
        call vaultAddress.enableRefunds() with:
             gas gas_remaining - 710 wei
    else:
        call vaultAddress.close() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_code.size(tokenAddress)
        call tokenAddress.0x3f4ba83a with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_code.size(tokenAddress)
        call tokenAddress.0xf2fde38b with:
             gas gas_remaining - 710 wei
            args owner
    require ext_call.success
    stor11 = 1
    emit Finalized()
}

function _fallback() payable {
    require msg.sender
    require stor13[address(msg.sender)]
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require weiRaised < cap
    if block.timestamp <= firstDay:
        require contribution[address(msg.sender)] + msg.value >= contribution[address(msg.sender)]
        require contribution[address(msg.sender)] + msg.value <= firstDayCap
    require weiRaised <= cap
    if msg.value <= cap - weiRaised:
        require msg.value <= msg.value
        require ext_code.size(vaultAddress)
        call vaultAddress.deposit(address rg1) with:
           value msg.value wei
             gas gas_remaining - 9710 wei
            args msg.sender
        require ext_call.success
        if not msg.value:
            require weiRaised + msg.value >= weiRaised
            weiRaised += msg.value
            require contribution[address(msg.sender)] + msg.value >= contribution[address(msg.sender)]
            contribution[address(msg.sender)] += msg.value
            emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
            require ext_code.size(tokenAddress)
            call tokenAddress.transferTokens(address rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args msg.sender, 0
        else:
            require msg.value
            require msg.value * rate / msg.value == rate
            require weiRaised + msg.value >= weiRaised
            weiRaised += msg.value
            require contribution[address(msg.sender)] + msg.value >= contribution[address(msg.sender)]
            contribution[address(msg.sender)] += msg.value
            emit TokenPurchase(msg.value, msg.value * rate / 10^10, msg.sender, msg.sender);
            require ext_code.size(tokenAddress)
            call tokenAddress.transferTokens(address rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args msg.sender, msg.value * rate / 10^10
    else:
        require cap - weiRaised <= msg.value
        require ext_code.size(vaultAddress)
        call vaultAddress.deposit(address rg1) with:
           value cap - weiRaised wei
             gas gas_remaining - 9710 wei
            args msg.sender
        require ext_call.success
        if msg.value - cap + weiRaised > 0:
            call msg.sender with:
               value msg.value - cap + weiRaised wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit TokenRefund((msg.value - cap + weiRaised), msg.sender);
        if not cap - weiRaised:
            require cap >= weiRaised
            weiRaised = cap
            require contribution[address(msg.sender)] + cap - weiRaised >= contribution[address(msg.sender)]
            contribution[address(msg.sender)] = contribution[address(msg.sender)] + cap - weiRaised
            emit TokenPurchase(cap - weiRaised, 0, msg.sender, msg.sender);
            require ext_code.size(tokenAddress)
            call tokenAddress.transferTokens(address rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args msg.sender, 0
        else:
            require cap - weiRaised
            require (cap * rate) - (weiRaised * rate) / cap - weiRaised == rate
            require cap >= weiRaised
            weiRaised = cap
            require contribution[address(msg.sender)] + cap - weiRaised >= contribution[address(msg.sender)]
            contribution[address(msg.sender)] = contribution[address(msg.sender)] + cap - weiRaised
            emit TokenPurchase(cap - weiRaised, (cap * rate) - (weiRaised * rate) / 10^10, msg.sender, msg.sender);
            require ext_code.size(tokenAddress)
            call tokenAddress.transferTokens(address rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args msg.sender, (cap * rate) - (weiRaised * rate) / 10^10
    require ext_call.success
}



}
