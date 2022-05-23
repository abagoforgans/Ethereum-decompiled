contract main {




// =====================  Runtime code  =====================


#
#  - sub_16abc099(?)
#  - sub_3f0ebdcd(?)
#  - sub_876d9940(?)
#  - sub_a15d575b(?)
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
uint256 stor17;
address stor18;
uint256 stor19;
uint256 stor20;
uint256 stor21;
address stor22;
bool stor23;
uint32 roundNumber;
array of struct sub_c22fa747;
array of struct sub_682e2dd6;
uint256 sub_8fff682f;
uint256 roundStartTime;
uint256 sub_410c4cc2;
uint256 sub_34434b14;
uint8 crowdsaleStatus;
array of address stor67072331549493647622825787457569556318728415786901242217649037894484240406165;
array of address stor80167465652159884487584418398737133515478493586045375474096367959472086682926;

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
    return uint32(roundNumber)
}

function sub_4e851095(?) {
    return sub_4e851095[arg1][arg2]
}

function sub_5acdc459(?) {
    return sub_4e851095[uint32(stor23) - 1 << 224][address(arg1)]
}

function paused() {
    return bool(stor11)
}

function lastBid() {
    return lastBid
}

function sub_682e2dd6(?) {
    require arg1 < sub_682e2dd6.length
    return sub_682e2dd6[arg1].field_0
}

function timeout() {
    return timeout
}

function sub_73265b30(?) {
    return sub_73265b30[arg1][arg2]
}

