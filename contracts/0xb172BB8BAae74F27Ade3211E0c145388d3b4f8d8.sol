contract main {




// =====================  Runtime code  =====================


const OFFER_SIZE = 10^17

const MAX_PLAYERS_PER_STAGE = 2


address owner;
address newOwner;
uint256 refundpot;
uint256 winningsPerRound;
mapping of uint256 playerVault;
mapping of struct currentstageplayer1;
mapping of address refundWaitingLine;
mapping of address previousstageloser;
uint256 nextInLine;
uint256 nextAtLineEnd;
uint256 stor11;
uint256 numberOfStages;
uint256 sub_5c014aa7;
uint256 sub_f1481f83;
uint256 pointMultiplier;
mapping of uint256 balances;
uint256 _totalSupply;
mapping of struct accounts;
uint256 ethtotalSupply;
uint256 totalDividendPoints;
uint256 unclaimedDividends;

function RefundWaitingLine(uint256 arg1) {
    return refundWaitingLine[arg1]
}

function currentstageplayer1() {
    return currentstageplayer1[stor12][3][0].field_0
}

function previousstageloser() {
    return previousstageloser[stor11]
}

function totalDividendPoints() {
    return totalDividendPoints
}

function balances(address arg1) {
    return balances[arg1]
}

function NextAtLineEnd() {
    return nextAtLineEnd
}

function previousstageplayer2() {
    return currentstageplayer1[stor11][3][1].field_0
}

function unclaimedDividends() {
    return unclaimedDividends
}

function _totalSupply() {
    return _totalSupply
}

function sub_5c014aa7(?) {
    return sub_5c014aa7
}

function accounts(address arg1) {
    return accounts[arg1].field_0, accounts[arg1].field_256
}

function pointMultiplier() {
    return pointMultiplier
}

function currentstageplayer2() {
    return currentstageplayer1[stor12][3][1].field_0
}

function stages(uint256 arg1) {
    return currentstageplayer1[arg1].field_0, currentstageplayer1[arg1].field_256, bool(currentstageplayer1[arg1].field_512)
}

function owner() {
    return owner
}

function winningsPerRound() {
    return winningsPerRound
}

function previousstageplayer1() {
    return currentstageplayer1[stor11][3][0].field_0
}

function currentPlayers() {
    return currentstageplayer1[stor12 - 1].field_0
}

function NextInLine() {
    return nextInLine
}

function ethtotalSupply() {
    return ethtotalSupply
}

function playerVault(address arg1) {
    return playerVault[arg1]
}

function Refundpot() {
    return refundpot
}

function numberOfStages() {
    return numberOfStages
}

function newOwner() {
    return newOwner
}

function sub_f1481f83(?) {
    return sub_f1481f83
}

function nextonetogetpaid() {
    return refundWaitingLine[stor9]
}

function Loser(uint256 arg1) {
    return previousstageloser[arg1]
}

function myEarnings() {
    require 0 < playerVault[msg.sender]
    return playerVault[msg.sender]
}

function _fallback() payable {
  stop
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    newOwner = arg1
}

function DonateToLosers() payable {
    require msg.value > 0
    require msg.value + refundpot >= refundpot
    refundpot += msg.value
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function dividendsOwing(address arg1) {
    require accounts[address(arg1)].field_256 <= totalDividendPoints
    require pointMultiplier
    return ((totalDividendPoints * balances[address(arg1)]) - (accounts[address(arg1)].field_256 * balances[address(arg1)]) / pointMultiplier)
}

function checkstatus() {
    if numberOfStages < stor11:
        return 0
    if currentstageplayer1[stor11].field_512:
        return 0
    if currentstageplayer1[stor11].field_0 >= 2:
        return 0
    if not currentstageplayer1[stor11].field_256:
        return 0
    return 1
}

function contractownsthismanyP3D() {
    require ext_code.size(0xb3775fb83f7d12a36e0475abdd1fca35c091efbe)
    call 0xb3775fb83f7d12a36e0475abdd1fca35c091efbe.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function disburse() payable {
    if msg.value:
        require msg.value
        require pointMultiplier * msg.value / msg.value == pointMultiplier
    require _totalSupply > 0
    require _totalSupply
    require (pointMultiplier * msg.value / _totalSupply) + totalDividendPoints >= totalDividendPoints
    totalDividendPoints += pointMultiplier * msg.value / _totalSupply
    require msg.value + unclaimedDividends >= unclaimedDividends
    unclaimedDividends += msg.value
}

function Payoutnextrefund() {
    require refundpot > 10^13
    refundpot = 0
    if refundpot:
        require refundpot
        require pointMultiplier * refundpot / refundpot == pointMultiplier
    require _totalSupply > 0
    require _totalSupply
    require (pointMultiplier * refundpot / _totalSupply) + totalDividendPoints >= totalDividendPoints
    totalDividendPoints += pointMultiplier * refundpot / _totalSupply
    require refundpot + unclaimedDividends >= unclaimedDividends
    unclaimedDividends += refundpot
}

function sub_e80d179b(?) {
    require msg.sender == owner
    s = 0
    idx = 0
    while idx < arg1:
        mem[100] = idx + sub_5c014aa7
        require ext_code.size(0xa76daa02c1a6411c6c368f3a59f4f2257a460006)
        call 0xa76daa02c1a6411c6c368f3a59f4f2257a460006.RefundWaitingLine(uint256 arg1) with:
             gas gas_remaining wei
            args (idx + sub_5c014aa7)
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require balances[address(ext_call.return_data[0])] + 10^17 >= balances[address(ext_call.return_data[0])]
        mem[0] = address(ext_call.return_data[0])
        mem[32] = 16
        balances[address(ext_call.return_data[0])] += 10^17
        s = ext_call.return_data[0]
        idx = idx + 2
        continue 
    sub_5c014aa7 += Mask(254, 1, arg1 + 1)
    if Mask(254, 1, arg1 + 1):
        require Mask(254, 1, arg1 + 1)
        require 10^17 * Mask(254, 1, arg1 + 1) / Mask(254, 1, arg1 + 1) == 10^17
    require (10^17 * Mask(254, 1, arg1 + 1)) + _totalSupply >= _totalSupply
    _totalSupply += 10^17 * Mask(254, 1, arg1 + 1)
}

function DivsToRefundpot() {
    require ext_code.size(0xb3775fb83f7d12a36e0475abdd1fca35c091efbe)
    call 0xb3775fb83f7d12a36e0475abdd1fca35c091efbe.myDividends(bool arg1) with:
         gas gas_remaining wei
        args 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require ext_code.size(0xb3775fb83f7d12a36e0475abdd1fca35c091efbe)
    call 0xb3775fb83f7d12a36e0475abdd1fca35c091efbe.0x3ccfd60b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if ext_call.return_data[0] / 100:
        require ext_call.return_data[0] / 100
        require 5 * ext_call.return_data[0] / 100 / ext_call.return_data[0] / 100 == 5
    require ext_code.size(0xfaae60f2ce6491886c9f7c9356bd92f688ca66a1)
    call 0xfaae60f2ce6491886c9f7c9356bd92f688ca66a1.0xabc6fd0b with:
       value 5 * ext_call.return_data[0] / 100 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if ext_call.return_data[0] / 100:
        require ext_call.return_data[0] / 100
        require 95 * ext_call.return_data[0] / 100 / ext_call.return_data[0] / 100 == 95
    require (95 * ext_call.return_data[0] / 100) + refundpot >= refundpot
    refundpot += 95 * ext_call.return_data[0] / 100
}

function fetchdivs(address arg1) {
    require accounts[address(arg1)].field_256 <= totalDividendPoints
    require pointMultiplier
    if (totalDividendPoints * balances[address(arg1)]) - (accounts[address(arg1)].field_256 * balances[address(arg1)]) / pointMultiplier > balances[address(arg1)]:
        balances[address(arg1)] = (totalDividendPoints * balances[address(arg1)]) - (accounts[address(arg1)].field_256 * balances[address(arg1)]) / pointMultiplier
    if (totalDividendPoints * balances[address(arg1)]) - (accounts[address(arg1)].field_256 * balances[address(arg1)]) / pointMultiplier > 0:
        require (totalDividendPoints * balances[address(arg1)]) - (accounts[address(arg1)].field_256 * balances[address(arg1)]) / pointMultiplier <= unclaimedDividends
        unclaimedDividends -= (totalDividendPoints * balances[address(arg1)]) - (accounts[address(arg1)].field_256 * balances[address(arg1)]) / pointMultiplier
        require ((totalDividendPoints * balances[address(arg1)]) - (accounts[address(arg1)].field_256 * balances[address(arg1)]) / pointMultiplier) + playerVault[address(arg1)] >= playerVault[address(arg1)]
        playerVault[address(arg1)] += (totalDividendPoints * balances[address(arg1)]) - (accounts[address(arg1)].field_256 * balances[address(arg1)]) / pointMultiplier
        require (totalDividendPoints * balances[address(arg1)]) - (accounts[address(arg1)].field_256 * balances[address(arg1)]) / pointMultiplier <= balances[address(arg1)]
        balances[address(arg1)] -= (totalDividendPoints * balances[address(arg1)]) - (accounts[address(arg1)].field_256 * balances[address(arg1)]) / pointMultiplier
        require (totalDividendPoints * balances[address(arg1)]) - (accounts[address(arg1)].field_256 * balances[address(arg1)]) / pointMultiplier <= _totalSupply
        _totalSupply -= (totalDividendPoints * balances[address(arg1)]) - (accounts[address(arg1)].field_256 * balances[address(arg1)]) / pointMultiplier
    accounts[address(arg1)].field_256 = totalDividendPoints
}

function tryFinalizeStage() {
    require numberOfStages >= stor11
    if numberOfStages != stor11:
        require not currentstageplayer1[stor11].field_512
        if currentstageplayer1[stor11].field_0 >= 2:
            require currentstageplayer1[stor11].field_256
            if block.number - 256 > currentstageplayer1[stor11].field_256:
                s = 0
                idx = 0
                while uint8(idx) < 2:
                    mem[0] = currentstageplayer1[stor11][3][idx << 248].field_0
                    mem[32] = 5
                    playerVault[stor6[stor11][3][idx << 248].field_0] += 10^17
                    s = currentstageplayer1[stor11][3][idx << 248].field_0
                    idx = idx + 1
                    continue 
                emit StageInvalidated(stor11);
                currentstageplayer1[stor11].field_512 = 1
                stor11++
            else:
                if currentstageplayer1[stor11].field_256 != block.number:
                    previousstageloser[stor11] = currentstageplayer1[stor11][3][block.hash(currentstageplayer1[stor11].field_256) << 255].field_0
                    emit SacrificeChosen(currentstageplayer1[stor11][3][block.hash(currentstageplayer1[stor11].field_256) << 255].field_0);
                    s = 0
                    idx = 0
                    while uint8(idx) < 2:
                        mem[0] = uint8(idx)
                        mem[32] = sha3(stor11, 6) + 3
                        if currentstageplayer1[stor11][3][idx << 248].field_0 != currentstageplayer1[stor11][3][block.hash(currentstageplayer1[stor11].field_256) << 255].field_0:
                            mem[0] = currentstageplayer1[stor11][3][idx << 248].field_0
                            mem[32] = 5
                            playerVault[stor6[stor11][3][idx << 248].field_0] += winningsPerRound
                        s = currentstageplayer1[stor11][3][idx << 248].field_0
                        idx = idx + 1
                        continue 
                    require accounts[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0].field_256 <= totalDividendPoints
                    require pointMultiplier
                    if (totalDividendPoints * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) - (accounts[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0].field_256 * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) / pointMultiplier > balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]:
                        balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0] = (totalDividendPoints * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) - (accounts[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0].field_256 * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) / pointMultiplier
                    if (totalDividendPoints * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) - (accounts[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0].field_256 * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) / pointMultiplier > 0:
                        require (totalDividendPoints * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) - (accounts[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0].field_256 * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) / pointMultiplier <= unclaimedDividends
                        unclaimedDividends -= (totalDividendPoints * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) - (accounts[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0].field_256 * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) / pointMultiplier
                        require ((totalDividendPoints * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) - (accounts[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0].field_256 * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) / pointMultiplier) + playerVault[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0] >= playerVault[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]
                        playerVault[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0] += (totalDividendPoints * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) - (accounts[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0].field_256 * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) / pointMultiplier
                        require (totalDividendPoints * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) - (accounts[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0].field_256 * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) / pointMultiplier <= balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]
                        balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0] -= (totalDividendPoints * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) - (accounts[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0].field_256 * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) / pointMultiplier
                        require (totalDividendPoints * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) - (accounts[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0].field_256 * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) / pointMultiplier <= _totalSupply
                        _totalSupply -= (totalDividendPoints * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) - (accounts[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0].field_256 * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) / pointMultiplier
                    accounts[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0].field_256 = totalDividendPoints
                    require balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0] + 10^17 >= balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]
                    balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0] += 10^17
                    _totalSupply += 10^17
                    require refundpot + 5 * 10^15 >= refundpot
                    refundpot += 5 * 10^15
                    require ext_code.size(0xb3775fb83f7d12a36e0475abdd1fca35c091efbe)
                    call 0xb3775fb83f7d12a36e0475abdd1fca35c091efbe.buy(address arg1) with:
                       value 4 * 10^15 wei
                         gas gas_remaining wei
                        args currentstageplayer1[stor11][5][1].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xb3775fb83f7d12a36e0475abdd1fca35c091efbe)
                    call 0xb3775fb83f7d12a36e0475abdd1fca35c091efbe.buy(address arg1) with:
                       value 4 * 10^15 wei
                         gas gas_remaining wei
                        args currentstageplayer1[stor11][5][2].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xfaae60f2ce6491886c9f7c9356bd92f688ca66a1)
                    call 0xfaae60f2ce6491886c9f7c9356bd92f688ca66a1.0xabc6fd0b with:
                       value 2 * 10^15 wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    currentstageplayer1[stor11].field_512 = 1
                    stor11++
}

