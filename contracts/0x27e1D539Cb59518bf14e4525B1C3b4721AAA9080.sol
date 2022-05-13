contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
address stor4;
uint256 stor7;
address stor8;
uint8 stor11;
uint256 stor12;
uint256 stor13;

function _fallback() payable {
    stor11 = 0
    stor12 = 152000000 * 10^18
    require not msg.value
    require code.data[9758 len 32] >= block.timestamp
    require code.data[9790 len 32] >= code.data[9758 len 32]
    require code.data[9822 len 32] > 0
    require code.data[9898 len 20]
    require code.data[9930 len 20]
    stor1 = code.data[9758 len 32]
    stor2 = code.data[9790 len 32]
    stor3 = code.data[9822 len 32]
    stor4 = code.data[9898 len 20]
    stor0 = code.data[9930 len 20]
    require stor12 > 0
    stor7 = stor12
    stor8 = msg.sender
    stor13 = code.data[9854 len 32]
    return code.data[586 len 9172]
}



// =====================  Runtime code  =====================


const TEAM_ADDRESS = 0x3ec2fc20c04656f4b0aa7372258a36fafb1ef427

const ADVISORS_AND_CONTRIBUTORS_TOKENS = 39000000 * 10^18

const TEAM_TOKENS = 50000000 * 10^18

const ADVISORS_AND_CONTRIBUTORS_ADDRESS = 0x90adab6891514dc24411b9adf2e11c0ed7739999

const UNSOLD_ADDRESS = 0x4ec155995211c8639375ae3106187bff3ff5db46


address tokenAddress;
uint256 startTime;
uint256 endTime;
uint256 rate;
address walletAddress;
uint256 weiRaised;
uint256 tokensSold;
uint256 tokenCap;
address owner;
mapping of uint8 stor9;
uint256 whitelistedCount;
uint8 stor11;
uint256 stor12;
uint256 bonus;

function rate() {
    return rate
}

function endTime() {
    return endTime
}

function isWhitelisted(address arg1) {
    return bool(stor9[address(arg1)])
}

function weiRaised() {
    return weiRaised
}

function tokensSold() {
    return tokensSold
}

function wallet() {
    return walletAddress
}

