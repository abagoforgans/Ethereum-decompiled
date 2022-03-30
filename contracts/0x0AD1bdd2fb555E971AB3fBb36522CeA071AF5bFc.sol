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
uint128 stor19; offset 168
uint256 stor19;
uint256 stor20;
uint8 stor21; offset 152
address stor21;
uint256 stor22;
uint256 stor23;
uint256 stor24;

function _fallback() {
    stor1 = msg.sender
    stor3 = msg.sender
    stor5 = code.data[7146 len 20]
    stor2 = code.data[7114 len 20]
    stor4 = 0x8cd6b3d8713df6aa35894c8bea200c27ebe92550
    Mask(152, 0, stor21.field_0) = 0
    uint8(stor21.field_152) = 16
    stor20 = ' ' or Mask(96, 160, stor20)
    uint256(stor19.field_0) = Mask(88, 0, stor19.field_168)
    stor10 = 0
    stor11 = 0
    stor17 = 10^17
    stor18 = 1000
    stor12 = 0
    stor13 = 0
    stor6 = 2 * 10^11
    stor7 = 50000
    stor14 = 12 * 10^15
    stor15 = 6 * 10^16
    stor22 = 17 * 10^14
    stor23 = 17 * 10^14
    stor24 = 12 * 10^15
    return code.data[372 len 6730]
}



// =====================  Runtime code  =====================


mapping of uint256 payments;
uint8 stor1; offset 160
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
    return bool(uint8(stor1.field_160))
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
    mem[288] = backers[arg1][1].field_0
    idx = 288
    s = 0
    while backers[arg1][1].length + 288 > idx + 32:
        mem[idx + 32] = backers[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return backers[arg1].field_0, 
           Array(len=backers[arg1][1].length, data=mem[288 len backers[arg1][1].length + (floor32(backers[arg1][1].length - 1) + -backers[arg1][1].length + 32 % 32)]),
           backers[arg1].field_512,
           backers[arg1].field_768,
           backers[arg1].field_1024
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
    require bTCproxyAddress == msg.sender
    rLCPerETH = arg1
}

function emergencyStop() {
    if address(stor1.field_0) == msg.sender:
        uint8(stor1.field_160) = 1
}

function start() {
    require owner == msg.sender
    startBlock = block.timestamp
    endBlock = block.timestamp + (48 * 24 * 3600)
}

function release() {
    if address(stor1.field_0) == msg.sender:
        require uint8(stor1.field_160)
        uint8(stor1.field_160) = 0
}

function transferOwnership(address arg1) {
    if address(stor1.field_0) == msg.sender:
        if arg1:
            address(stor1.field_0) = arg1
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

function receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4, bytes arg5) {
    require block.timestamp >= endBlock
    require rLCSentToETH + rLCSentToBTC <= minCap
    require rlcAddress == msg.sender
    require not arg4.length
    require not arg5.length
    require arg2 == backers[address(arg1)].field_1024
    require ext_code.size(rlcAddress)
    call rlcAddress.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 50 wei
        args address(arg1), address(this.address), arg2
    require ext_call.success
    require ext_call.return_data[0]
    backers[address(arg1)].field_0 = 0
    backers[address(arg1)].field_512 = 0
    if backers[address(arg1)].field_0 > 0:
        payments[address(arg1)] += backers[address(arg1)].field_0
    if backers[address(arg1)].field_512 > 0:
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 256] = backers[address(arg1)][1].field_0
        idx = ceil32(arg4.length) + ceil32(arg5.length) + 256
        s = 0
        while ceil32(arg4.length) + ceil32(arg5.length) + backers[address(arg1)][1].length + 256 > idx + 32:
            mem[idx + 32] = backers[address(arg1)][s + 1].field_256
            idx = idx + 32
            s = s + 1
            continue 
        emit RefundBTC(Array(len=backers[address(arg1)][1].length, data=mem[ceil32(arg4.length) + ceil32(arg5.length) + 256 len backers[address(arg1)][1].length + (floor32(backers[address(arg1)][1].length - 1) + -backers[address(arg1)][1].length + 32 % 32)]), backers[address(arg1)].field_512);
}

