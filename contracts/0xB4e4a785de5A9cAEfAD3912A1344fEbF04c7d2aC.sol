contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint8 stor9;
uint256 stor9; offset 8
uint256 stor10;
uint256 stor11;
uint16 stor14;

function _fallback() payable {
    stor11 = 0
    stor14 = 0
    require not msg.value
    require code.data[5787 len 20]
    require code.data[5807 len 32] >= block.number
    require code.data[5807 len 32] < code.data[5839 len 32]
    require code.data[5871 len 32] > code.data[5903 len 32]
    require code.data[5966 len 1] >= 2
    require code.data[5966 len 1] <= code.data[5871 len 32] - code.data[5903 len 32]
    stor0 = code.data[5755 len 20]
    stor1 = code.data[5787 len 20]
    stor10 = code.data[5967 len 32]
    stor5 = code.data[5807 len 32]
    stor6 = code.data[5839 len 32]
    stor7 = code.data[5871 len 32]
    stor8 = code.data[5903 len 32]
    uint8(stor9.field_0) = code.data[5966 len 1]
    Mask(248, 0, stor9.field_8) = 0
    return code.data[334 len 5409]
}



// =====================  Runtime code  =====================


const onApprove(address arg1, address arg2, uint256 arg3) = 0

const dust = 10^15


address managerAddress;
address operationsAddress;
address consortiumPlaceholderAddress;
address tokenAddress;
address escrowAddress;
uint256 initialBlock;
uint256 finalBlock;
uint256 initialPrice;
uint256 finalPrice;
uint256 priceStages;
uint256 maximumSubscription;
uint256 totalSubscription;
mapping of uint8 stor12;
mapping of uint256 subscriptions;
uint8 saleStopped;
uint8 saleFinalized; offset 8
uint256 stor14; offset 8

function initialPrice() {
    return initialPrice
}

function finalBlock() {
    return finalBlock
}

function initialBlock() {
    return initialBlock
}

function saleStopped() {
    return bool(saleStopped)
}

function manager() {
    return managerAddress
}

function priceStages() {
    return priceStages
}

function operations() {
    return operationsAddress
}

function saleFinalized() {
    return bool(saleFinalized)
}

function finalPrice() {
    return finalPrice
}

function consortiumPlaceholder() {
    return consortiumPlaceholderAddress
}

function activations(address arg1) {
    return bool(stor12[arg1])
}

function escrow() {
    return escrowAddress
}

function totalSubscription() {
    return totalSubscription
}

function subscriptions(address arg1) {
    return subscriptions[arg1]
}

function maximumSubscription() {
    return maximumSubscription
}

function token() {
    return tokenAddress
}

function onTransfer(address arg1, address arg2, uint256 arg3) {
    return (arg1 == this.address)
}

function activateSale() {
    require tokenAddress
    require block.number < initialBlock
    stor12[address(msg.sender)] = 1
}

function setOperations(address arg1) {
    require arg1
    require operationsAddress == msg.sender
    operationsAddress = arg1
}

function isActivated() {
    if not stor12[address(this.address)]:
        return bool(stor12[address(this.address)])
    return bool(stor12[stor1])
}

function stopSale() {
    require stor12[address(this.address)]
    require stor12[stor1]
    require not saleStopped
    require operationsAddress == msg.sender
    saleStopped = 1
}

function restartSale() {
    require block.number >= initialBlock
    require block.number < finalBlock
    require saleStopped
    require operationsAddress == msg.sender
    saleStopped = 0
}

