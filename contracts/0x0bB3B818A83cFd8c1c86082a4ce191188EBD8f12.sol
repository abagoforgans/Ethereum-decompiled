contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
address stor4;
uint256 stor5;
uint256 stor6;
uint16 stor7;
uint256 stor13;

function _fallback() payable {
    stor6 = 0
    stor7 = 0
    stor13 = 2888 * 10^18
    require not msg.value
    stor0 = msg.sender
    require code.data[6092 len 20]
    require code.data[6016 len 32] >= block.number
    require code.data[6016 len 32] < code.data[6048 len 32]
    require code.data[6144 len 32]
    stor1 = code.data[6016 len 32]
    stor2 = code.data[6048 len 32]
    stor4 = code.data[6092 len 20]
    stor3 = code.data[6112 len 32]
    stor5 = code.data[6144 len 32]
    return code.data[280 len 5736]
}



// =====================  Runtime code  =====================


const maxPerPersion = 100 * 10^18

const onApprove(address arg1, address arg2, uint256 arg3) = 0

const dust = 10^18


address controllerAddress;
uint256 initialBlock;
uint256 finalBlock;
uint256 price;
address genaroDevMultisigAddress;
uint256 capCommitment;
uint256 totalCollected;
uint8 stor7;
uint8 stor7; offset 8
uint256 stor7; offset 8
mapping of uint8 stor8;
mapping of uint8 stor9;
address tokenAddress;
address networkPlaceholderAddress;
address saleWalletAddress;
uint256 hardCap;

function genaroDevMultisig() {
    return genaroDevMultisigAddress
}

function capCommitment() {
    return capCommitment
}

function finalBlock() {
    return finalBlock
}

function initialBlock() {
    return initialBlock
}

function isWhitelisted(address arg1) {
    return bool(stor9[address(arg1)])
}

function saleStopped() {
    return bool(uint8(stor7.field_0))
}

function activated(address arg1) {
    return bool(stor8[arg1])
}

function saleWallet() {
    return saleWalletAddress
}

function whitelist(address arg1) {
    return bool(stor9[arg1])
}

function price() {
    return price
}

function saleFinalized() {
    return bool(uint8(stor7.field_8))
}

function networkPlaceholder() {
    return networkPlaceholderAddress
}

function totalCollected() {
    return totalCollected
}

