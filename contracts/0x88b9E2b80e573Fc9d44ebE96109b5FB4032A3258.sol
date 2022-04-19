contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor10;
uint256 stor11;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint128 stor18; offset 160

function _fallback() payable {
    stor10 = 10^14
    stor11 = 200000 * 10^18
    stor16 = 0
    stor18 = 0
    require not msg.value
    stor0 = msg.sender
    stor4 = 419425 * 3600
    stor5 = 1512489599
    stor6 = 1510102799
    stor7 = 1510361999
    create contract with 0 wei
                    code: code.data[7807 len 5517]
    require create.new_address
    stor1 = address(create.new_address)
    require ext_code.size(stor1)
    call stor1.0x313ce567 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor2 = ext_call.return_data[0]
    stor3 = 10^stor2
    stor14 = 130 * 10^6 * stor3
    stor15 = 130 * 10^6 * stor3
    return code.data[528 len 7279]
}



// =====================  Runtime code  =====================


address owner;
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
uint8 freeForAll; offset 160
address fxAddress;
mapping of uint8 stor19;

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
    return bool(freeForAll)
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
    return bool(stor19[arg1])
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
    require msg.sender == owner
    csAddress = arg1
}

function setFx(address arg1) {
    require msg.sender == owner
    fxAddress = arg1
}

function setWallet(address arg1) {
    require msg.sender == owner
    multiSigAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
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
        require msg.sender == csAddress
    stor19[address(arg1)] = 0
}

function authoriseAccount(address arg1) {
    if fxAddress != msg.sender:
        require msg.sender == csAddress
    stor19[address(arg1)] = 1
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
        require msg.sender == csAddress
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 19
        stor19[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function placeTokens(address arg1, uint256 arg2) {
    require msg.sender == fxAddress
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
    require tokenRaised + arg2 >= tokenRaised
    tokenRaised += arg2
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    emit TokenPurchase(0, arg2, arg1, arg1);
}

function finishSale() {
    require msg.sender == owner
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
    if not stor19[address(msg.sender)]:
        require freeForAll
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
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args msg.sender
        require ext_call.success
        if not ext_call.return_data[0]:
            numberOfPurchasers++
        require tokenRaised + (575 * msg.value) >= tokenRaised
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
            require weiRaised + msg.value >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args msg.sender
            require ext_call.success
            if not ext_call.return_data[0]:
                numberOfPurchasers++
            require tokenRaised + (500 * msg.value) >= tokenRaised
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
            require weiRaised + msg.value >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args msg.sender
            require ext_call.success
            if not ext_call.return_data[0]:
                numberOfPurchasers++
            require tokenRaised + (550 * msg.value) >= tokenRaised
            tokenRaised += 550 * msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args msg.sender, 550 * msg.value
            require ext_call.success
            emit TokenPurchase(msg.value, 550 * msg.value, msg.sender, msg.sender);
    call multiSigAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}



}
