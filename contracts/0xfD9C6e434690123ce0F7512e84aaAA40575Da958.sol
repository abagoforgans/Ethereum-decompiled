contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = msg.sender
    require code.data[6513 len 20]
    stor1 = code.data[6513 len 20]
    return code.data[231 len 6270]
}



// =====================  Runtime code  =====================


const exchangeRate = 1

const investor_bonus = 25


address controllerAddress;
address wctAddress;
address preSaleWalletAddress;
uint256 totalSupplyCap;
uint256 totalSold;
uint256 minimum_investment;
uint256 startBlock;
uint256 endBlock;
uint256 initializedBlock;
uint256 finalizedBlock;
uint8 paused;
uint8 onApprove; offset 8
uint256 stor10; offset 8

function endBlock() {
    return endBlock
}

function preSaleWallet() {
    return preSaleWalletAddress
}

function finalizedBlock() {
    return finalizedBlock
}

function startBlock() {
    return startBlock
}

function onTransfer(address arg1, address arg2, uint256 arg3) {
    return bool(onApprove)
}

function paused() {
    return bool(paused)
}

function totalSold() {
    return totalSold
}

function wct() {
    return wctAddress
}

function transferable() {
    return bool(onApprove)
}

function minimum_investment() {
    return minimum_investment
}

function initializedBlock() {
    return initializedBlock
}

function totalSupplyCap() {
    return totalSupplyCap
}

function onApprove(address arg1, address arg2, uint256 arg3) {
    return bool(onApprove)
}

function controller() {
    return controllerAddress
}

function pauseContribution(bool arg1) {
    require msg.sender == controllerAddress
    paused = uint8(arg1)
}

function allowTransfers(bool arg1) {
    require msg.sender == controllerAddress
    stor10 = Mask(248, 0, arg1)
}

function changeController(address arg1) {
    require msg.sender == controllerAddress
    controllerAddress = arg1
}

function tokensForSale() {
    if totalSupplyCap > totalSold:
        return (totalSupplyCap - totalSold)
    else:
        return 0
}

function finalize() {
    require initializedBlock
    require not finalizedBlock
    require block.number >= startBlock
    if controllerAddress != msg.sender:
        if block.number <= endBlock:
            if totalSupplyCap > totalSold:
                require not totalSupplyCap - totalSold
    require ext_code.size(wctAddress)
    call wctAddress.0x3cebb823 with:
         gas gas_remaining - 710 wei
        args 0
    require ext_call.success
    finalizedBlock = block.number
    emit Finalized(finalizedBlock);
}

function initialize(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require msg.sender == controllerAddress
    require not initializedBlock
    require ext_code.size(wctAddress)
    call wctAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require not ext_call.return_data[0]
    require ext_code.size(wctAddress)
    call wctAddress.0xf77c4791 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == this.address
    require ext_code.size(wctAddress)
    call wctAddress.0x313ce567 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[31 len 1] == 18
    require arg1
    preSaleWalletAddress = arg1
    require arg4 >= block.number
    require arg4 < arg5
    startBlock = arg4
    endBlock = arg5
    require arg2 > 0
    totalSupplyCap = arg2
    minimum_investment = arg3
    initializedBlock = block.number
    emit Initialized(initializedBlock);
}

