contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
address stor12;
uint8 stor13; offset 160
address stor13;
uint256 stor14;
uint256 stor15;

function _fallback() payable {
    stor5 = 1000 * 10^18
    stor6 = 0
    stor7 = 10
    stor8 = 0
    stor9 = 0
    uint8(stor13.field_160) = 0
    stor14 = 1000
    stor15 = 0
    require not msg.value
    stor12 = msg.sender
    stor0 = code.data[6937 len 20]
    address(stor13.field_0) = msg.sender
    return code.data[168 len 6757]
}



// =====================  Runtime code  =====================


#
#  - play(address arg1, uint256 arg2)
#
address sub_a498742bAddress;
mapping of struct bets;
mapping of uint256 investorIDs;
mapping of struct investors;
uint256 minBet;
uint256 investorsNum;
uint256 maxInvestors;
uint256 investorsProfit;
uint256 investorsLosses;
uint8 stor10;
uint256 invest;
address owner;
uint8 stor13; offset 160
address houseAddress;
uint256 divestFee;
uint256 sub_4d1db3e9;

function getBet(uint256 arg1) {
    return bets[arg1].field_0, bets[arg1].field_256, bets[arg1].field_512
}

function bets(uint256 arg1) {
    return bets[arg1].field_0, bets[arg1].field_256, bets[arg1].field_512
}

function getMinBet() {
    return minBet
}

function isStopped() {
    return bool(stor13)
}

function investors(uint256 arg1) {
    return investors[arg1].field_0, investors[arg1].field_256, investors[arg1].field_512
}

function searchSmallestInvestor() {
    idx = investorsNum
    while idx >= 1:
        require invest
        if investors[stor3[investors[stor6].field_0]].field_256 + (investorsProfit * investors[stor3[investors[stor6].field_0]].field_256 / invest) < investorsProfit * investors[stor3[investors[stor6].field_0]].field_256 / invest:
            require invest
            mem[0] = investorIDs[stor4[idx].field_0]
            mem[32] = 4
            if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) < investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest:
                idx = idx - 1
                continue 
            else:
                if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) < investors[stor3[investors[idx].field_0]].field_256:
                    idx = idx - 1
                    continue 
                else:
                    if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) >= investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invest:
                        if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) - (investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invest) >= 0:
                            idx = idx - 1
                            continue 
                        else:
                            idx = idx - 1
                            continue 
                    else:
                        idx = idx - 1
                        continue 
        else:
            if investors[stor3[investors[stor6].field_0]].field_256 + (investorsProfit * investors[stor3[investors[stor6].field_0]].field_256 / invest) < investors[stor3[investors[stor6].field_0]].field_256:
                require invest
                mem[0] = investorIDs[stor4[idx].field_0]
                mem[32] = 4
                if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) < investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest:
                    idx = idx - 1
                    continue 
                else:
                    if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) < investors[stor3[investors[idx].field_0]].field_256:
                        idx = idx - 1
                        continue 
                    else:
                        if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) >= investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invest:
                            if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) - (investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invest) >= 0:
                                idx = idx - 1
                                continue 
                            else:
                                idx = idx - 1
                                continue 
                        else:
                            idx = idx - 1
                            continue 
            else:
                if investors[stor3[investors[stor6].field_0]].field_256 + (investorsProfit * investors[stor3[investors[stor6].field_0]].field_256 / invest) >= investorsLosses * investors[stor3[investors[stor6].field_0]].field_256 / invest:
                    require invest
                    mem[0] = investorIDs[stor4[idx].field_0]
                    mem[32] = 4
                    if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) < investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest:
                        if 0 >= investors[stor3[investors[stor6].field_0]].field_256 + (investorsProfit * investors[stor3[investors[stor6].field_0]].field_256 / invest) - (investorsLosses * investors[stor3[investors[stor6].field_0]].field_256 / invest):
                            idx = idx - 1
                            continue 
                        else:
                            idx = idx - 1
                            continue 
                    else:
                        if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) < investors[stor3[investors[idx].field_0]].field_256:
                            if 0 >= investors[stor3[investors[stor6].field_0]].field_256 + (investorsProfit * investors[stor3[investors[stor6].field_0]].field_256 / invest) - (investorsLosses * investors[stor3[investors[stor6].field_0]].field_256 / invest):
                                idx = idx - 1
                                continue 
                            else:
                                idx = idx - 1
                                continue 
                        else:
                            if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) >= investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invest:
                                if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) - (investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invest) >= investors[stor3[investors[stor6].field_0]].field_256 + (investorsProfit * investors[stor3[investors[stor6].field_0]].field_256 / invest) - (investorsLosses * investors[stor3[investors[stor6].field_0]].field_256 / invest):
                                    idx = idx - 1
                                    continue 
                                else:
                                    idx = idx - 1
                                    continue 
                            else:
                                if 0 >= investors[stor3[investors[stor6].field_0]].field_256 + (investorsProfit * investors[stor3[investors[stor6].field_0]].field_256 / invest) - (investorsLosses * investors[stor3[investors[stor6].field_0]].field_256 / invest):
                                    idx = idx - 1
                                    continue 
                                else:
                                    idx = idx - 1
                                    continue 
                else:
                    require invest
                    mem[0] = investorIDs[stor4[idx].field_0]
                    mem[32] = 4
                    if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) < investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest:
                        idx = idx - 1
                        continue 
                    else:
                        if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) < investors[stor3[investors[idx].field_0]].field_256:
                            idx = idx - 1
                            continue 
                        else:
                            if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) >= investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invest:
                                if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) - (investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invest) >= 0:
                                    idx = idx - 1
                                    continue 
                                else:
                                    idx = idx - 1
                                    continue 
                            else:
                                idx = idx - 1
                                continue 
    return investorsNum
}

function sub_4d1db3e9(?) {
    return sub_4d1db3e9
}

function divestFee() {
    return divestFee
}

function investorsLosses() {
    return investorsLosses
}

function investorsProfit() {
    return investorsProfit
}

function investorIDs(address arg1) {
    return investorIDs[arg1]
}

function investorsNum() {
    return investorsNum
}

function owner() {
    return owner
}

function minBet() {
    return minBet
}

function sub_a498742b(?) {
    return sub_a498742bAddress
}

function maxInvestors() {
    return maxInvestors
}

function houseAddress() {
    return houseAddress
}

function invest() {
    return invest
}

