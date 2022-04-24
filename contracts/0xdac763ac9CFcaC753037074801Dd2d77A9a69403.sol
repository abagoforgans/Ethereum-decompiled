contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;

function _fallback() {
    stor0 = msg.sender
    require code.data[8014 len 20]
    require code.data[8046 len 20]
    stor1 = code.data[8014 len 20]
    stor2 = code.data[8046 len 20]
    return code.data[339 len 7663]
}



// =====================  Runtime code  =====================


const onTransfer(address arg1, address arg2, uint256 arg3) = 0

const onApprove(address arg1, address arg2, uint256 arg3) = 0


address controllerAddress;
address aptAddress;
address place_holderAddress;
address preSaleWalletAddress;
uint256 totalSupplyCap;
uint256 totalSold;
uint256 minimum_investment;
uint256 numWhitelistedInvestors;
mapping of uint8 stor8;
uint256 startBlock;
uint256 endBlock;
uint256 initializedBlock;
uint256 finalizedBlock;
uint8 paused;

function endBlock() {
    return endBlock
}

function preSaleWallet() {
    return preSaleWalletAddress
}

function canPurchase(address arg1) {
    return bool(stor8[arg1])
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

function totalSold() {
    return totalSold
}

function apt() {
    return aptAddress
}

function numWhitelistedInvestors() {
    return numWhitelistedInvestors
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

function place_holder() {
    return place_holderAddress
}

function controller() {
    return controllerAddress
}

function getExchangeRate(uint256 arg1) {
    if arg1 < 330 * 10^18:
        return 3960
    return 4290
}

function pauseContribution(bool arg1) {
    require msg.sender == controllerAddress
    paused = uint8(arg1)
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

function blacklist(address arg1) {
    require msg.sender == controllerAddress
    if stor8[address(arg1)]:
        numWhitelistedInvestors--
        stor8[address(arg1)] = 0
}

function whitelist(address arg1) {
    require msg.sender == controllerAddress
    if not stor8[address(arg1)]:
        numWhitelistedInvestors++
        stor8[address(arg1)] = 1
}

function finalize() {
    require initializedBlock
    require not finalizedBlock
    require block.number >= startBlock
    if controllerAddress != msg.sender:
        if block.number <= endBlock:
            if totalSupplyCap > totalSold:
                require not totalSupplyCap - totalSold
    require ext_code.size(aptAddress)
    call aptAddress.0x3cebb823 with:
         gas gas_remaining - 710 wei
        args place_holderAddress
    require ext_call.success
    finalizedBlock = block.number
    emit Finalized(finalizedBlock);
}

function blacklistAddresses(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == controllerAddress
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require msg.sender == controllerAddress
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 8
        if stor8[mem[(32 * idx) + 140 len 20]]:
            numWhitelistedInvestors--
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 8
            stor8[address(mem[(32 * idx) + 128])] = 0
        idx = idx + 1
        continue 
}

function whitelistAddresses(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == controllerAddress
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require msg.sender == controllerAddress
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 8
        if not stor8[mem[(32 * idx) + 140 len 20]]:
            numWhitelistedInvestors++
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 8
            stor8[address(mem[(32 * idx) + 128])] = 1
        idx = idx + 1
        continue 
}

function initialize(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require msg.sender == controllerAddress
    require not initializedBlock
    require ext_code.size(aptAddress)
    call aptAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require not ext_call.return_data[0]
    require ext_code.size(aptAddress)
    call aptAddress.0xf77c4791 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == this.address
    require ext_code.size(aptAddress)
    call aptAddress.0x313ce567 with:
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
    require ext_code.size(aptAddress)
    call aptAddress.0xf77c4791 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[12 len 20] == this.address:
        require ext_code.size(aptAddress)
        call aptAddress.0xdf8de3e7 with:
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
    require stor8[address(msg.sender)]
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
        if msg.value < 330 * 10^18:
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
                        require 3960 * msg.value / msg.value == 3960
                    require ext_code.size(aptAddress)
                    if 3960 * msg.value <= totalSupplyCap - totalSold:
                        call aptAddress.0x827f32c0 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 3960 * msg.value
                        require ext_call.success
                        require ext_call.return_data[0]
                        require totalSold + (3960 * msg.value) >= totalSold
                        totalSold += 3960 * msg.value
                        call preSaleWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit NewSale(msg.value, 3960 * msg.value, msg.sender);
                        require msg.value <= msg.value
                    call aptAddress.0x827f32c0 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, totalSupplyCap - totalSold
                    require ext_call.success
                    require ext_call.return_data[0]
                    require totalSupplyCap >= totalSold
                    totalSold = totalSupplyCap
                    call preSaleWalletAddress with:
                       value totalSupplyCap - totalSold / 3960 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit NewSale(totalSupplyCap - totalSold / 3960, totalSupplyCap - totalSold, msg.sender);
                    require totalSupplyCap - totalSold / 3960 <= msg.value
                    if msg.value - (totalSupplyCap - totalSold / 3960) > 0:
                        call msg.sender with:
                           value msg.value - (totalSupplyCap - totalSold / 3960) wei
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
                        require 4290 * msg.value / msg.value == 4290
                    require ext_code.size(aptAddress)
                    if 4290 * msg.value <= totalSupplyCap - totalSold:
                        call aptAddress.0x827f32c0 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 4290 * msg.value
                        require ext_call.success
                        require ext_call.return_data[0]
                        require totalSold + (4290 * msg.value) >= totalSold
                        totalSold += 4290 * msg.value
                        call preSaleWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit NewSale(msg.value, 4290 * msg.value, msg.sender);
                        require msg.value <= msg.value
                    call aptAddress.0x827f32c0 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, totalSupplyCap - totalSold
                    require ext_call.success
                    require ext_call.return_data[0]
                    require totalSupplyCap >= totalSold
                    totalSold = totalSupplyCap
                    call preSaleWalletAddress with:
                       value totalSupplyCap - totalSold / 4290 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit NewSale(totalSupplyCap - totalSold / 4290, totalSupplyCap - totalSold, msg.sender);
                    require totalSupplyCap - totalSold / 4290 <= msg.value
                    if msg.value - (totalSupplyCap - totalSold / 4290) > 0:
                        call msg.sender with:
                           value msg.value - (totalSupplyCap - totalSold / 4290) wei
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
    require stor8[address(arg1)]
    if aptAddress != msg.sender:
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
            if msg.value < 330 * 10^18:
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
                            require 3960 * msg.value / msg.value == 3960
                        require ext_code.size(aptAddress)
                        if 3960 * msg.value <= totalSupplyCap - totalSold:
                            call aptAddress.0x827f32c0 with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), 3960 * msg.value
                            require ext_call.success
                            require ext_call.return_data[0]
                            require totalSold + (3960 * msg.value) >= totalSold
                            totalSold += 3960 * msg.value
                            call preSaleWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit NewSale(msg.value, 3960 * msg.value, arg1);
                            require msg.value <= msg.value
                            return 1
                        call aptAddress.0x827f32c0 with:
                             gas gas_remaining - 710 wei
                            args address(arg1), totalSupplyCap - totalSold
                        require ext_call.success
                        require ext_call.return_data[0]
                        require totalSupplyCap >= totalSold
                        totalSold = totalSupplyCap
                        call preSaleWalletAddress with:
                           value totalSupplyCap - totalSold / 3960 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit NewSale(totalSupplyCap - totalSold / 3960, totalSupplyCap - totalSold, arg1);
                        require totalSupplyCap - totalSold / 3960 <= msg.value
                        if msg.value - (totalSupplyCap - totalSold / 3960) > 0:
                            call msg.sender with:
                               value msg.value - (totalSupplyCap - totalSold / 3960) wei
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
                            require 4290 * msg.value / msg.value == 4290
                        require ext_code.size(aptAddress)
                        if 4290 * msg.value <= totalSupplyCap - totalSold:
                            call aptAddress.0x827f32c0 with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), 4290 * msg.value
                            require ext_call.success
                            require ext_call.return_data[0]
                            require totalSold + (4290 * msg.value) >= totalSold
                            totalSold += 4290 * msg.value
                            call preSaleWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit NewSale(msg.value, 4290 * msg.value, arg1);
                            require msg.value <= msg.value
                            return 1
                        call aptAddress.0x827f32c0 with:
                             gas gas_remaining - 710 wei
                            args address(arg1), totalSupplyCap - totalSold
                        require ext_call.success
                        require ext_call.return_data[0]
                        require totalSupplyCap >= totalSold
                        totalSold = totalSupplyCap
                        call preSaleWalletAddress with:
                           value totalSupplyCap - totalSold / 4290 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit NewSale(totalSupplyCap - totalSold / 4290, totalSupplyCap - totalSold, arg1);
                        require totalSupplyCap - totalSold / 4290 <= msg.value
                        if msg.value - (totalSupplyCap - totalSold / 4290) > 0:
                            call msg.sender with:
                               value msg.value - (totalSupplyCap - totalSold / 4290) wei
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
            if msg.value < 330 * 10^18:
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
                            require 3960 * msg.value / msg.value == 3960
                        require ext_code.size(aptAddress)
                        if 3960 * msg.value <= totalSupplyCap - totalSold:
                            call aptAddress.0x827f32c0 with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), 3960 * msg.value
                            require ext_call.success
                            require ext_call.return_data[0]
                            require totalSold + (3960 * msg.value) >= totalSold
                            totalSold += 3960 * msg.value
                            call preSaleWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit NewSale(msg.value, 3960 * msg.value, arg1);
                            require msg.value <= msg.value
                            return 1
                        call aptAddress.0x827f32c0 with:
                             gas gas_remaining - 710 wei
                            args address(arg1), totalSupplyCap - totalSold
                        require ext_call.success
                        require ext_call.return_data[0]
                        require totalSupplyCap >= totalSold
                        totalSold = totalSupplyCap
                        call preSaleWalletAddress with:
                           value totalSupplyCap - totalSold / 3960 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit NewSale(totalSupplyCap - totalSold / 3960, totalSupplyCap - totalSold, arg1);
                        require totalSupplyCap - totalSold / 3960 <= msg.value
                        if msg.value - (totalSupplyCap - totalSold / 3960) > 0:
                            call arg1 with:
                               value msg.value - (totalSupplyCap - totalSold / 3960) wei
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
                            require 4290 * msg.value / msg.value == 4290
                        require ext_code.size(aptAddress)
                        if 4290 * msg.value <= totalSupplyCap - totalSold:
                            call aptAddress.0x827f32c0 with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), 4290 * msg.value
                            require ext_call.success
                            require ext_call.return_data[0]
                            require totalSold + (4290 * msg.value) >= totalSold
                            totalSold += 4290 * msg.value
                            call preSaleWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit NewSale(msg.value, 4290 * msg.value, arg1);
                            require msg.value <= msg.value
                            return 1
                        call aptAddress.0x827f32c0 with:
                             gas gas_remaining - 710 wei
                            args address(arg1), totalSupplyCap - totalSold
                        require ext_call.success
                        require ext_call.return_data[0]
                        require totalSupplyCap >= totalSold
                        totalSold = totalSupplyCap
                        call preSaleWalletAddress with:
                           value totalSupplyCap - totalSold / 4290 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit NewSale(totalSupplyCap - totalSold / 4290, totalSupplyCap - totalSold, arg1);
                        require totalSupplyCap - totalSold / 4290 <= msg.value
                        if msg.value - (totalSupplyCap - totalSold / 4290) > 0:
                            call arg1 with:
                               value msg.value - (totalSupplyCap - totalSold / 4290) wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
    return 1
}



}
