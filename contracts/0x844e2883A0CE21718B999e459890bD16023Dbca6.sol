contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
address stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
address stor10;
uint256 stor12;
uint256 stor13;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint8 stor20; offset 160

function _fallback() payable {
    stor1 = 0x155020972767efc46dda0ec63a95627550f8c64f
    stor2 = 0xdcda40786c0e63b7932b7f844846edce994a0851
    stor12 = 10^14
    stor13 = 200000 * 10^18
    stor18 = 0
    stor20 = 0
    require not msg.value
    stor0 = msg.sender
    stor6 = 419425 * 3600
    stor7 = 1512489599
    stor8 = 1510102799
    stor9 = 1510361999
    stor10 = 0x90420b8aef42f856a0afb4ffbfaa57405fb190f3
    create contract with 0 wei
                    code: code.data[4569 len 3105]
    require create.new_address
    stor3 = address(create.new_address)
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x313ce567 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor4 = ext_call.return_data[0]
    stor5 = 10^ext_call.return_data[0]
    stor16 = 130 * 10^6 * 10^ext_call.return_data[0]
    stor17 = 130 * 10^6 * 10^ext_call.return_data[0]
    return code.data[460 len 4109]
}



// =====================  Runtime code  =====================


address owner;
address stor1;
address stor2;
address tokenAddress;
uint256 decimals;
uint256 oneCoin;
uint256 startTimestamp;
uint256 endTimestamp;
uint256 tier1Timestamp;
uint256 tier2Timestamp;
address multiSigAddress;
uint256 rate;
uint256 minContribution;
uint256 maxContribution;
uint256 weiRaised;
uint256 tokenRaised;
uint256 maxTokens;
uint256 tokensForSale;
uint256 numberOfPurchasers;
address csAddress;
uint8 stor20; offset 160
address fxAddress;
mapping of uint8 stor21;

function oneCoin() {
    return oneCoin
}

function tokensForSale() {
    return tokensForSale
}

function tier1Timestamp() {
    return tier1Timestamp
}

function tokenRaised() {
    return tokenRaised
}

function rate() {
    return rate
}

function decimals() {
    return decimals
}

function multiSig() {
    return multiSigAddress
}

function weiRaised() {
    return weiRaised
}

function freeForAll() {
    return bool(stor20)
}

function cs() {
    return csAddress
}

function numberOfPurchasers() {
    return numberOfPurchasers
}

function maxContribution() {
    return maxContribution
}

function owner() {
    return owner
}

function endTimestamp() {
    return endTimestamp
}

function minContribution() {
    return minContribution
}

function authorised(address arg1) {
    return bool(stor21[arg1])
}

function tier2Timestamp() {
    return tier2Timestamp
}

function fx() {
    return fxAddress
}

function startTimestamp() {
    return startTimestamp
}

function maxTokens() {
    return maxTokens
}

function token() {
    return tokenAddress
}

function setCS(address arg1) {
    require owner == msg.sender
    csAddress = arg1
}

function setFx(address arg1) {
    require owner == msg.sender
    fxAddress = arg1
}

function setWallet(address arg1) {
    require owner == msg.sender
    multiSigAddress = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function hasEnded() {
    if block.timestamp <= endTimestamp:
        if tokenRaised < tokensForSale:
            return 0
    return 1
}

function blockAccount(address arg1) {
    if fxAddress != msg.sender:
        require csAddress == msg.sender
    stor21[address(arg1)] = 0
}

function authoriseAccount(address arg1) {
    if fxAddress != msg.sender:
        require csAddress == msg.sender
    stor21[address(arg1)] = 1
}

function emergencyERC20Drain(address arg1, uint256 arg2) {
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, arg2
    require ext_call.success
}

function authoriseManyAccounts(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if fxAddress != msg.sender:
        require csAddress == msg.sender
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 21
        stor21[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function placeTokens(address arg1, uint256 arg2) {
    require fxAddress == msg.sender
    require arg2
    require block.timestamp <= endTimestamp
    require tokenRaised < tokensForSale
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    if not ext_call.return_data[0]:
        numberOfPurchasers++
    require arg2 + tokenRaised >= tokenRaised
    tokenRaised += arg2
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    emit TokenPurchase(0, arg2, arg1, arg1);
}

function finishSale() {
    require owner == msg.sender
    if block.timestamp <= endTimestamp:
        require tokenRaised >= tokensForSale
    if maxTokens > tokenRaised:
        require tokenRaised <= maxTokens
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args multiSigAddress, maxTokens - tokenRaised
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
    emit SaleClosed()
}

function _fallback() payable {
    if not stor21[address(msg.sender)]:
        require stor20
    require block.timestamp >= startTimestamp
    require block.timestamp <= endTimestamp
    require tokenRaised < tokensForSale
    require multiSigAddress
    require msg.value > 10^15
    require tokensForSale > tokenRaised
    require msg.value >= minContribution
    require msg.value <= maxContribution
    if block.timestamp < tier1Timestamp:
        if msg.value:
            require msg.value
            require 575 * msg.value / msg.value == 575
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args msg.sender
        require ext_call.success
        if not ext_call.return_data[0]:
            numberOfPurchasers++
        require (575 * msg.value) + tokenRaised >= tokenRaised
        tokenRaised += 575 * msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, 575 * msg.value
        require ext_call.success
        emit TokenPurchase(msg.value, 575 * msg.value, msg.sender, msg.sender);
    else:
        if block.timestamp >= tier2Timestamp:
            if msg.value:
                require msg.value
                require 500 * msg.value / msg.value == 500
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args msg.sender
            require ext_call.success
            if not ext_call.return_data[0]:
                numberOfPurchasers++
            require (500 * msg.value) + tokenRaised >= tokenRaised
            tokenRaised += 500 * msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args msg.sender, 500 * msg.value
            require ext_call.success
            emit TokenPurchase(msg.value, 500 * msg.value, msg.sender, msg.sender);
        else:
            if msg.value:
                require msg.value
                require 550 * msg.value / msg.value == 550
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args msg.sender
            require ext_call.success
            if not ext_call.return_data[0]:
                numberOfPurchasers++
            require (550 * msg.value) + tokenRaised >= tokenRaised
            tokenRaised += 550 * msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args msg.sender, 550 * msg.value
            require ext_call.success
            emit TokenPurchase(msg.value, 550 * msg.value, msg.sender, msg.sender);
    call stor1 with:
       value eth.balance(this.address) / 400 wei
         gas 2300 * is_zero(value) wei
    call stor2 with:
       value eth.balance(this.address) / 400 wei
         gas 2300 * is_zero(value) wei
    call multiSigAddress with:
       value eth.balance(this.address) - (2 * eth.balance(this.address) / 400) wei
         gas 2300 * is_zero(value) wei
}



}