function destroy() payable {
    mem[64] = 96
    require not msg.value
    require owner == msg.sender
    idx = 1
    while idx <= investorsNum:
        if not stor10:
            t = 0
            t = 0
            t = 0
            s = 1
            t = 0
            while s <= investorsNum:
                require invest
                if investors[s].field_256 + (investorsProfit * investors[stor3[investors[s].field_0]].field_256 / invest) < investors[s].field_256:
                    stor13 = 1
                    emit LOG_EmergencyAutoStop()
                else:
                    if (investorsProfit * investors[stor3[investors[s].field_0]].field_256 / invest) + investors[s].field_256 < investorsLosses * investors[stor3[investors[s].field_0]].field_256 / invest:
                        stor13 = 1
                        emit LOG_EmergencyAutoStop()
                    else:
                        investors[s].field_256 = (investorsProfit * investors[stor3[investors[s].field_0]].field_256 / invest) - (investorsLosses * investors[stor3[investors[s].field_0]].field_256 / invest) + investors[s].field_256
                        mem[mem[64]] = investors[s].field_0
                        mem[mem[64] + 32] = (investorsProfit * investors[stor3[investors[s].field_0]].field_256 / invest) - (investorsLosses * investors[stor3[investors[s].field_0]].field_256 / invest)
                        emit LOG_InvestorCapitalUpdate(investors[s].field_0, (investorsProfit * investors[stor3[investors[s].field_0]].field_256 / invest) - (investorsLosses * investors[stor3[investors[s].field_0]].field_256 / invest));
                mem[0] = s
                mem[32] = 4
                if t + investors[s].field_256 < t:
                    t = investorsLosses * investors[stor3[investors[s].field_0]].field_256 / invest
                    t = investorsProfit * investors[stor3[investors[s].field_0]].field_256 / invest
                    t = investors[s].field_0
                    s = s + 1
                    t = t
                    continue 
                mem[0] = s
                mem[32] = 4
                t = investorsLosses * investors[stor3[investors[s].field_0]].field_256 / invest
                t = investorsProfit * investors[stor3[investors[s].field_0]].field_256 / invest
                t = investors[s].field_0
                s = s + 1
                t = investors[s].field_256 + t
                continue 
            investorsProfit = 0
            investorsLosses = 0
            invest = t
            stor10 = 1
        require invest
        mem[0] = investorIDs[stor4[1].field_0]
        mem[32] = 4
        if investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invest) < investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invest:
            if invest < investors[stor3[investors[1].field_0]].field_256:
                stor13 = 1
                emit LOG_EmergencyAutoStop()
            else:
                invest -= investors[stor3[investors[1].field_0]].field_256
                investors[stor3[investors[1].field_0]].field_0 = 0
                investors[stor3[investors[1].field_0]].field_256 = 0
                investors[stor3[investors[1].field_0]].field_512 = 0
                mem[0] = investors[1].field_0
                mem[32] = 3
                investorIDs[stor4[1].field_0] = 0
                if investorIDs[stor4[1].field_0] != investorsNum:
                    investorIDs[stor4[stor6].field_0] = investorIDs[stor4[1].field_0]
                    mem[32] = 4
                    investors[stor3[investors[1].field_0]].field_0 = investors[stor6].field_0
                    investors[stor3[investors[1].field_0]].field_256 = investors[stor6].field_256
                    investors[stor3[investors[1].field_0]].field_512 = investors[stor6].field_512
                    mem[0] = investorsNum
                    investors[stor6].field_0 = 0
                    investors[stor6].field_256 = 0
                    investors[stor6].field_512 = 0
                investorsNum--
                emit LOG_ZeroSend()
                emit LOG_ZeroSend()
                mem[mem[64]] = investors[1].field_0
                mem[mem[64] + 32] = 0
                mem[mem[64] + 64] = 3
                emit 0xee06808e: investors[1].field_0, 0, 3
        else:
            if investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invest) < investors[stor3[investors[1].field_0]].field_256:
                if invest < investors[stor3[investors[1].field_0]].field_256:
                    stor13 = 1
                    emit LOG_EmergencyAutoStop()
                else:
                    invest -= investors[stor3[investors[1].field_0]].field_256
                    investors[stor3[investors[1].field_0]].field_0 = 0
                    investors[stor3[investors[1].field_0]].field_256 = 0
                    investors[stor3[investors[1].field_0]].field_512 = 0
                    mem[0] = investors[1].field_0
                    mem[32] = 3
                    investorIDs[stor4[1].field_0] = 0
                    if investorIDs[stor4[1].field_0] != investorsNum:
                        investorIDs[stor4[stor6].field_0] = investorIDs[stor4[1].field_0]
                        mem[32] = 4
                        investors[stor3[investors[1].field_0]].field_0 = investors[stor6].field_0
                        investors[stor3[investors[1].field_0]].field_256 = investors[stor6].field_256
                        investors[stor3[investors[1].field_0]].field_512 = investors[stor6].field_512
                        mem[0] = investorsNum
                        investors[stor6].field_0 = 0
                        investors[stor6].field_256 = 0
                        investors[stor6].field_512 = 0
                    investorsNum--
                    emit LOG_ZeroSend()
                    emit LOG_ZeroSend()
                    mem[mem[64]] = investors[1].field_0
                    mem[mem[64] + 32] = 0
                    mem[mem[64] + 64] = 3
                    emit 0xee06808e: investors[1].field_0, 0, 3
            else:
                if investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invest) < investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invest:
                    if invest < investors[stor3[investors[1].field_0]].field_256:
                        stor13 = 1
                        emit LOG_EmergencyAutoStop()
                    else:
                        invest -= investors[stor3[investors[1].field_0]].field_256
                        investors[stor3[investors[1].field_0]].field_0 = 0
                        investors[stor3[investors[1].field_0]].field_256 = 0
                        investors[stor3[investors[1].field_0]].field_512 = 0
                        mem[0] = investors[1].field_0
                        mem[32] = 3
                        investorIDs[stor4[1].field_0] = 0
                        if investorIDs[stor4[1].field_0] != investorsNum:
                            investorIDs[stor4[stor6].field_0] = investorIDs[stor4[1].field_0]
                            mem[32] = 4
                            investors[stor3[investors[1].field_0]].field_0 = investors[stor6].field_0
                            investors[stor3[investors[1].field_0]].field_256 = investors[stor6].field_256
                            investors[stor3[investors[1].field_0]].field_512 = investors[stor6].field_512
                            mem[0] = investorsNum
                            investors[stor6].field_0 = 0
                            investors[stor6].field_256 = 0
                            investors[stor6].field_512 = 0
                        investorsNum--
                        emit LOG_ZeroSend()
                        emit LOG_ZeroSend()
                        mem[mem[64]] = investors[1].field_0
                        mem[mem[64] + 32] = 0
                        mem[mem[64] + 64] = 3
                        emit 0xee06808e: investors[1].field_0, 0, 3
                else:
                    if invest < investors[stor3[investors[1].field_0]].field_256:
                        stor13 = 1
                        emit LOG_EmergencyAutoStop()
                    else:
                        invest -= investors[stor3[investors[1].field_0]].field_256
                        investors[stor3[investors[1].field_0]].field_0 = 0
                        investors[stor3[investors[1].field_0]].field_256 = 0
                        investors[stor3[investors[1].field_0]].field_512 = 0
                        mem[0] = investors[1].field_0
                        mem[32] = 3
                        investorIDs[stor4[1].field_0] = 0
                        if investorIDs[stor4[1].field_0] != investorsNum:
                            investorIDs[stor4[stor6].field_0] = investorIDs[stor4[1].field_0]
                            mem[32] = 4
                            investors[stor3[investors[1].field_0]].field_0 = investors[stor6].field_0
                            investors[stor3[investors[1].field_0]].field_256 = investors[stor6].field_256
                            investors[stor3[investors[1].field_0]].field_512 = investors[stor6].field_512
                            mem[0] = investorsNum
                            investors[stor6].field_0 = 0
                            investors[stor6].field_256 = 0
                            investors[stor6].field_512 = 0
                        investorsNum--
                        if not investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invest) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invest) - ((investors[stor3[investors[1].field_0]].field_256 * divestFee) + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invest * divestFee) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invest * divestFee) / 10000):
                            emit LOG_ZeroSend()
                        else:
                            require ext_code.size(sub_a498742bAddress)
                            call sub_a498742bAddress.0x70a08231 with:
                                 gas gas_remaining - 710 wei
                                args address(this.address)
                            require ext_call.success
                            if ext_call.return_data[0] < investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invest) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invest) - ((investors[stor3[investors[1].field_0]].field_256 * divestFee) + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invest * divestFee) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invest * divestFee) / 10000):
                                emit LOG_ValueIsTooBig()
                            else:
                                require ext_code.size(sub_a498742bAddress)
                                call sub_a498742bAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args investors[1].field_0, investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invest) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invest) - ((investors[stor3[investors[1].field_0]].field_256 * divestFee) + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invest * divestFee) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invest * divestFee) / 10000)
                                require ext_call.success
                                emit LOG_SuccessfulSend(investors[1].field_0, investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invest) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invest) - ((investors[stor3[investors[1].field_0]].field_256 * divestFee) + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invest * divestFee) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invest * divestFee) / 10000));
                        if not (investors[stor3[investors[1].field_0]].field_256 * divestFee) + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invest * divestFee) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invest * divestFee) / 10000:
                            emit LOG_ZeroSend()
                        else:
                            require ext_code.size(sub_a498742bAddress)
                            call sub_a498742bAddress.0x70a08231 with:
                                 gas gas_remaining - 710 wei
                                args address(this.address)
                            require ext_call.success
                            if ext_call.return_data[0] < (investors[stor3[investors[1].field_0]].field_256 * divestFee) + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invest * divestFee) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invest * divestFee) / 10000:
                                emit LOG_ValueIsTooBig()
                            else:
                                require ext_code.size(sub_a498742bAddress)
                                call sub_a498742bAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args houseAddress, (investors[stor3[investors[1].field_0]].field_256 * divestFee) + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invest * divestFee) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invest * divestFee) / 10000
                                require ext_call.success
                                emit LOG_SuccessfulSend(houseAddress, (investors[stor3[investors[1].field_0]].field_256 * divestFee) + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invest * divestFee) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invest * divestFee) / 10000);
                        mem[mem[64]] = investors[1].field_0
                        mem[mem[64] + 32] = investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invest) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invest) - ((investors[stor3[investors[1].field_0]].field_256 * divestFee) + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invest * divestFee) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invest * divestFee) / 10000)
                        mem[mem[64] + 64] = 3
                        emit 0xee06808e: investors[1].field_0, investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invest) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invest) - ((investors[stor3[investors[1].field_0]].field_256 * divestFee) + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invest * divestFee) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invest * divestFee) / 10000), 3
        idx = idx + 1
        continue 
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function sub_d1a5f765(?) {
    if investorIDs[address(arg1)] <= 0:
        return 0
    return 1
}

function setStarted() {
    require owner == msg.sender
    if stor13:
        stor13 = 0
        emit 0xadb82223 
}

function setStopped() {
    require owner == msg.sender
    if not stor13:
        stor13 = 1
        emit 0x77a4ee52 
}

function getProfitShare(address arg1) {
    require invest
    return (investorsProfit * investors[stor3[address(arg1)]].field_256 / invest)
}

function getLossesShare(address arg1) {
    require invest
    return (investorsLosses * investors[stor3[address(arg1)]].field_256 / invest)
}

function changeOwnerAddress(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
    emit LOG_OwnerAddressChanged(address(arg1), arg1);
}

function changeInvestNum(uint256 arg1) {
    require owner == msg.sender
    require arg1 > investorsNum
    maxInvestors = arg1
    emit LOG_MaxInvestorsChanged(arg1);
}

function changeHouseAddress(address arg1) {
    require owner == msg.sender
    require arg1
    emit LOG_HouseAddressChanged(houseAddress, arg1);
    houseAddress = arg1
}

