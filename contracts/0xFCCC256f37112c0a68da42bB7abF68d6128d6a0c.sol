contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint8 stor8;

function _fallback() payable {
    stor3 = 0
    stor4 = 0
    stor5 = 0
    stor6 = 10^15
    stor7 = 10^15
    stor8 = 0
    require not msg.value
    stor1 = code.data[2424 len 20]
    stor2 = code.data[2456 len 20]
    stor0 = code.data[2488 len 20]
    return code.data[162 len 2250]
}



// =====================  Runtime code  =====================


const CROWDFUNDING_PERIOD = (504 * 24 * 3600)


address humaniqTokenAddress;
address founderAddress;
address multisigAddress;
uint256 startDate;
uint256 icoBalance;
uint256 coinsIssued;
uint256 baseTokenPrice;
uint256 discountedPrice;
uint8 isICOActive;
mapping of uint256 investments;

function startDate() {
    return startDate
}

function baseTokenPrice() {
    return baseTokenPrice
}

function icoBalance() {
    return icoBalance
}

function multisig() {
    return multisigAddress
}

function founder() {
    return founderAddress
}

function humaniqToken() {
    return humaniqTokenAddress
}

function investments(address arg1) {
    return investments[arg1]
}

function discountedPrice() {
    return discountedPrice
}

function coinsIssued() {
    return coinsIssued
}

function isICOActive() {
    return bool(isICOActive)
}

function changeFounder(address arg1) {
    require founderAddress == msg.sender
    founderAddress = arg1
}

function changeTokenAddress(address arg1) {
    require founderAddress == msg.sender
    humaniqTokenAddress = arg1
}

function changeBaseTokenPrice(uint256 arg1) {
    require founderAddress == msg.sender
    baseTokenPrice = arg1
    return 1
}

function startICO() {
    require founderAddress == msg.sender
    if not isICOActive:
        if not startDate:
            isICOActive = 1
            startDate = block.timestamp
}

function getBonus(uint256 arg1) {
    if arg1 < startDate:
        return 1499
    if arg1 - startDate >= 384 * 24 * 3600:
        return 1000
    if arg1 - startDate >= 216 * 24 * 3600:
        return 1125
    if arg1 - startDate < 48 * 24 * 3600:
        return 1499
    return 1250
}

function getCurrentBonus() {
    if block.timestamp < startDate:
        return 1499
    if block.timestamp - startDate >= 384 * 24 * 3600:
        return 1000
    if block.timestamp - startDate >= 216 * 24 * 3600:
        return 1125
    if block.timestamp - startDate < 48 * 24 * 3600:
        return 1499
    return 1250
}

function finishCrowdsale() {
    require founderAddress == msg.sender
    if bool(isICOActive) != 1:
        return 0
    isICOActive = 0
    require ext_code.size(humaniqTokenAddress)
    call humaniqTokenAddress.0x475a9fa9 with:
         gas gas_remaining - 50 wei
        args multisigAddress, 14 * coinsIssued / 86
    require ext_call.success
    require ext_call.return_data[0]
    return 0
}

function calculateTokens(uint256 arg1, uint256 arg2) {
    if arg2 < startDate:
        discountedPrice = 1000 * baseTokenPrice / 1499
        require 1000 * baseTokenPrice / 1499
        return (arg1 / 1000 * baseTokenPrice / 1499)
    if arg2 - startDate >= 384 * 24 * 3600:
        discountedPrice = 1000 * baseTokenPrice / 1000
        require 1000 * baseTokenPrice / 1000
        return (arg1 / 1000 * baseTokenPrice / 1000)
    if arg2 - startDate >= 216 * 24 * 3600:
        discountedPrice = 1000 * baseTokenPrice / 1125
        require 1000 * baseTokenPrice / 1125
        return (arg1 / 1000 * baseTokenPrice / 1125)
    if arg2 - startDate < 48 * 24 * 3600:
        discountedPrice = 1000 * baseTokenPrice / 1499
        require 1000 * baseTokenPrice / 1499
        return (arg1 / 1000 * baseTokenPrice / 1499)
    discountedPrice = 1000 * baseTokenPrice / 1250
    require 1000 * baseTokenPrice / 1250
    return (arg1 / 1000 * baseTokenPrice / 1250)
}