function sub_773334fe(?) {
    return sub_773334fe[uint32(stor23) - 1 << 224][address(arg1)]
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

function sub_a1f92e0e(?) {
    return sub_a1f92e0e
}

function sub_c22fa747(?) {
    require arg1 < sub_c22fa747.length
    return sub_c22fa747[arg1].field_0
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
    return sub_4e851095[uint32(stor23) - 1 << 224][address(arg1)]
}

function sub_d75c7c80(?) {
    return sub_773334fe[uint32(stor23)][address(arg1)]
}

function roundStartTime() {
    return roundStartTime
}

function winner() {
    return winnerAddress
}

function credit() payable {
  stop
}

function _fallback() payable {
    revert
}

function currentRound() {
    return stor19, stor20, stor21, stor22
}

function sub_b288e1a9(?) {
    return stor15, stor16, stor17, stor18
}

function sub_d52939a1(?) {
    if stor19:
        return not bool(stor19)
    return not bool(stor15)
}

function sub_e8b51a14(?) {
    if bool(stor23) != 0:
        return sub_c22fa747.length
    return sub_682e2dd6.length
}

function sub_9c404ee3(?) {
    if bool(uint32(roundNumber) - 1) != 0:
        return sub_c22fa747.length
    return sub_682e2dd6.length
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

function sub_68e84555(?) {
    if stor0 != msg.sender:
        require ext_code.size(stor1)
        call stor1.oracle() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require msg.sender == ext_call.return_data[12 len 20]
    auctionEndTime = arg1
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
    emit FloorWon(sub_773334fe[uint32(stor23) - 1 << 224][stor6], lastBidderAddress);
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

function sub_9530c6c0(?) {
    if stor0 != msg.sender:
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
    stor15 = stor19
    stor16 = stor20
    stor17 = stor21
    stor18 = stor22
    stor19 = 0
    stor20 = 0
    stor21 = 0
    stor22 = 0
    uint32(roundNumber) = uint32(uint32(roundNumber) + 1)
    crowdsaleStatus = 1
    roundStartTime = block.timestamp + sub_8fff682f
    auctionEndTime = timeout + block.timestamp + sub_8fff682f
}

function sub_0fc9105d(?) {
    if stor0 != msg.sender:
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
    emit FloorWon(sub_773334fe[uint32(stor23) - 1 << 224][stor6], lastBidderAddress);
    crowdsaleStatus = 3
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
    if not sub_773334fe[uint32(stor23)][address(arg1)]:
        if bool(stor23):
            sub_c22fa747.length++
            storB13D[stor24.length] = arg1
        else:
            sub_682e2dd6.length++
            stor9449[stor25.length] = arg1
    require arg2 + sub_773334fe[uint32(stor23)][address(arg1)] >= sub_773334fe[uint32(stor23)][address(arg1)]
    sub_773334fe[uint32(stor23)][address(arg1)] += arg2
    require arg2 + stor19 >= stor19
    stor19 += arg2
    require arg3 + sub_4e851095[uint32(stor23)][address(arg1)] >= sub_4e851095[uint32(stor23)][address(arg1)]
    sub_4e851095[uint32(stor23)][address(arg1)] += arg3
    require arg3 + stor20 >= stor20
    stor20 += arg3
}

function sub_74922339(?) {
    if stor0 != msg.sender:
        require ext_code.size(stor1)
        call stor1.oracle() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require msg.sender == ext_call.return_data[12 len 20]
    require crowdsaleStatus <= 4
    require crowdsaleStatus == 3
    require not stor19
    require not stor15
    if eth.balance(this.address) > 0:
        call stor1 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor1)
        call stor1.acceptDividends(uint256 arg1, uint32 arg2) with:
             gas gas_remaining wei
            args eth.balance(this.address), floorId
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    stor15 = stor19
    stor16 = stor20
    stor17 = stor21
    stor18 = stor22
    stor19 = 0
    stor20 = 0
    stor21 = 0
    stor22 = 0
    uint32(roundNumber) = uint32(uint32(roundNumber) + 1)
    crowdsaleStatus = 4
    status = 2
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
    stor15 = stor19
    stor16 = stor20
    stor17 = stor21
    stor18 = stor22
    stor19 = 0
    stor20 = 0
    stor21 = 0
    stor22 = 0
    uint32(roundNumber) = uint32(uint32(roundNumber) + 1)
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

function sub_c18d6135(?) {
    if 0 == bool(stor23):
        if not sub_682e2dd6.length:
            mem[(32 * sub_682e2dd6.length) + 128] = 32
            mem[(32 * sub_682e2dd6.length) + 160] = sub_682e2dd6.length
            mem[(32 * sub_682e2dd6.length) + 192 len floor32(sub_682e2dd6.length)] = mem[128 len floor32(sub_682e2dd6.length)]
            return memory
              from (32 * sub_682e2dd6.length) + 128
               len (96 * sub_682e2dd6.length) + 64
        mem[128] = address(sub_682e2dd6.field_0)
        idx = 128
        s = 0
        while (32 * sub_682e2dd6.length) + 96 > idx:
            mem[idx + 32] = sub_682e2dd6[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_682e2dd6.length) + 192 len floor32(sub_682e2dd6.length)] = mem[128 len floor32(sub_682e2dd6.length)]
        return Array(len=sub_682e2dd6.length, data=mem[128 len floor32(sub_682e2dd6.length)], mem[(32 * sub_682e2dd6.length) + floor32(sub_682e2dd6.length) + 192 len (32 * sub_682e2dd6.length) - floor32(sub_682e2dd6.length)]), 
    if sub_c22fa747.length:
        mem[128] = address(sub_c22fa747.field_0)
        if (32 * sub_c22fa747.length) + 32 > 64:
            mem[160] = address(sub_c22fa747.field_256)
            idx = 160
            s = 1
            while (32 * sub_c22fa747.length) + 96 > idx:
                mem[idx + 32] = sub_c22fa747[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * sub_c22fa747.length) + 128] = 32
    mem[(32 * sub_c22fa747.length) + 160] = sub_c22fa747.length
    mem[(32 * sub_c22fa747.length) + 192 len floor32(sub_c22fa747.length)] = mem[128 len floor32(sub_c22fa747.length)]
    return memory
      from (32 * sub_c22fa747.length) + 128
       len (96 * sub_c22fa747.length) + 64
}

function sub_ccff3870(?) {
    if 0 == bool(uint32(roundNumber) - 1):
        if not sub_682e2dd6.length:
            mem[(32 * sub_682e2dd6.length) + 128] = 32
            mem[(32 * sub_682e2dd6.length) + 160] = sub_682e2dd6.length
            mem[(32 * sub_682e2dd6.length) + 192 len floor32(sub_682e2dd6.length)] = mem[128 len floor32(sub_682e2dd6.length)]
            return memory
              from (32 * sub_682e2dd6.length) + 128
               len (96 * sub_682e2dd6.length) + 64
        mem[128] = address(sub_682e2dd6.field_0)
        idx = 128
        s = 0
        while (32 * sub_682e2dd6.length) + 96 > idx:
            mem[idx + 32] = sub_682e2dd6[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_682e2dd6.length) + 192 len floor32(sub_682e2dd6.length)] = mem[128 len floor32(sub_682e2dd6.length)]
        return Array(len=sub_682e2dd6.length, data=mem[128 len floor32(sub_682e2dd6.length)], mem[(32 * sub_682e2dd6.length) + floor32(sub_682e2dd6.length) + 192 len (32 * sub_682e2dd6.length) - floor32(sub_682e2dd6.length)]), 
    if sub_c22fa747.length:
        mem[128] = address(sub_c22fa747.field_0)
        if (32 * sub_c22fa747.length) + 32 > 64:
            mem[160] = address(sub_c22fa747.field_256)
            idx = 160
            s = 1
            while (32 * sub_c22fa747.length) + 96 > idx:
                mem[idx + 32] = sub_c22fa747[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * sub_c22fa747.length) + 128] = 32
    mem[(32 * sub_c22fa747.length) + 160] = sub_c22fa747.length
    mem[(32 * sub_c22fa747.length) + 192 len floor32(sub_c22fa747.length)] = mem[128 len floor32(sub_c22fa747.length)]
    return memory
      from (32 * sub_c22fa747.length) + 128
       len (96 * sub_c22fa747.length) + 64
}