function sub_c41ee9f6(?) {
    require ext_code.size(sub_a498742bAddress)
    call sub_a498742bAddress.0xc1a4e416 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function sub_616fb5d0(?) {
    if invest >= investorsProfit:
        if invest + investorsProfit >= invest:
            if invest + investorsProfit >= investorsLosses:
                return (invest + investorsProfit - investorsLosses)
            else:
                return 0
        else:
            return 0
    else:
        return 0
}

function getMaxBet() {
    if invest >= investorsProfit:
        if invest + investorsProfit >= invest:
            if invest + investorsProfit >= investorsLosses:
                return ((5000 * invest) + (5000 * investorsProfit) - (5000 * investorsLosses) / 10000)
            else:
                return 0
        else:
            return 0
    else:
        return 0
}

function check(uint256 arg1) {
    if arg1 < minBet:
        return 0
    if invest < investorsProfit:
        if arg1 > 0:
            return 0
    else:
        if invest + investorsProfit < invest:
            if arg1 > 0:
                return 0
        else:
            if invest + investorsProfit >= investorsLosses:
                if arg1 > (5000 * invest) + (5000 * investorsProfit) - (5000 * investorsLosses) / 10000:
                    return 0
            else:
                if arg1 > 0:
                    return 0
    if stor13:
        return 0
    return 1
}

function getBalance(address arg1) {
    require invest
    if investors[stor3[address(arg1)]].field_256 + (investorsProfit * investors[stor3[address(arg1)]].field_256 / invest) >= investorsProfit * investors[stor3[address(arg1)]].field_256 / invest:
        if investors[stor3[address(arg1)]].field_256 + (investorsProfit * investors[stor3[address(arg1)]].field_256 / invest) >= investors[stor3[address(arg1)]].field_256:
            if investors[stor3[address(arg1)]].field_256 + (investorsProfit * investors[stor3[address(arg1)]].field_256 / invest) >= investorsLosses * investors[stor3[address(arg1)]].field_256 / invest:
                return (investors[stor3[address(arg1)]].field_256 + (investorsProfit * investors[stor3[address(arg1)]].field_256 / invest) - (investorsLosses * investors[stor3[address(arg1)]].field_256 / invest))
            else:
                return 0
        else:
            return 0
    else:
        return 0
}

function getStatus() {
    if invest >= investorsProfit:
        if invest + investorsProfit >= invest:
            if invest + investorsProfit >= investorsLosses:
                if invest >= investorsProfit:
                    if invest + investorsProfit >= invest:
                        if invest + investorsProfit >= investorsLosses:
                            return invest + investorsProfit - investorsLosses, 
                                   minBet,
                                   (5000 * invest) + (5000 * investorsProfit) - (5000 * investorsLosses) / 10000,
                                   divestFee,
                                   1000,
                                   sub_4d1db3e9
                return invest + investorsProfit - investorsLosses, minBet, 0, divestFee, 1000, sub_4d1db3e9
        if invest >= investorsProfit:
            if invest + investorsProfit >= invest:
                if invest + investorsProfit >= investorsLosses:
                    return 0, minBet, (5000 * invest) + (5000 * investorsProfit) - (5000 * investorsLosses) / 10000, divestFee, 1000, sub_4d1db3e9
    return 0, minBet, 0, divestFee, 1000, sub_4d1db3e9
}

function getInvestStatus(uint256 arg1) {
    require arg1 <= investorsNum
    require invest
    if investors[stor3[investors[arg1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[arg1].field_0]].field_256 / invest) >= investorsProfit * investors[stor3[investors[arg1].field_0]].field_256 / invest:
        if investors[stor3[investors[arg1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[arg1].field_0]].field_256 / invest) >= investors[stor3[investors[arg1].field_0]].field_256:
            if investors[stor3[investors[arg1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[arg1].field_0]].field_256 / invest) >= investorsLosses * investors[stor3[investors[arg1].field_0]].field_256 / invest:
                return investors[arg1].field_0, 
                       investors[arg1].field_512,
                       (10000 * investors[stor3[investors[arg1].field_0]].field_256) - (divestFee * investors[stor3[investors[arg1].field_0]].field_256) + (10000 * investorsProfit * investors[stor3[investors[arg1].field_0]].field_256 / invest) - (divestFee * investorsProfit * investors[stor3[investors[arg1].field_0]].field_256 / invest) - (10000 * investorsLosses * investors[stor3[investors[arg1].field_0]].field_256 / invest) + (divestFee * investorsLosses * investors[stor3[investors[arg1].field_0]].field_256 / invest) / 10000
    return investors[arg1].field_0, investors[arg1].field_512, 0
}

function getMinInvestment() {
    if investorsNum == maxInvestors:
        idx = investorsNum
        while idx >= 1:
            require invest
            if investors[stor3[investors[stor6].field_0]].field_256 + (investorsProfit * investors[stor3[investors[stor6].field_0]].field_256 / invest) < investorsProfit * investors[stor3[investors[stor6].field_0]].field_256 / invest:
                require invest
                mem[0] = investorIDs[stor4[idx].field_0]
                mem[32] = 4
                if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) < investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest:
                    idx = idx - 1
                    continue 
                else:
                    if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) < investors[stor3[investors[idx].field_0]].field_256:
                        idx = idx - 1
                        continue 
                    else:
                        if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) >= investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invest:
                            if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) - (investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invest) >= 0:
                                idx = idx - 1
                                continue 
                            else:
                                idx = idx - 1
                                continue 
                        else:
                            idx = idx - 1
                            continue 
            else:
                if investors[stor3[investors[stor6].field_0]].field_256 + (investorsProfit * investors[stor3[investors[stor6].field_0]].field_256 / invest) < investors[stor3[investors[stor6].field_0]].field_256:
                    require invest
                    mem[0] = investorIDs[stor4[idx].field_0]
                    mem[32] = 4
                    if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) < investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest:
                        idx = idx - 1
                        continue 
                    else:
                        if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) < investors[stor3[investors[idx].field_0]].field_256:
                            idx = idx - 1
                            continue 
                        else:
                            if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) >= investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invest:
                                if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) - (investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invest) >= 0:
                                    idx = idx - 1
                                    continue 
                                else:
                                    idx = idx - 1
                                    continue 
                            else:
                                idx = idx - 1
                                continue 
                else:
                    if investors[stor3[investors[stor6].field_0]].field_256 + (investorsProfit * investors[stor3[investors[stor6].field_0]].field_256 / invest) >= investorsLosses * investors[stor3[investors[stor6].field_0]].field_256 / invest:
                        require invest
                        mem[0] = investorIDs[stor4[idx].field_0]
                        mem[32] = 4
                        if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) < investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest:
                            if 0 >= investors[stor3[investors[stor6].field_0]].field_256 + (investorsProfit * investors[stor3[investors[stor6].field_0]].field_256 / invest) - (investorsLosses * investors[stor3[investors[stor6].field_0]].field_256 / invest):
                                idx = idx - 1
                                continue 
                            else:
                                idx = idx - 1
                                continue 
                        else:
                            if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) < investors[stor3[investors[idx].field_0]].field_256:
                                if 0 >= investors[stor3[investors[stor6].field_0]].field_256 + (investorsProfit * investors[stor3[investors[stor6].field_0]].field_256 / invest) - (investorsLosses * investors[stor3[investors[stor6].field_0]].field_256 / invest):
                                    idx = idx - 1
                                    continue 
                                else:
                                    idx = idx - 1
                                    continue 
                            else:
                                if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) >= investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invest:
                                    if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) - (investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invest) >= investors[stor3[investors[stor6].field_0]].field_256 + (investorsProfit * investors[stor3[investors[stor6].field_0]].field_256 / invest) - (investorsLosses * investors[stor3[investors[stor6].field_0]].field_256 / invest):
                                        idx = idx - 1
                                        continue 
                                    else:
                                        idx = idx - 1
                                        continue 
                                else:
                                    if 0 >= investors[stor3[investors[stor6].field_0]].field_256 + (investorsProfit * investors[stor3[investors[stor6].field_0]].field_256 / invest) - (investorsLosses * investors[stor3[investors[stor6].field_0]].field_256 / invest):
                                        idx = idx - 1
                                        continue 
                                    else:
                                        idx = idx - 1
                                        continue 
                    else:
                        require invest
                        mem[0] = investorIDs[stor4[idx].field_0]
                        mem[32] = 4
                        if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) < investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest:
                            idx = idx - 1
                            continue 
                        else:
                            if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) < investors[stor3[investors[idx].field_0]].field_256:
                                idx = idx - 1
                                continue 
                            else:
                                if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) >= investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invest:
                                    if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) - (investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invest) >= 0:
                                        idx = idx - 1
                                        continue 
                                    else:
                                        idx = idx - 1
                                        continue 
                                else:
                                    idx = idx - 1
                                    continue 
        require invest
        if investors[stor3[investors[stor6].field_0]].field_256 + (investorsProfit * investors[stor3[investors[stor6].field_0]].field_256 / invest) >= investorsProfit * investors[stor3[investors[stor6].field_0]].field_256 / invest:
            if investors[stor3[investors[stor6].field_0]].field_256 + (investorsProfit * investors[stor3[investors[stor6].field_0]].field_256 / invest) >= investors[stor3[investors[stor6].field_0]].field_256:
                if investors[stor3[investors[stor6].field_0]].field_256 + (investorsProfit * investors[stor3[investors[stor6].field_0]].field_256 / invest) >= investorsLosses * investors[stor3[investors[stor6].field_0]].field_256 / invest:
                    return (investors[stor3[investors[stor6].field_0]].field_256 + (investorsProfit * investors[stor3[investors[stor6].field_0]].field_256 / invest) - (investorsLosses * investors[stor3[investors[stor6].field_0]].field_256 / invest))
        return 0
    else:
        return 0
}

