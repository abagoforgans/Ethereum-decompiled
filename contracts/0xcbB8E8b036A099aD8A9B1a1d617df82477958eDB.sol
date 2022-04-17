contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
address stor2;
uint256 stor3;
uint256 stor4;
address stor6;
uint256 stor7;
uint256 stor9;

function _fallback() {
    require code.data[2862 len 32] >= block.timestamp
    require code.data[3034 len 20]
    stor0 = code.data[2842 len 20]
    stor1 = code.data[2862 len 32]
    stor3 = code.data[2894 len 32]
    stor2 = code.data[3034 len 20]
    stor4 = code.data[2958 len 32]
    stor6 = msg.sender
    require code.data[2926 len 32] > 0
    stor7 = code.data[2926 len 32]
    stor9 = code.data[2990 len 32]
    return code.data[273 len 2557]
}



// =====================  Runtime code  =====================


const GAS_LIMIT_IN_WEI = 5 * 10^10


address tokenAddress;
uint256 endTime;
address walletAddress;
uint256 rate;
uint256 minThreshold;
uint256 weiRaised;
address owner;
uint256 cap;
mapping of uint8 stor8;
uint256 capPerAddress;
mapping of uint256 participated;

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

function owner() {
    return owner
}

function capPerAddress() {
    return capPerAddress
}

function registered(address arg1) {
    return bool(stor8[arg1])
}

function participated(address arg1) {
    return participated[arg1]
}

function minThreshold() {
    return minThreshold
}

function token() {
    return tokenAddress
}

function hasEnded() {
    return (block.timestamp > endTime)
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function changeRegistrationStatus(address arg1, bool arg2) {
    require owner == msg.sender
    stor8[address(arg1)] = uint8(arg2)
    emit RegistrationStatusChanged(arg2, arg1);
}

function drainRemainingToken() {
    require owner == msg.sender
    require block.timestamp > endTime
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, ext_call.return_data[0]
    require ext_call.success
}

function changeRegistrationStatuses(address[] arg1, bool arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require owner == msg.sender
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _10 = mem[(32 * idx) + 128]
        require owner == msg.sender
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 8
        stor8[mem[(32 * idx) + 140 len 20]] = uint8(arg2)
        mem[(32 * arg1.length) + 128] = arg2
        emit RegistrationStatusChanged(arg2, address(_10));
        idx = idx + 1
        continue 
}

function _fallback() payable {
    require msg.sender
    require block.gasprice <= 5 * 10^10
    require msg.value + participated[address(msg.sender)] >= participated[address(msg.sender)]
    participated[address(msg.sender)] += msg.value
    require msg.value + weiRaised >= weiRaised
    require block.timestamp <= endTime
    require msg.value
    require msg.value + weiRaised <= cap
    require stor8[address(msg.sender)]
    require participated[address(msg.sender)] <= capPerAddress
    require msg.value >= minThreshold
    require rate
    require msg.value - (msg.value % rate) + weiRaised >= weiRaised
    weiRaised = msg.value - (msg.value % rate) + weiRaised
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value - (msg.value % rate) / rate
    require ext_call.success
    require ext_call.return_data[0]
    emit TokenPurchase(msg.value - (msg.value % rate), msg.value - (msg.value % rate) / rate, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value - (msg.value % rate) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function buyTokens(address arg1) payable {
    require arg1
    require block.gasprice <= 5 * 10^10
    require msg.value + participated[address(msg.sender)] >= participated[address(msg.sender)]
    participated[address(msg.sender)] += msg.value
    require msg.value + weiRaised >= weiRaised
    require block.timestamp <= endTime
    require msg.value
    require msg.value + weiRaised <= cap
    require stor8[address(msg.sender)]
    require participated[address(msg.sender)] <= capPerAddress
    require msg.value >= minThreshold
    require rate
    require msg.value - (msg.value % rate) + weiRaised >= weiRaised
    weiRaised = msg.value - (msg.value % rate) + weiRaised
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), msg.value - (msg.value % rate) / rate
    require ext_call.success
    require ext_call.return_data[0]
    emit TokenPurchase(msg.value - (msg.value % rate), msg.value - (msg.value % rate) / rate, msg.sender, arg1);
    call walletAddress with:
       value msg.value - (msg.value % rate) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
