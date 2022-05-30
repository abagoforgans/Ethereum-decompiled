contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
array of struct stor3;
address stor4;
address stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint8 stor13;
address stor13; offset 8

function _fallback() payable {
    stor7 = 5
    stor8 = 1657
    stor9 = 2000
    stor10 = 0
    stor11 = 0
    uint8(stor13.field_0) = 0
    require not msg.value
    stor1 = 0xadb41fcd3df9ff681680203a074271d3b3dae526
    stor2 = block.timestamp
    require code.data[4552 len 20]
    stor4 = code.data[4552 len 20]
    stor5 = stor4
    stor6 = 100
    stor3.length++
    if not stor3.length <= stor3.length + 1:
        idx = 2 * stor3.length + 1
        while 2 * stor3.length > idx:
            stor3[idx].field_0 = 0
            stor3[idx].field_256 = 0
            idx = idx + 2
            continue 
    stor3[stor3.length].field_0 = stor5
    stor3[stor3.length].field_256 = stor6
    address(stor13.field_8) = address(code.data[4572 len 32])
    stor0 = 0xafbec4d65bc7b116d85107fd05d912491029bf46
    return code.data[503 len 4037]
}



// =====================  Runtime code  =====================


address tokenAddress;
array of uint256 stor1;
uint256 startTime;
array of struct stor3;
address walletOwner;
address stor5;
uint256 stor6;
uint256 coinPercentage;
uint256 ratePerWei;
uint256 maxBuyLimit;
uint256 tokensSoldInThisRound;
uint256 totalTokensSold;
uint256 weiRaised;
uint8 stor13;
address stor13; offset 8

function walletOwner() {
    return walletOwner
}

function weiRaised() {
    return weiRaised
}

function totalTokensSold() {
    return totalTokensSold
}

function maxBuyLimit() {
    return maxBuyLimit
}

function coinPercentage() {
    return coinPercentage
}

function startTime() {
    return startTime
}

function tokensSoldInThisRound() {
    return tokensSoldInThisRound
}

function isCrowdsalePaused() {
    return bool(uint8(stor13.field_0))
}

function prevXRPCToken() {
    return address(stor1.length)
}

function ratePerWei() {
    return ratePerWei
}

function token() {
    return tokenAddress
}

function getCurrentICORoundInfo() {
    return maxBuyLimit, ratePerWei, tokensSoldInThisRound
}

function changeWalletOwner(address arg1) {
    require walletOwner == msg.sender
    walletOwner = arg1
}

function pauseCrowdsale() {
    require walletOwner == msg.sender
    uint8(stor13.field_0) = 1
    return 0
}

function resumeCrowdsale() {
    require walletOwner == msg.sender
    uint8(stor13.field_0) = 0
    return 0
}

function setPriceRate(uint256 arg1) {
    require walletOwner == msg.sender
    ratePerWei = arg1
    return 0
}

function changePartnerCoinPercentage(uint256 arg1) {
    require walletOwner == msg.sender
    coinPercentage = arg1
}

function setMaxBuyLimit(uint256 arg1) {
    require walletOwner == msg.sender
    maxBuyLimit = 10^18 * arg1
    return 0
}

function startNewICORound(uint256 arg1, uint256 arg2) {
    require walletOwner == msg.sender
    maxBuyLimit = 10^18 * arg1
    ratePerWei = arg2
    tokensSoldInThisRound = 0
    return 0
}

function tokensRemainingForSale() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args walletOwner
    require ext_call.success
    return ext_call.return_data[0]
}