function sub_10de4436(?) {
    require ext_code.size(sub_a498742bAddress)
    call sub_a498742bAddress.0xc1a4e416 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require msg.sender == ext_call.return_data[12 len 20]
    require investorIDs[address(arg1)] > 0
    if not stor10:
        s = 0
        s = 0
        s = 0
        idx = 1
        s = 0
        while idx <= investorsNum:
            require invest
            if investors[idx].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) < investors[idx].field_256:
                stor13 = 1
                emit LOG_EmergencyAutoStop()
            else:
                if (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) + investors[idx].field_256 < investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invest:
                    stor13 = 1
                    emit LOG_EmergencyAutoStop()
                else:
                    investors[idx].field_256 = (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) - (investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invest) + investors[idx].field_256
                    mem[96] = investors[idx].field_0
                    mem[128] = (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) - (investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invest)
                    emit LOG_InvestorCapitalUpdate(investors[idx].field_0, (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) - (investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invest));
            mem[0] = idx
            mem[32] = 4
            if s + investors[idx].field_256 < s:
                s = investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invest
                s = investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest
                s = investors[idx].field_0
                idx = idx + 1
                s = s
                continue 
            mem[0] = idx
            mem[32] = 4
            s = investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invest
            s = investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest
            s = investors[idx].field_0
            idx = idx + 1
            s = investors[idx].field_256 + s
            continue 
        investorsProfit = 0
        investorsLosses = 0
        invest = s
        stor10 = 1
    require invest
    if investors[stor3[address(arg1)]].field_256 + (investorsProfit * investors[stor3[address(arg1)]].field_256 / invest) < investorsProfit * investors[stor3[address(arg1)]].field_256 / invest:
        if invest < investors[stor3[address(arg1)]].field_256:
            stor13 = 1
            emit LOG_EmergencyAutoStop()
        else:
            invest -= investors[stor3[address(arg1)]].field_256
            investors[stor3[address(arg1)]].field_0 = 0
            investors[stor3[address(arg1)]].field_256 = 0
            investors[stor3[address(arg1)]].field_512 = 0
            investorIDs[address(arg1)] = 0
            if investorIDs[address(arg1)] != investorsNum:
                investorIDs[stor4[stor6].field_0] = investorIDs[address(arg1)]
                investors[stor3[address(arg1)]].field_0 = investors[stor6].field_0
                investors[stor3[address(arg1)]].field_256 = investors[stor6].field_256
                investors[stor3[address(arg1)]].field_512 = investors[stor6].field_512
                investors[stor6].field_0 = 0
                investors[stor6].field_256 = 0
                investors[stor6].field_512 = 0
            investorsNum--
            emit LOG_ZeroSend()
            emit LOG_ZeroSend()
            emit 0xee06808e: address(arg1), 0, 3
    else:
        if investors[stor3[address(arg1)]].field_256 + (investorsProfit * investors[stor3[address(arg1)]].field_256 / invest) < investors[stor3[address(arg1)]].field_256:
            if invest < investors[stor3[address(arg1)]].field_256:
                stor13 = 1
                emit LOG_EmergencyAutoStop()
            else:
                invest -= investors[stor3[address(arg1)]].field_256
                investors[stor3[address(arg1)]].field_0 = 0
                investors[stor3[address(arg1)]].field_256 = 0
                investors[stor3[address(arg1)]].field_512 = 0
                investorIDs[address(arg1)] = 0
                if investorIDs[address(arg1)] != investorsNum:
                    investorIDs[stor4[stor6].field_0] = investorIDs[address(arg1)]
                    investors[stor3[address(arg1)]].field_0 = investors[stor6].field_0
                    investors[stor3[address(arg1)]].field_256 = investors[stor6].field_256
                    investors[stor3[address(arg1)]].field_512 = investors[stor6].field_512
                    investors[stor6].field_0 = 0
                    investors[stor6].field_256 = 0
                    investors[stor6].field_512 = 0
                investorsNum--
                emit LOG_ZeroSend()
                emit LOG_ZeroSend()
                emit 0xee06808e: address(arg1), 0, 3
        else:
            if investors[stor3[address(arg1)]].field_256 + (investorsProfit * investors[stor3[address(arg1)]].field_256 / invest) < investorsLosses * investors[stor3[address(arg1)]].field_256 / invest:
                if invest < investors[stor3[address(arg1)]].field_256:
                    stor13 = 1
                    emit LOG_EmergencyAutoStop()
                else:
                    invest -= investors[stor3[address(arg1)]].field_256
                    investors[stor3[address(arg1)]].field_0 = 0
                    investors[stor3[address(arg1)]].field_256 = 0
                    investors[stor3[address(arg1)]].field_512 = 0
                    investorIDs[address(arg1)] = 0
                    if investorIDs[address(arg1)] != investorsNum:
                        investorIDs[stor4[stor6].field_0] = investorIDs[address(arg1)]
                        investors[stor3[address(arg1)]].field_0 = investors[stor6].field_0
                        investors[stor3[address(arg1)]].field_256 = investors[stor6].field_256
                        investors[stor3[address(arg1)]].field_512 = investors[stor6].field_512
                        investors[stor6].field_0 = 0
                        investors[stor6].field_256 = 0
                        investors[stor6].field_512 = 0
                    investorsNum--
                    emit LOG_ZeroSend()
                    emit LOG_ZeroSend()
                    emit 0xee06808e: address(arg1), 0, 3
            else:
                if invest < investors[stor3[address(arg1)]].field_256:
                    stor13 = 1
                    emit LOG_EmergencyAutoStop()
                else:
                    invest -= investors[stor3[address(arg1)]].field_256
                    investors[stor3[address(arg1)]].field_0 = 0
                    investors[stor3[address(arg1)]].field_256 = 0
                    investors[stor3[address(arg1)]].field_512 = 0
                    investorIDs[address(arg1)] = 0
                    if investorIDs[address(arg1)] != investorsNum:
                        investorIDs[stor4[stor6].field_0] = investorIDs[address(arg1)]
                        investors[stor3[address(arg1)]].field_0 = investors[stor6].field_0
                        investors[stor3[address(arg1)]].field_256 = investors[stor6].field_256
                        investors[stor3[address(arg1)]].field_512 = investors[stor6].field_512
                        investors[stor6].field_0 = 0
                        investors[stor6].field_256 = 0
                        investors[stor6].field_512 = 0
                    investorsNum--
                    if not investors[stor3[address(arg1)]].field_256 + (investorsProfit * investors[stor3[address(arg1)]].field_256 / invest) - (investorsLosses * investors[stor3[address(arg1)]].field_256 / invest) - ((investors[stor3[address(arg1)]].field_256 * divestFee) + (investorsProfit * investors[stor3[address(arg1)]].field_256 / invest * divestFee) - (investorsLosses * investors[stor3[address(arg1)]].field_256 / invest * divestFee) / 10000):
                        emit LOG_ZeroSend()
                    else:
                        require ext_code.size(sub_a498742bAddress)
                        call sub_a498742bAddress.0x70a08231 with:
                             gas gas_remaining - 710 wei
                            args this.address
                        require ext_call.success
                        if ext_call.return_data[0] < investors[stor3[address(arg1)]].field_256 + (investorsProfit * investors[stor3[address(arg1)]].field_256 / invest) - (investorsLosses * investors[stor3[address(arg1)]].field_256 / invest) - ((investors[stor3[address(arg1)]].field_256 * divestFee) + (investorsProfit * investors[stor3[address(arg1)]].field_256 / invest * divestFee) - (investorsLosses * investors[stor3[address(arg1)]].field_256 / invest * divestFee) / 10000):
                            emit LOG_ValueIsTooBig()
                        else:
                            require ext_code.size(sub_a498742bAddress)
                            call sub_a498742bAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), investors[stor3[address(arg1)]].field_256 + (investorsProfit * investors[stor3[address(arg1)]].field_256 / invest) - (investorsLosses * investors[stor3[address(arg1)]].field_256 / invest) - ((investors[stor3[address(arg1)]].field_256 * divestFee) + (investorsProfit * investors[stor3[address(arg1)]].field_256 / invest * divestFee) - (investorsLosses * investors[stor3[address(arg1)]].field_256 / invest * divestFee) / 10000)
                            require ext_call.success
                            emit LOG_SuccessfulSend(address(arg1), investors[stor3[address(arg1)]].field_256 + (investorsProfit * investors[stor3[address(arg1)]].field_256 / invest) - (investorsLosses * investors[stor3[address(arg1)]].field_256 / invest) - ((investors[stor3[address(arg1)]].field_256 * divestFee) + (investorsProfit * investors[stor3[address(arg1)]].field_256 / invest * divestFee) - (investorsLosses * investors[stor3[address(arg1)]].field_256 / invest * divestFee) / 10000));
                    if not (investors[stor3[address(arg1)]].field_256 * divestFee) + (investorsProfit * investors[stor3[address(arg1)]].field_256 / invest * divestFee) - (investorsLosses * investors[stor3[address(arg1)]].field_256 / invest * divestFee) / 10000:
                        emit LOG_ZeroSend()
                    else:
                        require ext_code.size(sub_a498742bAddress)
                        call sub_a498742bAddress.0x70a08231 with:
                             gas gas_remaining - 710 wei
                            args this.address
                        require ext_call.success
                        if ext_call.return_data[0] < (investors[stor3[address(arg1)]].field_256 * divestFee) + (investorsProfit * investors[stor3[address(arg1)]].field_256 / invest * divestFee) - (investorsLosses * investors[stor3[address(arg1)]].field_256 / invest * divestFee) / 10000:
                            emit LOG_ValueIsTooBig()
                        else:
                            require ext_code.size(sub_a498742bAddress)
                            call sub_a498742bAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args houseAddress, (investors[stor3[address(arg1)]].field_256 * divestFee) + (investorsProfit * investors[stor3[address(arg1)]].field_256 / invest * divestFee) - (investorsLosses * investors[stor3[address(arg1)]].field_256 / invest * divestFee) / 10000
                            require ext_call.success
                            emit LOG_SuccessfulSend(houseAddress, (investors[stor3[address(arg1)]].field_256 * divestFee) + (investorsProfit * investors[stor3[address(arg1)]].field_256 / invest * divestFee) - (investorsLosses * investors[stor3[address(arg1)]].field_256 / invest * divestFee) / 10000);
                    emit 0xee06808e: address(arg1), investors[stor3[address(arg1)]].field_256 + (investorsProfit * investors[stor3[address(arg1)]].field_256 / invest) - (investorsLosses * investors[stor3[address(arg1)]].field_256 / invest) - ((investors[stor3[address(arg1)]].field_256 * divestFee) + (investorsProfit * investors[stor3[address(arg1)]].field_256 / invest * divestFee) - (investorsLosses * investors[stor3[address(arg1)]].field_256 / invest * divestFee) / 10000), 3
}

