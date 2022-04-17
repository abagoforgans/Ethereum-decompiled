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
uint256 stor8;

function _fallback() payable {
    Mask(96, 0, stor7.field_160) = 0
    require stor1 + (120 * 24 * 3600) >= stor1
    stor8 = stor1 + (120 * 24 * 3600)
    require not msg.value
    require code.data[15680 len 32] >= block.timestamp
    require code.data[15712 len 32] >= code.data[15680 len 32]
    require code.data[15744 len 32] > 0
    require code.data[15788 len 20]
    create contract with 0 wei
                    code: code.data[9880 len 5800]
    require create.new_address
    stor0 = address(create.new_address)
    stor1 = code.data[15680 len 32]
    stor2 = code.data[15712 len 32]
    stor4 = code.data[15744 len 32]
    stor3 = code.data[15788 len 20]
    stor6 = 100 * 10^18
    address(stor7.field_0) = msg.sender
    return code.data[612 len 9268]
}



// =====================  Runtime code  =====================


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
uint256 stor8;
array of address stor9;

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

function startTime() {
    return startTime
}

function isFinalized() {
    return bool(uint8(stor7.field_160))
}

function owner() {
    return owner
}

function token() {
    return tokenAddress
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

function finalize() {
    require msg.sender == owner
    require not uint8(stor7.field_160)
    if block.timestamp <= endTime:
        require weiRaised >= cap
    require block.timestamp >= endTime
    idx = 0
    while idx < stor9.length:
        mem[100] = address(stor9[idx])
        mem[132] = 10 * weiRaised / 10^18
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args address(stor9[idx]), 10 * weiRaised / 10^18
        require ext_call.success
        require idx < stor9.length
        mem[0] = 9
        mem[96] = 10 * weiRaised / 10^18
        emit 0x1e4464f7: (10 * weiRaised / 10^18), address(stor9[idx])
        idx = idx + 1
        continue 
    emit Finalized()
    Mask(96, 0, stor7.field_160) = 1
}

function buyTokens(address arg1) payable {
    require arg1
    require weiRaised + msg.value >= weiRaised
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require weiRaised + msg.value <= cap
    if msg.value:
        require msg.value
        require msg.value * rate / msg.value == rate
    if block.timestamp > stor8:
        require (msg.value * rate) + (msg.value * rate / 4) >= msg.value * rate
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args address(arg1), (msg.value * rate) + (msg.value * rate / 4)
        require ext_call.success
        emit TokenPurchase(msg.value, (msg.value * rate) + (msg.value * rate / 4), msg.sender, arg1);
    else:
        require (msg.value * rate) + (msg.value * rate / 2) >= msg.value * rate
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args address(arg1), (msg.value * rate) + (msg.value * rate / 2)
        require ext_call.success
        emit TokenPurchase(msg.value, (msg.value * rate) + (msg.value * rate / 2), msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    idx = 0
    while idx < stor9.length:
        mem[0] = 9
        if address(stor9[idx]) != arg1:
            idx = idx + 1
            continue 
    stor9.length++
    if not stor9.length <= stor9.length + 1:
        idx = stor9.length + 1
        while stor9.length > idx:
            uint256(stor9[idx]) = 0
            idx = idx + 1
            continue 
    address(stor9[stor9.length]) = arg1
}

function _fallback() payable {
    require msg.sender
    require weiRaised + msg.value >= weiRaised
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require weiRaised + msg.value <= cap
    if msg.value:
        require msg.value
        require msg.value * rate / msg.value == rate
    if block.timestamp > stor8:
        require (msg.value * rate) + (msg.value * rate / 4) >= msg.value * rate
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, (msg.value * rate) + (msg.value * rate / 4)
        require ext_call.success
        emit TokenPurchase(msg.value, (msg.value * rate) + (msg.value * rate / 4), msg.sender, msg.sender);
    else:
        require (msg.value * rate) + (msg.value * rate / 2) >= msg.value * rate
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, (msg.value * rate) + (msg.value * rate / 2)
        require ext_call.success
        emit TokenPurchase(msg.value, (msg.value * rate) + (msg.value * rate / 2), msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    idx = 0
    while idx < stor9.length:
        mem[0] = 9
        if address(stor9[idx]) != msg.sender:
            idx = idx + 1
            continue 
    stor9.length++
    if not stor9.length <= stor9.length + 1:
        idx = stor9.length + 1
        while stor9.length > idx:
            uint256(stor9[idx]) = 0
            idx = idx + 1
            continue 
    address(stor9[stor9.length]) = msg.sender
}



}
