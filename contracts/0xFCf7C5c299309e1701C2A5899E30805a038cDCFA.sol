contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of uint8 stor1;
uint256 stor2;
address tokenAddress;
address walletAddress;
uint256 weiRaised;
address tokenWalletAddress;
uint256 cap;
mapping of uint8 stor9;
mapping of uint256 contribution;
mapping of uint256 cap;
mapping of uint8 stor12;
uint8 paused;
uint256 openingTime;
uint256 closingTime;
address owner;
uint256 rate;

function getContribution(address arg1) {
    require calldata.size - 4 >= 32
    return contribution[address(arg1)]
}

function rate() {
    return rate
}

function cap() {
    return cap
}

function isCapper(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor9[address(arg1)])
}

function isWhitelisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor1[address(arg1)])
}

function weiRaised() {
    return weiRaised
}

function isPauser(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor12[address(arg1)])
}

function closingTime() {
    return closingTime
}

function wallet() {
    return walletAddress
}

function paused() {
    return bool(paused)
}

function owner() {
    return owner
}

function getCap(address arg1) {
    require calldata.size - 4 >= 32
    return cap[address(arg1)]
}

function openingTime() {
    return openingTime
}

function isWhitelistAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor0[address(arg1)])
}

function tokenWallet() {
    return tokenWalletAddress
}

function token() {
    return tokenAddress
}

function capReached() {
    return weiRaised >= cap
}

function isOwner() {
    return (msg.sender == owner)
}

function hasClosed() {
    return (block.timestamp > closingTime)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function isOpen() {
    if block.timestamp < openingTime:
        return block.timestamp >= openingTime
    return block.timestamp <= closingTime
}

function unpause() {
    require msg.sender
    require stor12[address(msg.sender)]
    require paused
    paused = 0
    emit Unpaused(msg.sender);
}

function pause() {
    require msg.sender
    require stor12[address(msg.sender)]
    require not paused
    paused = 1
    emit Paused(msg.sender);
}

function renounceCapper() {
    require msg.sender
    require stor9[address(msg.sender)]
    stor9[address(msg.sender)] = 0
    emit CapperRemoved(msg.sender);
}

function renouncePauser() {
    require msg.sender
    require stor12[address(msg.sender)]
    stor12[address(msg.sender)] = 0
    emit PauserRemoved(msg.sender);
}

function renounceWhitelisted() {
    require msg.sender
    require stor1[address(msg.sender)]
    stor1[address(msg.sender)] = 0
    emit WhitelistedRemoved(msg.sender);
}

function setCap(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender
    require stor9[address(msg.sender)]
    cap[address(arg1)] = arg2
}

function renounceWhitelistAdmin() {
    require msg.sender
    require stor0[address(msg.sender)]
    stor0[address(msg.sender)] = 0
    emit WhitelistAdminRemoved(msg.sender);
}

function setClosingTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1 > openingTime
    closingTime = arg1
    emit 0x9ff25591: arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if arg1 <= 0:
        revert with 0, 'New rate cannot be zero'
    rate = arg1
    emit RateChanged(arg1);
}

function setOpeningTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1 >= block.timestamp
    require arg1 < closingTime
    openingTime = arg1
    emit 0xc3f26313: arg1
}

function addCapper(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor9[address(msg.sender)]
    require arg1
    require not stor9[address(arg1)]
    stor9[address(arg1)] = 1
    emit CapperAdded(arg1);
}

function addPauser(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor12[address(msg.sender)]
    require arg1
    require not stor12[address(arg1)]
    stor12[address(arg1)] = 1
    emit PauserAdded(arg1);
}

function addWhitelisted(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor0[address(msg.sender)]
    require arg1
    require not stor1[address(arg1)]
    stor1[address(arg1)] = 1
    emit WhitelistedAdded(arg1);
}

function removeWhitelisted(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor0[address(msg.sender)]
    require arg1
    require stor1[address(arg1)]
    stor1[address(arg1)] = 0
    emit WhitelistedRemoved(arg1);
}

function addWhitelistAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor0[address(msg.sender)]
    require arg1
    require not stor0[address(arg1)]
    stor0[address(arg1)] = 1
    emit WhitelistAdminAdded(arg1);
}

function remainingTokens() {
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args tokenWalletAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args tokenWalletAddress, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_8fe51839(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    require msg.sender
    require stor9[address(msg.sender)]
    require msg.sender
    require stor0[address(msg.sender)]
    if 128 < arg1.length:
        revert with 0, 'Users length exceeds the maximum allowed'
    if arg1.length != arg2.length:
        revert with 0, 'Users length is not equal to individual caps'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require msg.sender
        require stor0[address(msg.sender)]
        require mem[(32 * idx) + 140 len 20]
        require not stor1[address(mem[(32 * idx) + 128])]
        stor1[address(mem[(32 * idx) + 128])] = 1
        emit WhitelistedAdded(mem[(32 * idx) + 140 len 20]);
        require idx < arg1.length
        require idx < arg2.length
        require msg.sender
        require stor9[address(msg.sender)]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 11
        cap[address(mem[(32 * idx) + 128])] = mem[(32 * idx) + (32 * arg1.length) + 160]
        idx = idx + 1
        continue 
}

function buyTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    stor2++
    require block.timestamp >= openingTime
    require block.timestamp <= closingTime
    require arg1
    require stor1[address(arg1)]
    require not paused
    require arg1
    require msg.value
    require msg.value + weiRaised >= weiRaised
    require msg.value + weiRaised <= cap
    require msg.value + contribution[address(arg1)] >= contribution[address(arg1)]
    require msg.value + contribution[address(arg1)] <= cap[address(arg1)]
    if not msg.value:
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args tokenWalletAddress, address(arg1), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit TokensPurchased(msg.value, 0, msg.sender, arg1);
    else:
        require rate * msg.value / msg.value == rate
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args tokenWalletAddress, address(arg1), rate * msg.value
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit TokensPurchased(msg.value, rate * msg.value, msg.sender, arg1);
    require msg.value + contribution[address(arg1)] >= contribution[address(arg1)]
    contribution[address(arg1)] += msg.value
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require stor2 + 1 == stor2
}

function _fallback() payable {
    stor2++
    require block.timestamp >= openingTime
    require block.timestamp <= closingTime
    require msg.sender
    require stor1[address(msg.sender)]
    require not paused
    require msg.sender
    require msg.value
    require msg.value + weiRaised >= weiRaised
    require msg.value + weiRaised <= cap
    require msg.value + contribution[address(msg.sender)] >= contribution[address(msg.sender)]
    require msg.value + contribution[address(msg.sender)] <= cap[address(msg.sender)]
    if not msg.value:
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args tokenWalletAddress, msg.sender, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
    else:
        require rate * msg.value / msg.value == rate
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args tokenWalletAddress, msg.sender, rate * msg.value
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit TokensPurchased(msg.value, rate * msg.value, msg.sender, msg.sender);
    require msg.value + contribution[address(msg.sender)] >= contribution[address(msg.sender)]
    contribution[address(msg.sender)] += msg.value
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require stor2 + 1 == stor2
}



}
