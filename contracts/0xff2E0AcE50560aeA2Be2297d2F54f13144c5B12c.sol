contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
address stor2;
address stor3;
address stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor14;

function _fallback() payable {
    stor1 = 12 * 3600
    stor6 = 0
    stor7 = 0
    stor8 = 0
    stor9 = 0
    stor10 = 0
    stor14 = 10^10
    require not msg.value
    stor0 = msg.sender
    require code.data[7832 len 20]
    require code.data[7864 len 20]
    require code.data[7896 len 20]
    require code.data[7916 len 32]
    stor2 = code.data[7832 len 20]
    stor3 = code.data[7864 len 20]
    stor4 = code.data[7896 len 20]
    stor5 = code.data[7916 len 32]
    return code.data[530 len 7290]
}



// =====================  Runtime code  =====================


const MAX_PRICE = 2 * 10^11

const DURATION = (12 * 3600)

const FUNDING_GOAL = 1000 * 10^18

const MIN_INVESTEMENT = 10^17

const INVESTOR_TOKENS = 10^12

const MIN_PRICE = 10^10

const TOTAL_TOKENS_FOR_PRICE = 10^12


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
uint256 icoDuration;
address tokenAddress;
address multisigWalletAddress;
address teamWalletAddress;
uint256 startsAt;
uint256 tokensSold;
uint256 weiRaised;
uint256 investorCount;
uint256 loadedRefund;
uint256 weiRefunded;
uint8 stor11;
mapping of uint256 investedAmountOf;
mapping of uint256 tokenAmountOf;
uint256 tokenPrice;

function investedAmountOf(address arg1) {
    return investedAmountOf[arg1]
}

function icoDuration() {
    return icoDuration
}

function weiRaised() {
    return weiRaised
}

function tokensSold() {
    return tokensSold
}

function teamWallet() {
    return teamWalletAddress
}

function weiRefunded() {
    return weiRefunded
}

function loadedRefund() {
    return loadedRefund
}

function tokenPrice() {
    return tokenPrice
}

function owner() {
    return owner
}

function multisigWallet() {
    return multisigWalletAddress
}

function tokenAmountOf(address arg1) {
    return tokenAmountOf[arg1]
}

function startsAt() {
    return startsAt
}

function finalized() {
    return bool(stor11)
}

function halted() {
    return bool(uint8(stor0.field_160))
}

function investorCount() {
    return investorCount
}

function token() {
    return tokenAddress
}

function kill() {
    require msg.sender == owner
    selfdestruct(owner)
}

function isMinimumGoalReached() {
    return weiRaised >= 1000 * 10^18
}