function sub_ea7ae8a1(?) {
    if 0 == lastBid:
        require stor19 <= initialPrice
        require sub_773334fe[uint32(stor23)][address(arg1)] <= sub_410c4cc2
        if initialPrice - stor19 < sub_410c4cc2 - sub_773334fe[uint32(stor23)][address(arg1)]:
            return (initialPrice - stor19)
    else:
        if lastBid < 10^17:
            require stor7 + lastBid >= lastBid
            require stor19 <= stor7 + lastBid
            require sub_773334fe[uint32(stor23)][address(arg1)] <= sub_410c4cc2
            if stor7 + lastBid - stor19 < sub_410c4cc2 - sub_773334fe[uint32(stor23)][address(arg1)]:
                return (stor7 + lastBid - stor19)
        else:
            if lastBid < 10^18:
                require (lastBid / 5) + lastBid >= lastBid
                require stor19 <= (lastBid / 5) + lastBid
                require sub_773334fe[uint32(stor23)][address(arg1)] <= sub_410c4cc2
                if (lastBid / 5) + lastBid - stor19 < sub_410c4cc2 - sub_773334fe[uint32(stor23)][address(arg1)]:
                    return ((lastBid / 5) + lastBid - stor19)
            else:
                if not lastBid:
                    require lastBid >= lastBid
                    require stor19 <= lastBid
                    require sub_773334fe[uint32(stor23)][address(arg1)] <= sub_410c4cc2
                    if lastBid - stor19 < sub_410c4cc2 - sub_773334fe[uint32(stor23)][address(arg1)]:
                        return (lastBid - stor19)
                else:
                    require auctionStep * lastBid / lastBid == auctionStep
                    require (auctionStep * lastBid / 100) + lastBid >= lastBid
                    require stor19 <= (auctionStep * lastBid / 100) + lastBid
                    require sub_773334fe[uint32(stor23)][address(arg1)] <= sub_410c4cc2
                    if (auctionStep * lastBid / 100) + lastBid - stor19 < sub_410c4cc2 - sub_773334fe[uint32(stor23)][address(arg1)]:
                        return ((auctionStep * lastBid / 100) + lastBid - stor19)
    return (sub_410c4cc2 - sub_773334fe[uint32(stor23)][address(arg1)])
}



}