function finalize() {
    require owner == msg.sender
    if rLCSentToETH + rLCSentToBTC < maxCap - 10^11:
        require block.timestamp >= endBlock
    if rLCSentToETH + rLCSentToBTC < minCap:
        require block.timestamp >= endBlock + 900
    call multisigETHAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require ext_code.size(rlcAddress)
    if rlc_reserve <= 6 * 10^15:
        call rlcAddress.0xa9059cbb with:
             gas gas_remaining - 50 wei
            args reserveAddress, rlc_reserve
        require ext_call.success
        require ext_call.return_data[0]
    else:
        call rlcAddress.0xa9059cbb with:
             gas gas_remaining - 50 wei
            args reserveAddress, 6 * 10^15
        require ext_call.success
        require ext_call.return_data[0]
        rlc_reserve = 6 * 10^15
    require ext_code.size(rlcAddress)
    if rlc_bounty <= 6 * 10^15:
        call rlcAddress.0xa9059cbb with:
             gas gas_remaining - 50 wei
            args stor19, rlc_bounty
        require ext_call.success
        require ext_call.return_data[0]
    else:
        call rlcAddress.0xa9059cbb with:
             gas gas_remaining - 50 wei
            args stor19, 6 * 10^15
        require ext_call.success
        require ext_call.return_data[0]
        rlc_bounty = 6 * 10^15
    require ext_code.size(rlcAddress)
    call rlcAddress.0xa9059cbb with:
         gas gas_remaining - 50 wei
        args teamAddress, rlc_team
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(rlcAddress)
    call rlcAddress.0x18160ddd with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(rlcAddress)
    if rlc_reserve + rlc_bounty + rlc_team + rLCSentToBTC + rLCSentToETH < ext_call.return_data[0]:
        call rlcAddress.0x18160ddd with:
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
    require not uint8(stor1.field_160)
    require block.timestamp >= startBlock
    require block.timestamp <= endBlock
    require not uint8(stor1.field_160)
    require block.timestamp >= startBlock
    require block.timestamp <= endBlock
    require msg.value >= minInvestETH
    if msg.value:
        require rLCPerETH * msg.value / msg.value == rLCPerETH
    require startBlock + (240 * 24 * 3600) >= startBlock
    require startBlock + (240 * 24 * 3600) >= 240 * 24 * 3600
    if block.timestamp < startBlock + (240 * 24 * 3600):
        require (rLCPerETH * msg.value / 10^18 / 5) + (rLCPerETH * msg.value / 10^18) >= rLCPerETH * msg.value / 10^18
        require (rLCPerETH * msg.value / 10^18 / 5) + (rLCPerETH * msg.value / 10^18) >= rLCPerETH * msg.value / 10^18 / 5
        require rLCSentToBTC + rLCSentToETH >= rLCSentToETH
        require rLCSentToBTC + rLCSentToETH >= rLCSentToBTC
        require rLCSentToBTC + rLCSentToETH >= 0
        require (rLCPerETH * msg.value / 10^18 / 5) + (rLCPerETH * msg.value / 10^18) >= 0
        require rLCSentToBTC + rLCSentToETH + (rLCPerETH * msg.value / 10^18 / 5) + (rLCPerETH * msg.value / 10^18) <= maxCap
        require ext_code.size(rlcAddress)
        call rlcAddress.0xa9059cbb with:
             gas gas_remaining - 50 wei
            args msg.sender, (rLCPerETH * msg.value / 10^18 / 5) + (rLCPerETH * msg.value / 10^18)
        require ext_call.success
        require ext_call.return_data[0]
        require (rLCPerETH * msg.value / 10^18 / 5) + (rLCPerETH * msg.value / 10^18) + backers[address(msg.sender)].field_1024 >= backers[address(msg.sender)].field_1024
        require backers[address(msg.sender)].field_1024 >= 0
        backers[address(msg.sender)].field_1024 = (rLCPerETH * msg.value / 10^18 / 5) + (rLCPerETH * msg.value / 10^18) + backers[address(msg.sender)].field_1024
        require msg.value + backers[address(msg.sender)].field_0 >= backers[address(msg.sender)].field_0
        require msg.value + backers[address(msg.sender)].field_0 >= msg.value
        backers[address(msg.sender)].field_0 += msg.value
        require msg.value + eTHReceived >= eTHReceived
        require msg.value + eTHReceived >= msg.value
        eTHReceived += msg.value
        require (rLCPerETH * msg.value / 10^18 / 5) + (rLCPerETH * msg.value / 10^18) + rLCSentToETH >= rLCSentToETH
        require rLCSentToETH >= 0
        rLCSentToETH = (rLCPerETH * msg.value / 10^18 / 5) + (rLCPerETH * msg.value / 10^18) + rLCSentToETH
        require ((rLCPerETH * msg.value / 10^18 / 5) + (rLCPerETH * msg.value / 10^18) / 10) + rlc_bounty >= rlc_bounty
        require ((rLCPerETH * msg.value / 10^18 / 5) + (rLCPerETH * msg.value / 10^18) / 10) + rlc_bounty >= (rLCPerETH * msg.value / 10^18 / 5) + (rLCPerETH * msg.value / 10^18) / 10
        rlc_bounty += (rLCPerETH * msg.value / 10^18 / 5) + (rLCPerETH * msg.value / 10^18) / 10
        require ((rLCPerETH * msg.value / 10^18 / 5) + (rLCPerETH * msg.value / 10^18) / 20) + rlc_team >= rlc_team
        require ((rLCPerETH * msg.value / 10^18 / 5) + (rLCPerETH * msg.value / 10^18) / 20) + rlc_team >= (rLCPerETH * msg.value / 10^18 / 5) + (rLCPerETH * msg.value / 10^18) / 20
        rlc_team += (rLCPerETH * msg.value / 10^18 / 5) + (rLCPerETH * msg.value / 10^18) / 20
        require ((rLCPerETH * msg.value / 10^18 / 5) + (rLCPerETH * msg.value / 10^18) / 10) + rlc_reserve >= rlc_reserve
        require ((rLCPerETH * msg.value / 10^18 / 5) + (rLCPerETH * msg.value / 10^18) / 10) + rlc_reserve >= (rLCPerETH * msg.value / 10^18 / 5) + (rLCPerETH * msg.value / 10^18) / 10
        rlc_reserve += (rLCPerETH * msg.value / 10^18 / 5) + (rLCPerETH * msg.value / 10^18) / 10
        emit Logs((rLCPerETH * msg.value / 10^18 / 5) + (rLCPerETH * msg.value / 10^18), Array(len=7, data='emitRLC'), msg.sender);
    else:
        require startBlock + (480 * 24 * 3600) >= startBlock
        require startBlock + (480 * 24 * 3600) >= 480 * 24 * 3600
        if block.timestamp >= startBlock + (480 * 24 * 3600):
            require rLCSentToBTC + rLCSentToETH >= rLCSentToETH
            require rLCSentToBTC + rLCSentToETH >= rLCSentToBTC
            require rLCSentToBTC + rLCSentToETH + (rLCPerETH * msg.value / 10^18) >= rLCPerETH * msg.value / 10^18
            require rLCPerETH * msg.value / 10^18 >= 0
            require rLCSentToBTC + rLCSentToETH + (rLCPerETH * msg.value / 10^18) <= maxCap
            require ext_code.size(rlcAddress)
            call rlcAddress.0xa9059cbb with:
                 gas gas_remaining - 50 wei
                args msg.sender, rLCPerETH * msg.value / 10^18
            require ext_call.success
            require ext_call.return_data[0]
            require (rLCPerETH * msg.value / 10^18) + backers[address(msg.sender)].field_1024 >= backers[address(msg.sender)].field_1024
            require (rLCPerETH * msg.value / 10^18) + backers[address(msg.sender)].field_1024 >= rLCPerETH * msg.value / 10^18
            backers[address(msg.sender)].field_1024 += rLCPerETH * msg.value / 10^18
            require msg.value + backers[address(msg.sender)].field_0 >= backers[address(msg.sender)].field_0
            require msg.value + backers[address(msg.sender)].field_0 >= msg.value
            backers[address(msg.sender)].field_0 += msg.value
            require msg.value + eTHReceived >= eTHReceived
            require msg.value + eTHReceived >= msg.value
            eTHReceived += msg.value
            require (rLCPerETH * msg.value / 10^18) + rLCSentToETH >= rLCSentToETH
            require (rLCPerETH * msg.value / 10^18) + rLCSentToETH >= rLCPerETH * msg.value / 10^18
            rLCSentToETH += rLCPerETH * msg.value / 10^18
            require (rLCPerETH * msg.value / 10^18 / 10) + rlc_bounty >= rlc_bounty
            require (rLCPerETH * msg.value / 10^18 / 10) + rlc_bounty >= rLCPerETH * msg.value / 10^18 / 10
            rlc_bounty += rLCPerETH * msg.value / 10^18 / 10
            require (rLCPerETH * msg.value / 10^18 / 20) + rlc_team >= rlc_team
            require (rLCPerETH * msg.value / 10^18 / 20) + rlc_team >= rLCPerETH * msg.value / 10^18 / 20
            rlc_team += rLCPerETH * msg.value / 10^18 / 20
            require (rLCPerETH * msg.value / 10^18 / 10) + rlc_reserve >= rlc_reserve
            require (rLCPerETH * msg.value / 10^18 / 10) + rlc_reserve >= rLCPerETH * msg.value / 10^18 / 10
            rlc_reserve += rLCPerETH * msg.value / 10^18 / 10
            emit Logs(rLCPerETH * msg.value / 10^18, Array(len=7, data='emitRLC'), msg.sender);
        else:
            require (rLCPerETH * msg.value / 10^18 / 10) + (rLCPerETH * msg.value / 10^18) >= rLCPerETH * msg.value / 10^18
            require (rLCPerETH * msg.value / 10^18 / 10) + (rLCPerETH * msg.value / 10^18) >= rLCPerETH * msg.value / 10^18 / 10
            require rLCSentToBTC + rLCSentToETH >= rLCSentToETH
            require rLCSentToBTC + rLCSentToETH >= rLCSentToBTC
            require rLCSentToBTC + rLCSentToETH >= 0
            require (rLCPerETH * msg.value / 10^18 / 10) + (rLCPerETH * msg.value / 10^18) >= 0
            require rLCSentToBTC + rLCSentToETH + (rLCPerETH * msg.value / 10^18 / 10) + (rLCPerETH * msg.value / 10^18) <= maxCap
            require ext_code.size(rlcAddress)
            call rlcAddress.0xa9059cbb with:
                 gas gas_remaining - 50 wei
                args msg.sender, (rLCPerETH * msg.value / 10^18 / 10) + (rLCPerETH * msg.value / 10^18)
            require ext_call.success
            require ext_call.return_data[0]
            require (rLCPerETH * msg.value / 10^18 / 10) + (rLCPerETH * msg.value / 10^18) + backers[address(msg.sender)].field_1024 >= backers[address(msg.sender)].field_1024
            require backers[address(msg.sender)].field_1024 >= 0
            backers[address(msg.sender)].field_1024 = (rLCPerETH * msg.value / 10^18 / 10) + (rLCPerETH * msg.value / 10^18) + backers[address(msg.sender)].field_1024
            require msg.value + backers[address(msg.sender)].field_0 >= backers[address(msg.sender)].field_0
            require msg.value + backers[address(msg.sender)].field_0 >= msg.value
            backers[address(msg.sender)].field_0 += msg.value
            require msg.value + eTHReceived >= eTHReceived
            require msg.value + eTHReceived >= msg.value
            eTHReceived += msg.value
            require (rLCPerETH * msg.value / 10^18 / 10) + (rLCPerETH * msg.value / 10^18) + rLCSentToETH >= rLCSentToETH
            require rLCSentToETH >= 0
            rLCSentToETH = (rLCPerETH * msg.value / 10^18 / 10) + (rLCPerETH * msg.value / 10^18) + rLCSentToETH
            require ((rLCPerETH * msg.value / 10^18 / 10) + (rLCPerETH * msg.value / 10^18) / 10) + rlc_bounty >= rlc_bounty
            require ((rLCPerETH * msg.value / 10^18 / 10) + (rLCPerETH * msg.value / 10^18) / 10) + rlc_bounty >= (rLCPerETH * msg.value / 10^18 / 10) + (rLCPerETH * msg.value / 10^18) / 10
            rlc_bounty += (rLCPerETH * msg.value / 10^18 / 10) + (rLCPerETH * msg.value / 10^18) / 10
            require ((rLCPerETH * msg.value / 10^18 / 10) + (rLCPerETH * msg.value / 10^18) / 20) + rlc_team >= rlc_team
            require ((rLCPerETH * msg.value / 10^18 / 10) + (rLCPerETH * msg.value / 10^18) / 20) + rlc_team >= (rLCPerETH * msg.value / 10^18 / 10) + (rLCPerETH * msg.value / 10^18) / 20
            rlc_team += (rLCPerETH * msg.value / 10^18 / 10) + (rLCPerETH * msg.value / 10^18) / 20
            require ((rLCPerETH * msg.value / 10^18 / 10) + (rLCPerETH * msg.value / 10^18) / 10) + rlc_reserve >= rlc_reserve
            require ((rLCPerETH * msg.value / 10^18 / 10) + (rLCPerETH * msg.value / 10^18) / 10) + rlc_reserve >= (rLCPerETH * msg.value / 10^18 / 10) + (rLCPerETH * msg.value / 10^18) / 10
            rlc_reserve += (rLCPerETH * msg.value / 10^18 / 10) + (rLCPerETH * msg.value / 10^18) / 10
            emit Logs((rLCPerETH * msg.value / 10^18 / 10) + (rLCPerETH * msg.value / 10^18), Array(len=7, data='emitRLC'), msg.sender);
    emit ReceivedETH(msg.sender, eTHReceived);
}