function halt() {
    require msg.sender == owner
    Mask(96, 0, stor0.field_160) = 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function prolongate() {
    require msg.sender == owner
    require icoDuration < 24 * 3600
    icoDuration += 12 * 3600
}

function unhalt() {
    require msg.sender == owner
    require uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 0
}

function sub_d35ac136(?) {
    require msg.sender == owner
    require arg1 > 0
    require arg2 > 0
    require arg3 > 0
    tokensSold = arg1
    weiRaised = arg2
    investorCount = arg3
    tokenPrice = arg4
}

function isCrowdsaleFull() {
    if tokenPrice >= 2 * 10^11:
        return tokenPrice >= 2 * 10^11
    require ext_code.size(tokenAddress)
    call tokenAddress.0x313ce567 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require 10^12 * 10^ext_call.return_data[0] / 10^12 == 10^ext_call.return_data[0]
    if tokensSold >= 10^12 * 10^ext_call.return_data[0]:
        return tokensSold >= 10^12 * 10^ext_call.return_data[0]
    return (block.timestamp > startsAt + icoDuration)
}

function getState() {
    if stor11:
        return 5
    if not tokenAddress:
        return 1
    if not multisigWalletAddress:
        return 1
    if block.timestamp >= startsAt:
        if block.timestamp < startsAt + icoDuration:
            if tokenPrice < 2 * 10^11:
                require ext_code.size(tokenAddress)
                call tokenAddress.0x313ce567 with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require 10^12 * 10^ext_call.return_data[0] / 10^12 == 10^ext_call.return_data[0]
                if tokensSold < 10^12 * 10^ext_call.return_data[0]:
                    if block.timestamp <= startsAt + icoDuration:
                        return 2
    if weiRaised >= 1000 * 10^18:
        return 3
    if weiRaised <= 0:
        return 4
    if loadedRefund < weiRaised:
        return 4
    return 6
}

function loadRefund() payable {
    require not stor11
    require tokenAddress
    require multisigWalletAddress
    if block.timestamp >= startsAt:
        if block.timestamp < startsAt + icoDuration:
            if tokenPrice < 2 * 10^11:
                require ext_code.size(tokenAddress)
                call tokenAddress.0x313ce567 with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require 10^12 * 10^ext_call.return_data[0] / 10^12 == 10^ext_call.return_data[0]
                if tokensSold < 10^12 * 10^ext_call.return_data[0]:
                    require block.timestamp > startsAt + icoDuration
    require weiRaised < 1000 * 10^18
    if weiRaised > 0:
        require loadedRefund < weiRaised
    require msg.value
    require loadedRefund + msg.value >= loadedRefund
    require loadedRefund + msg.value >= msg.value
    loadedRefund += msg.value
}

function refund() {
    require not stor11
    require tokenAddress
    require multisigWalletAddress
    if block.timestamp >= startsAt:
        if block.timestamp < startsAt + icoDuration:
            if tokenPrice < 2 * 10^11:
                require ext_code.size(tokenAddress)
                call tokenAddress.0x313ce567 with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require 10^12 * 10^ext_call.return_data[0] / 10^12 == 10^ext_call.return_data[0]
                if tokensSold < 10^12 * 10^ext_call.return_data[0]:
                    require block.timestamp > startsAt + icoDuration
    require weiRaised < 1000 * 10^18
    require weiRaised > 0
    require loadedRefund >= weiRaised
    require investedAmountOf[address(msg.sender)]
    investedAmountOf[address(msg.sender)] = 0
    require weiRefunded + investedAmountOf[address(msg.sender)] >= weiRefunded
    require weiRefunded + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
    weiRefunded += investedAmountOf[address(msg.sender)]
    emit Refund(msg.sender, investedAmountOf[address(msg.sender)]);
    call msg.sender with:
       value investedAmountOf[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function finalize() {
    require not stor11
    require tokenAddress
    require multisigWalletAddress
    if block.timestamp < startsAt:
        if weiRaised < 1000 * 10^18:
            require weiRaised > 0
            require loadedRefund >= weiRaised
            revert
        else:
            require msg.sender == owner
            require not uint8(stor0.field_160)
            require not stor11
            stor11 = 1
            require ext_code.size(tokenAddress)
            call tokenAddress.0x313ce567 with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require 10^12 * 10^ext_call.return_data[0] / 10^12 == 10^ext_call.return_data[0]
            if 10^12 * 10^ext_call.return_data[0] <= tokensSold:
                require ext_code.size(tokenAddress)
                call tokenAddress.releaseTokenTransfer() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
            else:
                require tokensSold <= 10^12 * 10^ext_call.return_data[0]
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args teamWalletAddress, (10^12 * 10^ext_call.return_data[0]) - tokensSold
                require ext_call.success
                require ext_code.size(tokenAddress)
                call tokenAddress.releaseTokenTransfer() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
    else:
        if block.timestamp >= startsAt + icoDuration:
            if weiRaised < 1000 * 10^18:
                require weiRaised > 0
                require loadedRefund >= weiRaised
                revert
            else:
                require msg.sender == owner
                require not uint8(stor0.field_160)
                require not stor11
                stor11 = 1
                require ext_code.size(tokenAddress)
                call tokenAddress.0x313ce567 with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require 10^12 * 10^ext_call.return_data[0] / 10^12 == 10^ext_call.return_data[0]
                if 10^12 * 10^ext_call.return_data[0] <= tokensSold:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.releaseTokenTransfer() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                else:
                    require tokensSold <= 10^12 * 10^ext_call.return_data[0]
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args teamWalletAddress, (10^12 * 10^ext_call.return_data[0]) - tokensSold
                    require ext_call.success
                    require ext_code.size(tokenAddress)
                    call tokenAddress.releaseTokenTransfer() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
        else:
            if tokenPrice >= 2 * 10^11:
                if weiRaised < 1000 * 10^18:
                    require weiRaised > 0
                    require loadedRefund >= weiRaised
                    revert
                else:
                    require msg.sender == owner
                    require not uint8(stor0.field_160)
                    require not stor11
                    stor11 = 1
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x313ce567 with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require 10^12 * 10^ext_call.return_data[0] / 10^12 == 10^ext_call.return_data[0]
                    if 10^12 * 10^ext_call.return_data[0] <= tokensSold:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.releaseTokenTransfer() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                    else:
                        require tokensSold <= 10^12 * 10^ext_call.return_data[0]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args teamWalletAddress, (10^12 * 10^ext_call.return_data[0]) - tokensSold
                        require ext_call.success
                        require ext_code.size(tokenAddress)
                        call tokenAddress.releaseTokenTransfer() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
            else:
                require ext_code.size(tokenAddress)
                call tokenAddress.0x313ce567 with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require 10^12 * 10^ext_call.return_data[0] / 10^12 == 10^ext_call.return_data[0]
                if tokensSold >= 10^12 * 10^ext_call.return_data[0]:
                    if weiRaised < 1000 * 10^18:
                        require weiRaised > 0
                        require loadedRefund >= weiRaised
                        revert
                    else:
                        require msg.sender == owner
                        require not uint8(stor0.field_160)
                        require not stor11
                        stor11 = 1
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x313ce567 with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require 10^12 * 10^ext_call.return_data[0] / 10^12 == 10^ext_call.return_data[0]
                        if 10^12 * 10^ext_call.return_data[0] <= tokensSold:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.releaseTokenTransfer() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                        else:
                            require tokensSold <= 10^12 * 10^ext_call.return_data[0]
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args teamWalletAddress, (10^12 * 10^ext_call.return_data[0]) - tokensSold
                            require ext_call.success
                            require ext_code.size(tokenAddress)
                            call tokenAddress.releaseTokenTransfer() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                else:
                    require block.timestamp > startsAt + icoDuration
                    if weiRaised < 1000 * 10^18:
                        require weiRaised > 0
                        require loadedRefund >= weiRaised
                        revert
                    else:
                        require msg.sender == owner
                        require not uint8(stor0.field_160)
                        require not stor11
                        stor11 = 1
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x313ce567 with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require 10^12 * 10^ext_call.return_data[0] / 10^12 == 10^ext_call.return_data[0]
                        if 10^12 * 10^ext_call.return_data[0] <= tokensSold:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.releaseTokenTransfer() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                        else:
                            require tokensSold <= 10^12 * 10^ext_call.return_data[0]
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args teamWalletAddress, (10^12 * 10^ext_call.return_data[0]) - tokensSold
                            require ext_call.success
                            require ext_code.size(tokenAddress)
                            call tokenAddress.releaseTokenTransfer() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
}

function invest(address arg1) payable {
    require not uint8(stor0.field_160)
    require not stor11
    require tokenAddress
    require multisigWalletAddress
    if block.timestamp < startsAt:
        require weiRaised < 1000 * 10^18
        require weiRaised > 0
        require loadedRefund >= weiRaised
        revert
    else:
        if block.timestamp >= startsAt + icoDuration:
            require weiRaised < 1000 * 10^18
            require weiRaised > 0
            require loadedRefund >= weiRaised
            revert
        else:
            if tokenPrice >= 2 * 10^11:
                require weiRaised < 1000 * 10^18
                require weiRaised > 0
                require loadedRefund >= weiRaised
                revert
            else:
                require ext_code.size(tokenAddress)
                call tokenAddress.0x313ce567 with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require 10^12 * 10^ext_call.return_data[0] / 10^12 == 10^ext_call.return_data[0]
                if tokensSold >= 10^12 * 10^ext_call.return_data[0]:
                    require weiRaised < 1000 * 10^18
                    require weiRaised > 0
                    require loadedRefund >= weiRaised
                    revert
                else:
                    if block.timestamp > startsAt + icoDuration:
                        require weiRaised < 1000 * 10^18
                        require weiRaised > 0
                        require loadedRefund >= weiRaised
                        revert
                    else:
                        require msg.value >= 10^17
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x313ce567 with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        if not msg.value:
                            require tokenPrice > 0
                            require tokenPrice
                            require msg.value * 10^ext_call.return_data[0] == (tokenPrice * msg.value * 10^ext_call.return_data[0] / tokenPrice) + (msg.value * 10^ext_call.return_data[0] % tokenPrice)
                            require msg.value * 10^ext_call.return_data[0] / tokenPrice > 0
                            if investedAmountOf[address(arg1)]:
                                require investedAmountOf[address(arg1)] + msg.value >= investedAmountOf[address(arg1)]
                                require investedAmountOf[address(arg1)] + msg.value >= msg.value
                                investedAmountOf[address(arg1)] += msg.value
                                require tokenAmountOf[address(arg1)] + (msg.value * 10^ext_call.return_data[0] / tokenPrice) >= tokenAmountOf[address(arg1)]
                                require tokenAmountOf[address(arg1)] + (msg.value * 10^ext_call.return_data[0] / tokenPrice) >= msg.value * 10^ext_call.return_data[0] / tokenPrice
                                tokenAmountOf[address(arg1)] += msg.value * 10^ext_call.return_data[0] / tokenPrice
                                require weiRaised + msg.value >= weiRaised
                                require weiRaised + msg.value >= msg.value
                                weiRaised += msg.value
                                require tokensSold + (msg.value * 10^ext_call.return_data[0] / tokenPrice) >= tokensSold
                                require tokensSold + (msg.value * 10^ext_call.return_data[0] / tokenPrice) >= msg.value * 10^ext_call.return_data[0] / tokenPrice
                                tokensSold += msg.value * 10^ext_call.return_data[0] / tokenPrice
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x313ce567 with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require tokensSold == (10^12 * tokensSold / 10^12) + (tokensSold % 10^12)
                                require 10^ext_call.return_data[0]
                                require 2 * 10^11 >= -(19 * 10^10 * tokensSold / 10^12) - (19 * 10^10 * 10^ext_call.return_data[0]) / 10^ext_call.return_data[0]
                                emit PriceChanged(tokenPrice, ((19 * 10^10 * tokensSold / 10^12) - (19 * 10^10 * 10^ext_call.return_data[0]) / 10^ext_call.return_data[0]) + 2 * 10^11);
                                tokenPrice = ((19 * 10^10 * tokensSold / 10^12) - (19 * 10^10 * 10^ext_call.return_data[0]) / 10^ext_call.return_data[0]) + 2 * 10^11
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), msg.value * 10^ext_call.return_data[0] / tokenPrice
                                require ext_call.success
                                if weiRaised > 1000 * 10^18:
                                    if msg.value + -weiRaised - 1000 * 10^18 <= 0:
                                        if not msg.value:
                                            require 32 * msg.value == (100 * 32 * msg.value / 100) + (32 * msg.value % 100)
                                            call teamWalletAddress with:
                                               value 32 * msg.value / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require 32 * msg.value / 100 <= msg.value
                                            call multisigWalletAddress with:
                                               value msg.value - (32 * msg.value / 100) wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(address(arg1), msg.value, msg.value * 10^ext_call.return_data[0] / tokenPrice);
                                        else:
                                            require msg.value
                                            require 32 * msg.value / msg.value == 32
                                            require 32 * msg.value == (100 * 32 * msg.value / 100) + (32 * msg.value % 100)
                                            call teamWalletAddress with:
                                               value 32 * msg.value / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require 32 * msg.value / 100 <= msg.value
                                            call multisigWalletAddress with:
                                               value msg.value - (32 * msg.value / 100) wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(address(arg1), msg.value, msg.value * 10^ext_call.return_data[0] / tokenPrice);
                                    else:
                                        call multisigWalletAddress with:
                                           value msg.value + -weiRaised - 1000 * 10^18 wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        require msg.value + -weiRaised - 1000 * 10^18 <= msg.value
                                        if not weiRaised + 1000 * 10^18:
                                            require 32 * weiRaised + 1000 * 10^18 == (100 * 32 * weiRaised + 1000 * 10^18 / 100) + (32 * weiRaised + 1000 * 10^18 % 100)
                                            call teamWalletAddress with:
                                               value 32 * weiRaised + 1000 * 10^18 / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require 32 * weiRaised + 1000 * 10^18 / 100 <= weiRaised + 1000 * 10^18
                                            call multisigWalletAddress with:
                                               value weiRaised + -(32 * weiRaised + 1000 * 10^18 / 100) + 1000 * 10^18 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(address(arg1), weiRaised + 1000 * 10^18, msg.value * 10^ext_call.return_data[0] / tokenPrice);
                                        else:
                                            require weiRaised + 1000 * 10^18
                                            require 32 * weiRaised + 1000 * 10^18 / weiRaised + 1000 * 10^18 == 32
                                            require 32 * weiRaised + 1000 * 10^18 == (100 * 32 * weiRaised + 1000 * 10^18 / 100) + (32 * weiRaised + 1000 * 10^18 % 100)
                                            call teamWalletAddress with:
                                               value 32 * weiRaised + 1000 * 10^18 / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require 32 * weiRaised + 1000 * 10^18 / 100 <= weiRaised + 1000 * 10^18
                                            call multisigWalletAddress with:
                                               value weiRaised + -(32 * weiRaised + 1000 * 10^18 / 100) + 1000 * 10^18 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(address(arg1), weiRaised + 1000 * 10^18, msg.value * 10^ext_call.return_data[0] / tokenPrice);
                                else:
                                    call multisigWalletAddress with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    emit Invested(address(arg1), msg.value, msg.value * 10^ext_call.return_data[0] / tokenPrice);
                            else:
                                investorCount++
                                require investedAmountOf[address(arg1)] + msg.value >= investedAmountOf[address(arg1)]
                                require investedAmountOf[address(arg1)] + msg.value >= msg.value
                                investedAmountOf[address(arg1)] += msg.value
                                require tokenAmountOf[address(arg1)] + (msg.value * 10^ext_call.return_data[0] / tokenPrice) >= tokenAmountOf[address(arg1)]
                                require tokenAmountOf[address(arg1)] + (msg.value * 10^ext_call.return_data[0] / tokenPrice) >= msg.value * 10^ext_call.return_data[0] / tokenPrice
                                tokenAmountOf[address(arg1)] += msg.value * 10^ext_call.return_data[0] / tokenPrice
                                require weiRaised + msg.value >= weiRaised
                                require weiRaised + msg.value >= msg.value
                                weiRaised += msg.value
                                require tokensSold + (msg.value * 10^ext_call.return_data[0] / tokenPrice) >= tokensSold
                                require tokensSold + (msg.value * 10^ext_call.return_data[0] / tokenPrice) >= msg.value * 10^ext_call.return_data[0] / tokenPrice
                                tokensSold += msg.value * 10^ext_call.return_data[0] / tokenPrice
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x313ce567 with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require tokensSold == (10^12 * tokensSold / 10^12) + (tokensSold % 10^12)
                                require 10^ext_call.return_data[0]
                                require 2 * 10^11 >= -(19 * 10^10 * tokensSold / 10^12) - (19 * 10^10 * 10^ext_call.return_data[0]) / 10^ext_call.return_data[0]
                                emit PriceChanged(tokenPrice, ((19 * 10^10 * tokensSold / 10^12) - (19 * 10^10 * 10^ext_call.return_data[0]) / 10^ext_call.return_data[0]) + 2 * 10^11);
                                tokenPrice = ((19 * 10^10 * tokensSold / 10^12) - (19 * 10^10 * 10^ext_call.return_data[0]) / 10^ext_call.return_data[0]) + 2 * 10^11
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), msg.value * 10^ext_call.return_data[0] / tokenPrice
                                require ext_call.success
                                if weiRaised > 1000 * 10^18:
                                    if msg.value + -weiRaised - 1000 * 10^18 <= 0:
                                        if not msg.value:
                                            require 32 * msg.value == (100 * 32 * msg.value / 100) + (32 * msg.value % 100)
                                            call teamWalletAddress with:
                                               value 32 * msg.value / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require 32 * msg.value / 100 <= msg.value
                                            call multisigWalletAddress with:
                                               value msg.value - (32 * msg.value / 100) wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(address(arg1), msg.value, msg.value * 10^ext_call.return_data[0] / tokenPrice);
                                        else:
                                            require msg.value
                                            require 32 * msg.value / msg.value == 32
                                            require 32 * msg.value == (100 * 32 * msg.value / 100) + (32 * msg.value % 100)
                                            call teamWalletAddress with:
                                               value 32 * msg.value / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require 32 * msg.value / 100 <= msg.value
                                            call multisigWalletAddress with:
                                               value msg.value - (32 * msg.value / 100) wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(address(arg1), msg.value, msg.value * 10^ext_call.return_data[0] / tokenPrice);
                                    else:
                                        call multisigWalletAddress with:
                                           value msg.value + -weiRaised - 1000 * 10^18 wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        require msg.value + -weiRaised - 1000 * 10^18 <= msg.value
                                        if not weiRaised + 1000 * 10^18:
                                            require 32 * weiRaised + 1000 * 10^18 == (100 * 32 * weiRaised + 1000 * 10^18 / 100) + (32 * weiRaised + 1000 * 10^18 % 100)
                                            call teamWalletAddress with:
                                               value 32 * weiRaised + 1000 * 10^18 / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require 32 * weiRaised + 1000 * 10^18 / 100 <= weiRaised + 1000 * 10^18
                                            call multisigWalletAddress with:
                                               value weiRaised + -(32 * weiRaised + 1000 * 10^18 / 100) + 1000 * 10^18 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(address(arg1), weiRaised + 1000 * 10^18, msg.value * 10^ext_call.return_data[0] / tokenPrice);
                                        else:
                                            require weiRaised + 1000 * 10^18
                                            require 32 * weiRaised + 1000 * 10^18 / weiRaised + 1000 * 10^18 == 32
                                            require 32 * weiRaised + 1000 * 10^18 == (100 * 32 * weiRaised + 1000 * 10^18 / 100) + (32 * weiRaised + 1000 * 10^18 % 100)
                                            call teamWalletAddress with:
                                               value 32 * weiRaised + 1000 * 10^18 / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require 32 * weiRaised + 1000 * 10^18 / 100 <= weiRaised + 1000 * 10^18
                                            call multisigWalletAddress with:
                                               value weiRaised + -(32 * weiRaised + 1000 * 10^18 / 100) + 1000 * 10^18 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(address(arg1), weiRaised + 1000 * 10^18, msg.value * 10^ext_call.return_data[0] / tokenPrice);
                                else:
                                    call multisigWalletAddress with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    emit Invested(address(arg1), msg.value, msg.value * 10^ext_call.return_data[0] / tokenPrice);
                        else:
                            require msg.value
                            require msg.value * 10^ext_call.return_data[0] / msg.value == 10^ext_call.return_data[0]
                            require tokenPrice > 0
                            require tokenPrice
                            require msg.value * 10^ext_call.return_data[0] == (tokenPrice * msg.value * 10^ext_call.return_data[0] / tokenPrice) + (msg.value * 10^ext_call.return_data[0] % tokenPrice)
                            require msg.value * 10^ext_call.return_data[0] / tokenPrice > 0
                            if investedAmountOf[address(arg1)]:
                                require investedAmountOf[address(arg1)] + msg.value >= investedAmountOf[address(arg1)]
                                require investedAmountOf[address(arg1)] + msg.value >= msg.value
                                investedAmountOf[address(arg1)] += msg.value
                                require tokenAmountOf[address(arg1)] + (msg.value * 10^ext_call.return_data[0] / tokenPrice) >= tokenAmountOf[address(arg1)]
                                require tokenAmountOf[address(arg1)] + (msg.value * 10^ext_call.return_data[0] / tokenPrice) >= msg.value * 10^ext_call.return_data[0] / tokenPrice
                                tokenAmountOf[address(arg1)] += msg.value * 10^ext_call.return_data[0] / tokenPrice
                                require weiRaised + msg.value >= weiRaised
                                require weiRaised + msg.value >= msg.value
                                weiRaised += msg.value
                                require tokensSold + (msg.value * 10^ext_call.return_data[0] / tokenPrice) >= tokensSold
                                require tokensSold + (msg.value * 10^ext_call.return_data[0] / tokenPrice) >= msg.value * 10^ext_call.return_data[0] / tokenPrice
                                tokensSold += msg.value * 10^ext_call.return_data[0] / tokenPrice
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x313ce567 with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require tokensSold == (10^12 * tokensSold / 10^12) + (tokensSold % 10^12)
                                require 10^ext_call.return_data[0]
                                require 2 * 10^11 >= -(19 * 10^10 * tokensSold / 10^12) - (19 * 10^10 * 10^ext_call.return_data[0]) / 10^ext_call.return_data[0]
                                emit PriceChanged(tokenPrice, ((19 * 10^10 * tokensSold / 10^12) - (19 * 10^10 * 10^ext_call.return_data[0]) / 10^ext_call.return_data[0]) + 2 * 10^11);
                                tokenPrice = ((19 * 10^10 * tokensSold / 10^12) - (19 * 10^10 * 10^ext_call.return_data[0]) / 10^ext_call.return_data[0]) + 2 * 10^11
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), msg.value * 10^ext_call.return_data[0] / tokenPrice
                                require ext_call.success
                                if weiRaised > 1000 * 10^18:
                                    if msg.value + -weiRaised - 1000 * 10^18 <= 0:
                                        if not msg.value:
                                            require 32 * msg.value == (100 * 32 * msg.value / 100) + (32 * msg.value % 100)
                                            call teamWalletAddress with:
                                               value 32 * msg.value / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require 32 * msg.value / 100 <= msg.value
                                            call multisigWalletAddress with:
                                               value msg.value - (32 * msg.value / 100) wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(address(arg1), msg.value, msg.value * 10^ext_call.return_data[0] / tokenPrice);
                                        else:
                                            require msg.value
                                            require 32 * msg.value / msg.value == 32
                                            require 32 * msg.value == (100 * 32 * msg.value / 100) + (32 * msg.value % 100)
                                            call teamWalletAddress with:
                                               value 32 * msg.value / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require 32 * msg.value / 100 <= msg.value
                                            call multisigWalletAddress with:
                                               value msg.value - (32 * msg.value / 100) wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(address(arg1), msg.value, msg.value * 10^ext_call.return_data[0] / tokenPrice);
                                    else:
                                        call multisigWalletAddress with:
                                           value msg.value + -weiRaised - 1000 * 10^18 wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        require msg.value + -weiRaised - 1000 * 10^18 <= msg.value
                                        if not weiRaised + 1000 * 10^18:
                                            require 32 * weiRaised + 1000 * 10^18 == (100 * 32 * weiRaised + 1000 * 10^18 / 100) + (32 * weiRaised + 1000 * 10^18 % 100)
                                            call teamWalletAddress with:
                                               value 32 * weiRaised + 1000 * 10^18 / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require 32 * weiRaised + 1000 * 10^18 / 100 <= weiRaised + 1000 * 10^18
                                            call multisigWalletAddress with:
                                               value weiRaised + -(32 * weiRaised + 1000 * 10^18 / 100) + 1000 * 10^18 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(address(arg1), weiRaised + 1000 * 10^18, msg.value * 10^ext_call.return_data[0] / tokenPrice);
                                        else:
                                            require weiRaised + 1000 * 10^18
                                            require 32 * weiRaised + 1000 * 10^18 / weiRaised + 1000 * 10^18 == 32
                                            require 32 * weiRaised + 1000 * 10^18 == (100 * 32 * weiRaised + 1000 * 10^18 / 100) + (32 * weiRaised + 1000 * 10^18 % 100)
                                            call teamWalletAddress with:
                                               value 32 * weiRaised + 1000 * 10^18 / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require 32 * weiRaised + 1000 * 10^18 / 100 <= weiRaised + 1000 * 10^18
                                            call multisigWalletAddress with:
                                               value weiRaised + -(32 * weiRaised + 1000 * 10^18 / 100) + 1000 * 10^18 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(address(arg1), weiRaised + 1000 * 10^18, msg.value * 10^ext_call.return_data[0] / tokenPrice);
                                else:
                                    call multisigWalletAddress with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    emit Invested(address(arg1), msg.value, msg.value * 10^ext_call.return_data[0] / tokenPrice);
                            else:
                                investorCount++
                                require investedAmountOf[address(arg1)] + msg.value >= investedAmountOf[address(arg1)]
                                require investedAmountOf[address(arg1)] + msg.value >= msg.value
                                investedAmountOf[address(arg1)] += msg.value
                                require tokenAmountOf[address(arg1)] + (msg.value * 10^ext_call.return_data[0] / tokenPrice) >= tokenAmountOf[address(arg1)]
                                require tokenAmountOf[address(arg1)] + (msg.value * 10^ext_call.return_data[0] / tokenPrice) >= msg.value * 10^ext_call.return_data[0] / tokenPrice
                                tokenAmountOf[address(arg1)] += msg.value * 10^ext_call.return_data[0] / tokenPrice
                                require weiRaised + msg.value >= weiRaised
                                require weiRaised + msg.value >= msg.value
                                weiRaised += msg.value
                                require tokensSold + (msg.value * 10^ext_call.return_data[0] / tokenPrice) >= tokensSold
                                require tokensSold + (msg.value * 10^ext_call.return_data[0] / tokenPrice) >= msg.value * 10^ext_call.return_data[0] / tokenPrice
                                tokensSold += msg.value * 10^ext_call.return_data[0] / tokenPrice
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x313ce567 with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require tokensSold == (10^12 * tokensSold / 10^12) + (tokensSold % 10^12)
                                require 10^ext_call.return_data[0]
                                require 2 * 10^11 >= -(19 * 10^10 * tokensSold / 10^12) - (19 * 10^10 * 10^ext_call.return_data[0]) / 10^ext_call.return_data[0]
                                emit PriceChanged(tokenPrice, ((19 * 10^10 * tokensSold / 10^12) - (19 * 10^10 * 10^ext_call.return_data[0]) / 10^ext_call.return_data[0]) + 2 * 10^11);
                                tokenPrice = ((19 * 10^10 * tokensSold / 10^12) - (19 * 10^10 * 10^ext_call.return_data[0]) / 10^ext_call.return_data[0]) + 2 * 10^11
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), msg.value * 10^ext_call.return_data[0] / tokenPrice
                                require ext_call.success
                                if weiRaised > 1000 * 10^18:
                                    if msg.value + -weiRaised - 1000 * 10^18 <= 0:
                                        if not msg.value:
                                            require 32 * msg.value == (100 * 32 * msg.value / 100) + (32 * msg.value % 100)
                                            call teamWalletAddress with:
                                               value 32 * msg.value / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require 32 * msg.value / 100 <= msg.value
                                            call multisigWalletAddress with:
                                               value msg.value - (32 * msg.value / 100) wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(address(arg1), msg.value, msg.value * 10^ext_call.return_data[0] / tokenPrice);
                                        else:
                                            require msg.value
                                            require 32 * msg.value / msg.value == 32
                                            require 32 * msg.value == (100 * 32 * msg.value / 100) + (32 * msg.value % 100)
                                            call teamWalletAddress with:
                                               value 32 * msg.value / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require 32 * msg.value / 100 <= msg.value
                                            call multisigWalletAddress with:
                                               value msg.value - (32 * msg.value / 100) wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(address(arg1), msg.value, msg.value * 10^ext_call.return_data[0] / tokenPrice);
                                    else:
                                        call multisigWalletAddress with:
                                           value msg.value + -weiRaised - 1000 * 10^18 wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        require msg.value + -weiRaised - 1000 * 10^18 <= msg.value
                                        if not weiRaised + 1000 * 10^18:
                                            require 32 * weiRaised + 1000 * 10^18 == (100 * 32 * weiRaised + 1000 * 10^18 / 100) + (32 * weiRaised + 1000 * 10^18 % 100)
                                            call teamWalletAddress with:
                                               value 32 * weiRaised + 1000 * 10^18 / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require 32 * weiRaised + 1000 * 10^18 / 100 <= weiRaised + 1000 * 10^18
                                            call multisigWalletAddress with:
                                               value weiRaised + -(32 * weiRaised + 1000 * 10^18 / 100) + 1000 * 10^18 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(address(arg1), weiRaised + 1000 * 10^18, msg.value * 10^ext_call.return_data[0] / tokenPrice);
                                        else:
                                            require weiRaised + 1000 * 10^18
                                            require 32 * weiRaised + 1000 * 10^18 / weiRaised + 1000 * 10^18 == 32
                                            require 32 * weiRaised + 1000 * 10^18 == (100 * 32 * weiRaised + 1000 * 10^18 / 100) + (32 * weiRaised + 1000 * 10^18 % 100)
                                            call teamWalletAddress with:
                                               value 32 * weiRaised + 1000 * 10^18 / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require 32 * weiRaised + 1000 * 10^18 / 100 <= weiRaised + 1000 * 10^18
                                            call multisigWalletAddress with:
                                               value weiRaised + -(32 * weiRaised + 1000 * 10^18 / 100) + 1000 * 10^18 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(address(arg1), weiRaised + 1000 * 10^18, msg.value * 10^ext_call.return_data[0] / tokenPrice);
                                else:
                                    call multisigWalletAddress with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    emit Invested(address(arg1), msg.value, msg.value * 10^ext_call.return_data[0] / tokenPrice);
}

