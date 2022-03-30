contract main {


// =======================  Init code  ======================


address stor1;
address stor2;
address stor3;
address stor4;
address stor5;
uint256 stor6;
uint256 stor7;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor17;
uint256 stor18;
address stor19; offset 8
address stor20;
uint8 stor21; offset 152
address stor21;
uint256 stor22;
uint256 stor23;
uint256 stor24;

function _fallback() {
    stor1 = msg.sender
    stor3 = msg.sender
    stor5 = 0x75c6cceb1a33f177369053f8a0e840de96b4ed0e
    stor2 = 0x2025187475188fa9712be535c7278fea0f96476c
    stor4 = 0x8cd6b3d8713df6aa35894c8bea200c27ebe92550
    Mask(152, 0, stor21.field_0) = 0
    uint8(stor21.field_152) = 16
    stor20 = address(' ')
    stor19 = address('0')
    stor10 = 0
    stor11 = 0
    stor17 = 10^17
    stor18 = 10^6
    stor12 = 0
    stor13 = 0
    stor6 = 2 * 10^15
    stor7 = 50000
    stor14 = 12 * 10^15
    stor15 = 6 * 10^16
    stor22 = 17 * 10^14
    stor23 = 17 * 10^14
    stor24 = 12 * 10^15
    return code.data[822 len 10784]
}



// =====================  Runtime code  =====================


mapping of uint256 payments;
uint8 stopped; offset 160
uint128 stor1; offset 160
address stor1;
address rlcAddress;
address owner;
address multisigETHAddress;
address bTCproxyAddress;
uint256 rLCPerETH;
uint256 rLCPerSATOSHI;
uint256 eTHReceived;
uint256 bTCReceived;
uint256 rLCSentToETH;
uint256 rLCSentToBTC;
uint256 startBlock;
uint256 endBlock;
uint256 minCap;
uint256 maxCap;
uint8 maxCapReached;
uint256 minInvestETH;
uint256 minInvestBTC;
uint8 crowdsaleClosed;
address stor19;
address bountyAddress; offset 8
address reserveAddress;
address teamAddress;
uint256 rlc_bounty;
uint256 rlc_reserve;
uint256 rlc_team;
array of struct backers;

function endBlock() {
    return endBlock
}

function RLCPerSATOSHI() {
    return rLCPerSATOSHI
}

function rlc_reserve() {
    return rlc_reserve
}

function maxCap() {
    return maxCap
}

function RLCSentToBTC() {
    return rLCSentToBTC
}

function RLCSentToETH() {
    return rLCSentToETH
}

function BTCproxy() {
    return bTCproxyAddress
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

function rlc_team() {
    return rlc_team
}

function ETHReceived() {
    return eTHReceived
}

function stopped() {
    return bool(stopped)
}

function multisigETH() {
    return multisigETHAddress
}

function team() {
    return teamAddress
}

function owner() {
    return owner
}

function bounty() {
    return bountyAddress
}

function rlc_bounty() {
    return rlc_bounty
}

function BTCReceived() {
    return bTCReceived
}

function minInvestBTC() {
    return minInvestBTC
}

function rlc() {
    return rlcAddress
}

function backers(address arg1) {
    mem[256] = backers[arg1][1].field_0
    idx = 256
    s = 0
    while backers[arg1][1].length + 256 > idx + 32:
        mem[idx + 32] = backers[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return backers[arg1].field_0, 
           Array(len=backers[arg1][1].length, data=mem[256 len backers[arg1][1].length + (floor32(backers[arg1][1].length - 1) + -backers[arg1][1].length + 32 % 32)]),
           backers[arg1].field_512,
           backers[arg1].field_768
}

function RLCPerETH() {
    return rLCPerETH
}

function maxCapReached() {
    return bool(maxCapReached)
}

function crowdsaleClosed() {
    return bool(crowdsaleClosed)
}

function reserve() {
    return reserveAddress
}

function payments(address arg1) {
    return payments[arg1]
}

function setRLCPerETH(uint256 arg1) {
    require msg.sender == bTCproxyAddress
    rLCPerETH = arg1
}

function emergencyStop() {
    if msg.sender == address(stor1.field_0):
        Mask(96, 0, stor1.field_160) = 1
}

function start() {
    require msg.sender == owner
    startBlock = block.timestamp
    endBlock = block.timestamp + 1200
}

function release() {
    if msg.sender == address(stor1.field_0):
        require stopped
        Mask(96, 0, stor1.field_160) = 0
}

function transferOwnership(address arg1) {
    if msg.sender == address(stor1.field_0):
        if arg1:
            address(stor1.field_0) = arg1
}

function drain() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function withdrawPayments() {
    require payments[address(msg.sender)]
    require eth.balance(this.address) >= payments[address(msg.sender)]
    payments[address(msg.sender)] = 0
    call msg.sender with:
       value payments[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit RefundETH(msg.sender, payments[address(msg.sender)]);
}

function receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) {
    require block.timestamp >= endBlock
    require rLCSentToETH + rLCSentToBTC < minCap
    require msg.sender == rlcAddress
    require not arg4.length
    require arg2 == backers[address(arg1)].field_768
    require ext_code.size(rlcAddress)
    call rlcAddress.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 50 wei
        args address(arg1), address(this.address), arg2
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(rlcAddress)
    call rlcAddress.burn(uint256 rg1) with:
         gas gas_remaining - 50 wei
        args arg2
    require ext_call.success
    require ext_call.return_data[0]
    backers[address(arg1)].field_0 = 0
    backers[address(arg1)].field_512 = 0
    if backers[address(arg1)].field_0 > 0:
        payments[address(arg1)] += backers[address(arg1)].field_0
    if backers[address(arg1)].field_512 > 0:
        mem[ceil32(arg4.length) + 224] = backers[address(arg1)][1].field_0
        idx = ceil32(arg4.length) + 224
        s = 0
        while ceil32(arg4.length) + backers[address(arg1)][1].length + 224 > idx + 32:
            mem[idx + 32] = backers[address(arg1)][s + 1].field_256
            idx = idx + 32
            s = s + 1
            continue 
        emit RefundBTC(Array(len=backers[address(arg1)][1].length, data=mem[ceil32(arg4.length) + 224 len backers[address(arg1)][1].length + (floor32(backers[address(arg1)][1].length - 1) + -backers[address(arg1)][1].length + 32 % 32)]), backers[address(arg1)].field_512);
}

function finalize() {
    require msg.sender == owner
    if rLCSentToETH + rLCSentToBTC < maxCap - 5 * 10^12:
        require block.timestamp >= endBlock
    if rLCSentToETH + rLCSentToBTC < minCap:
        require block.timestamp >= endBlock + 1200
    call multisigETHAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require ext_code.size(rlcAddress)
    if rlc_reserve <= 6 * 10^15:
        call rlcAddress.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining - 50 wei
            args reserveAddress, rlc_reserve
        require ext_call.success
        require ext_call.return_data[0]
    else:
        call rlcAddress.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining - 50 wei
            args reserveAddress, 6 * 10^15
        require ext_call.success
        require ext_call.return_data[0]
        rlc_reserve = 6 * 10^15
    require ext_code.size(rlcAddress)
    if rlc_bounty <= 6 * 10^15:
        call rlcAddress.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining - 50 wei
            args stor19, rlc_bounty
        require ext_call.success
        require ext_call.return_data[0]
    else:
        call rlcAddress.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining - 50 wei
            args stor19, 6 * 10^15
        require ext_call.success
        require ext_call.return_data[0]
        rlc_bounty = 6 * 10^15
    require ext_code.size(rlcAddress)
    call rlcAddress.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args teamAddress, rlc_team
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(rlcAddress)
    call rlcAddress.totalSupply() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(rlcAddress)
    if rlc_reserve + rlc_bounty + rlc_team + rLCSentToBTC + rLCSentToETH < ext_call.return_data[0]:
        call rlcAddress.totalSupply() with:
             gas gas_remaining - 50 wei
        require ext_call.success
        require ext_code.size(rlcAddress)
        call rlcAddress.burn(uint256 rg1) with:
             gas gas_remaining - 50 wei
            args (ext_call.return_data[0] - rlc_reserve - rlc_bounty - rlc_team - rLCSentToBTC - rLCSentToETH)
        require ext_call.success
    call rlcAddress.unlock() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    crowdsaleClosed = 1
}

function _fallback() payable {
    require block.timestamp <= endBlock
    require not stopped
    require block.timestamp >= startBlock
    require block.timestamp <= endBlock
    require msg.value >= minInvestETH
    if msg.value:
        require msg.value
        require msg.value * rLCPerETH / msg.value == rLCPerETH
    require startBlock + (240 * 24 * 3600) >= startBlock
    require startBlock + (240 * 24 * 3600) >= 240 * 24 * 3600
    if block.timestamp < startBlock + (240 * 24 * 3600):
        require (msg.value * rLCPerETH / 10^18) + (msg.value * rLCPerETH / 10^18 / 5) >= msg.value * rLCPerETH / 10^18
        require (msg.value * rLCPerETH / 10^18) + (msg.value * rLCPerETH / 10^18 / 5) >= msg.value * rLCPerETH / 10^18 / 5
        require rLCSentToETH + rLCSentToBTC >= rLCSentToETH
        require rLCSentToETH + rLCSentToBTC >= rLCSentToBTC
        require rLCSentToETH + rLCSentToBTC >= 0
        require (msg.value * rLCPerETH / 10^18) + (msg.value * rLCPerETH / 10^18 / 5) >= 0
        require (msg.value * rLCPerETH / 10^18) + (msg.value * rLCPerETH / 10^18 / 5) + rLCSentToETH + rLCSentToBTC <= maxCap
        require ext_code.size(rlcAddress)
        call rlcAddress.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining - 50 wei
            args msg.sender, (msg.value * rLCPerETH / 10^18) + (msg.value * rLCPerETH / 10^18 / 5)
        require ext_call.success
        require ext_call.return_data[0]
        require backers[address(msg.sender)].field_768 + (msg.value * rLCPerETH / 10^18) + (msg.value * rLCPerETH / 10^18 / 5) >= backers[address(msg.sender)].field_768
        require backers[address(msg.sender)].field_768 >= 0
        backers[address(msg.sender)].field_768 = backers[address(msg.sender)].field_768 + (msg.value * rLCPerETH / 10^18) + (msg.value * rLCPerETH / 10^18 / 5)
        require backers[address(msg.sender)].field_0 + msg.value >= backers[address(msg.sender)].field_0
        require backers[address(msg.sender)].field_0 + msg.value >= msg.value
        backers[address(msg.sender)].field_0 += msg.value
        require eTHReceived + msg.value >= eTHReceived
        require eTHReceived + msg.value >= msg.value
        eTHReceived += msg.value
        require rLCSentToETH + (msg.value * rLCPerETH / 10^18) + (msg.value * rLCPerETH / 10^18 / 5) >= rLCSentToETH
        require rLCSentToETH >= 0
        rLCSentToETH = rLCSentToETH + (msg.value * rLCPerETH / 10^18) + (msg.value * rLCPerETH / 10^18 / 5)
        require rlc_bounty + ((msg.value * rLCPerETH / 10^18) + (msg.value * rLCPerETH / 10^18 / 5) / 10) >= rlc_bounty
        require rlc_bounty + ((msg.value * rLCPerETH / 10^18) + (msg.value * rLCPerETH / 10^18 / 5) / 10) >= (msg.value * rLCPerETH / 10^18) + (msg.value * rLCPerETH / 10^18 / 5) / 10
        rlc_bounty += (msg.value * rLCPerETH / 10^18) + (msg.value * rLCPerETH / 10^18 / 5) / 10
        require rlc_team + ((msg.value * rLCPerETH / 10^18) + (msg.value * rLCPerETH / 10^18 / 5) / 20) >= rlc_team
        require rlc_team + ((msg.value * rLCPerETH / 10^18) + (msg.value * rLCPerETH / 10^18 / 5) / 20) >= (msg.value * rLCPerETH / 10^18) + (msg.value * rLCPerETH / 10^18 / 5) / 20
        rlc_team += (msg.value * rLCPerETH / 10^18) + (msg.value * rLCPerETH / 10^18 / 5) / 20
        require rlc_reserve + ((msg.value * rLCPerETH / 10^18) + (msg.value * rLCPerETH / 10^18 / 5) / 10) >= rlc_reserve
        require rlc_reserve + ((msg.value * rLCPerETH / 10^18) + (msg.value * rLCPerETH / 10^18 / 5) / 10) >= (msg.value * rLCPerETH / 10^18) + (msg.value * rLCPerETH / 10^18 / 5) / 10
        rlc_reserve += (msg.value * rLCPerETH / 10^18) + (msg.value * rLCPerETH / 10^18 / 5) / 10
        emit Logs((msg.value * rLCPerETH / 10^18) + (msg.value * rLCPerETH / 10^18 / 5), Array(len=7, data='emitRLC'), msg.sender);
    else:
        require startBlock + (480 * 24 * 3600) >= startBlock
        require startBlock + (480 * 24 * 3600) >= 480 * 24 * 3600
        if block.timestamp >= startBlock + (480 * 24 * 3600):
            require rLCSentToETH + rLCSentToBTC >= rLCSentToETH
            require rLCSentToETH + rLCSentToBTC >= rLCSentToBTC
            require (msg.value * rLCPerETH / 10^18) + rLCSentToETH + rLCSentToBTC >= msg.value * rLCPerETH / 10^18
            require msg.value * rLCPerETH / 10^18 >= 0
            require (msg.value * rLCPerETH / 10^18) + rLCSentToETH + rLCSentToBTC <= maxCap
            require ext_code.size(rlcAddress)
            call rlcAddress.transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining - 50 wei
                args msg.sender, msg.value * rLCPerETH / 10^18
            require ext_call.success
            require ext_call.return_data[0]
            require backers[address(msg.sender)].field_768 + (msg.value * rLCPerETH / 10^18) >= backers[address(msg.sender)].field_768
            require backers[address(msg.sender)].field_768 + (msg.value * rLCPerETH / 10^18) >= msg.value * rLCPerETH / 10^18
            backers[address(msg.sender)].field_768 += msg.value * rLCPerETH / 10^18
            require backers[address(msg.sender)].field_0 + msg.value >= backers[address(msg.sender)].field_0
            require backers[address(msg.sender)].field_0 + msg.value >= msg.value
            backers[address(msg.sender)].field_0 += msg.value
            require eTHReceived + msg.value >= eTHReceived
            require eTHReceived + msg.value >= msg.value
            eTHReceived += msg.value
            require rLCSentToETH + (msg.value * rLCPerETH / 10^18) >= rLCSentToETH
            require rLCSentToETH + (msg.value * rLCPerETH / 10^18) >= msg.value * rLCPerETH / 10^18
            rLCSentToETH += msg.value * rLCPerETH / 10^18
            require rlc_bounty + (msg.value * rLCPerETH / 10^18 / 10) >= rlc_bounty
            require rlc_bounty + (msg.value * rLCPerETH / 10^18 / 10) >= msg.value * rLCPerETH / 10^18 / 10
            rlc_bounty += msg.value * rLCPerETH / 10^18 / 10
            require rlc_team + (msg.value * rLCPerETH / 10^18 / 20) >= rlc_team
            require rlc_team + (msg.value * rLCPerETH / 10^18 / 20) >= msg.value * rLCPerETH / 10^18 / 20
            rlc_team += msg.value * rLCPerETH / 10^18 / 20
            require rlc_reserve + (msg.value * rLCPerETH / 10^18 / 10) >= rlc_reserve
            require rlc_reserve + (msg.value * rLCPerETH / 10^18 / 10) >= msg.value * rLCPerETH / 10^18 / 10
            rlc_reserve += msg.value * rLCPerETH / 10^18 / 10
            emit Logs(msg.value * rLCPerETH / 10^18, Array(len=7, data='emitRLC'), msg.sender);
        else:
            require (msg.value * rLCPerETH / 10^18) + (msg.value * rLCPerETH / 10^18 / 10) >= msg.value * rLCPerETH / 10^18
            require (msg.value * rLCPerETH / 10^18) + (msg.value * rLCPerETH / 10^18 / 10) >= msg.value * rLCPerETH / 10^18 / 10
            require rLCSentToETH + rLCSentToBTC >= rLCSentToETH
            require rLCSentToETH + rLCSentToBTC >= rLCSentToBTC
            require rLCSentToETH + rLCSentToBTC >= 0
            require (msg.value * rLCPerETH / 10^18) + (msg.value * rLCPerETH / 10^18 / 10) >= 0
            require (msg.value * rLCPerETH / 10^18) + (msg.value * rLCPerETH / 10^18 / 10) + rLCSentToETH + rLCSentToBTC <= maxCap
            require ext_code.size(rlcAddress)
            call rlcAddress.transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining - 50 wei
                args msg.sender, (msg.value * rLCPerETH / 10^18) + (msg.value * rLCPerETH / 10^18 / 10)
            require ext_call.success
            require ext_call.return_data[0]
            require backers[address(msg.sender)].field_768 + (msg.value * rLCPerETH / 10^18) + (msg.value * rLCPerETH / 10^18 / 10) >= backers[address(msg.sender)].field_768
            require backers[address(msg.sender)].field_768 >= 0
            backers[address(msg.sender)].field_768 = backers[address(msg.sender)].field_768 + (msg.value * rLCPerETH / 10^18) + (msg.value * rLCPerETH / 10^18 / 10)
            require backers[address(msg.sender)].field_0 + msg.value >= backers[address(msg.sender)].field_0
            require backers[address(msg.sender)].field_0 + msg.value >= msg.value
            backers[address(msg.sender)].field_0 += msg.value
            require eTHReceived + msg.value >= eTHReceived
            require eTHReceived + msg.value >= msg.value
            eTHReceived += msg.value
            require rLCSentToETH + (msg.value * rLCPerETH / 10^18) + (msg.value * rLCPerETH / 10^18 / 10) >= rLCSentToETH
            require rLCSentToETH >= 0
            rLCSentToETH = rLCSentToETH + (msg.value * rLCPerETH / 10^18) + (msg.value * rLCPerETH / 10^18 / 10)
            require rlc_bounty + ((msg.value * rLCPerETH / 10^18) + (msg.value * rLCPerETH / 10^18 / 10) / 10) >= rlc_bounty
            require rlc_bounty + ((msg.value * rLCPerETH / 10^18) + (msg.value * rLCPerETH / 10^18 / 10) / 10) >= (msg.value * rLCPerETH / 10^18) + (msg.value * rLCPerETH / 10^18 / 10) / 10
            rlc_bounty += (msg.value * rLCPerETH / 10^18) + (msg.value * rLCPerETH / 10^18 / 10) / 10
            require rlc_team + ((msg.value * rLCPerETH / 10^18) + (msg.value * rLCPerETH / 10^18 / 10) / 20) >= rlc_team
            require rlc_team + ((msg.value * rLCPerETH / 10^18) + (msg.value * rLCPerETH / 10^18 / 10) / 20) >= (msg.value * rLCPerETH / 10^18) + (msg.value * rLCPerETH / 10^18 / 10) / 20
            rlc_team += (msg.value * rLCPerETH / 10^18) + (msg.value * rLCPerETH / 10^18 / 10) / 20
            require rlc_reserve + ((msg.value * rLCPerETH / 10^18) + (msg.value * rLCPerETH / 10^18 / 10) / 10) >= rlc_reserve
            require rlc_reserve + ((msg.value * rLCPerETH / 10^18) + (msg.value * rLCPerETH / 10^18 / 10) / 10) >= (msg.value * rLCPerETH / 10^18) + (msg.value * rLCPerETH / 10^18 / 10) / 10
            rlc_reserve += (msg.value * rLCPerETH / 10^18) + (msg.value * rLCPerETH / 10^18 / 10) / 10
            emit Logs((msg.value * rLCPerETH / 10^18) + (msg.value * rLCPerETH / 10^18 / 10), Array(len=7, data='emitRLC'), msg.sender);
    emit ReceivedETH(msg.sender, eTHReceived);
}

function receiveBTC(address arg1, string arg2, uint256 arg3, string arg4) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg4.length
    mem[ceil32(arg2.length) + 160 len arg4.length] = arg4[all]
    require not stopped
    require block.timestamp >= startBlock
    require block.timestamp <= endBlock
    require msg.sender == bTCproxyAddress
    require arg3 >= minInvestBTC
    if arg3:
        require arg3
        require arg3 * rLCPerSATOSHI / arg3 == rLCPerSATOSHI
    require startBlock + (240 * 24 * 3600) >= startBlock
    require startBlock + (240 * 24 * 3600) >= 240 * 24 * 3600
    if block.timestamp < startBlock + (240 * 24 * 3600):
        require (arg3 * rLCPerSATOSHI) + (arg3 * rLCPerSATOSHI / 5) >= arg3 * rLCPerSATOSHI
        require (arg3 * rLCPerSATOSHI) + (arg3 * rLCPerSATOSHI / 5) >= arg3 * rLCPerSATOSHI / 5
        require rLCSentToETH + rLCSentToBTC >= rLCSentToETH
        require rLCSentToETH + rLCSentToBTC >= rLCSentToBTC
        require rLCSentToETH + rLCSentToBTC >= 0
        require (arg3 * rLCPerSATOSHI) + (arg3 * rLCPerSATOSHI / 5) >= 0
        if (arg3 * rLCPerSATOSHI) + (arg3 * rLCPerSATOSHI / 5) + rLCSentToETH + rLCSentToBTC > maxCap:
            mem[ceil32(arg2.length) + ceil32(arg4.length) + 192] = arg3
            mem[ceil32(arg2.length) + ceil32(arg4.length) + 160] = 64
            mem[ceil32(arg2.length) + ceil32(arg4.length) + 224] = arg2.length
            if arg2.length:
                mem[ceil32(arg2.length) + ceil32(arg4.length) + 256] = mem[128]
                mem[ceil32(arg2.length) + ceil32(arg4.length) + 288 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
            emit RefundBTC(Array(len=arg2.length, data=mem[ceil32(arg2.length) + ceil32(arg4.length) + 256 len arg2.length]), arg3);
            return 0
        require ext_code.size(rlcAddress)
        call rlcAddress.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining - 50 wei
            args address(arg1), (arg3 * rLCPerSATOSHI) + (arg3 * rLCPerSATOSHI / 5)
        require ext_call.success
        require ext_call.return_data[0]
        require backers[address(arg1)].field_768 + (arg3 * rLCPerSATOSHI) + (arg3 * rLCPerSATOSHI / 5) >= backers[address(arg1)].field_768
        require backers[address(arg1)].field_768 >= 0
        backers[address(arg1)].field_768 = backers[address(arg1)].field_768 + (arg3 * rLCPerSATOSHI) + (arg3 * rLCPerSATOSHI / 5)
        backers[address(arg1)][1][].field_0 = Array(len=arg2.length, data=arg2[all])
        require backers[address(arg1)].field_512 + arg3 >= backers[address(arg1)].field_512
        require backers[address(arg1)].field_512 + arg3 >= arg3
        backers[address(arg1)].field_512 += arg3
        require bTCReceived + arg3 >= bTCReceived
        require bTCReceived + arg3 >= arg3
        bTCReceived += arg3
        require rLCSentToBTC + (arg3 * rLCPerSATOSHI) + (arg3 * rLCPerSATOSHI / 5) >= rLCSentToBTC
        require rLCSentToBTC >= 0
        rLCSentToBTC = rLCSentToBTC + (arg3 * rLCPerSATOSHI) + (arg3 * rLCPerSATOSHI / 5)
        require rlc_bounty + ((arg3 * rLCPerSATOSHI) + (arg3 * rLCPerSATOSHI / 5) / 10) >= rlc_bounty
        require rlc_bounty + ((arg3 * rLCPerSATOSHI) + (arg3 * rLCPerSATOSHI / 5) / 10) >= (arg3 * rLCPerSATOSHI) + (arg3 * rLCPerSATOSHI / 5) / 10
        rlc_bounty += (arg3 * rLCPerSATOSHI) + (arg3 * rLCPerSATOSHI / 5) / 10
        require rlc_team + ((arg3 * rLCPerSATOSHI) + (arg3 * rLCPerSATOSHI / 5) / 20) >= rlc_team
        require rlc_team + ((arg3 * rLCPerSATOSHI) + (arg3 * rLCPerSATOSHI / 5) / 20) >= (arg3 * rLCPerSATOSHI) + (arg3 * rLCPerSATOSHI / 5) / 20
        rlc_team += (arg3 * rLCPerSATOSHI) + (arg3 * rLCPerSATOSHI / 5) / 20
        require rlc_reserve + ((arg3 * rLCPerSATOSHI) + (arg3 * rLCPerSATOSHI / 5) / 10) >= rlc_reserve
        require rlc_reserve + ((arg3 * rLCPerSATOSHI) + (arg3 * rLCPerSATOSHI / 5) / 10) >= (arg3 * rLCPerSATOSHI) + (arg3 * rLCPerSATOSHI / 5) / 10
        rlc_reserve += (arg3 * rLCPerSATOSHI) + (arg3 * rLCPerSATOSHI / 5) / 10
        mem[ceil32(arg2.length) + ceil32(arg4.length) + 256] = 'emitRLC'
        emit Logs((arg3 * rLCPerSATOSHI) + (arg3 * rLCPerSATOSHI / 5), Array(len=7, data='emitRLC'), msg.sender);
    else:
        require startBlock + (480 * 24 * 3600) >= startBlock
        require startBlock + (480 * 24 * 3600) >= 480 * 24 * 3600
        if block.timestamp >= startBlock + (480 * 24 * 3600):
            require rLCSentToETH + rLCSentToBTC >= rLCSentToETH
            require rLCSentToETH + rLCSentToBTC >= rLCSentToBTC
            require (arg3 * rLCPerSATOSHI) + rLCSentToETH + rLCSentToBTC >= arg3 * rLCPerSATOSHI
            require arg3 * rLCPerSATOSHI >= 0
            if (arg3 * rLCPerSATOSHI) + rLCSentToETH + rLCSentToBTC > maxCap:
                mem[ceil32(arg2.length) + ceil32(arg4.length) + 192] = arg3
                mem[ceil32(arg2.length) + ceil32(arg4.length) + 160] = 64
                mem[ceil32(arg2.length) + ceil32(arg4.length) + 224] = arg2.length
                if arg2.length:
                    mem[ceil32(arg2.length) + ceil32(arg4.length) + 256] = mem[128]
                    mem[ceil32(arg2.length) + ceil32(arg4.length) + 288 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
                emit RefundBTC(Array(len=arg2.length, data=mem[ceil32(arg2.length) + ceil32(arg4.length) + 256 len arg2.length]), arg3);
                return 0
            require ext_code.size(rlcAddress)
            call rlcAddress.transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining - 50 wei
                args address(arg1), arg3 * rLCPerSATOSHI
            require ext_call.success
            require ext_call.return_data[0]
            require backers[address(arg1)].field_768 + (arg3 * rLCPerSATOSHI) >= backers[address(arg1)].field_768
            require backers[address(arg1)].field_768 + (arg3 * rLCPerSATOSHI) >= arg3 * rLCPerSATOSHI
            backers[address(arg1)].field_768 += arg3 * rLCPerSATOSHI
            backers[address(arg1)][1][].field_0 = Array(len=arg2.length, data=arg2[all])
            require backers[address(arg1)].field_512 + arg3 >= backers[address(arg1)].field_512
            require backers[address(arg1)].field_512 + arg3 >= arg3
            backers[address(arg1)].field_512 += arg3
            require bTCReceived + arg3 >= bTCReceived
            require bTCReceived + arg3 >= arg3
            bTCReceived += arg3
            require rLCSentToBTC + (arg3 * rLCPerSATOSHI) >= rLCSentToBTC
            require rLCSentToBTC + (arg3 * rLCPerSATOSHI) >= arg3 * rLCPerSATOSHI
            rLCSentToBTC += arg3 * rLCPerSATOSHI
            require rlc_bounty + (arg3 * rLCPerSATOSHI / 10) >= rlc_bounty
            require rlc_bounty + (arg3 * rLCPerSATOSHI / 10) >= arg3 * rLCPerSATOSHI / 10
            rlc_bounty += arg3 * rLCPerSATOSHI / 10
            require rlc_team + (arg3 * rLCPerSATOSHI / 20) >= rlc_team
            require rlc_team + (arg3 * rLCPerSATOSHI / 20) >= arg3 * rLCPerSATOSHI / 20
            rlc_team += arg3 * rLCPerSATOSHI / 20
            require rlc_reserve + (arg3 * rLCPerSATOSHI / 10) >= rlc_reserve
            require rlc_reserve + (arg3 * rLCPerSATOSHI / 10) >= arg3 * rLCPerSATOSHI / 10
            rlc_reserve += arg3 * rLCPerSATOSHI / 10
            mem[ceil32(arg2.length) + ceil32(arg4.length) + 256] = 'emitRLC'
            emit Logs(arg3 * rLCPerSATOSHI, Array(len=7, data='emitRLC'), msg.sender);
        else:
            require (arg3 * rLCPerSATOSHI) + (arg3 * rLCPerSATOSHI / 10) >= arg3 * rLCPerSATOSHI
            require (arg3 * rLCPerSATOSHI) + (arg3 * rLCPerSATOSHI / 10) >= arg3 * rLCPerSATOSHI / 10
            require rLCSentToETH + rLCSentToBTC >= rLCSentToETH
            require rLCSentToETH + rLCSentToBTC >= rLCSentToBTC
            require rLCSentToETH + rLCSentToBTC >= 0
            require (arg3 * rLCPerSATOSHI) + (arg3 * rLCPerSATOSHI / 10) >= 0
            if (arg3 * rLCPerSATOSHI) + (arg3 * rLCPerSATOSHI / 10) + rLCSentToETH + rLCSentToBTC > maxCap:
                mem[ceil32(arg2.length) + ceil32(arg4.length) + 192] = arg3
                mem[ceil32(arg2.length) + ceil32(arg4.length) + 160] = 64
                mem[ceil32(arg2.length) + ceil32(arg4.length) + 224] = arg2.length
                if arg2.length:
                    mem[ceil32(arg2.length) + ceil32(arg4.length) + 256] = mem[128]
                    mem[ceil32(arg2.length) + ceil32(arg4.length) + 288 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
                emit RefundBTC(Array(len=arg2.length, data=mem[ceil32(arg2.length) + ceil32(arg4.length) + 256 len arg2.length]), arg3);
                return 0
            require ext_code.size(rlcAddress)
            call rlcAddress.transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining - 50 wei
                args address(arg1), (arg3 * rLCPerSATOSHI) + (arg3 * rLCPerSATOSHI / 10)
            require ext_call.success
            require ext_call.return_data[0]
            require backers[address(arg1)].field_768 + (arg3 * rLCPerSATOSHI) + (arg3 * rLCPerSATOSHI / 10) >= backers[address(arg1)].field_768
            require backers[address(arg1)].field_768 >= 0
            backers[address(arg1)].field_768 = backers[address(arg1)].field_768 + (arg3 * rLCPerSATOSHI) + (arg3 * rLCPerSATOSHI / 10)
            backers[address(arg1)][1][].field_0 = Array(len=arg2.length, data=arg2[all])
            require backers[address(arg1)].field_512 + arg3 >= backers[address(arg1)].field_512
            require backers[address(arg1)].field_512 + arg3 >= arg3
            backers[address(arg1)].field_512 += arg3
            require bTCReceived + arg3 >= bTCReceived
            require bTCReceived + arg3 >= arg3
            bTCReceived += arg3
            require rLCSentToBTC + (arg3 * rLCPerSATOSHI) + (arg3 * rLCPerSATOSHI / 10) >= rLCSentToBTC
            require rLCSentToBTC >= 0
            rLCSentToBTC = rLCSentToBTC + (arg3 * rLCPerSATOSHI) + (arg3 * rLCPerSATOSHI / 10)
            require rlc_bounty + ((arg3 * rLCPerSATOSHI) + (arg3 * rLCPerSATOSHI / 10) / 10) >= rlc_bounty
            require rlc_bounty + ((arg3 * rLCPerSATOSHI) + (arg3 * rLCPerSATOSHI / 10) / 10) >= (arg3 * rLCPerSATOSHI) + (arg3 * rLCPerSATOSHI / 10) / 10
            rlc_bounty += (arg3 * rLCPerSATOSHI) + (arg3 * rLCPerSATOSHI / 10) / 10
            require rlc_team + ((arg3 * rLCPerSATOSHI) + (arg3 * rLCPerSATOSHI / 10) / 20) >= rlc_team
            require rlc_team + ((arg3 * rLCPerSATOSHI) + (arg3 * rLCPerSATOSHI / 10) / 20) >= (arg3 * rLCPerSATOSHI) + (arg3 * rLCPerSATOSHI / 10) / 20
            rlc_team += (arg3 * rLCPerSATOSHI) + (arg3 * rLCPerSATOSHI / 10) / 20
            require rlc_reserve + ((arg3 * rLCPerSATOSHI) + (arg3 * rLCPerSATOSHI / 10) / 10) >= rlc_reserve
            require rlc_reserve + ((arg3 * rLCPerSATOSHI) + (arg3 * rLCPerSATOSHI / 10) / 10) >= (arg3 * rLCPerSATOSHI) + (arg3 * rLCPerSATOSHI / 10) / 10
            rlc_reserve += (arg3 * rLCPerSATOSHI) + (arg3 * rLCPerSATOSHI / 10) / 10
            mem[ceil32(arg2.length) + ceil32(arg4.length) + 256] = 'emitRLC'
            emit Logs((arg3 * rLCPerSATOSHI) + (arg3 * rLCPerSATOSHI / 10), Array(len=7, data='emitRLC'), msg.sender);
    mem[ceil32(arg2.length) + ceil32(arg4.length) + 160] = arg1
    mem[ceil32(arg2.length) + ceil32(arg4.length) + 224] = bTCReceived
    mem[ceil32(arg2.length) + ceil32(arg4.length) + 192] = 128
    mem[ceil32(arg2.length) + ceil32(arg4.length) + 288] = arg2.length
    if not arg2.length:
        mem[ceil32(arg2.length) + ceil32(arg4.length) + 256] = arg2.length + 160
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + 320] = arg4.length
        if not arg4.length:
            if not arg4.length % 32:
                emit ReceivedBTC(address(arg1), Array(len=arg2.length, data=mem[ceil32(arg2.length) + ceil32(arg4.length) + 320 len arg4.length + arg2.length + 32]), bTCReceived, arg2.length + 160);
            else:
                mem[floor32(arg4.length) + arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + 352] = mem[floor32(arg4.length) + arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + -(arg4.length % 32) + 384 len arg4.length % 32]
                emit ReceivedBTC(address(arg1), Array(len=arg2.length, data=mem[ceil32(arg2.length) + ceil32(arg4.length) + 320 len floor32(arg4.length) + arg2.length + 64]), bTCReceived, arg2.length + 160);
        else:
            mem[arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + 352] = mem[ceil32(arg2.length) + 160]
            mem[arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + 384 len floor32(arg4.length - 1)] = mem[ceil32(arg2.length) + 192 len floor32(arg4.length - 1)]
            if not arg4.length % 32:
                emit ReceivedBTC(address(arg1), Array(len=arg2.length, data=mem[ceil32(arg2.length) + ceil32(arg4.length) + 320 len arg4.length + arg2.length + 32]), bTCReceived, arg2.length + 160);
            else:
                mem[floor32(arg4.length) + arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + 352] = mem[floor32(arg4.length) + arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + -(arg4.length % 32) + 384 len arg4.length % 32]
                emit ReceivedBTC(address(arg1), Array(len=arg2.length, data=mem[ceil32(arg2.length) + ceil32(arg4.length) + 320 len arg2.length + 32], mem[ceil32(arg2.length) + 160], mem[ceil32(arg2.length) + ceil32(arg4.length) + arg2.length + 384 len floor32(arg4.length)]), bTCReceived, arg2.length + 160);
    else:
        mem[ceil32(arg2.length) + ceil32(arg4.length) + 320] = mem[128]
        mem[ceil32(arg2.length) + ceil32(arg4.length) + 352 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
        mem[ceil32(arg2.length) + ceil32(arg4.length) + 256] = arg2.length + 160
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + 320] = arg4.length
        if arg4.length:
            mem[arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + 352] = mem[ceil32(arg2.length) + 160]
            mem[arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + 384 len floor32(arg4.length - 1)] = mem[ceil32(arg2.length) + 192 len floor32(arg4.length - 1)]
        if not arg4.length % 32:
            emit ReceivedBTC(address(arg1), Array(len=arg2.length, data=mem[128], mem[ceil32(arg2.length) + ceil32(arg4.length) + 352 len arg4.length + arg2.length]), bTCReceived, arg2.length + 160);
        else:
            mem[floor32(arg4.length) + arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + 352] = mem[floor32(arg4.length) + arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + -(arg4.length % 32) + 384 len arg4.length % 32]
            emit ReceivedBTC(address(arg1), Array(len=arg2.length, data=mem[128], mem[ceil32(arg2.length) + ceil32(arg4.length) + 352 len floor32(arg4.length) + arg2.length + 32]), bTCReceived, arg2.length + 160);
    return 1
}



}