function fixInvestment(address arg1, uint256 arg2, uint256 arg3) {
    require isICOActive
    require founderAddress == msg.sender
    if arg3:
        if arg3 < startDate:
            discountedPrice = 1000 * baseTokenPrice / 1499
            if 1000 * baseTokenPrice / 1499:
                icoBalance += arg2
                coinsIssued += arg2 / 1000 * baseTokenPrice / 1499
                investments[address(arg1)] += arg2 / 1000 * baseTokenPrice / 1499 * discountedPrice
                if ext_code.size(humaniqTokenAddress):
                    call humaniqTokenAddress.0x475a9fa9 with:
                         gas gas_remaining - 50 wei
                        args address(arg1), arg2 / 1000 * baseTokenPrice / 1499
                    if ext_call.success:
                        if ext_call.return_data[0]:
                            return (arg2 / 1000 * baseTokenPrice / 1499)
        else:
            if arg3 - startDate >= 384 * 24 * 3600:
                discountedPrice = 1000 * baseTokenPrice / 1000
                if 1000 * baseTokenPrice / 1000:
                    icoBalance += arg2
                    coinsIssued += arg2 / 1000 * baseTokenPrice / 1000
                    investments[address(arg1)] += arg2 / 1000 * baseTokenPrice / 1000 * discountedPrice
                    if ext_code.size(humaniqTokenAddress):
                        call humaniqTokenAddress.0x475a9fa9 with:
                             gas gas_remaining - 50 wei
                            args address(arg1), arg2 / 1000 * baseTokenPrice / 1000
                        if ext_call.success:
                            if ext_call.return_data[0]:
                                return (arg2 / 1000 * baseTokenPrice / 1000)
            else:
                if arg3 - startDate >= 216 * 24 * 3600:
                    discountedPrice = 1000 * baseTokenPrice / 1125
                    if 1000 * baseTokenPrice / 1125:
                        icoBalance += arg2
                        coinsIssued += arg2 / 1000 * baseTokenPrice / 1125
                        investments[address(arg1)] += arg2 / 1000 * baseTokenPrice / 1125 * discountedPrice
                        if ext_code.size(humaniqTokenAddress):
                            call humaniqTokenAddress.0x475a9fa9 with:
                                 gas gas_remaining - 50 wei
                                args address(arg1), arg2 / 1000 * baseTokenPrice / 1125
                            if ext_call.success:
                                if ext_call.return_data[0]:
                                    return (arg2 / 1000 * baseTokenPrice / 1125)
                else:
                    if arg3 - startDate < 48 * 24 * 3600:
                        discountedPrice = 1000 * baseTokenPrice / 1499
                        if 1000 * baseTokenPrice / 1499:
                            icoBalance += arg2
                            coinsIssued += arg2 / 1000 * baseTokenPrice / 1499
                            investments[address(arg1)] += arg2 / 1000 * baseTokenPrice / 1499 * discountedPrice
                            if ext_code.size(humaniqTokenAddress):
                                call humaniqTokenAddress.0x475a9fa9 with:
                                     gas gas_remaining - 50 wei
                                    args address(arg1), arg2 / 1000 * baseTokenPrice / 1499
                                if ext_call.success:
                                    if ext_call.return_data[0]:
                                        return (arg2 / 1000 * baseTokenPrice / 1499)
                    else:
                        discountedPrice = 1000 * baseTokenPrice / 1250
                        if 1000 * baseTokenPrice / 1250:
                            icoBalance += arg2
                            coinsIssued += arg2 / 1000 * baseTokenPrice / 1250
                            investments[address(arg1)] += arg2 / 1000 * baseTokenPrice / 1250 * discountedPrice
                            if ext_code.size(humaniqTokenAddress):
                                call humaniqTokenAddress.0x475a9fa9 with:
                                     gas gas_remaining - 50 wei
                                    args address(arg1), arg2 / 1000 * baseTokenPrice / 1250
                                if ext_call.success:
                                    if ext_call.return_data[0]:
                                        return (arg2 / 1000 * baseTokenPrice / 1250)
    else:
        if block.timestamp < startDate:
            discountedPrice = 1000 * baseTokenPrice / 1499
            if 1000 * baseTokenPrice / 1499:
                icoBalance += arg2
                coinsIssued += arg2 / 1000 * baseTokenPrice / 1499
                investments[address(arg1)] += arg2 / 1000 * baseTokenPrice / 1499 * discountedPrice
                if ext_code.size(humaniqTokenAddress):
                    call humaniqTokenAddress.0x475a9fa9 with:
                         gas gas_remaining - 50 wei
                        args address(arg1), arg2 / 1000 * baseTokenPrice / 1499
                    if ext_call.success:
                        if ext_call.return_data[0]:
                            return (arg2 / 1000 * baseTokenPrice / 1499)
        else:
            if block.timestamp - startDate >= 384 * 24 * 3600:
                discountedPrice = 1000 * baseTokenPrice / 1000
                if 1000 * baseTokenPrice / 1000:
                    icoBalance += arg2
                    coinsIssued += arg2 / 1000 * baseTokenPrice / 1000
                    investments[address(arg1)] += arg2 / 1000 * baseTokenPrice / 1000 * discountedPrice
                    if ext_code.size(humaniqTokenAddress):
                        call humaniqTokenAddress.0x475a9fa9 with:
                             gas gas_remaining - 50 wei
                            args address(arg1), arg2 / 1000 * baseTokenPrice / 1000
                        if ext_call.success:
                            if ext_call.return_data[0]:
                                return (arg2 / 1000 * baseTokenPrice / 1000)
            else:
                if block.timestamp - startDate >= 216 * 24 * 3600:
                    discountedPrice = 1000 * baseTokenPrice / 1125
                    if 1000 * baseTokenPrice / 1125:
                        icoBalance += arg2
                        coinsIssued += arg2 / 1000 * baseTokenPrice / 1125
                        investments[address(arg1)] += arg2 / 1000 * baseTokenPrice / 1125 * discountedPrice
                        if ext_code.size(humaniqTokenAddress):
                            call humaniqTokenAddress.0x475a9fa9 with:
                                 gas gas_remaining - 50 wei
                                args address(arg1), arg2 / 1000 * baseTokenPrice / 1125
                            if ext_call.success:
                                if ext_call.return_data[0]:
                                    return (arg2 / 1000 * baseTokenPrice / 1125)
                else:
                    if block.timestamp - startDate < 48 * 24 * 3600:
                        discountedPrice = 1000 * baseTokenPrice / 1499
                        if 1000 * baseTokenPrice / 1499:
                            icoBalance += arg2
                            coinsIssued += arg2 / 1000 * baseTokenPrice / 1499
                            investments[address(arg1)] += arg2 / 1000 * baseTokenPrice / 1499 * discountedPrice
                            if ext_code.size(humaniqTokenAddress):
                                call humaniqTokenAddress.0x475a9fa9 with:
                                     gas gas_remaining - 50 wei
                                    args address(arg1), arg2 / 1000 * baseTokenPrice / 1499
                                if ext_call.success:
                                    if ext_call.return_data[0]:
                                        return (arg2 / 1000 * baseTokenPrice / 1499)
                    else:
                        discountedPrice = 1000 * baseTokenPrice / 1250
                        if 1000 * baseTokenPrice / 1250:
                            icoBalance += arg2
                            coinsIssued += arg2 / 1000 * baseTokenPrice / 1250
                            investments[address(arg1)] += arg2 / 1000 * baseTokenPrice / 1250 * discountedPrice
                            if ext_code.size(humaniqTokenAddress):
                                call humaniqTokenAddress.0x475a9fa9 with:
                                     gas gas_remaining - 50 wei
                                    args address(arg1), arg2 / 1000 * baseTokenPrice / 1250
                                if ext_call.success:
                                    if ext_call.return_data[0]:
                                        return (arg2 / 1000 * baseTokenPrice / 1250)
    revert 
}

