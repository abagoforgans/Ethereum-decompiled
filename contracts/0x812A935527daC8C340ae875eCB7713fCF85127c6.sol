contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;
uint256 _totalSupply;
mapping of uint256 balances;
mapping of uint256 bullets;
mapping of uint256 playerVault;
mapping of address formation;
uint256 nextFormation;
mapping of uint256 lastMove;
mapping of address refundWaitingLine;
uint256 nextInLine;
uint256 nextAtLineEnd;
uint256 refundpot;
uint256 blocksBeforeSemiRandomShoot;
uint256 blocksBeforeTargetShoot;
uint256 sub_5c014aa7;
uint256 sub_f1481f83;
address oldAddress;
uint256 pointMultiplier;
mapping of struct stor19;
array of uint256 vanity;
uint256 ethtotalSupply;
uint256 totalDividendPoints;
uint256 unclaimedDividends;
mapping of uint256 sub_0cd0ea37;
uint256 sub_27a9ff59;
mapping of struct sub_96431b8b;
uint256 sub_f6006b19;
uint256 sub_c4cfb80a;
uint256 sub_4814e415;

function sub_0cd0ea37(?) {
    return sub_0cd0ea37[arg1]
}

function RefundWaitingLine(uint256 arg1) {
    return refundWaitingLine[arg1]
}

function totalDividendPoints() {
    return totalDividendPoints
}

function sub_27a9ff59(?) {
    return sub_27a9ff59
}

function balances(address arg1) {
    return balances[arg1]
}

function blocksBeforeTargetShoot() {
    return blocksBeforeTargetShoot
}

function NextAtLineEnd() {
    return nextAtLineEnd
}

function lastMove(address arg1) {
    return lastMove[arg1]
}

function unclaimedDividends() {
    return unclaimedDividends
}

function _totalSupply() {
    return _totalSupply
}

function sub_4814e415(?) {
    return sub_4814e415
}

function nextFormation() {
    return nextFormation
}

function sub_5c014aa7(?) {
    return sub_5c014aa7
}

function pointMultiplier() {
    return pointMultiplier
}

function bullets(address arg1) {
    return bullets[arg1]
}

function owner() {
    return owner
}

function Vanity(address arg1) {
    return vanity[arg1][0 len vanity[arg1].length]
}

function sub_96431b8b(?) {
    return sub_96431b8b[arg1].field_0, sub_96431b8b[arg1].field_256
}

function formation(uint256 arg1) {
    return formation[arg1]
}

function NextInLine() {
    return nextInLine
}

function ethtotalSupply() {
    return ethtotalSupply
}

function blocksBeforeSemiRandomShoot() {
    return blocksBeforeSemiRandomShoot
}

function playerVault(address arg1) {
    return playerVault[arg1]
}

function old() {
    return oldAddress
}

function Refundpot() {
    return refundpot
}

function sub_c4cfb80a(?) {
    return sub_c4cfb80a
}

function newOwner() {
    return newOwner
}

function playervanity(address arg1) {
    return vanity[address(arg1)][0 len vanity[address(arg1)].length]
}

function sub_f1481f83(?) {
    return sub_f1481f83
}

function sub_f6006b19(?) {
    return sub_f6006b19
}

function nextonetogetpaid() {
    return refundWaitingLine[stor10]
}

function die() {
    require msg.sender == owner
    selfdestruct(msg.sender)
}

