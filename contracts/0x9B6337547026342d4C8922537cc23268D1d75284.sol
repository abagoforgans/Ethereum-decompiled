contract main {


// =======================  Init code  ======================


uint256 stor0;
uint128 stor1; offset 160
address stor1;
uint256 stor2;
mapping of uint256 stor3;
address stor5;
uint256 stor6;
uint256 stor8;
uint256 stor10;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;

function _fallback() payable {
    Mask(96, 0, stor1.field_160) = 0
    stor2 = 1579174400000
    stor8 = 10416 * 10^11
    stor10 = 0
    stor14 = 10
    stor15 = 7
    stor16 = 5
    stor17 = 3
    require not msg.value
    stor0 = 100000000 * 10^18
    address(stor1.field_0) = msg.sender
    stor5 = 0x3b06ac092339d382050c892ad035b5f140b7c628
    stor3[address(msg.sender)] = 75000000 * 10^18
    stor3[stor5] = 25000000 * 10^18
    stor6 = 1520554400000
    return code.data[473 len 11243]
}



// =====================  Runtime code  =====================


const name = 'POTENTIAM'

const decimals = 18

const symbol = 'PTM'


uint256 totalSupply;
uint8 stor1; offset 160
uint128 stor1; offset 160
address owner;
uint256 stor2;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 stor6;
uint256 amountRaisedInWei;
uint256 priceOfToken;
array of address participantIndex;
uint256 stor10;
mapping of uint256 balancesHold;
mapping of uint8 stor12;
uint256 icoStartDate;
uint256 icoWeek1Bonus;
uint256 icoWeek2Bonus;
uint256 icoWeek3Bonus;
uint256 icoWeek4Bonus;

function icoWeek1Bonus() {
    return icoWeek1Bonus
}

function totalSupply() {
    return totalSupply
}

function priceOfToken() {
    return priceOfToken
}

function getCountPartipants() {
    return participantIndex.length
}

function icoWeek2Bonus() {
    return icoWeek2Bonus
}

function icoWeek3Bonus() {
    return icoWeek3Bonus
}

function paused() {
    return bool(uint8(stor1.field_160))
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function amountRaisedInWei() {
    return amountRaisedInWei
}

function owner() {
    return owner
}

function balancesHold(address arg1) {
    return balancesHold[arg1]
}

function icoWeek4Bonus() {
    return icoWeek4Bonus
}

function icoStartDate() {
    return icoStartDate
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function getParticipantIndexAddress(uint256 arg1) {
    require arg1 < participantIndex.length
    return address(participantIndex[arg1])
}

function kill() {
    if owner != msg.sender:
    selfdestruct(owner)
}

function extendSaleEndDate(uint256 arg1) {
    require msg.sender == owner
    stor6 = arg1
}

function rateForOnePTM(uint256 arg1) {
    require msg.sender == owner
    priceOfToken = arg1
}

function setIcoStartDate(uint256 arg1) {
    require msg.sender == owner
    icoStartDate = arg1
}

function setICOWeek4Bonus(uint256 arg1) {
    require msg.sender == owner
    icoWeek4Bonus = arg1
}

function setICOWeek2Bonus(uint256 arg1) {
    require msg.sender == owner
    icoWeek2Bonus = arg1
}

function setICOWeek1Bonus(uint256 arg1) {
    require msg.sender == owner
    icoWeek1Bonus = arg1
}

function setICOWeek3Bonus(uint256 arg1) {
    require msg.sender == owner
    icoWeek3Bonus = arg1
}

function unpause() {
    require msg.sender == owner
    require uint8(stor1.field_160)
    Mask(96, 0, stor1.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor1.field_160)
    Mask(96, 0, stor1.field_160) = 1
    emit Pause()
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function resetTokenOfAddress(address arg1) {
    require msg.sender == owner
    balanceOf[address(arg1)] = 0
    balanceOf[address(stor1.field_0)] += balanceOf[address(arg1)]
}

function transferFundToAccount(address arg1) {
    require msg.sender == owner
    require amountRaisedInWei > 0
    call arg1 with:
       value amountRaisedInWei wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    amountRaisedInWei = 0
}

function transferLimitedFundToAccount(address arg1, uint256 arg2) {
    require msg.sender == owner
    require amountRaisedInWei > arg2
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    amountRaisedInWei -= arg2
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor1.field_160)
    if msg.sender == 0x3b06ac092339d382050c892ad035b5f140b7c628:
        require block.timestamp >= stor2
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor1.field_160)
    if msg.sender == 0x3b06ac092339d382050c892ad035b5f140b7c628:
        require block.timestamp >= stor2
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    return 1
}

function distributeTokensAfterIcoByOwner() {
    require msg.sender == owner
    s = 0
    s = 0
    idx = 0
    while idx < participantIndex.length:
        mem[0] = address(participantIndex[idx])
        mem[32] = 11
        if balancesHold[address(stor9[idx])] > 0:
            allowance[address(stor1.field_0)][address(stor9[idx])] += balancesHold[address(stor9[idx])]
            require not uint8(stor1.field_160)
            if msg.sender == 0x3b06ac092339d382050c892ad035b5f140b7c628:
                require block.timestamp >= stor2
            require address(participantIndex[idx])
            require balancesHold[address(stor9[idx])] <= balanceOf[address(stor1.field_0)]
            require balancesHold[address(stor9[idx])] <= allowance[address(stor1.field_0)][address(msg.sender)]
            require balancesHold[address(stor9[idx])] <= balanceOf[address(stor1.field_0)]
            balanceOf[address(stor1.field_0)] -= balancesHold[address(stor9[idx])]
            require balanceOf[address(stor9[idx])] + balancesHold[address(stor9[idx])] >= balanceOf[address(stor9[idx])]
            balanceOf[address(stor9[idx])] += balancesHold[address(stor9[idx])]
            require balancesHold[address(stor9[idx])] <= allowance[address(stor1.field_0)][address(msg.sender)]
            allowance[address(stor1.field_0)][address(msg.sender)] -= balancesHold[address(stor9[idx])]
            mem[0] = address(participantIndex[idx])
            mem[32] = 11
            balancesHold[address(stor9[idx])] = 0
        s = balancesHold[address(stor9[idx])]
        s = address(participantIndex[idx])
        idx = idx + 1
        continue 
}

function _fallback() payable {
    require not uint8(stor1.field_160)
    require msg.sender
    require block.timestamp <= stor6
    require msg.value >= 4 * 10^16
    require stor10 <= 60000000 * 10^18
    require priceOfToken
    if block.timestamp < 1513555100000:
        stor10 = stor10 + (10^18 * msg.value / priceOfToken) + (40 * 10^18 * msg.value / priceOfToken / 100)
        balancesHold[address(msg.sender)] = balancesHold[address(msg.sender)] + (10^18 * msg.value / priceOfToken) + (40 * 10^18 * msg.value / priceOfToken / 100)
        amountRaisedInWei += msg.value
        if not stor12[address(msg.sender)]:
            participantIndex.length++
            if not participantIndex.length <= participantIndex.length + 1:
                idx = participantIndex.length + 1
                while participantIndex.length > idx:
                    uint256(participantIndex[idx]) = 0
                    idx = idx + 1
                    continue 
            address(participantIndex[participantIndex.length]) = msg.sender
        emit TokenHold(((10^18 * msg.value / priceOfToken) + (40 * 10^18 * msg.value / priceOfToken / 100)), msg.sender);
    else:
        if block.timestamp < 1514760800000:
            stor10 = stor10 + (10^18 * msg.value / priceOfToken) + (35 * 10^18 * msg.value / priceOfToken / 100)
            balancesHold[address(msg.sender)] = balancesHold[address(msg.sender)] + (10^18 * msg.value / priceOfToken) + (35 * 10^18 * msg.value / priceOfToken / 100)
            amountRaisedInWei += msg.value
            if not stor12[address(msg.sender)]:
                participantIndex.length++
                if not participantIndex.length <= participantIndex.length + 1:
                    idx = participantIndex.length + 1
                    while participantIndex.length > idx:
                        uint256(participantIndex[idx]) = 0
                        idx = idx + 1
                        continue 
                address(participantIndex[participantIndex.length]) = msg.sender
            emit TokenHold(((10^18 * msg.value / priceOfToken) + (35 * 10^18 * msg.value / priceOfToken / 100)), msg.sender);
        else:
            if block.timestamp < 420936000 * 24 * 3600:
                stor10 = stor10 + (10^18 * msg.value / priceOfToken) + (30 * 10^18 * msg.value / priceOfToken / 100)
                balancesHold[address(msg.sender)] = balancesHold[address(msg.sender)] + (10^18 * msg.value / priceOfToken) + (30 * 10^18 * msg.value / priceOfToken / 100)
                amountRaisedInWei += msg.value
                if not stor12[address(msg.sender)]:
                    participantIndex.length++
                    if not participantIndex.length <= participantIndex.length + 1:
                        idx = participantIndex.length + 1
                        while participantIndex.length > idx:
                            uint256(participantIndex[idx]) = 0
                            idx = idx + 1
                            continue 
                    address(participantIndex[participantIndex.length]) = msg.sender
                emit TokenHold(((10^18 * msg.value / priceOfToken) + (30 * 10^18 * msg.value / priceOfToken / 100)), msg.sender);
            else:
                if block.timestamp < 421104000 * 24 * 3600:
                    stor10 = stor10 + (10^18 * msg.value / priceOfToken) + (25 * 10^18 * msg.value / priceOfToken / 100)
                    balancesHold[address(msg.sender)] = balancesHold[address(msg.sender)] + (10^18 * msg.value / priceOfToken) + (25 * 10^18 * msg.value / priceOfToken / 100)
                    amountRaisedInWei += msg.value
                    if not stor12[address(msg.sender)]:
                        participantIndex.length++
                        if not participantIndex.length <= participantIndex.length + 1:
                            idx = participantIndex.length + 1
                            while participantIndex.length > idx:
                                uint256(participantIndex[idx]) = 0
                                idx = idx + 1
                                continue 
                        address(participantIndex[participantIndex.length]) = msg.sender
                    emit TokenHold(((10^18 * msg.value / priceOfToken) + (25 * 10^18 * msg.value / priceOfToken / 100)), msg.sender);
                else:
                    if block.timestamp < 1516578400000:
                        stor10 = stor10 + (10^18 * msg.value / priceOfToken) + (20 * 10^18 * msg.value / priceOfToken / 100)
                        balancesHold[address(msg.sender)] = balancesHold[address(msg.sender)] + (10^18 * msg.value / priceOfToken) + (20 * 10^18 * msg.value / priceOfToken / 100)
                        amountRaisedInWei += msg.value
                        if not stor12[address(msg.sender)]:
                            participantIndex.length++
                            if not participantIndex.length <= participantIndex.length + 1:
                                idx = participantIndex.length + 1
                                while participantIndex.length > idx:
                                    uint256(participantIndex[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(participantIndex[participantIndex.length]) = msg.sender
                        emit TokenHold(((10^18 * msg.value / priceOfToken) + (20 * 10^18 * msg.value / priceOfToken / 100)), msg.sender);
                    else:
                        if block.timestamp < 1517011400000:
                            stor10 = stor10 + (10^18 * msg.value / priceOfToken) + (15 * 10^18 * msg.value / priceOfToken / 100)
                            balancesHold[address(msg.sender)] = balancesHold[address(msg.sender)] + (10^18 * msg.value / priceOfToken) + (15 * 10^18 * msg.value / priceOfToken / 100)
                            amountRaisedInWei += msg.value
                            if not stor12[address(msg.sender)]:
                                participantIndex.length++
                                if not participantIndex.length <= participantIndex.length + 1:
                                    idx = participantIndex.length + 1
                                    while participantIndex.length > idx:
                                        uint256(participantIndex[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                address(participantIndex[participantIndex.length]) = msg.sender
                            emit TokenHold(((10^18 * msg.value / priceOfToken) + (15 * 10^18 * msg.value / priceOfToken / 100)), msg.sender);
                        else:
                            if block.timestamp < icoStartDate:
                                stor10 += 10^18 * msg.value / priceOfToken
                                balancesHold[address(msg.sender)] += 10^18 * msg.value / priceOfToken
                                amountRaisedInWei += msg.value
                                if not stor12[address(msg.sender)]:
                                    participantIndex.length++
                                    if not participantIndex.length <= participantIndex.length + 1:
                                        idx = participantIndex.length + 1
                                        while participantIndex.length > idx:
                                            uint256(participantIndex[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                    address(participantIndex[participantIndex.length]) = msg.sender
                                emit TokenHold((10^18 * msg.value / priceOfToken), msg.sender);
                            else:
                                if block.timestamp <= icoStartDate + (168 * 24 * 3600):
                                    stor10 = stor10 + (10^18 * msg.value / priceOfToken) + (10^18 * msg.value / priceOfToken * icoWeek1Bonus / 100)
                                    balancesHold[address(msg.sender)] = balancesHold[address(msg.sender)] + (10^18 * msg.value / priceOfToken) + (10^18 * msg.value / priceOfToken * icoWeek1Bonus / 100)
                                    amountRaisedInWei += msg.value
                                    if not stor12[address(msg.sender)]:
                                        participantIndex.length++
                                        if not participantIndex.length <= participantIndex.length + 1:
                                            idx = participantIndex.length + 1
                                            while participantIndex.length > idx:
                                                uint256(participantIndex[idx]) = 0
                                                idx = idx + 1
                                                continue 
                                        address(participantIndex[participantIndex.length]) = msg.sender
                                    emit TokenHold(((10^18 * msg.value / priceOfToken) + (10^18 * msg.value / priceOfToken * icoWeek1Bonus / 100)), msg.sender);
                                else:
                                    if block.timestamp <= icoStartDate + (336 * 24 * 3600):
                                        stor10 = stor10 + (10^18 * msg.value / priceOfToken) + (10^18 * msg.value / priceOfToken * icoWeek2Bonus / 100)
                                        balancesHold[address(msg.sender)] = balancesHold[address(msg.sender)] + (10^18 * msg.value / priceOfToken) + (10^18 * msg.value / priceOfToken * icoWeek2Bonus / 100)
                                        amountRaisedInWei += msg.value
                                        if not stor12[address(msg.sender)]:
                                            participantIndex.length++
                                            if not participantIndex.length <= participantIndex.length + 1:
                                                idx = participantIndex.length + 1
                                                while participantIndex.length > idx:
                                                    uint256(participantIndex[idx]) = 0
                                                    idx = idx + 1
                                                    continue 
                                            address(participantIndex[participantIndex.length]) = msg.sender
                                        emit TokenHold(((10^18 * msg.value / priceOfToken) + (10^18 * msg.value / priceOfToken * icoWeek2Bonus / 100)), msg.sender);
                                    else:
                                        if block.timestamp <= icoStartDate + (504 * 24 * 3600):
                                            stor10 = stor10 + (10^18 * msg.value / priceOfToken) + (10^18 * msg.value / priceOfToken * icoWeek3Bonus / 100)
                                            balancesHold[address(msg.sender)] = balancesHold[address(msg.sender)] + (10^18 * msg.value / priceOfToken) + (10^18 * msg.value / priceOfToken * icoWeek3Bonus / 100)
                                            amountRaisedInWei += msg.value
                                            if not stor12[address(msg.sender)]:
                                                participantIndex.length++
                                                if not participantIndex.length <= participantIndex.length + 1:
                                                    idx = participantIndex.length + 1
                                                    while participantIndex.length > idx:
                                                        uint256(participantIndex[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                address(participantIndex[participantIndex.length]) = msg.sender
                                            emit TokenHold(((10^18 * msg.value / priceOfToken) + (10^18 * msg.value / priceOfToken * icoWeek3Bonus / 100)), msg.sender);
                                        else:
                                            if block.timestamp > icoStartDate + (672 * 24 * 3600):
                                                stor10 += 10^18 * msg.value / priceOfToken
                                                balancesHold[address(msg.sender)] += 10^18 * msg.value / priceOfToken
                                                amountRaisedInWei += msg.value
                                                if not stor12[address(msg.sender)]:
                                                    participantIndex.length++
                                                    if not participantIndex.length <= participantIndex.length + 1:
                                                        idx = participantIndex.length + 1
                                                        while participantIndex.length > idx:
                                                            uint256(participantIndex[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    address(participantIndex[participantIndex.length]) = msg.sender
                                                emit TokenHold((10^18 * msg.value / priceOfToken), msg.sender);
                                            else:
                                                stor10 = stor10 + (10^18 * msg.value / priceOfToken) + (10^18 * msg.value / priceOfToken * icoWeek4Bonus / 100)
                                                balancesHold[address(msg.sender)] = balancesHold[address(msg.sender)] + (10^18 * msg.value / priceOfToken) + (10^18 * msg.value / priceOfToken * icoWeek4Bonus / 100)
                                                amountRaisedInWei += msg.value
                                                if not stor12[address(msg.sender)]:
                                                    participantIndex.length++
                                                    if not participantIndex.length <= participantIndex.length + 1:
                                                        idx = participantIndex.length + 1
                                                        while participantIndex.length > idx:
                                                            uint256(participantIndex[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    address(participantIndex[participantIndex.length]) = msg.sender
                                                emit TokenHold(((10^18 * msg.value / priceOfToken) + (10^18 * msg.value / priceOfToken * icoWeek4Bonus / 100)), msg.sender);
}



}
