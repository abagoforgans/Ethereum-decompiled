contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
address stor3;
uint256 stor4;
uint256 stor6;
address stor7;
uint8 stor10;
address stor10; offset 8
uint256 stor11;
address stor12;
uint256 stor13;
uint8 stor14;
address stor14; offset 8

function _fallback() payable {
    uint8(stor10.field_0) = 0
    address(stor10.field_8) = 0x9c38c7e22cb20b055e008775617224d0ec25c91f
    stor11 = 150000000 * 10^18
    stor12 = 0x3669ad54675e94e14196528786645c858b8391f1
    stor13 = 18911 * 10^17 * 3600
    uint8(stor14.field_0) = 0
    address(stor14.field_8) = 0
    require not msg.value
    require code.data[8186 len 32] >= code.data[8154 len 32]
    require code.data[8218 len 32] > 0
    stor0 = 0
    stor1 = code.data[8154 len 32]
    stor2 = code.data[8186 len 32]
    stor4 = code.data[8218 len 32]
    stor3 = code.data[8294 len 20]
    require code.data[8250 len 32] > 0
    stor6 = code.data[8250 len 32]
    stor7 = msg.sender
    stor0 = code.data[8326 len 20]
    return code.data[819 len 7335]
}



// =====================  Runtime code  =====================


address tokenAddress;
uint256 startTime;
uint256 endTime;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint256 cap;
address owner;
address newOwner;
mapping of uint8 stor9;
uint8 stor10;
address stor10;
address teamAddress; offset 8
uint256 teamShare;
address seedAddress;
uint256 seedShare;
uint8 hasAllocated;
address mediatorAddress; offset 8

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

function hasAllocated() {
    return bool(hasAllocated)
}

function mediator() {
    return mediatorAddress
}

function startTime() {
    return startTime
}

function seed() {
    return seedAddress
}

function team() {
    return teamAddress
}

function isFinalized() {
    return bool(uint8(stor10.field_0))
}

function owner() {
    return owner
}

function whitelist(address arg1) {
    return bool(stor9[arg1])
}

function newOwner() {
    return newOwner
}

function seedShare() {
    return seedShare
}

function teamShare() {
    return teamShare
}

function token() {
    return tokenAddress
}

function acceptOwnership() {
    if msg.sender == newOwner:
        owner = newOwner
}

function assignMediator(address arg1) {
    require msg.sender == owner
    mediatorAddress = arg1
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    newOwner = arg1
}

function hasEnded() {
    if block.timestamp > endTime:
        return (block.timestamp > endTime)
    return weiRaised >= cap
}

function changeEndTime(uint256 arg1) {
    require msg.sender == owner
    require arg1 > startTime
    endTime = arg1
    return endTime
}

function whitelistUser(address arg1) {
    require msg.sender == owner
    stor9[address(arg1)] = 1
    return bool(stor9[address(arg1)])
}

function unWhitelistUser(address arg1) {
    require msg.sender == owner
    stor9[address(arg1)] = 0
    return bool(stor9[address(arg1)])
}

function acceptToken() {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0x79ba5097 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return 1
}

function mintTokens(uint256 arg1) {
    require msg.sender == owner
    require not uint8(stor10.field_0)
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args walletAddress, arg1
    require ext_call.success
}

function whitelistUsers(address[] arg1) {
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 9
        stor9[address(cd[((32 * idx) + arg1 + 36)])] = 1
        idx = idx + 1
        continue 
}

function unWhitelistUsers(address[] arg1) {
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 9
        stor9[address(cd[((32 * idx) + arg1 + 36)])] = 0
        idx = idx + 1
        continue 
}

function allocateTokens() {
    require msg.sender == owner
    require not hasAllocated
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(stor10.field_0), teamShare
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args seedAddress, seedShare
    require ext_call.success
    hasAllocated = 1
    return bool(hasAllocated)
}

function finalize() {
    require msg.sender == owner
    require mediatorAddress
    require not uint8(stor10.field_0)
    if block.timestamp <= endTime:
        require weiRaised >= cap
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args mediatorAddress
    require ext_call.success
    require ext_code.size(mediatorAddress)
    call mediatorAddress.0x5510f804 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    emit Finalized()
    uint8(stor10.field_0) = 1
}

function _fallback() payable {
    require msg.sender
    require weiRaised + msg.value >= weiRaised
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require weiRaised + msg.value <= cap
    require stor9[address(msg.sender)]
    if msg.value:
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
}

function buyTokens(address arg1) payable {
    require arg1
    require weiRaised + msg.value >= weiRaised
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require weiRaised + msg.value <= cap
    require stor9[address(msg.sender)]
    if msg.value:
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
}



}