function offerAsSacrifice(address arg1) payable {
    require 10^17 == msg.value
    if 2 == currentstageplayer1[stor12 - 1].field_0:
        currentstageplayer1[stor12].field_0 = 0
        currentstageplayer1[stor12].field_256 = 0
        currentstageplayer1[stor12].field_512 = 0
        numberOfStages++
    require not currentstageplayer1[stor12 - 1][4][msg.sender].field_0
    require currentstageplayer1[stor12 - 1].field_0 < 2
    currentstageplayer1[stor12 - 1][3][currentstageplayer1[stor12 - 1].field_0].field_0 = msg.sender or Mask(96, 160, currentstageplayer1[stor12 - 1][3][currentstageplayer1[stor12 - 1].field_0].field_0)
    currentstageplayer1[stor12 - 1].field_0 = uint8(currentstageplayer1[stor12 - 1].field_0 + 1)
    currentstageplayer1[stor12 - 1][4][msg.sender].field_0 = 1
    currentstageplayer1[stor12 - 1][5][currentstageplayer1[stor12 - 1].field_0].field_0 = arg1
    emit SacrificeOffered(msg.sender);
    if 2 == currentstageplayer1[stor12 - 1].field_0:
        currentstageplayer1[stor12 - 1].field_256 = block.number
    require numberOfStages >= stor11
    if numberOfStages != stor11:
        require not currentstageplayer1[stor11].field_512
        if currentstageplayer1[stor11].field_0 >= 2:
            require currentstageplayer1[stor11].field_256
            if block.number - 256 > currentstageplayer1[stor11].field_256:
                s = 0
                idx = 0
                while uint8(idx) < 2:
                    mem[0] = currentstageplayer1[stor11][3][idx << 248].field_0
                    mem[32] = 5
                    playerVault[stor6[stor11][3][idx << 248].field_0] += 10^17
                    s = currentstageplayer1[stor11][3][idx << 248].field_0
                    idx = idx + 1
                    continue 
                emit StageInvalidated(stor11);
                currentstageplayer1[stor11].field_512 = 1
                stor11++
            else:
                if currentstageplayer1[stor11].field_256 != block.number:
                    previousstageloser[stor11] = currentstageplayer1[stor11][3][block.hash(currentstageplayer1[stor11].field_256) << 255].field_0
                    emit SacrificeChosen(currentstageplayer1[stor11][3][block.hash(currentstageplayer1[stor11].field_256) << 255].field_0);
                    s = 0
                    idx = 0
                    while uint8(idx) < 2:
                        mem[0] = uint8(idx)
                        mem[32] = sha3(stor11, 6) + 3
                        if currentstageplayer1[stor11][3][idx << 248].field_0 != currentstageplayer1[stor11][3][block.hash(currentstageplayer1[stor11].field_256) << 255].field_0:
                            mem[0] = currentstageplayer1[stor11][3][idx << 248].field_0
                            mem[32] = 5
                            playerVault[stor6[stor11][3][idx << 248].field_0] += winningsPerRound
                        s = currentstageplayer1[stor11][3][idx << 248].field_0
                        idx = idx + 1
                        continue 
                    require accounts[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0].field_256 <= totalDividendPoints
                    require pointMultiplier
                    if (totalDividendPoints * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) - (accounts[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0].field_256 * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) / pointMultiplier > balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]:
                        balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0] = (totalDividendPoints * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) - (accounts[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0].field_256 * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) / pointMultiplier
                    if (totalDividendPoints * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) - (accounts[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0].field_256 * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) / pointMultiplier > 0:
                        require (totalDividendPoints * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) - (accounts[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0].field_256 * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) / pointMultiplier <= unclaimedDividends
                        unclaimedDividends -= (totalDividendPoints * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) - (accounts[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0].field_256 * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) / pointMultiplier
                        require ((totalDividendPoints * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) - (accounts[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0].field_256 * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) / pointMultiplier) + playerVault[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0] >= playerVault[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]
                        playerVault[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0] += (totalDividendPoints * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) - (accounts[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0].field_256 * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) / pointMultiplier
                        require (totalDividendPoints * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) - (accounts[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0].field_256 * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) / pointMultiplier <= balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]
                        balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0] -= (totalDividendPoints * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) - (accounts[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0].field_256 * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) / pointMultiplier
                        require (totalDividendPoints * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) - (accounts[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0].field_256 * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) / pointMultiplier <= _totalSupply
                        _totalSupply -= (totalDividendPoints * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) - (accounts[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0].field_256 * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) / pointMultiplier
                    accounts[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0].field_256 = totalDividendPoints
                    require balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0] + 10^17 >= balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]
                    balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0] += 10^17
                    _totalSupply += 10^17
                    require refundpot + 5 * 10^15 >= refundpot
                    refundpot += 5 * 10^15
                    require ext_code.size(0xb3775fb83f7d12a36e0475abdd1fca35c091efbe)
                    call 0xb3775fb83f7d12a36e0475abdd1fca35c091efbe.buy(address arg1) with:
                       value 4 * 10^15 wei
                         gas gas_remaining wei
                        args currentstageplayer1[stor11][5][1].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xb3775fb83f7d12a36e0475abdd1fca35c091efbe)
                    call 0xb3775fb83f7d12a36e0475abdd1fca35c091efbe.buy(address arg1) with:
                       value 4 * 10^15 wei
                         gas gas_remaining wei
                        args currentstageplayer1[stor11][5][2].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xfaae60f2ce6491886c9f7c9356bd92f688ca66a1)
                    call 0xfaae60f2ce6491886c9f7c9356bd92f688ca66a1.0xabc6fd0b with:
                       value 2 * 10^15 wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    currentstageplayer1[stor11].field_512 = 1
                    stor11++
}

