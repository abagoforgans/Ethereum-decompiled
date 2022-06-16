contract main {




// =====================  Runtime code  =====================


mapping of address management;
mapping of uint256 manVault;
mapping of uint256 price;
uint256 totalSupplyShares;
uint256 ethPendingManagement;
mapping of uint256 bondsOutstanding;
uint256 totalSupplyBonds;
mapping of uint256 playerVault;
mapping of uint256 piggyBank;
mapping of uint256 pendingFills;
mapping of uint256 playerId;
mapping of address idToAdress;
uint256 nextPlayerID;
mapping of uint8 stor13;
mapping of uint256 percentageToReinvest;
uint256 sub_cd68b5a6;
uint256 stor16; offset 1
uint256 sub_790ecceb;
uint256 exitPot;
uint256 pointMultiplier;
mapping of struct stor19;
uint256 totalDividendPoints;
uint256 unclaimedDividends;
uint256 stor4DB6;
uint256 stor74A5;
uint256 stor7DFE;
uint256 stor8F33;
uint256 storD9D1;
uint256 storDC68;
uint256 storE268;
uint256 storEDC9;

function totalDividendPoints() {
    return totalDividendPoints
}

function nextPlayerID() {
    return nextPlayerID
}

function price(uint256 arg1) {
    return price[arg1]
}

function IdToAdress(uint256 arg1) {
    return idToAdress[arg1]
}

function unclaimedDividends() {
    return unclaimedDividends
}

function playerId(address arg1) {
    return playerId[arg1]
}

function manVault(uint256 arg1) {
    return manVault[arg1]
}

function exitPot() {
    return exitPot
}

function percentageToReinvest(address arg1) {
    return percentageToReinvest[arg1]
}

function management(uint256 arg1) {
    return address(management[arg1])
}

function pointMultiplier() {
    return pointMultiplier
}

function sub_790ecceb(?) {
    return sub_790ecceb
}

function pendingFills(address arg1) {
    return pendingFills[arg1]
}

function ethPendingManagement() {
    return ethPendingManagement
}

function playerVault(address arg1) {
    return playerVault[arg1]
}

function totalSupplyShares() {
    return totalSupplyShares
}

function sub_cd68b5a6(?) {
    return sub_cd68b5a6
}

function totalSupplyBonds() {
    return totalSupplyBonds
}

function bondsOutstanding(address arg1) {
    return bondsOutstanding[arg1]
}

function allowAutoInvest(address arg1) {
    return bool(stor13[arg1])
}

function piggyBank(address arg1) {
    return piggyBank[arg1]
}

function _fallback() payable {
  stop
}

function disableAuto() {
    stor13[msg.sender] = 0
}

function fetchDataMain() {
    return sub_cd68b5a6, ethPendingManagement, sub_790ecceb
}

function setAuto(uint256 arg1) {
    stor13[msg.sender] = 1
    require arg1 <= 100
    require arg1 > 0
    percentageToReinvest[msg.sender] = arg1
}

function dividendsOwing(address arg1) {
    require stor19[address(arg1)] <= totalDividendPoints
    require pointMultiplier
    return ((totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor19[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier)
}

function piggyToWallet() {
    require 0 < piggyBank[msg.sender]
    piggyBank[address(msg.sender)] = 0
    call msg.sender with:
       value piggyBank[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit cashout(msg.sender, piggyBank[address(msg.sender)]);
}

function vaultToWallet() {
    require 0 < playerVault[msg.sender]
    playerVault[address(msg.sender)] = 0
    call msg.sender with:
       value playerVault[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit cashout(msg.sender, playerVault[address(msg.sender)]);
}

function managementWithdraw(uint256 arg1) {
    require arg1 < 10
    require manVault[arg1] > 0
    manVault[arg1] = 0
    call address(management[arg1]) with:
       value manVault[arg1] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit cashout(address(management[arg1]), manVault[arg1]);
}

function PendinglinesToLines() {
    require sub_790ecceb > 1000
    sub_790ecceb = 0
    require ext_code.size(0xfaae60f2ce6491886c9f7c9356bd92f688ca66a1)
    call 0xfaae60f2ce6491886c9f7c9356bd92f688ca66a1.disburse() with:
       value stor16 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require stor16 + exitPot >= exitPot
    exitPot += stor16
}

function getManagementInfo() {
    mem[448] = 20
    mem[480 len 640] = code.data[9874 len 640]
    idx = 0
    s = 0
    t = 0
    while idx < 10:
        require t < 10
        mem[(32 * t) + 128] = address(management[t])
        require s < mem[448]
        mem[(32 * s) + 480] = price[t]
        mem[0] = t
        mem[32] = 1
        require s + 1 < mem[448]
        mem[(32 * s + 1) + 480] = manVault[t]
        idx = idx + 1
        s = s + 2
        t = t + 1
        continue 
    mem[1120] = 64
    mem[1184] = 10
    mem[1216 len 0] = None
    mem[1152] = 416
    mem[1536] = mem[448]
    mem[1568 len floor32(mem[448])] = mem[480 len floor32(mem[448])]
    return 64, 416, 10, mem[1216 len (32 * mem[448]) + 352]
}

function buyCEO() payable {
    require msg.value >= price[0]
    if not msg.value / 20:
        require manVault[0] >= manVault[0]
        playerVault[address(stor0[0])] += manVault[0]
    else:
        require 19 * msg.value / 20 / msg.value / 20 == 19
        require (19 * msg.value / 20) + manVault[0] >= manVault[0]
        playerVault[address(stor0[0])] = (19 * msg.value / 20) + manVault[0] + playerVault[address(stor0[0])]
    manVault[0] = 0
    emit 0x2a596372: address(management[0]), msg.sender, msg.value
    uint256(management[0]) = msg.sender or Mask(96, 160, uint256(management[0]))
    require (msg.value / 20) + sub_cd68b5a6 >= sub_cd68b5a6
    sub_cd68b5a6 += msg.value / 20
    if not price[0]:
        price[0] = 0
    else:
        require 11 * price[0] / price[0] == 11
        price[0] = 11 * price[0] / 10
}

function buyDirector(uint256 arg1) payable {
    require arg1 > 0
    require arg1 < 10
    require msg.value >= price[arg1]
    if not msg.value / 20:
        require manVault[arg1] >= manVault[arg1]
        playerVault[address(stor0[arg1])] += manVault[arg1]
    else:
        require 19 * msg.value / 20 / msg.value / 20 == 19
        require (19 * msg.value / 20) + manVault[arg1] >= manVault[arg1]
        playerVault[address(stor0[arg1])] = (19 * msg.value / 20) + manVault[arg1] + playerVault[address(stor0[arg1])]
    manVault[arg1] = 0
    emit 0xcbe1582f: arg1, address(management[arg1]), msg.sender, msg.value
    uint256(management[arg1]) = msg.sender or Mask(96, 160, uint256(management[arg1]))
    require (msg.value / 20) + sub_cd68b5a6 >= sub_cd68b5a6
    sub_cd68b5a6 += msg.value / 20
    if not price[arg1]:
        price[arg1] = 0
    else:
        require 11 * price[arg1] / price[arg1] == 11
        price[arg1] = 11 * price[arg1] / 10
}

function fetchdivs(address arg1) {
    require stor19[address(arg1)] <= totalDividendPoints
    require pointMultiplier
    if (totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor19[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier > 0:
        require (totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor19[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier <= unclaimedDividends
        unclaimedDividends -= (totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor19[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier
        require ((totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor19[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier) + pendingFills[address(arg1)] >= pendingFills[address(arg1)]
        pendingFills[address(arg1)] += (totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor19[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier
    stor19[address(arg1)] = totalDividendPoints
}

function ethPropagate() {
    require sub_cd68b5a6 > 0
    sub_cd68b5a6 = 0
    require (sub_cd68b5a6 / 100) + ethPendingManagement >= ethPendingManagement
    ethPendingManagement += sub_cd68b5a6 / 100
    if not sub_cd68b5a6 / 100:
        require totalSupplyBonds > 0
        require totalSupplyBonds
        require (0 / totalSupplyBonds) + totalDividendPoints >= totalDividendPoints
        totalDividendPoints += 0 / totalSupplyBonds
        require unclaimedDividends >= unclaimedDividends
        emit 0xc9cd0231 
        emit 0x0 
    else:
        require 98 * sub_cd68b5a6 / 100 / sub_cd68b5a6 / 100 == 98
        if not 98 * sub_cd68b5a6 / 100:
            require totalSupplyBonds > 0
            require totalSupplyBonds
            require (0 / totalSupplyBonds) + totalDividendPoints >= totalDividendPoints
            totalDividendPoints += 0 / totalSupplyBonds
        else:
            require 98 * pointMultiplier * sub_cd68b5a6 / 100 / 98 * sub_cd68b5a6 / 100 == pointMultiplier
            require totalSupplyBonds > 0
            require totalSupplyBonds
            require (98 * pointMultiplier * sub_cd68b5a6 / 100 / totalSupplyBonds) + totalDividendPoints >= totalDividendPoints
            totalDividendPoints += 98 * pointMultiplier * sub_cd68b5a6 / 100 / totalSupplyBonds
        require (98 * sub_cd68b5a6 / 100) + unclaimedDividends >= unclaimedDividends
        unclaimedDividends += 98 * sub_cd68b5a6 / 100
        emit 0xc9cd0231: 98 * sub_cd68b5a6 / 100
    require (sub_cd68b5a6 / 100) + sub_790ecceb >= sub_790ecceb
    sub_790ecceb += sub_cd68b5a6 / 100
}

function ExitPlincWithLoss(uint256 arg1) {
    require stor19[address(msg.sender)] <= totalDividendPoints
    require pointMultiplier
    if (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor19[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier > 0:
        require (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor19[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier <= unclaimedDividends
        unclaimedDividends -= (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor19[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier
        require ((totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor19[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier) + pendingFills[address(msg.sender)] >= pendingFills[address(msg.sender)]
        pendingFills[address(msg.sender)] += (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor19[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier
    stor19[address(msg.sender)] = totalDividendPoints
    require arg1 <= bondsOutstanding[msg.sender]
    require exitPot > 0
    require exitPot
    require arg1 <= bondsOutstanding[address(msg.sender)]
    bondsOutstanding[address(msg.sender)] -= arg1
    require arg1 <= totalSupplyBonds
    totalSupplyBonds -= arg1
    require totalSupplyBonds / exitPot > 0
    require totalSupplyBonds / exitPot
    require (arg1 / totalSupplyBonds / exitPot) + playerVault[address(msg.sender)] >= playerVault[address(msg.sender)]
    playerVault[address(msg.sender)] += arg1 / totalSupplyBonds / exitPot
}

function ethManagementPropagate() {
    require ethPendingManagement > 0
    ethPendingManagement = 0
    if ethPendingManagement / 100:
        require 30 * ethPendingManagement / 100 / ethPendingManagement / 100 == 30
        manVault[0] += 30 * ethPendingManagement / 100
        if ethPendingManagement / 100:
            require 20 * ethPendingManagement / 100 / ethPendingManagement / 100 == 20
            manVault[1] += 20 * ethPendingManagement / 100
            if ethPendingManagement / 100:
                require 15 * ethPendingManagement / 100 / ethPendingManagement / 100 == 15
                storD9D1 += 15 * ethPendingManagement / 100
                if ethPendingManagement / 100:
                    require 12 * ethPendingManagement / 100 / ethPendingManagement / 100 == 12
                    stor7DFE += 12 * ethPendingManagement / 100
                    if ethPendingManagement / 100:
                        require 8 * ethPendingManagement / 100 / ethPendingManagement / 100 == 8
                        storEDC9 += 8 * ethPendingManagement / 100
                        if ethPendingManagement / 100:
                            require 5 * ethPendingManagement / 100 / ethPendingManagement / 100 == 5
                            storE268 += 5 * ethPendingManagement / 100
                            if ethPendingManagement / 100:
                                require 4 * ethPendingManagement / 100 / ethPendingManagement / 100 == 4
                                stor8F33 += 4 * ethPendingManagement / 100
                                if ethPendingManagement / 100:
                                    require 3 * ethPendingManagement / 100 / ethPendingManagement / 100 == 3
                                    storDC68 += 3 * ethPendingManagement / 100
                                    if ethPendingManagement / 100:
                                        require 2 * ethPendingManagement / 100 / ethPendingManagement / 100 == 2
                                        stor4DB6 += 2 * ethPendingManagement / 100
                                        if ethPendingManagement / 100:
                                            require ethPendingManagement / 100 / ethPendingManagement / 100 == 1
                                            stor74A5 += ethPendingManagement / 100
}

function fillBonds(address arg1) {
    require stor19[address(msg.sender)] <= totalDividendPoints
    require pointMultiplier
    if (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor19[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier > 0:
        require (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor19[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier <= unclaimedDividends
        unclaimedDividends -= (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor19[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier
        require ((totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor19[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier) + pendingFills[address(msg.sender)] >= pendingFills[address(msg.sender)]
        pendingFills[address(msg.sender)] += (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor19[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier
    stor19[address(msg.sender)] = totalDividendPoints
    require stor19[address(arg1)] <= totalDividendPoints
    require pointMultiplier
    if (totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor19[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier > 0:
        require (totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor19[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier <= unclaimedDividends
        unclaimedDividends -= (totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor19[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier
        require ((totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor19[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier) + pendingFills[address(arg1)] >= pendingFills[address(arg1)]
        pendingFills[address(arg1)] += (totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor19[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier
    stor19[address(arg1)] = totalDividendPoints
    require 1000 < bondsOutstanding[address(arg1)]
    require pendingFills[address(arg1)] > 1000
    require pendingFills[address(arg1)] <= bondsOutstanding[address(arg1)]
    pendingFills[address(arg1)] = 0
    require pendingFills[address(arg1)] <= bondsOutstanding[address(arg1)]
    bondsOutstanding[address(arg1)] -= pendingFills[address(arg1)]
    require (pendingFills[address(arg1)] / 1000) + bondsOutstanding[msg.sender] >= bondsOutstanding[msg.sender]
    bondsOutstanding[msg.sender] += pendingFills[address(arg1)] / 1000
    require pendingFills[address(arg1)] <= totalSupplyBonds
    require pendingFills[address(arg1)] / 1000 >= 0
    totalSupplyBonds = (pendingFills[address(arg1)] / 1000) + totalSupplyBonds - pendingFills[address(arg1)]
    require pendingFills[address(arg1)] + playerVault[address(arg1)] >= playerVault[address(arg1)]
    playerVault[address(arg1)] += pendingFills[address(arg1)]
    emit 0x515e6acb: arg1, pendingFills[address(arg1)]
}

function freelanceFillBonds(address arg1) {
    require stor19[address(arg1)] <= totalDividendPoints
    require pointMultiplier
    if (totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor19[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier > 0:
        require (totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor19[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier <= unclaimedDividends
        unclaimedDividends -= (totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor19[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier
        require ((totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor19[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier) + pendingFills[address(arg1)] >= pendingFills[address(arg1)]
        pendingFills[address(arg1)] += (totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor19[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier
    stor19[address(arg1)] = totalDividendPoints
    require stor19[address(msg.sender)] <= totalDividendPoints
    require pointMultiplier
    if (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor19[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier > 0:
        require (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor19[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier <= unclaimedDividends
        unclaimedDividends -= (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor19[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier
        require ((totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor19[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier) + pendingFills[address(msg.sender)] >= pendingFills[address(msg.sender)]
        pendingFills[address(msg.sender)] += (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor19[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier
    stor19[address(msg.sender)] = totalDividendPoints
    require stor19[address(arg1)] <= totalDividendPoints
    require pointMultiplier
    if (totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor19[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier > 0:
        require (totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor19[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier <= unclaimedDividends
        unclaimedDividends -= (totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor19[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier
        require ((totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor19[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier) + pendingFills[address(arg1)] >= pendingFills[address(arg1)]
        pendingFills[address(arg1)] += (totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor19[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier
    stor19[address(arg1)] = totalDividendPoints
    require 1000 < bondsOutstanding[address(arg1)]
    require pendingFills[address(arg1)] > 1000
    require pendingFills[address(arg1)] <= bondsOutstanding[address(arg1)]
    pendingFills[address(arg1)] = 0
    require pendingFills[address(arg1)] <= bondsOutstanding[address(arg1)]
    bondsOutstanding[address(arg1)] -= pendingFills[address(arg1)]
    require (pendingFills[address(arg1)] / 1000) + bondsOutstanding[msg.sender] >= bondsOutstanding[msg.sender]
    bondsOutstanding[msg.sender] += pendingFills[address(arg1)] / 1000
    require pendingFills[address(arg1)] <= totalSupplyBonds
    require pendingFills[address(arg1)] / 1000 >= 0
    totalSupplyBonds = (pendingFills[address(arg1)] / 1000) + totalSupplyBonds - pendingFills[address(arg1)]
    require pendingFills[address(arg1)] + playerVault[address(arg1)] >= playerVault[address(arg1)]
    playerVault[address(arg1)] += pendingFills[address(arg1)]
    emit 0x515e6acb: arg1, pendingFills[address(arg1)]
}

function buyBonds(address arg1) payable {
    require stor19[address(msg.sender)] <= totalDividendPoints
    require pointMultiplier
    if (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor19[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier > 0:
        require (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor19[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier <= unclaimedDividends
        unclaimedDividends -= (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor19[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier
        require ((totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor19[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier) + pendingFills[address(msg.sender)] >= pendingFills[address(msg.sender)]
        pendingFills[address(msg.sender)] += (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor19[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier
    stor19[address(msg.sender)] = totalDividendPoints
    require stor19[address(arg1)] <= totalDividendPoints
    require pointMultiplier
    if (totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor19[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier > 0:
        require (totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor19[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier <= unclaimedDividends
        unclaimedDividends -= (totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor19[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier
        require ((totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor19[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier) + pendingFills[address(arg1)] >= pendingFills[address(arg1)]
        pendingFills[address(arg1)] += (totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor19[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier
    stor19[address(arg1)] = totalDividendPoints
    require msg.value > 0
    require arg1
    if not msg.value:
        require bondsOutstanding[address(msg.sender)] >= bondsOutstanding[address(msg.sender)]
        emit 0x8299cb53: msg.sender, 0
        if not msg.value:
            require bondsOutstanding[address(arg1)] >= bondsOutstanding[address(arg1)]
        else:
            require 2 * msg.value / msg.value == 2
            require (2 * msg.value / 100) + bondsOutstanding[address(arg1)] >= bondsOutstanding[address(arg1)]
            bondsOutstanding[address(arg1)] += 2 * msg.value / 100
        if not msg.value:
            require totalSupplyBonds >= totalSupplyBonds
        else:
            require 2 * msg.value / msg.value == 2
            require 2 * msg.value / 100 >= 0
            require (2 * msg.value / 100) + totalSupplyBonds >= totalSupplyBonds
            totalSupplyBonds += 2 * msg.value / 100
    else:
        require 11 * msg.value / msg.value == 11
        require (11 * msg.value / 10) + bondsOutstanding[address(msg.sender)] >= bondsOutstanding[address(msg.sender)]
        bondsOutstanding[address(msg.sender)] += 11 * msg.value / 10
        emit 0x8299cb53: msg.sender, 11 * msg.value / 10
        if not msg.value:
            require bondsOutstanding[address(arg1)] >= bondsOutstanding[address(arg1)]
        else:
            require 2 * msg.value / msg.value == 2
            require (2 * msg.value / 100) + bondsOutstanding[address(arg1)] >= bondsOutstanding[address(arg1)]
            bondsOutstanding[address(arg1)] += 2 * msg.value / 100
        if not msg.value:
            require 11 * msg.value / 10 >= 11 * msg.value / 10
            require (11 * msg.value / 10) + totalSupplyBonds >= totalSupplyBonds
            totalSupplyBonds += 11 * msg.value / 10
        else:
            require 2 * msg.value / msg.value == 2
            require (2 * msg.value / 100) + (11 * msg.value / 10) >= 11 * msg.value / 10
            require (2 * msg.value / 100) + (11 * msg.value / 10) + totalSupplyBonds >= totalSupplyBonds
            totalSupplyBonds = (2 * msg.value / 100) + (11 * msg.value / 10) + totalSupplyBonds
    if not msg.value / 100:
        require sub_cd68b5a6 >= sub_cd68b5a6
    else:
        require 100 * msg.value / 100 / msg.value / 100 == 100
        require (100 * msg.value / 100) + sub_cd68b5a6 >= sub_cd68b5a6
        sub_cd68b5a6 += 100 * msg.value / 100
    if not playerId[address(msg.sender)]:
        playerId[address(msg.sender)] = nextPlayerID
        idToAdress[stor12] = msg.sender
        nextPlayerID++
}

function forceBonds(address arg1) {
    require stor19[address(msg.sender)] <= totalDividendPoints
    require pointMultiplier
    if (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor19[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier > 0:
        require (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor19[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier <= unclaimedDividends
        unclaimedDividends -= (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor19[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier
        require ((totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor19[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier) + pendingFills[address(msg.sender)] >= pendingFills[address(msg.sender)]
        pendingFills[address(msg.sender)] += (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor19[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier
    stor19[address(msg.sender)] = totalDividendPoints
    require stor19[address(arg1)] <= totalDividendPoints
    require pointMultiplier
    if (totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor19[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier > 0:
        require (totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor19[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier <= unclaimedDividends
        unclaimedDividends -= (totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor19[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier
        require ((totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor19[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier) + pendingFills[address(arg1)] >= pendingFills[address(arg1)]
        pendingFills[address(arg1)] += (totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor19[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier
    stor19[address(arg1)] = totalDividendPoints
    require 1000 < bondsOutstanding[address(arg1)]
    require 1000 < pendingFills[address(arg1)]
    require pendingFills[address(arg1)] > bondsOutstanding[address(arg1)]
    require bondsOutstanding[address(arg1)] <= pendingFills[address(arg1)]
    require bondsOutstanding[address(arg1)] <= pendingFills[address(arg1)]
    pendingFills[address(arg1)] -= bondsOutstanding[address(arg1)]
    if not pendingFills[address(arg1)] - bondsOutstanding[address(arg1)]:
        if pendingFills[address(arg1)] - bondsOutstanding[address(arg1)]:
            require 2 * pendingFills[address(arg1)] - bondsOutstanding[address(arg1)] / pendingFills[address(arg1)] - bondsOutstanding[address(arg1)] == 2
            bondsOutstanding[msg.sender] += 2 * pendingFills[address(arg1)] - bondsOutstanding[address(arg1)] / 100
        if pendingFills[address(arg1)] - bondsOutstanding[address(arg1)]:
            require 2 * pendingFills[address(arg1)] - bondsOutstanding[address(arg1)] / pendingFills[address(arg1)] - bondsOutstanding[address(arg1)] == 2
            require 2 * pendingFills[address(arg1)] - bondsOutstanding[address(arg1)] / 100 >= 0
            totalSupplyBonds += 2 * pendingFills[address(arg1)] - bondsOutstanding[address(arg1)] / 100
        if pendingFills[address(arg1)] - bondsOutstanding[address(arg1)] / 100:
            require 100 * pendingFills[address(arg1)] - bondsOutstanding[address(arg1)] / 100 / pendingFills[address(arg1)] - bondsOutstanding[address(arg1)] / 100 == 100
            sub_cd68b5a6 += 100 * pendingFills[address(arg1)] - bondsOutstanding[address(arg1)] / 100
        emit 0x8299cb53: arg1, 0
    else:
        require (11 * pendingFills[address(arg1)]) - (11 * bondsOutstanding[address(arg1)]) / pendingFills[address(arg1)] - bondsOutstanding[address(arg1)] == 11
        bondsOutstanding[address(arg1)] += (11 * pendingFills[address(arg1)]) - (11 * bondsOutstanding[address(arg1)]) / 10
        if pendingFills[address(arg1)] - bondsOutstanding[address(arg1)]:
            require 2 * pendingFills[address(arg1)] - bondsOutstanding[address(arg1)] / pendingFills[address(arg1)] - bondsOutstanding[address(arg1)] == 2
            bondsOutstanding[msg.sender] += 2 * pendingFills[address(arg1)] - bondsOutstanding[address(arg1)] / 100
        if not pendingFills[address(arg1)] - bondsOutstanding[address(arg1)]:
            require (11 * pendingFills[address(arg1)]) - (11 * bondsOutstanding[address(arg1)]) / 10 >= (11 * pendingFills[address(arg1)]) - (11 * bondsOutstanding[address(arg1)]) / 10
            totalSupplyBonds += (11 * pendingFills[address(arg1)]) - (11 * bondsOutstanding[address(arg1)]) / 10
        else:
            require 2 * pendingFills[address(arg1)] - bondsOutstanding[address(arg1)] / pendingFills[address(arg1)] - bondsOutstanding[address(arg1)] == 2
            require (2 * pendingFills[address(arg1)] - bondsOutstanding[address(arg1)] / 100) + ((11 * pendingFills[address(arg1)]) - (11 * bondsOutstanding[address(arg1)]) / 10) >= (11 * pendingFills[address(arg1)]) - (11 * bondsOutstanding[address(arg1)]) / 10
            totalSupplyBonds = (2 * pendingFills[address(arg1)] - bondsOutstanding[address(arg1)] / 100) + ((11 * pendingFills[address(arg1)]) - (11 * bondsOutstanding[address(arg1)]) / 10) + totalSupplyBonds
        if pendingFills[address(arg1)] - bondsOutstanding[address(arg1)] / 100:
            require 100 * pendingFills[address(arg1)] - bondsOutstanding[address(arg1)] / 100 / pendingFills[address(arg1)] - bondsOutstanding[address(arg1)] / 100 == 100
            sub_cd68b5a6 += 100 * pendingFills[address(arg1)] - bondsOutstanding[address(arg1)] / 100
        emit 0x8299cb53: arg1, (11 * pendingFills[address(arg1)]) - (11 * bondsOutstanding[address(arg1)]) / 10
}

function freelanceReinvest(address arg1) {
    require stor19[address(msg.sender)] <= totalDividendPoints
    require pointMultiplier
    if (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor19[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier > 0:
        require (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor19[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier <= unclaimedDividends
        unclaimedDividends -= (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor19[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier
        require ((totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor19[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier) + pendingFills[address(msg.sender)] >= pendingFills[address(msg.sender)]
        pendingFills[address(msg.sender)] += (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor19[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier
    stor19[address(msg.sender)] = totalDividendPoints
    require stor19[address(arg1)] <= totalDividendPoints
    require pointMultiplier
    if (totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor19[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier > 0:
        require (totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor19[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier <= unclaimedDividends
        unclaimedDividends -= (totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor19[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier
        require ((totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor19[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier) + pendingFills[address(arg1)] >= pendingFills[address(arg1)]
        pendingFills[address(arg1)] += (totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor19[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier
    stor19[address(arg1)] = totalDividendPoints
    require bool(stor13[address(arg1)]) == 1
    require 100000 < playerVault[address(arg1)]
    playerVault[address(arg1)] = 0
    if not playerVault[address(arg1)] / 100000:
        require bondsOutstanding[address(arg1)] >= bondsOutstanding[address(arg1)]
        require bondsOutstanding[msg.sender] >= bondsOutstanding[msg.sender]
        bondsOutstanding[address(msg.sender)] = bondsOutstanding[msg.sender]
        require totalSupplyBonds >= totalSupplyBonds
        require sub_cd68b5a6 >= sub_cd68b5a6
        if 100 > percentageToReinvest[address(arg1)]:
            require 0 <= playerVault[address(arg1)]
            require playerVault[address(arg1)] + piggyBank[address(arg1)] >= piggyBank[address(arg1)]
            piggyBank[address(arg1)] += playerVault[address(arg1)]
        emit 0x8299cb53: arg1, 0
    else:
        require percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000 / playerVault[address(arg1)] / 100000 == percentageToReinvest[address(arg1)]
        if not percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000:
            require bondsOutstanding[address(arg1)] >= bondsOutstanding[address(arg1)]
            require (percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000) + bondsOutstanding[msg.sender] >= bondsOutstanding[msg.sender]
            bondsOutstanding[address(msg.sender)] = (percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000) + bondsOutstanding[msg.sender]
            require percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000 >= 0
            require (percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000) + totalSupplyBonds >= totalSupplyBonds
            totalSupplyBonds += percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000
            require sub_cd68b5a6 >= sub_cd68b5a6
            if 100 > percentageToReinvest[address(arg1)]:
                require 0 <= playerVault[address(arg1)]
                require playerVault[address(arg1)] + piggyBank[address(arg1)] >= piggyBank[address(arg1)]
                piggyBank[address(arg1)] += playerVault[address(arg1)]
            emit 0x8299cb53: arg1, 0
        else:
            require 1000 * percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000 / percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000 == 1000
            if not 1000 * percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000:
                require bondsOutstanding[address(arg1)] >= bondsOutstanding[address(arg1)]
                require (percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000) + bondsOutstanding[msg.sender] >= bondsOutstanding[msg.sender]
                bondsOutstanding[address(msg.sender)] = (percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000) + bondsOutstanding[msg.sender]
                require percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000 >= 0
                require (percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000) + totalSupplyBonds >= totalSupplyBonds
                totalSupplyBonds += percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000
                require (1000 * percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000) + sub_cd68b5a6 >= sub_cd68b5a6
                sub_cd68b5a6 += 1000 * percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000
                if 100 > percentageToReinvest[address(arg1)]:
                    require 1000 * percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000 <= playerVault[address(arg1)]
                    require playerVault[address(arg1)] - (1000 * percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000) + piggyBank[address(arg1)] >= piggyBank[address(arg1)]
                    piggyBank[address(arg1)] = playerVault[address(arg1)] - (1000 * percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000) + piggyBank[address(arg1)]
                emit 0x8299cb53: arg1, 0
            else:
                require 1099000 * percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000 / 1000 * percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000 == 1099
                require (1099000 * percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000 / 1000) + bondsOutstanding[address(arg1)] >= bondsOutstanding[address(arg1)]
                bondsOutstanding[address(arg1)] += 1099000 * percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000 / 1000
                require (percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000) + bondsOutstanding[msg.sender] >= bondsOutstanding[msg.sender]
                bondsOutstanding[address(msg.sender)] = (percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000) + bondsOutstanding[msg.sender]
                require (percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000) + (1099000 * percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000 / 1000) >= 1099000 * percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000 / 1000
                require (percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000) + (1099000 * percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000 / 1000) + totalSupplyBonds >= totalSupplyBonds
                totalSupplyBonds = (percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000) + (1099000 * percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000 / 1000) + totalSupplyBonds
                require (1000 * percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000) + sub_cd68b5a6 >= sub_cd68b5a6
                sub_cd68b5a6 += 1000 * percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000
                if 100 > percentageToReinvest[address(arg1)]:
                    require 1000 * percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000 <= playerVault[address(arg1)]
                    require playerVault[address(arg1)] - (1000 * percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000) + piggyBank[address(arg1)] >= piggyBank[address(arg1)]
                    piggyBank[address(arg1)] = playerVault[address(arg1)] - (1000 * percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000) + piggyBank[address(arg1)]
                emit 0x8299cb53: arg1, 1099000 * percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000 / 1000
}

function freelancePlayer(address arg1) {
    require stor19[address(msg.sender)] <= totalDividendPoints
    require pointMultiplier
    if (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor19[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier > 0:
        require (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor19[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier <= unclaimedDividends
        unclaimedDividends -= (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor19[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier
        require ((totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor19[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier) + pendingFills[address(msg.sender)] >= pendingFills[address(msg.sender)]
        pendingFills[address(msg.sender)] += (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor19[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier
    stor19[address(msg.sender)] = totalDividendPoints
    require stor19[address(arg1)] <= totalDividendPoints
    require pointMultiplier
    if (totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor19[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier > 0:
        require (totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor19[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier <= unclaimedDividends
        unclaimedDividends -= (totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor19[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier
        require ((totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor19[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier) + pendingFills[address(arg1)] >= pendingFills[address(arg1)]
        pendingFills[address(arg1)] += (totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor19[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier
    stor19[address(arg1)] = totalDividendPoints
    require 1000 < bondsOutstanding[address(arg1)]
    require pendingFills[address(arg1)] > 1000
    require pendingFills[address(arg1)] <= bondsOutstanding[address(arg1)]
    pendingFills[address(arg1)] = 0
    require pendingFills[address(arg1)] <= bondsOutstanding[address(arg1)]
    bondsOutstanding[address(arg1)] -= pendingFills[address(arg1)]
    require (pendingFills[address(arg1)] / 1000) + bondsOutstanding[msg.sender] >= bondsOutstanding[msg.sender]
    bondsOutstanding[msg.sender] += pendingFills[address(arg1)] / 1000
    require pendingFills[address(arg1)] <= totalSupplyBonds
    require pendingFills[address(arg1)] / 1000 >= 0
    totalSupplyBonds = (pendingFills[address(arg1)] / 1000) + totalSupplyBonds - pendingFills[address(arg1)]
    require pendingFills[address(arg1)] + playerVault[address(arg1)] >= playerVault[address(arg1)]
    playerVault[address(arg1)] += pendingFills[address(arg1)]
    emit 0x515e6acb: arg1, pendingFills[address(arg1)]
    require stor19[address(msg.sender)] <= totalDividendPoints
    require pointMultiplier
    if (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor19[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier > 0:
        require (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor19[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier <= unclaimedDividends
        unclaimedDividends -= (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor19[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier
        require ((totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor19[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier) + pendingFills[address(msg.sender)] >= pendingFills[address(msg.sender)]
        pendingFills[address(msg.sender)] += (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor19[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier
    stor19[address(msg.sender)] = totalDividendPoints
    require stor19[address(arg1)] <= totalDividendPoints
    require pointMultiplier
    if (totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor19[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier > 0:
        require (totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor19[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier <= unclaimedDividends
        unclaimedDividends -= (totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor19[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier
        require ((totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor19[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier) + pendingFills[address(arg1)] >= pendingFills[address(arg1)]
        pendingFills[address(arg1)] += (totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor19[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier
    stor19[address(arg1)] = totalDividendPoints
    require bool(stor13[address(arg1)]) == 1
    require 100000 < playerVault[address(arg1)]
    playerVault[address(arg1)] = 0
    if not playerVault[address(arg1)] / 100000:
        require bondsOutstanding[address(arg1)] >= bondsOutstanding[address(arg1)]
        require bondsOutstanding[msg.sender] >= bondsOutstanding[msg.sender]
        bondsOutstanding[address(msg.sender)] = bondsOutstanding[msg.sender]
        require totalSupplyBonds >= totalSupplyBonds
        require sub_cd68b5a6 >= sub_cd68b5a6
        if 100 > percentageToReinvest[address(arg1)]:
            require 0 <= playerVault[address(arg1)]
            require playerVault[address(arg1)] + piggyBank[address(arg1)] >= piggyBank[address(arg1)]
            piggyBank[address(arg1)] += playerVault[address(arg1)]
        emit 0x8299cb53: arg1, 0
    else:
        require percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000 / playerVault[address(arg1)] / 100000 == percentageToReinvest[address(arg1)]
        if not percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000:
            require bondsOutstanding[address(arg1)] >= bondsOutstanding[address(arg1)]
            require (percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000) + bondsOutstanding[msg.sender] >= bondsOutstanding[msg.sender]
            bondsOutstanding[address(msg.sender)] = (percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000) + bondsOutstanding[msg.sender]
            require percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000 >= 0
            require (percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000) + totalSupplyBonds >= totalSupplyBonds
            totalSupplyBonds += percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000
            require sub_cd68b5a6 >= sub_cd68b5a6
            if 100 > percentageToReinvest[address(arg1)]:
                require 0 <= playerVault[address(arg1)]
                require playerVault[address(arg1)] + piggyBank[address(arg1)] >= piggyBank[address(arg1)]
                piggyBank[address(arg1)] += playerVault[address(arg1)]
            emit 0x8299cb53: arg1, 0
        else:
            require 1000 * percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000 / percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000 == 1000
            if not 1000 * percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000:
                require bondsOutstanding[address(arg1)] >= bondsOutstanding[address(arg1)]
                require (percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000) + bondsOutstanding[msg.sender] >= bondsOutstanding[msg.sender]
                bondsOutstanding[address(msg.sender)] = (percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000) + bondsOutstanding[msg.sender]
                require percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000 >= 0
                require (percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000) + totalSupplyBonds >= totalSupplyBonds
                totalSupplyBonds += percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000
                require (1000 * percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000) + sub_cd68b5a6 >= sub_cd68b5a6
                sub_cd68b5a6 += 1000 * percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000
                if 100 > percentageToReinvest[address(arg1)]:
                    require 1000 * percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000 <= playerVault[address(arg1)]
                    require playerVault[address(arg1)] - (1000 * percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000) + piggyBank[address(arg1)] >= piggyBank[address(arg1)]
                    piggyBank[address(arg1)] = playerVault[address(arg1)] - (1000 * percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000) + piggyBank[address(arg1)]
                emit 0x8299cb53: arg1, 0
            else:
                require 1099000 * percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000 / 1000 * percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000 == 1099
                require (1099000 * percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000 / 1000) + bondsOutstanding[address(arg1)] >= bondsOutstanding[address(arg1)]
                bondsOutstanding[address(arg1)] += 1099000 * percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000 / 1000
                require (percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000) + bondsOutstanding[msg.sender] >= bondsOutstanding[msg.sender]
                bondsOutstanding[address(msg.sender)] = (percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000) + bondsOutstanding[msg.sender]
                require (percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000) + (1099000 * percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000 / 1000) >= 1099000 * percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000 / 1000
                require (percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000) + (1099000 * percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000 / 1000) + totalSupplyBonds >= totalSupplyBonds
                totalSupplyBonds = (percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000) + (1099000 * percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000 / 1000) + totalSupplyBonds
                require (1000 * percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000) + sub_cd68b5a6 >= sub_cd68b5a6
                sub_cd68b5a6 += 1000 * percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000
                if 100 > percentageToReinvest[address(arg1)]:
                    require 1000 * percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000 <= playerVault[address(arg1)]
                    require playerVault[address(arg1)] - (1000 * percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000) + piggyBank[address(arg1)] >= piggyBank[address(arg1)]
                    piggyBank[address(arg1)] = playerVault[address(arg1)] - (1000 * percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000) + piggyBank[address(arg1)]
                emit 0x8299cb53: arg1, 1099000 * percentageToReinvest[address(arg1)] * playerVault[address(arg1)] / 100000 / 1000
}

function getPlayerInfo() {
    if not nextPlayerID:
        mem[(32 * nextPlayerID) + 128] = 5 * nextPlayerID
        if not 5 * nextPlayerID:
            mem[(32 * nextPlayerID) + (32 * 5 * nextPlayerID) + 160] = nextPlayerID
            if not nextPlayerID:
                idx = 0
                s = 0
                t = 0
                while idx < nextPlayerID:
                    require t < nextPlayerID
                    mem[(32 * t) + 128] = idToAdress[t]
                    require s < mem[(32 * nextPlayerID) + 128]
                    mem[(32 * nextPlayerID) + (32 * s) + 160] = bondsOutstanding[stor11[t]]
                    require s + 1 < mem[(32 * nextPlayerID) + 128]
                    mem[(32 * nextPlayerID) + (32 * s + 1) + 160] = pendingFills[stor11[t]]
                    require s + 2 < mem[(32 * nextPlayerID) + 128]
                    mem[(32 * nextPlayerID) + (32 * s + 2) + 160] = playerVault[stor11[t]]
                    require s + 3 < mem[(32 * nextPlayerID) + 128]
                    mem[(32 * nextPlayerID) + (32 * s + 3) + 160] = percentageToReinvest[stor11[t]]
                    require stor19[stor11[t]] <= totalDividendPoints
                    require pointMultiplier
                    require s + 4 < mem[(32 * nextPlayerID) + 128]
                    mem[(32 * nextPlayerID) + (32 * s + 4) + 160] = (totalDividendPoints * bondsOutstanding[stor11[t]]) - (stor19[stor11[t]] * bondsOutstanding[stor11[t]]) / pointMultiplier
                    mem[0] = idToAdress[t]
                    mem[32] = 13
                    require t < mem[(32 * nextPlayerID) + (32 * 5 * nextPlayerID) + 160]
                    mem[(32 * nextPlayerID) + (32 * 5 * nextPlayerID) + (32 * t) + 192] = bool(stor13[stor11[t]])
                    idx = idx + 1
                    s = s + 5
                    t = t + 1
                    continue 
                mem[(64 * nextPlayerID) + (32 * 5 * nextPlayerID) + 192] = 96
                mem[(64 * nextPlayerID) + (32 * 5 * nextPlayerID) + 288] = nextPlayerID
                mem[(64 * nextPlayerID) + (32 * 5 * nextPlayerID) + 320 len floor32(nextPlayerID)] = mem[128 len floor32(nextPlayerID)]
                mem[(64 * nextPlayerID) + (32 * 5 * nextPlayerID) + 224] = (32 * nextPlayerID) + 128
                mem[(98 * nextPlayerID) + (32 * 5 * nextPlayerID) + 320] = mem[(32 * nextPlayerID) + 128]
                mem[(98 * nextPlayerID) + (32 * 5 * nextPlayerID) + 352 len floor32(mem[(32 * nextPlayerID) + 128])] = mem[(32 * nextPlayerID) + 160 len floor32(mem[(32 * nextPlayerID) + 128])]
                mem[(64 * nextPlayerID) + (32 * 5 * nextPlayerID) + 256] = (32 * mem[(32 * nextPlayerID) + 128]) + (32 * nextPlayerID) + 160
                mem[(32 * mem[(32 * nextPlayerID) + 128]) + (98 * nextPlayerID) + (32 * 5 * nextPlayerID) + 352] = mem[(32 * nextPlayerID) + (32 * 5 * nextPlayerID) + 160]
                _585 = mem[(32 * nextPlayerID) + (32 * 5 * nextPlayerID) + 160]
                mem[(32 * mem[(32 * nextPlayerID) + 128]) + (98 * nextPlayerID) + (32 * 5 * nextPlayerID) + 384 len floor32(mem[(32 * nextPlayerID) + (32 * 5 * nextPlayerID) + 160])] = mem[(32 * nextPlayerID) + (32 * 5 * nextPlayerID) + 192 len floor32(mem[(32 * nextPlayerID) + (32 * 5 * nextPlayerID) + 160])]
                return memory
                  from (64 * nextPlayerID) + (32 * 5 * nextPlayerID) + 192
                   len (32 * _585) + (32 * mem[(32 * nextPlayerID) + 128]) + (161 * nextPlayerID) + 192
            mem[(32 * nextPlayerID) + (32 * 5 * nextPlayerID) + 192 len 32 * nextPlayerID] = code.data[9874 len 32 * nextPlayerID]
            idx = 0
            s = 0
            t = 0
            while idx < nextPlayerID:
                require t < nextPlayerID
                mem[(32 * t) + 128] = idToAdress[t]
                require s < mem[(32 * nextPlayerID) + 128]
                mem[(32 * nextPlayerID) + (32 * s) + 160] = bondsOutstanding[stor11[t]]
                require s + 1 < mem[(32 * nextPlayerID) + 128]
                mem[(32 * nextPlayerID) + (32 * s + 1) + 160] = pendingFills[stor11[t]]
                require s + 2 < mem[(32 * nextPlayerID) + 128]
                mem[(32 * nextPlayerID) + (32 * s + 2) + 160] = playerVault[stor11[t]]
                require s + 3 < mem[(32 * nextPlayerID) + 128]
                mem[(32 * nextPlayerID) + (32 * s + 3) + 160] = percentageToReinvest[stor11[t]]
                require stor19[stor11[t]] <= totalDividendPoints
                require pointMultiplier
                require s + 4 < mem[(32 * nextPlayerID) + 128]
                mem[(32 * nextPlayerID) + (32 * s + 4) + 160] = (totalDividendPoints * bondsOutstanding[stor11[t]]) - (stor19[stor11[t]] * bondsOutstanding[stor11[t]]) / pointMultiplier
                mem[0] = idToAdress[t]
                mem[32] = 13
                require t < mem[(32 * nextPlayerID) + (32 * 5 * nextPlayerID) + 160]
                mem[(32 * nextPlayerID) + (32 * 5 * nextPlayerID) + (32 * t) + 192] = bool(stor13[stor11[t]])
                idx = idx + 1
                s = s + 5
                t = t + 1
                continue 
            mem[(64 * nextPlayerID) + (32 * 5 * nextPlayerID) + 192] = 96
            mem[(64 * nextPlayerID) + (32 * 5 * nextPlayerID) + 288] = nextPlayerID
            mem[(64 * nextPlayerID) + (32 * 5 * nextPlayerID) + 320 len floor32(nextPlayerID)] = mem[128 len floor32(nextPlayerID)]
            mem[(64 * nextPlayerID) + (32 * 5 * nextPlayerID) + 224] = (32 * nextPlayerID) + 128
            mem[(98 * nextPlayerID) + (32 * 5 * nextPlayerID) + 320] = mem[(32 * nextPlayerID) + 128]
            mem[(98 * nextPlayerID) + (32 * 5 * nextPlayerID) + 352 len floor32(mem[(32 * nextPlayerID) + 128])] = mem[(32 * nextPlayerID) + 160 len floor32(mem[(32 * nextPlayerID) + 128])]
            mem[(64 * nextPlayerID) + (32 * 5 * nextPlayerID) + 256] = (32 * mem[(32 * nextPlayerID) + 128]) + (32 * nextPlayerID) + 160
            mem[(32 * mem[(32 * nextPlayerID) + 128]) + (98 * nextPlayerID) + (32 * 5 * nextPlayerID) + 352] = mem[(32 * nextPlayerID) + (32 * 5 * nextPlayerID) + 160]
            _588 = mem[(32 * nextPlayerID) + (32 * 5 * nextPlayerID) + 160]
            mem[(32 * mem[(32 * nextPlayerID) + 128]) + (98 * nextPlayerID) + (32 * 5 * nextPlayerID) + 384 len floor32(mem[(32 * nextPlayerID) + (32 * 5 * nextPlayerID) + 160])] = mem[(32 * nextPlayerID) + (32 * 5 * nextPlayerID) + 192 len floor32(mem[(32 * nextPlayerID) + (32 * 5 * nextPlayerID) + 160])]
            return memory
              from (64 * nextPlayerID) + (32 * 5 * nextPlayerID) + 192
               len (32 * _588) + (32 * mem[(32 * nextPlayerID) + 128]) + (161 * nextPlayerID) + 192
        mem[(32 * nextPlayerID) + 160 len 32 * 5 * nextPlayerID] = code.data[9874 len 32 * 5 * nextPlayerID]
        mem[(32 * nextPlayerID) + (32 * 5 * nextPlayerID) + 160] = nextPlayerID
        if not nextPlayerID:
            idx = 0
            s = 0
            t = 0
            while idx < nextPlayerID:
                require t < nextPlayerID
                mem[(32 * t) + 128] = idToAdress[t]
                require s < mem[(32 * nextPlayerID) + 128]
                mem[(32 * nextPlayerID) + (32 * s) + 160] = bondsOutstanding[stor11[t]]
                require s + 1 < mem[(32 * nextPlayerID) + 128]
                mem[(32 * nextPlayerID) + (32 * s + 1) + 160] = pendingFills[stor11[t]]
                require s + 2 < mem[(32 * nextPlayerID) + 128]
                mem[(32 * nextPlayerID) + (32 * s + 2) + 160] = playerVault[stor11[t]]
                require s + 3 < mem[(32 * nextPlayerID) + 128]
                mem[(32 * nextPlayerID) + (32 * s + 3) + 160] = percentageToReinvest[stor11[t]]
                require stor19[stor11[t]] <= totalDividendPoints
                require pointMultiplier
                require s + 4 < mem[(32 * nextPlayerID) + 128]
                mem[(32 * nextPlayerID) + (32 * s + 4) + 160] = (totalDividendPoints * bondsOutstanding[stor11[t]]) - (stor19[stor11[t]] * bondsOutstanding[stor11[t]]) / pointMultiplier
                mem[0] = idToAdress[t]
                mem[32] = 13
                require t < mem[(32 * nextPlayerID) + (32 * 5 * nextPlayerID) + 160]
                mem[(32 * nextPlayerID) + (32 * 5 * nextPlayerID) + (32 * t) + 192] = bool(stor13[stor11[t]])
                idx = idx + 1
                s = s + 5
                t = t + 1
                continue 
            mem[(64 * nextPlayerID) + (32 * 5 * nextPlayerID) + 192] = 96
            mem[(64 * nextPlayerID) + (32 * 5 * nextPlayerID) + 288] = nextPlayerID
            mem[(64 * nextPlayerID) + (32 * 5 * nextPlayerID) + 320 len floor32(nextPlayerID)] = mem[128 len floor32(nextPlayerID)]
            mem[(64 * nextPlayerID) + (32 * 5 * nextPlayerID) + 224] = (32 * nextPlayerID) + 128
            mem[(98 * nextPlayerID) + (32 * 5 * nextPlayerID) + 320] = mem[(32 * nextPlayerID) + 128]
            mem[(98 * nextPlayerID) + (32 * 5 * nextPlayerID) + 352 len floor32(mem[(32 * nextPlayerID) + 128])] = mem[(32 * nextPlayerID) + 160 len floor32(mem[(32 * nextPlayerID) + 128])]
            mem[(64 * nextPlayerID) + (32 * 5 * nextPlayerID) + 256] = (32 * mem[(32 * nextPlayerID) + 128]) + (32 * nextPlayerID) + 160
            mem[(32 * mem[(32 * nextPlayerID) + 128]) + (98 * nextPlayerID) + (32 * 5 * nextPlayerID) + 352] = mem[(32 * nextPlayerID) + (32 * 5 * nextPlayerID) + 160]
            _591 = mem[(32 * nextPlayerID) + (32 * 5 * nextPlayerID) + 160]
            mem[(32 * mem[(32 * nextPlayerID) + 128]) + (98 * nextPlayerID) + (32 * 5 * nextPlayerID) + 384 len floor32(mem[(32 * nextPlayerID) + (32 * 5 * nextPlayerID) + 160])] = mem[(32 * nextPlayerID) + (32 * 5 * nextPlayerID) + 192 len floor32(mem[(32 * nextPlayerID) + (32 * 5 * nextPlayerID) + 160])]
            return memory
              from (64 * nextPlayerID) + (32 * 5 * nextPlayerID) + 192
               len (32 * _591) + (32 * mem[(32 * nextPlayerID) + 128]) + (161 * nextPlayerID) + 192
        mem[(32 * nextPlayerID) + (32 * 5 * nextPlayerID) + 192 len 32 * nextPlayerID] = code.data[9874 len 32 * nextPlayerID]
        idx = 0
        s = 0
        t = 0
        while idx < nextPlayerID:
            require t < nextPlayerID
            mem[(32 * t) + 128] = idToAdress[t]
            require s < mem[(32 * nextPlayerID) + 128]
            mem[(32 * nextPlayerID) + (32 * s) + 160] = bondsOutstanding[stor11[t]]
            require s + 1 < mem[(32 * nextPlayerID) + 128]
            mem[(32 * nextPlayerID) + (32 * s + 1) + 160] = pendingFills[stor11[t]]
            require s + 2 < mem[(32 * nextPlayerID) + 128]
            mem[(32 * nextPlayerID) + (32 * s + 2) + 160] = playerVault[stor11[t]]
            require s + 3 < mem[(32 * nextPlayerID) + 128]
            mem[(32 * nextPlayerID) + (32 * s + 3) + 160] = percentageToReinvest[stor11[t]]
            require stor19[stor11[t]] <= totalDividendPoints
            require pointMultiplier
            require s + 4 < mem[(32 * nextPlayerID) + 128]
            mem[(32 * nextPlayerID) + (32 * s + 4) + 160] = (totalDividendPoints * bondsOutstanding[stor11[t]]) - (stor19[stor11[t]] * bondsOutstanding[stor11[t]]) / pointMultiplier
            mem[0] = idToAdress[t]
            mem[32] = 13
            require t < mem[(32 * nextPlayerID) + (32 * 5 * nextPlayerID) + 160]
            mem[(32 * nextPlayerID) + (32 * 5 * nextPlayerID) + (32 * t) + 192] = bool(stor13[stor11[t]])
            idx = idx + 1
            s = s + 5
            t = t + 1
            continue 
        mem[(64 * nextPlayerID) + (32 * 5 * nextPlayerID) + 192] = 96
        mem[(64 * nextPlayerID) + (32 * 5 * nextPlayerID) + 288] = nextPlayerID
        mem[(64 * nextPlayerID) + (32 * 5 * nextPlayerID) + 320 len floor32(nextPlayerID)] = mem[128 len floor32(nextPlayerID)]
        mem[(64 * nextPlayerID) + (32 * 5 * nextPlayerID) + 224] = (32 * nextPlayerID) + 128
        mem[(98 * nextPlayerID) + (32 * 5 * nextPlayerID) + 320] = mem[(32 * nextPlayerID) + 128]
        mem[(98 * nextPlayerID) + (32 * 5 * nextPlayerID) + 352 len floor32(mem[(32 * nextPlayerID) + 128])] = mem[(32 * nextPlayerID) + 160 len floor32(mem[(32 * nextPlayerID) + 128])]
        mem[(64 * nextPlayerID) + (32 * 5 * nextPlayerID) + 256] = (32 * mem[(32 * nextPlayerID) + 128]) + (32 * nextPlayerID) + 160
        mem[(32 * mem[(32 * nextPlayerID) + 128]) + (98 * nextPlayerID) + (32 * 5 * nextPlayerID) + 352] = mem[(32 * nextPlayerID) + (32 * 5 * nextPlayerID) + 160]
        _594 = mem[(32 * nextPlayerID) + (32 * 5 * nextPlayerID) + 160]
        mem[(32 * mem[(32 * nextPlayerID) + 128]) + (98 * nextPlayerID) + (32 * 5 * nextPlayerID) + 384 len floor32(mem[(32 * nextPlayerID) + (32 * 5 * nextPlayerID) + 160])] = mem[(32 * nextPlayerID) + (32 * 5 * nextPlayerID) + 192 len floor32(mem[(32 * nextPlayerID) + (32 * 5 * nextPlayerID) + 160])]
        return memory
          from (64 * nextPlayerID) + (32 * 5 * nextPlayerID) + 192
           len (32 * _594) + (32 * mem[(32 * nextPlayerID) + 128]) + (161 * nextPlayerID) + 192
    mem[128 len 32 * nextPlayerID] = code.data[9874 len 32 * nextPlayerID]
    mem[(32 * nextPlayerID) + 128] = 5 * nextPlayerID
    if not 5 * nextPlayerID:
        mem[(32 * nextPlayerID) + (32 * 5 * nextPlayerID) + 160] = nextPlayerID
        if not nextPlayerID:
            idx = 0
            s = 0
            t = 0
            while idx < nextPlayerID:
                require t < nextPlayerID
                mem[(32 * t) + 128] = idToAdress[t]
                require s < mem[(32 * nextPlayerID) + 128]
                mem[(32 * nextPlayerID) + (32 * s) + 160] = bondsOutstanding[stor11[t]]
                require s + 1 < mem[(32 * nextPlayerID) + 128]
                mem[(32 * nextPlayerID) + (32 * s + 1) + 160] = pendingFills[stor11[t]]
                require s + 2 < mem[(32 * nextPlayerID) + 128]
                mem[(32 * nextPlayerID) + (32 * s + 2) + 160] = playerVault[stor11[t]]
                require s + 3 < mem[(32 * nextPlayerID) + 128]
                mem[(32 * nextPlayerID) + (32 * s + 3) + 160] = percentageToReinvest[stor11[t]]
                require stor19[stor11[t]] <= totalDividendPoints
                require pointMultiplier
                require s + 4 < mem[(32 * nextPlayerID) + 128]
                mem[(32 * nextPlayerID) + (32 * s + 4) + 160] = (totalDividendPoints * bondsOutstanding[stor11[t]]) - (stor19[stor11[t]] * bondsOutstanding[stor11[t]]) / pointMultiplier
                mem[0] = idToAdress[t]
                mem[32] = 13
                require t < mem[(32 * nextPlayerID) + (32 * 5 * nextPlayerID) + 160]
                mem[(32 * nextPlayerID) + (32 * 5 * nextPlayerID) + (32 * t) + 192] = bool(stor13[stor11[t]])
                idx = idx + 1
                s = s + 5
                t = t + 1
                continue 
            mem[(64 * nextPlayerID) + (32 * 5 * nextPlayerID) + 192] = 96
            mem[(64 * nextPlayerID) + (32 * 5 * nextPlayerID) + 288] = nextPlayerID
            mem[(64 * nextPlayerID) + (32 * 5 * nextPlayerID) + 320 len floor32(nextPlayerID)] = mem[128 len floor32(nextPlayerID)]
            mem[(64 * nextPlayerID) + (32 * 5 * nextPlayerID) + 224] = (32 * nextPlayerID) + 128
            mem[(98 * nextPlayerID) + (32 * 5 * nextPlayerID) + 320] = mem[(32 * nextPlayerID) + 128]
            mem[(98 * nextPlayerID) + (32 * 5 * nextPlayerID) + 352 len floor32(mem[(32 * nextPlayerID) + 128])] = mem[(32 * nextPlayerID) + 160 len floor32(mem[(32 * nextPlayerID) + 128])]
            mem[(64 * nextPlayerID) + (32 * 5 * nextPlayerID) + 256] = (32 * mem[(32 * nextPlayerID) + 128]) + (32 * nextPlayerID) + 160
            mem[(32 * mem[(32 * nextPlayerID) + 128]) + (98 * nextPlayerID) + (32 * 5 * nextPlayerID) + 352] = mem[(32 * nextPlayerID) + (32 * 5 * nextPlayerID) + 160]
            _597 = mem[(32 * nextPlayerID) + (32 * 5 * nextPlayerID) + 160]
            mem[(32 * mem[(32 * nextPlayerID) + 128]) + (98 * nextPlayerID) + (32 * 5 * nextPlayerID) + 384 len floor32(mem[(32 * nextPlayerID) + (32 * 5 * nextPlayerID) + 160])] = mem[(32 * nextPlayerID) + (32 * 5 * nextPlayerID) + 192 len floor32(mem[(32 * nextPlayerID) + (32 * 5 * nextPlayerID) + 160])]
            return memory
              from (64 * nextPlayerID) + (32 * 5 * nextPlayerID) + 192
               len (32 * _597) + (32 * mem[(32 * nextPlayerID) + 128]) + (161 * nextPlayerID) + 192
        mem[(32 * nextPlayerID) + (32 * 5 * nextPlayerID) + 192 len 32 * nextPlayerID] = code.data[9874 len 32 * nextPlayerID]
        idx = 0
        s = 0
        t = 0
        while idx < nextPlayerID:
            require t < nextPlayerID
            mem[(32 * t) + 128] = idToAdress[t]
            require s < mem[(32 * nextPlayerID) + 128]
            mem[(32 * nextPlayerID) + (32 * s) + 160] = bondsOutstanding[stor11[t]]
            require s + 1 < mem[(32 * nextPlayerID) + 128]
            mem[(32 * nextPlayerID) + (32 * s + 1) + 160] = pendingFills[stor11[t]]
            require s + 2 < mem[(32 * nextPlayerID) + 128]
            mem[(32 * nextPlayerID) + (32 * s + 2) + 160] = playerVault[stor11[t]]
            require s + 3 < mem[(32 * nextPlayerID) + 128]
            mem[(32 * nextPlayerID) + (32 * s + 3) + 160] = percentageToReinvest[stor11[t]]
            require stor19[stor11[t]] <= totalDividendPoints
            require pointMultiplier
            require s + 4 < mem[(32 * nextPlayerID) + 128]
            mem[(32 * nextPlayerID) + (32 * s + 4) + 160] = (totalDividendPoints * bondsOutstanding[stor11[t]]) - (stor19[stor11[t]] * bondsOutstanding[stor11[t]]) / pointMultiplier
            mem[0] = idToAdress[t]
            mem[32] = 13
            require t < mem[(32 * nextPlayerID) + (32 * 5 * nextPlayerID) + 160]
            mem[(32 * nextPlayerID) + (32 * 5 * nextPlayerID) + (32 * t) + 192] = bool(stor13[stor11[t]])
            idx = idx + 1
            s = s + 5
            t = t + 1
            continue 
        mem[(64 * nextPlayerID) + (32 * 5 * nextPlayerID) + 192] = 96
        mem[(64 * nextPlayerID) + (32 * 5 * nextPlayerID) + 288] = nextPlayerID
        mem[(64 * nextPlayerID) + (32 * 5 * nextPlayerID) + 320 len floor32(nextPlayerID)] = mem[128 len floor32(nextPlayerID)]
        mem[(64 * nextPlayerID) + (32 * 5 * nextPlayerID) + 224] = (32 * nextPlayerID) + 128
        mem[(98 * nextPlayerID) + (32 * 5 * nextPlayerID) + 320] = mem[(32 * nextPlayerID) + 128]
        mem[(98 * nextPlayerID) + (32 * 5 * nextPlayerID) + 352 len floor32(mem[(32 * nextPlayerID) + 128])] = mem[(32 * nextPlayerID) + 160 len floor32(mem[(32 * nextPlayerID) + 128])]
        mem[(64 * nextPlayerID) + (32 * 5 * nextPlayerID) + 256] = (32 * mem[(32 * nextPlayerID) + 128]) + (32 * nextPlayerID) + 160
        mem[(32 * mem[(32 * nextPlayerID) + 128]) + (98 * nextPlayerID) + (32 * 5 * nextPlayerID) + 352] = mem[(32 * nextPlayerID) + (32 * 5 * nextPlayerID) + 160]
        _600 = mem[(32 * nextPlayerID) + (32 * 5 * nextPlayerID) + 160]
        mem[(32 * mem[(32 * nextPlayerID) + 128]) + (98 * nextPlayerID) + (32 * 5 * nextPlayerID) + 384 len floor32(mem[(32 * nextPlayerID) + (32 * 5 * nextPlayerID) + 160])] = mem[(32 * nextPlayerID) + (32 * 5 * nextPlayerID) + 192 len floor32(mem[(32 * nextPlayerID) + (32 * 5 * nextPlayerID) + 160])]
        return memory
          from (64 * nextPlayerID) + (32 * 5 * nextPlayerID) + 192
           len (32 * _600) + (32 * mem[(32 * nextPlayerID) + 128]) + (161 * nextPlayerID) + 192
    mem[(32 * nextPlayerID) + 160 len 32 * 5 * nextPlayerID] = code.data[9874 len 32 * 5 * nextPlayerID]
    mem[(32 * nextPlayerID) + (32 * 5 * nextPlayerID) + 160] = nextPlayerID
    if not nextPlayerID:
        idx = 0
        s = 0
        t = 0
        while idx < nextPlayerID:
            require t < nextPlayerID
            mem[(32 * t) + 128] = idToAdress[t]
            require s < mem[(32 * nextPlayerID) + 128]
            mem[(32 * nextPlayerID) + (32 * s) + 160] = bondsOutstanding[stor11[t]]
            require s + 1 < mem[(32 * nextPlayerID) + 128]
            mem[(32 * nextPlayerID) + (32 * s + 1) + 160] = pendingFills[stor11[t]]
            require s + 2 < mem[(32 * nextPlayerID) + 128]
            mem[(32 * nextPlayerID) + (32 * s + 2) + 160] = playerVault[stor11[t]]
            require s + 3 < mem[(32 * nextPlayerID) + 128]
            mem[(32 * nextPlayerID) + (32 * s + 3) + 160] = percentageToReinvest[stor11[t]]
            require stor19[stor11[t]] <= totalDividendPoints
            require pointMultiplier
            require s + 4 < mem[(32 * nextPlayerID) + 128]
            mem[(32 * nextPlayerID) + (32 * s + 4) + 160] = (totalDividendPoints * bondsOutstanding[stor11[t]]) - (stor19[stor11[t]] * bondsOutstanding[stor11[t]]) / pointMultiplier
            mem[0] = idToAdress[t]
            mem[32] = 13
            require t < mem[(32 * nextPlayerID) + (32 * 5 * nextPlayerID) + 160]
            mem[(32 * nextPlayerID) + (32 * 5 * nextPlayerID) + (32 * t) + 192] = bool(stor13[stor11[t]])
            idx = idx + 1
            s = s + 5
            t = t + 1
            continue 
        mem[(64 * nextPlayerID) + (32 * 5 * nextPlayerID) + 192] = 96
        mem[(64 * nextPlayerID) + (32 * 5 * nextPlayerID) + 288] = nextPlayerID
        mem[(64 * nextPlayerID) + (32 * 5 * nextPlayerID) + 320 len floor32(nextPlayerID)] = mem[128 len floor32(nextPlayerID)]
        mem[(64 * nextPlayerID) + (32 * 5 * nextPlayerID) + 224] = (32 * nextPlayerID) + 128
        mem[(98 * nextPlayerID) + (32 * 5 * nextPlayerID) + 320] = mem[(32 * nextPlayerID) + 128]
        mem[(98 * nextPlayerID) + (32 * 5 * nextPlayerID) + 352 len floor32(mem[(32 * nextPlayerID) + 128])] = mem[(32 * nextPlayerID) + 160 len floor32(mem[(32 * nextPlayerID) + 128])]
        mem[(64 * nextPlayerID) + (32 * 5 * nextPlayerID) + 256] = (32 * mem[(32 * nextPlayerID) + 128]) + (32 * nextPlayerID) + 160
        mem[(32 * mem[(32 * nextPlayerID) + 128]) + (98 * nextPlayerID) + (32 * 5 * nextPlayerID) + 352] = mem[(32 * nextPlayerID) + (32 * 5 * nextPlayerID) + 160]
        _603 = mem[(32 * nextPlayerID) + (32 * 5 * nextPlayerID) + 160]
        mem[(32 * mem[(32 * nextPlayerID) + 128]) + (98 * nextPlayerID) + (32 * 5 * nextPlayerID) + 384 len floor32(mem[(32 * nextPlayerID) + (32 * 5 * nextPlayerID) + 160])] = mem[(32 * nextPlayerID) + (32 * 5 * nextPlayerID) + 192 len floor32(mem[(32 * nextPlayerID) + (32 * 5 * nextPlayerID) + 160])]
        return memory
          from (64 * nextPlayerID) + (32 * 5 * nextPlayerID) + 192
           len (32 * _603) + (32 * mem[(32 * nextPlayerID) + 128]) + (161 * nextPlayerID) + 192
    mem[(32 * nextPlayerID) + (32 * 5 * nextPlayerID) + 192 len 32 * nextPlayerID] = code.data[9874 len 32 * nextPlayerID]
    idx = 0
    s = 0
    t = 0
    while idx < nextPlayerID:
        require t < nextPlayerID
        mem[(32 * t) + 128] = idToAdress[t]
        require s < mem[(32 * nextPlayerID) + 128]
        mem[(32 * nextPlayerID) + (32 * s) + 160] = bondsOutstanding[stor11[t]]
        require s + 1 < mem[(32 * nextPlayerID) + 128]
        mem[(32 * nextPlayerID) + (32 * s + 1) + 160] = pendingFills[stor11[t]]
        require s + 2 < mem[(32 * nextPlayerID) + 128]
        mem[(32 * nextPlayerID) + (32 * s + 2) + 160] = playerVault[stor11[t]]
        require s + 3 < mem[(32 * nextPlayerID) + 128]
        mem[(32 * nextPlayerID) + (32 * s + 3) + 160] = percentageToReinvest[stor11[t]]
        require stor19[stor11[t]] <= totalDividendPoints
        require pointMultiplier
        require s + 4 < mem[(32 * nextPlayerID) + 128]
        mem[(32 * nextPlayerID) + (32 * s + 4) + 160] = (totalDividendPoints * bondsOutstanding[stor11[t]]) - (stor19[stor11[t]] * bondsOutstanding[stor11[t]]) / pointMultiplier
        mem[0] = idToAdress[t]
        mem[32] = 13
        require t < mem[(32 * nextPlayerID) + (32 * 5 * nextPlayerID) + 160]
        mem[(32 * nextPlayerID) + (32 * 5 * nextPlayerID) + (32 * t) + 192] = bool(stor13[stor11[t]])
        idx = idx + 1
        s = s + 5
        t = t + 1
        continue 
    mem[(64 * nextPlayerID) + (32 * 5 * nextPlayerID) + 192] = 96
    mem[(64 * nextPlayerID) + (32 * 5 * nextPlayerID) + 288] = nextPlayerID
    mem[(64 * nextPlayerID) + (32 * 5 * nextPlayerID) + 320 len floor32(nextPlayerID)] = mem[128 len floor32(nextPlayerID)]
    mem[(64 * nextPlayerID) + (32 * 5 * nextPlayerID) + 224] = (32 * nextPlayerID) + 128
    mem[(98 * nextPlayerID) + (32 * 5 * nextPlayerID) + 320] = mem[(32 * nextPlayerID) + 128]
    mem[(98 * nextPlayerID) + (32 * 5 * nextPlayerID) + 352 len floor32(mem[(32 * nextPlayerID) + 128])] = mem[(32 * nextPlayerID) + 160 len floor32(mem[(32 * nextPlayerID) + 128])]
    mem[(64 * nextPlayerID) + (32 * 5 * nextPlayerID) + 256] = (32 * mem[(32 * nextPlayerID) + 128]) + (32 * nextPlayerID) + 160
    mem[(32 * mem[(32 * nextPlayerID) + 128]) + (98 * nextPlayerID) + (32 * 5 * nextPlayerID) + 352] = mem[(32 * nextPlayerID) + (32 * 5 * nextPlayerID) + 160]
    _606 = mem[(32 * nextPlayerID) + (32 * 5 * nextPlayerID) + 160]
    mem[(32 * mem[(32 * nextPlayerID) + 128]) + (98 * nextPlayerID) + (32 * 5 * nextPlayerID) + 384 len floor32(mem[(32 * nextPlayerID) + (32 * 5 * nextPlayerID) + 160])] = mem[(32 * nextPlayerID) + (32 * 5 * nextPlayerID) + 192 len floor32(mem[(32 * nextPlayerID) + (32 * 5 * nextPlayerID) + 160])]
    return memory
      from (64 * nextPlayerID) + (32 * 5 * nextPlayerID) + 192
       len (32 * _606) + (32 * mem[(32 * nextPlayerID) + 128]) + (161 * nextPlayerID) + 192
}



}