function bonus() {
    return bonus
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

function whitelistedCount() {
    return whitelistedCount
}

function tokenCap() {
    return tokenCap
}

function token() {
    return tokenAddress
}

function isCapReached() {
    return tokensSold >= tokenCap
}

function setCrowdsaleWallet(address arg1) {
    require msg.sender == owner
    require arg1
    walletAddress = arg1
}

function changeEndTime(uint256 arg1) {
    require msg.sender == owner
    require arg1 > startTime
    endTime = arg1
}

function hasEnded() {
    if tokensSold >= tokenCap:
        return tokensSold >= tokenCap
    return (block.timestamp > endTime)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setRate(uint256 arg1) {
    require msg.sender == owner
    require block.timestamp < startTime
    rate = arg1
    emit RateChanged(arg1, Array(len=4, data='rate'));
}

function setBonus(uint256 arg1) {
    require msg.sender == owner
    require block.timestamp < startTime
    bonus = arg1
    emit RateChanged(arg1, Array(len=5, data='bonus'));
}

function changeStartAndEndTime(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1 >= block.timestamp
    require arg2 >= arg1
    startTime = arg1
    endTime = arg2
}

function addAddress(address arg1) {
    require msg.sender == owner
    stor9[address(arg1)] = 1
    whitelistedCount++
    emit WhitelistUpdated(block.timestamp, Array(len=5, data='Added'), whitelistedCount);
}

function removeAddress(address arg1) {
    require msg.sender == owner
    stor9[address(arg1)] = 0
    whitelistedCount--
    emit WhitelistUpdated(block.timestamp, Array(len=7, data='Removed'), whitelistedCount);
}

function releaseTokenOwnership() {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args owner
    require ext_call.success
}

function recoverERC20Tokens(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2
    require ext_call.success
}

function addAddresses(address[] arg1) {
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 9
        stor9[address(cd[((32 * idx) + arg1 + 36)])] = 1
        whitelistedCount++
        idx = idx + 1
        continue 
    emit WhitelistUpdated(block.timestamp, Array(len=5, data='Added'), whitelistedCount);
}

function removeAddresses(address[] arg1) {
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 9
        stor9[address(cd[((32 * idx) + arg1 + 36)])] = 0
        whitelistedCount--
        idx = idx + 1
        continue 
    emit WhitelistUpdated(block.timestamp, Array(len=7, data='Removed'), whitelistedCount);
}

function finalize() {
    require msg.sender == owner
    require not stor11
    if tokensSold < tokenCap:
        require block.timestamp > endTime
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args 0x3ec2fc20c04656f4b0aa7372258a36fafb1ef427, 50000000 * 10^18
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args 0x90adab6891514dc24411b9adf2e11c0ed7739999, 39000000 * 10^18
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args 0x4ec155995211c8639375ae3106187bff3ff5db46, stor12 - tokensSold
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x7d64bcb4 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args owner
    require ext_call.success
    emit Finalized()
    stor11 = 1
}

function processPresaleOrEarlyContributors(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    require block.timestamp <= endTime
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require tokensSold + mem[(32 * idx) + (32 * arg1.length) + 160] >= tokensSold
        tokensSold += mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg1.length
        require idx < arg2.length
        _27 = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[(32 * arg1.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg1.length) + (32 * arg2.length) + 196] = _27
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args mem[(32 * arg1.length) + (32 * arg2.length) + 164], _27
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
        require ext_call.success
        require idx < arg1.length
        _34 = mem[(32 * idx) + 128]
        require idx < arg2.length
        _36 = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
        mem[(32 * arg1.length) + (32 * arg2.length) + 192] = _36
        emit TokenPurchase(0, _36, msg.sender, address(_34));
        idx = idx + 1
        continue 
}

function buyTokens(address arg1) payable {
    require arg1
    require stor9[address(msg.sender)]
    if block.timestamp > startTime + (24 * 3600):
        if not msg.value:
            require tokensSold >= tokensSold
            require tokensSold <= tokenCap
        else:
            require msg.value
            require msg.value * rate / msg.value == rate
            require tokensSold + (msg.value * rate) >= tokensSold
            require tokensSold + (msg.value * rate) <= tokenCap
    else:
        require rate + bonus >= rate
        if not msg.value:
            require tokensSold >= tokensSold
            require tokensSold <= tokenCap
        else:
            require msg.value
            require (rate * msg.value) + (bonus * msg.value) / msg.value == rate + bonus
            require tokensSold + (rate * msg.value) + (bonus * msg.value) >= tokensSold
            require tokensSold + (rate * msg.value) + (bonus * msg.value) <= tokenCap
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    if block.timestamp > startTime + (24 * 3600):
        if not msg.value:
            require weiRaised + msg.value >= weiRaised
            weiRaised += msg.value
            require tokensSold >= tokensSold
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
            require tokensSold + (msg.value * rate) >= tokensSold
            tokensSold += msg.value * rate
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args address(arg1), msg.value * rate
            require ext_call.success
            emit TokenPurchase(msg.value, msg.value * rate, msg.sender, arg1);
    else:
        require rate + bonus >= rate
        if not msg.value:
            require weiRaised + msg.value >= weiRaised
            weiRaised += msg.value
            require tokensSold >= tokensSold
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args address(arg1), 0
            require ext_call.success
            emit TokenPurchase(msg.value, 0, msg.sender, arg1);
        else:
            require msg.value
            require (rate * msg.value) + (bonus * msg.value) / msg.value == rate + bonus
            require weiRaised + msg.value >= weiRaised
            weiRaised += msg.value
            require tokensSold + (rate * msg.value) + (bonus * msg.value) >= tokensSold
            tokensSold = tokensSold + (rate * msg.value) + (bonus * msg.value)
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args address(arg1), (rate * msg.value) + (bonus * msg.value)
            require ext_call.success
            emit TokenPurchase(msg.value, (rate * msg.value) + (bonus * msg.value), msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function _fallback() payable {
    require msg.sender
    require stor9[address(msg.sender)]
    if block.timestamp > startTime + (24 * 3600):
        if not msg.value:
            require tokensSold >= tokensSold
            require tokensSold <= tokenCap
        else:
            require msg.value
            require msg.value * rate / msg.value == rate
            require tokensSold + (msg.value * rate) >= tokensSold
            require tokensSold + (msg.value * rate) <= tokenCap
    else:
        require rate + bonus >= rate
        if not msg.value:
            require tokensSold >= tokensSold
            require tokensSold <= tokenCap
        else:
            require msg.value
            require (rate * msg.value) + (bonus * msg.value) / msg.value == rate + bonus
            require tokensSold + (rate * msg.value) + (bonus * msg.value) >= tokensSold
            require tokensSold + (rate * msg.value) + (bonus * msg.value) <= tokenCap
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    if block.timestamp > startTime + (24 * 3600):
        if not msg.value:
            require weiRaised + msg.value >= weiRaised
            weiRaised += msg.value
            require tokensSold >= tokensSold
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
            require tokensSold + (msg.value * rate) >= tokensSold
            tokensSold += msg.value * rate
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args msg.sender, msg.value * rate
            require ext_call.success
            emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
    else:
        require rate + bonus >= rate
        if not msg.value:
            require weiRaised + msg.value >= weiRaised
            weiRaised += msg.value
            require tokensSold >= tokensSold
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args msg.sender, 0
            require ext_call.success
            emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
        else:
            require msg.value
            require (rate * msg.value) + (bonus * msg.value) / msg.value == rate + bonus
            require weiRaised + msg.value >= weiRaised
            weiRaised += msg.value
            require tokensSold + (rate * msg.value) + (bonus * msg.value) >= tokensSold
            tokensSold = tokensSold + (rate * msg.value) + (bonus * msg.value)
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args msg.sender, (rate * msg.value) + (bonus * msg.value)
            require ext_call.success
            emit TokenPurchase(msg.value, (rate * msg.value) + (bonus * msg.value), msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
