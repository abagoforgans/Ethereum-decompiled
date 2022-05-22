contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
address stor4;
uint256 stor5;
uint256 stor6;
address stor8;
address stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
array of struct stor13;

function _fallback() payable {
    stor10 = 0
    require not msg.value
    require code.data[7428 len 20]
    require code.data[7332 len 20]
    stor2 = 7500
    stor1 = code.data[7428 len 20]
    stor0 = code.data[7332 len 20]
    require code.data[7396 len 20]
    stor4 = code.data[7396 len 20]
    require code.data[7448 len 32] >= block.timestamp
    require code.data[7480 len 32] >= code.data[7448 len 32]
    stor5 = code.data[7448 len 32]
    stor6 = code.data[7480 len 32]
    stor8 = msg.sender
    require code.data[7364 len 20]
    require block.timestamp < code.data[7512 len 32]
    require code.data[7512 len 32] < block.timestamp + (4800 * 24 * 3600)
    stor9 = code.data[7364 len 20]
    stor11 = code.data[7512 len 32]
    stor12 = 150000000 * 10^18
    stor13.length++
    if not stor13.length > stor13.length + 1:
        stor13[stor13.length].field_0 = 7500
        stor13[stor13.length].field_256 = 30000000 * 10^18
        stor13[stor13.length].field_512 = 30000000 * 10^18
        stor13.length++
        stor13[stor13.length].field_0 = 6900
        stor13[stor13.length].field_256 = 40000000 * 10^18
        stor13[stor13.length].field_512 = 70000000 * 10^18
        stor13.length++
    else:
        idx = (3 * stor13.length) + 3
        while 3 * stor13.length > idx:
            stor13[idx].field_0 = 0
            stor13[idx].field_256 = 0
            stor13[idx].field_512 = 0
            idx = idx + 3
            continue 
        stor13[stor13.length].field_0 = 7500
        stor13[stor13.length].field_256 = 30000000 * 10^18
        stor13[stor13.length].field_512 = 30000000 * 10^18
        stor13.length++
        if not stor13.length > stor13.length + 1:
            stor13[stor13.length].field_0 = 6900
            stor13[stor13.length].field_256 = 40000000 * 10^18
            stor13[stor13.length].field_512 = 70000000 * 10^18
            stor13.length++
        else:
            idx = (3 * stor13.length) + 3
            while 3 * stor13.length > idx:
                stor13[idx].field_0 = 0
                stor13[idx].field_256 = 0
                stor13[idx].field_512 = 0
                idx = idx + 3
                continue 
            stor13[stor13.length].field_0 = 6900
            stor13[stor13.length].field_256 = 40000000 * 10^18
            stor13[stor13.length].field_512 = 70000000 * 10^18
            stor13.length++
            if not stor13.length <= stor13.length + 1:
                idx = (3 * stor13.length) + 3
                while 3 * stor13.length > idx:
                    stor13[idx].field_0 = 0
                    stor13[idx].field_256 = 0
                    stor13[idx].field_512 = 0
                    idx = idx + 3
                    continue 
    stor13[stor13.length].field_0 = 6300
    stor13[stor13.length].field_256 = 80000000 * 10^18
    stor13[stor13.length].field_512 = 150000000 * 10^18
    return code.data[1481 len 5839]
}



// =====================  Runtime code  =====================


const sub_1fdc35bb(?) = 70000000 * 10^18

const sub_4b98cd8d(?) = 40000000 * 10^18

const sub_bae3262f(?) = 30000000 * 10^18

const sub_da3a2bda(?) = 80000000 * 10^18

const sub_e6303ce2(?) = 30000000 * 10^18

const sub_ec3b6698(?) = 150000000 * 10^18

const PHASE3_RATE = 6300

const PHASE1_RATE = 7500

const PHASE2_RATE = 6900


address tokenAddress;
address walletAddress;
uint256 rate;
uint256 weiRaised;
address tokenWalletAddress;
uint256 openingTime;
uint256 closingTime;
mapping of uint256 balances;
address owner;
address whitelistAddress;
uint256 tokensSold;
uint256 deliveryTime;
uint256 limit;
array of struct phases;

function balances(address arg1) {
    return balances[arg1]
}

function rate() {
    return rate
}

function phases(uint256 arg1) {
    require arg1 < phases.length
    return phases[arg1].field_0, phases[arg1].field_256, phases[arg1].field_512
}

function sub_3922a261(?) {
    require arg1 <= 2
    require arg1 < phases.length
    require phases[arg1].field_0 > 0
    return phases[arg1].field_0
}

function weiRaised() {
    return weiRaised
}

function deliveryTime() {
    return deliveryTime
}

function closingTime() {
    return closingTime
}

function tokensSold() {
    return tokensSold
}

function wallet() {
    return walletAddress
}

function owner() {
    return owner
}

function whitelist() {
    return whitelistAddress
}

function limit() {
    return limit
}

function sub_aae5c3b8(?) {
    require arg1 <= 2
    require arg1 < phases.length
    require phases[arg1].field_256 > 0
    return phases[arg1].field_256
}

function openingTime() {
    return openingTime
}

function tokenWallet() {
    return tokenWalletAddress
}

function token() {
    return tokenAddress
}

function hasClosed() {
    return (block.timestamp > closingTime)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function remainingTokens() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0xdd62ed3e with:
         gas gas_remaining wei
        args tokenWalletAddress, this.address
    require ext_call.success
    return ext_call.return_data[0]
}

function withdrawTokens() {
    require block.timestamp >= deliveryTime
    require block.timestamp > closingTime
    require balances[address(msg.sender)] > 0
    balances[address(msg.sender)] = 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args tokenWalletAddress, msg.sender, balances[address(msg.sender)]
    require ext_call.success
}

function getPhase() {
    require 0 < phases.length
    require uint256(phases.field_512) > 0
    if tokensSold <= uint256(phases.field_512):
        return 0
    require 1 < phases.length
    require uint256(phases.field_1280) > 0
    if tokensSold <= uint256(phases.field_1280):
        return 1
    require 2 < phases.length
    require uint256(phases.field_2048) > 0
    require tokensSold <= uint256(phases.field_2048)
    return 2
}