function controller() {
    return controllerAddress
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

function addToWhiteList(address arg1) {
    require controllerAddress == msg.sender
    stor9[address(arg1)] = 1
}

function changeController(address arg1) {
    require controllerAddress == msg.sender
    controllerAddress = arg1
}

function removeFromWhiteList(address arg1) {
    require controllerAddress == msg.sender
    stor9[address(arg1)] = 0
}

function activateSale() {
    require tokenAddress
    require block.number < initialBlock
    stor8[address(msg.sender)] = 1
}

function isActivated() {
    if not stor8[address(this.address)]:
        return bool(stor8[address(this.address)])
    return bool(stor8[stor4])
}

function setGenaroDevMultisig(address arg1) {
    require arg1
    require genaroDevMultisigAddress == msg.sender
    genaroDevMultisigAddress = arg1
}

function getPrice(address arg1, uint256 arg2) {
    if arg2 >= initialBlock:
        if arg2 < finalBlock:
            return price
        else:
            return 0
    else:
        return 0
}

function emergencyStopSale() {
    require stor8[address(this.address)]
    require stor8[stor4]
    require not uint8(stor7.field_0)
    require genaroDevMultisigAddress == msg.sender
    uint8(stor7.field_0) = 1
}

function restartSale() {
    require block.number >= initialBlock
    require block.number < finalBlock
    require uint8(stor7.field_0)
    require genaroDevMultisigAddress == msg.sender
    uint8(stor7.field_0) = 0
}

function deployNetwork(address arg1) {
    require block.number >= finalBlock
    require uint8(stor7.field_8)
    require arg1
    require genaroDevMultisigAddress == msg.sender
    require ext_code.size(networkPlaceholderAddress)
    call networkPlaceholderAddress.0x3cebb823 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function finalizeSale() {
    require genaroDevMultisigAddress == msg.sender
    if block.number < finalBlock:
        require totalCollected >= hardCap
    require ext_code.size(tokenAddress)
    call tokenAddress.0x3cebb823 with:
         gas gas_remaining - 710 wei
        args genaroDevMultisigAddress
    require ext_call.success
    uint8(stor7.field_0) = 1
    uint8(stor7.field_8) = 1
    Mask(248, 0, stor7.field_8) = 0
}

function revealCap(uint256 arg1, uint256 arg2) {
    require block.number >= initialBlock
    require block.number < finalBlock
    require stor8[address(this.address)]
    require stor8[stor4]
    require sha3(arg1, arg2) == capCommitment
    require arg1 <= hardCap
    hardCap = arg1
    emit CapRevealed(arg1, arg2, msg.sender);
    if totalCollected + 10^18 >= hardCap:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x3cebb823 with:
             gas gas_remaining - 710 wei
            args genaroDevMultisigAddress
        require ext_call.success
        uint8(stor7.field_0) = 1
        uint8(stor7.field_8) = 1
        Mask(248, 0, stor7.field_8) = 0
}

function allocatePresaleTokens(address arg1, uint256 arg2, uint64 arg3, uint64 arg4) {
    if stor8[address(this.address)]:
        require not stor8[stor4]
    require block.number < initialBlock
    require arg1
    require genaroDevMultisigAddress == msg.sender
    require arg2 <= 175 * 10^10 * 3600
    require ext_code.size(tokenAddress)
    call tokenAddress.0x827f32c0 with:
         gas gas_remaining - 710 wei
        args address(this.address), arg2
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.grantVestedTokens(address rg1, uint256 rg2, uint64 rg3, uint64 rg4, uint64 rg5) with:
         gas gas_remaining - 710 wei
        args 0, 0, uint32(arg2), block.timestamp << 192, arg3 << 192, arg4
    require ext_call.success
    emit NewPresaleAllocation(arg2, arg1);
}

function setGNR(address arg1, address arg2, address arg3) {
    require genaroDevMultisigAddress == msg.sender
    require arg1
    require arg2
    require arg3
    require not stor8[address(this.address)]
    tokenAddress = arg1
    networkPlaceholderAddress = arg2
    saleWalletAddress = arg3
    require ext_code.size(arg1)
    call arg1.0xf77c4791 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == this.address
    require ext_code.size(networkPlaceholderAddress)
    call networkPlaceholderAddress.0x6ad1fe02 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == this.address
    require ext_code.size(networkPlaceholderAddress)
    call networkPlaceholderAddress.0xfc0c546a with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == tokenAddress
    require ext_code.size(saleWalletAddress)
    call saleWalletAddress.0x26b51c8c with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] == finalBlock
    require ext_code.size(saleWalletAddress)
    call saleWalletAddress.0x4783c35b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == genaroDevMultisigAddress
    require ext_code.size(saleWalletAddress)
    call saleWalletAddress.0xb9420310 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == this.address
    require tokenAddress
    require block.number < initialBlock
    stor8[address(this.address)] = 1
}

function _fallback() payable {
    require block.number >= initialBlock
    require block.number < finalBlock
    require not uint8(stor7.field_0)
    require stor8[address(this.address)]
    require stor8[stor4]
    require msg.sender
    require msg.value >= 10^18
    require msg.value <= 100 * 10^18
    require totalCollected + msg.value <= hardCap
    if block.number < initialBlock:
        if msg.value:
            require msg.value
            require not 0 / msg.value
        call saleWalletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require ext_code.size(tokenAddress)
        call tokenAddress.0x827f32c0 with:
             gas gas_remaining - 710 wei
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
                require msg.value
                require not 0 / msg.value
            call saleWalletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require ext_code.size(tokenAddress)
            call tokenAddress.0x827f32c0 with:
                 gas gas_remaining - 710 wei
                args msg.sender, 0
            require ext_call.success
            require ext_call.return_data[0]
            require msg.value + totalCollected >= totalCollected
            require msg.value + totalCollected >= msg.value
            totalCollected += msg.value
            emit NewBuyer(0, msg.value, msg.sender);
        else:
            if msg.value:
                require msg.value
                require price * msg.value / msg.value == price
            require price * msg.value == (10^9 * price * msg.value / 10^9) + (price * msg.value % 10^9)
            call saleWalletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require ext_code.size(tokenAddress)
            call tokenAddress.0x827f32c0 with:
                 gas gas_remaining - 710 wei
                args msg.sender, price * msg.value / 10^9
            require ext_call.success
            require ext_call.return_data[0]
            require msg.value + totalCollected >= totalCollected
            require msg.value + totalCollected >= msg.value
            totalCollected += msg.value
            emit NewBuyer(price * msg.value / 10^9, msg.value, msg.sender);
}

function proxyPayment(address arg1) payable {
    require block.number >= initialBlock
    require block.number < finalBlock
    require not uint8(stor7.field_0)
    require stor8[address(this.address)]
    require stor8[stor4]
    require arg1
    require msg.value >= 10^18
    require msg.value <= 100 * 10^18
    require totalCollected + msg.value <= hardCap
    if block.number < initialBlock:
        if msg.value:
            require msg.value
            require not 0 / msg.value
        call saleWalletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require ext_code.size(tokenAddress)
        call tokenAddress.0x827f32c0 with:
             gas gas_remaining - 710 wei
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
                require msg.value
                require not 0 / msg.value
            call saleWalletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require ext_code.size(tokenAddress)
            call tokenAddress.0x827f32c0 with:
                 gas gas_remaining - 710 wei
                args address(arg1), 0
            require ext_call.success
            require ext_call.return_data[0]
            require msg.value + totalCollected >= totalCollected
            require msg.value + totalCollected >= msg.value
            totalCollected += msg.value
            emit NewBuyer(0, msg.value, arg1);
        else:
            if msg.value:
                require msg.value
                require price * msg.value / msg.value == price
            require price * msg.value == (10^9 * price * msg.value / 10^9) + (price * msg.value % 10^9)
            call saleWalletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require ext_code.size(tokenAddress)
            call tokenAddress.0x827f32c0 with:
                 gas gas_remaining - 710 wei
                args address(arg1), price * msg.value / 10^9
            require ext_call.success
            require ext_call.return_data[0]
            require msg.value + totalCollected >= totalCollected
            require msg.value + totalCollected >= msg.value
            totalCollected += msg.value
            emit NewBuyer(price * msg.value / 10^9, msg.value, arg1);
    return 1
}



}
