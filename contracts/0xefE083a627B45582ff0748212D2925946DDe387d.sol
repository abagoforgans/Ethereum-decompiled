contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor6;
address stor8;
uint8 stor12;
uint256 stor12; offset 8
uint8 stor14;

function _fallback() payable {
    uint8(stor12.field_0) = 0
    Mask(248, 0, stor12.field_8) = 0
    stor14 = 0
    require msg.value > 0
    require code.data[11222 len 32] > 0
    require code.data[11254 len 32] >= block.timestamp
    require code.data[11286 len 32] >= code.data[11254 len 32]
    require code.data[11318 len 32] > 0
    require code.data[11362 len 20]
    stor0 = msg.sender
    stor2 = code.data[11222 len 32]
    stor3 = code.data[11254 len 32]
    stor4 = code.data[11286 len 32]
    stor6 = code.data[11318 len 32]
    stor8 = code.data[11362 len 20]
    create contract with 0 wei
                    code: code.data[6704 len 4518]
    require create.new_address
    stor1 = address(create.new_address)
    call stor8 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return code.data[666 len 6038]
}



// =====================  Runtime code  =====================


address owner;
address tokenAddress;
uint256 goal;
uint256 startTime;
uint256 endTime;
uint256 timeExtension;
uint256 rate;
uint256 weiRaised;
address walletAddress;
mapping of uint256 whitelisted;
mapping of uint256 deposited;
array of address investors;
uint8 stor12;
uint8 stor12; offset 8
uint256 stor12; offset 8
uint256 finishedAt;
uint8 refunding;
uint256 weiRefunded;

function timeExtension() {
    return timeExtension
}

function rate() {
    return rate
}

function endTime() {
    return endTime
}

function investors(uint256 arg1) {
    require arg1 < investors.length
    return address(investors[arg1])
}

function goal() {
    return goal
}

function weiRaised() {
    return weiRaised
}

function finishedAt() {
    return finishedAt
}

function wallet() {
    return walletAddress
}

function paused() {
    return bool(uint8(stor12.field_0))
}

function weiRefunded() {
    return weiRefunded
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function finished() {
    return bool(uint8(stor12.field_8))
}

function deposited(address arg1) {
    return deposited[arg1]
}

function whitelisted(address arg1) {
    return whitelisted[arg1]
}

function refunding() {
    return bool(refunding)
}

function token() {
    return tokenAddress
}

function goalReached() {
    return weiRaised >= goal
}

function unpause() {
    require msg.sender == owner
    require uint8(stor12.field_0)
    uint8(stor12.field_0) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor12.field_0)
    uint8(stor12.field_0) = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function whitelist(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1
    whitelisted[address(arg1)] = arg2
    emit Whitelisted(arg2, arg1);
}

function extendTime(uint256 arg1) {
    require msg.sender == owner
    require not uint8(stor12.field_8)
    require block.timestamp < endTime + timeExtension
    require arg1 > 0
    require timeExtension + arg1 >= timeExtension
    timeExtension += arg1
    require timeExtension <= 168 * 24 * 3600
    require endTime + timeExtension >= endTime
    emit Extended((endTime + timeExtension));
}

function withdraw() {
    require msg.sender == owner
    if weiRaised < goal:
        require uint8(stor12.field_8)
        require block.timestamp > finishedAt + (336 * 24 * 3600)
    if eth.balance(this.address) > 0:
        call walletAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit Withdrawal(eth.balance(this.address), walletAddress);
}

function refund(address arg1) {
    require uint8(stor12.field_8)
    require refunding
    require deposited[address(arg1)] > 0
    deposited[address(arg1)] = 0
    require weiRefunded + deposited[address(arg1)] >= weiRefunded
    weiRefunded += deposited[address(arg1)]
    call arg1 with:
       value deposited[address(arg1)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Refunded(deposited[address(arg1)], arg1);
}

function finish() {
    require msg.sender == owner
    require not uint8(stor12.field_8)
    require block.timestamp > endTime + timeExtension
    Mask(248, 0, stor12.field_8) = 1
    finishedAt = block.timestamp
    require ext_code.size(tokenAddress)
    call tokenAddress.0x7d64bcb4 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if weiRaised < goal:
        refunding = 1
        emit Refunding()
    else:
        require ext_code.size(tokenAddress)
        call tokenAddress.0xf2fde38b with:
             gas gas_remaining - 710 wei
            args owner
        require ext_call.success
        require msg.sender == owner
        if weiRaised < goal:
            require uint8(stor12.field_8)
            require block.timestamp > finishedAt + (336 * 24 * 3600)
        if eth.balance(this.address) > 0:
            call walletAddress with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit Withdrawal(eth.balance(this.address), walletAddress);
    emit Finalized()
}

function buyTokens(address arg1) payable {
    require not uint8(stor12.field_8)
    require not uint8(stor12.field_0)
    require block.timestamp >= startTime
    require block.timestamp <= endTime + timeExtension
    require arg1
    require msg.value > 0
    require deposited[address(arg1)] + msg.value >= deposited[address(arg1)]
    require deposited[address(arg1)] + msg.value <= whitelisted[address(arg1)]
    if msg.value:
        require msg.value
        require msg.value * rate / msg.value == rate
    deposited[address(arg1)] += msg.value
    investors.length++
    if not investors.length <= investors.length + 1:
        idx = investors.length + 1
        while investors.length > idx:
            uint256(investors[idx]) = 0
            idx = idx + 1
            continue 
    address(investors[investors.length]) = arg1
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), msg.value * rate
    require ext_call.success
    emit TokenPurchase(msg.value, msg.value * rate, msg.sender, arg1);
}

function _fallback() payable {
    require not uint8(stor12.field_8)
    require not uint8(stor12.field_0)
    require block.timestamp >= startTime
    require block.timestamp <= endTime + timeExtension
    require msg.sender
    require msg.value > 0
    require deposited[address(msg.sender)] + msg.value >= deposited[address(msg.sender)]
    require deposited[address(msg.sender)] + msg.value <= whitelisted[address(msg.sender)]
    if msg.value:
        require msg.value
        require msg.value * rate / msg.value == rate
    deposited[address(msg.sender)] += msg.value
    investors.length++
    if not investors.length <= investors.length + 1:
        idx = investors.length + 1
        while investors.length > idx:
            uint256(investors[idx]) = 0
            idx = idx + 1
            continue 
    address(investors[investors.length]) = msg.sender
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value * rate
    require ext_call.success
    emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
}



}