function showMyTokenBalance() {
    require ext_code.size(tokenAddress)
    call tokenAddress.showMyTokenBalance(address arg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    return ext_call.return_data[0]
}

function checkOwnerShare(address arg1) {
    require walletOwner == msg.sender
    idx = 0
    while idx < stor3.length:
        mem[0] = 3
        if stor3[idx].field_0 != arg1:
            idx = idx + 1
            continue 
        require idx < stor3.length
        return uint256(stor3[idx].field_256)
    return 0
}

function airDropToOldTokenHolders(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require walletOwner == msg.sender
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _23 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 160] = 0
        mem[(32 * arg1.length) + 132] = address(_23)
        require ext_code.size(address(stor1.length))
        call address(stor1.length).0x70a08231 with:
             gas gas_remaining - 710 wei
            args address(_23)
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        if ext_call.return_data[0] > 0:
            require idx < arg1.length
            _30 = mem[(32 * idx) + 128]
            require idx < arg1.length
            require ext_code.size(address(stor1.length))
            call address(stor1.length).0x70a08231 with:
                 gas gas_remaining - 710 wei
                args address(mem[(32 * idx) + 128])
            require ext_call.success
            mem[(32 * arg1.length) + 128] = 0xc6c3bbe600000000000000000000000000000000000000000000000000000000
            mem[(32 * arg1.length) + 132] = walletOwner
            mem[(32 * arg1.length) + 164] = address(_30)
            mem[(32 * arg1.length) + 196] = ext_call.return_data[0]
            require ext_code.size(tokenAddress)
            call tokenAddress.mint(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining - 710 wei
                args walletOwner, address(_30), ext_call.return_data[0]
            require ext_call.success
        idx = idx + 1
        continue 
}

function updateOwnerShares(address[] arg1, uint256[] arg2) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + 160
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require address(stor13.field_8) == msg.sender
    require arg1.length == arg2.length
    idx = 0
    s = 0
    while idx < arg2.length:
        require idx < arg2.length
        idx = idx + 1
        s = s + mem[(32 * idx) + (32 * arg1.length) + 160]
        continue 
    require s * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length == 100
    stor3.length = 0
    mem[0] = 3
    idx = 0
    while 2 * stor3.length > idx:
        stor3[idx].field_0 = 0
        uint256(stor3[idx].field_256) = 0
        idx = idx + 2
        continue 
    idx = 0
    while idx < arg1.length:
        stor5 = 0
        stor6 = 0
        _35 = mem[64]
        mem[64] = mem[64] + 64
        require idx < mem[96]
        mem[_35] = mem[(32 * idx) + 140 len 20]
        require idx < mem[(32 * arg1.length) + 128]
        mem[_35 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
        stor5 = mem[_35 + 12 len 20]
        stor6 = mem[_35 + 32]
        stor3.length++
        if not stor3.length <= stor3.length + 1:
            s = sha3(3) + (2 * stor3.length + 1)
            while sha3(3) + (2 * stor3.length) > s:
                stor[s] = 0
                uint256(stor1[s]) = 0
                s = s + 2
                continue 
        mem[0] = 3
        stor3[stor3.length].field_0 = stor5
        uint256(stor3[stor3.length].field_256) = stor6
        idx = idx + 1
        continue 
}

function _fallback() payable {
    require bool(uint8(stor13.field_0)) != 1
    require msg.sender
    require msg.value
    require msg.value
    require ratePerWei * msg.value / msg.value == ratePerWei
    require (ratePerWei * msg.value) + tokensSoldInThisRound >= tokensSoldInThisRound
    require (ratePerWei * msg.value) + tokensSoldInThisRound <= maxBuyLimit
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.mint(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining - 710 wei
        args walletOwner, msg.sender, ratePerWei * msg.value
    require ext_call.success
    tokensSoldInThisRound += ratePerWei * msg.value
    emit TokenPurchase(msg.value, ratePerWei * msg.value, walletOwner, msg.sender);
    require (ratePerWei * msg.value) + totalTokensSold >= totalTokensSold
    totalTokensSold += ratePerWei * msg.value
    if ratePerWei * msg.value:
        require ratePerWei * msg.value
        require coinPercentage * ratePerWei * msg.value / ratePerWei * msg.value == coinPercentage
    require coinPercentage * ratePerWei * msg.value == (100 * coinPercentage * ratePerWei * msg.value / 100) + (coinPercentage * ratePerWei * msg.value % 100)
    s = 0
    s = 0
    idx = 0
    while idx < stor3.length:
        if msg.value:
            require msg.value
            require uint256(stor3[idx].field_256) * msg.value / msg.value == uint256(stor3[idx].field_256)
        require uint256(stor3[idx].field_256) * msg.value == (100 * uint256(stor3[idx].field_256) * msg.value / 100) + (uint256(stor3[idx].field_256) * msg.value % 100)
        require idx < stor3.length
        call stor3[idx].field_0 with:
           value uint256(stor3[idx].field_256) * msg.value / 100 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require idx < stor3.length
        mem[0] = 3
        if stor3[idx].field_0 != walletOwner:
            require idx < stor3.length
            mem[0] = 3
            if uint256(stor3[idx].field_256) > 0:
                require idx < stor3.length
                mem[0] = 3
                mem[96] = 0xc6c3bbe600000000000000000000000000000000000000000000000000000000
                mem[100] = walletOwner
                mem[132] = stor3[idx].field_0
                mem[164] = coinPercentage * ratePerWei * msg.value / 100
                require ext_code.size(tokenAddress)
                call tokenAddress.mint(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining - 710 wei
                    args walletOwner, stor3[idx].field_0, coinPercentage * ratePerWei * msg.value / 100
                require ext_call.success
        s = uint256(stor3[idx].field_256) * msg.value / 100
        s = uint256(stor3[idx].field_256)
        idx = idx + 1
        continue 
}

function buyTokens(address arg1) payable {
    require bool(uint8(stor13.field_0)) != 1
    require arg1
    require msg.value
    require msg.value
    require ratePerWei * msg.value / msg.value == ratePerWei
    require (ratePerWei * msg.value) + tokensSoldInThisRound >= tokensSoldInThisRound
    require (ratePerWei * msg.value) + tokensSoldInThisRound <= maxBuyLimit
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.mint(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining - 710 wei
        args walletOwner, address(arg1), ratePerWei * msg.value
    require ext_call.success
    tokensSoldInThisRound += ratePerWei * msg.value
    emit TokenPurchase(msg.value, ratePerWei * msg.value, walletOwner, arg1);
    require (ratePerWei * msg.value) + totalTokensSold >= totalTokensSold
    totalTokensSold += ratePerWei * msg.value
    if ratePerWei * msg.value:
        require ratePerWei * msg.value
        require coinPercentage * ratePerWei * msg.value / ratePerWei * msg.value == coinPercentage
    require coinPercentage * ratePerWei * msg.value == (100 * coinPercentage * ratePerWei * msg.value / 100) + (coinPercentage * ratePerWei * msg.value % 100)
    s = 0
    s = 0
    idx = 0
    while idx < stor3.length:
        if msg.value:
            require msg.value
            require uint256(stor3[idx].field_256) * msg.value / msg.value == uint256(stor3[idx].field_256)
        require uint256(stor3[idx].field_256) * msg.value == (100 * uint256(stor3[idx].field_256) * msg.value / 100) + (uint256(stor3[idx].field_256) * msg.value % 100)
        require idx < stor3.length
        call stor3[idx].field_0 with:
           value uint256(stor3[idx].field_256) * msg.value / 100 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require idx < stor3.length
        mem[0] = 3
        if stor3[idx].field_0 != walletOwner:
            require idx < stor3.length
            mem[0] = 3
            if uint256(stor3[idx].field_256) > 0:
                require idx < stor3.length
                mem[0] = 3
                mem[96] = 0xc6c3bbe600000000000000000000000000000000000000000000000000000000
                mem[100] = walletOwner
                mem[132] = stor3[idx].field_0
                mem[164] = coinPercentage * ratePerWei * msg.value / 100
                require ext_code.size(tokenAddress)
                call tokenAddress.mint(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining - 710 wei
                    args walletOwner, stor3[idx].field_0, coinPercentage * ratePerWei * msg.value / 100
                require ext_call.success
        s = uint256(stor3[idx].field_256) * msg.value / 100
        s = uint256(stor3[idx].field_256)
        idx = idx + 1
        continue 
}



}