function offerAsSacrificeFromVault(address arg1) {
    require 10^17 <= playerVault[msg.sender]
    if 2 == currentstageplayer1[stor12 - 1].field_0:
        currentstageplayer1[stor12].field_0 = 0
        currentstageplayer1[stor12].field_256 = 0
        currentstageplayer1[stor12].field_512 = 0
        numberOfStages++
    require not currentstageplayer1[stor12 - 1][4][msg.sender].field_0
    playerVault[msg.sender] -= 10^17
    require currentstageplayer1[stor12 - 1].field_0 < 2
    currentstageplayer1[stor12 - 1][3][currentstageplayer1[stor12 - 1].field_0].field_0 = msg.sender or Mask(96, 160, currentstageplayer1[stor12 - 1][3][currentstageplayer1[stor12 - 1].field_0].field_0)
    currentstageplayer1[stor12 - 1].field_0 = uint8(currentstageplayer1[stor12 - 1].field_0 + 1)
    currentstageplayer1[stor12 - 1][4][msg.sender].field_0 = 1
    currentstageplayer1[stor12 - 1][5][currentstageplayer1[stor12 - 1].field_0].field_0 = arg1
    emit SacrificeOffered(msg.sender);
    if 2 == currentstageplayer1[stor12 - 1].field_0:
        currentstageplayer1[stor12 - 1].field_256 = block.number
    require numberOfStages >= stor11
    if numberOfStages != stor11:
        require not currentstageplayer1[stor11].field_512
        if currentstageplayer1[stor11].field_0 >= 2:
            require currentstageplayer1[stor11].field_256
            if block.number - 256 > currentstageplayer1[stor11].field_256:
                s = 0
                idx = 0
                while uint8(idx) < 2:
                    mem[0] = currentstageplayer1[stor11][3][idx << 248].field_0
                    mem[32] = 5
                    playerVault[stor6[stor11][3][idx << 248].field_0] += 10^17
                    s = currentstageplayer1[stor11][3][idx << 248].field_0
                    idx = idx + 1
                    continue 
                emit StageInvalidated(stor11);
                currentstageplayer1[stor11].field_512 = 1
                stor11++
            else:
                if currentstageplayer1[stor11].field_256 != block.number:
                    previousstageloser[stor11] = currentstageplayer1[stor11][3][block.hash(currentstageplayer1[stor11].field_256) << 255].field_0
                    emit SacrificeChosen(currentstageplayer1[stor11][3][block.hash(currentstageplayer1[stor11].field_256) << 255].field_0);
                    s = 0
                    idx = 0
                    while uint8(idx) < 2:
                        mem[0] = uint8(idx)
                        mem[32] = sha3(stor11, 6) + 3
                        if currentstageplayer1[stor11][3][idx << 248].field_0 != currentstageplayer1[stor11][3][block.hash(currentstageplayer1[stor11].field_256) << 255].field_0:
                            mem[0] = currentstageplayer1[stor11][3][idx << 248].field_0
                            mem[32] = 5
                            playerVault[stor6[stor11][3][idx << 248].field_0] += winningsPerRound
                        s = currentstageplayer1[stor11][3][idx << 248].field_0
                        idx = idx + 1
                        continue 
                    require accounts[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0].field_256 <= totalDividendPoints
                    require pointMultiplier
                    if (totalDividendPoints * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) - (accounts[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0].field_256 * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) / pointMultiplier > balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]:
                        balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0] = (totalDividendPoints * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) - (accounts[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0].field_256 * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) / pointMultiplier
                    if (totalDividendPoints * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) - (accounts[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0].field_256 * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) / pointMultiplier > 0:
                        require (totalDividendPoints * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) - (accounts[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0].field_256 * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) / pointMultiplier <= unclaimedDividends
                        unclaimedDividends -= (totalDividendPoints * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) - (accounts[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0].field_256 * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) / pointMultiplier
                        require ((totalDividendPoints * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) - (accounts[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0].field_256 * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) / pointMultiplier) + playerVault[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0] >= playerVault[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]
                        playerVault[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0] += (totalDividendPoints * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) - (accounts[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0].field_256 * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) / pointMultiplier
                        require (totalDividendPoints * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) - (accounts[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0].field_256 * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) / pointMultiplier <= balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]
                        balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0] -= (totalDividendPoints * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) - (accounts[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0].field_256 * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) / pointMultiplier
                        require (totalDividendPoints * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) - (accounts[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0].field_256 * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) / pointMultiplier <= _totalSupply
                        _totalSupply -= (totalDividendPoints * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) - (accounts[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0].field_256 * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) / pointMultiplier
                    accounts[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0].field_256 = totalDividendPoints
                    require balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0] + 10^17 >= balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]
                    balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0] += 10^17
                    _totalSupply += 10^17
                    require refundpot + 5 * 10^15 >= refundpot
                    refundpot += 5 * 10^15
                    require ext_code.size(0xb3775fb83f7d12a36e0475abdd1fca35c091efbe)
                    call 0xb3775fb83f7d12a36e0475abdd1fca35c091efbe.buy(address arg1) with:
                       value 4 * 10^15 wei
                         gas gas_remaining wei
                        args currentstageplayer1[stor11][5][1].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xb3775fb83f7d12a36e0475abdd1fca35c091efbe)
                    call 0xb3775fb83f7d12a36e0475abdd1fca35c091efbe.buy(address arg1) with:
                       value 4 * 10^15 wei
                         gas gas_remaining wei
                        args currentstageplayer1[stor11][5][2].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xfaae60f2ce6491886c9f7c9356bd92f688ca66a1)
                    call 0xfaae60f2ce6491886c9f7c9356bd92f688ca66a1.0xabc6fd0b with:
                       value 2 * 10^15 wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    currentstageplayer1[stor11].field_512 = 1
                    stor11++
}