function _fallback() payable {
    require isICOActive
    require msg.value >= baseTokenPrice
    if block.timestamp < startDate:
        discountedPrice = 1000 * baseTokenPrice / 1499
        if 1000 * baseTokenPrice / 1499:
            if msg.value <= msg.value / 1000 * baseTokenPrice / 1499 * discountedPrice:
                icoBalance += msg.value
                coinsIssued += msg.value / 1000 * baseTokenPrice / 1499
                investments[address(msg.sender)] += msg.value / 1000 * baseTokenPrice / 1499 * discountedPrice
                call multisigAddress with:
                   value msg.value / 1000 * baseTokenPrice / 1499 * discountedPrice wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
                    if ext_code.size(humaniqTokenAddress):
                        call humaniqTokenAddress.0x475a9fa9 with:
                             gas gas_remaining - 50 wei
                            args msg.sender, msg.value / 1000 * baseTokenPrice / 1499
                        if ext_call.success:
                            if ext_call.return_data[0]:
            else:
                call msg.sender with:
                   value msg.value - (msg.value / 1000 * baseTokenPrice / 1499 * discountedPrice) wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
                    icoBalance += msg.value
                    coinsIssued += msg.value / 1000 * baseTokenPrice / 1499
                    investments[address(msg.sender)] += msg.value / 1000 * baseTokenPrice / 1499 * discountedPrice
                    call multisigAddress with:
                       value msg.value / 1000 * baseTokenPrice / 1499 * discountedPrice wei
                         gas 2300 * is_zero(value) wei
                    if ext_call.success:
                        if ext_code.size(humaniqTokenAddress):
                            call humaniqTokenAddress.0x475a9fa9 with:
                                 gas gas_remaining - 50 wei
                                args msg.sender, msg.value / 1000 * baseTokenPrice / 1499
                            if ext_call.success:
                                if ext_call.return_data[0]:
    else:
        if block.timestamp - startDate >= 384 * 24 * 3600:
            discountedPrice = 1000 * baseTokenPrice / 1000
            if 1000 * baseTokenPrice / 1000:
                if msg.value <= msg.value / 1000 * baseTokenPrice / 1000 * discountedPrice:
                    icoBalance += msg.value
                    coinsIssued += msg.value / 1000 * baseTokenPrice / 1000
                    investments[address(msg.sender)] += msg.value / 1000 * baseTokenPrice / 1000 * discountedPrice
                    call multisigAddress with:
                       value msg.value / 1000 * baseTokenPrice / 1000 * discountedPrice wei
                         gas 2300 * is_zero(value) wei
                    if ext_call.success:
                        if ext_code.size(humaniqTokenAddress):
                            call humaniqTokenAddress.0x475a9fa9 with:
                                 gas gas_remaining - 50 wei
                                args msg.sender, msg.value / 1000 * baseTokenPrice / 1000
                            if ext_call.success:
                                if ext_call.return_data[0]:
                else:
                    call msg.sender with:
                       value msg.value - (msg.value / 1000 * baseTokenPrice / 1000 * discountedPrice) wei
                         gas 2300 * is_zero(value) wei
                    if ext_call.success:
                        icoBalance += msg.value
                        coinsIssued += msg.value / 1000 * baseTokenPrice / 1000
                        investments[address(msg.sender)] += msg.value / 1000 * baseTokenPrice / 1000 * discountedPrice
                        call multisigAddress with:
                           value msg.value / 1000 * baseTokenPrice / 1000 * discountedPrice wei
                             gas 2300 * is_zero(value) wei
                        if ext_call.success:
                            if ext_code.size(humaniqTokenAddress):
                                call humaniqTokenAddress.0x475a9fa9 with:
                                     gas gas_remaining - 50 wei
                                    args msg.sender, msg.value / 1000 * baseTokenPrice / 1000
                                if ext_call.success:
                                    if ext_call.return_data[0]:
        else:
            if block.timestamp - startDate >= 216 * 24 * 3600:
                discountedPrice = 1000 * baseTokenPrice / 1125
                if 1000 * baseTokenPrice / 1125:
                    if msg.value <= msg.value / 1000 * baseTokenPrice / 1125 * discountedPrice:
                        icoBalance += msg.value
                        coinsIssued += msg.value / 1000 * baseTokenPrice / 1125
                        investments[address(msg.sender)] += msg.value / 1000 * baseTokenPrice / 1125 * discountedPrice
                        call multisigAddress with:
                           value msg.value / 1000 * baseTokenPrice / 1125 * discountedPrice wei
                             gas 2300 * is_zero(value) wei
                        if ext_call.success:
                            if ext_code.size(humaniqTokenAddress):
                                call humaniqTokenAddress.0x475a9fa9 with:
                                     gas gas_remaining - 50 wei
                                    args msg.sender, msg.value / 1000 * baseTokenPrice / 1125
                                if ext_call.success:
                                    if ext_call.return_data[0]:
                    else:
                        call msg.sender with:
                           value msg.value - (msg.value / 1000 * baseTokenPrice / 1125 * discountedPrice) wei
                             gas 2300 * is_zero(value) wei
                        if ext_call.success:
                            icoBalance += msg.value
                            coinsIssued += msg.value / 1000 * baseTokenPrice / 1125
                            investments[address(msg.sender)] += msg.value / 1000 * baseTokenPrice / 1125 * discountedPrice
                            call multisigAddress with:
                               value msg.value / 1000 * baseTokenPrice / 1125 * discountedPrice wei
                                 gas 2300 * is_zero(value) wei
                            if ext_call.success:
                                if ext_code.size(humaniqTokenAddress):
                                    call humaniqTokenAddress.0x475a9fa9 with:
                                         gas gas_remaining - 50 wei
                                        args msg.sender, msg.value / 1000 * baseTokenPrice / 1125
                                    if ext_call.success:
                                        if ext_call.return_data[0]:
            else:
                if block.timestamp - startDate < 48 * 24 * 3600:
                    discountedPrice = 1000 * baseTokenPrice / 1499
                    if 1000 * baseTokenPrice / 1499:
                        if msg.value <= msg.value / 1000 * baseTokenPrice / 1499 * discountedPrice:
                            icoBalance += msg.value
                            coinsIssued += msg.value / 1000 * baseTokenPrice / 1499
                            investments[address(msg.sender)] += msg.value / 1000 * baseTokenPrice / 1499 * discountedPrice
                            call multisigAddress with:
                               value msg.value / 1000 * baseTokenPrice / 1499 * discountedPrice wei
                                 gas 2300 * is_zero(value) wei
                            if ext_call.success:
                                if ext_code.size(humaniqTokenAddress):
                                    call humaniqTokenAddress.0x475a9fa9 with:
                                         gas gas_remaining - 50 wei
                                        args msg.sender, msg.value / 1000 * baseTokenPrice / 1499
                                    if ext_call.success:
                                        if ext_call.return_data[0]:
                        else:
                            call msg.sender with:
                               value msg.value - (msg.value / 1000 * baseTokenPrice / 1499 * discountedPrice) wei
                                 gas 2300 * is_zero(value) wei
                            if ext_call.success:
                                icoBalance += msg.value
                                coinsIssued += msg.value / 1000 * baseTokenPrice / 1499
                                investments[address(msg.sender)] += msg.value / 1000 * baseTokenPrice / 1499 * discountedPrice
                                call multisigAddress with:
                                   value msg.value / 1000 * baseTokenPrice / 1499 * discountedPrice wei
                                     gas 2300 * is_zero(value) wei
                                if ext_call.success:
                                    if ext_code.size(humaniqTokenAddress):
                                        call humaniqTokenAddress.0x475a9fa9 with:
                                             gas gas_remaining - 50 wei
                                            args msg.sender, msg.value / 1000 * baseTokenPrice / 1499
                                        if ext_call.success:
                                            if ext_call.return_data[0]:
                else:
                    discountedPrice = 1000 * baseTokenPrice / 1250
                    if 1000 * baseTokenPrice / 1250:
                        if msg.value <= msg.value / 1000 * baseTokenPrice / 1250 * discountedPrice:
                            icoBalance += msg.value
                            coinsIssued += msg.value / 1000 * baseTokenPrice / 1250
                            investments[address(msg.sender)] += msg.value / 1000 * baseTokenPrice / 1250 * discountedPrice
                            call multisigAddress with:
                               value msg.value / 1000 * baseTokenPrice / 1250 * discountedPrice wei
                                 gas 2300 * is_zero(value) wei
                            if ext_call.success:
                                if ext_code.size(humaniqTokenAddress):
                                    call humaniqTokenAddress.0x475a9fa9 with:
                                         gas gas_remaining - 50 wei
                                        args msg.sender, msg.value / 1000 * baseTokenPrice / 1250
                                    if ext_call.success:
                                        if ext_call.return_data[0]:
                        else:
                            call msg.sender with:
                               value msg.value - (msg.value / 1000 * baseTokenPrice / 1250 * discountedPrice) wei
                                 gas 2300 * is_zero(value) wei
                            if ext_call.success:
                                icoBalance += msg.value
                                coinsIssued += msg.value / 1000 * baseTokenPrice / 1250
                                investments[address(msg.sender)] += msg.value / 1000 * baseTokenPrice / 1250 * discountedPrice
                                call multisigAddress with:
                                   value msg.value / 1000 * baseTokenPrice / 1250 * discountedPrice wei
                                     gas 2300 * is_zero(value) wei
                                if ext_call.success:
                                    if ext_code.size(humaniqTokenAddress):
                                        call humaniqTokenAddress.0x475a9fa9 with:
                                             gas gas_remaining - 50 wei
                                            args msg.sender, msg.value / 1000 * baseTokenPrice / 1250
                                        if ext_call.success:
                                            if ext_call.return_data[0]:
    revert 
}

