contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint8 stor4;
address stor4; offset 8
uint256 stor4; offset 8
address stor5;
uint256 stor6;
uint256 stor7;
uint16 stor8;
uint256 stor13;

function _fallback() payable {
    stor7 = 0
    stor8 = 0
    stor13 = 1000000 * 10^18
    require not msg.value
    require code.data[6425 len 20]
    require code.data[6457 len 20]
    require code.data[6349 len 32] >= block.number
    require code.data[6349 len 32] < code.data[6381 len 32]
    require code.data[6477 len 32] > code.data[6509 len 32]
    require code.data[6572 len 1] >= 2
    require code.data[6572 len 1] <= code.data[6477 len 32] - code.data[6509 len 32]
    require code.data[6573 len 32]
    stor0 = code.data[6349 len 32]
    stor1 = code.data[6381 len 32]
    stor5 = code.data[6457 len 20]
    stor2 = code.data[6477 len 32]
    stor3 = code.data[6509 len 32]
    uint8(stor4.field_0) = code.data[6572 len 1]
    address(stor4.field_8) = code.data[6425 len 20]
    Mask(248, 0, stor4.field_8) = 0
    stor6 = code.data[6573 len 32]
    return code.data[412 len 5937]
}



// =====================  Runtime code  =====================


const onApprove(address arg1, address arg2, uint256 arg3) = 0

const dust = 10^15


uint256 initialBlock;
uint256 finalBlock;
uint256 initialPrice;
uint256 finalPrice;
uint8 priceStages;
address stor4;
address aragonDevMultisigAddress; offset 8
address communityMultisigAddress;
uint256 capCommitment;
uint256 totalCollected;
uint8 saleStopped;
uint8 saleFinalized; offset 8
uint256 stor8; offset 8
mapping of uint8 stor9;
address tokenAddress;
address networkPlaceholderAddress;
address saleWalletAddress;
uint256 hardCap;

function capCommitment() {
    return capCommitment
}

function initialPrice() {
    return initialPrice
}

function finalBlock() {
    return finalBlock
}

function initialBlock() {
    return initialBlock
}

function communityMultisig() {
    return communityMultisigAddress
}

function saleStopped() {
    return bool(saleStopped)
}

function priceStages() {
    return priceStages
}

function activated(address arg1) {
    return bool(stor9[arg1])
}

function saleWallet() {
    return saleWalletAddress
}

function saleFinalized() {
    return bool(saleFinalized)
}

function finalPrice() {
    return finalPrice
}

function aragonDevMultisig() {
    return aragonDevMultisigAddress
}

function networkPlaceholder() {
    return networkPlaceholderAddress
}

function totalCollected() {
    return totalCollected
}

function hardCap() {
    return hardCap
}

function token() {
    return tokenAddress
}

function computeCap(uint256 arg1, uint256 arg2) {
    return sha3(arg1, arg2)
}

function isValidCap(uint256 arg1, uint256 arg2) {
    return (sha3(arg1, arg2) == capCommitment)
}

function onTransfer(address arg1, address arg2, uint256 arg3) {
    return (arg1 == this.address)
}

function activateSale() {
    require tokenAddress
    require block.number < initialBlock
    stor9[address(msg.sender)] = 1
}

function setCommunityMultisig(address arg1) {
    require arg1
    require communityMultisigAddress == msg.sender
    communityMultisigAddress = arg1
}

function setAragonDevMultisig(address arg1) {
    require arg1
    require aragonDevMultisigAddress == msg.sender
    aragonDevMultisigAddress = arg1
}

function restartSale() {
    require block.number >= initialBlock
    require block.number < finalBlock
    require saleStopped
    require aragonDevMultisigAddress == msg.sender
    saleStopped = 0
}

function isActivated() {
    if not stor9[address(this.address)]:
        return bool(stor9[address(this.address)])
    if not stor9[stor4]:
        return bool(stor9[stor4])
    return bool(stor9[stor5])
}

function emergencyStopSale() {
    require stor9[address(this.address)]
    require stor9[stor4]
    require stor9[stor5]
    require not saleStopped
    require aragonDevMultisigAddress == msg.sender
    saleStopped = 1
}

function deployNetwork(address arg1) {
    require block.number >= finalBlock
    require saleFinalized
    require arg1
    require communityMultisigAddress == msg.sender
    require ext_code.size(networkPlaceholderAddress)
    call networkPlaceholderAddress.changeController(address rg1) with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
}