function sub_a36dbcfb(?) payable {
    if 2 == currentstageplayer1[stor12 - 1].field_0:
        currentstageplayer1[stor12].field_0 = 0
        currentstageplayer1[stor12].field_256 = 0
        currentstageplayer1[stor12].field_512 = 0
        numberOfStages++
    require msg.value >= 5 * 10^15
    require 10^17 <= playerVault[address(arg2)]
    require not currentstageplayer1[stor12 - 1][4][address(arg2)].field_0
    playerVault[address(arg2)] -= 97 * 10^15
    require ext_code.size(0xfaae60f2ce6491886c9f7c9356bd92f688ca66a1)
    call 0xfaae60f2ce6491886c9f7c9356bd92f688ca66a1.0xabc6fd0b with:
       value 2 * 10^15 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require currentstageplayer1[stor12 - 1].field_0 < 2
    currentstageplayer1[stor12 - 1][3][currentstageplayer1[stor12 - 1].field_0].field_0 = arg2
    currentstageplayer1[stor12 - 1].field_0 = uint8(currentstageplayer1[stor12 - 1].field_0 + 1)
    currentstageplayer1[stor12 - 1][4][address(arg2)].field_0 = 1
    currentstageplayer1[stor12 - 1][5][currentstageplayer1[stor12 - 1].field_0].field_0 = arg1
    emit SacrificeOffered(arg2);
    if 2 == currentstageplayer1[stor12 - 1].field_0:
        currentstageplayer1[stor12 - 1].field_256 = block.number
    require numberOfStages >= stor11
    if numberOfStages != stor11:
        require not currentstageplayer1[stor11].field_512
        if currentstageplayer1[stor11].field_0 >= 2:
            require currentstageplayer1[stor11].field_256
            if block.number - 256 > currentstageplayer1[stor11].field_256:
                s = 0
                idx = 0
                while uint8(idx) < 2:
                    mem[0] = currentstageplayer1[stor11][3][idx << 248].field_0
                    mem[32] = 5
                    playerVault[stor6[stor11][3][idx << 248].field_0] += 10^17
                    s = currentstageplayer1[stor11][3][idx << 248].field_0
                    idx = idx + 1
                    continue 
                emit StageInvalidated(stor11);
                currentstageplayer1[stor11].field_512 = 1
                stor11++
            else:
                if currentstageplayer1[stor11].field_256 != block.number:
                    previousstageloser[stor11] = currentstageplayer1[stor11][3][block.hash(currentstageplayer1[stor11].field_256) << 255].field_0
                    emit SacrificeChosen(currentstageplayer1[stor11][3][block.hash(currentstageplayer1[stor11].field_256) << 255].field_0);
                    s = 0
                    idx = 0
                    while uint8(idx) < 2:
                        mem[0] = uint8(idx)
                        mem[32] = sha3(stor11, 6) + 3
                        if currentstageplayer1[stor11][3][idx << 248].field_0 != currentstageplayer1[stor11][3][block.hash(currentstageplayer1[stor11].field_256) << 255].field_0:
                            mem[0] = currentstageplayer1[stor11][3][idx << 248].field_0
                            mem[32] = 5
                            playerVault[stor6[stor11][3][idx << 248].field_0] += winningsPerRound
                        s = currentstageplayer1[stor11][3][idx << 248].field_0
                        idx = idx + 1
                        continue 
                    require accounts[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0].field_256 <= totalDividendPoints
                    require pointMultiplier
                    if (totalDividendPoints * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) - (accounts[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0].field_256 * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) / pointMultiplier > balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]:
                        balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0] = (totalDividendPoints * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) - (accounts[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0].field_256 * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) / pointMultiplier
                    if (totalDividendPoints * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) - (accounts[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0].field_256 * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) / pointMultiplier > 0:
                        require (totalDividendPoints * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) - (accounts[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0].field_256 * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) / pointMultiplier <= unclaimedDividends
                        unclaimedDividends -= (totalDividendPoints * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) - (accounts[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0].field_256 * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) / pointMultiplier
                        require ((totalDividendPoints * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) - (accounts[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0].field_256 * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) / pointMultiplier) + playerVault[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0] >= playerVault[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]
                        playerVault[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0] += (totalDividendPoints * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) - (accounts[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0].field_256 * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) / pointMultiplier
                        require (totalDividendPoints * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) - (accounts[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0].field_256 * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) / pointMultiplier <= balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]
                        balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0] -= (totalDividendPoints * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) - (accounts[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0].field_256 * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) / pointMultiplier
                        require (totalDividendPoints * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) - (accounts[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0].field_256 * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) / pointMultiplier <= _totalSupply
                        _totalSupply -= (totalDividendPoints * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) - (accounts[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0].field_256 * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) / pointMultiplier
                    accounts[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0].field_256 = totalDividendPoints
                    require balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0] + 10^17 >= balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]
                    balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0] += 10^17
                    _totalSupply += 10^17
                    require refundpot + 5 * 10^15 >= refundpot
                    refundpot += 5 * 10^15
                    require ext_code.size(0xb3775fb83f7d12a36e0475abdd1fca35c091efbe)
                    call 0xb3775fb83f7d12a36e0475abdd1fca35c091efbe.buy(address arg1) with:
                       value 4 * 10^15 wei
                         gas gas_remaining wei
                        args currentstageplayer1[stor11][5][1].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xb3775fb83f7d12a36e0475abdd1fca35c091efbe)
                    call 0xb3775fb83f7d12a36e0475abdd1fca35c091efbe.buy(address arg1) with:
                       value 4 * 10^15 wei
                         gas gas_remaining wei
                        args currentstageplayer1[stor11][5][2].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xfaae60f2ce6491886c9f7c9356bd92f688ca66a1)
                    call 0xfaae60f2ce6491886c9f7c9356bd92f688ca66a1.0xabc6fd0b with:
                       value 2 * 10^15 wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    currentstageplayer1[stor11].field_512 = 1
                    stor11++
}

