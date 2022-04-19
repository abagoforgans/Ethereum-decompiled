contract main {


// =======================  Init code  ======================


address stor0;
address stor3;
address stor4;
uint256 stor5;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 stor20;
uint256 stor21;
uint256 stor22;
uint256 stor23;

function _fallback() {
    stor0 = msg.sender
    stor23 = 10^code.data[5672 len 32]
    stor3 = code.data[5716 len 20]
    stor5 = code.data[5736 len 32] * stor23
    stor12 = code.data[5768 len 32]
    stor13 = code.data[5800 len 32]
    stor8 = 0
    stor9 = 0
    stor10 = code.data[5832 len 32] * stor23
    stor15 = code.data[5896 len 32]
    stor11 = code.data[5864 len 32] * stor23
    stor16 = code.data[5928 len 32]
    stor17 = code.data[5960 len 32]
    stor18 = code.data[5992 len 32]
    stor19 = code.data[6024 len 32]
    stor20 = code.data[6056 len 32]
    stor21 = code.data[6088 len 32]
    stor22 = code.data[6120 len 32]
    stor7 = 0
    stor4 = 0x99ac790927f6890162339439e97078ee15771e1d
    return code.data[433 len 5239]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
mapping of uint256 payments;
address tokenAddress;
address multisigETHAddress;
address commissionAddress;
uint256 ethReceived;
uint256 totalTokensSent;
uint256 startBlock;
uint256 endBlock;
uint256 maxCap;
uint256 minCap;
uint256 minContributionETH;
uint256 sub_5a47f22f;
uint8 stor14;
uint256 tokenPriceWei;
uint256 campaignDurationDays;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 stor20;
uint256 stor21;
uint256 stor22;
uint256 multiplier;
uint256 status;
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

function campaignDurationDays() {
    return campaignDurationDays
}

function multiplier() {
    return multiplier
}

function status() {
    return status
}

function maxCap() {
    return maxCap
}

function minCap() {
    return minCap
}

function startBlock() {
    return startBlock
}

function sub_5a47f22f(?) {
    return sub_5a47f22f
}

function stopped() {
    return bool(stor0)
}

function multisigETH() {
    return multisigETHAddress
}

function owner() {
    return owner
}

function commissionAddress() {
    return commissionAddress
}

function totalTokensSent() {
    return totalTokensSent
}

function backers(address arg1) {
    return backers[arg1].field_0, backers[arg1].field_256
}

function crowdsaleClosed() {
    return bool(stor14)
}

function payments(address arg1) {
    return payments[arg1]
}

function minContributionETH() {
    return minContributionETH
}

function ethReceived() {
    return ethReceived
}

function token() {
    return tokenAddress
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
        emit 0x438813e9: 1
}

function transferOwnership(address arg1) {
    if owner == msg.sender:
        if arg1:
            owner = arg1
}

function release() {
    if owner == msg.sender:
        require stor0
        stor0 = 0
        emit 0x5a92c1fe: 1
}

function updateTokenAddress(address arg1) {
    if owner != msg.sender:
        return 0
    tokenAddress = arg1
    emit ContractUpdated(1);
    return 1
}

function drain() {
    if owner == msg.sender:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function start() {
    if owner == msg.sender:
        startBlock = block.number
        endBlock = block.number + (5760 * campaignDurationDays)
        stor14 = 0
        emit Started(block.number, block.number + (5760 * campaignDurationDays));
}

function determineCommissions() {
    if eth.balance(this.address) <= 500 * 10^18:
        return (10 * eth.balance(this.address) / 100)
    if eth.balance(this.address) <= 1000 * 10^18:
        return (8 * eth.balance(this.address) / 100)
    return (6 * eth.balance(this.address) / 100)
}

function determineStatus() {
    if stor14:
        return 1
    if block.number < endBlock:
        if totalTokensSent < maxCap - 100:
            return 2
    if totalTokensSent < minCap:
        if block.number > endBlock:
            return 3
    if endBlock:
        return 0
    return 4
}

function returnWebsiteData() {
    return startBlock, 
           endBlock,
           backersIndex.length,
           ethReceived,
           maxCap,
           minCap,
           totalTokensSent,
           tokenPriceWei,
           minContributionETH,
           sub_5a47f22f,
           bool(stor0),
           bool(stor14)
}

function refund() {
    require totalTokensSent < minCap
    require backers[address(msg.sender)].field_256
    require ext_code.size(tokenAddress)
    call tokenAddress.burn(address rg1, uint256 rg2) with:
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
        require not stor14
        if eth.balance(this.address) <= 500 * 10^18:
            call commissionAddress with:
               value 10 * eth.balance(this.address) / 100 wei
                 gas 2300 * is_zero(value) wei
        else:
            if eth.balance(this.address) <= 1000 * 10^18:
                call commissionAddress with:
                   value 8 * eth.balance(this.address) / 100 wei
                     gas 2300 * is_zero(value) wei
            else:
                call commissionAddress with:
                   value 6 * eth.balance(this.address) / 100 wei
                     gas 2300 * is_zero(value) wei
        require ext_call.success
        call multisigETHAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args owner, ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
        require ext_code.size(tokenAddress)
        call tokenAddress.unlock() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        stor14 = 1
        emit Finalized(1);
}

function _fallback() payable {
    require not stor0
    require block.number >= startBlock
    require block.number <= endBlock
    require msg.value >= minContributionETH
    if msg.value:
        require msg.value
        require multiplier * msg.value / msg.value == multiplier
    require tokenPriceWei > 0
    require tokenPriceWei
    require multiplier * msg.value == (tokenPriceWei * multiplier * msg.value / tokenPriceWei) + (multiplier * msg.value % tokenPriceWei)
    if block.number <= stor17 + startBlock:
        if multiplier * msg.value / tokenPriceWei:
            require multiplier * msg.value / tokenPriceWei
            require stor20 * multiplier * msg.value / tokenPriceWei / multiplier * msg.value / tokenPriceWei == stor20
        require stor20 * multiplier * msg.value / tokenPriceWei == (100 * stor20 * multiplier * msg.value / tokenPriceWei / 100) + (stor20 * multiplier * msg.value / tokenPriceWei % 100)
        require (multiplier * msg.value / tokenPriceWei) + (stor20 * multiplier * msg.value / tokenPriceWei / 100) + totalTokensSent >= totalTokensSent
        require totalTokensSent >= 0
        require (multiplier * msg.value / tokenPriceWei) + (stor20 * multiplier * msg.value / tokenPriceWei / 100) + totalTokensSent <= maxCap
        if not backers[address(msg.sender)].field_0:
            backersIndex.length++
            if not backersIndex.length <= backersIndex.length + 1:
                idx = backersIndex.length + 1
                while backersIndex.length > idx:
                    uint256(backersIndex[idx]) = 0
                    idx = idx + 1
                    continue 
            address(backersIndex[backersIndex.length]) = msg.sender
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, (multiplier * msg.value / tokenPriceWei) + (stor20 * multiplier * msg.value / tokenPriceWei / 100)
        require ext_call.success
        require ext_call.return_data[0]
        require (multiplier * msg.value / tokenPriceWei) + (stor20 * multiplier * msg.value / tokenPriceWei / 100) + backers[address(msg.sender)].field_256 >= backers[address(msg.sender)].field_256
        require backers[address(msg.sender)].field_256 >= 0
        backers[address(msg.sender)].field_256 = (multiplier * msg.value / tokenPriceWei) + (stor20 * multiplier * msg.value / tokenPriceWei / 100) + backers[address(msg.sender)].field_256
        require msg.value + backers[address(msg.sender)].field_0 >= backers[address(msg.sender)].field_0
        require msg.value + backers[address(msg.sender)].field_0 >= msg.value
        backers[address(msg.sender)].field_0 += msg.value
        require msg.value + ethReceived >= ethReceived
        require msg.value + ethReceived >= msg.value
        ethReceived += msg.value
        require (multiplier * msg.value / tokenPriceWei) + (stor20 * multiplier * msg.value / tokenPriceWei / 100) + totalTokensSent >= totalTokensSent
        require totalTokensSent >= 0
        totalTokensSent = (multiplier * msg.value / tokenPriceWei) + (stor20 * multiplier * msg.value / tokenPriceWei / 100) + totalTokensSent
        emit ReceivedETH(msg.sender, msg.value, (multiplier * msg.value / tokenPriceWei) + (stor20 * multiplier * msg.value / tokenPriceWei / 100));
    else:
        if block.number <= startBlock + stor18:
            if multiplier * msg.value / tokenPriceWei:
                require multiplier * msg.value / tokenPriceWei
                require stor21 * multiplier * msg.value / tokenPriceWei / multiplier * msg.value / tokenPriceWei == stor21
            require stor21 * multiplier * msg.value / tokenPriceWei == (100 * stor21 * multiplier * msg.value / tokenPriceWei / 100) + (stor21 * multiplier * msg.value / tokenPriceWei % 100)
            require (multiplier * msg.value / tokenPriceWei) + (stor21 * multiplier * msg.value / tokenPriceWei / 100) + totalTokensSent >= totalTokensSent
            require totalTokensSent >= 0
            require (multiplier * msg.value / tokenPriceWei) + (stor21 * multiplier * msg.value / tokenPriceWei / 100) + totalTokensSent <= maxCap
            if not backers[address(msg.sender)].field_0:
                backersIndex.length++
                if not backersIndex.length <= backersIndex.length + 1:
                    idx = backersIndex.length + 1
                    while backersIndex.length > idx:
                        uint256(backersIndex[idx]) = 0
                        idx = idx + 1
                        continue 
                address(backersIndex[backersIndex.length]) = msg.sender
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, (multiplier * msg.value / tokenPriceWei) + (stor21 * multiplier * msg.value / tokenPriceWei / 100)
            require ext_call.success
            require ext_call.return_data[0]
            require (multiplier * msg.value / tokenPriceWei) + (stor21 * multiplier * msg.value / tokenPriceWei / 100) + backers[address(msg.sender)].field_256 >= backers[address(msg.sender)].field_256
            require backers[address(msg.sender)].field_256 >= 0
            backers[address(msg.sender)].field_256 = (multiplier * msg.value / tokenPriceWei) + (stor21 * multiplier * msg.value / tokenPriceWei / 100) + backers[address(msg.sender)].field_256
            require msg.value + backers[address(msg.sender)].field_0 >= backers[address(msg.sender)].field_0
            require msg.value + backers[address(msg.sender)].field_0 >= msg.value
            backers[address(msg.sender)].field_0 += msg.value
            require msg.value + ethReceived >= ethReceived
            require msg.value + ethReceived >= msg.value
            ethReceived += msg.value
            require (multiplier * msg.value / tokenPriceWei) + (stor21 * multiplier * msg.value / tokenPriceWei / 100) + totalTokensSent >= totalTokensSent
            require totalTokensSent >= 0
            totalTokensSent = (multiplier * msg.value / tokenPriceWei) + (stor21 * multiplier * msg.value / tokenPriceWei / 100) + totalTokensSent
            emit ReceivedETH(msg.sender, msg.value, (multiplier * msg.value / tokenPriceWei) + (stor21 * multiplier * msg.value / tokenPriceWei / 100));
        else:
            if block.number > startBlock + stor19:
                require (multiplier * msg.value / tokenPriceWei) + totalTokensSent >= totalTokensSent
                require (multiplier * msg.value / tokenPriceWei) + totalTokensSent >= multiplier * msg.value / tokenPriceWei
                require (multiplier * msg.value / tokenPriceWei) + totalTokensSent <= maxCap
                if not backers[address(msg.sender)].field_0:
                    backersIndex.length++
                    if not backersIndex.length <= backersIndex.length + 1:
                        idx = backersIndex.length + 1
                        while backersIndex.length > idx:
                            uint256(backersIndex[idx]) = 0
                            idx = idx + 1
                            continue 
                    address(backersIndex[backersIndex.length]) = msg.sender
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, multiplier * msg.value / tokenPriceWei
                require ext_call.success
                require ext_call.return_data[0]
                require (multiplier * msg.value / tokenPriceWei) + backers[address(msg.sender)].field_256 >= backers[address(msg.sender)].field_256
                require (multiplier * msg.value / tokenPriceWei) + backers[address(msg.sender)].field_256 >= multiplier * msg.value / tokenPriceWei
                backers[address(msg.sender)].field_256 += multiplier * msg.value / tokenPriceWei
                require msg.value + backers[address(msg.sender)].field_0 >= backers[address(msg.sender)].field_0
                require msg.value + backers[address(msg.sender)].field_0 >= msg.value
                backers[address(msg.sender)].field_0 += msg.value
                require msg.value + ethReceived >= ethReceived
                require msg.value + ethReceived >= msg.value
                ethReceived += msg.value
                require (multiplier * msg.value / tokenPriceWei) + totalTokensSent >= totalTokensSent
                require (multiplier * msg.value / tokenPriceWei) + totalTokensSent >= multiplier * msg.value / tokenPriceWei
                totalTokensSent += multiplier * msg.value / tokenPriceWei
                emit ReceivedETH(msg.sender, msg.value, multiplier * msg.value / tokenPriceWei);
            else:
                if multiplier * msg.value / tokenPriceWei:
                    require multiplier * msg.value / tokenPriceWei
                    require stor22 * multiplier * msg.value / tokenPriceWei / multiplier * msg.value / tokenPriceWei == stor22
                require stor22 * multiplier * msg.value / tokenPriceWei == (100 * stor22 * multiplier * msg.value / tokenPriceWei / 100) + (stor22 * multiplier * msg.value / tokenPriceWei % 100)
                require (multiplier * msg.value / tokenPriceWei) + (stor22 * multiplier * msg.value / tokenPriceWei / 100) + totalTokensSent >= totalTokensSent
                require totalTokensSent >= 0
                require (multiplier * msg.value / tokenPriceWei) + (stor22 * multiplier * msg.value / tokenPriceWei / 100) + totalTokensSent <= maxCap
                if not backers[address(msg.sender)].field_0:
                    backersIndex.length++
                    if not backersIndex.length <= backersIndex.length + 1:
                        idx = backersIndex.length + 1
                        while backersIndex.length > idx:
                            uint256(backersIndex[idx]) = 0
                            idx = idx + 1
                            continue 
                    address(backersIndex[backersIndex.length]) = msg.sender
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (multiplier * msg.value / tokenPriceWei) + (stor22 * multiplier * msg.value / tokenPriceWei / 100)
                require ext_call.success
                require ext_call.return_data[0]
                require (multiplier * msg.value / tokenPriceWei) + (stor22 * multiplier * msg.value / tokenPriceWei / 100) + backers[address(msg.sender)].field_256 >= backers[address(msg.sender)].field_256
                require backers[address(msg.sender)].field_256 >= 0
                backers[address(msg.sender)].field_256 = (multiplier * msg.value / tokenPriceWei) + (stor22 * multiplier * msg.value / tokenPriceWei / 100) + backers[address(msg.sender)].field_256
                require msg.value + backers[address(msg.sender)].field_0 >= backers[address(msg.sender)].field_0
                require msg.value + backers[address(msg.sender)].field_0 >= msg.value
                backers[address(msg.sender)].field_0 += msg.value
                require msg.value + ethReceived >= ethReceived
                require msg.value + ethReceived >= msg.value
                ethReceived += msg.value
                require (multiplier * msg.value / tokenPriceWei) + (stor22 * multiplier * msg.value / tokenPriceWei / 100) + totalTokensSent >= totalTokensSent
                require totalTokensSent >= 0
                totalTokensSent = (multiplier * msg.value / tokenPriceWei) + (stor22 * multiplier * msg.value / tokenPriceWei / 100) + totalTokensSent
                emit ReceivedETH(msg.sender, msg.value, (multiplier * msg.value / tokenPriceWei) + (stor22 * multiplier * msg.value / tokenPriceWei / 100));
}



}
