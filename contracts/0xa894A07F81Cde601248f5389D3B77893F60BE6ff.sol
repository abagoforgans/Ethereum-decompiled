contract main {




// =====================  Runtime code  =====================


#
#  - sub_16abc099(?)
#  - sub_3f0ebdcd(?)
#  - sub_876d9940(?)
#  - acceptTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5)
#
address stor0;
uint8 status; offset 192
uint32 floorId; offset 160
address stor1;
uint8 stor2; offset 160
address winnerAddress;
uint256 timeout;
uint256 initialPrice;
uint256 auctionEndTime;
address lastBidderAddress;
uint256 stor7; offset 1
uint256 lastBid;
uint256 auctionStep;
uint256 sub_10348802;
uint256 sub_a1f92e0e;
uint8 stor11;
mapping of uint256 sub_773334fe;
mapping of uint256 sub_4e851095;
mapping of uint256 sub_73265b30;
uint256 stor15;
uint256 stor16;
array of struct stor17;
uint256 stor18;
address stor19;
uint256 stor20;
uint256 stor21;
array of struct stor22;
uint256 stor23;
bool stor24; offset 256
address stor24;
uint32 roundNumber;
uint256 sub_8fff682f;
uint256 roundStartTime;
uint256 sub_410c4cc2;
uint256 sub_34434b14;
uint8 crowdsaleStatus;
address tokenContractAddress; offset 8
uint256 sub_77adc674;
address sub_764cbaccAddress;
array of address stor97789825912453899259273410636466998099043528421815129078110847000656284369545;

function auctionStep() {
    return auctionStep
}

function sub_10348802(?) {
    return sub_10348802
}

function initialPrice() {
    return initialPrice
}

function status() {
    require status <= 2
    return status
}

function sub_34434b14(?) {
    return sub_34434b14
}

function sub_410c4cc2(?) {
    return sub_410c4cc2
}

function auctionEndTime() {
    return auctionEndTime
}

function roundNumber() {
    return roundNumber
}

function sub_4e851095(?) {
    return sub_4e851095[arg1][arg2]
}

function tokenContract() {
    return tokenContractAddress
}

function sub_5acdc459(?) {
    return sub_4e851095[stor25 - 1 << 224][address(arg1)]
}

function paused() {
    return bool(stor11)
}

function lastBid() {
    return lastBid
}

function timeout() {
    return timeout
}

function sub_73265b30(?) {
    return sub_73265b30[arg1][arg2]
}

function sub_764cbacc(?) {
    return sub_764cbaccAddress
}

function sub_773334fe(?) {
    return sub_773334fe[stor25 - 1 << 224][address(arg1)]
}

function sub_77adc674(?) {
    return sub_77adc674
}

function lastBidder() {
    return lastBidderAddress
}

function crowdsaleStatus() {
    require crowdsaleStatus <= 4
    return crowdsaleStatus
}

function sub_8fff682f(?) {
    return sub_8fff682f
}

function sub_9c404ee3(?) {
    return stor17.length
}

function sub_a1f92e0e(?) {
    return sub_a1f92e0e
}

function sub_c392ca56(?) {
    return bool(stor2)
}

function floorId() {
    return floorId
}

function sub_d200bb42(?) {
    return sub_773334fe[arg1][arg2]
}

function sub_d72c2daf(?) {
    return sub_4e851095[stor25 - 1 << 224][address(arg1)]
}

function sub_d75c7c80(?) {
    return sub_773334fe[stor25][address(arg1)]
}

function roundStartTime() {
    return roundStartTime
}

function winner() {
    return winnerAddress
}

function sub_e8b51a14(?) {
    return stor22.length
}

function credit() payable {
  stop
}

function _fallback() payable {
    revert
}

function sub_a15d575b(?) payable {
    revert
}

function sub_b288e1a9(?) {
    return stor15, stor16, stor18, stor19
}

function currentRound() {
    return stor20, stor21, stor23, address(stor24.field_0)
}

function sub_d52939a1(?) {
    if stor20:
        return not bool(stor20)
    return not bool(stor15)
}

function emergencyWithdraw() {
    require msg.sender == stor0
    stor2 = 1
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_11118bce(?) {
    if stor0 != msg.sender:
        require ext_code.size(stor1)
        call stor1.oracle() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require msg.sender == ext_call.return_data[12 len 20]
    sub_a1f92e0e = arg1
}

function sub_259364d1(?) {
    if stor0 != msg.sender:
        require ext_code.size(stor1)
        call stor1.oracle() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require msg.sender == ext_call.return_data[12 len 20]
    sub_8fff682f = arg1
}

function sub_44b433b9(?) {
    if stor0 != msg.sender:
        require ext_code.size(stor1)
        call stor1.oracle() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require msg.sender == ext_call.return_data[12 len 20]
    sub_410c4cc2 = arg1
}

function sub_5eb0dd93(?) {
    if stor0 != msg.sender:
        require ext_code.size(stor1)
        call stor1.oracle() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require msg.sender == ext_call.return_data[12 len 20]
    sub_10348802 = arg1
}

function sub_94b3fce6(?) {
    if stor0 != msg.sender:
        require ext_code.size(stor1)
        call stor1.oracle() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require msg.sender == ext_call.return_data[12 len 20]
    sub_34434b14 = arg1
}

function sub_b63fb8ce(?) {
    if stor0 != msg.sender:
        require ext_code.size(stor1)
        call stor1.oracle() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require msg.sender == ext_call.return_data[12 len 20]
    sub_77adc674 = arg1
}

function sub_ec4fa1ed(?) {
    if stor0 != msg.sender:
        require ext_code.size(stor1)
        call stor1.oracle() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require msg.sender == ext_call.return_data[12 len 20]
    roundStartTime = arg1
}

function auctionExpired() {
    require status <= 2
    if status != 1:
        return (status == 1)
    if not lastBidderAddress:
        return bool(lastBidderAddress)
    if not auctionEndTime:
        return bool(auctionEndTime)
    if auctionEndTime >= block.timestamp:
        return (auctionEndTime < block.timestamp)
    require crowdsaleStatus <= 4
    return (crowdsaleStatus == 1)
}

function setTimeout(uint256 arg1) {
    if stor0 != msg.sender:
        require ext_code.size(stor1)
        call stor1.oracle() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require msg.sender == ext_call.return_data[12 len 20]
    timeout = arg1
}

function setPaused(bool arg1) {
    if stor0 != msg.sender:
        require ext_code.size(stor1)
        call stor1.oracle() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require msg.sender == ext_call.return_data[12 len 20]
    stor11 = uint8(arg1)
}

function setAuctionStep(uint256 arg1) {
    if stor0 != msg.sender:
        require ext_code.size(stor1)
        call stor1.oracle() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require msg.sender == ext_call.return_data[12 len 20]
    auctionStep = arg1
}

function sub_d5f0d455(?) {
    require msg.sender == stor0
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    call stor1.0x42966c68 with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3a0b46f2(?) {
    require status <= 2
    require status == 1
    require crowdsaleStatus <= 4
    require crowdsaleStatus == 1
    require lastBidderAddress == msg.sender
    require status <= 2
    require status == 1
    require lastBidderAddress
    require auctionEndTime
    require auctionEndTime < block.timestamp
    require crowdsaleStatus <= 4
    require crowdsaleStatus == 1
    status = 2
    winnerAddress = lastBidderAddress
    emit FloorWon(sub_773334fe[stor25 - 1 << 224][stor6], lastBidderAddress);
    crowdsaleStatus = 3
}

function sub_bbcff451(?) {
    if arg1 < 10^17:
        if (arg1 / 2) + arg1 >= arg1:
            return ((arg1 / 2) + arg1)
    else:
        if arg1 < 10^18:
            if (arg1 / 5) + arg1 >= arg1:
                return ((arg1 / 5) + arg1)
        else:
            if not arg1:
                if arg1 >= arg1:
                    return arg1
            else:
                if auctionStep * arg1 / arg1 == auctionStep:
                    if (auctionStep * arg1 / 100) + arg1 >= arg1:
                        return ((auctionStep * arg1 / 100) + arg1)
    revert
}

function nextBid() {
    if 0 == lastBid:
        return initialPrice
    if lastBid < 10^17:
        if stor7 + lastBid >= lastBid:
            return (stor7 + lastBid)
    else:
        if lastBid < 10^18:
            if (lastBid / 5) + lastBid >= lastBid:
                return ((lastBid / 5) + lastBid)
        else:
            if not lastBid:
                if lastBid >= lastBid:
                    return lastBid
            else:
                if auctionStep * lastBid / lastBid == auctionStep:
                    if (auctionStep * lastBid / 100) + lastBid >= lastBid:
                        return ((auctionStep * lastBid / 100) + lastBid)
    revert
}

function sub_ccff3870(?) {
    if stor17.length:
        mem[128] = address(stor17.field_0)
        if (32 * stor17.length) + 32 > 64:
            mem[160] = address(stor17.field_256)
            idx = 160
            s = 1
            while (32 * stor17.length) + 96 > idx:
                mem[idx + 32] = stor17[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * stor17.length) + 128] = 32
    mem[(32 * stor17.length) + 160] = stor17.length
    mem[(32 * stor17.length) + 192 len floor32(stor17.length)] = mem[128 len floor32(stor17.length)]
    return memory
      from (32 * stor17.length) + 128
       len (96 * stor17.length) + 64
}

function sub_0fc9105d(?) {
    require ext_code.size(stor1)
    call stor1.oracle() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require status <= 2
    require status == 1
    require crowdsaleStatus <= 4
    require crowdsaleStatus == 1
    require lastBidderAddress == lastBidderAddress
    require status <= 2
    require status == 1
    require lastBidderAddress
    require auctionEndTime
    require auctionEndTime < block.timestamp
    require crowdsaleStatus <= 4
    require crowdsaleStatus == 1
    status = 2
    winnerAddress = lastBidderAddress
    emit FloorWon(sub_773334fe[stor25 - 1 << 224][stor6], lastBidderAddress);
    crowdsaleStatus = 3
}

function sub_c18d6135(?) {
    if not stor22.length:
        mem[(32 * stor22.length) + 128] = 32
        mem[(32 * stor22.length) + 160] = stor22.length
        mem[(32 * stor22.length) + 192 len floor32(stor22.length)] = mem[128 len floor32(stor22.length)]
        return memory
          from (32 * stor22.length) + 128
           len (96 * stor22.length) + 64
    mem[128] = address(stor22.field_0)
    idx = 128
    s = 0
    while (32 * stor22.length) + 96 > idx:
        mem[idx + 32] = stor22[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor22.length) + 192 len floor32(stor22.length)] = mem[128 len floor32(stor22.length)]
    return Array(len=stor22.length, data=mem[128 len floor32(stor22.length)], mem[(32 * stor22.length) + floor32(stor22.length) + 192 len (32 * stor22.length) - floor32(stor22.length)]), 
}

function sub_b317a9d8(?) {
    if stor0 != msg.sender:
        require ext_code.size(stor1)
        call stor1.oracle() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require msg.sender == ext_call.return_data[12 len 20]
    require status <= 2
    if status:
        require status <= 2
        require status == 2
    if not sub_773334fe[stor25][address(arg1)]:
        stor22.length++
        storD833[stor22.length] = arg1
    require arg2 + sub_773334fe[stor25][address(arg1)] >= sub_773334fe[stor25][address(arg1)]
    sub_773334fe[stor25][address(arg1)] += arg2
    require arg2 + stor20 >= stor20
    stor20 += arg2
    require arg3 + sub_4e851095[stor25][address(arg1)] >= sub_4e851095[stor25][address(arg1)]
    sub_4e851095[stor25][address(arg1)] += arg3
    require arg3 + stor21 >= stor21
    stor21 += arg3
}

function sub_9530c6c0(?) {
    require ext_code.size(stor1)
    call stor1.oracle() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require crowdsaleStatus <= 4
    require crowdsaleStatus == 2
    require not stor16
    stor15 = stor20
    stor16 = stor21
    stor17.length = stor22.length
    if not stor22.length:
        idx = 0
        while stor17.length > idx:
            stor17[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 0
        while stor22.length > idx:
            stor17[s].field_0 = stor22[idx].field_0
            s = s + 1
            idx = idx + 1
            continue 
        idx = stor22.length
        while stor17.length > idx:
            stor17[idx].field_0 = 0
            idx = idx + 1
            continue 
    stor18 = stor23
    stor19 = address(stor24.field_0)
    stor20 = 0
    stor21 = 0
    stor22.length = 0
    idx = 0
    while stor22.length > idx:
        stor22[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor23 = 0
    address(stor24.field_0) = 0
    stor24.field_256 % 1 = 0
    roundNumber = uint32(roundNumber + 1)
    crowdsaleStatus = 1
    roundStartTime = block.timestamp + sub_8fff682f
    auctionEndTime = timeout + block.timestamp + sub_8fff682f
}

function sub_74922339(?) {
    require ext_code.size(stor1)
    call stor1.oracle() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require crowdsaleStatus <= 4
    require crowdsaleStatus == 3
    require not stor20
    require not stor15
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(stor1)
        call stor1.0x42966c68 with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    stor15 = stor20
    stor16 = stor21
    stor17.length = stor22.length
    if not stor22.length:
        idx = 0
        while stor17.length > idx:
            stor17[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 0
        while stor22.length > idx:
            stor17[s].field_0 = stor22[idx].field_0
            s = s + 1
            idx = idx + 1
            continue 
        idx = stor22.length
        while stor17.length > idx:
            stor17[idx].field_0 = 0
            idx = idx + 1
            continue 
    stor18 = stor23
    stor19 = address(stor24.field_0)
    stor20 = 0
    stor21 = 0
    stor22.length = 0
    idx = 0
    while stor22.length > idx:
        stor22[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor23 = 0
    address(stor24.field_0) = 0
    stor24.field_256 % 1 = 0
    roundNumber = uint32(roundNumber + 1)
    crowdsaleStatus = 4
    status = 2
}

function sub_ea7ae8a1(?) {
    if 0 == lastBid:
        require stor20 <= initialPrice
        require sub_773334fe[stor25][address(arg1)] <= sub_410c4cc2
        if initialPrice - stor20 < sub_410c4cc2 - sub_773334fe[stor25][address(arg1)]:
            return (initialPrice - stor20)
    else:
        if lastBid < 10^17:
            require stor7 + lastBid >= lastBid
            require stor20 <= stor7 + lastBid
            require sub_773334fe[stor25][address(arg1)] <= sub_410c4cc2
            if stor7 + lastBid - stor20 < sub_410c4cc2 - sub_773334fe[stor25][address(arg1)]:
                return (stor7 + lastBid - stor20)
        else:
            if lastBid < 10^18:
                require (lastBid / 5) + lastBid >= lastBid
                require stor20 <= (lastBid / 5) + lastBid
                require sub_773334fe[stor25][address(arg1)] <= sub_410c4cc2
                if (lastBid / 5) + lastBid - stor20 < sub_410c4cc2 - sub_773334fe[stor25][address(arg1)]:
                    return ((lastBid / 5) + lastBid - stor20)
            else:
                if not lastBid:
                    require lastBid >= lastBid
                    require stor20 <= lastBid
                    require sub_773334fe[stor25][address(arg1)] <= sub_410c4cc2
                    if lastBid - stor20 < sub_410c4cc2 - sub_773334fe[stor25][address(arg1)]:
                        return (lastBid - stor20)
                else:
                    require auctionStep * lastBid / lastBid == auctionStep
                    require (auctionStep * lastBid / 100) + lastBid >= lastBid
                    require stor20 <= (auctionStep * lastBid / 100) + lastBid
                    require sub_773334fe[stor25][address(arg1)] <= sub_410c4cc2
                    if (auctionStep * lastBid / 100) + lastBid - stor20 < sub_410c4cc2 - sub_773334fe[stor25][address(arg1)]:
                        return ((auctionStep * lastBid / 100) + lastBid - stor20)
    return (sub_410c4cc2 - sub_773334fe[stor25][address(arg1)])
}

function startAuction(uint256 arg1, uint256 arg2) {
    if stor0 != msg.sender:
        require ext_code.size(stor1)
        call stor1.oracle() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require msg.sender == ext_call.return_data[12 len 20]
    require status <= 2
    if status:
        require status <= 2
        require status == 2
    require crowdsaleStatus <= 4
    if crowdsaleStatus:
        require crowdsaleStatus <= 4
        require crowdsaleStatus == 4
    stor15 = stor20
    stor16 = stor21
    stor17.length = stor22.length
    if not stor22.length:
        idx = 0
        while stor17.length > idx:
            stor17[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 0
        while stor22.length > idx:
            stor17[s].field_0 = stor22[idx].field_0
            s = s + 1
            idx = idx + 1
            continue 
        idx = stor22.length
        while stor17.length > idx:
            stor17[idx].field_0 = 0
            idx = idx + 1
            continue 
    stor18 = stor23
    stor19 = address(stor24.field_0)
    stor20 = 0
    stor21 = 0
    stor22.length = 0
    idx = 0
    while stor22.length > idx:
        stor22[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor23 = 0
    address(stor24.field_0) = 0
    stor24.field_256 % 1 = 0
    roundNumber = uint32(roundNumber + 1)
    require arg1 >= stor16
    if stor0 != msg.sender:
        require ext_code.size(stor1)
        call stor1.oracle() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require msg.sender == ext_call.return_data[12 len 20]
    require status <= 2
    if status:
        require status <= 2
        require status == 2
    status = 1
    initialPrice = arg1
    timeout = arg2
    winnerAddress = 0
    lastBidderAddress = 0
    lastBid = 0
    auctionEndTime = 0
    crowdsaleStatus = 1
    roundStartTime = block.timestamp + sub_8fff682f
}



}