function withdraw() {
    require 0 < playerVault[msg.sender]
    require numberOfStages >= stor11
    if numberOfStages == stor11:
        playerVault[msg.sender] = 0
        emit EarningsWithdrawn(msg.sender, playerVault[msg.sender]);
        call msg.sender with:
           value playerVault[msg.sender] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require not currentstageplayer1[stor11].field_512
        if currentstageplayer1[stor11].field_0 < 2:
            playerVault[msg.sender] = 0
            emit EarningsWithdrawn(msg.sender, playerVault[msg.sender]);
            call msg.sender with:
               value playerVault[msg.sender] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require currentstageplayer1[stor11].field_256
            if block.number - 256 > currentstageplayer1[stor11].field_256:
                s = 0
                idx = 0
                while uint8(idx) < 2:
                    mem[0] = currentstageplayer1[stor11][3][idx << 248].field_0
                    mem[32] = 5
                    playerVault[stor6[stor11][3][idx << 248].field_0] += 10^17
                    s = currentstageplayer1[stor11][3][idx << 248].field_0
                    idx = idx + 1
                    continue 
                emit StageInvalidated(stor11);
                currentstageplayer1[stor11].field_512 = 1
                stor11++
                playerVault[msg.sender] = 0
                emit EarningsWithdrawn(msg.sender, playerVault[msg.sender]);
                call msg.sender with:
                   value playerVault[msg.sender] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if block.number == currentstageplayer1[stor11].field_256:
                    playerVault[msg.sender] = 0
                    emit EarningsWithdrawn(msg.sender, playerVault[msg.sender]);
                    call msg.sender with:
                       value playerVault[msg.sender] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    previousstageloser[stor11] = currentstageplayer1[stor11][3][block.hash(currentstageplayer1[stor11].field_256) << 255].field_0
                    emit SacrificeChosen(currentstageplayer1[stor11][3][block.hash(currentstageplayer1[stor11].field_256) << 255].field_0);
                    s = 0
                    idx = 0
                    while uint8(idx) < 2:
                        mem[0] = uint8(idx)
                        mem[32] = sha3(stor11, 6) + 3
                        if currentstageplayer1[stor11][3][idx << 248].field_0 != currentstageplayer1[stor11][3][block.hash(currentstageplayer1[stor11].field_256) << 255].field_0:
                            mem[0] = currentstageplayer1[stor11][3][idx << 248].field_0
                            mem[32] = 5
                            playerVault[stor6[stor11][3][idx << 248].field_0] += winningsPerRound
                        s = currentstageplayer1[stor11][3][idx << 248].field_0
                        idx = idx + 1
                        continue 
                    require accounts[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0].field_256 <= totalDividendPoints
                    require pointMultiplier
                    if (totalDividendPoints * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) - (accounts[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0].field_256 * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) / pointMultiplier > balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]:
                        balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0] = (totalDividendPoints * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) - (accounts[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0].field_256 * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) / pointMultiplier
                    if (totalDividendPoints * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) - (accounts[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0].field_256 * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) / pointMultiplier > 0:
                        require (totalDividendPoints * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) - (accounts[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0].field_256 * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) / pointMultiplier <= unclaimedDividends
                        unclaimedDividends -= (totalDividendPoints * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) - (accounts[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0].field_256 * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) / pointMultiplier
                        require ((totalDividendPoints * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) - (accounts[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0].field_256 * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) / pointMultiplier) + playerVault[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0] >= playerVault[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]
                        playerVault[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0] += (totalDividendPoints * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) - (accounts[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0].field_256 * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) / pointMultiplier
                        require (totalDividendPoints * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) - (accounts[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0].field_256 * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) / pointMultiplier <= balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]
                        balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0] -= (totalDividendPoints * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) - (accounts[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0].field_256 * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) / pointMultiplier
                        require (totalDividendPoints * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) - (accounts[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0].field_256 * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) / pointMultiplier <= _totalSupply
                        _totalSupply -= (totalDividendPoints * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) - (accounts[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0].field_256 * balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]) / pointMultiplier
                    accounts[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0].field_256 = totalDividendPoints
                    require balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0] + 10^17 >= balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0]
                    balances[stor6[stor11][3][block.hash(stor6[stor11].field_256) << 255].field_0] += 10^17
                    _totalSupply += 10^17
                    require refundpot + 5 * 10^15 >= refundpot
                    refundpot += 5 * 10^15
                    require ext_code.size(0xb3775fb83f7d12a36e0475abdd1fca35c091efbe)
                    call 0xb3775fb83f7d12a36e0475abdd1fca35c091efbe.buy(address arg1) with:
                       value 4 * 10^15 wei
                         gas gas_remaining wei
                        args currentstageplayer1[stor11][5][1].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xb3775fb83f7d12a36e0475abdd1fca35c091efbe)
                    call 0xb3775fb83f7d12a36e0475abdd1fca35c091efbe.buy(address arg1) with:
                       value 4 * 10^15 wei
                         gas gas_remaining wei
                        args currentstageplayer1[stor11][5][2].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xfaae60f2ce6491886c9f7c9356bd92f688ca66a1)
                    call 0xfaae60f2ce6491886c9f7c9356bd92f688ca66a1.0xabc6fd0b with:
                       value 2 * 10^15 wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    currentstageplayer1[stor11].field_512 = 1
                    stor11++
                    playerVault[msg.sender] = 0
                    emit EarningsWithdrawn(msg.sender, playerVault[msg.sender]);
                    call msg.sender with:
                       value playerVault[msg.sender] wei
                         gas 2300 * is_zero(value) wei
}



}
