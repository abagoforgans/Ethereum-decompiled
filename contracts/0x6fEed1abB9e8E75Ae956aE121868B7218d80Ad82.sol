contract main {


// =======================  Init code  ======================


address stor0;
array of struct stor4;
address stor5;
address stor6;
uint256 stor7;
uint256 stor8;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor17;

function _fallback() {
    stor0 = msg.sender
    stor0 = msg.sender
    stor17 = block.timestamp
    stor5 = 0xa553674d900fad85b432fc7bd0c15b52b2177321
    stor6 = 0x85cf0d2fe7ee0e401c7dbd168a75f0e15c964117
    stor7 = 3 * 10^15
    stor8 = 640 * 10^18
    stor12 = 1505128140
    stor13 = 1506337740
    stor14 = 500 * 10^18
    stor15 = 937 * 10^18
    stor4.length++
    if not stor4.length > stor4.length + 1:
        stor4[stor4.length].field_0 = 1505128140
        stor4[stor4.length].field_256 = 1505214540
        stor4[stor4.length].field_512 = 850 * 10^18
        stor4.length++
        stor4[stor4.length].field_0 = 1505214600
        stor4[stor4.length].field_256 = 1505992140
        stor4[stor4.length].field_512 = 21 * 10^16 * 24 * 3600
        stor4.length++
    else:
        idx = (3 * stor4.length) + 3
        while 3 * stor4.length > idx:
            stor4[idx].field_0 = 0
            stor4[idx].field_256 = 0
            stor4[idx].field_512 = 0
            idx = idx + 3
            continue 
        stor4[stor4.length].field_0 = 1505128140
        stor4[stor4.length].field_256 = 1505214540
        stor4[stor4.length].field_512 = 850 * 10^18
        stor4.length++
        if not stor4.length > stor4.length + 1:
            stor4[stor4.length].field_0 = 1505214600
            stor4[stor4.length].field_256 = 1505992140
            stor4[stor4.length].field_512 = 21 * 10^16 * 24 * 3600
            stor4.length++
        else:
            idx = (3 * stor4.length) + 3
            while 3 * stor4.length > idx:
                stor4[idx].field_0 = 0
                stor4[idx].field_256 = 0
                stor4[idx].field_512 = 0
                idx = idx + 3
                continue 
            stor4[stor4.length].field_0 = 1505214600
            stor4[stor4.length].field_256 = 1505992140
            stor4[stor4.length].field_512 = 21 * 10^16 * 24 * 3600
            stor4.length++
            if not stor4.length <= stor4.length + 1:
                idx = (3 * stor4.length) + 3
                while 3 * stor4.length > idx:
                    stor4[idx].field_0 = 0
                    stor4[idx].field_256 = 0
                    stor4[idx].field_512 = 0
                    idx = idx + 3
                    continue 
    stor4[stor4.length].field_0 = 1505992200
    stor4[stor4.length].field_256 = 1507720140
    stor4[stor4.length].field_512 = 680 * 10^18
    return code.data[631 len 4125]
}



// =====================  Runtime code  =====================


address owner;
uint8 stor1; offset 160
address pendingOwner;
mapping of uint256 payments;
uint256 refundedWei;
array of struct bonuses;
address tokenAddress;
address multisigETHAddress;
uint256 sub_40ad0e2e;
uint256 tokensPerWei;
uint256 totalInWei;
uint256 totalTokensSold;
uint256 totalSales;
uint256 startTime;
uint256 endTime;
uint256 sub_da26e18f;
uint256 sub_7fc4f568;
uint8 stor16;
uint256 fakeNow;
mapping of struct backers;

function tokensPerWei() {
    return tokensPerWei
}

function endTime() {
    return endTime
}

function sub_40ad0e2e(?) {
    return sub_40ad0e2e
}

function refundedWei() {
    return refundedWei
}

function totalTokensSold() {
    return totalTokensSold
}

function totalSales() {
    return totalSales
}

function stopped() {
    return bool(stor1)
}

function startTime() {
    return startTime
}

function sub_7fc4f568(?) {
    return sub_7fc4f568
}

function multisigETH() {
    return multisigETHAddress
}

function owner() {
    return owner
}

function bonuses(uint256 arg1) {
    require arg1 < bonuses.length
    return bonuses[arg1].field_0, bonuses[arg1].field_256, bonuses[arg1].field_512
}

function backers(address arg1) {
    return backers[arg1].field_0, backers[arg1].field_256
}

function saleClosed() {
    return bool(stor16)
}

function sub_da26e18f(?) {
    return sub_da26e18f
}

function payments(address arg1) {
    return payments[arg1]
}

function pendingOwner() {
    return pendingOwner
}

function fakeNow() {
    return fakeNow
}

function totalInWei() {
    return totalInWei
}

function token() {
    return tokenAddress
}

function sub_038c993f(?) {
    totalInWei = arg1
}

function setNow(uint256 arg1) {
    fakeNow = arg1
}

function emergencyStop() {
    require owner == msg.sender
    stor1 = 1
}

function release() {
    require owner == msg.sender
    require stor1
    stor1 = 0
}

function getNow() {
    if 0 == fakeNow:
        return block.timestamp
    return fakeNow
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    pendingOwner = arg1
}

function claimOwnership() {
    if pendingOwner == msg.sender:
        owner = pendingOwner
        pendingOwner = 0
}

function balanceOf(address arg1) {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function withdrawPayments() {
    require payments[address(msg.sender)]
    require eth.balance(this.address) >= payments[address(msg.sender)]
    payments[address(msg.sender)] = 0
    call msg.sender with:
       value payments[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require payments[address(msg.sender)] + refundedWei >= refundedWei
    refundedWei += payments[address(msg.sender)]
    emit 0xb7a7e704: msg.sender, payments[address(msg.sender)]
}

function weiToTokensAtTime(uint256 arg1, uint256 arg2) {
    require arg1
    require arg2
    s = 0
    idx = 0
    while idx < bonuses.length:
        mem[0] = 4
        if bonuses[idx].field_0 > arg2:
            s = (3 * idx) + sha3(4)
            idx = idx + 1
            continue 
        if arg2 >= bonuses[idx].field_256:
            s = (3 * idx) + sha3(4)
            idx = idx + 1
            continue 
        if arg1:
            require arg1
            require bonuses[idx].field_512 * arg1 / arg1 == bonuses[idx].field_512
        return (bonuses[idx].field_512 * arg1)
    if arg1:
        require arg1
        require tokensPerWei * arg1 / arg1 == tokensPerWei
    return (tokensPerWei * arg1)
}

function finalize() {
    require owner == msg.sender
    if totalInWei < sub_7fc4f568:
        if 0 == fakeNow:
            require block.timestamp >= endTime
        else:
            require fakeNow >= endTime
    if totalInWei < sub_da26e18f:
        if 0 == fakeNow:
            require block.timestamp >= endTime + (336 * 24 * 3600)
        else:
            require fakeNow >= endTime + (336 * 24 * 3600)
    call multisigETHAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.unlock() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor16 = 1
}

function receiveApproval(address arg1, uint256 arg2) {
    if 0 == fakeNow:
        require block.timestamp >= endTime
    else:
        require fakeNow >= endTime
    require totalInWei < sub_da26e18f
    require tokenAddress == msg.sender
    require arg2 == backers[address(arg1)].field_256
    require ext_code.size(tokenAddress)
    call tokenAddress.seller() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining - 710 wei
        args address(arg1), address(ext_call.return_data[0]), arg2
    require ext_call.success
    require ext_call.return_data[0]
    backers[address(arg1)].field_0 = 0
    if backers[address(arg1)].field_0 > 0:
        require backers[address(arg1)].field_0 + payments[address(arg1)] >= payments[address(arg1)]
        payments[address(arg1)] += backers[address(arg1)].field_0
}

function weiToTokens(uint256 arg1) {
    require arg1
    if 0 == fakeNow:
        require block.timestamp
        s = 0
        idx = 0
        while idx < bonuses.length:
            mem[0] = 4
            if bonuses[idx].field_0 > block.timestamp:
                s = (3 * idx) + sha3(4)
                idx = idx + 1
                continue 
            if block.timestamp >= bonuses[idx].field_256:
                s = (3 * idx) + sha3(4)
                idx = idx + 1
                continue 
            if arg1:
                require arg1
                require bonuses[idx].field_512 * arg1 / arg1 == bonuses[idx].field_512
            return (bonuses[idx].field_512 * arg1)
    else:
        require fakeNow
        s = 0
        idx = 0
        while idx < bonuses.length:
            mem[0] = 4
            if bonuses[idx].field_0 > fakeNow:
                s = (3 * idx) + sha3(4)
                idx = idx + 1
                continue 
            if fakeNow >= bonuses[idx].field_256:
                s = (3 * idx) + sha3(4)
                idx = idx + 1
                continue 
            if arg1:
                require arg1
                require bonuses[idx].field_512 * arg1 / arg1 == bonuses[idx].field_512
            return (bonuses[idx].field_512 * arg1)
    if arg1:
        require arg1
        require tokensPerWei * arg1 / arg1 == tokensPerWei
    return (tokensPerWei * arg1)
}

function _fallback() payable {
    require not stor1
    if 0 == fakeNow:
        require block.timestamp >= startTime
    else:
        require fakeNow >= startTime
    if 0 == fakeNow:
        require block.timestamp <= endTime
    else:
        require fakeNow <= endTime
    require msg.value >= sub_40ad0e2e
    require msg.value + totalInWei >= totalInWei
    totalInWei += msg.value
    require msg.value + totalInWei <= sub_7fc4f568
    require msg.value
    if 0 == fakeNow:
        require block.timestamp
        s = 0
        idx = 0
        while idx < bonuses.length:
            mem[0] = 4
            if bonuses[idx].field_0 > block.timestamp:
                s = (3 * idx) + sha3(4)
                idx = idx + 1
                continue 
            if block.timestamp >= bonuses[idx].field_256:
                s = (3 * idx) + sha3(4)
                idx = idx + 1
                continue 
            if msg.value:
                require msg.value
                require bonuses[idx].field_512 * msg.value / msg.value == bonuses[idx].field_512
            require ext_code.size(tokenAddress)
            call tokenAddress.sell(address rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args msg.sender, bonuses[idx].field_512 * msg.value
            require ext_call.success
            require ext_call.return_data[0]
            require (bonuses[idx].field_512 * msg.value) + totalTokensSold >= totalTokensSold
            totalTokensSold += bonuses[idx].field_512 * msg.value
            require totalSales + 1 >= totalSales
            totalSales++
            require (bonuses[idx].field_512 * msg.value) + backers[address(msg.sender)].field_256 >= backers[address(msg.sender)].field_256
            backers[address(msg.sender)].field_256 += bonuses[idx].field_512 * msg.value
            require msg.value + backers[address(msg.sender)].field_0 >= backers[address(msg.sender)].field_0
            backers[address(msg.sender)].field_0 += msg.value
            emit 0x31f03442: msg.sender, msg.value
    else:
        require fakeNow
        s = 0
        idx = 0
        while idx < bonuses.length:
            mem[0] = 4
            if bonuses[idx].field_0 > fakeNow:
                s = (3 * idx) + sha3(4)
                idx = idx + 1
                continue 
            if fakeNow >= bonuses[idx].field_256:
                s = (3 * idx) + sha3(4)
                idx = idx + 1
                continue 
            if msg.value:
                require msg.value
                require bonuses[idx].field_512 * msg.value / msg.value == bonuses[idx].field_512
            require ext_code.size(tokenAddress)
            call tokenAddress.sell(address rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args msg.sender, bonuses[idx].field_512 * msg.value
            require ext_call.success
            require ext_call.return_data[0]
            require (bonuses[idx].field_512 * msg.value) + totalTokensSold >= totalTokensSold
            totalTokensSold += bonuses[idx].field_512 * msg.value
            require totalSales + 1 >= totalSales
            totalSales++
            require (bonuses[idx].field_512 * msg.value) + backers[address(msg.sender)].field_256 >= backers[address(msg.sender)].field_256
            backers[address(msg.sender)].field_256 += bonuses[idx].field_512 * msg.value
            require msg.value + backers[address(msg.sender)].field_0 >= backers[address(msg.sender)].field_0
            backers[address(msg.sender)].field_0 += msg.value
            emit 0x31f03442: msg.sender, msg.value
    if msg.value:
        require msg.value
        require tokensPerWei * msg.value / msg.value == tokensPerWei
    require ext_code.size(tokenAddress)
    call tokenAddress.sell(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, tokensPerWei * msg.value
    require ext_call.success
    require ext_call.return_data[0]
    require (tokensPerWei * msg.value) + totalTokensSold >= totalTokensSold
    totalTokensSold += tokensPerWei * msg.value
    require totalSales + 1 >= totalSales
    totalSales++
    require (tokensPerWei * msg.value) + backers[address(msg.sender)].field_256 >= backers[address(msg.sender)].field_256
    backers[address(msg.sender)].field_256 += tokensPerWei * msg.value
    require msg.value + backers[address(msg.sender)].field_0 >= backers[address(msg.sender)].field_0
    backers[address(msg.sender)].field_0 += msg.value
    emit 0x31f03442: msg.sender, msg.value
}



}