function buy() payable {
    require not uint8(stor0.field_160)
    require not stor11
    require tokenAddress
    require multisigWalletAddress
    if block.timestamp < startsAt:
        require weiRaised < 1000 * 10^18
        require weiRaised > 0
        require loadedRefund >= weiRaised
        revert
    else:
        if block.timestamp >= startsAt + icoDuration:
            require weiRaised < 1000 * 10^18
            require weiRaised > 0
            require loadedRefund >= weiRaised
            revert
        else:
            if tokenPrice >= 2 * 10^11:
                require weiRaised < 1000 * 10^18
                require weiRaised > 0
                require loadedRefund >= weiRaised
                revert
            else:
                require ext_code.size(tokenAddress)
                call tokenAddress.0x313ce567 with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require 10^12 * 10^ext_call.return_data[0] / 10^12 == 10^ext_call.return_data[0]
                if tokensSold >= 10^12 * 10^ext_call.return_data[0]:
                    require weiRaised < 1000 * 10^18
                    require weiRaised > 0
                    require loadedRefund >= weiRaised
                    revert
                else:
                    if block.timestamp > startsAt + icoDuration:
                        require weiRaised < 1000 * 10^18
                        require weiRaised > 0
                        require loadedRefund >= weiRaised
                        revert
                    else:
                        require msg.value >= 10^17
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x313ce567 with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        if not msg.value:
                            require tokenPrice > 0
                            require tokenPrice
                            require msg.value * 10^ext_call.return_data[0] == (tokenPrice * msg.value * 10^ext_call.return_data[0] / tokenPrice) + (msg.value * 10^ext_call.return_data[0] % tokenPrice)
                            require msg.value * 10^ext_call.return_data[0] / tokenPrice > 0
                            if investedAmountOf[address(msg.sender)]:
                                require investedAmountOf[address(msg.sender)] + msg.value >= investedAmountOf[address(msg.sender)]
                                require investedAmountOf[address(msg.sender)] + msg.value >= msg.value
                                investedAmountOf[address(msg.sender)] += msg.value
                                require tokenAmountOf[address(msg.sender)] + (msg.value * 10^ext_call.return_data[0] / tokenPrice) >= tokenAmountOf[address(msg.sender)]
                                require tokenAmountOf[address(msg.sender)] + (msg.value * 10^ext_call.return_data[0] / tokenPrice) >= msg.value * 10^ext_call.return_data[0] / tokenPrice
                                tokenAmountOf[address(msg.sender)] += msg.value * 10^ext_call.return_data[0] / tokenPrice
                                require weiRaised + msg.value >= weiRaised
                                require weiRaised + msg.value >= msg.value
                                weiRaised += msg.value
                                require tokensSold + (msg.value * 10^ext_call.return_data[0] / tokenPrice) >= tokensSold
                                require tokensSold + (msg.value * 10^ext_call.return_data[0] / tokenPrice) >= msg.value * 10^ext_call.return_data[0] / tokenPrice
                                tokensSold += msg.value * 10^ext_call.return_data[0] / tokenPrice
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x313ce567 with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require tokensSold == (10^12 * tokensSold / 10^12) + (tokensSold % 10^12)
                                require 10^ext_call.return_data[0]
                                require 2 * 10^11 >= -(19 * 10^10 * tokensSold / 10^12) - (19 * 10^10 * 10^ext_call.return_data[0]) / 10^ext_call.return_data[0]
                                emit PriceChanged(tokenPrice, ((19 * 10^10 * tokensSold / 10^12) - (19 * 10^10 * 10^ext_call.return_data[0]) / 10^ext_call.return_data[0]) + 2 * 10^11);
                                tokenPrice = ((19 * 10^10 * tokensSold / 10^12) - (19 * 10^10 * 10^ext_call.return_data[0]) / 10^ext_call.return_data[0]) + 2 * 10^11
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, msg.value * 10^ext_call.return_data[0] / tokenPrice
                                require ext_call.success
                                if weiRaised > 1000 * 10^18:
                                    if msg.value + -weiRaised - 1000 * 10^18 <= 0:
                                        if not msg.value:
                                            require 32 * msg.value == (100 * 32 * msg.value / 100) + (32 * msg.value % 100)
                                            call teamWalletAddress with:
                                               value 32 * msg.value / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require 32 * msg.value / 100 <= msg.value
                                            call multisigWalletAddress with:
                                               value msg.value - (32 * msg.value / 100) wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(msg.sender, msg.value, msg.value * 10^ext_call.return_data[0] / tokenPrice);
                                        else:
                                            require msg.value
                                            require 32 * msg.value / msg.value == 32
                                            require 32 * msg.value == (100 * 32 * msg.value / 100) + (32 * msg.value % 100)
                                            call teamWalletAddress with:
                                               value 32 * msg.value / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require 32 * msg.value / 100 <= msg.value
                                            call multisigWalletAddress with:
                                               value msg.value - (32 * msg.value / 100) wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(msg.sender, msg.value, msg.value * 10^ext_call.return_data[0] / tokenPrice);
                                    else:
                                        call multisigWalletAddress with:
                                           value msg.value + -weiRaised - 1000 * 10^18 wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        require msg.value + -weiRaised - 1000 * 10^18 <= msg.value
                                        if not weiRaised + 1000 * 10^18:
                                            require 32 * weiRaised + 1000 * 10^18 == (100 * 32 * weiRaised + 1000 * 10^18 / 100) + (32 * weiRaised + 1000 * 10^18 % 100)
                                            call teamWalletAddress with:
                                               value 32 * weiRaised + 1000 * 10^18 / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require 32 * weiRaised + 1000 * 10^18 / 100 <= weiRaised + 1000 * 10^18
                                            call multisigWalletAddress with:
                                               value weiRaised + -(32 * weiRaised + 1000 * 10^18 / 100) + 1000 * 10^18 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(msg.sender, weiRaised + 1000 * 10^18, msg.value * 10^ext_call.return_data[0] / tokenPrice);
                                        else:
                                            require weiRaised + 1000 * 10^18
                                            require 32 * weiRaised + 1000 * 10^18 / weiRaised + 1000 * 10^18 == 32
                                            require 32 * weiRaised + 1000 * 10^18 == (100 * 32 * weiRaised + 1000 * 10^18 / 100) + (32 * weiRaised + 1000 * 10^18 % 100)
                                            call teamWalletAddress with:
                                               value 32 * weiRaised + 1000 * 10^18 / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require 32 * weiRaised + 1000 * 10^18 / 100 <= weiRaised + 1000 * 10^18
                                            call multisigWalletAddress with:
                                               value weiRaised + -(32 * weiRaised + 1000 * 10^18 / 100) + 1000 * 10^18 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(msg.sender, weiRaised + 1000 * 10^18, msg.value * 10^ext_call.return_data[0] / tokenPrice);
                                else:
                                    call multisigWalletAddress with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    emit Invested(msg.sender, msg.value, msg.value * 10^ext_call.return_data[0] / tokenPrice);
                            else:
                                investorCount++
                                require investedAmountOf[address(msg.sender)] + msg.value >= investedAmountOf[address(msg.sender)]
                                require investedAmountOf[address(msg.sender)] + msg.value >= msg.value
                                investedAmountOf[address(msg.sender)] += msg.value
                                require tokenAmountOf[address(msg.sender)] + (msg.value * 10^ext_call.return_data[0] / tokenPrice) >= tokenAmountOf[address(msg.sender)]
                                require tokenAmountOf[address(msg.sender)] + (msg.value * 10^ext_call.return_data[0] / tokenPrice) >= msg.value * 10^ext_call.return_data[0] / tokenPrice
                                tokenAmountOf[address(msg.sender)] += msg.value * 10^ext_call.return_data[0] / tokenPrice
                                require weiRaised + msg.value >= weiRaised
                                require weiRaised + msg.value >= msg.value
                                weiRaised += msg.value
                                require tokensSold + (msg.value * 10^ext_call.return_data[0] / tokenPrice) >= tokensSold
                                require tokensSold + (msg.value * 10^ext_call.return_data[0] / tokenPrice) >= msg.value * 10^ext_call.return_data[0] / tokenPrice
                                tokensSold += msg.value * 10^ext_call.return_data[0] / tokenPrice
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x313ce567 with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require tokensSold == (10^12 * tokensSold / 10^12) + (tokensSold % 10^12)
                                require 10^ext_call.return_data[0]
                                require 2 * 10^11 >= -(19 * 10^10 * tokensSold / 10^12) - (19 * 10^10 * 10^ext_call.return_data[0]) / 10^ext_call.return_data[0]
                                emit PriceChanged(tokenPrice, ((19 * 10^10 * tokensSold / 10^12) - (19 * 10^10 * 10^ext_call.return_data[0]) / 10^ext_call.return_data[0]) + 2 * 10^11);
                                tokenPrice = ((19 * 10^10 * tokensSold / 10^12) - (19 * 10^10 * 10^ext_call.return_data[0]) / 10^ext_call.return_data[0]) + 2 * 10^11
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, msg.value * 10^ext_call.return_data[0] / tokenPrice
                                require ext_call.success
                                if weiRaised > 1000 * 10^18:
                                    if msg.value + -weiRaised - 1000 * 10^18 <= 0:
                                        if not msg.value:
                                            require 32 * msg.value == (100 * 32 * msg.value / 100) + (32 * msg.value % 100)
                                            call teamWalletAddress with:
                                               value 32 * msg.value / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require 32 * msg.value / 100 <= msg.value
                                            call multisigWalletAddress with:
                                               value msg.value - (32 * msg.value / 100) wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(msg.sender, msg.value, msg.value * 10^ext_call.return_data[0] / tokenPrice);
                                        else:
                                            require msg.value
                                            require 32 * msg.value / msg.value == 32
                                            require 32 * msg.value == (100 * 32 * msg.value / 100) + (32 * msg.value % 100)
                                            call teamWalletAddress with:
                                               value 32 * msg.value / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require 32 * msg.value / 100 <= msg.value
                                            call multisigWalletAddress with:
                                               value msg.value - (32 * msg.value / 100) wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(msg.sender, msg.value, msg.value * 10^ext_call.return_data[0] / tokenPrice);
                                    else:
                                        call multisigWalletAddress with:
                                           value msg.value + -weiRaised - 1000 * 10^18 wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        require msg.value + -weiRaised - 1000 * 10^18 <= msg.value
                                        if not weiRaised + 1000 * 10^18:
                                            require 32 * weiRaised + 1000 * 10^18 == (100 * 32 * weiRaised + 1000 * 10^18 / 100) + (32 * weiRaised + 1000 * 10^18 % 100)
                                            call teamWalletAddress with:
                                               value 32 * weiRaised + 1000 * 10^18 / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require 32 * weiRaised + 1000 * 10^18 / 100 <= weiRaised + 1000 * 10^18
                                            call multisigWalletAddress with:
                                               value weiRaised + -(32 * weiRaised + 1000 * 10^18 / 100) + 1000 * 10^18 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(msg.sender, weiRaised + 1000 * 10^18, msg.value * 10^ext_call.return_data[0] / tokenPrice);
                                        else:
                                            require weiRaised + 1000 * 10^18
                                            require 32 * weiRaised + 1000 * 10^18 / weiRaised + 1000 * 10^18 == 32
                                            require 32 * weiRaised + 1000 * 10^18 == (100 * 32 * weiRaised + 1000 * 10^18 / 100) + (32 * weiRaised + 1000 * 10^18 % 100)
                                            call teamWalletAddress with:
                                               value 32 * weiRaised + 1000 * 10^18 / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require 32 * weiRaised + 1000 * 10^18 / 100 <= weiRaised + 1000 * 10^18
                                            call multisigWalletAddress with:
                                               value weiRaised + -(32 * weiRaised + 1000 * 10^18 / 100) + 1000 * 10^18 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(msg.sender, weiRaised + 1000 * 10^18, msg.value * 10^ext_call.return_data[0] / tokenPrice);
                                else:
                                    call multisigWalletAddress with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    emit Invested(msg.sender, msg.value, msg.value * 10^ext_call.return_data[0] / tokenPrice);
                        else:
                            require msg.value
                            require msg.value * 10^ext_call.return_data[0] / msg.value == 10^ext_call.return_data[0]
                            require tokenPrice > 0
                            require tokenPrice
                            require msg.value * 10^ext_call.return_data[0] == (tokenPrice * msg.value * 10^ext_call.return_data[0] / tokenPrice) + (msg.value * 10^ext_call.return_data[0] % tokenPrice)
                            require msg.value * 10^ext_call.return_data[0] / tokenPrice > 0
                            if investedAmountOf[address(msg.sender)]:
                                require investedAmountOf[address(msg.sender)] + msg.value >= investedAmountOf[address(msg.sender)]
                                require investedAmountOf[address(msg.sender)] + msg.value >= msg.value
                                investedAmountOf[address(msg.sender)] += msg.value
                                require tokenAmountOf[address(msg.sender)] + (msg.value * 10^ext_call.return_data[0] / tokenPrice) >= tokenAmountOf[address(msg.sender)]
                                require tokenAmountOf[address(msg.sender)] + (msg.value * 10^ext_call.return_data[0] / tokenPrice) >= msg.value * 10^ext_call.return_data[0] / tokenPrice
                                tokenAmountOf[address(msg.sender)] += msg.value * 10^ext_call.return_data[0] / tokenPrice
                                require weiRaised + msg.value >= weiRaised
                                require weiRaised + msg.value >= msg.value
                                weiRaised += msg.value
                                require tokensSold + (msg.value * 10^ext_call.return_data[0] / tokenPrice) >= tokensSold
                                require tokensSold + (msg.value * 10^ext_call.return_data[0] / tokenPrice) >= msg.value * 10^ext_call.return_data[0] / tokenPrice
                                tokensSold += msg.value * 10^ext_call.return_data[0] / tokenPrice
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x313ce567 with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require tokensSold == (10^12 * tokensSold / 10^12) + (tokensSold % 10^12)
                                require 10^ext_call.return_data[0]
                                require 2 * 10^11 >= -(19 * 10^10 * tokensSold / 10^12) - (19 * 10^10 * 10^ext_call.return_data[0]) / 10^ext_call.return_data[0]
                                emit PriceChanged(tokenPrice, ((19 * 10^10 * tokensSold / 10^12) - (19 * 10^10 * 10^ext_call.return_data[0]) / 10^ext_call.return_data[0]) + 2 * 10^11);
                                tokenPrice = ((19 * 10^10 * tokensSold / 10^12) - (19 * 10^10 * 10^ext_call.return_data[0]) / 10^ext_call.return_data[0]) + 2 * 10^11
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, msg.value * 10^ext_call.return_data[0] / tokenPrice
                                require ext_call.success
                                if weiRaised > 1000 * 10^18:
                                    if msg.value + -weiRaised - 1000 * 10^18 <= 0:
                                        if not msg.value:
                                            require 32 * msg.value == (100 * 32 * msg.value / 100) + (32 * msg.value % 100)
                                            call teamWalletAddress with:
                                               value 32 * msg.value / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require 32 * msg.value / 100 <= msg.value
                                            call multisigWalletAddress with:
                                               value msg.value - (32 * msg.value / 100) wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(msg.sender, msg.value, msg.value * 10^ext_call.return_data[0] / tokenPrice);
                                        else:
                                            require msg.value
                                            require 32 * msg.value / msg.value == 32
                                            require 32 * msg.value == (100 * 32 * msg.value / 100) + (32 * msg.value % 100)
                                            call teamWalletAddress with:
                                               value 32 * msg.value / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require 32 * msg.value / 100 <= msg.value
                                            call multisigWalletAddress with:
                                               value msg.value - (32 * msg.value / 100) wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(msg.sender, msg.value, msg.value * 10^ext_call.return_data[0] / tokenPrice);
                                    else:
                                        call multisigWalletAddress with:
                                           value msg.value + -weiRaised - 1000 * 10^18 wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        require msg.value + -weiRaised - 1000 * 10^18 <= msg.value
                                        if not weiRaised + 1000 * 10^18:
                                            require 32 * weiRaised + 1000 * 10^18 == (100 * 32 * weiRaised + 1000 * 10^18 / 100) + (32 * weiRaised + 1000 * 10^18 % 100)
                                            call teamWalletAddress with:
                                               value 32 * weiRaised + 1000 * 10^18 / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require 32 * weiRaised + 1000 * 10^18 / 100 <= weiRaised + 1000 * 10^18
                                            call multisigWalletAddress with:
                                               value weiRaised + -(32 * weiRaised + 1000 * 10^18 / 100) + 1000 * 10^18 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(msg.sender, weiRaised + 1000 * 10^18, msg.value * 10^ext_call.return_data[0] / tokenPrice);
                                        else:
                                            require weiRaised + 1000 * 10^18
                                            require 32 * weiRaised + 1000 * 10^18 / weiRaised + 1000 * 10^18 == 32
                                            require 32 * weiRaised + 1000 * 10^18 == (100 * 32 * weiRaised + 1000 * 10^18 / 100) + (32 * weiRaised + 1000 * 10^18 % 100)
                                            call teamWalletAddress with:
                                               value 32 * weiRaised + 1000 * 10^18 / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require 32 * weiRaised + 1000 * 10^18 / 100 <= weiRaised + 1000 * 10^18
                                            call multisigWalletAddress with:
                                               value weiRaised + -(32 * weiRaised + 1000 * 10^18 / 100) + 1000 * 10^18 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(msg.sender, weiRaised + 1000 * 10^18, msg.value * 10^ext_call.return_data[0] / tokenPrice);
                                else:
                                    call multisigWalletAddress with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    emit Invested(msg.sender, msg.value, msg.value * 10^ext_call.return_data[0] / tokenPrice);
                            else:
                                investorCount++
                                require investedAmountOf[address(msg.sender)] + msg.value >= investedAmountOf[address(msg.sender)]
                                require investedAmountOf[address(msg.sender)] + msg.value >= msg.value
                                investedAmountOf[address(msg.sender)] += msg.value
                                require tokenAmountOf[address(msg.sender)] + (msg.value * 10^ext_call.return_data[0] / tokenPrice) >= tokenAmountOf[address(msg.sender)]
                                require tokenAmountOf[address(msg.sender)] + (msg.value * 10^ext_call.return_data[0] / tokenPrice) >= msg.value * 10^ext_call.return_data[0] / tokenPrice
                                tokenAmountOf[address(msg.sender)] += msg.value * 10^ext_call.return_data[0] / tokenPrice
                                require weiRaised + msg.value >= weiRaised
                                require weiRaised + msg.value >= msg.value
                                weiRaised += msg.value
                                require tokensSold + (msg.value * 10^ext_call.return_data[0] / tokenPrice) >= tokensSold
                                require tokensSold + (msg.value * 10^ext_call.return_data[0] / tokenPrice) >= msg.value * 10^ext_call.return_data[0] / tokenPrice
                                tokensSold += msg.value * 10^ext_call.return_data[0] / tokenPrice
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x313ce567 with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require tokensSold == (10^12 * tokensSold / 10^12) + (tokensSold % 10^12)
                                require 10^ext_call.return_data[0]
                                require 2 * 10^11 >= -(19 * 10^10 * tokensSold / 10^12) - (19 * 10^10 * 10^ext_call.return_data[0]) / 10^ext_call.return_data[0]
                                emit PriceChanged(tokenPrice, ((19 * 10^10 * tokensSold / 10^12) - (19 * 10^10 * 10^ext_call.return_data[0]) / 10^ext_call.return_data[0]) + 2 * 10^11);
                                tokenPrice = ((19 * 10^10 * tokensSold / 10^12) - (19 * 10^10 * 10^ext_call.return_data[0]) / 10^ext_call.return_data[0]) + 2 * 10^11
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, msg.value * 10^ext_call.return_data[0] / tokenPrice
                                require ext_call.success
                                if weiRaised > 1000 * 10^18:
                                    if msg.value + -weiRaised - 1000 * 10^18 <= 0:
                                        if not msg.value:
                                            require 32 * msg.value == (100 * 32 * msg.value / 100) + (32 * msg.value % 100)
                                            call teamWalletAddress with:
                                               value 32 * msg.value / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require 32 * msg.value / 100 <= msg.value
                                            call multisigWalletAddress with:
                                               value msg.value - (32 * msg.value / 100) wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(msg.sender, msg.value, msg.value * 10^ext_call.return_data[0] / tokenPrice);
                                        else:
                                            require msg.value
                                            require 32 * msg.value / msg.value == 32
                                            require 32 * msg.value == (100 * 32 * msg.value / 100) + (32 * msg.value % 100)
                                            call teamWalletAddress with:
                                               value 32 * msg.value / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require 32 * msg.value / 100 <= msg.value
                                            call multisigWalletAddress with:
                                               value msg.value - (32 * msg.value / 100) wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(msg.sender, msg.value, msg.value * 10^ext_call.return_data[0] / tokenPrice);
                                    else:
                                        call multisigWalletAddress with:
                                           value msg.value + -weiRaised - 1000 * 10^18 wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        require msg.value + -weiRaised - 1000 * 10^18 <= msg.value
                                        if not weiRaised + 1000 * 10^18:
                                            require 32 * weiRaised + 1000 * 10^18 == (100 * 32 * weiRaised + 1000 * 10^18 / 100) + (32 * weiRaised + 1000 * 10^18 % 100)
                                            call teamWalletAddress with:
                                               value 32 * weiRaised + 1000 * 10^18 / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require 32 * weiRaised + 1000 * 10^18 / 100 <= weiRaised + 1000 * 10^18
                                            call multisigWalletAddress with:
                                               value weiRaised + -(32 * weiRaised + 1000 * 10^18 / 100) + 1000 * 10^18 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(msg.sender, weiRaised + 1000 * 10^18, msg.value * 10^ext_call.return_data[0] / tokenPrice);
                                        else:
                                            require weiRaised + 1000 * 10^18
                                            require 32 * weiRaised + 1000 * 10^18 / weiRaised + 1000 * 10^18 == 32
                                            require 32 * weiRaised + 1000 * 10^18 == (100 * 32 * weiRaised + 1000 * 10^18 / 100) + (32 * weiRaised + 1000 * 10^18 % 100)
                                            call teamWalletAddress with:
                                               value 32 * weiRaised + 1000 * 10^18 / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require 32 * weiRaised + 1000 * 10^18 / 100 <= weiRaised + 1000 * 10^18
                                            call multisigWalletAddress with:
                                               value weiRaised + -(32 * weiRaised + 1000 * 10^18 / 100) + 1000 * 10^18 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(msg.sender, weiRaised + 1000 * 10^18, msg.value * 10^ext_call.return_data[0] / tokenPrice);
                                else:
                                    call multisigWalletAddress with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    emit Invested(msg.sender, msg.value, msg.value * 10^ext_call.return_data[0] / tokenPrice);
}