function claimTokens(address arg1) {
    require msg.sender == controllerAddress
    require ext_code.size(wctAddress)
    call wctAddress.0xf77c4791 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[12 len 20] == this.address:
        require ext_code.size(wctAddress)
        call wctAddress.0xdf8de3e7 with:
             gas gas_remaining - 710 wei
            args arg1
        require ext_call.success
    if not arg1:
        call controllerAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
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

function _fallback() payable {
    require not paused
    require initializedBlock
    require block.number >= startBlock
    require block.number <= endBlock
    require not finalizedBlock
    require msg.sender
    require msg.value >= minimum_investment
    if msg.sender:
        require ext_code.size(msg.sender) <= 0
    if totalSupplyCap <= totalSold:
        if msg.value > 0:
            require 0 <= msg.value
            if msg.value > 0:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
    else:
        if msg.value > 0:
            if totalSupplyCap - totalSold <= 0:
                require 0 <= msg.value
                if msg.value > 0:
                    call msg.sender with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
            else:
                if msg.value:
                    require msg.value
                    require msg.value / msg.value == 1
                require ext_code.size(wctAddress)
                if msg.value <= totalSupplyCap - totalSold:
                    call wctAddress.0x827f32c0 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, msg.value
                    require ext_call.success
                    require ext_call.return_data[0]
                    require totalSold + msg.value >= totalSold
                    totalSold += msg.value
                    call preSaleWalletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit NewSale(msg.value, msg.value, msg.sender);
                    require msg.value <= msg.value
                call wctAddress.0x827f32c0 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, totalSupplyCap - totalSold
                require ext_call.success
                require ext_call.return_data[0]
                require totalSupplyCap >= totalSold
                totalSold = totalSupplyCap
                call preSaleWalletAddress with:
                   value totalSupplyCap - totalSold wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                emit NewSale(totalSupplyCap - totalSold, totalSupplyCap - totalSold, msg.sender);
                require totalSupplyCap - totalSold <= msg.value
                if msg.value - totalSupplyCap + totalSold > 0:
                    call msg.sender with:
                       value msg.value - totalSupplyCap + totalSold wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
}

function proxyPayment(address arg1) payable {
    require not paused
    require initializedBlock
    require block.number >= startBlock
    require block.number <= endBlock
    require not finalizedBlock
    require arg1
    require msg.value >= minimum_investment
    if wctAddress != msg.sender:
        if msg.sender:
            require ext_code.size(msg.sender) <= 0
        if totalSupplyCap <= totalSold:
            if msg.value > 0:
                require 0 <= msg.value
                if msg.value > 0:
                    call msg.sender with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
        else:
            if msg.value > 0:
                if totalSupplyCap - totalSold <= 0:
                    require 0 <= msg.value
                    if msg.value > 0:
                        call msg.sender with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                else:
                    if msg.value:
                        require msg.value
                        require msg.value / msg.value == 1
                    require ext_code.size(wctAddress)
                    if msg.value <= totalSupplyCap - totalSold:
                        call wctAddress.0x827f32c0 with:
                             gas gas_remaining - 710 wei
                            args address(arg1), msg.value
                        require ext_call.success
                        require ext_call.return_data[0]
                        require totalSold + msg.value >= totalSold
                        totalSold += msg.value
                        call preSaleWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit NewSale(msg.value, msg.value, arg1);
                        require msg.value <= msg.value
                        return 1
                    call wctAddress.0x827f32c0 with:
                         gas gas_remaining - 710 wei
                        args address(arg1), totalSupplyCap - totalSold
                    require ext_call.success
                    require ext_call.return_data[0]
                    require totalSupplyCap >= totalSold
                    totalSold = totalSupplyCap
                    call preSaleWalletAddress with:
                       value totalSupplyCap - totalSold wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit NewSale(totalSupplyCap - totalSold, totalSupplyCap - totalSold, arg1);
                    require totalSupplyCap - totalSold <= msg.value
                    if msg.value - totalSupplyCap + totalSold > 0:
                        call msg.sender with:
                           value msg.value - totalSupplyCap + totalSold wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
    else:
        if arg1:
            require ext_code.size(arg1) <= 0
        if totalSupplyCap <= totalSold:
            if msg.value > 0:
                require 0 <= msg.value
                if msg.value > 0:
                    call arg1 with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
        else:
            if msg.value > 0:
                if totalSupplyCap - totalSold <= 0:
                    require 0 <= msg.value
                    if msg.value > 0:
                        call arg1 with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                else:
                    if msg.value:
                        require msg.value
                        require msg.value / msg.value == 1
                    require ext_code.size(wctAddress)
                    if msg.value <= totalSupplyCap - totalSold:
                        call wctAddress.0x827f32c0 with:
                             gas gas_remaining - 710 wei
                            args address(arg1), msg.value
                        require ext_call.success
                        require ext_call.return_data[0]
                        require totalSold + msg.value >= totalSold
                        totalSold += msg.value
                        call preSaleWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit NewSale(msg.value, msg.value, arg1);
                        require msg.value <= msg.value
                        return 1
                    call wctAddress.0x827f32c0 with:
                         gas gas_remaining - 710 wei
                        args address(arg1), totalSupplyCap - totalSold
                    require ext_call.success
                    require ext_call.return_data[0]
                    require totalSupplyCap >= totalSold
                    totalSold = totalSupplyCap
                    call preSaleWalletAddress with:
                       value totalSupplyCap - totalSold wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit NewSale(totalSupplyCap - totalSold, totalSupplyCap - totalSold, arg1);
                    require totalSupplyCap - totalSold <= msg.value
                    if msg.value - totalSupplyCap + totalSold > 0:
                        call arg1 with:
                           value msg.value - totalSupplyCap + totalSold wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
    return 1
}



}