function finalizeSale(uint256 arg1, uint256 arg2) {
    require block.number >= finalBlock
    require aragonDevMultisigAddress == msg.sender
    require sha3(arg1, arg2) == capCommitment
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.generateTokens(address rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args stor4, 3 * ext_call.return_data[0] / 7
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.changeController(address rg1) with:
         gas gas_remaining - 50 wei
        args networkPlaceholderAddress
    require ext_call.success
    saleStopped = 1
    saleFinalized = 1
    stor8 = 0
}

function allocatePresaleTokens(address arg1, uint256 arg2, uint64 arg3, uint64 arg4) {
    if stor9[address(this.address)]:
        if stor9[stor4]:
            require not stor9[stor5]
    require block.number < initialBlock
    require arg1
    require aragonDevMultisigAddress == msg.sender
    require arg2 <= 1000000 * 10^18
    require ext_code.size(tokenAddress)
    call tokenAddress.generateTokens(address rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args address(this.address), arg2
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.grantVestedTokens(address rg1, uint256 rg2, uint64 rg3, uint64 rg4, uint64 rg5) with:
         gas gas_remaining - 50 wei
        args 0, 0, uint32(arg2), block.timestamp << 192, arg3 << 192, arg4
    require ext_call.success
    emit NewPresaleAllocation(arg2, arg1);
}

function revealCap(uint256 arg1, uint256 arg2) {
    require block.number >= initialBlock
    require block.number < finalBlock
    require stor9[address(this.address)]
    require stor9[stor4]
    require stor9[stor5]
    require sha3(arg1, arg2) == capCommitment
    require arg1 <= hardCap
    hardCap = arg1
    emit CapRevealed(arg1, arg2, msg.sender);
    if totalCollected + 10^15 >= hardCap:
        require sha3(arg1, arg2) == capCommitment
        require ext_code.size(tokenAddress)
        call tokenAddress.0x18160ddd with:
             gas gas_remaining - 50 wei
        require ext_call.success
        require ext_code.size(tokenAddress)
        call tokenAddress.generateTokens(address rg1, uint256 rg2) with:
             gas gas_remaining - 50 wei
            args stor4, 3 * ext_call.return_data[0] / 7
        require ext_call.success
        require ext_call.return_data[0]
        require ext_code.size(tokenAddress)
        call tokenAddress.changeController(address rg1) with:
             gas gas_remaining - 50 wei
            args networkPlaceholderAddress
        require ext_call.success
        saleStopped = 1
        saleFinalized = 1
        stor8 = 0
}

function setANT(address arg1, address arg2, address arg3) {
    require arg1
    require arg2
    require arg3
    require aragonDevMultisigAddress == msg.sender
    require not stor9[address(this.address)]
    tokenAddress = arg1
    networkPlaceholderAddress = arg2
    saleWalletAddress = arg3
    require ext_code.size(arg1)
    call arg1.controller() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == this.address
    require ext_code.size(networkPlaceholderAddress)
    call networkPlaceholderAddress.sale() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == this.address
    require ext_code.size(networkPlaceholderAddress)
    call networkPlaceholderAddress.0xfc0c546a with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == tokenAddress
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[0] <= 0
    require ext_code.size(saleWalletAddress)
    call saleWalletAddress.0x26b51c8c with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[0] == finalBlock
    require ext_code.size(saleWalletAddress)
    call saleWalletAddress.multisig() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == aragonDevMultisigAddress
    require ext_code.size(saleWalletAddress)
    call saleWalletAddress.tokenSale() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == this.address
    require tokenAddress
    require block.number < initialBlock
    stor9[address(this.address)] = 1
}

function getPrice(uint256 arg1) {
    if arg1 < initialBlock:
        return 0
    if arg1 >= finalBlock:
        return 0
    require initialBlock <= arg1
    require initialBlock <= finalBlock
    if not priceStages:
        if finalBlock - initialBlock > 0:
            if finalBlock - initialBlock:
                if (arg1 * priceStages) - (initialBlock * priceStages) == (finalBlock * (arg1 * priceStages) - (initialBlock * priceStages) / finalBlock - initialBlock) - (initialBlock * (arg1 * priceStages) - (initialBlock * priceStages) / finalBlock - initialBlock) + ((arg1 * priceStages) - (initialBlock * priceStages) % finalBlock - initialBlock):
                    if uint8((arg1 * priceStages) - (initialBlock * priceStages) / finalBlock - initialBlock) >= priceStages:
                        return 0
                    if finalPrice <= initialPrice:
                        if uint8(priceStages - 1) > 0:
                            if uint8(priceStages - 1):
                                if initialPrice - finalPrice == (uint8(priceStages - 1) * initialPrice - finalPrice / uint8(priceStages - 1)) + (initialPrice - finalPrice % uint8(priceStages - 1)):
                                    if not uint8((arg1 * priceStages) - (initialBlock * priceStages) / finalBlock - initialBlock):
                                        if initialPrice - finalPrice / uint8(priceStages - 1) * uint8((arg1 * priceStages) - (initialBlock * priceStages) / finalBlock - initialBlock) <= initialPrice:
                                            return (initialPrice - (initialPrice - finalPrice / uint8(priceStages - 1) * uint8((arg1 * priceStages) - (initialBlock * priceStages) / finalBlock - initialBlock)))
                                    else:
                                        if initialPrice - finalPrice / uint8(priceStages - 1) * uint8((arg1 * priceStages) - (initialBlock * priceStages) / finalBlock - initialBlock) / uint8((arg1 * priceStages) - (initialBlock * priceStages) / finalBlock - initialBlock) == initialPrice - finalPrice / uint8(priceStages - 1):
                                            if initialPrice - finalPrice / uint8(priceStages - 1) * uint8((arg1 * priceStages) - (initialBlock * priceStages) / finalBlock - initialBlock) <= initialPrice:
                                                return (initialPrice - (initialPrice - finalPrice / uint8(priceStages - 1) * uint8((arg1 * priceStages) - (initialBlock * priceStages) / finalBlock - initialBlock)))
    else:
        if (arg1 * priceStages) - (initialBlock * priceStages) / priceStages == arg1 - initialBlock:
            if finalBlock - initialBlock > 0:
                if finalBlock - initialBlock:
                    if (arg1 * priceStages) - (initialBlock * priceStages) == (finalBlock * (arg1 * priceStages) - (initialBlock * priceStages) / finalBlock - initialBlock) - (initialBlock * (arg1 * priceStages) - (initialBlock * priceStages) / finalBlock - initialBlock) + ((arg1 * priceStages) - (initialBlock * priceStages) % finalBlock - initialBlock):
                        if uint8((arg1 * priceStages) - (initialBlock * priceStages) / finalBlock - initialBlock) >= priceStages:
                            return 0
                        if finalPrice <= initialPrice:
                            if uint8(priceStages - 1) > 0:
                                if uint8(priceStages - 1):
                                    if initialPrice - finalPrice == (uint8(priceStages - 1) * initialPrice - finalPrice / uint8(priceStages - 1)) + (initialPrice - finalPrice % uint8(priceStages - 1)):
                                        if not uint8((arg1 * priceStages) - (initialBlock * priceStages) / finalBlock - initialBlock):
                                            if initialPrice - finalPrice / uint8(priceStages - 1) * uint8((arg1 * priceStages) - (initialBlock * priceStages) / finalBlock - initialBlock) <= initialPrice:
                                                return (initialPrice - (initialPrice - finalPrice / uint8(priceStages - 1) * uint8((arg1 * priceStages) - (initialBlock * priceStages) / finalBlock - initialBlock)))
                                        else:
                                            if initialPrice - finalPrice / uint8(priceStages - 1) * uint8((arg1 * priceStages) - (initialBlock * priceStages) / finalBlock - initialBlock) / uint8((arg1 * priceStages) - (initialBlock * priceStages) / finalBlock - initialBlock) == initialPrice - finalPrice / uint8(priceStages - 1):
                                                if initialPrice - finalPrice / uint8(priceStages - 1) * uint8((arg1 * priceStages) - (initialBlock * priceStages) / finalBlock - initialBlock) <= initialPrice:
                                                    return (initialPrice - (initialPrice - finalPrice / uint8(priceStages - 1) * uint8((arg1 * priceStages) - (initialBlock * priceStages) / finalBlock - initialBlock)))
    revert 
}

function _fallback() payable {
    require block.number >= initialBlock
    require block.number < finalBlock
    require not saleStopped
    require stor9[address(this.address)]
    require stor9[stor4]
    require stor9[stor5]
    require msg.sender
    require msg.value >= 10^15
    require totalCollected + msg.value <= hardCap
    if block.number < initialBlock:
        if msg.value:
            require not 0 / msg.value
        call saleWalletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require ext_code.size(tokenAddress)
        call tokenAddress.generateTokens(address rg1, uint256 rg2) with:
             gas gas_remaining - 50 wei
            args msg.sender, 0
        require ext_call.success
        require ext_call.return_data[0]
        require msg.value + totalCollected >= totalCollected
        require msg.value + totalCollected >= msg.value
        totalCollected += msg.value
        emit NewBuyer(0, msg.value, msg.sender);
    else:
        if block.number >= finalBlock:
            if msg.value:
                require not 0 / msg.value
            call saleWalletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require ext_code.size(tokenAddress)
            call tokenAddress.generateTokens(address rg1, uint256 rg2) with:
                 gas gas_remaining - 50 wei
                args msg.sender, 0
            require ext_call.success
            require ext_call.return_data[0]
            require msg.value + totalCollected >= totalCollected
            require msg.value + totalCollected >= msg.value
            totalCollected += msg.value
            emit NewBuyer(0, msg.value, msg.sender);
        else:
            require initialBlock <= block.number
            require initialBlock <= finalBlock
            if priceStages:
                require (block.number * priceStages) - (initialBlock * priceStages) / priceStages == block.number - initialBlock
            require finalBlock - initialBlock > 0
            require finalBlock - initialBlock
            require (block.number * priceStages) - (initialBlock * priceStages) == (finalBlock * (block.number * priceStages) - (initialBlock * priceStages) / finalBlock - initialBlock) - (initialBlock * (block.number * priceStages) - (initialBlock * priceStages) / finalBlock - initialBlock) + ((block.number * priceStages) - (initialBlock * priceStages) % finalBlock - initialBlock)
            if uint8((block.number * priceStages) - (initialBlock * priceStages) / finalBlock - initialBlock) >= priceStages:
                if msg.value:
                    require not 0 / msg.value
                call saleWalletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require ext_code.size(tokenAddress)
                call tokenAddress.generateTokens(address rg1, uint256 rg2) with:
                     gas gas_remaining - 50 wei
                    args msg.sender, 0
                require ext_call.success
                require ext_call.return_data[0]
                require msg.value + totalCollected >= totalCollected
                require msg.value + totalCollected >= msg.value
                totalCollected += msg.value
                emit NewBuyer(0, msg.value, msg.sender);
            else:
                require finalPrice <= initialPrice
                require uint8(priceStages - 1) > 0
                require uint8(priceStages - 1)
                require initialPrice - finalPrice == (uint8(priceStages - 1) * initialPrice - finalPrice / uint8(priceStages - 1)) + (initialPrice - finalPrice % uint8(priceStages - 1))
                if uint8((block.number * priceStages) - (initialBlock * priceStages) / finalBlock - initialBlock):
                    require initialPrice - finalPrice / uint8(priceStages - 1) * uint8((block.number * priceStages) - (initialBlock * priceStages) / finalBlock - initialBlock) / uint8((block.number * priceStages) - (initialBlock * priceStages) / finalBlock - initialBlock) == initialPrice - finalPrice / uint8(priceStages - 1)
                require initialPrice - finalPrice / uint8(priceStages - 1) * uint8((block.number * priceStages) - (initialBlock * priceStages) / finalBlock - initialBlock) <= initialPrice
                if msg.value:
                    require (initialPrice * msg.value) - (initialPrice - finalPrice / uint8(priceStages - 1) * uint8((block.number * priceStages) - (initialBlock * priceStages) / finalBlock - initialBlock) * msg.value) / msg.value == initialPrice - (initialPrice - finalPrice / uint8(priceStages - 1) * uint8((block.number * priceStages) - (initialBlock * priceStages) / finalBlock - initialBlock))
                call saleWalletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require ext_code.size(tokenAddress)
                call tokenAddress.generateTokens(address rg1, uint256 rg2) with:
                     gas gas_remaining - 50 wei
                    args msg.sender, (initialPrice * msg.value) - (initialPrice - finalPrice / uint8(priceStages - 1) * uint8((block.number * priceStages) - (initialBlock * priceStages) / finalBlock - initialBlock) * msg.value)
                require ext_call.success
                require ext_call.return_data[0]
                require msg.value + totalCollected >= totalCollected
                require msg.value + totalCollected >= msg.value
                totalCollected += msg.value
                emit NewBuyer((initialPrice * msg.value) - (initialPrice - finalPrice / uint8(priceStages - 1) * uint8((block.number * priceStages) - (initialBlock * priceStages) / finalBlock - initialBlock) * msg.value), msg.value, msg.sender);
}

function proxyPayment(address arg1) payable {
    require block.number >= initialBlock
    require block.number < finalBlock
    require not saleStopped
    require stor9[address(this.address)]
    require stor9[stor4]
    require stor9[stor5]
    require arg1
    require msg.value >= 10^15
    require totalCollected + msg.value <= hardCap
    if block.number < initialBlock:
        if msg.value:
            require not 0 / msg.value
        call saleWalletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require ext_code.size(tokenAddress)
        call tokenAddress.generateTokens(address rg1, uint256 rg2) with:
             gas gas_remaining - 50 wei
            args address(arg1), 0
        require ext_call.success
        require ext_call.return_data[0]
        require msg.value + totalCollected >= totalCollected
        require msg.value + totalCollected >= msg.value
        totalCollected += msg.value
        emit NewBuyer(0, msg.value, arg1);
    else:
        if block.number >= finalBlock:
            if msg.value:
                require not 0 / msg.value
            call saleWalletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require ext_code.size(tokenAddress)
            call tokenAddress.generateTokens(address rg1, uint256 rg2) with:
                 gas gas_remaining - 50 wei
                args address(arg1), 0
            require ext_call.success
            require ext_call.return_data[0]
            require msg.value + totalCollected >= totalCollected
            require msg.value + totalCollected >= msg.value
            totalCollected += msg.value
            emit NewBuyer(0, msg.value, arg1);
        else:
            require initialBlock <= block.number
            require initialBlock <= finalBlock
            if priceStages:
                require (block.number * priceStages) - (initialBlock * priceStages) / priceStages == block.number - initialBlock
            require finalBlock - initialBlock > 0
            require finalBlock - initialBlock
            require (block.number * priceStages) - (initialBlock * priceStages) == (finalBlock * (block.number * priceStages) - (initialBlock * priceStages) / finalBlock - initialBlock) - (initialBlock * (block.number * priceStages) - (initialBlock * priceStages) / finalBlock - initialBlock) + ((block.number * priceStages) - (initialBlock * priceStages) % finalBlock - initialBlock)
            if uint8((block.number * priceStages) - (initialBlock * priceStages) / finalBlock - initialBlock) >= priceStages:
                if msg.value:
                    require not 0 / msg.value
                call saleWalletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require ext_code.size(tokenAddress)
                call tokenAddress.generateTokens(address rg1, uint256 rg2) with:
                     gas gas_remaining - 50 wei
                    args address(arg1), 0
                require ext_call.success
                require ext_call.return_data[0]
                require msg.value + totalCollected >= totalCollected
                require msg.value + totalCollected >= msg.value
                totalCollected += msg.value
                emit NewBuyer(0, msg.value, arg1);
            else:
                require finalPrice <= initialPrice
                require uint8(priceStages - 1) > 0
                require uint8(priceStages - 1)
                require initialPrice - finalPrice == (uint8(priceStages - 1) * initialPrice - finalPrice / uint8(priceStages - 1)) + (initialPrice - finalPrice % uint8(priceStages - 1))
                if uint8((block.number * priceStages) - (initialBlock * priceStages) / finalBlock - initialBlock):
                    require initialPrice - finalPrice / uint8(priceStages - 1) * uint8((block.number * priceStages) - (initialBlock * priceStages) / finalBlock - initialBlock) / uint8((block.number * priceStages) - (initialBlock * priceStages) / finalBlock - initialBlock) == initialPrice - finalPrice / uint8(priceStages - 1)
                require initialPrice - finalPrice / uint8(priceStages - 1) * uint8((block.number * priceStages) - (initialBlock * priceStages) / finalBlock - initialBlock) <= initialPrice
                if msg.value:
                    require (initialPrice * msg.value) - (initialPrice - finalPrice / uint8(priceStages - 1) * uint8((block.number * priceStages) - (initialBlock * priceStages) / finalBlock - initialBlock) * msg.value) / msg.value == initialPrice - (initialPrice - finalPrice / uint8(priceStages - 1) * uint8((block.number * priceStages) - (initialBlock * priceStages) / finalBlock - initialBlock))
                call saleWalletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require ext_code.size(tokenAddress)
                call tokenAddress.generateTokens(address rg1, uint256 rg2) with:
                     gas gas_remaining - 50 wei
                    args address(arg1), (initialPrice * msg.value) - (initialPrice - finalPrice / uint8(priceStages - 1) * uint8((block.number * priceStages) - (initialBlock * priceStages) / finalBlock - initialBlock) * msg.value)
                require ext_call.success
                require ext_call.return_data[0]
                require msg.value + totalCollected >= totalCollected
                require msg.value + totalCollected >= msg.value
                totalCollected += msg.value
                emit NewBuyer((initialPrice * msg.value) - (initialPrice - finalPrice / uint8(priceStages - 1) * uint8((block.number * priceStages) - (initialBlock * priceStages) / finalBlock - initialBlock) * msg.value), msg.value, arg1);
    return 1
}



}
