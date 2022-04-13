contract main {


// =======================  Init code  ======================


address stor0;
address stor3;
address stor4;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor13;
uint256 stor15;

function _fallback() payable {
    stor15 = 10^10
    require not msg.value
    stor0 = msg.sender
    stor3 = 0x62739ec09cdd8fae2f7b976f8c11dbe338df8750
    stor4 = 0x62739ec09cdd8fae2f7b976f8c11dbe338df8750
    stor6 = 487000 * stor15
    stor11 = 10^17
    stor7 = 0
    stor8 = 0
    stor9 = 8250000 * stor15
    stor13 = 3004447 * 10^9
    stor10 = 500000 * stor15
    return code.data[187 len 4548]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
mapping of uint256 payments;
address sub_207ee213Address;
address multisigETHAddress;
address teamAddress;
uint256 eTHReceived;
uint256 sub_875aa998;
uint256 startBlock;
uint256 endBlock;
uint256 maxCap;
uint256 minCap;
uint256 minInvestETH;
uint8 stor12;
uint256 tokenPriceWei;
uint256 stor15;
mapping of struct backers;
array of address backersIndex;

function tokenPriceWei() {
    return tokenPriceWei
}

function endBlock() {
    return endBlock
}

function numberOfBackers() {
    return backersIndex.length
}

function sub_207ee213(?) {
    return sub_207ee213Address
}

function maxCap() {
    return maxCap
}

function minInvestETH() {
    return minInvestETH
}

function minCap() {
    return minCap
}

function startBlock() {
    return startBlock
}

function ETHReceived() {
    return eTHReceived
}

function stopped() {
    return bool(stor0)
}

function multisigETH() {
    return multisigETHAddress
}

function team() {
    return teamAddress
}

function sub_875aa998(?) {
    return sub_875aa998
}

function owner() {
    return owner
}

function backers(address arg1) {
    return backers[arg1].field_0, backers[arg1].field_256
}

function crowdsaleClosed() {
    return bool(stor12)
}

function payments(address arg1) {
    return payments[arg1]
}

function backersIndex(uint256 arg1) {
    require arg1 < backersIndex.length
    return address(backersIndex[arg1])
}

function kill() {
    if owner != msg.sender:
    selfdestruct(owner)
}

function emergencyStop() {
    if owner == msg.sender:
        stor0 = 1
}

function release() {
    if owner == msg.sender:
        require stor0
        stor0 = 0
}

function transferOwnership(address arg1) {
    if owner == msg.sender:
        if arg1:
            owner = arg1
}

function updateTeamAddress(address arg1) {
    if owner != msg.sender:
        return 0
    teamAddress = arg1
    return 1
}

function updateTokenAddress(address arg1) {
    if owner != msg.sender:
        return 0
    sub_207ee213Address = arg1
    return 1
}

function start(uint256 arg1) {
    if owner == msg.sender:
        startBlock = block.number
        endBlock = arg1 + block.number
        stor12 = 0
}

function drain() {
    if owner == msg.sender:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function transferDevTokens(address arg1) {
    if owner != msg.sender:
        return 0
    require ext_code.size(sub_207ee213Address)
    call sub_207ee213Address.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(sub_207ee213Address)
    call sub_207ee213Address.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
    return 1
}

function refund() {
    require sub_875aa998 < minCap
    require backers[address(msg.sender)].field_256
    require ext_code.size(sub_207ee213Address)
    call sub_207ee213Address.burn(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, backers[address(msg.sender)].field_256
    require ext_call.success
    require ext_call.return_data[0]
    backers[address(msg.sender)].field_0 = 0
    backers[address(msg.sender)].field_256 = 0
    require backers[address(msg.sender)].field_0 > 0
    payments[address(msg.sender)] += backers[address(msg.sender)].field_0
    require payments[address(msg.sender)]
    require eth.balance(this.address) >= payments[address(msg.sender)]
    payments[address(msg.sender)] = 0
    call msg.sender with:
       value payments[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit RefundETH(msg.sender, payments[address(msg.sender)]);
    return 1
}

function finalize() {
    if owner == msg.sender:
        require not stor12
        if block.number < endBlock:
            require sub_875aa998 >= maxCap - 100
        if sub_875aa998 < minCap:
            require endBlock + (16 * 3600) >= endBlock
            require endBlock + (16 * 3600) >= 16 * 3600
            require block.number >= endBlock + (16 * 3600)
        if sub_875aa998 <= minCap:
            require ext_code.size(sub_207ee213Address)
            call sub_207ee213Address.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            require ext_code.size(sub_207ee213Address)
            call sub_207ee213Address.burn(address rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args address(this.address), ext_call.return_data[0]
            require ext_call.success
            require ext_call.return_data[0]
        else:
            call multisigETHAddress with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require ext_code.size(sub_207ee213Address)
            call sub_207ee213Address.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            require ext_code.size(sub_207ee213Address)
            call sub_207ee213Address.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args teamAddress, ext_call.return_data[0]
            require ext_call.success
            require ext_call.return_data[0]
            require ext_code.size(sub_207ee213Address)
            call sub_207ee213Address.unlock() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
        stor12 = 1
}

function _fallback() payable {
    require not stor0
    require block.number >= startBlock
    require block.number <= endBlock
    require msg.value >= minInvestETH
    require tokenPriceWei
    require (msg.value * stor15 / tokenPriceWei) + sub_875aa998 >= sub_875aa998
    require (msg.value * stor15 / tokenPriceWei) + sub_875aa998 >= msg.value * stor15 / tokenPriceWei
    require (msg.value * stor15 / tokenPriceWei) + sub_875aa998 <= maxCap
    if not backers[address(msg.sender)].field_0:
        backersIndex.length++
        if not backersIndex.length <= backersIndex.length + 1:
            idx = backersIndex.length + 1
            while backersIndex.length > idx:
                uint256(backersIndex[idx]) = 0
                idx = idx + 1
                continue 
        address(backersIndex[backersIndex.length]) = msg.sender
    require ext_code.size(sub_207ee213Address)
    call sub_207ee213Address.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value * stor15 / tokenPriceWei
    require ext_call.success
    require ext_call.return_data[0]
    require (msg.value * stor15 / tokenPriceWei) + backers[address(msg.sender)].field_256 >= backers[address(msg.sender)].field_256
    require (msg.value * stor15 / tokenPriceWei) + backers[address(msg.sender)].field_256 >= msg.value * stor15 / tokenPriceWei
    backers[address(msg.sender)].field_256 += msg.value * stor15 / tokenPriceWei
    require msg.value + backers[address(msg.sender)].field_0 >= backers[address(msg.sender)].field_0
    require msg.value + backers[address(msg.sender)].field_0 >= msg.value
    backers[address(msg.sender)].field_0 += msg.value
    require msg.value + eTHReceived >= eTHReceived
    require msg.value + eTHReceived >= msg.value
    eTHReceived += msg.value
    require (msg.value * stor15 / tokenPriceWei) + sub_875aa998 >= sub_875aa998
    require (msg.value * stor15 / tokenPriceWei) + sub_875aa998 >= msg.value * stor15 / tokenPriceWei
    sub_875aa998 += msg.value * stor15 / tokenPriceWei
    emit ReceivedETH(msg.sender, msg.value, msg.value * stor15 / tokenPriceWei);
}



}
