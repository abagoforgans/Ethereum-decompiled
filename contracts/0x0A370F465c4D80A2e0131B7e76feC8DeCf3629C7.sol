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
uint256 stor8;
address stor9;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint128 stor19; offset 160

function _fallback() payable {
    stor17 = 0
    stor19 = 0
    require not msg.value
    stor0 = msg.sender
    stor4 = 422535 * 3600
    stor5 = 423624 * 24 * 3600
    stor6 = 422904 * 24 * 3600
    stor7 = 423264 * 24 * 3600
    stor8 = 423624 * 24 * 3600
    stor9 = 0xf651e2409120f1fbb0e47812d759e883b5b68a60
    create contract with 0 wei
                    code: code.data[7976 len 5517]
    require create.new_address
    stor1 = address(create.new_address)
    require ext_code.size(stor1)
    call stor1.0x313ce567 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor2 = ext_call.return_data[0]
    stor3 = 10^stor2
    stor15 = 100 * 10^6 * stor3
    stor16 = 40 * 10^6 * stor3
    return code.data[607 len 7369]
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
uint256 tier3Timestamp;
address hardwareWalletAddress;
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
address adminAddress;
mapping of uint8 stor20;

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

function tier3Timestamp() {
    return tier3Timestamp
}

function authorised(address arg1) {
    return bool(stor20[arg1])
}

function HardwareWallet() {
    return hardwareWalletAddress
}

function tier2Timestamp() {
    return tier2Timestamp
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

function Admin() {
    return adminAddress
}

function setCS(address arg1) {
    require msg.sender == owner
    csAddress = arg1
}

function setAdmin(address arg1) {
    require msg.sender == owner
    adminAddress = arg1
}

function setWallet(address arg1) {
    require msg.sender == owner
    hardwareWalletAddress = arg1
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
    if adminAddress != msg.sender:
        require msg.sender == csAddress
    stor20[address(arg1)] = 0
}

function authoriseAccount(address arg1) {
    if adminAddress != msg.sender:
        require msg.sender == csAddress
    stor20[address(arg1)] = 1
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
    if adminAddress != msg.sender:
        require msg.sender == csAddress
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 20
        stor20[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function placeTokens(address arg1, uint256 arg2) {
    require msg.sender == adminAddress
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
    emit TokenPurchase(0, arg2, arg1);
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
            args hardwareWalletAddress, maxTokens - tokenRaised
        require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.finishMinting() with:
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
    if not stor20[address(msg.sender)]:
        require freeForAll
    require block.timestamp >= startTimestamp
    require block.timestamp <= endTimestamp
    require tokenRaised < tokensForSale
    require hardwareWalletAddress
    require msg.value > 10^15
    require tokensForSale > tokenRaised
    if block.timestamp < tier1Timestamp:
        if msg.value:
            require msg.value
            require 100 * msg.value / msg.value == 100
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args msg.sender
        require ext_call.success
        if not ext_call.return_data[0]:
            numberOfPurchasers++
        require tokenRaised + (100 * msg.value) >= tokenRaised
        tokenRaised += 100 * msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, 100 * msg.value
        require ext_call.success
        emit TokenPurchase(msg.value, 100 * msg.value, msg.sender);
    else:
        minContribution = 50 * 10^18
        maxContribution = 5000 * 10^18
        if block.timestamp < tier2Timestamp:
            if msg.value:
                require msg.value
                require 67 * msg.value / msg.value == 67
            require weiRaised + msg.value >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args msg.sender
            require ext_call.success
            if not ext_call.return_data[0]:
                numberOfPurchasers++
            require tokenRaised + (67 * msg.value) >= tokenRaised
            tokenRaised += 67 * msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args msg.sender, 67 * msg.value
            require ext_call.success
            emit TokenPurchase(msg.value, 67 * msg.value, msg.sender);
        else:
            minContribution = 25 * 10^18
            maxContribution = 2500 * 10^18
            if block.timestamp < tier3Timestamp:
                if msg.value:
                    require msg.value
                    require 50 * msg.value / msg.value == 50
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x70a08231 with:
                     gas gas_remaining - 710 wei
                    args msg.sender
                require ext_call.success
                if not ext_call.return_data[0]:
                    numberOfPurchasers++
                require tokenRaised + (50 * msg.value) >= tokenRaised
                tokenRaised += 50 * msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 50 * msg.value
                require ext_call.success
                emit TokenPurchase(msg.value, 50 * msg.value, msg.sender);
            else:
                minContribution = 10^18
                maxContribution = 100 * 10^18
                if msg.value:
                    require msg.value
                    require 40 * msg.value / msg.value == 40
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x70a08231 with:
                     gas gas_remaining - 710 wei
                    args msg.sender
                require ext_call.success
                if not ext_call.return_data[0]:
                    numberOfPurchasers++
                require tokenRaised + (40 * msg.value) >= tokenRaised
                tokenRaised += 40 * msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 40 * msg.value
                require ext_call.success
                emit TokenPurchase(msg.value, 40 * msg.value, msg.sender);
    call hardwareWalletAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}



}