function _fallback() payable {
  stop
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    newOwner = arg1
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function changevanity(string arg1) payable {
    require msg.value >= 10^15
    vanity[msg.sender][] = Array(len=arg1.length, data=arg1[all])
    refundpot += msg.value
}

function blocksTillTargetShoot(address arg1) {
    if block.number - lastMove[address(arg1)] >= blocksBeforeTargetShoot:
        return 0
    return (blocksBeforeTargetShoot - block.number + lastMove[address(arg1)])
}

function blocksTillSemiShoot(address arg1) {
    if block.number - lastMove[address(arg1)] >= blocksBeforeSemiRandomShoot:
        return 0
    return (blocksBeforeSemiRandomShoot - block.number + lastMove[address(arg1)])
}

function dividendsOwing(address arg1) {
    require stor19[address(arg1)] <= totalDividendPoints
    require pointMultiplier
    return ((totalDividendPoints * balances[address(arg1)]) - (stor19[address(arg1)] * balances[address(arg1)]) / pointMultiplier)
}

function sub_b15f8b91(?) {
    require sub_96431b8b[address(arg1)].field_256 <= sub_c4cfb80a
    require pointMultiplier
    return ((sub_c4cfb80a * sub_0cd0ea37[address(arg1)]) - (sub_96431b8b[address(arg1)].field_256 * sub_0cd0ea37[address(arg1)]) / pointMultiplier)
}

function sub_dc82a98f(?) {
    require 0 < playerVault[address(arg1)]
    playerVault[address(arg1)] = 0
    call arg1 with:
       value playerVault[address(arg1)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function amountofp3d() {
    require ext_code.size(0xb3775fb83f7d12a36e0475abdd1fca35c091efbe)
    call 0xb3775fb83f7d12a36e0475abdd1fca35c091efbe.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function harvestabledivs() {
    require ext_code.size(0xb3775fb83f7d12a36e0475abdd1fca35c091efbe)
    call 0xb3775fb83f7d12a36e0475abdd1fca35c091efbe.myDividends(bool arg1) with:
         gas gas_remaining wei
        args 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_fbf4bcac(?) payable {
    if msg.value:
        require msg.value
        require pointMultiplier * msg.value / msg.value == pointMultiplier
    require sub_27a9ff59 > 0
    require sub_27a9ff59
    require (pointMultiplier * msg.value / sub_27a9ff59) + sub_c4cfb80a >= sub_c4cfb80a
    sub_c4cfb80a += pointMultiplier * msg.value / sub_27a9ff59
    require msg.value + sub_4814e415 >= sub_4814e415
    sub_4814e415 += msg.value
}

function Payoutnextrefund() {
    require refundpot > 10^13
    refundpot = 0
    if refundpot:
        require refundpot
        require pointMultiplier * refundpot / refundpot == pointMultiplier
    require sub_27a9ff59 > 0
    require sub_27a9ff59
    require (pointMultiplier * refundpot / sub_27a9ff59) + sub_c4cfb80a >= sub_c4cfb80a
    sub_c4cfb80a += pointMultiplier * refundpot / sub_27a9ff59
    require refundpot + sub_4814e415 >= sub_4814e415
    sub_4814e415 += refundpot
}

function disburse() payable {
    require msg.value / 100 <= msg.value
    if msg.value - (msg.value / 100):
        require msg.value - (msg.value / 100)
        require (msg.value * pointMultiplier) - (msg.value / 100 * pointMultiplier) / msg.value - (msg.value / 100) == pointMultiplier
    require _totalSupply > 0
    require _totalSupply
    require ((msg.value * pointMultiplier) - (msg.value / 100 * pointMultiplier) / _totalSupply) + totalDividendPoints >= totalDividendPoints
    totalDividendPoints += (msg.value * pointMultiplier) - (msg.value / 100 * pointMultiplier) / _totalSupply
    require msg.value - (msg.value / 100) + unclaimedDividends >= unclaimedDividends
    unclaimedDividends = msg.value - (msg.value / 100) + unclaimedDividends
}

function fetchdivs(address arg1) {
    require stor19[address(arg1)] <= totalDividendPoints
    require pointMultiplier
    if (totalDividendPoints * balances[address(arg1)]) - (stor19[address(arg1)] * balances[address(arg1)]) / pointMultiplier > 0:
        require (totalDividendPoints * balances[address(arg1)]) - (stor19[address(arg1)] * balances[address(arg1)]) / pointMultiplier <= unclaimedDividends
        unclaimedDividends -= (totalDividendPoints * balances[address(arg1)]) - (stor19[address(arg1)] * balances[address(arg1)]) / pointMultiplier
        require ((totalDividendPoints * balances[address(arg1)]) - (stor19[address(arg1)] * balances[address(arg1)]) / pointMultiplier) + playerVault[address(arg1)] >= playerVault[address(arg1)]
        playerVault[address(arg1)] += (totalDividendPoints * balances[address(arg1)]) - (stor19[address(arg1)] * balances[address(arg1)]) / pointMultiplier
    stor19[address(arg1)] = totalDividendPoints
}

function sub_e80d179b(?) {
    require msg.sender == owner
    s = 0
    idx = 0
    while idx < arg1:
        mem[100] = idx + sub_5c014aa7
        require ext_code.size(oldAddress)
        call oldAddress.RefundWaitingLine(uint256 arg1) with:
             gas gas_remaining wei
            args (idx + sub_5c014aa7)
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require sub_0cd0ea37[address(ext_call.return_data[0])] + 10^17 >= sub_0cd0ea37[address(ext_call.return_data[0])]
        mem[0] = address(ext_call.return_data[0])
        mem[32] = 24
        sub_0cd0ea37[address(ext_call.return_data[0])] += 10^17
        s = ext_call.return_data[0]
        idx = idx + 2
        continue 
    sub_5c014aa7 += Mask(254, 1, arg1 + 1)
    if Mask(254, 1, arg1 + 1):
        require Mask(254, 1, arg1 + 1)
        require 10^17 * Mask(254, 1, arg1 + 1) / Mask(254, 1, arg1 + 1) == 10^17
    require (10^17 * Mask(254, 1, arg1 + 1)) + sub_27a9ff59 >= sub_27a9ff59
    sub_27a9ff59 += 10^17 * Mask(254, 1, arg1 + 1)
}

function P3DDivstocontract() {
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
    require ext_call.return_data[0] / 100 <= ext_call.return_data[0]
    require ext_code.size(0xfaae60f2ce6491886c9f7c9356bd92f688ca66a1)
    call 0xfaae60f2ce6491886c9f7c9356bd92f688ca66a1.0xabc6fd0b with:
       value ext_call.return_data[0] / 100 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_call.return_data[0] - (ext_call.return_data[0] / 100) + refundpot >= refundpot
    refundpot = ext_call.return_data[0] - (ext_call.return_data[0] / 100) + refundpot
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

function sub_cf7dfa0c(?) {
    require sub_96431b8b[address(arg1)].field_256 <= sub_c4cfb80a
    require pointMultiplier
    if (sub_c4cfb80a * sub_0cd0ea37[address(arg1)]) - (sub_96431b8b[address(arg1)].field_256 * sub_0cd0ea37[address(arg1)]) / pointMultiplier > sub_0cd0ea37[address(arg1)]:
        sub_0cd0ea37[address(arg1)] = (sub_c4cfb80a * sub_0cd0ea37[address(arg1)]) - (sub_96431b8b[address(arg1)].field_256 * sub_0cd0ea37[address(arg1)]) / pointMultiplier
    if (sub_c4cfb80a * sub_0cd0ea37[address(arg1)]) - (sub_96431b8b[address(arg1)].field_256 * sub_0cd0ea37[address(arg1)]) / pointMultiplier > 0:
        require (sub_c4cfb80a * sub_0cd0ea37[address(arg1)]) - (sub_96431b8b[address(arg1)].field_256 * sub_0cd0ea37[address(arg1)]) / pointMultiplier <= sub_4814e415
        sub_4814e415 -= (sub_c4cfb80a * sub_0cd0ea37[address(arg1)]) - (sub_96431b8b[address(arg1)].field_256 * sub_0cd0ea37[address(arg1)]) / pointMultiplier
        require ((sub_c4cfb80a * sub_0cd0ea37[address(arg1)]) - (sub_96431b8b[address(arg1)].field_256 * sub_0cd0ea37[address(arg1)]) / pointMultiplier) + playerVault[address(arg1)] >= playerVault[address(arg1)]
        playerVault[address(arg1)] += (sub_c4cfb80a * sub_0cd0ea37[address(arg1)]) - (sub_96431b8b[address(arg1)].field_256 * sub_0cd0ea37[address(arg1)]) / pointMultiplier
        require (sub_c4cfb80a * sub_0cd0ea37[address(arg1)]) - (sub_96431b8b[address(arg1)].field_256 * sub_0cd0ea37[address(arg1)]) / pointMultiplier <= sub_0cd0ea37[address(arg1)]
        sub_0cd0ea37[address(arg1)] -= (sub_c4cfb80a * sub_0cd0ea37[address(arg1)]) - (sub_96431b8b[address(arg1)].field_256 * sub_0cd0ea37[address(arg1)]) / pointMultiplier
        require (sub_c4cfb80a * sub_0cd0ea37[address(arg1)]) - (sub_96431b8b[address(arg1)].field_256 * sub_0cd0ea37[address(arg1)]) / pointMultiplier <= sub_27a9ff59
        sub_27a9ff59 -= (sub_c4cfb80a * sub_0cd0ea37[address(arg1)]) - (sub_96431b8b[address(arg1)].field_256 * sub_0cd0ea37[address(arg1)]) / pointMultiplier
    sub_96431b8b[address(arg1)].field_256 = sub_c4cfb80a
}

function sub_be7f3a4c(?) payable {
    require stor19[address(msg.sender)] <= totalDividendPoints
    require pointMultiplier
    if (totalDividendPoints * balances[address(msg.sender)]) - (stor19[address(msg.sender)] * balances[address(msg.sender)]) / pointMultiplier > 0:
        require (totalDividendPoints * balances[address(msg.sender)]) - (stor19[address(msg.sender)] * balances[address(msg.sender)]) / pointMultiplier <= unclaimedDividends
        unclaimedDividends -= (totalDividendPoints * balances[address(msg.sender)]) - (stor19[address(msg.sender)] * balances[address(msg.sender)]) / pointMultiplier
        require ((totalDividendPoints * balances[address(msg.sender)]) - (stor19[address(msg.sender)] * balances[address(msg.sender)]) / pointMultiplier) + playerVault[address(msg.sender)] >= playerVault[address(msg.sender)]
        playerVault[address(msg.sender)] += (totalDividendPoints * balances[address(msg.sender)]) - (stor19[address(msg.sender)] * balances[address(msg.sender)]) / pointMultiplier
    stor19[address(msg.sender)] = totalDividendPoints
    if arg2:
        require arg2
        require 10^17 * arg2 / arg2 == 10^17
    require msg.value >= 10^17 * arg2
    require arg2 + balances[msg.sender] >= balances[msg.sender]
    balances[address(msg.sender)] = arg2 + balances[msg.sender]
    require arg2 + _totalSupply >= _totalSupply
    _totalSupply += arg2
    require arg2 + bullets[address(msg.sender)] >= bullets[address(msg.sender)]
    require 2 * arg2 >= arg2
    bullets[address(msg.sender)] += 2 * arg2
    s = 0
    idx = 0
    while idx < arg2:
        require idx + nextFormation >= nextFormation
        mem[0] = idx + nextFormation
        mem[32] = 6
        formation[idx + stor7] = msg.sender
        s = idx + nextFormation
        idx = idx + 1
        continue 
    nextFormation += arg2
    lastMove[address(msg.sender)] = block.number
    if arg2:
        require arg2
        require 5 * 10^15 * arg2 / arg2 == 5 * 10^15
    require ext_code.size(0xb3775fb83f7d12a36e0475abdd1fca35c091efbe)
    call 0xb3775fb83f7d12a36e0475abdd1fca35c091efbe.buy(address arg1) with:
       value 5 * 10^15 * arg2 wei
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2:
        require arg2
        require 10^17 * arg2 / arg2 == 10^17
    if msg.value > 10^17 * arg2:
        if arg2:
            require arg2
            require 10^17 * arg2 / arg2 == 10^17
        require 10^17 * arg2 <= msg.value
        refundpot = msg.value - (10^17 * arg2) + refundpot
    if not arg2:
        refundpot += 5 * 10^15 * arg2
    else:
        require arg2
        require 5 * 10^15 * arg2 / arg2 == 5 * 10^15
        refundpot += 5 * 10^15 * arg2
        if arg2:
            require arg2
            require 2 * 10^15 * arg2 / arg2 == 2 * 10^15
    require ext_code.size(0xfaae60f2ce6491886c9f7c9356bd92f688ca66a1)
    call 0xfaae60f2ce6491886c9f7c9356bd92f688ca66a1.0xabc6fd0b with:
       value 2 * 10^15 * arg2 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x9497bce5: msg.sender, arg2, nextFormation
}

function sub_9b6b1f40(?) payable {
    require stor19[address(msg.sender)] <= totalDividendPoints
    require pointMultiplier
    if (totalDividendPoints * balances[address(msg.sender)]) - (stor19[address(msg.sender)] * balances[address(msg.sender)]) / pointMultiplier > 0:
        require (totalDividendPoints * balances[address(msg.sender)]) - (stor19[address(msg.sender)] * balances[address(msg.sender)]) / pointMultiplier <= unclaimedDividends
        unclaimedDividends -= (totalDividendPoints * balances[address(msg.sender)]) - (stor19[address(msg.sender)] * balances[address(msg.sender)]) / pointMultiplier
        require ((totalDividendPoints * balances[address(msg.sender)]) - (stor19[address(msg.sender)] * balances[address(msg.sender)]) / pointMultiplier) + playerVault[address(msg.sender)] >= playerVault[address(msg.sender)]
        playerVault[address(msg.sender)] += (totalDividendPoints * balances[address(msg.sender)]) - (stor19[address(msg.sender)] * balances[address(msg.sender)]) / pointMultiplier
    stor19[address(msg.sender)] = totalDividendPoints
    if arg3:
        require arg3
        require 10^17 * arg3 / arg3 == 10^17
    require msg.value >= 10^17 * arg3
    require arg3 + balances[msg.sender] >= balances[msg.sender]
    balances[address(msg.sender)] = arg3 + balances[msg.sender]
    require arg3 + _totalSupply >= _totalSupply
    _totalSupply += arg3
    require arg3 + bullets[address(msg.sender)] >= bullets[address(msg.sender)]
    require 2 * arg3 >= arg3
    bullets[address(msg.sender)] += 2 * arg3
    s = 0
    idx = 0
    while idx < arg3:
        require idx + nextFormation >= nextFormation
        mem[0] = idx + nextFormation
        mem[32] = 6
        formation[idx + stor7] = msg.sender
        s = idx + nextFormation
        idx = idx + 1
        continue 
    nextFormation += arg3
    lastMove[address(msg.sender)] = block.number
    if arg3:
        require arg3
        require 5 * 10^15 * arg3 / arg3 == 5 * 10^15
    require ext_code.size(0xb3775fb83f7d12a36e0475abdd1fca35c091efbe)
    call 0xb3775fb83f7d12a36e0475abdd1fca35c091efbe.buy(address arg1) with:
       value 5 * 10^15 * arg3 wei
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg3:
        require arg3
        require 10^17 * arg3 / arg3 == 10^17
    if msg.value > 10^17 * arg3:
        if arg3:
            require arg3
            require 10^17 * arg3 / arg3 == 10^17
        require 10^17 * arg3 <= msg.value
        refundpot = msg.value - (10^17 * arg3) + refundpot
    if not arg3:
        refundpot += 5 * 10^15 * arg3
    else:
        require arg3
        require 5 * 10^15 * arg3 / arg3 == 5 * 10^15
        refundpot += 5 * 10^15 * arg3
        if arg3:
            require arg3
            require 10^15 * arg3 / arg3 == 10^15
    require ext_code.size(0xfaae60f2ce6491886c9f7c9356bd92f688ca66a1)
    call 0xfaae60f2ce6491886c9f7c9356bd92f688ca66a1.0xabc6fd0b with:
       value 10^15 * arg3 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg3:
        require arg3
        require 10^15 * arg3 / arg3 == 10^15
    require (10^15 * arg3) + playerVault[address(arg2)] >= playerVault[address(arg2)]
    playerVault[address(arg2)] += 10^15 * arg3
    emit 0x9497bce5: msg.sender, arg3, nextFormation
}

function shootTarget(uint256 arg1) {
    require 0 < balances[msg.sender]
    require arg1 <= nextFormation
    require arg1 > 0
    require block.number > lastMove[address(msg.sender)] + blocksBeforeTargetShoot
    require bullets[address(msg.sender)] > 0
    if arg1 != nextFormation:
        require stor19[stor6[arg1]] <= totalDividendPoints
        require pointMultiplier
        if (totalDividendPoints * balances[stor6[arg1]]) - (stor19[stor6[arg1]] * balances[stor6[arg1]]) / pointMultiplier > 0:
            require (totalDividendPoints * balances[stor6[arg1]]) - (stor19[stor6[arg1]] * balances[stor6[arg1]]) / pointMultiplier <= unclaimedDividends
            unclaimedDividends -= (totalDividendPoints * balances[stor6[arg1]]) - (stor19[stor6[arg1]] * balances[stor6[arg1]]) / pointMultiplier
            require ((totalDividendPoints * balances[stor6[arg1]]) - (stor19[stor6[arg1]] * balances[stor6[arg1]]) / pointMultiplier) + playerVault[stor6[arg1]] >= playerVault[stor6[arg1]]
            playerVault[stor6[arg1]] += (totalDividendPoints * balances[stor6[arg1]]) - (stor19[stor6[arg1]] * balances[stor6[arg1]]) / pointMultiplier
        stor19[stor6[arg1]] = totalDividendPoints
        balances[stor6[arg1]]--
        _totalSupply--
        bullets[address(msg.sender)]--
        require 1 <= nextFormation
        formation[arg1] = formation[stor7 - 1]
        nextFormation--
        lastMove[address(msg.sender)] = block.number
        require sub_96431b8b[stor6[arg1]].field_256 <= sub_c4cfb80a
        require pointMultiplier
        if (sub_c4cfb80a * sub_0cd0ea37[stor6[arg1]]) - (sub_96431b8b[stor6[arg1]].field_256 * sub_0cd0ea37[stor6[arg1]]) / pointMultiplier > sub_0cd0ea37[stor6[arg1]]:
            sub_0cd0ea37[stor6[arg1]] = (sub_c4cfb80a * sub_0cd0ea37[stor6[arg1]]) - (sub_96431b8b[stor6[arg1]].field_256 * sub_0cd0ea37[stor6[arg1]]) / pointMultiplier
        if (sub_c4cfb80a * sub_0cd0ea37[stor6[arg1]]) - (sub_96431b8b[stor6[arg1]].field_256 * sub_0cd0ea37[stor6[arg1]]) / pointMultiplier > 0:
            require (sub_c4cfb80a * sub_0cd0ea37[stor6[arg1]]) - (sub_96431b8b[stor6[arg1]].field_256 * sub_0cd0ea37[stor6[arg1]]) / pointMultiplier <= sub_4814e415
            sub_4814e415 -= (sub_c4cfb80a * sub_0cd0ea37[stor6[arg1]]) - (sub_96431b8b[stor6[arg1]].field_256 * sub_0cd0ea37[stor6[arg1]]) / pointMultiplier
            require ((sub_c4cfb80a * sub_0cd0ea37[stor6[arg1]]) - (sub_96431b8b[stor6[arg1]].field_256 * sub_0cd0ea37[stor6[arg1]]) / pointMultiplier) + playerVault[stor6[arg1]] >= playerVault[stor6[arg1]]
            playerVault[stor6[arg1]] += (sub_c4cfb80a * sub_0cd0ea37[stor6[arg1]]) - (sub_96431b8b[stor6[arg1]].field_256 * sub_0cd0ea37[stor6[arg1]]) / pointMultiplier
            require (sub_c4cfb80a * sub_0cd0ea37[stor6[arg1]]) - (sub_96431b8b[stor6[arg1]].field_256 * sub_0cd0ea37[stor6[arg1]]) / pointMultiplier <= sub_0cd0ea37[stor6[arg1]]
            sub_0cd0ea37[stor6[arg1]] -= (sub_c4cfb80a * sub_0cd0ea37[stor6[arg1]]) - (sub_96431b8b[stor6[arg1]].field_256 * sub_0cd0ea37[stor6[arg1]]) / pointMultiplier
            require (sub_c4cfb80a * sub_0cd0ea37[stor6[arg1]]) - (sub_96431b8b[stor6[arg1]].field_256 * sub_0cd0ea37[stor6[arg1]]) / pointMultiplier <= sub_27a9ff59
            sub_27a9ff59 -= (sub_c4cfb80a * sub_0cd0ea37[stor6[arg1]]) - (sub_96431b8b[stor6[arg1]].field_256 * sub_0cd0ea37[stor6[arg1]]) / pointMultiplier
        sub_96431b8b[stor6[arg1]].field_256 = sub_c4cfb80a
        sub_0cd0ea37[stor6[arg1]] += 10^17
        require 88 * 10^15 * pointMultiplier / 88 * 10^15 == pointMultiplier
        require _totalSupply > 0
        require _totalSupply
        require (88 * 10^15 * pointMultiplier / _totalSupply) + totalDividendPoints >= totalDividendPoints
        totalDividendPoints += 88 * 10^15 * pointMultiplier / _totalSupply
        require unclaimedDividends + 88 * 10^15 >= unclaimedDividends
        unclaimedDividends += 88 * 10^15
        emit targetShot(msg.sender);
        emit 0x9a3d3460: formation[arg1], arg1
    else:
        require stor19[stor6[0]] <= totalDividendPoints
        require pointMultiplier
        if (totalDividendPoints * balances[stor6[0]]) - (stor19[stor6[0]] * balances[stor6[0]]) / pointMultiplier > 0:
            require (totalDividendPoints * balances[stor6[0]]) - (stor19[stor6[0]] * balances[stor6[0]]) / pointMultiplier <= unclaimedDividends
            unclaimedDividends -= (totalDividendPoints * balances[stor6[0]]) - (stor19[stor6[0]] * balances[stor6[0]]) / pointMultiplier
            require ((totalDividendPoints * balances[stor6[0]]) - (stor19[stor6[0]] * balances[stor6[0]]) / pointMultiplier) + playerVault[stor6[0]] >= playerVault[stor6[0]]
            playerVault[stor6[0]] += (totalDividendPoints * balances[stor6[0]]) - (stor19[stor6[0]] * balances[stor6[0]]) / pointMultiplier
        stor19[stor6[0]] = totalDividendPoints
        balances[stor6[0]]--
        _totalSupply--
        bullets[address(msg.sender)]--
        require 1 <= nextFormation
        formation[0] = formation[stor7 - 1]
        nextFormation--
        lastMove[address(msg.sender)] = block.number
        require sub_96431b8b[stor6[0]].field_256 <= sub_c4cfb80a
        require pointMultiplier
        if (sub_c4cfb80a * sub_0cd0ea37[stor6[0]]) - (sub_96431b8b[stor6[0]].field_256 * sub_0cd0ea37[stor6[0]]) / pointMultiplier > sub_0cd0ea37[stor6[0]]:
            sub_0cd0ea37[stor6[0]] = (sub_c4cfb80a * sub_0cd0ea37[stor6[0]]) - (sub_96431b8b[stor6[0]].field_256 * sub_0cd0ea37[stor6[0]]) / pointMultiplier
        if (sub_c4cfb80a * sub_0cd0ea37[stor6[0]]) - (sub_96431b8b[stor6[0]].field_256 * sub_0cd0ea37[stor6[0]]) / pointMultiplier > 0:
            require (sub_c4cfb80a * sub_0cd0ea37[stor6[0]]) - (sub_96431b8b[stor6[0]].field_256 * sub_0cd0ea37[stor6[0]]) / pointMultiplier <= sub_4814e415
            sub_4814e415 -= (sub_c4cfb80a * sub_0cd0ea37[stor6[0]]) - (sub_96431b8b[stor6[0]].field_256 * sub_0cd0ea37[stor6[0]]) / pointMultiplier
            require ((sub_c4cfb80a * sub_0cd0ea37[stor6[0]]) - (sub_96431b8b[stor6[0]].field_256 * sub_0cd0ea37[stor6[0]]) / pointMultiplier) + playerVault[stor6[0]] >= playerVault[stor6[0]]
            playerVault[stor6[0]] += (sub_c4cfb80a * sub_0cd0ea37[stor6[0]]) - (sub_96431b8b[stor6[0]].field_256 * sub_0cd0ea37[stor6[0]]) / pointMultiplier
            require (sub_c4cfb80a * sub_0cd0ea37[stor6[0]]) - (sub_96431b8b[stor6[0]].field_256 * sub_0cd0ea37[stor6[0]]) / pointMultiplier <= sub_0cd0ea37[stor6[0]]
            sub_0cd0ea37[stor6[0]] -= (sub_c4cfb80a * sub_0cd0ea37[stor6[0]]) - (sub_96431b8b[stor6[0]].field_256 * sub_0cd0ea37[stor6[0]]) / pointMultiplier
            require (sub_c4cfb80a * sub_0cd0ea37[stor6[0]]) - (sub_96431b8b[stor6[0]].field_256 * sub_0cd0ea37[stor6[0]]) / pointMultiplier <= sub_27a9ff59
            sub_27a9ff59 -= (sub_c4cfb80a * sub_0cd0ea37[stor6[0]]) - (sub_96431b8b[stor6[0]].field_256 * sub_0cd0ea37[stor6[0]]) / pointMultiplier
        sub_96431b8b[stor6[0]].field_256 = sub_c4cfb80a
        sub_0cd0ea37[stor6[0]] += 10^17
        require 88 * 10^15 * pointMultiplier / 88 * 10^15 == pointMultiplier
        require _totalSupply > 0
        require _totalSupply
        require (88 * 10^15 * pointMultiplier / _totalSupply) + totalDividendPoints >= totalDividendPoints
        totalDividendPoints += 88 * 10^15 * pointMultiplier / _totalSupply
        require unclaimedDividends + 88 * 10^15 >= unclaimedDividends
        unclaimedDividends += 88 * 10^15
        emit targetShot(msg.sender);
        emit 0x9a3d3460: formation[0], 0
}

function shootSemiRandom() {
    require 0 < balances[msg.sender]
    require block.number > lastMove[msg.sender] + blocksBeforeSemiRandomShoot
    require bullets[address(msg.sender)] > 0
    require lastMove[address(msg.sender)] <= block.number
    require block.number - lastMove[address(msg.sender)] % 200 <= block.number
    require nextFormation
    if formation[block.hash(block.number - (block.number - stor8[address(msg.sender)] % 200)) % stor7] != msg.sender:
        require stor19[stor6[block.hash(block.number - (block.number - stor8[address(msg.sender)] % 200)) % stor7]] <= totalDividendPoints
        require pointMultiplier
        if (totalDividendPoints * balances[stor6[block.hash(block.number - (block.number - stor8[address(msg.sender)] % 200)) % stor7]]) - (stor19[stor6[block.hash(block.number - (block.number - stor8[address(msg.sender)] % 200)) % stor7]] * balances[stor6[block.hash(block.number - (block.number - stor8[address(msg.sender)] % 200)) % stor7]]) / pointMultiplier > 0:
            require (totalDividendPoints * balances[stor6[block.hash(block.number - (block.number - stor8[address(msg.sender)] % 200)) % stor7]]) - (stor19[stor6[block.hash(block.number - (block.number - stor8[address(msg.sender)] % 200)) % stor7]] * balances[stor6[block.hash(block.number - (block.number - stor8[address(msg.sender)] % 200)) % stor7]]) / pointMultiplier <= unclaimedDividends
            unclaimedDividends -= (totalDividendPoints * balances[stor6[block.hash(block.number - (block.number - stor8[address(msg.sender)] % 200)) % stor7]]) - (stor19[stor6[block.hash(block.number - (block.number - stor8[address(msg.sender)] % 200)) % stor7]] * balances[stor6[block.hash(block.number - (block.number - stor8[address(msg.sender)] % 200)) % stor7]]) / pointMultiplier
            require ((totalDividendPoints * balances[stor6[block.hash(block.number - (block.number - stor8[address(msg.sender)] % 200)) % stor7]]) - (stor19[stor6[block.hash(block.number - (block.number - stor8[address(msg.sender)] % 200)) % stor7]] * balances[stor6[block.hash(block.number - (block.number - stor8[address(msg.sender)] % 200)) % stor7]]) / pointMultiplier) + playerVault[stor6[block.hash(block.number - (block.number - stor8[address(msg.sender)] % 200)) % stor7]] >= playerVault[stor6[block.hash(block.number - (block.number - stor8[address(msg.sender)] % 200)) % stor7]]
            playerVault[stor6[block.hash(block.number - (block.number - stor8[address(msg.sender)] % 200)) % stor7]] += (totalDividendPoints * balances[stor6[block.hash(block.number - (block.number - stor8[address(msg.sender)] % 200)) % stor7]]) - (stor19[stor6[block.hash(block.number - (block.number - stor8[address(msg.sender)] % 200)) % stor7]] * balances[stor6[block.hash(block.number - (block.number - stor8[address(msg.sender)] % 200)) % stor7]]) / pointMultiplier
        stor19[stor6[block.hash(block.number - (block.number - stor8[address(msg.sender)] % 200)) % stor7]] = totalDividendPoints
        balances[stor6[block.hash(block.number - (block.number - stor8[address(msg.sender)] % 200)) % stor7]]--
        _totalSupply--
        bullets[address(msg.sender)]--
        require 1 <= nextFormation
        formation[block.hash(block.number - (block.number - stor8[address(msg.sender)] % 200)) % stor7] = formation[stor7 - 1]
        nextFormation--
        lastMove[address(msg.sender)] = block.number
        require sub_96431b8b[stor6[block.hash(block.number - (block.number - stor8[address(msg.sender)] % 200)) % stor7]].field_256 <= sub_c4cfb80a
        require pointMultiplier
        if (sub_c4cfb80a * sub_0cd0ea37[stor6[block.hash(block.number - (block.number - stor8[address(msg.sender)] % 200)) % stor7]]) - (sub_96431b8b[stor6[block.hash(block.number - (block.number - stor8[address(msg.sender)] % 200)) % stor7]].field_256 * sub_0cd0ea37[stor6[block.hash(block.number - (block.number - stor8[address(msg.sender)] % 200)) % stor7]]) / pointMultiplier > sub_0cd0ea37[stor6[block.hash(block.number - (block.number - stor8[address(msg.sender)] % 200)) % stor7]]:
            sub_0cd0ea37[stor6[block.hash(block.number - (block.number - stor8[address(msg.sender)] % 200)) % stor7]] = (sub_c4cfb80a * sub_0cd0ea37[stor6[block.hash(block.number - (block.number - stor8[address(msg.sender)] % 200)) % stor7]]) - (sub_96431b8b[stor6[block.hash(block.number - (block.number - stor8[address(msg.sender)] % 200)) % stor7]].field_256 * sub_0cd0ea37[stor6[block.hash(block.number - (block.number - stor8[address(msg.sender)] % 200)) % stor7]]) / pointMultiplier
        if (sub_c4cfb80a * sub_0cd0ea37[stor6[block.hash(block.number - (block.number - stor8[address(msg.sender)] % 200)) % stor7]]) - (sub_96431b8b[stor6[block.hash(block.number - (block.number - stor8[address(msg.sender)] % 200)) % stor7]].field_256 * sub_0cd0ea37[stor6[block.hash(block.number - (block.number - stor8[address(msg.sender)] % 200)) % stor7]]) / pointMultiplier > 0:
            require (sub_c4cfb80a * sub_0cd0ea37[stor6[block.hash(block.number - (block.number - stor8[address(msg.sender)] % 200)) % stor7]]) - (sub_96431b8b[stor6[block.hash(block.number - (block.number - stor8[address(msg.sender)] % 200)) % stor7]].field_256 * sub_0cd0ea37[stor6[block.hash(block.number - (block.number - stor8[address(msg.sender)] % 200)) % stor7]]) / pointMultiplier <= sub_4814e415
            sub_4814e415 -= (sub_c4cfb80a * sub_0cd0ea37[stor6[block.hash(block.number - (block.number - stor8[address(msg.sender)] % 200)) % stor7]]) - (sub_96431b8b[stor6[block.hash(block.number - (block.number - stor8[address(msg.sender)] % 200)) % stor7]].field_256 * sub_0cd0ea37[stor6[block.hash(block.number - (block.number - stor8[address(msg.sender)] % 200)) % stor7]]) / pointMultiplier
            require ((sub_c4cfb80a * sub_0cd0ea37[stor6[block.hash(block.number - (block.number - stor8[address(msg.sender)] % 200)) % stor7]]) - (sub_96431b8b[stor6[block.hash(block.number - (block.number - stor8[address(msg.sender)] % 200)) % stor7]].field_256 * sub_0cd0ea37[stor6[block.hash(block.number - (block.number - stor8[address(msg.sender)] % 200)) % stor7]]) / pointMultiplier) + playerVault[stor6[block.hash(block.number - (block.number - stor8[address(msg.sender)] % 200)) % stor7]] >= playerVault[stor6[block.hash(block.number - (block.number - stor8[address(msg.sender)] % 200)) % stor7]]
            playerVault[stor6[block.hash(block.number - (block.number - stor8[address(msg.sender)] % 200)) % stor7]] += (sub_c4cfb80a * sub_0cd0ea37[stor6[block.hash(block.number - (block.number - stor8[address(msg.sender)] % 200)) % stor7]]) - (sub_96431b8b[stor6[block.hash(block.number - (block.number - stor8[address(msg.sender)] % 200)) % stor7]].field_256 * sub_0cd0ea37[stor6[block.hash(block.number - (block.number - stor8[address(msg.sender)] % 200)) % stor7]]) / pointMultiplier
            require (sub_c4cfb80a * sub_0cd0ea37[stor6[block.hash(block.number - (block.number - stor8[address(msg.sender)] % 200)) % stor7]]) - (sub_96431b8b[stor6[block.hash(block.number - (block.number - stor8[address(msg.sender)] % 200)) % stor7]].field_256 * sub_0cd0ea37[stor6[block.hash(block.number - (block.number - stor8[address(msg.sender)] % 200)) % stor7]]) / pointMultiplier <= sub_0cd0ea37[stor6[block.hash(block.number - (block.number - stor8[address(msg.sender)] % 200)) % stor7]]
            sub_0cd0ea37[stor6[block.hash(block.number - (block.number - stor8[address(msg.sender)] % 200)) % stor7]] -= (sub_c4cfb80a * sub_0cd0ea37[stor6[block.hash(block.number - (block.number - stor8[address(msg.sender)] % 200)) % stor7]]) - (sub_96431b8b[stor6[block.hash(block.number - (block.number - stor8[address(msg.sender)] % 200)) % stor7]].field_256 * sub_0cd0ea37[stor6[block.hash(block.number - (block.number - stor8[address(msg.sender)] % 200)) % stor7]]) / pointMultiplier
            require (sub_c4cfb80a * sub_0cd0ea37[stor6[block.hash(block.number - (block.number - stor8[address(msg.sender)] % 200)) % stor7]]) - (sub_96431b8b[stor6[block.hash(block.number - (block.number - stor8[address(msg.sender)] % 200)) % stor7]].field_256 * sub_0cd0ea37[stor6[block.hash(block.number - (block.number - stor8[address(msg.sender)] % 200)) % stor7]]) / pointMultiplier <= sub_27a9ff59
            sub_27a9ff59 -= (sub_c4cfb80a * sub_0cd0ea37[stor6[block.hash(block.number - (block.number - stor8[address(msg.sender)] % 200)) % stor7]]) - (sub_96431b8b[stor6[block.hash(block.number - (block.number - stor8[address(msg.sender)] % 200)) % stor7]].field_256 * sub_0cd0ea37[stor6[block.hash(block.number - (block.number - stor8[address(msg.sender)] % 200)) % stor7]]) / pointMultiplier
        sub_96431b8b[stor6[block.hash(block.number - (block.number - stor8[address(msg.sender)] % 200)) % stor7]].field_256 = sub_c4cfb80a
        sub_0cd0ea37[stor6[block.hash(block.number - (block.number - stor8[address(msg.sender)] % 200)) % stor7]] += 10^17
        require 88 * 10^15 * pointMultiplier / 88 * 10^15 == pointMultiplier
        require _totalSupply > 0
        require _totalSupply
        require (88 * 10^15 * pointMultiplier / _totalSupply) + totalDividendPoints >= totalDividendPoints
        totalDividendPoints += 88 * 10^15 * pointMultiplier / _totalSupply
        require unclaimedDividends + 88 * 10^15 >= unclaimedDividends
        unclaimedDividends += 88 * 10^15
        emit semiShot(msg.sender);
        emit 0x9a3d3460: formation[block.hash(block.number - (block.number - stor8[address(msg.sender)] % 200)) % stor7], block.hash(block.number - (block.number - lastMove[address(msg.sender)] % 200)) % nextFormation
    else:
        require block.number - lastMove[address(msg.sender)] % 200 <= block.number
        require nextFormation
        require stor19[stor6[block.hash(block.number + -(block.number - stor8[address(msg.sender)] % 200) + 1) % stor7]] <= totalDividendPoints
        require pointMultiplier
        if (totalDividendPoints * balances[stor6[block.hash(block.number + -(block.number - stor8[address(msg.sender)] % 200) + 1) % stor7]]) - (stor19[stor6[block.hash(block.number + -(block.number - stor8[address(msg.sender)] % 200) + 1) % stor7]] * balances[stor6[block.hash(block.number + -(block.number - stor8[address(msg.sender)] % 200) + 1) % stor7]]) / pointMultiplier > 0:
            require (totalDividendPoints * balances[stor6[block.hash(block.number + -(block.number - stor8[address(msg.sender)] % 200) + 1) % stor7]]) - (stor19[stor6[block.hash(block.number + -(block.number - stor8[address(msg.sender)] % 200) + 1) % stor7]] * balances[stor6[block.hash(block.number + -(block.number - stor8[address(msg.sender)] % 200) + 1) % stor7]]) / pointMultiplier <= unclaimedDividends
            unclaimedDividends -= (totalDividendPoints * balances[stor6[block.hash(block.number + -(block.number - stor8[address(msg.sender)] % 200) + 1) % stor7]]) - (stor19[stor6[block.hash(block.number + -(block.number - stor8[address(msg.sender)] % 200) + 1) % stor7]] * balances[stor6[block.hash(block.number + -(block.number - stor8[address(msg.sender)] % 200) + 1) % stor7]]) / pointMultiplier
            require ((totalDividendPoints * balances[stor6[block.hash(block.number + -(block.number - stor8[address(msg.sender)] % 200) + 1) % stor7]]) - (stor19[stor6[block.hash(block.number + -(block.number - stor8[address(msg.sender)] % 200) + 1) % stor7]] * balances[stor6[block.hash(block.number + -(block.number - stor8[address(msg.sender)] % 200) + 1) % stor7]]) / pointMultiplier) + playerVault[stor6[block.hash(block.number + -(block.number - stor8[address(msg.sender)] % 200) + 1) % stor7]] >= playerVault[stor6[block.hash(block.number + -(block.number - stor8[address(msg.sender)] % 200) + 1) % stor7]]
            playerVault[stor6[block.hash(block.number + -(block.number - stor8[address(msg.sender)] % 200) + 1) % stor7]] += (totalDividendPoints * balances[stor6[block.hash(block.number + -(block.number - stor8[address(msg.sender)] % 200) + 1) % stor7]]) - (stor19[stor6[block.hash(block.number + -(block.number - stor8[address(msg.sender)] % 200) + 1) % stor7]] * balances[stor6[block.hash(block.number + -(block.number - stor8[address(msg.sender)] % 200) + 1) % stor7]]) / pointMultiplier
        stor19[stor6[block.hash(block.number + -(block.number - stor8[address(msg.sender)] % 200) + 1) % stor7]] = totalDividendPoints
        balances[stor6[block.hash(block.number + -(block.number - stor8[address(msg.sender)] % 200) + 1) % stor7]]--
        _totalSupply--
        bullets[address(msg.sender)]--
        require 1 <= nextFormation
        formation[block.hash(block.number + -(block.number - stor8[address(msg.sender)] % 200) + 1) % stor7] = formation[stor7 - 1]
        nextFormation--
        lastMove[address(msg.sender)] = block.number
        require sub_96431b8b[stor6[block.hash(block.number + -(block.number - stor8[address(msg.sender)] % 200) + 1) % stor7]].field_256 <= sub_c4cfb80a
        require pointMultiplier
        if (sub_c4cfb80a * sub_0cd0ea37[stor6[block.hash(block.number + -(block.number - stor8[address(msg.sender)] % 200) + 1) % stor7]]) - (sub_96431b8b[stor6[block.hash(block.number + -(block.number - stor8[address(msg.sender)] % 200) + 1) % stor7]].field_256 * sub_0cd0ea37[stor6[block.hash(block.number + -(block.number - stor8[address(msg.sender)] % 200) + 1) % stor7]]) / pointMultiplier > sub_0cd0ea37[stor6[block.hash(block.number + -(block.number - stor8[address(msg.sender)] % 200) + 1) % stor7]]:
            sub_0cd0ea37[stor6[block.hash(block.number + -(block.number - stor8[address(msg.sender)] % 200) + 1) % stor7]] = (sub_c4cfb80a * sub_0cd0ea37[stor6[block.hash(block.number + -(block.number - stor8[address(msg.sender)] % 200) + 1) % stor7]]) - (sub_96431b8b[stor6[block.hash(block.number + -(block.number - stor8[address(msg.sender)] % 200) + 1) % stor7]].field_256 * sub_0cd0ea37[stor6[block.hash(block.number + -(block.number - stor8[address(msg.sender)] % 200) + 1) % stor7]]) / pointMultiplier
        if (sub_c4cfb80a * sub_0cd0ea37[stor6[block.hash(block.number + -(block.number - stor8[address(msg.sender)] % 200) + 1) % stor7]]) - (sub_96431b8b[stor6[block.hash(block.number + -(block.number - stor8[address(msg.sender)] % 200) + 1) % stor7]].field_256 * sub_0cd0ea37[stor6[block.hash(block.number + -(block.number - stor8[address(msg.sender)] % 200) + 1) % stor7]]) / pointMultiplier > 0:
            require (sub_c4cfb80a * sub_0cd0ea37[stor6[block.hash(block.number + -(block.number - stor8[address(msg.sender)] % 200) + 1) % stor7]]) - (sub_96431b8b[stor6[block.hash(block.number + -(block.number - stor8[address(msg.sender)] % 200) + 1) % stor7]].field_256 * sub_0cd0ea37[stor6[block.hash(block.number + -(block.number - stor8[address(msg.sender)] % 200) + 1) % stor7]]) / pointMultiplier <= sub_4814e415
            sub_4814e415 -= (sub_c4cfb80a * sub_0cd0ea37[stor6[block.hash(block.number + -(block.number - stor8[address(msg.sender)] % 200) + 1) % stor7]]) - (sub_96431b8b[stor6[block.hash(block.number + -(block.number - stor8[address(msg.sender)] % 200) + 1) % stor7]].field_256 * sub_0cd0ea37[stor6[block.hash(block.number + -(block.number - stor8[address(msg.sender)] % 200) + 1) % stor7]]) / pointMultiplier
            require ((sub_c4cfb80a * sub_0cd0ea37[stor6[block.hash(block.number + -(block.number - stor8[address(msg.sender)] % 200) + 1) % stor7]]) - (sub_96431b8b[stor6[block.hash(block.number + -(block.number - stor8[address(msg.sender)] % 200) + 1) % stor7]].field_256 * sub_0cd0ea37[stor6[block.hash(block.number + -(block.number - stor8[address(msg.sender)] % 200) + 1) % stor7]]) / pointMultiplier) + playerVault[stor6[block.hash(block.number + -(block.number - stor8[address(msg.sender)] % 200) + 1) % stor7]] >= playerVault[stor6[block.hash(block.number + -(block.number - stor8[address(msg.sender)] % 200) + 1) % stor7]]
            playerVault[stor6[block.hash(block.number + -(block.number - stor8[address(msg.sender)] % 200) + 1) % stor7]] += (sub_c4cfb80a * sub_0cd0ea37[stor6[block.hash(block.number + -(block.number - stor8[address(msg.sender)] % 200) + 1) % stor7]]) - (sub_96431b8b[stor6[block.hash(block.number + -(block.number - stor8[address(msg.sender)] % 200) + 1) % stor7]].field_256 * sub_0cd0ea37[stor6[block.hash(block.number + -(block.number - stor8[address(msg.sender)] % 200) + 1) % stor7]]) / pointMultiplier
            require (sub_c4cfb80a * sub_0cd0ea37[stor6[block.hash(block.number + -(block.number - stor8[address(msg.sender)] % 200) + 1) % stor7]]) - (sub_96431b8b[stor6[block.hash(block.number + -(block.number - stor8[address(msg.sender)] % 200) + 1) % stor7]].field_256 * sub_0cd0ea37[stor6[block.hash(block.number + -(block.number - stor8[address(msg.sender)] % 200) + 1) % stor7]]) / pointMultiplier <= sub_0cd0ea37[stor6[block.hash(block.number + -(block.number - stor8[address(msg.sender)] % 200) + 1) % stor7]]
            sub_0cd0ea37[stor6[block.hash(block.number + -(block.number - stor8[address(msg.sender)] % 200) + 1) % stor7]] -= (sub_c4cfb80a * sub_0cd0ea37[stor6[block.hash(block.number + -(block.number - stor8[address(msg.sender)] % 200) + 1) % stor7]]) - (sub_96431b8b[stor6[block.hash(block.number + -(block.number - stor8[address(msg.sender)] % 200) + 1) % stor7]].field_256 * sub_0cd0ea37[stor6[block.hash(block.number + -(block.number - stor8[address(msg.sender)] % 200) + 1) % stor7]]) / pointMultiplier
            require (sub_c4cfb80a * sub_0cd0ea37[stor6[block.hash(block.number + -(block.number - stor8[address(msg.sender)] % 200) + 1) % stor7]]) - (sub_96431b8b[stor6[block.hash(block.number + -(block.number - stor8[address(msg.sender)] % 200) + 1) % stor7]].field_256 * sub_0cd0ea37[stor6[block.hash(block.number + -(block.number - stor8[address(msg.sender)] % 200) + 1) % stor7]]) / pointMultiplier <= sub_27a9ff59
            sub_27a9ff59 -= (sub_c4cfb80a * sub_0cd0ea37[stor6[block.hash(block.number + -(block.number - stor8[address(msg.sender)] % 200) + 1) % stor7]]) - (sub_96431b8b[stor6[block.hash(block.number + -(block.number - stor8[address(msg.sender)] % 200) + 1) % stor7]].field_256 * sub_0cd0ea37[stor6[block.hash(block.number + -(block.number - stor8[address(msg.sender)] % 200) + 1) % stor7]]) / pointMultiplier
        sub_96431b8b[stor6[block.hash(block.number + -(block.number - stor8[address(msg.sender)] % 200) + 1) % stor7]].field_256 = sub_c4cfb80a
        sub_0cd0ea37[stor6[block.hash(block.number + -(block.number - stor8[address(msg.sender)] % 200) + 1) % stor7]] += 10^17
        require 88 * 10^15 * pointMultiplier / 88 * 10^15 == pointMultiplier
        require _totalSupply > 0
        require _totalSupply
        require (88 * 10^15 * pointMultiplier / _totalSupply) + totalDividendPoints >= totalDividendPoints
        totalDividendPoints += 88 * 10^15 * pointMultiplier / _totalSupply
        require unclaimedDividends + 88 * 10^15 >= unclaimedDividends
        unclaimedDividends += 88 * 10^15
        emit semiShot(msg.sender);
        emit 0x9a3d3460: formation[block.hash(block.number + -(block.number - stor8[address(msg.sender)] % 200) + 1) % stor7], block.hash(block.number + -(block.number - lastMove[address(msg.sender)] % 200) + 1) % nextFormation
}



}