function fund() payable {
    require isICOActive
    require msg.value >= baseTokenPrice
    if block.timestamp < startDate:
        discountedPrice = 1000 * baseTokenPrice / 1499
        if 1000 * baseTokenPrice / 1499:
            if msg.value <= msg.value / 1000 * baseTokenPrice / 1499 * discountedPrice:
                icoBalance += msg.value
                coinsIssued += msg.value / 1000 * baseTokenPrice / 1499
                investments[address(msg.sender)] += msg.value / 1000 * baseTokenPrice / 1499 * discountedPrice
                call multisigAddress with:
                   value msg.value / 1000 * baseTokenPrice / 1499 * discountedPrice wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
                    if ext_code.size(humaniqTokenAddress):
                        call humaniqTokenAddress.0x475a9fa9 with:
                             gas gas_remaining - 50 wei
                            args msg.sender, msg.value / 1000 * baseTokenPrice / 1499
                        if ext_call.success:
                            if ext_call.return_data[0]:
                                return (msg.value / 1000 * baseTokenPrice / 1499)
            else:
                call msg.sender with:
                   value msg.value - (msg.value / 1000 * baseTokenPrice / 1499 * discountedPrice) wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
                    icoBalance += msg.value
                    coinsIssued += msg.value / 1000 * baseTokenPrice / 1499
                    investments[address(msg.sender)] += msg.value / 1000 * baseTokenPrice / 1499 * discountedPrice
                    call multisigAddress with:
                       value msg.value / 1000 * baseTokenPrice / 1499 * discountedPrice wei
                         gas 2300 * is_zero(value) wei
                    if ext_call.success:
                        if ext_code.size(humaniqTokenAddress):
                            call humaniqTokenAddress.0x475a9fa9 with:
                                 gas gas_remaining - 50 wei
                                args msg.sender, msg.value / 1000 * baseTokenPrice / 1499
                            if ext_call.success:
                                if ext_call.return_data[0]:
                                    return (msg.value / 1000 * baseTokenPrice / 1499)
    else:
        if block.timestamp - startDate >= 384 * 24 * 3600:
            discountedPrice = 1000 * baseTokenPrice / 1000
            if 1000 * baseTokenPrice / 1000:
                if msg.value <= msg.value / 1000 * baseTokenPrice / 1000 * discountedPrice:
                    icoBalance += msg.value
                    coinsIssued += msg.value / 1000 * baseTokenPrice / 1000
                    investments[address(msg.sender)] += msg.value / 1000 * baseTokenPrice / 1000 * discountedPrice
                    call multisigAddress with:
                       value msg.value / 1000 * baseTokenPrice / 1000 * discountedPrice wei
                         gas 2300 * is_zero(value) wei
                    if ext_call.success:
                        if ext_code.size(humaniqTokenAddress):
                            call humaniqTokenAddress.0x475a9fa9 with:
                                 gas gas_remaining - 50 wei
                                args msg.sender, msg.value / 1000 * baseTokenPrice / 1000
                            if ext_call.success:
                                if ext_call.return_data[0]:
                                    return (msg.value / 1000 * baseTokenPrice / 1000)
                else:
                    call msg.sender with:
                       value msg.value - (msg.value / 1000 * baseTokenPrice / 1000 * discountedPrice) wei
                         gas 2300 * is_zero(value) wei
                    if ext_call.success:
                        icoBalance += msg.value
                        coinsIssued += msg.value / 1000 * baseTokenPrice / 1000
                        investments[address(msg.sender)] += msg.value / 1000 * baseTokenPrice / 1000 * discountedPrice
                        call multisigAddress with:
                           value msg.value / 1000 * baseTokenPrice / 1000 * discountedPrice wei
                             gas 2300 * is_zero(value) wei
                        if ext_call.success:
                            if ext_code.size(humaniqTokenAddress):
                                call humaniqTokenAddress.0x475a9fa9 with:
                                     gas gas_remaining - 50 wei
                                    args msg.sender, msg.value / 1000 * baseTokenPrice / 1000
                                if ext_call.success:
                                    if ext_call.return_data[0]:
                                        return (msg.value / 1000 * baseTokenPrice / 1000)
        else:
            if block.timestamp - startDate >= 216 * 24 * 3600:
                discountedPrice = 1000 * baseTokenPrice / 1125
                if 1000 * baseTokenPrice / 1125:
                    if msg.value <= msg.value / 1000 * baseTokenPrice / 1125 * discountedPrice:
                        icoBalance += msg.value
                        coinsIssued += msg.value / 1000 * baseTokenPrice / 1125
                        investments[address(msg.sender)] += msg.value / 1000 * baseTokenPrice / 1125 * discountedPrice
                        call multisigAddress with:
                           value msg.value / 1000 * baseTokenPrice / 1125 * discountedPrice wei
                             gas 2300 * is_zero(value) wei
                        if ext_call.success:
                            if ext_code.size(humaniqTokenAddress):
                                call humaniqTokenAddress.0x475a9fa9 with:
                                     gas gas_remaining - 50 wei
                                    args msg.sender, msg.value / 1000 * baseTokenPrice / 1125
                                if ext_call.success:
                                    if ext_call.return_data[0]:
                                        return (msg.value / 1000 * baseTokenPrice / 1125)
                    else:
                        call msg.sender with:
                           value msg.value - (msg.value / 1000 * baseTokenPrice / 1125 * discountedPrice) wei
                             gas 2300 * is_zero(value) wei
                        if ext_call.success:
                            icoBalance += msg.value
                            coinsIssued += msg.value / 1000 * baseTokenPrice / 1125
                            investments[address(msg.sender)] += msg.value / 1000 * baseTokenPrice / 1125 * discountedPrice
                            call multisigAddress with:
                               value msg.value / 1000 * baseTokenPrice / 1125 * discountedPrice wei
                                 gas 2300 * is_zero(value) wei
                            if ext_call.success:
                                if ext_code.size(humaniqTokenAddress):
                                    call humaniqTokenAddress.0x475a9fa9 with:
                                         gas gas_remaining - 50 wei
                                        args msg.sender, msg.value / 1000 * baseTokenPrice / 1125
                                    if ext_call.success:
                                        if ext_call.return_data[0]:
                                            return (msg.value / 1000 * baseTokenPrice / 1125)
            else:
                if block.timestamp - startDate < 48 * 24 * 3600:
                    discountedPrice = 1000 * baseTokenPrice / 1499
                    if 1000 * baseTokenPrice / 1499:
                        if msg.value <= msg.value / 1000 * baseTokenPrice / 1499 * discountedPrice:
                            icoBalance += msg.value
                            coinsIssued += msg.value / 1000 * baseTokenPrice / 1499
                            investments[address(msg.sender)] += msg.value / 1000 * baseTokenPrice / 1499 * discountedPrice
                            call multisigAddress with:
                               value msg.value / 1000 * baseTokenPrice / 1499 * discountedPrice wei
                                 gas 2300 * is_zero(value) wei
                            if ext_call.success:
                                if ext_code.size(humaniqTokenAddress):
                                    call humaniqTokenAddress.0x475a9fa9 with:
                                         gas gas_remaining - 50 wei
                                        args msg.sender, msg.value / 1000 * baseTokenPrice / 1499
                                    if ext_call.success:
                                        if ext_call.return_data[0]:
                                            return (msg.value / 1000 * baseTokenPrice / 1499)
                        else:
                            call msg.sender with:
                               value msg.value - (msg.value / 1000 * baseTokenPrice / 1499 * discountedPrice) wei
                                 gas 2300 * is_zero(value) wei
                            if ext_call.success:
                                icoBalance += msg.value
                                coinsIssued += msg.value / 1000 * baseTokenPrice / 1499
                                investments[address(msg.sender)] += msg.value / 1000 * baseTokenPrice / 1499 * discountedPrice
                                call multisigAddress with:
                                   value msg.value / 1000 * baseTokenPrice / 1499 * discountedPrice wei
                                     gas 2300 * is_zero(value) wei
                                if ext_call.success:
                                    if ext_code.size(humaniqTokenAddress):
                                        call humaniqTokenAddress.0x475a9fa9 with:
                                             gas gas_remaining - 50 wei
                                            args msg.sender, msg.value / 1000 * baseTokenPrice / 1499
                                        if ext_call.success:
                                            if ext_call.return_data[0]:
                                                return (msg.value / 1000 * baseTokenPrice / 1499)
                else:
                    discountedPrice = 1000 * baseTokenPrice / 1250
                    if 1000 * baseTokenPrice / 1250:
                        if msg.value <= msg.value / 1000 * baseTokenPrice / 1250 * discountedPrice:
                            icoBalance += msg.value
                            coinsIssued += msg.value / 1000 * baseTokenPrice / 1250
                            investments[address(msg.sender)] += msg.value / 1000 * baseTokenPrice / 1250 * discountedPrice
                            call multisigAddress with:
                               value msg.value / 1000 * baseTokenPrice / 1250 * discountedPrice wei
                                 gas 2300 * is_zero(value) wei
                            if ext_call.success:
                                if ext_code.size(humaniqTokenAddress):
                                    call humaniqTokenAddress.0x475a9fa9 with:
                                         gas gas_remaining - 50 wei
                                        args msg.sender, msg.value / 1000 * baseTokenPrice / 1250
                                    if ext_call.success:
                                        if ext_call.return_data[0]:
                                            return (msg.value / 1000 * baseTokenPrice / 1250)
                        else:
                            call msg.sender with:
                               value msg.value - (msg.value / 1000 * baseTokenPrice / 1250 * discountedPrice) wei
                                 gas 2300 * is_zero(value) wei
                            if ext_call.success:
                                icoBalance += msg.value
                                coinsIssued += msg.value / 1000 * baseTokenPrice / 1250
                                investments[address(msg.sender)] += msg.value / 1000 * baseTokenPrice / 1250 * discountedPrice
                                call multisigAddress with:
                                   value msg.value / 1000 * baseTokenPrice / 1250 * discountedPrice wei
                                     gas 2300 * is_zero(value) wei
                                if ext_call.success:
                                    if ext_code.size(humaniqTokenAddress):
                                        call humaniqTokenAddress.0x475a9fa9 with:
                                             gas gas_remaining - 50 wei
                                            args msg.sender, msg.value / 1000 * baseTokenPrice / 1250
                                        if ext_call.success:
                                            if ext_call.return_data[0]:
                                                return (msg.value / 1000 * baseTokenPrice / 1250)
    revert 
}



}