function deployConsortium(address arg1) {
    require block.number >= finalBlock
    require saleFinalized
    require arg1
    require operationsAddress == msg.sender
    require ext_code.size(consortiumPlaceholderAddress)
    call consortiumPlaceholderAddress.0x3cebb823 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function allocatePresaleTokens(address arg1, uint256 arg2, uint64 arg3, uint64 arg4, bool arg5, bool arg6) {
    if stor12[address(this.address)]:
        require not stor12[stor1]
    require block.number < initialBlock
    require arg1
    require operationsAddress == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0x9754a4d9 with:
         gas gas_remaining - 710 wei
        args 0, 0, arg2, block.timestamp << 192, arg3, arg4 << 192, arg5, arg6
    require ext_call.success
    emit NewPresaleAllocation(arg2, arg1);
}

function finalizeSale() {
    require block.number >= finalBlock
    require operationsAddress == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args operationsAddress, 5 * ext_call.return_data[0] / 100
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args managerAddress, 25 * ext_call.return_data[0] / 100
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x3cebb823 with:
         gas gas_remaining - 710 wei
        args consortiumPlaceholderAddress
    require ext_call.success
    saleStopped = 1
    saleFinalized = 1
    stor14 = 0
}

function getPrice(uint256 arg1) {
    if arg1 < initialBlock:
        return 0
    if arg1 >= finalBlock:
        return 0
    require initialBlock <= arg1
    require initialBlock <= finalBlock
    if priceStages:
        require priceStages
        require (arg1 * priceStages) - (initialBlock * priceStages) / priceStages == arg1 - initialBlock
    require finalBlock - initialBlock
    if (arg1 * priceStages) - (initialBlock * priceStages) / finalBlock - initialBlock >= priceStages:
        return 0
    require finalPrice <= initialPrice
    require priceStages - 1
    if (arg1 * priceStages) - (initialBlock * priceStages) / finalBlock - initialBlock:
        require (arg1 * priceStages) - (initialBlock * priceStages) / finalBlock - initialBlock
        require initialPrice - finalPrice / priceStages - 1 * (arg1 * priceStages) - (initialBlock * priceStages) / finalBlock - initialBlock / (arg1 * priceStages) - (initialBlock * priceStages) / finalBlock - initialBlock == initialPrice - finalPrice / priceStages - 1
    require initialPrice - finalPrice / priceStages - 1 * (arg1 * priceStages) - (initialBlock * priceStages) / finalBlock - initialBlock <= initialPrice
    return (initialPrice - (initialPrice - finalPrice / priceStages - 1 * (arg1 * priceStages) - (initialBlock * priceStages) / finalBlock - initialBlock))
}

function setArtcoin(address arg1, address arg2, address arg3) {
    require arg1
    require arg2
    require arg3
    require not stor12[address(this.address)]
    tokenAddress = arg1
    consortiumPlaceholderAddress = arg2
    escrowAddress = arg3
    require ext_code.size(arg1)
    call arg1.0xf77c4791 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == this.address
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] <= 0
    require ext_code.size(consortiumPlaceholderAddress)
    call consortiumPlaceholderAddress.tokenSale() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == this.address
    require ext_code.size(consortiumPlaceholderAddress)
    call consortiumPlaceholderAddress.0xfc0c546a with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == tokenAddress
    require ext_code.size(escrowAddress)
    call escrowAddress.0x26b51c8c with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] == finalBlock
    require ext_code.size(escrowAddress)
    call escrowAddress.0x38af3eed with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == operationsAddress
    require ext_code.size(escrowAddress)
    call escrowAddress.tokenSale() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == this.address
    require tokenAddress
    require block.number < initialBlock
    stor12[address(this.address)] = 1
}

function proxyPayment(address arg1) payable {
    require block.number >= initialBlock
    require block.number < finalBlock
    require not saleStopped
    require stor12[address(this.address)]
    require stor12[stor1]
    require arg1
    require msg.value >= 10^15
    require totalSubscription + msg.value <= maximumSubscription
    if block.number < initialBlock:
        if msg.value:
            require msg.value
            require not 0 / msg.value
        call escrowAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args address(arg1), 0
        require ext_call.success
        require ext_call.return_data[0]
        require msg.value + subscriptions[address(arg1)] >= subscriptions[address(arg1)]
        subscriptions[address(arg1)] += msg.value
        require msg.value + totalSubscription >= totalSubscription
        totalSubscription += msg.value
        emit NewSubscription(0, msg.value, arg1);
    else:
        if block.number >= finalBlock:
            if msg.value:
                require msg.value
                require not 0 / msg.value
            call escrowAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args address(arg1), 0
            require ext_call.success
            require ext_call.return_data[0]
            require msg.value + subscriptions[address(arg1)] >= subscriptions[address(arg1)]
            subscriptions[address(arg1)] += msg.value
            require msg.value + totalSubscription >= totalSubscription
            totalSubscription += msg.value
            emit NewSubscription(0, msg.value, arg1);
        else:
            require initialBlock <= block.number
            require initialBlock <= finalBlock
            if priceStages:
                require priceStages
                require (block.number * priceStages) - (initialBlock * priceStages) / priceStages == block.number - initialBlock
            require finalBlock - initialBlock
            if (block.number * priceStages) - (initialBlock * priceStages) / finalBlock - initialBlock >= priceStages:
                if msg.value:
                    require msg.value
                    require not 0 / msg.value
                call escrowAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 0
                require ext_call.success
                require ext_call.return_data[0]
                require msg.value + subscriptions[address(arg1)] >= subscriptions[address(arg1)]
                subscriptions[address(arg1)] += msg.value
                require msg.value + totalSubscription >= totalSubscription
                totalSubscription += msg.value
                emit NewSubscription(0, msg.value, arg1);
            else:
                require finalPrice <= initialPrice
                require priceStages - 1
                if (block.number * priceStages) - (initialBlock * priceStages) / finalBlock - initialBlock:
                    require (block.number * priceStages) - (initialBlock * priceStages) / finalBlock - initialBlock
                    require initialPrice - finalPrice / priceStages - 1 * (block.number * priceStages) - (initialBlock * priceStages) / finalBlock - initialBlock / (block.number * priceStages) - (initialBlock * priceStages) / finalBlock - initialBlock == initialPrice - finalPrice / priceStages - 1
                require initialPrice - finalPrice / priceStages - 1 * (block.number * priceStages) - (initialBlock * priceStages) / finalBlock - initialBlock <= initialPrice
                if msg.value:
                    require msg.value
                    require (initialPrice * msg.value) - (initialPrice - finalPrice / priceStages - 1 * (block.number * priceStages) - (initialBlock * priceStages) / finalBlock - initialBlock * msg.value) / msg.value == initialPrice - (initialPrice - finalPrice / priceStages - 1 * (block.number * priceStages) - (initialBlock * priceStages) / finalBlock - initialBlock)
                call escrowAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), (initialPrice * msg.value) - (initialPrice - finalPrice / priceStages - 1 * (block.number * priceStages) - (initialBlock * priceStages) / finalBlock - initialBlock * msg.value)
                require ext_call.success
                require ext_call.return_data[0]
                require msg.value + subscriptions[address(arg1)] >= subscriptions[address(arg1)]
                subscriptions[address(arg1)] += msg.value
                require msg.value + totalSubscription >= totalSubscription
                totalSubscription += msg.value
                emit NewSubscription((initialPrice * msg.value) - (initialPrice - finalPrice / priceStages - 1 * (block.number * priceStages) - (initialBlock * priceStages) / finalBlock - initialBlock * msg.value), msg.value, arg1);
    return 1
}