function buyTokens(address arg1) payable {
    require ext_code.size(whitelistAddress)
    call whitelistAddress.isWhitelisted(address arg1) with:
         gas gas_remaining wei
        args arg1
    require ext_call.success
    require ext_call.return_data[0]
    require block.timestamp >= openingTime
    require block.timestamp <= closingTime
    require arg1
    require msg.value
    require 0 < phases.length
    require uint256(phases.field_512) > 0
    if tokensSold > uint256(phases.field_512):
        require 1 < phases.length
        require uint256(phases.field_1280) > 0
        if tokensSold > uint256(phases.field_1280):
            require 2 < phases.length
            require uint256(phases.field_2048) > 0
            require tokensSold <= uint256(phases.field_2048)
            require 2 < phases.length
            require uint256(phases.field_1536) > 0
            if uint256(phases.field_1536):
                require uint256(phases.field_1536)
                require uint256(phases.field_1536) * msg.value / uint256(phases.field_1536) == msg.value
                require 2 < phases.length
                require uint256(phases.field_2048) > 0
                require tokensSold + (uint256(phases.field_1536) * msg.value) >= tokensSold
                if tokensSold + (uint256(phases.field_1536) * msg.value) <= uint256(phases.field_2048):
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require tokensSold + (uint256(phases.field_1536) * msg.value) >= tokensSold
                    tokensSold += uint256(phases.field_1536) * msg.value
                    require limit >= tokensSold
                    require balances[address(arg1)] + (uint256(phases.field_1536) * msg.value) >= balances[address(arg1)]
                    balances[address(arg1)] += uint256(phases.field_1536) * msg.value
                    emit TokenPurchase(msg.value, uint256(phases.field_1536) * msg.value, msg.sender, arg1);
                    call walletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                else:
                    require 2 < phases.length
                    require uint256(phases.field_2048) > 0
                    require tokensSold <= uint256(phases.field_2048)
                    revert
            else:
                require 2 < phases.length
                require uint256(phases.field_2048) > 0
                require tokensSold >= tokensSold
                if tokensSold <= uint256(phases.field_2048):
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require tokensSold >= tokensSold
                    require limit >= tokensSold
                    require balances[address(arg1)] >= balances[address(arg1)]
                    emit TokenPurchase(msg.value, 0, msg.sender, arg1);
                    call walletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                else:
                    require 2 < phases.length
                    require uint256(phases.field_2048) > 0
                    require tokensSold <= uint256(phases.field_2048)
                    revert
        else:
            require 1 < phases.length
            require uint256(phases.field_768) > 0
            if uint256(phases.field_768):
                require uint256(phases.field_768)
                require uint256(phases.field_768) * msg.value / uint256(phases.field_768) == msg.value
                require 1 < phases.length
                require uint256(phases.field_1280) > 0
                require tokensSold + (uint256(phases.field_768) * msg.value) >= tokensSold
                if tokensSold + (uint256(phases.field_768) * msg.value) <= uint256(phases.field_1280):
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require tokensSold + (uint256(phases.field_768) * msg.value) >= tokensSold
                    tokensSold += uint256(phases.field_768) * msg.value
                    require limit >= tokensSold
                    require balances[address(arg1)] + (uint256(phases.field_768) * msg.value) >= balances[address(arg1)]
                    balances[address(arg1)] += uint256(phases.field_768) * msg.value
                    emit TokenPurchase(msg.value, uint256(phases.field_768) * msg.value, msg.sender, arg1);
                    call walletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                else:
                    require 1 < phases.length
                    require uint256(phases.field_1280) > 0
                    require tokensSold <= uint256(phases.field_1280)
                    require uint256(phases.field_768)
                    require uint256(phases.field_1280) - tokensSold / uint256(phases.field_768) <= msg.value
                    require uint256(phases.field_1280) >= tokensSold
                    require 2 < phases.length
                    require uint256(phases.field_1536) > 0
                    if uint256(phases.field_1536):
                        require uint256(phases.field_1536)
                        require (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_1280) - tokensSold / uint256(phases.field_768) * uint256(phases.field_1536)) / uint256(phases.field_1536) == msg.value - (uint256(phases.field_1280) - tokensSold / uint256(phases.field_768))
                        require 2 < phases.length
                        require uint256(phases.field_2048) > 0
                        require uint256(phases.field_1280) + (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_1280) - tokensSold / uint256(phases.field_768) * uint256(phases.field_1536)) >= uint256(phases.field_1280)
                        if uint256(phases.field_1280) + (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_1280) - tokensSold / uint256(phases.field_768) * uint256(phases.field_1536)) <= uint256(phases.field_2048):
                            require uint256(phases.field_1280) - tokensSold >= 0
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_1280) - tokensSold / uint256(phases.field_768) * uint256(phases.field_1536)) + uint256(phases.field_1280) >= tokensSold
                            tokensSold = (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_1280) - tokensSold / uint256(phases.field_768) * uint256(phases.field_1536)) + uint256(phases.field_1280)
                            require limit >= tokensSold
                            require balances[address(arg1)] + (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_1280) - tokensSold / uint256(phases.field_768) * uint256(phases.field_1536)) + uint256(phases.field_1280) - tokensSold >= balances[address(arg1)]
                            balances[address(arg1)] = balances[address(arg1)] + (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_1280) - tokensSold / uint256(phases.field_768) * uint256(phases.field_1536)) + uint256(phases.field_1280) - tokensSold
                            emit TokenPurchase(msg.value, (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_1280) - tokensSold / uint256(phases.field_768) * uint256(phases.field_1536)) + uint256(phases.field_1280) - tokensSold, msg.sender, arg1);
                            call walletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                        else:
                            require 2 < phases.length
                            require uint256(phases.field_2048) > 0
                            require uint256(phases.field_1280) <= uint256(phases.field_2048)
                            revert
                    else:
                        require 2 < phases.length
                        require uint256(phases.field_2048) > 0
                        require uint256(phases.field_1280) >= uint256(phases.field_1280)
                        if uint256(phases.field_1280) <= uint256(phases.field_2048):
                            require uint256(phases.field_1280) - tokensSold >= 0
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require uint256(phases.field_1280) >= tokensSold
                            tokensSold = uint256(phases.field_1280)
                            require limit >= tokensSold
                            require balances[address(arg1)] + uint256(phases.field_1280) - tokensSold >= balances[address(arg1)]
                            balances[address(arg1)] = balances[address(arg1)] + uint256(phases.field_1280) - tokensSold
                            emit TokenPurchase(msg.value, uint256(phases.field_1280) - tokensSold, msg.sender, arg1);
                            call walletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                        else:
                            require 2 < phases.length
                            require uint256(phases.field_2048) > 0
                            require uint256(phases.field_1280) <= uint256(phases.field_2048)
                            revert
            else:
                require 1 < phases.length
                require uint256(phases.field_1280) > 0
                require tokensSold >= tokensSold
                if tokensSold <= uint256(phases.field_1280):
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require tokensSold >= tokensSold
                    require limit >= tokensSold
                    require balances[address(arg1)] >= balances[address(arg1)]
                    emit TokenPurchase(msg.value, 0, msg.sender, arg1);
                    call walletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                else:
                    require 1 < phases.length
                    require uint256(phases.field_1280) > 0
                    require tokensSold <= uint256(phases.field_1280)
                    require uint256(phases.field_768)
                    require uint256(phases.field_1280) - tokensSold / uint256(phases.field_768) <= msg.value
                    require uint256(phases.field_1280) >= tokensSold
                    require 2 < phases.length
                    require uint256(phases.field_1536) > 0
                    if uint256(phases.field_1536):
                        require uint256(phases.field_1536)
                        require (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_1280) - tokensSold / uint256(phases.field_768) * uint256(phases.field_1536)) / uint256(phases.field_1536) == msg.value - (uint256(phases.field_1280) - tokensSold / uint256(phases.field_768))
                        require 2 < phases.length
                        require uint256(phases.field_2048) > 0
                        require uint256(phases.field_1280) + (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_1280) - tokensSold / uint256(phases.field_768) * uint256(phases.field_1536)) >= uint256(phases.field_1280)
                        if uint256(phases.field_1280) + (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_1280) - tokensSold / uint256(phases.field_768) * uint256(phases.field_1536)) <= uint256(phases.field_2048):
                            require uint256(phases.field_1280) - tokensSold >= 0
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_1280) - tokensSold / uint256(phases.field_768) * uint256(phases.field_1536)) + uint256(phases.field_1280) >= tokensSold
                            tokensSold = (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_1280) - tokensSold / uint256(phases.field_768) * uint256(phases.field_1536)) + uint256(phases.field_1280)
                            require limit >= tokensSold
                            require balances[address(arg1)] + (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_1280) - tokensSold / uint256(phases.field_768) * uint256(phases.field_1536)) + uint256(phases.field_1280) - tokensSold >= balances[address(arg1)]
                            balances[address(arg1)] = balances[address(arg1)] + (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_1280) - tokensSold / uint256(phases.field_768) * uint256(phases.field_1536)) + uint256(phases.field_1280) - tokensSold
                            emit TokenPurchase(msg.value, (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_1280) - tokensSold / uint256(phases.field_768) * uint256(phases.field_1536)) + uint256(phases.field_1280) - tokensSold, msg.sender, arg1);
                            call walletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                        else:
                            require 2 < phases.length
                            require uint256(phases.field_2048) > 0
                            require uint256(phases.field_1280) <= uint256(phases.field_2048)
                            revert
                    else:
                        require 2 < phases.length
                        require uint256(phases.field_2048) > 0
                        require uint256(phases.field_1280) >= uint256(phases.field_1280)
                        if uint256(phases.field_1280) <= uint256(phases.field_2048):
                            require uint256(phases.field_1280) - tokensSold >= 0
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require uint256(phases.field_1280) >= tokensSold
                            tokensSold = uint256(phases.field_1280)
                            require limit >= tokensSold
                            require balances[address(arg1)] + uint256(phases.field_1280) - tokensSold >= balances[address(arg1)]
                            balances[address(arg1)] = balances[address(arg1)] + uint256(phases.field_1280) - tokensSold
                            emit TokenPurchase(msg.value, uint256(phases.field_1280) - tokensSold, msg.sender, arg1);
                            call walletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                        else:
                            require 2 < phases.length
                            require uint256(phases.field_2048) > 0
                            require uint256(phases.field_1280) <= uint256(phases.field_2048)
                            revert
    else:
        require 0 < phases.length
        require uint256(phases.field_0) > 0
        if uint256(phases.field_0):
            require uint256(phases.field_0)
            require uint256(phases.field_0) * msg.value / uint256(phases.field_0) == msg.value
            require 0 < phases.length
            require uint256(phases.field_512) > 0
            require tokensSold + (uint256(phases.field_0) * msg.value) >= tokensSold
            if tokensSold + (uint256(phases.field_0) * msg.value) <= uint256(phases.field_512):
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                require tokensSold + (uint256(phases.field_0) * msg.value) >= tokensSold
                tokensSold += uint256(phases.field_0) * msg.value
                require limit >= tokensSold
                require balances[address(arg1)] + (uint256(phases.field_0) * msg.value) >= balances[address(arg1)]
                balances[address(arg1)] += uint256(phases.field_0) * msg.value
                emit TokenPurchase(msg.value, uint256(phases.field_0) * msg.value, msg.sender, arg1);
                call walletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
            else:
                require 0 < phases.length
                require uint256(phases.field_512) > 0
                require tokensSold <= uint256(phases.field_512)
                require uint256(phases.field_0)
                require uint256(phases.field_512) - tokensSold / uint256(phases.field_0) <= msg.value
                require uint256(phases.field_512) >= tokensSold
                require 1 < phases.length
                require uint256(phases.field_768) > 0
                if uint256(phases.field_768):
                    require uint256(phases.field_768)
                    require (msg.value * uint256(phases.field_768)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_768)) / uint256(phases.field_768) == msg.value - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0))
                    require 1 < phases.length
                    require uint256(phases.field_1280) > 0
                    require uint256(phases.field_512) + (msg.value * uint256(phases.field_768)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_768)) >= uint256(phases.field_512)
                    if uint256(phases.field_512) + (msg.value * uint256(phases.field_768)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_768)) <= uint256(phases.field_1280):
                        require uint256(phases.field_512) - tokensSold >= 0
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require (msg.value * uint256(phases.field_768)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_768)) + uint256(phases.field_512) >= tokensSold
                        tokensSold = (msg.value * uint256(phases.field_768)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_768)) + uint256(phases.field_512)
                        require limit >= tokensSold
                        require balances[address(arg1)] + (msg.value * uint256(phases.field_768)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_768)) + uint256(phases.field_512) - tokensSold >= balances[address(arg1)]
                        balances[address(arg1)] = balances[address(arg1)] + (msg.value * uint256(phases.field_768)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_768)) + uint256(phases.field_512) - tokensSold
                        emit TokenPurchase(msg.value, (msg.value * uint256(phases.field_768)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_768)) + uint256(phases.field_512) - tokensSold, msg.sender, arg1);
                        call walletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    else:
                        require 1 < phases.length
                        require uint256(phases.field_1280) > 0
                        require uint256(phases.field_512) <= uint256(phases.field_1280)
                        require uint256(phases.field_768)
                        require uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768) <= msg.value - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0))
                        require uint256(phases.field_1280) >= uint256(phases.field_512)
                        require 2 < phases.length
                        require uint256(phases.field_1536) > 0
                        if uint256(phases.field_1536):
                            require uint256(phases.field_1536)
                            require (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_1536)) - (uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768) * uint256(phases.field_1536)) / uint256(phases.field_1536) == msg.value - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0)) - (uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768))
                            require 2 < phases.length
                            require uint256(phases.field_2048) > 0
                            require uint256(phases.field_1280) + (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_1536)) - (uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768) * uint256(phases.field_1536)) >= uint256(phases.field_1280)
                            if uint256(phases.field_1280) + (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_1536)) - (uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768) * uint256(phases.field_1536)) <= uint256(phases.field_2048):
                                require uint256(phases.field_1280) - uint256(phases.field_512) >= 0
                                require -tokensSold >= -uint256(phases.field_512)
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_1536)) - (uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768) * uint256(phases.field_1536)) + uint256(phases.field_1280) >= tokensSold
                                tokensSold = (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_1536)) - (uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768) * uint256(phases.field_1536)) + uint256(phases.field_1280)
                                require limit >= tokensSold
                                require balances[address(arg1)] + (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_1536)) - (uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768) * uint256(phases.field_1536)) + uint256(phases.field_1280) - tokensSold >= balances[address(arg1)]
                                balances[address(arg1)] = balances[address(arg1)] + (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_1536)) - (uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768) * uint256(phases.field_1536)) + uint256(phases.field_1280) - tokensSold
                                emit TokenPurchase(msg.value, (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_1536)) - (uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768) * uint256(phases.field_1536)) + uint256(phases.field_1280) - tokensSold, msg.sender, arg1);
                                call walletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                            else:
                                require 2 < phases.length
                                require uint256(phases.field_2048) > 0
                                require uint256(phases.field_1280) <= uint256(phases.field_2048)
                                revert
                        else:
                            require 2 < phases.length
                            require uint256(phases.field_2048) > 0
                            require uint256(phases.field_1280) >= uint256(phases.field_1280)
                            if uint256(phases.field_1280) <= uint256(phases.field_2048):
                                require uint256(phases.field_1280) - uint256(phases.field_512) >= 0
                                require -tokensSold >= -uint256(phases.field_512)
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require uint256(phases.field_1280) >= tokensSold
                                tokensSold = uint256(phases.field_1280)
                                require limit >= tokensSold
                                require balances[address(arg1)] + uint256(phases.field_1280) - tokensSold >= balances[address(arg1)]
                                balances[address(arg1)] = balances[address(arg1)] + uint256(phases.field_1280) - tokensSold
                                emit TokenPurchase(msg.value, uint256(phases.field_1280) - tokensSold, msg.sender, arg1);
                                call walletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                            else:
                                require 2 < phases.length
                                require uint256(phases.field_2048) > 0
                                require uint256(phases.field_1280) <= uint256(phases.field_2048)
                                revert
                else:
                    require 1 < phases.length
                    require uint256(phases.field_1280) > 0
                    require uint256(phases.field_512) >= uint256(phases.field_512)
                    if uint256(phases.field_512) <= uint256(phases.field_1280):
                        require uint256(phases.field_512) - tokensSold >= 0
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require uint256(phases.field_512) >= tokensSold
                        tokensSold = uint256(phases.field_512)
                        require limit >= tokensSold
                        require balances[address(arg1)] + uint256(phases.field_512) - tokensSold >= balances[address(arg1)]
                        balances[address(arg1)] = balances[address(arg1)] + uint256(phases.field_512) - tokensSold
                        emit TokenPurchase(msg.value, uint256(phases.field_512) - tokensSold, msg.sender, arg1);
                        call walletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    else:
                        require 1 < phases.length
                        require uint256(phases.field_1280) > 0
                        require uint256(phases.field_512) <= uint256(phases.field_1280)
                        require uint256(phases.field_768)
                        require uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768) <= msg.value - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0))
                        require uint256(phases.field_1280) >= uint256(phases.field_512)
                        require 2 < phases.length
                        require uint256(phases.field_1536) > 0
                        if uint256(phases.field_1536):
                            require uint256(phases.field_1536)
                            require (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_1536)) - (uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768) * uint256(phases.field_1536)) / uint256(phases.field_1536) == msg.value - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0)) - (uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768))
                            require 2 < phases.length
                            require uint256(phases.field_2048) > 0
                            require uint256(phases.field_1280) + (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_1536)) - (uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768) * uint256(phases.field_1536)) >= uint256(phases.field_1280)
                            if uint256(phases.field_1280) + (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_1536)) - (uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768) * uint256(phases.field_1536)) <= uint256(phases.field_2048):
                                require uint256(phases.field_1280) - uint256(phases.field_512) >= 0
                                require -tokensSold >= -uint256(phases.field_512)
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_1536)) - (uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768) * uint256(phases.field_1536)) + uint256(phases.field_1280) >= tokensSold
                                tokensSold = (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_1536)) - (uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768) * uint256(phases.field_1536)) + uint256(phases.field_1280)
                                require limit >= tokensSold
                                require balances[address(arg1)] + (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_1536)) - (uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768) * uint256(phases.field_1536)) + uint256(phases.field_1280) - tokensSold >= balances[address(arg1)]
                                balances[address(arg1)] = balances[address(arg1)] + (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_1536)) - (uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768) * uint256(phases.field_1536)) + uint256(phases.field_1280) - tokensSold
                                emit TokenPurchase(msg.value, (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_1536)) - (uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768) * uint256(phases.field_1536)) + uint256(phases.field_1280) - tokensSold, msg.sender, arg1);
                                call walletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                            else:
                                require 2 < phases.length
                                require uint256(phases.field_2048) > 0
                                require uint256(phases.field_1280) <= uint256(phases.field_2048)
                                revert
                        else:
                            require 2 < phases.length
                            require uint256(phases.field_2048) > 0
                            require uint256(phases.field_1280) >= uint256(phases.field_1280)
                            if uint256(phases.field_1280) <= uint256(phases.field_2048):
                                require uint256(phases.field_1280) - uint256(phases.field_512) >= 0
                                require -tokensSold >= -uint256(phases.field_512)
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require uint256(phases.field_1280) >= tokensSold
                                tokensSold = uint256(phases.field_1280)
                                require limit >= tokensSold
                                require balances[address(arg1)] + uint256(phases.field_1280) - tokensSold >= balances[address(arg1)]
                                balances[address(arg1)] = balances[address(arg1)] + uint256(phases.field_1280) - tokensSold
                                emit TokenPurchase(msg.value, uint256(phases.field_1280) - tokensSold, msg.sender, arg1);
                                call walletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                            else:
                                require 2 < phases.length
                                require uint256(phases.field_2048) > 0
                                require uint256(phases.field_1280) <= uint256(phases.field_2048)
                                revert
        else:
            require 0 < phases.length
            require uint256(phases.field_512) > 0
            require tokensSold >= tokensSold
            if tokensSold <= uint256(phases.field_512):
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                require tokensSold >= tokensSold
                require limit >= tokensSold
                require balances[address(arg1)] >= balances[address(arg1)]
                emit TokenPurchase(msg.value, 0, msg.sender, arg1);
                call walletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
            else:
                require 0 < phases.length
                require uint256(phases.field_512) > 0
                require tokensSold <= uint256(phases.field_512)
                require uint256(phases.field_0)
                require uint256(phases.field_512) - tokensSold / uint256(phases.field_0) <= msg.value
                require uint256(phases.field_512) >= tokensSold
                require 1 < phases.length
                require uint256(phases.field_768) > 0
                if uint256(phases.field_768):
                    require uint256(phases.field_768)
                    require (msg.value * uint256(phases.field_768)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_768)) / uint256(phases.field_768) == msg.value - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0))
                    require 1 < phases.length
                    require uint256(phases.field_1280) > 0
                    require uint256(phases.field_512) + (msg.value * uint256(phases.field_768)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_768)) >= uint256(phases.field_512)
                    if uint256(phases.field_512) + (msg.value * uint256(phases.field_768)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_768)) <= uint256(phases.field_1280):
                        require uint256(phases.field_512) - tokensSold >= 0
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require (msg.value * uint256(phases.field_768)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_768)) + uint256(phases.field_512) >= tokensSold
                        tokensSold = (msg.value * uint256(phases.field_768)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_768)) + uint256(phases.field_512)
                        require limit >= tokensSold
                        require balances[address(arg1)] + (msg.value * uint256(phases.field_768)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_768)) + uint256(phases.field_512) - tokensSold >= balances[address(arg1)]
                        balances[address(arg1)] = balances[address(arg1)] + (msg.value * uint256(phases.field_768)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_768)) + uint256(phases.field_512) - tokensSold
                        emit TokenPurchase(msg.value, (msg.value * uint256(phases.field_768)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_768)) + uint256(phases.field_512) - tokensSold, msg.sender, arg1);
                        call walletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    else:
                        require 1 < phases.length
                        require uint256(phases.field_1280) > 0
                        require uint256(phases.field_512) <= uint256(phases.field_1280)
                        require uint256(phases.field_768)
                        require uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768) <= msg.value - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0))
                        require uint256(phases.field_1280) >= uint256(phases.field_512)
                        require 2 < phases.length
                        require uint256(phases.field_1536) > 0
                        if uint256(phases.field_1536):
                            require uint256(phases.field_1536)
                            require (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_1536)) - (uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768) * uint256(phases.field_1536)) / uint256(phases.field_1536) == msg.value - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0)) - (uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768))
                            require 2 < phases.length
                            require uint256(phases.field_2048) > 0
                            require uint256(phases.field_1280) + (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_1536)) - (uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768) * uint256(phases.field_1536)) >= uint256(phases.field_1280)
                            if uint256(phases.field_1280) + (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_1536)) - (uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768) * uint256(phases.field_1536)) <= uint256(phases.field_2048):
                                require uint256(phases.field_1280) - uint256(phases.field_512) >= 0
                                require -tokensSold >= -uint256(phases.field_512)
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_1536)) - (uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768) * uint256(phases.field_1536)) + uint256(phases.field_1280) >= tokensSold
                                tokensSold = (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_1536)) - (uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768) * uint256(phases.field_1536)) + uint256(phases.field_1280)
                                require limit >= tokensSold
                                require balances[address(arg1)] + (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_1536)) - (uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768) * uint256(phases.field_1536)) + uint256(phases.field_1280) - tokensSold >= balances[address(arg1)]
                                balances[address(arg1)] = balances[address(arg1)] + (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_1536)) - (uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768) * uint256(phases.field_1536)) + uint256(phases.field_1280) - tokensSold
                                emit TokenPurchase(msg.value, (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_1536)) - (uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768) * uint256(phases.field_1536)) + uint256(phases.field_1280) - tokensSold, msg.sender, arg1);
                                call walletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                            else:
                                require 2 < phases.length
                                require uint256(phases.field_2048) > 0
                                require uint256(phases.field_1280) <= uint256(phases.field_2048)
                                revert
                        else:
                            require 2 < phases.length
                            require uint256(phases.field_2048) > 0
                            require uint256(phases.field_1280) >= uint256(phases.field_1280)
                            if uint256(phases.field_1280) <= uint256(phases.field_2048):
                                require uint256(phases.field_1280) - uint256(phases.field_512) >= 0
                                require -tokensSold >= -uint256(phases.field_512)
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require uint256(phases.field_1280) >= tokensSold
                                tokensSold = uint256(phases.field_1280)
                                require limit >= tokensSold
                                require balances[address(arg1)] + uint256(phases.field_1280) - tokensSold >= balances[address(arg1)]
                                balances[address(arg1)] = balances[address(arg1)] + uint256(phases.field_1280) - tokensSold
                                emit TokenPurchase(msg.value, uint256(phases.field_1280) - tokensSold, msg.sender, arg1);
                                call walletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                            else:
                                require 2 < phases.length
                                require uint256(phases.field_2048) > 0
                                require uint256(phases.field_1280) <= uint256(phases.field_2048)
                                revert
                else:
                    require 1 < phases.length
                    require uint256(phases.field_1280) > 0
                    require uint256(phases.field_512) >= uint256(phases.field_512)
                    if uint256(phases.field_512) <= uint256(phases.field_1280):
                        require uint256(phases.field_512) - tokensSold >= 0
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require uint256(phases.field_512) >= tokensSold
                        tokensSold = uint256(phases.field_512)
                        require limit >= tokensSold
                        require balances[address(arg1)] + uint256(phases.field_512) - tokensSold >= balances[address(arg1)]
                        balances[address(arg1)] = balances[address(arg1)] + uint256(phases.field_512) - tokensSold
                        emit TokenPurchase(msg.value, uint256(phases.field_512) - tokensSold, msg.sender, arg1);
                        call walletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    else:
                        require 1 < phases.length
                        require uint256(phases.field_1280) > 0
                        require uint256(phases.field_512) <= uint256(phases.field_1280)
                        require uint256(phases.field_768)
                        require uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768) <= msg.value - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0))
                        require uint256(phases.field_1280) >= uint256(phases.field_512)
                        require 2 < phases.length
                        require uint256(phases.field_1536) > 0
                        if uint256(phases.field_1536):
                            require uint256(phases.field_1536)
                            require (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_1536)) - (uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768) * uint256(phases.field_1536)) / uint256(phases.field_1536) == msg.value - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0)) - (uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768))
                            require 2 < phases.length
                            require uint256(phases.field_2048) > 0
                            require uint256(phases.field_1280) + (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_1536)) - (uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768) * uint256(phases.field_1536)) >= uint256(phases.field_1280)
                            if uint256(phases.field_1280) + (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_1536)) - (uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768) * uint256(phases.field_1536)) <= uint256(phases.field_2048):
                                require uint256(phases.field_1280) - uint256(phases.field_512) >= 0
                                require -tokensSold >= -uint256(phases.field_512)
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_1536)) - (uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768) * uint256(phases.field_1536)) + uint256(phases.field_1280) >= tokensSold
                                tokensSold = (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_1536)) - (uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768) * uint256(phases.field_1536)) + uint256(phases.field_1280)
                                require limit >= tokensSold
                                require balances[address(arg1)] + (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_1536)) - (uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768) * uint256(phases.field_1536)) + uint256(phases.field_1280) - tokensSold >= balances[address(arg1)]
                                balances[address(arg1)] = balances[address(arg1)] + (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_1536)) - (uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768) * uint256(phases.field_1536)) + uint256(phases.field_1280) - tokensSold
                                emit TokenPurchase(msg.value, (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_1536)) - (uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768) * uint256(phases.field_1536)) + uint256(phases.field_1280) - tokensSold, msg.sender, arg1);
                                call walletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                            else:
                                require 2 < phases.length
                                require uint256(phases.field_2048) > 0
                                require uint256(phases.field_1280) <= uint256(phases.field_2048)
                                revert
                        else:
                            require 2 < phases.length
                            require uint256(phases.field_2048) > 0
                            require uint256(phases.field_1280) >= uint256(phases.field_1280)
                            if uint256(phases.field_1280) <= uint256(phases.field_2048):
                                require uint256(phases.field_1280) - uint256(phases.field_512) >= 0
                                require -tokensSold >= -uint256(phases.field_512)
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require uint256(phases.field_1280) >= tokensSold
                                tokensSold = uint256(phases.field_1280)
                                require limit >= tokensSold
                                require balances[address(arg1)] + uint256(phases.field_1280) - tokensSold >= balances[address(arg1)]
                                balances[address(arg1)] = balances[address(arg1)] + uint256(phases.field_1280) - tokensSold
                                emit TokenPurchase(msg.value, uint256(phases.field_1280) - tokensSold, msg.sender, arg1);
                                call walletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                            else:
                                require 2 < phases.length
                                require uint256(phases.field_2048) > 0
                                require uint256(phases.field_1280) <= uint256(phases.field_2048)
                                revert
}