function receiveBTC(address arg1, string arg2, uint256 arg3, string arg4) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg4.length
    mem[ceil32(arg2.length) + 160 len arg4.length] = arg4[all]
    require not uint8(stor1.field_160)
    require block.timestamp >= startBlock
    require block.timestamp <= endBlock
    require bTCproxyAddress == msg.sender
    require arg3 >= minInvestBTC
    if arg3:
        require rLCPerSATOSHI * arg3 / arg3 == rLCPerSATOSHI
    require startBlock + (240 * 24 * 3600) >= startBlock
    require startBlock + (240 * 24 * 3600) >= 240 * 24 * 3600
    if block.timestamp < startBlock + (240 * 24 * 3600):
        require (rLCPerSATOSHI * arg3 / 5) + (rLCPerSATOSHI * arg3) >= rLCPerSATOSHI * arg3
        require (rLCPerSATOSHI * arg3 / 5) + (rLCPerSATOSHI * arg3) >= rLCPerSATOSHI * arg3 / 5
        require rLCSentToBTC + rLCSentToETH >= rLCSentToETH
        require rLCSentToBTC + rLCSentToETH >= rLCSentToBTC
        require rLCSentToBTC + rLCSentToETH >= 0
        require (rLCPerSATOSHI * arg3 / 5) + (rLCPerSATOSHI * arg3) >= 0
        if rLCSentToBTC + rLCSentToETH + (rLCPerSATOSHI * arg3 / 5) + (rLCPerSATOSHI * arg3) > maxCap:
            mem[ceil32(arg2.length) + ceil32(arg4.length) + 192] = arg3
            mem[ceil32(arg2.length) + ceil32(arg4.length) + 160] = 64
            mem[ceil32(arg2.length) + ceil32(arg4.length) + 224] = arg2.length
            if arg2.length:
                mem[ceil32(arg2.length) + ceil32(arg4.length) + 256] = mem[128]
                mem[ceil32(arg2.length) + ceil32(arg4.length) + 288 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
            emit RefundBTC(Array(len=arg2.length, data=mem[ceil32(arg2.length) + ceil32(arg4.length) + 256 len arg2.length]), arg3);
            return 0
        require ext_code.size(rlcAddress)
        call rlcAddress.0xa9059cbb with:
             gas gas_remaining - 50 wei
            args address(arg1), (rLCPerSATOSHI * arg3 / 5) + (rLCPerSATOSHI * arg3)
        require ext_call.success
        require ext_call.return_data[0]
        require (rLCPerSATOSHI * arg3 / 5) + (rLCPerSATOSHI * arg3) + backers[address(arg1)].field_1024 >= backers[address(arg1)].field_1024
        require backers[address(arg1)].field_1024 >= 0
        backers[address(arg1)].field_1024 = (rLCPerSATOSHI * arg3 / 5) + (rLCPerSATOSHI * arg3) + backers[address(arg1)].field_1024
        backers[address(arg1)][1][].field_0 = Array(len=arg2.length, data=arg2[all])
        require arg3 + backers[address(arg1)].field_512 >= backers[address(arg1)].field_512
        require arg3 + backers[address(arg1)].field_512 >= arg3
        backers[address(arg1)].field_512 += arg3
        require arg3 + bTCReceived >= bTCReceived
        require arg3 + bTCReceived >= arg3
        bTCReceived += arg3
        require (rLCPerSATOSHI * arg3 / 5) + (rLCPerSATOSHI * arg3) + rLCSentToBTC >= rLCSentToBTC
        require rLCSentToBTC >= 0
        rLCSentToBTC = (rLCPerSATOSHI * arg3 / 5) + (rLCPerSATOSHI * arg3) + rLCSentToBTC
        require ((rLCPerSATOSHI * arg3 / 5) + (rLCPerSATOSHI * arg3) / 10) + rlc_bounty >= rlc_bounty
        require ((rLCPerSATOSHI * arg3 / 5) + (rLCPerSATOSHI * arg3) / 10) + rlc_bounty >= (rLCPerSATOSHI * arg3 / 5) + (rLCPerSATOSHI * arg3) / 10
        rlc_bounty += (rLCPerSATOSHI * arg3 / 5) + (rLCPerSATOSHI * arg3) / 10
        require ((rLCPerSATOSHI * arg3 / 5) + (rLCPerSATOSHI * arg3) / 20) + rlc_team >= rlc_team
        require ((rLCPerSATOSHI * arg3 / 5) + (rLCPerSATOSHI * arg3) / 20) + rlc_team >= (rLCPerSATOSHI * arg3 / 5) + (rLCPerSATOSHI * arg3) / 20
        rlc_team += (rLCPerSATOSHI * arg3 / 5) + (rLCPerSATOSHI * arg3) / 20
        require ((rLCPerSATOSHI * arg3 / 5) + (rLCPerSATOSHI * arg3) / 10) + rlc_reserve >= rlc_reserve
        require ((rLCPerSATOSHI * arg3 / 5) + (rLCPerSATOSHI * arg3) / 10) + rlc_reserve >= (rLCPerSATOSHI * arg3 / 5) + (rLCPerSATOSHI * arg3) / 10
        rlc_reserve += (rLCPerSATOSHI * arg3 / 5) + (rLCPerSATOSHI * arg3) / 10
        mem[ceil32(arg2.length) + ceil32(arg4.length) + 256] = 'emitRLC'
        emit Logs((rLCPerSATOSHI * arg3 / 5) + (rLCPerSATOSHI * arg3), Array(len=7, data='emitRLC'), msg.sender);
        mem[ceil32(arg2.length) + ceil32(arg4.length) + 160] = arg1
        mem[ceil32(arg2.length) + ceil32(arg4.length) + 224] = (rLCPerSATOSHI * arg3 / 5) + (rLCPerSATOSHI * arg3)
        mem[ceil32(arg2.length) + ceil32(arg4.length) + 192] = 128
        mem[ceil32(arg2.length) + ceil32(arg4.length) + 288] = arg2.length
        if not arg2.length:
            mem[ceil32(arg2.length) + ceil32(arg4.length) + 256] = arg2.length + 160
            mem[arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + 320] = arg4.length
            if not arg4.length:
                if not arg4.length % 32:
                    emit ReceivedBTC(address(arg1), Array(len=arg2.length, data=mem[ceil32(arg2.length) + ceil32(arg4.length) + 320 len arg4.length + arg2.length + 32]), (rLCPerSATOSHI * arg3 / 5) + (rLCPerSATOSHI * arg3), arg2.length + 160);
                else:
                    mem[floor32(arg4.length) + arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + 352] = mem[floor32(arg4.length) + arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + -(arg4.length % 32) + 384 len arg4.length % 32]
                    emit ReceivedBTC(address(arg1), Array(len=arg2.length, data=mem[ceil32(arg2.length) + ceil32(arg4.length) + 320 len floor32(arg4.length) + arg2.length + 64]), (rLCPerSATOSHI * arg3 / 5) + (rLCPerSATOSHI * arg3), arg2.length + 160);
            else:
                mem[arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + 352] = mem[ceil32(arg2.length) + 160]
                mem[arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + 384 len floor32(arg4.length - 1)] = mem[ceil32(arg2.length) + 192 len floor32(arg4.length - 1)]
                if not arg4.length % 32:
                    emit ReceivedBTC(address(arg1), Array(len=arg2.length, data=mem[ceil32(arg2.length) + ceil32(arg4.length) + 320 len arg4.length + arg2.length + 32]), (rLCPerSATOSHI * arg3 / 5) + (rLCPerSATOSHI * arg3), arg2.length + 160);
                else:
                    mem[floor32(arg4.length) + arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + 352] = mem[floor32(arg4.length) + arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + -(arg4.length % 32) + 384 len arg4.length % 32]
                    emit ReceivedBTC(address(arg1), Array(len=arg2.length, data=mem[ceil32(arg2.length) + ceil32(arg4.length) + 320 len arg2.length + 32], mem[ceil32(arg2.length) + 160], mem[ceil32(arg2.length) + ceil32(arg4.length) + arg2.length + 384 len floor32(arg4.length)]), (rLCPerSATOSHI * arg3 / 5) + (rLCPerSATOSHI * arg3), arg2.length + 160);
        else:
            mem[ceil32(arg2.length) + ceil32(arg4.length) + 320] = mem[128]
            mem[ceil32(arg2.length) + ceil32(arg4.length) + 352 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
            mem[ceil32(arg2.length) + ceil32(arg4.length) + 256] = arg2.length + 160
            mem[arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + 320] = arg4.length
            if arg4.length:
                mem[arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + 352] = mem[ceil32(arg2.length) + 160]
                mem[arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + 384 len floor32(arg4.length - 1)] = mem[ceil32(arg2.length) + 192 len floor32(arg4.length - 1)]
            if not arg4.length % 32:
                emit ReceivedBTC(address(arg1), Array(len=arg2.length, data=mem[128], mem[ceil32(arg2.length) + ceil32(arg4.length) + 352 len arg4.length + arg2.length]), (rLCPerSATOSHI * arg3 / 5) + (rLCPerSATOSHI * arg3), arg2.length + 160);
            else:
                mem[floor32(arg4.length) + arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + 352] = mem[floor32(arg4.length) + arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + -(arg4.length % 32) + 384 len arg4.length % 32]
                emit ReceivedBTC(address(arg1), Array(len=arg2.length, data=mem[128], mem[ceil32(arg2.length) + ceil32(arg4.length) + 352 len floor32(arg4.length) + arg2.length + 32]), (rLCPerSATOSHI * arg3 / 5) + (rLCPerSATOSHI * arg3), arg2.length + 160);
    else:
        require startBlock + (480 * 24 * 3600) >= startBlock
        require startBlock + (480 * 24 * 3600) >= 480 * 24 * 3600
        if block.timestamp >= startBlock + (480 * 24 * 3600):
            require rLCSentToBTC + rLCSentToETH >= rLCSentToETH
            require rLCSentToBTC + rLCSentToETH >= rLCSentToBTC
            require rLCSentToBTC + rLCSentToETH + (rLCPerSATOSHI * arg3) >= rLCPerSATOSHI * arg3
            require rLCPerSATOSHI * arg3 >= 0
            if rLCSentToBTC + rLCSentToETH + (rLCPerSATOSHI * arg3) > maxCap:
                mem[ceil32(arg2.length) + ceil32(arg4.length) + 192] = arg3
                mem[ceil32(arg2.length) + ceil32(arg4.length) + 160] = 64
                mem[ceil32(arg2.length) + ceil32(arg4.length) + 224] = arg2.length
                if arg2.length:
                    mem[ceil32(arg2.length) + ceil32(arg4.length) + 256] = mem[128]
                    mem[ceil32(arg2.length) + ceil32(arg4.length) + 288 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
                emit RefundBTC(Array(len=arg2.length, data=mem[ceil32(arg2.length) + ceil32(arg4.length) + 256 len arg2.length]), arg3);
                return 0
            require ext_code.size(rlcAddress)
            call rlcAddress.0xa9059cbb with:
                 gas gas_remaining - 50 wei
                args address(arg1), rLCPerSATOSHI * arg3
            require ext_call.success
            require ext_call.return_data[0]
            require (rLCPerSATOSHI * arg3) + backers[address(arg1)].field_1024 >= backers[address(arg1)].field_1024
            require (rLCPerSATOSHI * arg3) + backers[address(arg1)].field_1024 >= rLCPerSATOSHI * arg3
            backers[address(arg1)].field_1024 += rLCPerSATOSHI * arg3
            backers[address(arg1)][1][].field_0 = Array(len=arg2.length, data=arg2[all])
            require arg3 + backers[address(arg1)].field_512 >= backers[address(arg1)].field_512
            require arg3 + backers[address(arg1)].field_512 >= arg3
            backers[address(arg1)].field_512 += arg3
            require arg3 + bTCReceived >= bTCReceived
            require arg3 + bTCReceived >= arg3
            bTCReceived += arg3
            require (rLCPerSATOSHI * arg3) + rLCSentToBTC >= rLCSentToBTC
            require (rLCPerSATOSHI * arg3) + rLCSentToBTC >= rLCPerSATOSHI * arg3
            rLCSentToBTC += rLCPerSATOSHI * arg3
            require (rLCPerSATOSHI * arg3 / 10) + rlc_bounty >= rlc_bounty
            require (rLCPerSATOSHI * arg3 / 10) + rlc_bounty >= rLCPerSATOSHI * arg3 / 10
            rlc_bounty += rLCPerSATOSHI * arg3 / 10
            require (rLCPerSATOSHI * arg3 / 20) + rlc_team >= rlc_team
            require (rLCPerSATOSHI * arg3 / 20) + rlc_team >= rLCPerSATOSHI * arg3 / 20
            rlc_team += rLCPerSATOSHI * arg3 / 20
            require (rLCPerSATOSHI * arg3 / 10) + rlc_reserve >= rlc_reserve
            require (rLCPerSATOSHI * arg3 / 10) + rlc_reserve >= rLCPerSATOSHI * arg3 / 10
            rlc_reserve += rLCPerSATOSHI * arg3 / 10
            mem[ceil32(arg2.length) + ceil32(arg4.length) + 256] = 'emitRLC'
            emit Logs(rLCPerSATOSHI * arg3, Array(len=7, data='emitRLC'), msg.sender);
            mem[ceil32(arg2.length) + ceil32(arg4.length) + 160] = arg1
            mem[ceil32(arg2.length) + ceil32(arg4.length) + 224] = rLCPerSATOSHI * arg3
            mem[ceil32(arg2.length) + ceil32(arg4.length) + 192] = 128
            mem[ceil32(arg2.length) + ceil32(arg4.length) + 288] = arg2.length
            if not arg2.length:
                mem[ceil32(arg2.length) + ceil32(arg4.length) + 256] = arg2.length + 160
                mem[arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + 320] = arg4.length
                if not arg4.length:
                    if not arg4.length % 32:
                        emit ReceivedBTC(address(arg1), Array(len=arg2.length, data=mem[ceil32(arg2.length) + ceil32(arg4.length) + 320 len arg4.length + arg2.length + 32]), rLCPerSATOSHI * arg3, arg2.length + 160);
                    else:
                        mem[floor32(arg4.length) + arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + 352] = mem[floor32(arg4.length) + arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + -(arg4.length % 32) + 384 len arg4.length % 32]
                        emit ReceivedBTC(address(arg1), Array(len=arg2.length, data=mem[ceil32(arg2.length) + ceil32(arg4.length) + 320 len floor32(arg4.length) + arg2.length + 64]), rLCPerSATOSHI * arg3, arg2.length + 160);
                else:
                    mem[arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + 352] = mem[ceil32(arg2.length) + 160]
                    mem[arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + 384 len floor32(arg4.length - 1)] = mem[ceil32(arg2.length) + 192 len floor32(arg4.length - 1)]
                    if not arg4.length % 32:
                        emit ReceivedBTC(address(arg1), Array(len=arg2.length, data=mem[ceil32(arg2.length) + ceil32(arg4.length) + 320 len arg4.length + arg2.length + 32]), rLCPerSATOSHI * arg3, arg2.length + 160);
                    else:
                        mem[floor32(arg4.length) + arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + 352] = mem[floor32(arg4.length) + arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + -(arg4.length % 32) + 384 len arg4.length % 32]
                        emit ReceivedBTC(address(arg1), Array(len=arg2.length, data=mem[ceil32(arg2.length) + ceil32(arg4.length) + 320 len arg2.length + 32], mem[ceil32(arg2.length) + 160], mem[ceil32(arg2.length) + ceil32(arg4.length) + arg2.length + 384 len floor32(arg4.length)]), rLCPerSATOSHI * arg3, arg2.length + 160);
            else:
                mem[ceil32(arg2.length) + ceil32(arg4.length) + 320] = mem[128]
                mem[ceil32(arg2.length) + ceil32(arg4.length) + 352 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
                mem[ceil32(arg2.length) + ceil32(arg4.length) + 256] = arg2.length + 160
                mem[arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + 320] = arg4.length
                if arg4.length:
                    mem[arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + 352] = mem[ceil32(arg2.length) + 160]
                    mem[arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + 384 len floor32(arg4.length - 1)] = mem[ceil32(arg2.length) + 192 len floor32(arg4.length - 1)]
                if not arg4.length % 32:
                    emit ReceivedBTC(address(arg1), Array(len=arg2.length, data=mem[128], mem[ceil32(arg2.length) + ceil32(arg4.length) + 352 len arg4.length + arg2.length]), rLCPerSATOSHI * arg3, arg2.length + 160);
                else:
                    mem[floor32(arg4.length) + arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + 352] = mem[floor32(arg4.length) + arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + -(arg4.length % 32) + 384 len arg4.length % 32]
                    emit ReceivedBTC(address(arg1), Array(len=arg2.length, data=mem[128], mem[ceil32(arg2.length) + ceil32(arg4.length) + 352 len floor32(arg4.length) + arg2.length + 32]), rLCPerSATOSHI * arg3, arg2.length + 160);
        else:
            require (rLCPerSATOSHI * arg3 / 10) + (rLCPerSATOSHI * arg3) >= rLCPerSATOSHI * arg3
            require (rLCPerSATOSHI * arg3 / 10) + (rLCPerSATOSHI * arg3) >= rLCPerSATOSHI * arg3 / 10
            require rLCSentToBTC + rLCSentToETH >= rLCSentToETH
            require rLCSentToBTC + rLCSentToETH >= rLCSentToBTC
            require rLCSentToBTC + rLCSentToETH >= 0
            require (rLCPerSATOSHI * arg3 / 10) + (rLCPerSATOSHI * arg3) >= 0
            if rLCSentToBTC + rLCSentToETH + (rLCPerSATOSHI * arg3 / 10) + (rLCPerSATOSHI * arg3) > maxCap:
                mem[ceil32(arg2.length) + ceil32(arg4.length) + 192] = arg3
                mem[ceil32(arg2.length) + ceil32(arg4.length) + 160] = 64
                mem[ceil32(arg2.length) + ceil32(arg4.length) + 224] = arg2.length
                if arg2.length:
                    mem[ceil32(arg2.length) + ceil32(arg4.length) + 256] = mem[128]
                    mem[ceil32(arg2.length) + ceil32(arg4.length) + 288 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
                emit RefundBTC(Array(len=arg2.length, data=mem[ceil32(arg2.length) + ceil32(arg4.length) + 256 len arg2.length]), arg3);
                return 0
            require ext_code.size(rlcAddress)
            call rlcAddress.0xa9059cbb with:
                 gas gas_remaining - 50 wei
                args address(arg1), (rLCPerSATOSHI * arg3 / 10) + (rLCPerSATOSHI * arg3)
            require ext_call.success
            require ext_call.return_data[0]
            require (rLCPerSATOSHI * arg3 / 10) + (rLCPerSATOSHI * arg3) + backers[address(arg1)].field_1024 >= backers[address(arg1)].field_1024
            require backers[address(arg1)].field_1024 >= 0
            backers[address(arg1)].field_1024 = (rLCPerSATOSHI * arg3 / 10) + (rLCPerSATOSHI * arg3) + backers[address(arg1)].field_1024
            backers[address(arg1)][1][].field_0 = Array(len=arg2.length, data=arg2[all])
            require arg3 + backers[address(arg1)].field_512 >= backers[address(arg1)].field_512
            require arg3 + backers[address(arg1)].field_512 >= arg3
            backers[address(arg1)].field_512 += arg3
            require arg3 + bTCReceived >= bTCReceived
            require arg3 + bTCReceived >= arg3
            bTCReceived += arg3
            require (rLCPerSATOSHI * arg3 / 10) + (rLCPerSATOSHI * arg3) + rLCSentToBTC >= rLCSentToBTC
            require rLCSentToBTC >= 0
            rLCSentToBTC = (rLCPerSATOSHI * arg3 / 10) + (rLCPerSATOSHI * arg3) + rLCSentToBTC
            require ((rLCPerSATOSHI * arg3 / 10) + (rLCPerSATOSHI * arg3) / 10) + rlc_bounty >= rlc_bounty
            require ((rLCPerSATOSHI * arg3 / 10) + (rLCPerSATOSHI * arg3) / 10) + rlc_bounty >= (rLCPerSATOSHI * arg3 / 10) + (rLCPerSATOSHI * arg3) / 10
            rlc_bounty += (rLCPerSATOSHI * arg3 / 10) + (rLCPerSATOSHI * arg3) / 10
            require ((rLCPerSATOSHI * arg3 / 10) + (rLCPerSATOSHI * arg3) / 20) + rlc_team >= rlc_team
            require ((rLCPerSATOSHI * arg3 / 10) + (rLCPerSATOSHI * arg3) / 20) + rlc_team >= (rLCPerSATOSHI * arg3 / 10) + (rLCPerSATOSHI * arg3) / 20
            rlc_team += (rLCPerSATOSHI * arg3 / 10) + (rLCPerSATOSHI * arg3) / 20
            require ((rLCPerSATOSHI * arg3 / 10) + (rLCPerSATOSHI * arg3) / 10) + rlc_reserve >= rlc_reserve
            require ((rLCPerSATOSHI * arg3 / 10) + (rLCPerSATOSHI * arg3) / 10) + rlc_reserve >= (rLCPerSATOSHI * arg3 / 10) + (rLCPerSATOSHI * arg3) / 10
            rlc_reserve += (rLCPerSATOSHI * arg3 / 10) + (rLCPerSATOSHI * arg3) / 10
            mem[ceil32(arg2.length) + ceil32(arg4.length) + 256] = 'emitRLC'
            emit Logs((rLCPerSATOSHI * arg3 / 10) + (rLCPerSATOSHI * arg3), Array(len=7, data='emitRLC'), msg.sender);
            mem[ceil32(arg2.length) + ceil32(arg4.length) + 160] = arg1
            mem[ceil32(arg2.length) + ceil32(arg4.length) + 224] = (rLCPerSATOSHI * arg3 / 10) + (rLCPerSATOSHI * arg3)
            mem[ceil32(arg2.length) + ceil32(arg4.length) + 192] = 128
            mem[ceil32(arg2.length) + ceil32(arg4.length) + 288] = arg2.length
            if not arg2.length:
                mem[ceil32(arg2.length) + ceil32(arg4.length) + 256] = arg2.length + 160
                mem[arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + 320] = arg4.length
                if not arg4.length:
                    if not arg4.length % 32:
                        emit ReceivedBTC(address(arg1), Array(len=arg2.length, data=mem[ceil32(arg2.length) + ceil32(arg4.length) + 320 len arg4.length + arg2.length + 32]), (rLCPerSATOSHI * arg3 / 10) + (rLCPerSATOSHI * arg3), arg2.length + 160);
                    else:
                        mem[floor32(arg4.length) + arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + 352] = mem[floor32(arg4.length) + arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + -(arg4.length % 32) + 384 len arg4.length % 32]
                        emit ReceivedBTC(address(arg1), Array(len=arg2.length, data=mem[ceil32(arg2.length) + ceil32(arg4.length) + 320 len floor32(arg4.length) + arg2.length + 64]), (rLCPerSATOSHI * arg3 / 10) + (rLCPerSATOSHI * arg3), arg2.length + 160);
                else:
                    mem[arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + 352] = mem[ceil32(arg2.length) + 160]
                    mem[arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + 384 len floor32(arg4.length - 1)] = mem[ceil32(arg2.length) + 192 len floor32(arg4.length - 1)]
                    if not arg4.length % 32:
                        emit ReceivedBTC(address(arg1), Array(len=arg2.length, data=mem[ceil32(arg2.length) + ceil32(arg4.length) + 320 len arg4.length + arg2.length + 32]), (rLCPerSATOSHI * arg3 / 10) + (rLCPerSATOSHI * arg3), arg2.length + 160);
                    else:
                        mem[floor32(arg4.length) + arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + 352] = mem[floor32(arg4.length) + arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + -(arg4.length % 32) + 384 len arg4.length % 32]
                        emit ReceivedBTC(address(arg1), Array(len=arg2.length, data=mem[ceil32(arg2.length) + ceil32(arg4.length) + 320 len arg2.length + 32], mem[ceil32(arg2.length) + 160], mem[ceil32(arg2.length) + ceil32(arg4.length) + arg2.length + 384 len floor32(arg4.length)]), (rLCPerSATOSHI * arg3 / 10) + (rLCPerSATOSHI * arg3), arg2.length + 160);
            else:
                mem[ceil32(arg2.length) + ceil32(arg4.length) + 320] = mem[128]
                mem[ceil32(arg2.length) + ceil32(arg4.length) + 352 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
                mem[ceil32(arg2.length) + ceil32(arg4.length) + 256] = arg2.length + 160
                mem[arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + 320] = arg4.length
                if arg4.length:
                    mem[arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + 352] = mem[ceil32(arg2.length) + 160]
                    mem[arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + 384 len floor32(arg4.length - 1)] = mem[ceil32(arg2.length) + 192 len floor32(arg4.length - 1)]
                if not arg4.length % 32:
                    emit ReceivedBTC(address(arg1), Array(len=arg2.length, data=mem[128], mem[ceil32(arg2.length) + ceil32(arg4.length) + 352 len arg4.length + arg2.length]), (rLCPerSATOSHI * arg3 / 10) + (rLCPerSATOSHI * arg3), arg2.length + 160);
                else:
                    mem[floor32(arg4.length) + arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + 352] = mem[floor32(arg4.length) + arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + -(arg4.length % 32) + 384 len arg4.length % 32]
                    emit ReceivedBTC(address(arg1), Array(len=arg2.length, data=mem[128], mem[ceil32(arg2.length) + ceil32(arg4.length) + 352 len floor32(arg4.length) + arg2.length + 32]), (rLCPerSATOSHI * arg3 / 10) + (rLCPerSATOSHI * arg3), arg2.length + 160);
    return 1
}



}