function forceDivestOfAllInvestors() payable {
    mem[64] = 96
    require not msg.value
    require owner == msg.sender
    idx = 1
    while idx <= investorsNum:
        if not stor10:
            t = 0
            t = 0
            t = 0
            s = 1
            t = 0
            while s <= investorsNum:
                require invest
                if investors[s].field_256 + (investorsProfit * investors[stor3[investors[s].field_0]].field_256 / invest) < investors[s].field_256:
                    stor13 = 1
                    emit LOG_EmergencyAutoStop()
                else:
                    if (investorsProfit * investors[stor3[investors[s].field_0]].field_256 / invest) + investors[s].field_256 < investorsLosses * investors[stor3[investors[s].field_0]].field_256 / invest:
                        stor13 = 1
                        emit LOG_EmergencyAutoStop()
                    else:
                        investors[s].field_256 = (investorsProfit * investors[stor3[investors[s].field_0]].field_256 / invest) - (investorsLosses * investors[stor3[investors[s].field_0]].field_256 / invest) + investors[s].field_256
                        mem[mem[64]] = investors[s].field_0
                        mem[mem[64] + 32] = (investorsProfit * investors[stor3[investors[s].field_0]].field_256 / invest) - (investorsLosses * investors[stor3[investors[s].field_0]].field_256 / invest)
                        emit LOG_InvestorCapitalUpdate(investors[s].field_0, (investorsProfit * investors[stor3[investors[s].field_0]].field_256 / invest) - (investorsLosses * investors[stor3[investors[s].field_0]].field_256 / invest));
                mem[0] = s
                mem[32] = 4
                if t + investors[s].field_256 < t:
                    t = investorsLosses * investors[stor3[investors[s].field_0]].field_256 / invest
                    t = investorsProfit * investors[stor3[investors[s].field_0]].field_256 / invest
                    t = investors[s].field_0
                    s = s + 1
                    t = t
                    continue 
                mem[0] = s
                mem[32] = 4
                t = investorsLosses * investors[stor3[investors[s].field_0]].field_256 / invest
                t = investorsProfit * investors[stor3[investors[s].field_0]].field_256 / invest
                t = investors[s].field_0
                s = s + 1
                t = investors[s].field_256 + t
                continue 
            investorsProfit = 0
            investorsLosses = 0
            invest = t
            stor10 = 1
        require invest
        mem[0] = investorIDs[stor4[1].field_0]
        mem[32] = 4
        if investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invest) < investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invest:
            if invest < investors[stor3[investors[1].field_0]].field_256:
                stor13 = 1
                emit LOG_EmergencyAutoStop()
            else:
                invest -= investors[stor3[investors[1].field_0]].field_256
                investors[stor3[investors[1].field_0]].field_0 = 0
                investors[stor3[investors[1].field_0]].field_256 = 0
                investors[stor3[investors[1].field_0]].field_512 = 0
                mem[0] = investors[1].field_0
                mem[32] = 3
                investorIDs[stor4[1].field_0] = 0
                if investorIDs[stor4[1].field_0] != investorsNum:
                    investorIDs[stor4[stor6].field_0] = investorIDs[stor4[1].field_0]
                    mem[32] = 4
                    investors[stor3[investors[1].field_0]].field_0 = investors[stor6].field_0
                    investors[stor3[investors[1].field_0]].field_256 = investors[stor6].field_256
                    investors[stor3[investors[1].field_0]].field_512 = investors[stor6].field_512
                    mem[0] = investorsNum
                    investors[stor6].field_0 = 0
                    investors[stor6].field_256 = 0
                    investors[stor6].field_512 = 0
                investorsNum--
                emit LOG_ZeroSend()
                emit LOG_ZeroSend()
                mem[mem[64]] = investors[1].field_0
                mem[mem[64] + 32] = 0
                mem[mem[64] + 64] = 3
                emit 0xee06808e: investors[1].field_0, 0, 3
        else:
            if investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invest) < investors[stor3[investors[1].field_0]].field_256:
                if invest < investors[stor3[investors[1].field_0]].field_256:
                    stor13 = 1
                    emit LOG_EmergencyAutoStop()
                else:
                    invest -= investors[stor3[investors[1].field_0]].field_256
                    investors[stor3[investors[1].field_0]].field_0 = 0
                    investors[stor3[investors[1].field_0]].field_256 = 0
                    investors[stor3[investors[1].field_0]].field_512 = 0
                    mem[0] = investors[1].field_0
                    mem[32] = 3
                    investorIDs[stor4[1].field_0] = 0
                    if investorIDs[stor4[1].field_0] != investorsNum:
                        investorIDs[stor4[stor6].field_0] = investorIDs[stor4[1].field_0]
                        mem[32] = 4
                        investors[stor3[investors[1].field_0]].field_0 = investors[stor6].field_0
                        investors[stor3[investors[1].field_0]].field_256 = investors[stor6].field_256
                        investors[stor3[investors[1].field_0]].field_512 = investors[stor6].field_512
                        mem[0] = investorsNum
                        investors[stor6].field_0 = 0
                        investors[stor6].field_256 = 0
                        investors[stor6].field_512 = 0
                    investorsNum--
                    emit LOG_ZeroSend()
                    emit LOG_ZeroSend()
                    mem[mem[64]] = investors[1].field_0
                    mem[mem[64] + 32] = 0
                    mem[mem[64] + 64] = 3
                    emit 0xee06808e: investors[1].field_0, 0, 3
            else:
                if investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invest) < investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invest:
                    if invest < investors[stor3[investors[1].field_0]].field_256:
                        stor13 = 1
                        emit LOG_EmergencyAutoStop()
                    else:
                        invest -= investors[stor3[investors[1].field_0]].field_256
                        investors[stor3[investors[1].field_0]].field_0 = 0
                        investors[stor3[investors[1].field_0]].field_256 = 0
                        investors[stor3[investors[1].field_0]].field_512 = 0
                        mem[0] = investors[1].field_0
                        mem[32] = 3
                        investorIDs[stor4[1].field_0] = 0
                        if investorIDs[stor4[1].field_0] != investorsNum:
                            investorIDs[stor4[stor6].field_0] = investorIDs[stor4[1].field_0]
                            mem[32] = 4
                            investors[stor3[investors[1].field_0]].field_0 = investors[stor6].field_0
                            investors[stor3[investors[1].field_0]].field_256 = investors[stor6].field_256
                            investors[stor3[investors[1].field_0]].field_512 = investors[stor6].field_512
                            mem[0] = investorsNum
                            investors[stor6].field_0 = 0
                            investors[stor6].field_256 = 0
                            investors[stor6].field_512 = 0
                        investorsNum--
                        emit LOG_ZeroSend()
                        emit LOG_ZeroSend()
                        mem[mem[64]] = investors[1].field_0
                        mem[mem[64] + 32] = 0
                        mem[mem[64] + 64] = 3
                        emit 0xee06808e: investors[1].field_0, 0, 3
                else:
                    if invest < investors[stor3[investors[1].field_0]].field_256:
                        stor13 = 1
                        emit LOG_EmergencyAutoStop()
                    else:
                        invest -= investors[stor3[investors[1].field_0]].field_256
                        investors[stor3[investors[1].field_0]].field_0 = 0
                        investors[stor3[investors[1].field_0]].field_256 = 0
                        investors[stor3[investors[1].field_0]].field_512 = 0
                        mem[0] = investors[1].field_0
                        mem[32] = 3
                        investorIDs[stor4[1].field_0] = 0
                        if investorIDs[stor4[1].field_0] != investorsNum:
                            investorIDs[stor4[stor6].field_0] = investorIDs[stor4[1].field_0]
                            mem[32] = 4
                            investors[stor3[investors[1].field_0]].field_0 = investors[stor6].field_0
                            investors[stor3[investors[1].field_0]].field_256 = investors[stor6].field_256
                            investors[stor3[investors[1].field_0]].field_512 = investors[stor6].field_512
                            mem[0] = investorsNum
                            investors[stor6].field_0 = 0
                            investors[stor6].field_256 = 0
                            investors[stor6].field_512 = 0
                        investorsNum--
                        if not investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invest) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invest) - ((investors[stor3[investors[1].field_0]].field_256 * divestFee) + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invest * divestFee) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invest * divestFee) / 10000):
                            emit LOG_ZeroSend()
                        else:
                            require ext_code.size(sub_a498742bAddress)
                            call sub_a498742bAddress.0x70a08231 with:
                                 gas gas_remaining - 710 wei
                                args address(this.address)
                            require ext_call.success
                            if ext_call.return_data[0] < investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invest) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invest) - ((investors[stor3[investors[1].field_0]].field_256 * divestFee) + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invest * divestFee) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invest * divestFee) / 10000):
                                emit LOG_ValueIsTooBig()
                            else:
                                require ext_code.size(sub_a498742bAddress)
                                call sub_a498742bAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args investors[1].field_0, investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invest) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invest) - ((investors[stor3[investors[1].field_0]].field_256 * divestFee) + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invest * divestFee) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invest * divestFee) / 10000)
                                require ext_call.success
                                emit LOG_SuccessfulSend(investors[1].field_0, investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invest) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invest) - ((investors[stor3[investors[1].field_0]].field_256 * divestFee) + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invest * divestFee) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invest * divestFee) / 10000));
                        if not (investors[stor3[investors[1].field_0]].field_256 * divestFee) + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invest * divestFee) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invest * divestFee) / 10000:
                            emit LOG_ZeroSend()
                        else:
                            require ext_code.size(sub_a498742bAddress)
                            call sub_a498742bAddress.0x70a08231 with:
                                 gas gas_remaining - 710 wei
                                args address(this.address)
                            require ext_call.success
                            if ext_call.return_data[0] < (investors[stor3[investors[1].field_0]].field_256 * divestFee) + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invest * divestFee) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invest * divestFee) / 10000:
                                emit LOG_ValueIsTooBig()
                            else:
                                require ext_code.size(sub_a498742bAddress)
                                call sub_a498742bAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args houseAddress, (investors[stor3[investors[1].field_0]].field_256 * divestFee) + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invest * divestFee) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invest * divestFee) / 10000
                                require ext_call.success
                                emit LOG_SuccessfulSend(houseAddress, (investors[stor3[investors[1].field_0]].field_256 * divestFee) + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invest * divestFee) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invest * divestFee) / 10000);
                        mem[mem[64]] = investors[1].field_0
                        mem[mem[64] + 32] = investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invest) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invest) - ((investors[stor3[investors[1].field_0]].field_256 * divestFee) + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invest * divestFee) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invest * divestFee) / 10000)
                        mem[mem[64] + 64] = 3
                        emit 0xee06808e: investors[1].field_0, investors[stor3[investors[1].field_0]].field_256 + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invest) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invest) - ((investors[stor3[investors[1].field_0]].field_256 * divestFee) + (investorsProfit * investors[stor3[investors[1].field_0]].field_256 / invest * divestFee) - (investorsLosses * investors[stor3[investors[1].field_0]].field_256 / invest * divestFee) / 10000), 3
        idx = idx + 1
        continue 
}

