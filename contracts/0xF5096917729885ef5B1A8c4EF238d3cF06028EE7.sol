contract main {


// =======================  Init code  ======================


address stor0;
uint8 stor20;

function _fallback() {
    stor0 = msg.sender
    stor20 = 0
    return code.data[124 len 10977]
}



// =====================  Runtime code  =====================


const onTransfer(address arg1, address arg2, uint256 arg3) = 0

const onApprove(address arg1, address arg2, uint256 arg3) = 0


address controllerAddress;
uint256 finalizedBlock;
uint8 stor2;
uint256 totalSupplyCap;
uint256 exchangeRate;
uint256 totalSold;
uint256 totalSaleSupplyCap;
address sitAddress;
address mspAddress;
uint256 startBlock;
uint256 endBlock;
address destEthDevsAddress;
address destTokensSitAddress;
address destTokensTeamAddress;
address destTokensReferalsAddress;
address mspControllerAddress;
uint256 initializedBlock;
uint256 finalizedTime;
uint256 minimum_investment;
uint256 minimum_goal;
uint8 paused;

function destEthDevs() {
    return destEthDevsAddress
}

function endBlock() {
    return endBlock
}

function minimum_goal() {
    return minimum_goal
}

function mspController() {
    return mspControllerAddress
}

function exchangeRate() {
    return exchangeRate
}

function finalizedBlock() {
    return finalizedBlock
}

function startBlock() {
    return startBlock
}

function paused() {
    return bool(paused)
}

function destTokensSit() {
    return destTokensSitAddress
}

function destTokensTeam() {
    return destTokensTeamAddress
}

function totalSold() {
    return totalSold
}

function sit() {
    return sitAddress
}

function msp() {
    return mspAddress
}

function minimum_investment() {
    return minimum_investment
}

function initializedBlock() {
    return initializedBlock
}

function goalMet() {
    return bool(stor2)
}

function totalSaleSupplyCap() {
    return totalSaleSupplyCap
}

function totalSupplyCap() {
    return totalSupplyCap
}

function destTokensReferals() {
    return destTokensReferalsAddress
}

function controller() {
    return controllerAddress
}

function finalizedTime() {
    return finalizedTime
}

function pauseContribution() {
    require msg.sender == controllerAddress
    paused = 1
}

function resumeContribution() {
    require msg.sender == controllerAddress
    paused = 0
}

function changeController(address arg1) {
    require msg.sender == controllerAddress
    controllerAddress = arg1
}

function setMinimumInvestment(uint256 arg1) {
    require msg.sender == controllerAddress
    minimum_investment = arg1
}

function tokensForSale() {
    if totalSaleSupplyCap > totalSold:
        return (totalSaleSupplyCap - totalSold)
    else:
        return 0
}

function setExchangeRate(uint256 arg1) {
    require msg.sender == controllerAddress
    require block.number < startBlock
    exchangeRate = arg1
}

function tokensIssued() {
    require ext_code.size(mspAddress)
    call mspAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function refund() {
    require finalizedBlock
    require not stor2
    require ext_code.size(mspAddress)
    call mspAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0] > 0
    require exchangeRate
    require ext_code.size(mspControllerAddress)
    call mspControllerAddress.refund(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, ext_call.return_data[0]
    require ext_call.success
    require ext_code.size(destEthDevsAddress)
    call destEthDevsAddress.refund(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, ext_call.return_data[0] / exchangeRate
    require ext_call.success
    emit Refund(msg.sender, ext_call.return_data[0], ext_call.return_data[0] / exchangeRate);
}

function claimTokens(address arg1) {
    require msg.sender == controllerAddress
    require ext_code.size(mspAddress)
    call mspAddress.0xf77c4791 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[12 len 20] == this.address:
        require ext_code.size(mspAddress)
        call mspAddress.0xdf8de3e7 with:
             gas gas_remaining - 710 wei
            args arg1
        require ext_call.success
    if not arg1:
        call controllerAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args controllerAddress, ext_call.return_data[0]
    require ext_call.success
    emit ClaimedTokens(ext_call.return_data[0], arg1, controllerAddress);
}

function initialize(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, address arg8, address arg9, address arg10, address arg11, address arg12) {
    require msg.sender == controllerAddress
    require not mspAddress
    mspAddress = arg1
    require ext_code.size(mspAddress)
    call mspAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require not ext_call.return_data[0]
    require ext_code.size(mspAddress)
    call mspAddress.0xf77c4791 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == this.address
    require ext_code.size(mspAddress)
    call mspAddress.0x313ce567 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[31 len 1] == 18
    require arg2
    mspControllerAddress = arg2
    require arg4 > 0
    exchangeRate = arg4
    require arg6 >= block.number
    require arg6 < arg7
    startBlock = arg6
    endBlock = arg7
    require arg8
    destEthDevsAddress = arg8
    require arg9
    destTokensSitAddress = arg9
    require arg10
    destTokensTeamAddress = arg10
    require arg11
    destTokensReferalsAddress = arg11
    require arg12
    sitAddress = arg12
    initializedBlock = block.number
    require ext_code.size(sitAddress)
    call sitAddress.0x981b24d0 with:
         gas gas_remaining - 710 wei
        args initializedBlock
    require ext_call.success
    require 5 * ext_call.return_data[0] <= arg3
    totalSupplyCap = arg3
    require 7 * 10^17 * arg3 / 7 * 10^17 == arg3
    totalSaleSupplyCap = 7 * 10^17 * arg3 / 10^18
    minimum_goal = arg5
}

function finalize() {
    require mspAddress
    require block.number >= startBlock
    if controllerAddress != msg.sender:
        if block.number <= endBlock:
            if totalSaleSupplyCap > totalSold:
                require not totalSaleSupplyCap - totalSold
    require not finalizedBlock
    finalizedBlock = block.number
    finalizedTime = block.timestamp
    if stor2:
        require 5 * 10^16 * totalSupplyCap / 5 * 10^16 == totalSupplyCap
        require ext_code.size(mspAddress)
        call mspAddress.0x827f32c0 with:
             gas gas_remaining - 710 wei
            args destTokensTeamAddress, 5 * 10^16 * totalSupplyCap / 10^18
        require ext_call.success
        require ext_call.return_data[0]
        require 5 * 10^16 * totalSupplyCap / 5 * 10^16 == totalSupplyCap
        require ext_code.size(mspAddress)
        call mspAddress.0x827f32c0 with:
             gas gas_remaining - 710 wei
            args destTokensReferalsAddress, 5 * 10^16 * totalSupplyCap / 10^18
        require ext_call.success
        require ext_call.return_data[0]
        require ext_code.size(sitAddress)
        call sitAddress.0x981b24d0 with:
             gas gas_remaining - 710 wei
            args initializedBlock
        require ext_call.success
        require ext_code.size(mspAddress)
        call mspAddress.0x827f32c0 with:
             gas gas_remaining - 710 wei
            args destTokensSitAddress, ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
    require ext_code.size(mspAddress)
    call mspAddress.0x3cebb823 with:
         gas gas_remaining - 710 wei
        args mspControllerAddress
    require ext_call.success
    emit Finalized()
}

function _fallback() payable {
    require not paused
    require mspAddress
    require block.number >= startBlock
    require block.number <= endBlock
    require not finalizedBlock
    require mspAddress
    require msg.sender
    require msg.value >= minimum_investment
    if not msg.sender:
        if msg.value <= 0:
        if totalSaleSupplyCap <= totalSold:
            if 0 <= msg.value:
                if msg.value <= 0:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
        else:
            if totalSaleSupplyCap - totalSold <= 0:
                if 0 <= msg.value:
                    if msg.value <= 0:
                    call msg.sender with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if ext_call.success:
            else:
                if not msg.value:
                    if msg.value * exchangeRate <= totalSaleSupplyCap - totalSold:
                        if ext_code.size(mspAddress):
                            call mspAddress.0x827f32c0 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, msg.value * exchangeRate
                            if ext_call.success:
                                if ext_call.return_data[0]:
                                    if totalSold + (msg.value * exchangeRate) >= totalSold:
                                        totalSold += msg.value * exchangeRate
                                        if totalSold >= minimum_goal:
                                            stor2 = 1
                                        call destEthDevsAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if ext_call.success:
                                            emit NewSale(msg.value, msg.value * exchangeRate, msg.sender);
                                            if msg.value <= msg.value:
                    else:
                        if exchangeRate:
                            if ext_code.size(mspAddress):
                                call mspAddress.0x827f32c0 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, totalSaleSupplyCap - totalSold
                                if ext_call.success:
                                    if ext_call.return_data[0]:
                                        if totalSaleSupplyCap >= totalSold:
                                            totalSold = totalSaleSupplyCap
                                            if totalSold >= minimum_goal:
                                                stor2 = 1
                                            call destEthDevsAddress with:
                                               value totalSaleSupplyCap - totalSold / exchangeRate wei
                                                 gas 2300 * is_zero(value) wei
                                            if ext_call.success:
                                                emit NewSale(totalSaleSupplyCap - totalSold / exchangeRate, totalSaleSupplyCap - totalSold, msg.sender);
                                                if totalSaleSupplyCap - totalSold / exchangeRate <= msg.value:
                                                    if msg.value - (totalSaleSupplyCap - totalSold / exchangeRate) <= 0:
                                                    call msg.sender with:
                                                       value msg.value - (totalSaleSupplyCap - totalSold / exchangeRate) wei
                                                         gas 2300 * is_zero(value) wei
                                                    if ext_call.success:
                else:
                    if msg.value:
                        if msg.value * exchangeRate / msg.value == exchangeRate:
                            if msg.value * exchangeRate <= totalSaleSupplyCap - totalSold:
                                if ext_code.size(mspAddress):
                                    call mspAddress.0x827f32c0 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, msg.value * exchangeRate
                                    if ext_call.success:
                                        if ext_call.return_data[0]:
                                            if totalSold + (msg.value * exchangeRate) >= totalSold:
                                                totalSold += msg.value * exchangeRate
                                                if totalSold >= minimum_goal:
                                                    stor2 = 1
                                                call destEthDevsAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if ext_call.success:
                                                    emit NewSale(msg.value, msg.value * exchangeRate, msg.sender);
                                                    if msg.value <= msg.value:
                            else:
                                if exchangeRate:
                                    if ext_code.size(mspAddress):
                                        call mspAddress.0x827f32c0 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, totalSaleSupplyCap - totalSold
                                        if ext_call.success:
                                            if ext_call.return_data[0]:
                                                if totalSaleSupplyCap >= totalSold:
                                                    totalSold = totalSaleSupplyCap
                                                    if totalSold >= minimum_goal:
                                                        stor2 = 1
                                                    call destEthDevsAddress with:
                                                       value totalSaleSupplyCap - totalSold / exchangeRate wei
                                                         gas 2300 * is_zero(value) wei
                                                    if ext_call.success:
                                                        emit NewSale(totalSaleSupplyCap - totalSold / exchangeRate, totalSaleSupplyCap - totalSold, msg.sender);
                                                        if totalSaleSupplyCap - totalSold / exchangeRate <= msg.value:
                                                            if msg.value - (totalSaleSupplyCap - totalSold / exchangeRate) <= 0:
                                                            call msg.sender with:
                                                               value msg.value - (totalSaleSupplyCap - totalSold / exchangeRate) wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if ext_call.success:
    else:
        if ext_code.size(msg.sender) <= 0:
            if msg.value <= 0:
            if totalSaleSupplyCap <= totalSold:
                if 0 <= msg.value:
                    if msg.value <= 0:
                    call msg.sender with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if ext_call.success:
            else:
                if totalSaleSupplyCap - totalSold <= 0:
                    if 0 <= msg.value:
                        if msg.value <= 0:
                        call msg.sender with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if ext_call.success:
                else:
                    if not msg.value:
                        if msg.value * exchangeRate <= totalSaleSupplyCap - totalSold:
                            if ext_code.size(mspAddress):
                                call mspAddress.0x827f32c0 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, msg.value * exchangeRate
                                if ext_call.success:
                                    if ext_call.return_data[0]:
                                        if totalSold + (msg.value * exchangeRate) >= totalSold:
                                            totalSold += msg.value * exchangeRate
                                            if totalSold >= minimum_goal:
                                                stor2 = 1
                                            call destEthDevsAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if ext_call.success:
                                                emit NewSale(msg.value, msg.value * exchangeRate, msg.sender);
                                                if msg.value <= msg.value:
                        else:
                            if exchangeRate:
                                if ext_code.size(mspAddress):
                                    call mspAddress.0x827f32c0 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, totalSaleSupplyCap - totalSold
                                    if ext_call.success:
                                        if ext_call.return_data[0]:
                                            if totalSaleSupplyCap >= totalSold:
                                                totalSold = totalSaleSupplyCap
                                                if totalSold >= minimum_goal:
                                                    stor2 = 1
                                                call destEthDevsAddress with:
                                                   value totalSaleSupplyCap - totalSold / exchangeRate wei
                                                     gas 2300 * is_zero(value) wei
                                                if ext_call.success:
                                                    emit NewSale(totalSaleSupplyCap - totalSold / exchangeRate, totalSaleSupplyCap - totalSold, msg.sender);
                                                    if totalSaleSupplyCap - totalSold / exchangeRate <= msg.value:
                                                        if msg.value - (totalSaleSupplyCap - totalSold / exchangeRate) <= 0:
                                                        call msg.sender with:
                                                           value msg.value - (totalSaleSupplyCap - totalSold / exchangeRate) wei
                                                             gas 2300 * is_zero(value) wei
                                                        if ext_call.success:
                    else:
                        if msg.value:
                            if msg.value * exchangeRate / msg.value == exchangeRate:
                                if msg.value * exchangeRate <= totalSaleSupplyCap - totalSold:
                                    if ext_code.size(mspAddress):
                                        call mspAddress.0x827f32c0 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, msg.value * exchangeRate
                                        if ext_call.success:
                                            if ext_call.return_data[0]:
                                                if totalSold + (msg.value * exchangeRate) >= totalSold:
                                                    totalSold += msg.value * exchangeRate
                                                    if totalSold >= minimum_goal:
                                                        stor2 = 1
                                                    call destEthDevsAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if ext_call.success:
                                                        emit NewSale(msg.value, msg.value * exchangeRate, msg.sender);
                                                        if msg.value <= msg.value:
                                else:
                                    if exchangeRate:
                                        if ext_code.size(mspAddress):
                                            call mspAddress.0x827f32c0 with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, totalSaleSupplyCap - totalSold
                                            if ext_call.success:
                                                if ext_call.return_data[0]:
                                                    if totalSaleSupplyCap >= totalSold:
                                                        totalSold = totalSaleSupplyCap
                                                        if totalSold >= minimum_goal:
                                                            stor2 = 1
                                                        call destEthDevsAddress with:
                                                           value totalSaleSupplyCap - totalSold / exchangeRate wei
                                                             gas 2300 * is_zero(value) wei
                                                        if ext_call.success:
                                                            emit NewSale(totalSaleSupplyCap - totalSold / exchangeRate, totalSaleSupplyCap - totalSold, msg.sender);
                                                            if totalSaleSupplyCap - totalSold / exchangeRate <= msg.value:
                                                                if msg.value - (totalSaleSupplyCap - totalSold / exchangeRate) <= 0:
                                                                call msg.sender with:
                                                                   value msg.value - (totalSaleSupplyCap - totalSold / exchangeRate) wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if ext_call.success:
    revert
}

function proxyPayment(address arg1) payable {
    require not paused
    require mspAddress
    require block.number >= startBlock
    require block.number <= endBlock
    require not finalizedBlock
    require mspAddress
    require arg1
    require msg.value >= minimum_investment
    if mspAddress != msg.sender:
        if not msg.sender:
            if msg.value <= 0:
                return 1
            if totalSaleSupplyCap <= totalSold:
                if 0 <= msg.value:
                    if msg.value <= 0:
                        return 1
                    if mspAddress != msg.sender:
                        call msg.sender with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                    else:
                        call arg1 with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                    if ext_call.success:
                        return 1
            else:
                if totalSaleSupplyCap - totalSold <= 0:
                    if 0 <= msg.value:
                        if msg.value <= 0:
                            return 1
                        if mspAddress != msg.sender:
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            call arg1 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                        if ext_call.success:
                            return 1
                else:
                    if not msg.value:
                        if msg.value * exchangeRate <= totalSaleSupplyCap - totalSold:
                            if ext_code.size(mspAddress):
                                call mspAddress.0x827f32c0 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), msg.value * exchangeRate
                                if ext_call.success:
                                    if ext_call.return_data[0]:
                                        if totalSold + (msg.value * exchangeRate) >= totalSold:
                                            totalSold += msg.value * exchangeRate
                                            if totalSold >= minimum_goal:
                                                stor2 = 1
                                            call destEthDevsAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if ext_call.success:
                                                emit NewSale(msg.value, msg.value * exchangeRate, arg1);
                                                if msg.value <= msg.value:
                                                    return 1
                        else:
                            if exchangeRate:
                                if ext_code.size(mspAddress):
                                    call mspAddress.0x827f32c0 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), totalSaleSupplyCap - totalSold
                                    if ext_call.success:
                                        if ext_call.return_data[0]:
                                            if totalSaleSupplyCap >= totalSold:
                                                totalSold = totalSaleSupplyCap
                                                if totalSold >= minimum_goal:
                                                    stor2 = 1
                                                call destEthDevsAddress with:
                                                   value totalSaleSupplyCap - totalSold / exchangeRate wei
                                                     gas 2300 * is_zero(value) wei
                                                if ext_call.success:
                                                    emit NewSale(totalSaleSupplyCap - totalSold / exchangeRate, totalSaleSupplyCap - totalSold, arg1);
                                                    if totalSaleSupplyCap - totalSold / exchangeRate <= msg.value:
                                                        if msg.value - (totalSaleSupplyCap - totalSold / exchangeRate) <= 0:
                                                            return 1
                                                        if mspAddress != msg.sender:
                                                            call msg.sender with:
                                                               value msg.value - (totalSaleSupplyCap - totalSold / exchangeRate) wei
                                                                 gas 2300 * is_zero(value) wei
                                                        else:
                                                            call arg1 with:
                                                               value msg.value - (totalSaleSupplyCap - totalSold / exchangeRate) wei
                                                                 gas 2300 * is_zero(value) wei
                                                        if ext_call.success:
                                                            return 1
                    else:
                        if msg.value:
                            if msg.value * exchangeRate / msg.value == exchangeRate:
                                if msg.value * exchangeRate <= totalSaleSupplyCap - totalSold:
                                    if ext_code.size(mspAddress):
                                        call mspAddress.0x827f32c0 with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), msg.value * exchangeRate
                                        if ext_call.success:
                                            if ext_call.return_data[0]:
                                                if totalSold + (msg.value * exchangeRate) >= totalSold:
                                                    totalSold += msg.value * exchangeRate
                                                    if totalSold >= minimum_goal:
                                                        stor2 = 1
                                                    call destEthDevsAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if ext_call.success:
                                                        emit NewSale(msg.value, msg.value * exchangeRate, arg1);
                                                        if msg.value <= msg.value:
                                                            return 1
                                else:
                                    if exchangeRate:
                                        if ext_code.size(mspAddress):
                                            call mspAddress.0x827f32c0 with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), totalSaleSupplyCap - totalSold
                                            if ext_call.success:
                                                if ext_call.return_data[0]:
                                                    if totalSaleSupplyCap >= totalSold:
                                                        totalSold = totalSaleSupplyCap
                                                        if totalSold >= minimum_goal:
                                                            stor2 = 1
                                                        call destEthDevsAddress with:
                                                           value totalSaleSupplyCap - totalSold / exchangeRate wei
                                                             gas 2300 * is_zero(value) wei
                                                        if ext_call.success:
                                                            emit NewSale(totalSaleSupplyCap - totalSold / exchangeRate, totalSaleSupplyCap - totalSold, arg1);
                                                            if totalSaleSupplyCap - totalSold / exchangeRate <= msg.value:
                                                                if msg.value - (totalSaleSupplyCap - totalSold / exchangeRate) <= 0:
                                                                    return 1
                                                                if mspAddress != msg.sender:
                                                                    call msg.sender with:
                                                                       value msg.value - (totalSaleSupplyCap - totalSold / exchangeRate) wei
                                                                         gas 2300 * is_zero(value) wei
                                                                else:
                                                                    call arg1 with:
                                                                       value msg.value - (totalSaleSupplyCap - totalSold / exchangeRate) wei
                                                                         gas 2300 * is_zero(value) wei
                                                                if ext_call.success:
                                                                    return 1
        else:
            if ext_code.size(msg.sender) <= 0:
                if msg.value <= 0:
                    return 1
                if totalSaleSupplyCap <= totalSold:
                    if 0 <= msg.value:
                        if msg.value <= 0:
                            return 1
                        if mspAddress != msg.sender:
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            call arg1 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                        if ext_call.success:
                            return 1
                else:
                    if totalSaleSupplyCap - totalSold <= 0:
                        if 0 <= msg.value:
                            if msg.value <= 0:
                                return 1
                            if mspAddress != msg.sender:
                                call msg.sender with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                            else:
                                call arg1 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                            if ext_call.success:
                                return 1
                    else:
                        if not msg.value:
                            if msg.value * exchangeRate <= totalSaleSupplyCap - totalSold:
                                if ext_code.size(mspAddress):
                                    call mspAddress.0x827f32c0 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), msg.value * exchangeRate
                                    if ext_call.success:
                                        if ext_call.return_data[0]:
                                            if totalSold + (msg.value * exchangeRate) >= totalSold:
                                                totalSold += msg.value * exchangeRate
                                                if totalSold >= minimum_goal:
                                                    stor2 = 1
                                                call destEthDevsAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if ext_call.success:
                                                    emit NewSale(msg.value, msg.value * exchangeRate, arg1);
                                                    if msg.value <= msg.value:
                                                        return 1
                            else:
                                if exchangeRate:
                                    if ext_code.size(mspAddress):
                                        call mspAddress.0x827f32c0 with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), totalSaleSupplyCap - totalSold
                                        if ext_call.success:
                                            if ext_call.return_data[0]:
                                                if totalSaleSupplyCap >= totalSold:
                                                    totalSold = totalSaleSupplyCap
                                                    if totalSold >= minimum_goal:
                                                        stor2 = 1
                                                    call destEthDevsAddress with:
                                                       value totalSaleSupplyCap - totalSold / exchangeRate wei
                                                         gas 2300 * is_zero(value) wei
                                                    if ext_call.success:
                                                        emit NewSale(totalSaleSupplyCap - totalSold / exchangeRate, totalSaleSupplyCap - totalSold, arg1);
                                                        if totalSaleSupplyCap - totalSold / exchangeRate <= msg.value:
                                                            if msg.value - (totalSaleSupplyCap - totalSold / exchangeRate) <= 0:
                                                                return 1
                                                            if mspAddress != msg.sender:
                                                                call msg.sender with:
                                                                   value msg.value - (totalSaleSupplyCap - totalSold / exchangeRate) wei
                                                                     gas 2300 * is_zero(value) wei
                                                            else:
                                                                call arg1 with:
                                                                   value msg.value - (totalSaleSupplyCap - totalSold / exchangeRate) wei
                                                                     gas 2300 * is_zero(value) wei
                                                            if ext_call.success:
                                                                return 1
                        else:
                            if msg.value:
                                if msg.value * exchangeRate / msg.value == exchangeRate:
                                    if msg.value * exchangeRate <= totalSaleSupplyCap - totalSold:
                                        if ext_code.size(mspAddress):
                                            call mspAddress.0x827f32c0 with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), msg.value * exchangeRate
                                            if ext_call.success:
                                                if ext_call.return_data[0]:
                                                    if totalSold + (msg.value * exchangeRate) >= totalSold:
                                                        totalSold += msg.value * exchangeRate
                                                        if totalSold >= minimum_goal:
                                                            stor2 = 1
                                                        call destEthDevsAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if ext_call.success:
                                                            emit NewSale(msg.value, msg.value * exchangeRate, arg1);
                                                            if msg.value <= msg.value:
                                                                return 1
                                    else:
                                        if exchangeRate:
                                            if ext_code.size(mspAddress):
                                                call mspAddress.0x827f32c0 with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), totalSaleSupplyCap - totalSold
                                                if ext_call.success:
                                                    if ext_call.return_data[0]:
                                                        if totalSaleSupplyCap >= totalSold:
                                                            totalSold = totalSaleSupplyCap
                                                            if totalSold >= minimum_goal:
                                                                stor2 = 1
                                                            call destEthDevsAddress with:
                                                               value totalSaleSupplyCap - totalSold / exchangeRate wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if ext_call.success:
                                                                emit NewSale(totalSaleSupplyCap - totalSold / exchangeRate, totalSaleSupplyCap - totalSold, arg1);
                                                                if totalSaleSupplyCap - totalSold / exchangeRate <= msg.value:
                                                                    if msg.value - (totalSaleSupplyCap - totalSold / exchangeRate) <= 0:
                                                                        return 1
                                                                    if mspAddress != msg.sender:
                                                                        call msg.sender with:
                                                                           value msg.value - (totalSaleSupplyCap - totalSold / exchangeRate) wei
                                                                             gas 2300 * is_zero(value) wei
                                                                    else:
                                                                        call arg1 with:
                                                                           value msg.value - (totalSaleSupplyCap - totalSold / exchangeRate) wei
                                                                             gas 2300 * is_zero(value) wei
                                                                    if ext_call.success:
                                                                        return 1
    else:
        if not arg1:
            if msg.value <= 0:
                return 1
            if totalSaleSupplyCap <= totalSold:
                if 0 <= msg.value:
                    if msg.value <= 0:
                        return 1
                    if mspAddress != msg.sender:
                        call msg.sender with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                    else:
                        call arg1 with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                    if ext_call.success:
                        return 1
            else:
                if totalSaleSupplyCap - totalSold <= 0:
                    if 0 <= msg.value:
                        if msg.value <= 0:
                            return 1
                        if mspAddress != msg.sender:
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            call arg1 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                        if ext_call.success:
                            return 1
                else:
                    if not msg.value:
                        if msg.value * exchangeRate <= totalSaleSupplyCap - totalSold:
                            if ext_code.size(mspAddress):
                                call mspAddress.0x827f32c0 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), msg.value * exchangeRate
                                if ext_call.success:
                                    if ext_call.return_data[0]:
                                        if totalSold + (msg.value * exchangeRate) >= totalSold:
                                            totalSold += msg.value * exchangeRate
                                            if totalSold >= minimum_goal:
                                                stor2 = 1
                                            call destEthDevsAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if ext_call.success:
                                                emit NewSale(msg.value, msg.value * exchangeRate, arg1);
                                                if msg.value <= msg.value:
                                                    return 1
                        else:
                            if exchangeRate:
                                if ext_code.size(mspAddress):
                                    call mspAddress.0x827f32c0 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), totalSaleSupplyCap - totalSold
                                    if ext_call.success:
                                        if ext_call.return_data[0]:
                                            if totalSaleSupplyCap >= totalSold:
                                                totalSold = totalSaleSupplyCap
                                                if totalSold >= minimum_goal:
                                                    stor2 = 1
                                                call destEthDevsAddress with:
                                                   value totalSaleSupplyCap - totalSold / exchangeRate wei
                                                     gas 2300 * is_zero(value) wei
                                                if ext_call.success:
                                                    emit NewSale(totalSaleSupplyCap - totalSold / exchangeRate, totalSaleSupplyCap - totalSold, arg1);
                                                    if totalSaleSupplyCap - totalSold / exchangeRate <= msg.value:
                                                        if msg.value - (totalSaleSupplyCap - totalSold / exchangeRate) <= 0:
                                                            return 1
                                                        if mspAddress != msg.sender:
                                                            call msg.sender with:
                                                               value msg.value - (totalSaleSupplyCap - totalSold / exchangeRate) wei
                                                                 gas 2300 * is_zero(value) wei
                                                        else:
                                                            call arg1 with:
                                                               value msg.value - (totalSaleSupplyCap - totalSold / exchangeRate) wei
                                                                 gas 2300 * is_zero(value) wei
                                                        if ext_call.success:
                                                            return 1
                    else:
                        if msg.value:
                            if msg.value * exchangeRate / msg.value == exchangeRate:
                                if msg.value * exchangeRate <= totalSaleSupplyCap - totalSold:
                                    if ext_code.size(mspAddress):
                                        call mspAddress.0x827f32c0 with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), msg.value * exchangeRate
                                        if ext_call.success:
                                            if ext_call.return_data[0]:
                                                if totalSold + (msg.value * exchangeRate) >= totalSold:
                                                    totalSold += msg.value * exchangeRate
                                                    if totalSold >= minimum_goal:
                                                        stor2 = 1
                                                    call destEthDevsAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if ext_call.success:
                                                        emit NewSale(msg.value, msg.value * exchangeRate, arg1);
                                                        if msg.value <= msg.value:
                                                            return 1
                                else:
                                    if exchangeRate:
                                        if ext_code.size(mspAddress):
                                            call mspAddress.0x827f32c0 with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), totalSaleSupplyCap - totalSold
                                            if ext_call.success:
                                                if ext_call.return_data[0]:
                                                    if totalSaleSupplyCap >= totalSold:
                                                        totalSold = totalSaleSupplyCap
                                                        if totalSold >= minimum_goal:
                                                            stor2 = 1
                                                        call destEthDevsAddress with:
                                                           value totalSaleSupplyCap - totalSold / exchangeRate wei
                                                             gas 2300 * is_zero(value) wei
                                                        if ext_call.success:
                                                            emit NewSale(totalSaleSupplyCap - totalSold / exchangeRate, totalSaleSupplyCap - totalSold, arg1);
                                                            if totalSaleSupplyCap - totalSold / exchangeRate <= msg.value:
                                                                if msg.value - (totalSaleSupplyCap - totalSold / exchangeRate) <= 0:
                                                                    return 1
                                                                if mspAddress != msg.sender:
                                                                    call msg.sender with:
                                                                       value msg.value - (totalSaleSupplyCap - totalSold / exchangeRate) wei
                                                                         gas 2300 * is_zero(value) wei
                                                                else:
                                                                    call arg1 with:
                                                                       value msg.value - (totalSaleSupplyCap - totalSold / exchangeRate) wei
                                                                         gas 2300 * is_zero(value) wei
                                                                if ext_call.success:
                                                                    return 1
        else:
            if ext_code.size(arg1) <= 0:
                if msg.value <= 0:
                    return 1
                if totalSaleSupplyCap <= totalSold:
                    if 0 <= msg.value:
                        if msg.value <= 0:
                            return 1
                        if mspAddress != msg.sender:
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            call arg1 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                        if ext_call.success:
                            return 1
                else:
                    if totalSaleSupplyCap - totalSold <= 0:
                        if 0 <= msg.value:
                            if msg.value <= 0:
                                return 1
                            if mspAddress != msg.sender:
                                call msg.sender with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                            else:
                                call arg1 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                            if ext_call.success:
                                return 1
                    else:
                        if not msg.value:
                            if msg.value * exchangeRate <= totalSaleSupplyCap - totalSold:
                                if ext_code.size(mspAddress):
                                    call mspAddress.0x827f32c0 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), msg.value * exchangeRate
                                    if ext_call.success:
                                        if ext_call.return_data[0]:
                                            if totalSold + (msg.value * exchangeRate) >= totalSold:
                                                totalSold += msg.value * exchangeRate
                                                if totalSold >= minimum_goal:
                                                    stor2 = 1
                                                call destEthDevsAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if ext_call.success:
                                                    emit NewSale(msg.value, msg.value * exchangeRate, arg1);
                                                    if msg.value <= msg.value:
                                                        return 1
                            else:
                                if exchangeRate:
                                    if ext_code.size(mspAddress):
                                        call mspAddress.0x827f32c0 with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), totalSaleSupplyCap - totalSold
                                        if ext_call.success:
                                            if ext_call.return_data[0]:
                                                if totalSaleSupplyCap >= totalSold:
                                                    totalSold = totalSaleSupplyCap
                                                    if totalSold >= minimum_goal:
                                                        stor2 = 1
                                                    call destEthDevsAddress with:
                                                       value totalSaleSupplyCap - totalSold / exchangeRate wei
                                                         gas 2300 * is_zero(value) wei
                                                    if ext_call.success:
                                                        emit NewSale(totalSaleSupplyCap - totalSold / exchangeRate, totalSaleSupplyCap - totalSold, arg1);
                                                        if totalSaleSupplyCap - totalSold / exchangeRate <= msg.value:
                                                            if msg.value - (totalSaleSupplyCap - totalSold / exchangeRate) <= 0:
                                                                return 1
                                                            if mspAddress != msg.sender:
                                                                call msg.sender with:
                                                                   value msg.value - (totalSaleSupplyCap - totalSold / exchangeRate) wei
                                                                     gas 2300 * is_zero(value) wei
                                                            else:
                                                                call arg1 with:
                                                                   value msg.value - (totalSaleSupplyCap - totalSold / exchangeRate) wei
                                                                     gas 2300 * is_zero(value) wei
                                                            if ext_call.success:
                                                                return 1
                        else:
                            if msg.value:
                                if msg.value * exchangeRate / msg.value == exchangeRate:
                                    if msg.value * exchangeRate <= totalSaleSupplyCap - totalSold:
                                        if ext_code.size(mspAddress):
                                            call mspAddress.0x827f32c0 with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), msg.value * exchangeRate
                                            if ext_call.success:
                                                if ext_call.return_data[0]:
                                                    if totalSold + (msg.value * exchangeRate) >= totalSold:
                                                        totalSold += msg.value * exchangeRate
                                                        if totalSold >= minimum_goal:
                                                            stor2 = 1
                                                        call destEthDevsAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if ext_call.success:
                                                            emit NewSale(msg.value, msg.value * exchangeRate, arg1);
                                                            if msg.value <= msg.value:
                                                                return 1
                                    else:
                                        if exchangeRate:
                                            if ext_code.size(mspAddress):
                                                call mspAddress.0x827f32c0 with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), totalSaleSupplyCap - totalSold
                                                if ext_call.success:
                                                    if ext_call.return_data[0]:
                                                        if totalSaleSupplyCap >= totalSold:
                                                            totalSold = totalSaleSupplyCap
                                                            if totalSold >= minimum_goal:
                                                                stor2 = 1
                                                            call destEthDevsAddress with:
                                                               value totalSaleSupplyCap - totalSold / exchangeRate wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if ext_call.success:
                                                                emit NewSale(totalSaleSupplyCap - totalSold / exchangeRate, totalSaleSupplyCap - totalSold, arg1);
                                                                if totalSaleSupplyCap - totalSold / exchangeRate <= msg.value:
                                                                    if msg.value - (totalSaleSupplyCap - totalSold / exchangeRate) <= 0:
                                                                        return 1
                                                                    if mspAddress != msg.sender:
                                                                        call msg.sender with:
                                                                           value msg.value - (totalSaleSupplyCap - totalSold / exchangeRate) wei
                                                                             gas 2300 * is_zero(value) wei
                                                                    else:
                                                                        call arg1 with:
                                                                           value msg.value - (totalSaleSupplyCap - totalSold / exchangeRate) wei
                                                                             gas 2300 * is_zero(value) wei
                                                                    if ext_call.success:
                                                                        return 1
    revert
}



}
