contract main {


// =======================  Init code  ======================


uint128 stor0; offset 160
address stor0;
address stor1;
uint256 stor2;
uint256 stor3;
address stor4;
address stor5;
uint256 stor6;
uint256 stor8;
array of struct stor9;

function _fallback() payable {
    stor6 = 100
    stor8 = 10^17
    require not msg.value
    address(stor0.field_0) = msg.sender
    require code.data[18116 len 32] >= block.timestamp
    require code.data[18160 len 20]
    require code.data[18192 len 20]
    stor9.length++
    if not stor9.length > stor9.length + 1:
        stor9[stor9.length].field_0 = 168 * 24 * 3600
        stor9[stor9.length].field_256 = 30
        stor9[stor9.length].field_512 = 2000 * 10^18
        stor9.length++
        stor9[stor9.length].field_0 = 336 * 24 * 3600
        stor9[stor9.length].field_256 = 20
        stor9[stor9.length].field_512 = 5000 * 10^18
        stor9.length++
        stor9[stor9.length].field_0 = 504 * 24 * 3600
        stor9[stor9.length].field_256 = 10
        stor9[stor9.length].field_512 = 10000 * 10^18
        stor9.length++
    else:
        idx = (3 * stor9.length) + 3
        while 3 * stor9.length > idx:
            stor9[idx].field_0 = 0
            stor9[idx].field_256 = 0
            stor9[idx].field_512 = 0
            idx = idx + 3
            continue 
        stor9[stor9.length].field_0 = 168 * 24 * 3600
        stor9[stor9.length].field_256 = 30
        stor9[stor9.length].field_512 = 2000 * 10^18
        stor9.length++
        if not stor9.length > stor9.length + 1:
            stor9[stor9.length].field_0 = 336 * 24 * 3600
            stor9[stor9.length].field_256 = 20
            stor9[stor9.length].field_512 = 5000 * 10^18
            stor9.length++
            stor9[stor9.length].field_0 = 504 * 24 * 3600
            stor9[stor9.length].field_256 = 10
            stor9[stor9.length].field_512 = 10000 * 10^18
            stor9.length++
        else:
            idx = (3 * stor9.length) + 3
            while 3 * stor9.length > idx:
                stor9[idx].field_0 = 0
                stor9[idx].field_256 = 0
                stor9[idx].field_512 = 0
                idx = idx + 3
                continue 
            stor9[stor9.length].field_0 = 336 * 24 * 3600
            stor9[stor9.length].field_256 = 20
            stor9[stor9.length].field_512 = 5000 * 10^18
            stor9.length++
            if not stor9.length > stor9.length + 1:
                stor9[stor9.length].field_0 = 504 * 24 * 3600
                stor9[stor9.length].field_256 = 10
                stor9[stor9.length].field_512 = 10000 * 10^18
                stor9.length++
            else:
                idx = (3 * stor9.length) + 3
                while 3 * stor9.length > idx:
                    stor9[idx].field_0 = 0
                    stor9[idx].field_256 = 0
                    stor9[idx].field_512 = 0
                    idx = idx + 3
                    continue 
                stor9[stor9.length].field_0 = 504 * 24 * 3600
                stor9[stor9.length].field_256 = 10
                stor9[stor9.length].field_512 = 10000 * 10^18
                stor9.length++
                if not stor9.length <= stor9.length + 1:
                    idx = (3 * stor9.length) + 3
                    while 3 * stor9.length > idx:
                        stor9[idx].field_0 = 0
                        stor9[idx].field_256 = 0
                        stor9[idx].field_512 = 0
                        idx = idx + 3
                        continue 
    stor9[stor9.length].field_0 = 1440 * 24 * 3600
    stor9[stor9.length].field_256 = 0
    stor9[stor9.length].field_512 = 25000 * 10^18
    create contract with 0 wei
                    code: code.data[12264 len 5852]
    require create.new_address
    stor1 = address(create.new_address)
    stor2 = code.data[18116 len 32]
    stor3 = stor2 + (1440 * 24 * 3600)
    stor4 = address(code.data[18148 len 32])
    stor5 = address(code.data[18180 len 32])
    Mask(96, 0, stor0.field_160) = 0
    return code.data[1182 len 11082]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
address tokenAddress;
uint256 mainSaleStartTime;
uint256 mainSaleEndTime;
address walletAddress;
address tokenWalletAddress;
uint256 rate;
uint256 weiRaised;
uint256 saleMinimumWei;
array of struct timeBonuses;

function mainSaleEndTime() {
    return mainSaleEndTime
}

function rate() {
    return rate
}

function weiRaised() {
    return weiRaised
}

function wallet() {
    return walletAddress
}

function isFinalised() {
    return bool(uint8(stor0.field_160))
}

function owner() {
    return owner
}

function saleMinimumWei() {
    return saleMinimumWei
}

function mainSaleStartTime() {
    return mainSaleStartTime
}

function tokenWallet() {
    return tokenWalletAddress
}

function timeBonuses(uint256 arg1) {
    require arg1 < timeBonuses.length
    return timeBonuses[arg1].field_0, timeBonuses[arg1].field_256, timeBonuses[arg1].field_512
}

function token() {
    return tokenAddress
}

function mainSaleHasEnded() {
    return (block.timestamp > mainSaleEndTime)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function fetchFunds() {
    require msg.sender == owner
    call walletAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function unpauseToken() {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0x3f4ba83a with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function setMainSaleDates(uint256 arg1) {
    require msg.sender == owner
    require not uint8(stor0.field_160)
    mainSaleStartTime = arg1
    mainSaleEndTime = mainSaleStartTime + (1440 * 24 * 3600)
    return 1
}

function pauseToken() {
    require msg.sender == owner
    require not uint8(stor0.field_160)
    require ext_code.size(tokenAddress)
    call tokenAddress.0x8456cb59 with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function transferTokenOwnership(address arg1) {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function finaliseCrowdsale() {
    require msg.sender == owner
    require not uint8(stor0.field_160)
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[0]:
        require ext_call.return_data[0]
        require 10 * ext_call.return_data[0] / ext_call.return_data[0] == 10
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args tokenWalletAddress, 10 * ext_call.return_data[0] / 89
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x7d64bcb4 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    call walletAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    emit FinalisedCrowdsale(ext_call.return_data[0], 10 * ext_call.return_data[0] / 89);
    Mask(96, 0, stor0.field_160) = 1
    return 1
}

function buyTokens(address arg1) payable {
    require not uint8(stor0.field_160)
    require arg1
    require msg.value
    require block.timestamp <= mainSaleEndTime
    require block.timestamp >= mainSaleStartTime
    require msg.value >= saleMinimumWei
    if msg.value:
        require msg.value
        require msg.value * rate / msg.value == rate
    require mainSaleStartTime <= block.timestamp
    idx = 0
    while idx < timeBonuses.length:
        mem[0] = 9
        require weiRaised + msg.value >= weiRaised
        if weiRaised + msg.value <= timeBonuses[idx].field_512:
            s = idx
            while s < timeBonuses.length:
                mem[0] = 9
                if block.timestamp - mainSaleStartTime > timeBonuses[s].field_0:
                    s = s + 1
                    continue 
                require s < timeBonuses.length
                if msg.value * rate:
                    require msg.value * rate
                    require msg.value * rate * timeBonuses[s].field_256 / msg.value * rate == timeBonuses[s].field_256
                require (msg.value * rate) + (msg.value * rate * timeBonuses[s].field_256 / 100) >= msg.value * rate
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), (msg.value * rate) + (msg.value * rate * timeBonuses[s].field_256 / 100)
                require ext_call.success
                emit TokenPurchase(msg.value, (msg.value * rate) + (msg.value * rate * timeBonuses[s].field_256 / 100), msg.sender, arg1);
        idx = idx + 1
        continue 
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), 0
    require ext_call.success
    emit TokenPurchase(msg.value, 0, msg.sender, arg1);
}

function _fallback() payable {
    require not uint8(stor0.field_160)
    require msg.sender
    require msg.value
    require block.timestamp <= mainSaleEndTime
    require block.timestamp >= mainSaleStartTime
    require msg.value >= saleMinimumWei
    if msg.value:
        require msg.value
        require msg.value * rate / msg.value == rate
    require mainSaleStartTime <= block.timestamp
    idx = 0
    while idx < timeBonuses.length:
        mem[0] = 9
        require weiRaised + msg.value >= weiRaised
        if weiRaised + msg.value <= timeBonuses[idx].field_512:
            s = idx
            while s < timeBonuses.length:
                mem[0] = 9
                if block.timestamp - mainSaleStartTime > timeBonuses[s].field_0:
                    s = s + 1
                    continue 
                require s < timeBonuses.length
                if msg.value * rate:
                    require msg.value * rate
                    require msg.value * rate * timeBonuses[s].field_256 / msg.value * rate == timeBonuses[s].field_256
                require (msg.value * rate) + (msg.value * rate * timeBonuses[s].field_256 / 100) >= msg.value * rate
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (msg.value * rate) + (msg.value * rate * timeBonuses[s].field_256 / 100)
                require ext_call.success
                emit TokenPurchase(msg.value, (msg.value * rate) + (msg.value * rate * timeBonuses[s].field_256 / 100), msg.sender, msg.sender);
        idx = idx + 1
        continue 
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args msg.sender, 0
    require ext_call.success
    emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
}



}