function addInvest(address arg1, uint256 arg2) {
    require ext_code.size(sub_a498742bAddress)
    call sub_a498742bAddress.0xc1a4e416 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require msg.sender == ext_call.return_data[12 len 20]
    require not stor13
    if investorIDs[address(arg1)] > 0:
        if not stor10:
            s = 0
            s = 0
            s = 0
            idx = 1
            s = 0
            while idx <= investorsNum:
                require invest
                if investors[idx].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) < investors[idx].field_256:
                    stor13 = 1
                    emit LOG_EmergencyAutoStop()
                else:
                    if (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) + investors[idx].field_256 < investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invest:
                        stor13 = 1
                        emit LOG_EmergencyAutoStop()
                    else:
                        investors[idx].field_256 = (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) - (investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invest) + investors[idx].field_256
                        mem[96] = investors[idx].field_0
                        mem[128] = (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) - (investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invest)
                        emit LOG_InvestorCapitalUpdate(investors[idx].field_0, (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) - (investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invest));
                mem[0] = idx
                mem[32] = 4
                if s + investors[idx].field_256 < s:
                    s = investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invest
                    s = investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest
                    s = investors[idx].field_0
                    idx = idx + 1
                    s = s
                    continue 
                mem[0] = idx
                mem[32] = 4
                s = investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invest
                s = investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest
                s = investors[idx].field_0
                idx = idx + 1
                s = investors[idx].field_256 + s
                continue 
            investorsProfit = 0
            investorsLosses = 0
            invest = s
            stor10 = 1
        investors[stor3[address(arg1)]].field_256 += arg2
        investors[stor3[address(arg1)]].field_512 += arg2
        invest += arg2
        emit 0xee06808e: address(arg1), arg2, 2
    else:
        if investorsNum != maxInvestors:
            require arg2 > 0
        else:
            idx = investorsNum
            while idx >= 1:
                require invest
                if investors[stor3[investors[stor6].field_0]].field_256 + (investorsProfit * investors[stor3[investors[stor6].field_0]].field_256 / invest) < investorsProfit * investors[stor3[investors[stor6].field_0]].field_256 / invest:
                    require invest
                    mem[0] = investorIDs[stor4[idx].field_0]
                    mem[32] = 4
                    if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) < investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest:
                        idx = idx - 1
                        continue 
                    else:
                        if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) < investors[stor3[investors[idx].field_0]].field_256:
                            idx = idx - 1
                            continue 
                        else:
                            if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) >= investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invest:
                                if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) - (investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invest) >= 0:
                                    idx = idx - 1
                                    continue 
                                else:
                                    idx = idx - 1
                                    continue 
                            else:
                                idx = idx - 1
                                continue 
                else:
                    if investors[stor3[investors[stor6].field_0]].field_256 + (investorsProfit * investors[stor3[investors[stor6].field_0]].field_256 / invest) < investors[stor3[investors[stor6].field_0]].field_256:
                        require invest
                        mem[0] = investorIDs[stor4[idx].field_0]
                        mem[32] = 4
                        if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) < investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest:
                            idx = idx - 1
                            continue 
                        else:
                            if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) < investors[stor3[investors[idx].field_0]].field_256:
                                idx = idx - 1
                                continue 
                            else:
                                if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) >= investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invest:
                                    if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) - (investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invest) >= 0:
                                        idx = idx - 1
                                        continue 
                                    else:
                                        idx = idx - 1
                                        continue 
                                else:
                                    idx = idx - 1
                                    continue 
                    else:
                        if investors[stor3[investors[stor6].field_0]].field_256 + (investorsProfit * investors[stor3[investors[stor6].field_0]].field_256 / invest) >= investorsLosses * investors[stor3[investors[stor6].field_0]].field_256 / invest:
                            require invest
                            mem[0] = investorIDs[stor4[idx].field_0]
                            mem[32] = 4
                            if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) < investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest:
                                if 0 >= investors[stor3[investors[stor6].field_0]].field_256 + (investorsProfit * investors[stor3[investors[stor6].field_0]].field_256 / invest) - (investorsLosses * investors[stor3[investors[stor6].field_0]].field_256 / invest):
                                    idx = idx - 1
                                    continue 
                                else:
                                    idx = idx - 1
                                    continue 
                            else:
                                if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) < investors[stor3[investors[idx].field_0]].field_256:
                                    if 0 >= investors[stor3[investors[stor6].field_0]].field_256 + (investorsProfit * investors[stor3[investors[stor6].field_0]].field_256 / invest) - (investorsLosses * investors[stor3[investors[stor6].field_0]].field_256 / invest):
                                        idx = idx - 1
                                        continue 
                                    else:
                                        idx = idx - 1
                                        continue 
                                else:
                                    if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) >= investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invest:
                                        if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) - (investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invest) >= investors[stor3[investors[stor6].field_0]].field_256 + (investorsProfit * investors[stor3[investors[stor6].field_0]].field_256 / invest) - (investorsLosses * investors[stor3[investors[stor6].field_0]].field_256 / invest):
                                            idx = idx - 1
                                            continue 
                                        else:
                                            idx = idx - 1
                                            continue 
                                    else:
                                        if 0 >= investors[stor3[investors[stor6].field_0]].field_256 + (investorsProfit * investors[stor3[investors[stor6].field_0]].field_256 / invest) - (investorsLosses * investors[stor3[investors[stor6].field_0]].field_256 / invest):
                                            idx = idx - 1
                                            continue 
                                        else:
                                            idx = idx - 1
                                            continue 
                        else:
                            require invest
                            mem[0] = investorIDs[stor4[idx].field_0]
                            mem[32] = 4
                            if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) < investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest:
                                idx = idx - 1
                                continue 
                            else:
                                if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) < investors[stor3[investors[idx].field_0]].field_256:
                                    idx = idx - 1
                                    continue 
                                else:
                                    if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) >= investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invest:
                                        if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) - (investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invest) >= 0:
                                            idx = idx - 1
                                            continue 
                                        else:
                                            idx = idx - 1
                                            continue 
                                    else:
                                        idx = idx - 1
                                        continue 
            require invest
            if investors[stor3[investors[stor6].field_0]].field_256 + (investorsProfit * investors[stor3[investors[stor6].field_0]].field_256 / invest) < investorsProfit * investors[stor3[investors[stor6].field_0]].field_256 / invest:
                require arg2 > 0
            else:
                if investors[stor3[investors[stor6].field_0]].field_256 + (investorsProfit * investors[stor3[investors[stor6].field_0]].field_256 / invest) < investors[stor3[investors[stor6].field_0]].field_256:
                    require arg2 > 0
                else:
                    if investors[stor3[investors[stor6].field_0]].field_256 + (investorsProfit * investors[stor3[investors[stor6].field_0]].field_256 / invest) >= investorsLosses * investors[stor3[investors[stor6].field_0]].field_256 / invest:
                        require arg2 > investors[stor3[investors[stor6].field_0]].field_256 + (investorsProfit * investors[stor3[investors[stor6].field_0]].field_256 / invest) - (investorsLosses * investors[stor3[investors[stor6].field_0]].field_256 / invest)
                    else:
                        require arg2 > 0
        if not stor10:
            s = 0
            s = 0
            s = 0
            idx = 1
            s = 0
            while idx <= investorsNum:
                require invest
                if investors[idx].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) < investors[idx].field_256:
                    stor13 = 1
                    emit LOG_EmergencyAutoStop()
                else:
                    if (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) + investors[idx].field_256 < investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invest:
                        stor13 = 1
                        emit LOG_EmergencyAutoStop()
                    else:
                        investors[idx].field_256 = (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) - (investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invest) + investors[idx].field_256
                        mem[96] = investors[idx].field_0
                        mem[128] = (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) - (investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invest)
                        emit LOG_InvestorCapitalUpdate(investors[idx].field_0, (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) - (investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invest));
                mem[0] = idx
                mem[32] = 4
                if s + investors[idx].field_256 < s:
                    s = investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invest
                    s = investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest
                    s = investors[idx].field_0
                    idx = idx + 1
                    s = s
                    continue 
                mem[0] = idx
                mem[32] = 4
                s = investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invest
                s = investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest
                s = investors[idx].field_0
                idx = idx + 1
                s = investors[idx].field_256 + s
                continue 
            investorsProfit = 0
            investorsLosses = 0
            invest = s
            stor10 = 1
        if investorsNum == maxInvestors:
            idx = investorsNum
            while idx >= 1:
                require invest
                if investors[stor3[investors[stor6].field_0]].field_256 + (investorsProfit * investors[stor3[investors[stor6].field_0]].field_256 / invest) < investorsProfit * investors[stor3[investors[stor6].field_0]].field_256 / invest:
                    require invest
                    mem[0] = investorIDs[stor4[idx].field_0]
                    mem[32] = 4
                    if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) < investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest:
                        idx = idx - 1
                        continue 
                    else:
                        if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) < investors[stor3[investors[idx].field_0]].field_256:
                            idx = idx - 1
                            continue 
                        else:
                            if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) >= investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invest:
                                if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) - (investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invest) >= 0:
                                    idx = idx - 1
                                    continue 
                                else:
                                    idx = idx - 1
                                    continue 
                            else:
                                idx = idx - 1
                                continue 
                else:
                    if investors[stor3[investors[stor6].field_0]].field_256 + (investorsProfit * investors[stor3[investors[stor6].field_0]].field_256 / invest) < investors[stor3[investors[stor6].field_0]].field_256:
                        require invest
                        mem[0] = investorIDs[stor4[idx].field_0]
                        mem[32] = 4
                        if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) < investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest:
                            idx = idx - 1
                            continue 
                        else:
                            if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) < investors[stor3[investors[idx].field_0]].field_256:
                                idx = idx - 1
                                continue 
                            else:
                                if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) >= investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invest:
                                    if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) - (investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invest) >= 0:
                                        idx = idx - 1
                                        continue 
                                    else:
                                        idx = idx - 1
                                        continue 
                                else:
                                    idx = idx - 1
                                    continue 
                    else:
                        if investors[stor3[investors[stor6].field_0]].field_256 + (investorsProfit * investors[stor3[investors[stor6].field_0]].field_256 / invest) >= investorsLosses * investors[stor3[investors[stor6].field_0]].field_256 / invest:
                            require invest
                            mem[0] = investorIDs[stor4[idx].field_0]
                            mem[32] = 4
                            if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) < investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest:
                                if 0 >= investors[stor3[investors[stor6].field_0]].field_256 + (investorsProfit * investors[stor3[investors[stor6].field_0]].field_256 / invest) - (investorsLosses * investors[stor3[investors[stor6].field_0]].field_256 / invest):
                                    idx = idx - 1
                                    continue 
                                else:
                                    idx = idx - 1
                                    continue 
                            else:
                                if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) < investors[stor3[investors[idx].field_0]].field_256:
                                    if 0 >= investors[stor3[investors[stor6].field_0]].field_256 + (investorsProfit * investors[stor3[investors[stor6].field_0]].field_256 / invest) - (investorsLosses * investors[stor3[investors[stor6].field_0]].field_256 / invest):
                                        idx = idx - 1
                                        continue 
                                    else:
                                        idx = idx - 1
                                        continue 
                                else:
                                    if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) >= investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invest:
                                        if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) - (investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invest) >= investors[stor3[investors[stor6].field_0]].field_256 + (investorsProfit * investors[stor3[investors[stor6].field_0]].field_256 / invest) - (investorsLosses * investors[stor3[investors[stor6].field_0]].field_256 / invest):
                                            idx = idx - 1
                                            continue 
                                        else:
                                            idx = idx - 1
                                            continue 
                                    else:
                                        if 0 >= investors[stor3[investors[stor6].field_0]].field_256 + (investorsProfit * investors[stor3[investors[stor6].field_0]].field_256 / invest) - (investorsLosses * investors[stor3[investors[stor6].field_0]].field_256 / invest):
                                            idx = idx - 1
                                            continue 
                                        else:
                                            idx = idx - 1
                                            continue 
                        else:
                            require invest
                            mem[0] = investorIDs[stor4[idx].field_0]
                            mem[32] = 4
                            if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) < investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest:
                                idx = idx - 1
                                continue 
                            else:
                                if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) < investors[stor3[investors[idx].field_0]].field_256:
                                    idx = idx - 1
                                    continue 
                                else:
                                    if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) >= investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invest:
                                        if investors[stor3[investors[idx].field_0]].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) - (investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invest) >= 0:
                                            idx = idx - 1
                                            continue 
                                        else:
                                            idx = idx - 1
                                            continue 
                                    else:
                                        idx = idx - 1
                                        continue 
            if not stor10:
                s = 0
                s = 0
                s = 0
                idx = 1
                s = 0
                while idx <= investorsNum:
                    require invest
                    if investors[idx].field_256 + (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) < investors[idx].field_256:
                        stor13 = 1
                        emit LOG_EmergencyAutoStop()
                    else:
                        if (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) + investors[idx].field_256 < investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invest:
                            stor13 = 1
                            emit LOG_EmergencyAutoStop()
                        else:
                            investors[idx].field_256 = (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) - (investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invest) + investors[idx].field_256
                            mem[96] = investors[idx].field_0
                            mem[128] = (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) - (investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invest)
                            emit LOG_InvestorCapitalUpdate(investors[idx].field_0, (investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest) - (investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invest));
                    mem[0] = idx
                    mem[32] = 4
                    if s + investors[idx].field_256 < s:
                        s = investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invest
                        s = investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest
                        s = investors[idx].field_0
                        idx = idx + 1
                        s = s
                        continue 
                    mem[0] = idx
                    mem[32] = 4
                    s = investorsLosses * investors[stor3[investors[idx].field_0]].field_256 / invest
                    s = investorsProfit * investors[stor3[investors[idx].field_0]].field_256 / invest
                    s = investors[idx].field_0
                    idx = idx + 1
                    s = investors[idx].field_256 + s
                    continue 
                investorsProfit = 0
                investorsLosses = 0
                invest = s
                stor10 = 1
            require invest
            if investors[stor3[investors[stor6].field_0]].field_256 + (investorsProfit * investors[stor3[investors[stor6].field_0]].field_256 / invest) < investorsProfit * investors[stor3[investors[stor6].field_0]].field_256 / invest:
                if invest < investors[stor3[investors[stor6].field_0]].field_256:
                    stor13 = 1
                    emit LOG_EmergencyAutoStop()
                else:
                    invest -= investors[stor3[investors[stor6].field_0]].field_256
                    investors[stor3[investors[stor6].field_0]].field_0 = 0
                    investors[stor3[investors[stor6].field_0]].field_256 = 0
                    investors[stor3[investors[stor6].field_0]].field_512 = 0
                    investorIDs[stor4[stor6].field_0] = 0
                    if investorIDs[stor4[stor6].field_0] != investorsNum:
                        investors[stor3[investors[stor6].field_0]].field_0 = investors[stor6].field_0
                        investors[stor3[investors[stor6].field_0]].field_256 = investors[stor6].field_256
                        investors[stor3[investors[stor6].field_0]].field_512 = investors[stor6].field_512
                        investors[stor6].field_0 = 0
                        investors[stor6].field_256 = 0
                        investors[stor6].field_512 = 0
                    investorsNum--
                    emit LOG_ZeroSend()
                    emit LOG_ZeroSend()
                    emit 0xee06808e: investors[stor6].field_0, 0, 3
            else:
                if investors[stor3[investors[stor6].field_0]].field_256 + (investorsProfit * investors[stor3[investors[stor6].field_0]].field_256 / invest) < investors[stor3[investors[stor6].field_0]].field_256:
                    if invest < investors[stor3[investors[stor6].field_0]].field_256:
                        stor13 = 1
                        emit LOG_EmergencyAutoStop()
                    else:
                        invest -= investors[stor3[investors[stor6].field_0]].field_256
                        investors[stor3[investors[stor6].field_0]].field_0 = 0
                        investors[stor3[investors[stor6].field_0]].field_256 = 0
                        investors[stor3[investors[stor6].field_0]].field_512 = 0
                        investorIDs[stor4[stor6].field_0] = 0
                        if investorIDs[stor4[stor6].field_0] != investorsNum:
                            investors[stor3[investors[stor6].field_0]].field_0 = investors[stor6].field_0
                            investors[stor3[investors[stor6].field_0]].field_256 = investors[stor6].field_256
                            investors[stor3[investors[stor6].field_0]].field_512 = investors[stor6].field_512
                            investors[stor6].field_0 = 0
                            investors[stor6].field_256 = 0
                            investors[stor6].field_512 = 0
                        investorsNum--
                        emit LOG_ZeroSend()
                        emit LOG_ZeroSend()
                        emit 0xee06808e: investors[stor6].field_0, 0, 3
                else:
                    if investors[stor3[investors[stor6].field_0]].field_256 + (investorsProfit * investors[stor3[investors[stor6].field_0]].field_256 / invest) < investorsLosses * investors[stor3[investors[stor6].field_0]].field_256 / invest:
                        if invest < investors[stor3[investors[stor6].field_0]].field_256:
                            stor13 = 1
                            emit LOG_EmergencyAutoStop()
                        else:
                            invest -= investors[stor3[investors[stor6].field_0]].field_256
                            investors[stor3[investors[stor6].field_0]].field_0 = 0
                            investors[stor3[investors[stor6].field_0]].field_256 = 0
                            investors[stor3[investors[stor6].field_0]].field_512 = 0
                            investorIDs[stor4[stor6].field_0] = 0
                            if investorIDs[stor4[stor6].field_0] != investorsNum:
                                investors[stor3[investors[stor6].field_0]].field_0 = investors[stor6].field_0
                                investors[stor3[investors[stor6].field_0]].field_256 = investors[stor6].field_256
                                investors[stor3[investors[stor6].field_0]].field_512 = investors[stor6].field_512
                                investors[stor6].field_0 = 0
                                investors[stor6].field_256 = 0
                                investors[stor6].field_512 = 0
                            investorsNum--
                            emit LOG_ZeroSend()
                            emit LOG_ZeroSend()
                            emit 0xee06808e: investors[stor6].field_0, 0, 3
                    else:
                        if invest < investors[stor3[investors[stor6].field_0]].field_256:
                            stor13 = 1
                            emit LOG_EmergencyAutoStop()
                        else:
                            invest -= investors[stor3[investors[stor6].field_0]].field_256
                            investors[stor3[investors[stor6].field_0]].field_0 = 0
                            investors[stor3[investors[stor6].field_0]].field_256 = 0
                            investors[stor3[investors[stor6].field_0]].field_512 = 0
                            investorIDs[stor4[stor6].field_0] = 0
                            if investorIDs[stor4[stor6].field_0] != investorsNum:
                                investors[stor3[investors[stor6].field_0]].field_0 = investors[stor6].field_0
                                investors[stor3[investors[stor6].field_0]].field_256 = investors[stor6].field_256
                                investors[stor3[investors[stor6].field_0]].field_512 = investors[stor6].field_512
                                investors[stor6].field_0 = 0
                                investors[stor6].field_256 = 0
                                investors[stor6].field_512 = 0
                            investorsNum--
                            if not investors[stor3[investors[stor6].field_0]].field_256 + (investorsProfit * investors[stor3[investors[stor6].field_0]].field_256 / invest) - (investorsLosses * investors[stor3[investors[stor6].field_0]].field_256 / invest) - ((investors[stor3[investors[stor6].field_0]].field_256 * divestFee) + (investorsProfit * investors[stor3[investors[stor6].field_0]].field_256 / invest * divestFee) - (investorsLosses * investors[stor3[investors[stor6].field_0]].field_256 / invest * divestFee) / 10000):
                                emit LOG_ZeroSend()
                            else:
                                require ext_code.size(sub_a498742bAddress)
                                call sub_a498742bAddress.0x70a08231 with:
                                     gas gas_remaining - 710 wei
                                    args this.address
                                require ext_call.success
                                if ext_call.return_data[0] < investors[stor3[investors[stor6].field_0]].field_256 + (investorsProfit * investors[stor3[investors[stor6].field_0]].field_256 / invest) - (investorsLosses * investors[stor3[investors[stor6].field_0]].field_256 / invest) - ((investors[stor3[investors[stor6].field_0]].field_256 * divestFee) + (investorsProfit * investors[stor3[investors[stor6].field_0]].field_256 / invest * divestFee) - (investorsLosses * investors[stor3[investors[stor6].field_0]].field_256 / invest * divestFee) / 10000):
                                    emit LOG_ValueIsTooBig()
                                else:
                                    require ext_code.size(sub_a498742bAddress)
                                    call sub_a498742bAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args investors[stor6].field_0, investors[stor3[investors[stor6].field_0]].field_256 + (investorsProfit * investors[stor3[investors[stor6].field_0]].field_256 / invest) - (investorsLosses * investors[stor3[investors[stor6].field_0]].field_256 / invest) - ((investors[stor3[investors[stor6].field_0]].field_256 * divestFee) + (investorsProfit * investors[stor3[investors[stor6].field_0]].field_256 / invest * divestFee) - (investorsLosses * investors[stor3[investors[stor6].field_0]].field_256 / invest * divestFee) / 10000)
                                    require ext_call.success
                                    emit LOG_SuccessfulSend(investors[stor6].field_0, investors[stor3[investors[stor6].field_0]].field_256 + (investorsProfit * investors[stor3[investors[stor6].field_0]].field_256 / invest) - (investorsLosses * investors[stor3[investors[stor6].field_0]].field_256 / invest) - ((investors[stor3[investors[stor6].field_0]].field_256 * divestFee) + (investorsProfit * investors[stor3[investors[stor6].field_0]].field_256 / invest * divestFee) - (investorsLosses * investors[stor3[investors[stor6].field_0]].field_256 / invest * divestFee) / 10000));
                            if not (investors[stor3[investors[stor6].field_0]].field_256 * divestFee) + (investorsProfit * investors[stor3[investors[stor6].field_0]].field_256 / invest * divestFee) - (investorsLosses * investors[stor3[investors[stor6].field_0]].field_256 / invest * divestFee) / 10000:
                                emit LOG_ZeroSend()
                            else:
                                require ext_code.size(sub_a498742bAddress)
                                call sub_a498742bAddress.0x70a08231 with:
                                     gas gas_remaining - 710 wei
                                    args this.address
                                require ext_call.success
                                if ext_call.return_data[0] < (investors[stor3[investors[stor6].field_0]].field_256 * divestFee) + (investorsProfit * investors[stor3[investors[stor6].field_0]].field_256 / invest * divestFee) - (investorsLosses * investors[stor3[investors[stor6].field_0]].field_256 / invest * divestFee) / 10000:
                                    emit LOG_ValueIsTooBig()
                                else:
                                    require ext_code.size(sub_a498742bAddress)
                                    call sub_a498742bAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args houseAddress, (investors[stor3[investors[stor6].field_0]].field_256 * divestFee) + (investorsProfit * investors[stor3[investors[stor6].field_0]].field_256 / invest * divestFee) - (investorsLosses * investors[stor3[investors[stor6].field_0]].field_256 / invest * divestFee) / 10000
                                    require ext_call.success
                                    emit LOG_SuccessfulSend(houseAddress, (investors[stor3[investors[stor6].field_0]].field_256 * divestFee) + (investorsProfit * investors[stor3[investors[stor6].field_0]].field_256 / invest * divestFee) - (investorsLosses * investors[stor3[investors[stor6].field_0]].field_256 / invest * divestFee) / 10000);
                            emit 0xee06808e: investors[stor6].field_0, investors[stor3[investors[stor6].field_0]].field_256 + (investorsProfit * investors[stor3[investors[stor6].field_0]].field_256 / invest) - (investorsLosses * investors[stor3[investors[stor6].field_0]].field_256 / invest) - ((investors[stor3[investors[stor6].field_0]].field_256 * divestFee) + (investorsProfit * investors[stor3[investors[stor6].field_0]].field_256 / invest * divestFee) - (investorsLosses * investors[stor3[investors[stor6].field_0]].field_256 / invest * divestFee) / 10000), 3
        investorsNum++
        investorIDs[address(arg1)] = investorsNum + 1
        investors[stor6 + 1].field_0 = arg1
        investors[stor6 + 1].field_256 = arg2
        investors[stor6 + 1].field_512 = arg2
        invest += arg2
        emit 0xee06808e: address(arg1), arg2, 1
}



}