function _fallback() payable {
    require ext_code.size(whitelistAddress)
    call whitelistAddress.isWhitelisted(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    require block.timestamp >= openingTime
    require block.timestamp <= closingTime
    require msg.sender
    require msg.value
    require 0 < phases.length
    require uint256(phases.field_512) > 0
    if tokensSold > uint256(phases.field_512):
        require 1 < phases.length
        require uint256(phases.field_1280) > 0
        if tokensSold > uint256(phases.field_1280):
            require 2 < phases.length
            require uint256(phases.field_2048) > 0
            require tokensSold <= uint256(phases.field_2048)
            require 2 < phases.length
            require uint256(phases.field_1536) > 0
            if uint256(phases.field_1536):
                require uint256(phases.field_1536)
                require uint256(phases.field_1536) * msg.value / uint256(phases.field_1536) == msg.value
                require 2 < phases.length
                require uint256(phases.field_2048) > 0
                require tokensSold + (uint256(phases.field_1536) * msg.value) >= tokensSold
                if tokensSold + (uint256(phases.field_1536) * msg.value) <= uint256(phases.field_2048):
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require tokensSold + (uint256(phases.field_1536) * msg.value) >= tokensSold
                    tokensSold += uint256(phases.field_1536) * msg.value
                    require limit >= tokensSold
                    require balances[address(msg.sender)] + (uint256(phases.field_1536) * msg.value) >= balances[address(msg.sender)]
                    balances[address(msg.sender)] += uint256(phases.field_1536) * msg.value
                    emit TokenPurchase(msg.value, uint256(phases.field_1536) * msg.value, msg.sender, msg.sender);
                    call walletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                else:
                    require 2 < phases.length
                    require uint256(phases.field_2048) > 0
                    require tokensSold <= uint256(phases.field_2048)
                    revert
            else:
                require 2 < phases.length
                require uint256(phases.field_2048) > 0
                require tokensSold >= tokensSold
                if tokensSold <= uint256(phases.field_2048):
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require tokensSold >= tokensSold
                    require limit >= tokensSold
                    require balances[address(msg.sender)] >= balances[address(msg.sender)]
                    emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                    call walletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                else:
                    require 2 < phases.length
                    require uint256(phases.field_2048) > 0
                    require tokensSold <= uint256(phases.field_2048)
                    revert
        else:
            require 1 < phases.length
            require uint256(phases.field_768) > 0
            if uint256(phases.field_768):
                require uint256(phases.field_768)
                require uint256(phases.field_768) * msg.value / uint256(phases.field_768) == msg.value
                require 1 < phases.length
                require uint256(phases.field_1280) > 0
                require tokensSold + (uint256(phases.field_768) * msg.value) >= tokensSold
                if tokensSold + (uint256(phases.field_768) * msg.value) <= uint256(phases.field_1280):
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require tokensSold + (uint256(phases.field_768) * msg.value) >= tokensSold
                    tokensSold += uint256(phases.field_768) * msg.value
                    require limit >= tokensSold
                    require balances[address(msg.sender)] + (uint256(phases.field_768) * msg.value) >= balances[address(msg.sender)]
                    balances[address(msg.sender)] += uint256(phases.field_768) * msg.value
                    emit TokenPurchase(msg.value, uint256(phases.field_768) * msg.value, msg.sender, msg.sender);
                    call walletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                else:
                    require 1 < phases.length
                    require uint256(phases.field_1280) > 0
                    require tokensSold <= uint256(phases.field_1280)
                    require uint256(phases.field_768)
                    require uint256(phases.field_1280) - tokensSold / uint256(phases.field_768) <= msg.value
                    require uint256(phases.field_1280) >= tokensSold
                    require 2 < phases.length
                    require uint256(phases.field_1536) > 0
                    if uint256(phases.field_1536):
                        require uint256(phases.field_1536)
                        require (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_1280) - tokensSold / uint256(phases.field_768) * uint256(phases.field_1536)) / uint256(phases.field_1536) == msg.value - (uint256(phases.field_1280) - tokensSold / uint256(phases.field_768))
                        require 2 < phases.length
                        require uint256(phases.field_2048) > 0
                        require uint256(phases.field_1280) + (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_1280) - tokensSold / uint256(phases.field_768) * uint256(phases.field_1536)) >= uint256(phases.field_1280)
                        if uint256(phases.field_1280) + (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_1280) - tokensSold / uint256(phases.field_768) * uint256(phases.field_1536)) <= uint256(phases.field_2048):
                            require uint256(phases.field_1280) - tokensSold >= 0
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_1280) - tokensSold / uint256(phases.field_768) * uint256(phases.field_1536)) + uint256(phases.field_1280) >= tokensSold
                            tokensSold = (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_1280) - tokensSold / uint256(phases.field_768) * uint256(phases.field_1536)) + uint256(phases.field_1280)
                            require limit >= tokensSold
                            require balances[address(msg.sender)] + (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_1280) - tokensSold / uint256(phases.field_768) * uint256(phases.field_1536)) + uint256(phases.field_1280) - tokensSold >= balances[address(msg.sender)]
                            balances[address(msg.sender)] = balances[address(msg.sender)] + (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_1280) - tokensSold / uint256(phases.field_768) * uint256(phases.field_1536)) + uint256(phases.field_1280) - tokensSold
                            emit TokenPurchase(msg.value, (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_1280) - tokensSold / uint256(phases.field_768) * uint256(phases.field_1536)) + uint256(phases.field_1280) - tokensSold, msg.sender, msg.sender);
                            call walletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                        else:
                            require 2 < phases.length
                            require uint256(phases.field_2048) > 0
                            require uint256(phases.field_1280) <= uint256(phases.field_2048)
                            revert
                    else:
                        require 2 < phases.length
                        require uint256(phases.field_2048) > 0
                        require uint256(phases.field_1280) >= uint256(phases.field_1280)
                        if uint256(phases.field_1280) <= uint256(phases.field_2048):
                            require uint256(phases.field_1280) - tokensSold >= 0
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require uint256(phases.field_1280) >= tokensSold
                            tokensSold = uint256(phases.field_1280)
                            require limit >= tokensSold
                            require balances[address(msg.sender)] + uint256(phases.field_1280) - tokensSold >= balances[address(msg.sender)]
                            balances[address(msg.sender)] = balances[address(msg.sender)] + uint256(phases.field_1280) - tokensSold
                            emit TokenPurchase(msg.value, uint256(phases.field_1280) - tokensSold, msg.sender, msg.sender);
                            call walletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                        else:
                            require 2 < phases.length
                            require uint256(phases.field_2048) > 0
                            require uint256(phases.field_1280) <= uint256(phases.field_2048)
                            revert
            else:
                require 1 < phases.length
                require uint256(phases.field_1280) > 0
                require tokensSold >= tokensSold
                if tokensSold <= uint256(phases.field_1280):
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require tokensSold >= tokensSold
                    require limit >= tokensSold
                    require balances[address(msg.sender)] >= balances[address(msg.sender)]
                    emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                    call walletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                else:
                    require 1 < phases.length
                    require uint256(phases.field_1280) > 0
                    require tokensSold <= uint256(phases.field_1280)
                    require uint256(phases.field_768)
                    require uint256(phases.field_1280) - tokensSold / uint256(phases.field_768) <= msg.value
                    require uint256(phases.field_1280) >= tokensSold
                    require 2 < phases.length
                    require uint256(phases.field_1536) > 0
                    if uint256(phases.field_1536):
                        require uint256(phases.field_1536)
                        require (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_1280) - tokensSold / uint256(phases.field_768) * uint256(phases.field_1536)) / uint256(phases.field_1536) == msg.value - (uint256(phases.field_1280) - tokensSold / uint256(phases.field_768))
                        require 2 < phases.length
                        require uint256(phases.field_2048) > 0
                        require uint256(phases.field_1280) + (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_1280) - tokensSold / uint256(phases.field_768) * uint256(phases.field_1536)) >= uint256(phases.field_1280)
                        if uint256(phases.field_1280) + (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_1280) - tokensSold / uint256(phases.field_768) * uint256(phases.field_1536)) <= uint256(phases.field_2048):
                            require uint256(phases.field_1280) - tokensSold >= 0
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_1280) - tokensSold / uint256(phases.field_768) * uint256(phases.field_1536)) + uint256(phases.field_1280) >= tokensSold
                            tokensSold = (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_1280) - tokensSold / uint256(phases.field_768) * uint256(phases.field_1536)) + uint256(phases.field_1280)
                            require limit >= tokensSold
                            require balances[address(msg.sender)] + (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_1280) - tokensSold / uint256(phases.field_768) * uint256(phases.field_1536)) + uint256(phases.field_1280) - tokensSold >= balances[address(msg.sender)]
                            balances[address(msg.sender)] = balances[address(msg.sender)] + (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_1280) - tokensSold / uint256(phases.field_768) * uint256(phases.field_1536)) + uint256(phases.field_1280) - tokensSold
                            emit TokenPurchase(msg.value, (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_1280) - tokensSold / uint256(phases.field_768) * uint256(phases.field_1536)) + uint256(phases.field_1280) - tokensSold, msg.sender, msg.sender);
                            call walletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                        else:
                            require 2 < phases.length
                            require uint256(phases.field_2048) > 0
                            require uint256(phases.field_1280) <= uint256(phases.field_2048)
                            revert
                    else:
                        require 2 < phases.length
                        require uint256(phases.field_2048) > 0
                        require uint256(phases.field_1280) >= uint256(phases.field_1280)
                        if uint256(phases.field_1280) <= uint256(phases.field_2048):
                            require uint256(phases.field_1280) - tokensSold >= 0
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require uint256(phases.field_1280) >= tokensSold
                            tokensSold = uint256(phases.field_1280)
                            require limit >= tokensSold
                            require balances[address(msg.sender)] + uint256(phases.field_1280) - tokensSold >= balances[address(msg.sender)]
                            balances[address(msg.sender)] = balances[address(msg.sender)] + uint256(phases.field_1280) - tokensSold
                            emit TokenPurchase(msg.value, uint256(phases.field_1280) - tokensSold, msg.sender, msg.sender);
                            call walletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                        else:
                            require 2 < phases.length
                            require uint256(phases.field_2048) > 0
                            require uint256(phases.field_1280) <= uint256(phases.field_2048)
                            revert
    else:
        require 0 < phases.length
        require uint256(phases.field_0) > 0
        if uint256(phases.field_0):
            require uint256(phases.field_0)
            require uint256(phases.field_0) * msg.value / uint256(phases.field_0) == msg.value
            require 0 < phases.length
            require uint256(phases.field_512) > 0
            require tokensSold + (uint256(phases.field_0) * msg.value) >= tokensSold
            if tokensSold + (uint256(phases.field_0) * msg.value) <= uint256(phases.field_512):
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                require tokensSold + (uint256(phases.field_0) * msg.value) >= tokensSold
                tokensSold += uint256(phases.field_0) * msg.value
                require limit >= tokensSold
                require balances[address(msg.sender)] + (uint256(phases.field_0) * msg.value) >= balances[address(msg.sender)]
                balances[address(msg.sender)] += uint256(phases.field_0) * msg.value
                emit TokenPurchase(msg.value, uint256(phases.field_0) * msg.value, msg.sender, msg.sender);
                call walletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
            else:
                require 0 < phases.length
                require uint256(phases.field_512) > 0
                require tokensSold <= uint256(phases.field_512)
                require uint256(phases.field_0)
                require uint256(phases.field_512) - tokensSold / uint256(phases.field_0) <= msg.value
                require uint256(phases.field_512) >= tokensSold
                require 1 < phases.length
                require uint256(phases.field_768) > 0
                if uint256(phases.field_768):
                    require uint256(phases.field_768)
                    require (msg.value * uint256(phases.field_768)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_768)) / uint256(phases.field_768) == msg.value - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0))
                    require 1 < phases.length
                    require uint256(phases.field_1280) > 0
                    require uint256(phases.field_512) + (msg.value * uint256(phases.field_768)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_768)) >= uint256(phases.field_512)
                    if uint256(phases.field_512) + (msg.value * uint256(phases.field_768)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_768)) <= uint256(phases.field_1280):
                        require uint256(phases.field_512) - tokensSold >= 0
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require (msg.value * uint256(phases.field_768)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_768)) + uint256(phases.field_512) >= tokensSold
                        tokensSold = (msg.value * uint256(phases.field_768)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_768)) + uint256(phases.field_512)
                        require limit >= tokensSold
                        require balances[address(msg.sender)] + (msg.value * uint256(phases.field_768)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_768)) + uint256(phases.field_512) - tokensSold >= balances[address(msg.sender)]
                        balances[address(msg.sender)] = balances[address(msg.sender)] + (msg.value * uint256(phases.field_768)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_768)) + uint256(phases.field_512) - tokensSold
                        emit TokenPurchase(msg.value, (msg.value * uint256(phases.field_768)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_768)) + uint256(phases.field_512) - tokensSold, msg.sender, msg.sender);
                        call walletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    else:
                        require 1 < phases.length
                        require uint256(phases.field_1280) > 0
                        require uint256(phases.field_512) <= uint256(phases.field_1280)
                        require uint256(phases.field_768)
                        require uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768) <= msg.value - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0))
                        require uint256(phases.field_1280) >= uint256(phases.field_512)
                        require 2 < phases.length
                        require uint256(phases.field_1536) > 0
                        if uint256(phases.field_1536):
                            require uint256(phases.field_1536)
                            require (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_1536)) - (uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768) * uint256(phases.field_1536)) / uint256(phases.field_1536) == msg.value - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0)) - (uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768))
                            require 2 < phases.length
                            require uint256(phases.field_2048) > 0
                            require uint256(phases.field_1280) + (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_1536)) - (uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768) * uint256(phases.field_1536)) >= uint256(phases.field_1280)
                            if uint256(phases.field_1280) + (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_1536)) - (uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768) * uint256(phases.field_1536)) <= uint256(phases.field_2048):
                                require uint256(phases.field_1280) - uint256(phases.field_512) >= 0
                                require -tokensSold >= -uint256(phases.field_512)
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_1536)) - (uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768) * uint256(phases.field_1536)) + uint256(phases.field_1280) >= tokensSold
                                tokensSold = (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_1536)) - (uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768) * uint256(phases.field_1536)) + uint256(phases.field_1280)
                                require limit >= tokensSold
                                require balances[address(msg.sender)] + (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_1536)) - (uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768) * uint256(phases.field_1536)) + uint256(phases.field_1280) - tokensSold >= balances[address(msg.sender)]
                                balances[address(msg.sender)] = balances[address(msg.sender)] + (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_1536)) - (uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768) * uint256(phases.field_1536)) + uint256(phases.field_1280) - tokensSold
                                emit TokenPurchase(msg.value, (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_1536)) - (uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768) * uint256(phases.field_1536)) + uint256(phases.field_1280) - tokensSold, msg.sender, msg.sender);
                                call walletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                            else:
                                require 2 < phases.length
                                require uint256(phases.field_2048) > 0
                                require uint256(phases.field_1280) <= uint256(phases.field_2048)
                                revert
                        else:
                            require 2 < phases.length
                            require uint256(phases.field_2048) > 0
                            require uint256(phases.field_1280) >= uint256(phases.field_1280)
                            if uint256(phases.field_1280) <= uint256(phases.field_2048):
                                require uint256(phases.field_1280) - uint256(phases.field_512) >= 0
                                require -tokensSold >= -uint256(phases.field_512)
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require uint256(phases.field_1280) >= tokensSold
                                tokensSold = uint256(phases.field_1280)
                                require limit >= tokensSold
                                require balances[address(msg.sender)] + uint256(phases.field_1280) - tokensSold >= balances[address(msg.sender)]
                                balances[address(msg.sender)] = balances[address(msg.sender)] + uint256(phases.field_1280) - tokensSold
                                emit TokenPurchase(msg.value, uint256(phases.field_1280) - tokensSold, msg.sender, msg.sender);
                                call walletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                            else:
                                require 2 < phases.length
                                require uint256(phases.field_2048) > 0
                                require uint256(phases.field_1280) <= uint256(phases.field_2048)
                                revert
                else:
                    require 1 < phases.length
                    require uint256(phases.field_1280) > 0
                    require uint256(phases.field_512) >= uint256(phases.field_512)
                    if uint256(phases.field_512) <= uint256(phases.field_1280):
                        require uint256(phases.field_512) - tokensSold >= 0
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require uint256(phases.field_512) >= tokensSold
                        tokensSold = uint256(phases.field_512)
                        require limit >= tokensSold
                        require balances[address(msg.sender)] + uint256(phases.field_512) - tokensSold >= balances[address(msg.sender)]
                        balances[address(msg.sender)] = balances[address(msg.sender)] + uint256(phases.field_512) - tokensSold
                        emit TokenPurchase(msg.value, uint256(phases.field_512) - tokensSold, msg.sender, msg.sender);
                        call walletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    else:
                        require 1 < phases.length
                        require uint256(phases.field_1280) > 0
                        require uint256(phases.field_512) <= uint256(phases.field_1280)
                        require uint256(phases.field_768)
                        require uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768) <= msg.value - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0))
                        require uint256(phases.field_1280) >= uint256(phases.field_512)
                        require 2 < phases.length
                        require uint256(phases.field_1536) > 0
                        if uint256(phases.field_1536):
                            require uint256(phases.field_1536)
                            require (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_1536)) - (uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768) * uint256(phases.field_1536)) / uint256(phases.field_1536) == msg.value - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0)) - (uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768))
                            require 2 < phases.length
                            require uint256(phases.field_2048) > 0
                            require uint256(phases.field_1280) + (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_1536)) - (uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768) * uint256(phases.field_1536)) >= uint256(phases.field_1280)
                            if uint256(phases.field_1280) + (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_1536)) - (uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768) * uint256(phases.field_1536)) <= uint256(phases.field_2048):
                                require uint256(phases.field_1280) - uint256(phases.field_512) >= 0
                                require -tokensSold >= -uint256(phases.field_512)
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_1536)) - (uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768) * uint256(phases.field_1536)) + uint256(phases.field_1280) >= tokensSold
                                tokensSold = (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_1536)) - (uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768) * uint256(phases.field_1536)) + uint256(phases.field_1280)
                                require limit >= tokensSold
                                require balances[address(msg.sender)] + (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_1536)) - (uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768) * uint256(phases.field_1536)) + uint256(phases.field_1280) - tokensSold >= balances[address(msg.sender)]
                                balances[address(msg.sender)] = balances[address(msg.sender)] + (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_1536)) - (uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768) * uint256(phases.field_1536)) + uint256(phases.field_1280) - tokensSold
                                emit TokenPurchase(msg.value, (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_1536)) - (uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768) * uint256(phases.field_1536)) + uint256(phases.field_1280) - tokensSold, msg.sender, msg.sender);
                                call walletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                            else:
                                require 2 < phases.length
                                require uint256(phases.field_2048) > 0
                                require uint256(phases.field_1280) <= uint256(phases.field_2048)
                                revert
                        else:
                            require 2 < phases.length
                            require uint256(phases.field_2048) > 0
                            require uint256(phases.field_1280) >= uint256(phases.field_1280)
                            if uint256(phases.field_1280) <= uint256(phases.field_2048):
                                require uint256(phases.field_1280) - uint256(phases.field_512) >= 0
                                require -tokensSold >= -uint256(phases.field_512)
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require uint256(phases.field_1280) >= tokensSold
                                tokensSold = uint256(phases.field_1280)
                                require limit >= tokensSold
                                require balances[address(msg.sender)] + uint256(phases.field_1280) - tokensSold >= balances[address(msg.sender)]
                                balances[address(msg.sender)] = balances[address(msg.sender)] + uint256(phases.field_1280) - tokensSold
                                emit TokenPurchase(msg.value, uint256(phases.field_1280) - tokensSold, msg.sender, msg.sender);
                                call walletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                            else:
                                require 2 < phases.length
                                require uint256(phases.field_2048) > 0
                                require uint256(phases.field_1280) <= uint256(phases.field_2048)
                                revert
        else:
            require 0 < phases.length
            require uint256(phases.field_512) > 0
            require tokensSold >= tokensSold
            if tokensSold <= uint256(phases.field_512):
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                require tokensSold >= tokensSold
                require limit >= tokensSold
                require balances[address(msg.sender)] >= balances[address(msg.sender)]
                emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                call walletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
            else:
                require 0 < phases.length
                require uint256(phases.field_512) > 0
                require tokensSold <= uint256(phases.field_512)
                require uint256(phases.field_0)
                require uint256(phases.field_512) - tokensSold / uint256(phases.field_0) <= msg.value
                require uint256(phases.field_512) >= tokensSold
                require 1 < phases.length
                require uint256(phases.field_768) > 0
                if uint256(phases.field_768):
                    require uint256(phases.field_768)
                    require (msg.value * uint256(phases.field_768)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_768)) / uint256(phases.field_768) == msg.value - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0))
                    require 1 < phases.length
                    require uint256(phases.field_1280) > 0
                    require uint256(phases.field_512) + (msg.value * uint256(phases.field_768)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_768)) >= uint256(phases.field_512)
                    if uint256(phases.field_512) + (msg.value * uint256(phases.field_768)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_768)) <= uint256(phases.field_1280):
                        require uint256(phases.field_512) - tokensSold >= 0
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require (msg.value * uint256(phases.field_768)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_768)) + uint256(phases.field_512) >= tokensSold
                        tokensSold = (msg.value * uint256(phases.field_768)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_768)) + uint256(phases.field_512)
                        require limit >= tokensSold
                        require balances[address(msg.sender)] + (msg.value * uint256(phases.field_768)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_768)) + uint256(phases.field_512) - tokensSold >= balances[address(msg.sender)]
                        balances[address(msg.sender)] = balances[address(msg.sender)] + (msg.value * uint256(phases.field_768)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_768)) + uint256(phases.field_512) - tokensSold
                        emit TokenPurchase(msg.value, (msg.value * uint256(phases.field_768)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_768)) + uint256(phases.field_512) - tokensSold, msg.sender, msg.sender);
                        call walletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    else:
                        require 1 < phases.length
                        require uint256(phases.field_1280) > 0
                        require uint256(phases.field_512) <= uint256(phases.field_1280)
                        require uint256(phases.field_768)
                        require uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768) <= msg.value - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0))
                        require uint256(phases.field_1280) >= uint256(phases.field_512)
                        require 2 < phases.length
                        require uint256(phases.field_1536) > 0
                        if uint256(phases.field_1536):
                            require uint256(phases.field_1536)
                            require (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_1536)) - (uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768) * uint256(phases.field_1536)) / uint256(phases.field_1536) == msg.value - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0)) - (uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768))
                            require 2 < phases.length
                            require uint256(phases.field_2048) > 0
                            require uint256(phases.field_1280) + (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_1536)) - (uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768) * uint256(phases.field_1536)) >= uint256(phases.field_1280)
                            if uint256(phases.field_1280) + (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_1536)) - (uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768) * uint256(phases.field_1536)) <= uint256(phases.field_2048):
                                require uint256(phases.field_1280) - uint256(phases.field_512) >= 0
                                require -tokensSold >= -uint256(phases.field_512)
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_1536)) - (uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768) * uint256(phases.field_1536)) + uint256(phases.field_1280) >= tokensSold
                                tokensSold = (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_1536)) - (uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768) * uint256(phases.field_1536)) + uint256(phases.field_1280)
                                require limit >= tokensSold
                                require balances[address(msg.sender)] + (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_1536)) - (uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768) * uint256(phases.field_1536)) + uint256(phases.field_1280) - tokensSold >= balances[address(msg.sender)]
                                balances[address(msg.sender)] = balances[address(msg.sender)] + (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_1536)) - (uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768) * uint256(phases.field_1536)) + uint256(phases.field_1280) - tokensSold
                                emit TokenPurchase(msg.value, (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_1536)) - (uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768) * uint256(phases.field_1536)) + uint256(phases.field_1280) - tokensSold, msg.sender, msg.sender);
                                call walletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                            else:
                                require 2 < phases.length
                                require uint256(phases.field_2048) > 0
                                require uint256(phases.field_1280) <= uint256(phases.field_2048)
                                revert
                        else:
                            require 2 < phases.length
                            require uint256(phases.field_2048) > 0
                            require uint256(phases.field_1280) >= uint256(phases.field_1280)
                            if uint256(phases.field_1280) <= uint256(phases.field_2048):
                                require uint256(phases.field_1280) - uint256(phases.field_512) >= 0
                                require -tokensSold >= -uint256(phases.field_512)
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require uint256(phases.field_1280) >= tokensSold
                                tokensSold = uint256(phases.field_1280)
                                require limit >= tokensSold
                                require balances[address(msg.sender)] + uint256(phases.field_1280) - tokensSold >= balances[address(msg.sender)]
                                balances[address(msg.sender)] = balances[address(msg.sender)] + uint256(phases.field_1280) - tokensSold
                                emit TokenPurchase(msg.value, uint256(phases.field_1280) - tokensSold, msg.sender, msg.sender);
                                call walletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                            else:
                                require 2 < phases.length
                                require uint256(phases.field_2048) > 0
                                require uint256(phases.field_1280) <= uint256(phases.field_2048)
                                revert
                else:
                    require 1 < phases.length
                    require uint256(phases.field_1280) > 0
                    require uint256(phases.field_512) >= uint256(phases.field_512)
                    if uint256(phases.field_512) <= uint256(phases.field_1280):
                        require uint256(phases.field_512) - tokensSold >= 0
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require uint256(phases.field_512) >= tokensSold
                        tokensSold = uint256(phases.field_512)
                        require limit >= tokensSold
                        require balances[address(msg.sender)] + uint256(phases.field_512) - tokensSold >= balances[address(msg.sender)]
                        balances[address(msg.sender)] = balances[address(msg.sender)] + uint256(phases.field_512) - tokensSold
                        emit TokenPurchase(msg.value, uint256(phases.field_512) - tokensSold, msg.sender, msg.sender);
                        call walletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    else:
                        require 1 < phases.length
                        require uint256(phases.field_1280) > 0
                        require uint256(phases.field_512) <= uint256(phases.field_1280)
                        require uint256(phases.field_768)
                        require uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768) <= msg.value - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0))
                        require uint256(phases.field_1280) >= uint256(phases.field_512)
                        require 2 < phases.length
                        require uint256(phases.field_1536) > 0
                        if uint256(phases.field_1536):
                            require uint256(phases.field_1536)
                            require (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_1536)) - (uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768) * uint256(phases.field_1536)) / uint256(phases.field_1536) == msg.value - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0)) - (uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768))
                            require 2 < phases.length
                            require uint256(phases.field_2048) > 0
                            require uint256(phases.field_1280) + (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_1536)) - (uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768) * uint256(phases.field_1536)) >= uint256(phases.field_1280)
                            if uint256(phases.field_1280) + (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_1536)) - (uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768) * uint256(phases.field_1536)) <= uint256(phases.field_2048):
                                require uint256(phases.field_1280) - uint256(phases.field_512) >= 0
                                require -tokensSold >= -uint256(phases.field_512)
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_1536)) - (uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768) * uint256(phases.field_1536)) + uint256(phases.field_1280) >= tokensSold
                                tokensSold = (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_1536)) - (uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768) * uint256(phases.field_1536)) + uint256(phases.field_1280)
                                require limit >= tokensSold
                                require balances[address(msg.sender)] + (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_1536)) - (uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768) * uint256(phases.field_1536)) + uint256(phases.field_1280) - tokensSold >= balances[address(msg.sender)]
                                balances[address(msg.sender)] = balances[address(msg.sender)] + (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_1536)) - (uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768) * uint256(phases.field_1536)) + uint256(phases.field_1280) - tokensSold
                                emit TokenPurchase(msg.value, (msg.value * uint256(phases.field_1536)) - (uint256(phases.field_512) - tokensSold / uint256(phases.field_0) * uint256(phases.field_1536)) - (uint256(phases.field_1280) - uint256(phases.field_512) / uint256(phases.field_768) * uint256(phases.field_1536)) + uint256(phases.field_1280) - tokensSold, msg.sender, msg.sender);
                                call walletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                            else:
                                require 2 < phases.length
                                require uint256(phases.field_2048) > 0
                                require uint256(phases.field_1280) <= uint256(phases.field_2048)
                                revert
                        else:
                            require 2 < phases.length
                            require uint256(phases.field_2048) > 0
                            require uint256(phases.field_1280) >= uint256(phases.field_1280)
                            if uint256(phases.field_1280) <= uint256(phases.field_2048):
                                require uint256(phases.field_1280) - uint256(phases.field_512) >= 0
                                require -tokensSold >= -uint256(phases.field_512)
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require uint256(phases.field_1280) >= tokensSold
                                tokensSold = uint256(phases.field_1280)
                                require limit >= tokensSold
                                require balances[address(msg.sender)] + uint256(phases.field_1280) - tokensSold >= balances[address(msg.sender)]
                                balances[address(msg.sender)] = balances[address(msg.sender)] + uint256(phases.field_1280) - tokensSold
                                emit TokenPurchase(msg.value, uint256(phases.field_1280) - tokensSold, msg.sender, msg.sender);
                                call walletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                            else:
                                require 2 < phases.length
                                require uint256(phases.field_2048) > 0
                                require uint256(phases.field_1280) <= uint256(phases.field_2048)
                                revert
}



}
