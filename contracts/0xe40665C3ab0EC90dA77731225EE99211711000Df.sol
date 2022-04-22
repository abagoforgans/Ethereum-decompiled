contract main {


// =======================  Init code  ======================


uint256 stor1;
uint256 stor2;
address stor3;
uint256 stor4;
uint256 stor6;
address stor7;
address stor9;

function _fallback() {
    require code.data[7818 len 32] >= 0
    require code.data[7850 len 32] >= code.data[7818 len 32]
    require code.data[7882 len 32] > 0
    require code.data[7958 len 20]
    stor1 = code.data[7818 len 32]
    stor2 = code.data[7850 len 32]
    stor4 = code.data[7882 len 32]
    stor3 = code.data[7958 len 20]
    require code.data[7914 len 32] > 0
    stor6 = code.data[7914 len 32]
    stor7 = msg.sender
    stor9 = code.data[7990 len 20]
    return code.data[495 len 7323]
}



// =====================  Runtime code  =====================


uint256 startTime;
uint256 endTime;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint256 cap;
address owner;
mapping of uint8 stor8;
address tokenAddress;

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

function owner() {
    return owner
}

function sub_c7a8bbe7(?) {
    return bool(stor8[arg1])
}

function token() {
    return tokenAddress
}

function changeRate(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    rate = arg1
}

function setEndTime(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    endTime = arg1
}

function setStartTime(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    startTime = arg1
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

function pauseToken() {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0x8456cb59 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return 0
}

function unpauseToken() {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0x3f4ba83a with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return 0
}

function sub_de458d90(?) {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0xde458d90 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function sub_f61b8fb0(?) {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf61b8fb0 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function setCompanyAddress(address arg1) {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0x4f63a772 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function changePreIcoEndDate(uint256 arg1) {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0xe9d724e5 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function sub_e18f2e68(?) {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0xfa6171e4 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    return 0
}

function sub_dc150dcd(?) {
    if owner != msg.sender:
        require bool(stor8[address(msg.sender)]) == 1
    require ext_code.size(tokenAddress)
    call tokenAddress.0xdc150dcd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function sub_d0906f69(?) {
    if owner != msg.sender:
        require bool(stor8[address(msg.sender)]) == 1
    require ext_code.size(tokenAddress)
    call tokenAddress.0x3537c258 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    return 0
}

function whitelistAddress(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 8
        stor8[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function mintToken(address arg1, uint256 arg2) {
    if owner != msg.sender:
        require bool(stor8[address(msg.sender)]) == 1
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    return 0
}

function sub_03a5b1ed(?) {
    require msg.sender == owner
    mem[(32 * arg1.length) + 132] = 32
    mem[(32 * arg1.length) + 164] = arg1.length
    mem[(32 * arg1.length) + 196 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(tokenAddress)
    call tokenAddress.0xb31d61b0 with:
         gas gas_remaining - 710 wei
        args mem[(32 * arg1.length) + 132 len (96 * arg1.length) + 64]
    require ext_call.success
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