function _fallback() payable {
    require not uint8(stor0.field_160)
    require not stor11
    require tokenAddress
    require multisigWalletAddress
    if block.timestamp < startsAt:
        require weiRaised < 1000 * 10^18
        require weiRaised > 0
        require loadedRefund >= weiRaised
        revert
    else:
        if block.timestamp >= startsAt + icoDuration:
            require weiRaised < 1000 * 10^18
            require weiRaised > 0
            require loadedRefund >= weiRaised
            revert
        else:
            if tokenPrice >= 2 * 10^11:
                require weiRaised < 1000 * 10^18
                require weiRaised > 0
                require loadedRefund >= weiRaised
                revert
            else:
                require ext_code.size(tokenAddress)
                call tokenAddress.0x313ce567 with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require 10^12 * 10^ext_call.return_data[0] / 10^12 == 10^ext_call.return_data[0]
                if tokensSold >= 10^12 * 10^ext_call.return_data[0]:
                    require weiRaised < 1000 * 10^18
                    require weiRaised > 0
                    require loadedRefund >= weiRaised
                    revert
                else:
                    if block.timestamp > startsAt + icoDuration:
                        require weiRaised < 1000 * 10^18
                        require weiRaised > 0
                        require loadedRefund >= weiRaised
                        revert
                    else:
                        require msg.value >= 10^17
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x313ce567 with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        if not msg.value:
                            require tokenPrice > 0
                            require tokenPrice
                            require msg.value * 10^ext_call.return_data[0] == (tokenPrice * msg.value * 10^ext_call.return_data[0] / tokenPrice) + (msg.value * 10^ext_call.return_data[0] % tokenPrice)
                            require msg.value * 10^ext_call.return_data[0] / tokenPrice > 0
                            if investedAmountOf[address(msg.sender)]:
                                require investedAmountOf[address(msg.sender)] + msg.value >= investedAmountOf[address(msg.sender)]
                                require investedAmountOf[address(msg.sender)] + msg.value >= msg.value
                                investedAmountOf[address(msg.sender)] += msg.value
                                require tokenAmountOf[address(msg.sender)] + (msg.value * 10^ext_call.return_data[0] / tokenPrice) >= tokenAmountOf[address(msg.sender)]
                                require tokenAmountOf[address(msg.sender)] + (msg.value * 10^ext_call.return_data[0] / tokenPrice) >= msg.value * 10^ext_call.return_data[0] / tokenPrice
                                tokenAmountOf[address(msg.sender)] += msg.value * 10^ext_call.return_data[0] / tokenPrice
                                require weiRaised + msg.value >= weiRaised
                                require weiRaised + msg.value >= msg.value
                                weiRaised += msg.value
                                require tokensSold + (msg.value * 10^ext_call.return_data[0] / tokenPrice) >= tokensSold
                                require tokensSold + (msg.value * 10^ext_call.return_data[0] / tokenPrice) >= msg.value * 10^ext_call.return_data[0] / tokenPrice
                                tokensSold += msg.value * 10^ext_call.return_data[0] / tokenPrice
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x313ce567 with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require tokensSold == (10^12 * tokensSold / 10^12) + (tokensSold % 10^12)
                                require 10^ext_call.return_data[0]
                                require 2 * 10^11 >= -(19 * 10^10 * tokensSold / 10^12) - (19 * 10^10 * 10^ext_call.return_data[0]) / 10^ext_call.return_data[0]
                                emit PriceChanged(tokenPrice, ((19 * 10^10 * tokensSold / 10^12) - (19 * 10^10 * 10^ext_call.return_data[0]) / 10^ext_call.return_data[0]) + 2 * 10^11);
                                tokenPrice = ((19 * 10^10 * tokensSold / 10^12) - (19 * 10^10 * 10^ext_call.return_data[0]) / 10^ext_call.return_data[0]) + 2 * 10^11
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, msg.value * 10^ext_call.return_data[0] / tokenPrice
                                require ext_call.success
                                if weiRaised > 1000 * 10^18:
                                    if msg.value + -weiRaised - 1000 * 10^18 <= 0:
                                        if not msg.value:
                                            require 32 * msg.value == (100 * 32 * msg.value / 100) + (32 * msg.value % 100)
                                            call teamWalletAddress with:
                                               value 32 * msg.value / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require 32 * msg.value / 100 <= msg.value
                                            call multisigWalletAddress with:
                                               value msg.value - (32 * msg.value / 100) wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(msg.sender, msg.value, msg.value * 10^ext_call.return_data[0] / tokenPrice);
                                        else:
                                            require msg.value
                                            require 32 * msg.value / msg.value == 32
                                            require 32 * msg.value == (100 * 32 * msg.value / 100) + (32 * msg.value % 100)
                                            call teamWalletAddress with:
                                               value 32 * msg.value / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require 32 * msg.value / 100 <= msg.value
                                            call multisigWalletAddress with:
                                               value msg.value - (32 * msg.value / 100) wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(msg.sender, msg.value, msg.value * 10^ext_call.return_data[0] / tokenPrice);
                                    else:
                                        call multisigWalletAddress with:
                                           value msg.value + -weiRaised - 1000 * 10^18 wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        require msg.value + -weiRaised - 1000 * 10^18 <= msg.value
                                        if not weiRaised + 1000 * 10^18:
                                            require 32 * weiRaised + 1000 * 10^18 == (100 * 32 * weiRaised + 1000 * 10^18 / 100) + (32 * weiRaised + 1000 * 10^18 % 100)
                                            call teamWalletAddress with:
                                               value 32 * weiRaised + 1000 * 10^18 / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require 32 * weiRaised + 1000 * 10^18 / 100 <= weiRaised + 1000 * 10^18
                                            call multisigWalletAddress with:
                                               value weiRaised + -(32 * weiRaised + 1000 * 10^18 / 100) + 1000 * 10^18 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(msg.sender, weiRaised + 1000 * 10^18, msg.value * 10^ext_call.return_data[0] / tokenPrice);
                                        else:
                                            require weiRaised + 1000 * 10^18
                                            require 32 * weiRaised + 1000 * 10^18 / weiRaised + 1000 * 10^18 == 32
                                            require 32 * weiRaised + 1000 * 10^18 == (100 * 32 * weiRaised + 1000 * 10^18 / 100) + (32 * weiRaised + 1000 * 10^18 % 100)
                                            call teamWalletAddress with:
                                               value 32 * weiRaised + 1000 * 10^18 / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require 32 * weiRaised + 1000 * 10^18 / 100 <= weiRaised + 1000 * 10^18
                                            call multisigWalletAddress with:
                                               value weiRaised + -(32 * weiRaised + 1000 * 10^18 / 100) + 1000 * 10^18 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(msg.sender, weiRaised + 1000 * 10^18, msg.value * 10^ext_call.return_data[0] / tokenPrice);
                                else:
                                    call multisigWalletAddress with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    emit Invested(msg.sender, msg.value, msg.value * 10^ext_call.return_data[0] / tokenPrice);
                            else:
                                investorCount++
                                require investedAmountOf[address(msg.sender)] + msg.value >= investedAmountOf[address(msg.sender)]
                                require investedAmountOf[address(msg.sender)] + msg.value >= msg.value
                                investedAmountOf[address(msg.sender)] += msg.value
                                require tokenAmountOf[address(msg.sender)] + (msg.value * 10^ext_call.return_data[0] / tokenPrice) >= tokenAmountOf[address(msg.sender)]
                                require tokenAmountOf[address(msg.sender)] + (msg.value * 10^ext_call.return_data[0] / tokenPrice) >= msg.value * 10^ext_call.return_data[0] / tokenPrice
                                tokenAmountOf[address(msg.sender)] += msg.value * 10^ext_call.return_data[0] / tokenPrice
                                require weiRaised + msg.value >= weiRaised
                                require weiRaised + msg.value >= msg.value
                                weiRaised += msg.value
                                require tokensSold + (msg.value * 10^ext_call.return_data[0] / tokenPrice) >= tokensSold
                                require tokensSold + (msg.value * 10^ext_call.return_data[0] / tokenPrice) >= msg.value * 10^ext_call.return_data[0] / tokenPrice
                                tokensSold += msg.value * 10^ext_call.return_data[0] / tokenPrice
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x313ce567 with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require tokensSold == (10^12 * tokensSold / 10^12) + (tokensSold % 10^12)
                                require 10^ext_call.return_data[0]
                                require 2 * 10^11 >= -(19 * 10^10 * tokensSold / 10^12) - (19 * 10^10 * 10^ext_call.return_data[0]) / 10^ext_call.return_data[0]
                                emit PriceChanged(tokenPrice, ((19 * 10^10 * tokensSold / 10^12) - (19 * 10^10 * 10^ext_call.return_data[0]) / 10^ext_call.return_data[0]) + 2 * 10^11);
                                tokenPrice = ((19 * 10^10 * tokensSold / 10^12) - (19 * 10^10 * 10^ext_call.return_data[0]) / 10^ext_call.return_data[0]) + 2 * 10^11
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, msg.value * 10^ext_call.return_data[0] / tokenPrice
                                require ext_call.success
                                if weiRaised > 1000 * 10^18:
                                    if msg.value + -weiRaised - 1000 * 10^18 <= 0:
                                        if not msg.value:
                                            require 32 * msg.value == (100 * 32 * msg.value / 100) + (32 * msg.value % 100)
                                            call teamWalletAddress with:
                                               value 32 * msg.value / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require 32 * msg.value / 100 <= msg.value
                                            call multisigWalletAddress with:
                                               value msg.value - (32 * msg.value / 100) wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(msg.sender, msg.value, msg.value * 10^ext_call.return_data[0] / tokenPrice);
                                        else:
                                            require msg.value
                                            require 32 * msg.value / msg.value == 32
                                            require 32 * msg.value == (100 * 32 * msg.value / 100) + (32 * msg.value % 100)
                                            call teamWalletAddress with:
                                               value 32 * msg.value / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require 32 * msg.value / 100 <= msg.value
                                            call multisigWalletAddress with:
                                               value msg.value - (32 * msg.value / 100) wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(msg.sender, msg.value, msg.value * 10^ext_call.return_data[0] / tokenPrice);
                                    else:
                                        call multisigWalletAddress with:
                                           value msg.value + -weiRaised - 1000 * 10^18 wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        require msg.value + -weiRaised - 1000 * 10^18 <= msg.value
                                        if not weiRaised + 1000 * 10^18:
                                            require 32 * weiRaised + 1000 * 10^18 == (100 * 32 * weiRaised + 1000 * 10^18 / 100) + (32 * weiRaised + 1000 * 10^18 % 100)
                                            call teamWalletAddress with:
                                               value 32 * weiRaised + 1000 * 10^18 / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require 32 * weiRaised + 1000 * 10^18 / 100 <= weiRaised + 1000 * 10^18
                                            call multisigWalletAddress with:
                                               value weiRaised + -(32 * weiRaised + 1000 * 10^18 / 100) + 1000 * 10^18 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(msg.sender, weiRaised + 1000 * 10^18, msg.value * 10^ext_call.return_data[0] / tokenPrice);
                                        else:
                                            require weiRaised + 1000 * 10^18
                                            require 32 * weiRaised + 1000 * 10^18 / weiRaised + 1000 * 10^18 == 32
                                            require 32 * weiRaised + 1000 * 10^18 == (100 * 32 * weiRaised + 1000 * 10^18 / 100) + (32 * weiRaised + 1000 * 10^18 % 100)
                                            call teamWalletAddress with:
                                               value 32 * weiRaised + 1000 * 10^18 / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require 32 * weiRaised + 1000 * 10^18 / 100 <= weiRaised + 1000 * 10^18
                                            call multisigWalletAddress with:
                                               value weiRaised + -(32 * weiRaised + 1000 * 10^18 / 100) + 1000 * 10^18 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(msg.sender, weiRaised + 1000 * 10^18, msg.value * 10^ext_call.return_data[0] / tokenPrice);
                                else:
                                    call multisigWalletAddress with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    emit Invested(msg.sender, msg.value, msg.value * 10^ext_call.return_data[0] / tokenPrice);
                        else:
                            require msg.value
                            require msg.value * 10^ext_call.return_data[0] / msg.value == 10^ext_call.return_data[0]
                            require tokenPrice > 0
                            require tokenPrice
                            require msg.value * 10^ext_call.return_data[0] == (tokenPrice * msg.value * 10^ext_call.return_data[0] / tokenPrice) + (msg.value * 10^ext_call.return_data[0] % tokenPrice)
                            require msg.value * 10^ext_call.return_data[0] / tokenPrice > 0
                            if investedAmountOf[address(msg.sender)]:
                                require investedAmountOf[address(msg.sender)] + msg.value >= investedAmountOf[address(msg.sender)]
                                require investedAmountOf[address(msg.sender)] + msg.value >= msg.value
                                investedAmountOf[address(msg.sender)] += msg.value
                                require tokenAmountOf[address(msg.sender)] + (msg.value * 10^ext_call.return_data[0] / tokenPrice) >= tokenAmountOf[address(msg.sender)]
                                require tokenAmountOf[address(msg.sender)] + (msg.value * 10^ext_call.return_data[0] / tokenPrice) >= msg.value * 10^ext_call.return_data[0] / tokenPrice
                                tokenAmountOf[address(msg.sender)] += msg.value * 10^ext_call.return_data[0] / tokenPrice
                                require weiRaised + msg.value >= weiRaised
                                require weiRaised + msg.value >= msg.value
                                weiRaised += msg.value
                                require tokensSold + (msg.value * 10^ext_call.return_data[0] / tokenPrice) >= tokensSold
                                require tokensSold + (msg.value * 10^ext_call.return_data[0] / tokenPrice) >= msg.value * 10^ext_call.return_data[0] / tokenPrice
                                tokensSold += msg.value * 10^ext_call.return_data[0] / tokenPrice
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x313ce567 with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require tokensSold == (10^12 * tokensSold / 10^12) + (tokensSold % 10^12)
                                require 10^ext_call.return_data[0]
                                require 2 * 10^11 >= -(19 * 10^10 * tokensSold / 10^12) - (19 * 10^10 * 10^ext_call.return_data[0]) / 10^ext_call.return_data[0]
                                emit PriceChanged(tokenPrice, ((19 * 10^10 * tokensSold / 10^12) - (19 * 10^10 * 10^ext_call.return_data[0]) / 10^ext_call.return_data[0]) + 2 * 10^11);
                                tokenPrice = ((19 * 10^10 * tokensSold / 10^12) - (19 * 10^10 * 10^ext_call.return_data[0]) / 10^ext_call.return_data[0]) + 2 * 10^11
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, msg.value * 10^ext_call.return_data[0] / tokenPrice
                                require ext_call.success
                                if weiRaised > 1000 * 10^18:
                                    if msg.value + -weiRaised - 1000 * 10^18 <= 0:
                                        if not msg.value:
                                            require 32 * msg.value == (100 * 32 * msg.value / 100) + (32 * msg.value % 100)
                                            call teamWalletAddress with:
                                               value 32 * msg.value / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require 32 * msg.value / 100 <= msg.value
                                            call multisigWalletAddress with:
                                               value msg.value - (32 * msg.value / 100) wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(msg.sender, msg.value, msg.value * 10^ext_call.return_data[0] / tokenPrice);
                                        else:
                                            require msg.value
                                            require 32 * msg.value / msg.value == 32
                                            require 32 * msg.value == (100 * 32 * msg.value / 100) + (32 * msg.value % 100)
                                            call teamWalletAddress with:
                                               value 32 * msg.value / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require 32 * msg.value / 100 <= msg.value
                                            call multisigWalletAddress with:
                                               value msg.value - (32 * msg.value / 100) wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(msg.sender, msg.value, msg.value * 10^ext_call.return_data[0] / tokenPrice);
                                    else:
                                        call multisigWalletAddress with:
                                           value msg.value + -weiRaised - 1000 * 10^18 wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        require msg.value + -weiRaised - 1000 * 10^18 <= msg.value
                                        if not weiRaised + 1000 * 10^18:
                                            require 32 * weiRaised + 1000 * 10^18 == (100 * 32 * weiRaised + 1000 * 10^18 / 100) + (32 * weiRaised + 1000 * 10^18 % 100)
                                            call teamWalletAddress with:
                                               value 32 * weiRaised + 1000 * 10^18 / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require 32 * weiRaised + 1000 * 10^18 / 100 <= weiRaised + 1000 * 10^18
                                            call multisigWalletAddress with:
                                               value weiRaised + -(32 * weiRaised + 1000 * 10^18 / 100) + 1000 * 10^18 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(msg.sender, weiRaised + 1000 * 10^18, msg.value * 10^ext_call.return_data[0] / tokenPrice);
                                        else:
                                            require weiRaised + 1000 * 10^18
                                            require 32 * weiRaised + 1000 * 10^18 / weiRaised + 1000 * 10^18 == 32
                                            require 32 * weiRaised + 1000 * 10^18 == (100 * 32 * weiRaised + 1000 * 10^18 / 100) + (32 * weiRaised + 1000 * 10^18 % 100)
                                            call teamWalletAddress with:
                                               value 32 * weiRaised + 1000 * 10^18 / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require 32 * weiRaised + 1000 * 10^18 / 100 <= weiRaised + 1000 * 10^18
                                            call multisigWalletAddress with:
                                               value weiRaised + -(32 * weiRaised + 1000 * 10^18 / 100) + 1000 * 10^18 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(msg.sender, weiRaised + 1000 * 10^18, msg.value * 10^ext_call.return_data[0] / tokenPrice);
                                else:
                                    call multisigWalletAddress with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    emit Invested(msg.sender, msg.value, msg.value * 10^ext_call.return_data[0] / tokenPrice);
                            else:
                                investorCount++
                                require investedAmountOf[address(msg.sender)] + msg.value >= investedAmountOf[address(msg.sender)]
                                require investedAmountOf[address(msg.sender)] + msg.value >= msg.value
                                investedAmountOf[address(msg.sender)] += msg.value
                                require tokenAmountOf[address(msg.sender)] + (msg.value * 10^ext_call.return_data[0] / tokenPrice) >= tokenAmountOf[address(msg.sender)]
                                require tokenAmountOf[address(msg.sender)] + (msg.value * 10^ext_call.return_data[0] / tokenPrice) >= msg.value * 10^ext_call.return_data[0] / tokenPrice
                                tokenAmountOf[address(msg.sender)] += msg.value * 10^ext_call.return_data[0] / tokenPrice
                                require weiRaised + msg.value >= weiRaised
                                require weiRaised + msg.value >= msg.value
                                weiRaised += msg.value
                                require tokensSold + (msg.value * 10^ext_call.return_data[0] / tokenPrice) >= tokensSold
                                require tokensSold + (msg.value * 10^ext_call.return_data[0] / tokenPrice) >= msg.value * 10^ext_call.return_data[0] / tokenPrice
                                tokensSold += msg.value * 10^ext_call.return_data[0] / tokenPrice
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x313ce567 with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require tokensSold == (10^12 * tokensSold / 10^12) + (tokensSold % 10^12)
                                require 10^ext_call.return_data[0]
                                require 2 * 10^11 >= -(19 * 10^10 * tokensSold / 10^12) - (19 * 10^10 * 10^ext_call.return_data[0]) / 10^ext_call.return_data[0]
                                emit PriceChanged(tokenPrice, ((19 * 10^10 * tokensSold / 10^12) - (19 * 10^10 * 10^ext_call.return_data[0]) / 10^ext_call.return_data[0]) + 2 * 10^11);
                                tokenPrice = ((19 * 10^10 * tokensSold / 10^12) - (19 * 10^10 * 10^ext_call.return_data[0]) / 10^ext_call.return_data[0]) + 2 * 10^11
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, msg.value * 10^ext_call.return_data[0] / tokenPrice
                                require ext_call.success
                                if weiRaised > 1000 * 10^18:
                                    if msg.value + -weiRaised - 1000 * 10^18 <= 0:
                                        if not msg.value:
                                            require 32 * msg.value == (100 * 32 * msg.value / 100) + (32 * msg.value % 100)
                                            call teamWalletAddress with:
                                               value 32 * msg.value / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require 32 * msg.value / 100 <= msg.value
                                            call multisigWalletAddress with:
                                               value msg.value - (32 * msg.value / 100) wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(msg.sender, msg.value, msg.value * 10^ext_call.return_data[0] / tokenPrice);
                                        else:
                                            require msg.value
                                            require 32 * msg.value / msg.value == 32
                                            require 32 * msg.value == (100 * 32 * msg.value / 100) + (32 * msg.value % 100)
                                            call teamWalletAddress with:
                                               value 32 * msg.value / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require 32 * msg.value / 100 <= msg.value
                                            call multisigWalletAddress with:
                                               value msg.value - (32 * msg.value / 100) wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(msg.sender, msg.value, msg.value * 10^ext_call.return_data[0] / tokenPrice);
                                    else:
                                        call multisigWalletAddress with:
                                           value msg.value + -weiRaised - 1000 * 10^18 wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        require msg.value + -weiRaised - 1000 * 10^18 <= msg.value
                                        if not weiRaised + 1000 * 10^18:
                                            require 32 * weiRaised + 1000 * 10^18 == (100 * 32 * weiRaised + 1000 * 10^18 / 100) + (32 * weiRaised + 1000 * 10^18 % 100)
                                            call teamWalletAddress with:
                                               value 32 * weiRaised + 1000 * 10^18 / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require 32 * weiRaised + 1000 * 10^18 / 100 <= weiRaised + 1000 * 10^18
                                            call multisigWalletAddress with:
                                               value weiRaised + -(32 * weiRaised + 1000 * 10^18 / 100) + 1000 * 10^18 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(msg.sender, weiRaised + 1000 * 10^18, msg.value * 10^ext_call.return_data[0] / tokenPrice);
                                        else:
                                            require weiRaised + 1000 * 10^18
                                            require 32 * weiRaised + 1000 * 10^18 / weiRaised + 1000 * 10^18 == 32
                                            require 32 * weiRaised + 1000 * 10^18 == (100 * 32 * weiRaised + 1000 * 10^18 / 100) + (32 * weiRaised + 1000 * 10^18 % 100)
                                            call teamWalletAddress with:
                                               value 32 * weiRaised + 1000 * 10^18 / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require 32 * weiRaised + 1000 * 10^18 / 100 <= weiRaised + 1000 * 10^18
                                            call multisigWalletAddress with:
                                               value weiRaised + -(32 * weiRaised + 1000 * 10^18 / 100) + 1000 * 10^18 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit Invested(msg.sender, weiRaised + 1000 * 10^18, msg.value * 10^ext_call.return_data[0] / tokenPrice);
                                else:
                                    call multisigWalletAddress with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    emit Invested(msg.sender, msg.value, msg.value * 10^ext_call.return_data[0] / tokenPrice);
}



}