function _fallback() payable {
    require block.number >= initialBlock
    require block.number < finalBlock
    require not saleStopped
    require stor12[address(this.address)]
    require stor12[stor1]
    require msg.sender
    require msg.value >= 10^15
    require totalSubscription + msg.value <= maximumSubscription
    if block.number < initialBlock:
        if msg.value:
            require msg.value
            require not 0 / msg.value
        call escrowAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, 0
        require ext_call.success
        require ext_call.return_data[0]
        require msg.value + subscriptions[address(msg.sender)] >= subscriptions[address(msg.sender)]
        subscriptions[address(msg.sender)] += msg.value
        require msg.value + totalSubscription >= totalSubscription
        totalSubscription += msg.value
        emit NewSubscription(0, msg.value, msg.sender);
    else:
        if block.number >= finalBlock:
            if msg.value:
                require msg.value
                require not 0 / msg.value
            call escrowAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args msg.sender, 0
            require ext_call.success
            require ext_call.return_data[0]
            require msg.value + subscriptions[address(msg.sender)] >= subscriptions[address(msg.sender)]
            subscriptions[address(msg.sender)] += msg.value
            require msg.value + totalSubscription >= totalSubscription
            totalSubscription += msg.value
            emit NewSubscription(0, msg.value, msg.sender);
        else:
            require initialBlock <= block.number
            require initialBlock <= finalBlock
            if priceStages:
                require priceStages
                require (block.number * priceStages) - (initialBlock * priceStages) / priceStages == block.number - initialBlock
            require finalBlock - initialBlock
            if (block.number * priceStages) - (initialBlock * priceStages) / finalBlock - initialBlock >= priceStages:
                if msg.value:
                    require msg.value
                    require not 0 / msg.value
                call escrowAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 0
                require ext_call.success
                require ext_call.return_data[0]
                require msg.value + subscriptions[address(msg.sender)] >= subscriptions[address(msg.sender)]
                subscriptions[address(msg.sender)] += msg.value
                require msg.value + totalSubscription >= totalSubscription
                totalSubscription += msg.value
                emit NewSubscription(0, msg.value, msg.sender);
            else:
                require finalPrice <= initialPrice
                require priceStages - 1
                if (block.number * priceStages) - (initialBlock * priceStages) / finalBlock - initialBlock:
                    require (block.number * priceStages) - (initialBlock * priceStages) / finalBlock - initialBlock
                    require initialPrice - finalPrice / priceStages - 1 * (block.number * priceStages) - (initialBlock * priceStages) / finalBlock - initialBlock / (block.number * priceStages) - (initialBlock * priceStages) / finalBlock - initialBlock == initialPrice - finalPrice / priceStages - 1
                require initialPrice - finalPrice / priceStages - 1 * (block.number * priceStages) - (initialBlock * priceStages) / finalBlock - initialBlock <= initialPrice
                if msg.value:
                    require msg.value
                    require (initialPrice * msg.value) - (initialPrice - finalPrice / priceStages - 1 * (block.number * priceStages) - (initialBlock * priceStages) / finalBlock - initialBlock * msg.value) / msg.value == initialPrice - (initialPrice - finalPrice / priceStages - 1 * (block.number * priceStages) - (initialBlock * priceStages) / finalBlock - initialBlock)
                call escrowAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (initialPrice * msg.value) - (initialPrice - finalPrice / priceStages - 1 * (block.number * priceStages) - (initialBlock * priceStages) / finalBlock - initialBlock * msg.value)
                require ext_call.success
                require ext_call.return_data[0]
                require msg.value + subscriptions[address(msg.sender)] >= subscriptions[address(msg.sender)]
                subscriptions[address(msg.sender)] += msg.value
                require msg.value + totalSubscription >= totalSubscription
                totalSubscription += msg.value
                emit NewSubscription((initialPrice * msg.value) - (initialPrice - finalPrice / priceStages - 1 * (block.number * priceStages) - (initialBlock * priceStages) / finalBlock - initialBlock * msg.value), msg.value, msg.sender);
}



}
