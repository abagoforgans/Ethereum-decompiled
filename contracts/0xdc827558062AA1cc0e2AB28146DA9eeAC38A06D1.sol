contract main {




// =====================  Runtime code  =====================


#
#  - sub_991edb0d(?)
#  - PendinglinesToLines()
#
mapping of address management;
mapping of uint256 manVault;
mapping of uint256 price;
uint256 ethPendingManagement;
mapping of uint256 bondsOutstanding;
uint256 totalSupplyBonds;
mapping of uint256 playerVault;
mapping of uint256 piggyBank;
mapping of uint256 pendingFills;
mapping of uint256 playerId;
mapping of address idToAdress;
uint256 nextPlayerID;
mapping of uint8 stor12;
mapping of uint256 percentageToReinvest;
uint256 sub_cd68b5a6;
uint256 sub_790ecceb;
mapping of address sub_870b9c25;
mapping of uint8 stor17;
mapping of uint256 sub_b1255c6c;
uint256 sub_a1c5234a;
uint256 sub_1072c81d;
uint256 sub_3fcda615;
uint256 sub_7294c1e3;
uint256 sub_2fec94f5;
uint256 sub_31035f04;
mapping of uint256 sub_60818807;
uint256 stor26; offset 1
uint256 sub_ddadc843;
uint256 sub_34b89001;
address sub_50d0d68eAddress;
uint256 sub_b003201c;
uint8 sub_68dcff1d;
uint256 sub_7c6a4991;
mapping of address sub_2ed36b49;
uint256 sub_2c4604cb;
uint256 sub_588c68ee;
uint256 sub_8359de66;
uint256 sub_22f197ef;
uint256 sub_6b453285;
mapping of uint256 sub_9f90d8bd;
mapping of uint256 sub_2bbaa35d;
mapping of uint256 sub_c055d4e9;
mapping of uint8 stor41;
uint256 sub_9e2b33f4;
uint256 exitPot;
uint256 sub_60d86fa6;
uint256 sub_760c656a;
uint256 sub_c2b184e9;
uint256 sub_7f5a27cf;
uint256 sub_65fe3418;
uint256 sub_85f4f121;
uint256 stor50;
uint256 pointMultiplier;
mapping of struct stor52;
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

function sub_1072c81d(?) {
    return sub_1072c81d
}

function totalDividendPoints() {
    return totalDividendPoints
}

function nextPlayerID() {
    return nextPlayerID
}

function sub_22f197ef(?) {
    return sub_22f197ef
}

function sub_268dbd16(?) {
    return bool(stor41[arg1])
}

function price(uint256 arg1) {
    return price[arg1]
}

function sub_2bbaa35d(?) {
    return sub_2bbaa35d[arg1]
}

function sub_2c4604cb(?) {
    return sub_2c4604cb
}

function sub_2ed36b49(?) {
    return sub_2ed36b49[arg1]
}

function sub_2fec94f5(?) {
    return sub_2fec94f5
}

function sub_31035f04(?) {
    return sub_31035f04
}

function IdToAdress(uint256 arg1) {
    return idToAdress[arg1]
}

function sub_34b89001(?) {
    return sub_34b89001
}

function unclaimedDividends() {
    return unclaimedDividends
}

function playerId(address arg1) {
    return playerId[arg1]
}

function sub_3fcda615(?) {
    return sub_3fcda615
}

function manVault(uint256 arg1) {
    return manVault[arg1]
}

function sub_50d0d68e(?) {
    return sub_50d0d68eAddress
}

function sub_588c68ee(?) {
    return sub_588c68ee
}

function exitPot() {
    return exitPot
}

function percentageToReinvest(address arg1) {
    return percentageToReinvest[arg1]
}

function sub_60818807(?) {
    return sub_60818807[arg1]
}

function sub_60d86fa6(?) {
    return sub_60d86fa6
}

function management(uint256 arg1) {
    return address(management[arg1])
}

function pointMultiplier() {
    return pointMultiplier
}

function sub_65fe3418(?) {
    return sub_65fe3418
}

function sub_686ce691(?) {
    return bool(stor17[arg1])
}

function sub_68dcff1d(?) {
    return bool(sub_68dcff1d)
}

function sub_6b453285(?) {
    return sub_6b453285
}

function sub_7294c1e3(?) {
    return sub_7294c1e3
}

function sub_760c656a(?) {
    return sub_760c656a
}

function sub_790ecceb(?) {
    return sub_790ecceb
}

function sub_7c6a4991(?) {
    return sub_7c6a4991
}

function sub_7f5a27cf(?) {
    return sub_7f5a27cf
}

function sub_8359de66(?) {
    return sub_8359de66
}

function sub_85f4f121(?) {
    return sub_85f4f121
}

function sub_870b9c25(?) {
    return sub_870b9c25[arg1]
}

function pendingFills(address arg1) {
    return pendingFills[arg1]
}

function sub_9e2b33f4(?) {
    return sub_9e2b33f4
}

function sub_9f90d8bd(?) {
    return sub_9f90d8bd[arg1]
}

function sub_a1c5234a(?) {
    return sub_a1c5234a
}

function ethPendingManagement() {
    return ethPendingManagement
}

function playerVault(address arg1) {
    return playerVault[arg1]
}

function sub_b003201c(?) {
    return sub_b003201c
}

function sub_b1255c6c(?) {
    return sub_b1255c6c[arg1]
}

function sub_c055d4e9(?) {
    return sub_c055d4e9[arg1]
}

function sub_c2b184e9(?) {
    return sub_c2b184e9
}

function sub_cd68b5a6(?) {
    return sub_cd68b5a6
}

function totalSupplyBonds() {
    return totalSupplyBonds
}

function sub_ddadc843(?) {
    return sub_ddadc843
}

function bondsOutstanding(address arg1) {
    return bondsOutstanding[arg1]
}

function allowAutoInvest(address arg1) {
    return bool(stor12[arg1])
}

function piggyBank(address arg1) {
    return piggyBank[arg1]
}

function _fallback() payable {
  stop
}

function disableAuto() {
    stor12[msg.sender] = 0
}

function fetchDataMain() {
    return sub_cd68b5a6, ethPendingManagement, sub_790ecceb
}

function sub_708419cc(?) {
    return sub_870b9c25[stor20 - 1], sub_870b9c25[stor20 - 2], sub_870b9c25[stor20 - 3], sub_a1c5234a
}

function setAuto(uint256 arg1) {
    stor12[msg.sender] = 1
    require arg1 <= 100
    require arg1 > 0
    percentageToReinvest[msg.sender] = arg1
}

function sub_4dbbcd1a(?) {
    if sub_760c656a + (24 * 3600) >= block.timestamp:
        require sub_60d86fa6 > 10 * 10^18
    sub_760c656a = block.timestamp
    sub_60d86fa6 = 0
    require sub_60d86fa6 + sub_cd68b5a6 >= sub_cd68b5a6
    sub_cd68b5a6 += sub_60d86fa6
}

function dividendsOwing(address arg1) {
    require stor52[address(arg1)] <= totalDividendPoints
    require pointMultiplier
    return ((totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor52[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier)
}

function sub_46945f2f(?) {
    if sub_7f5a27cf + (168 * 24 * 3600) >= block.timestamp:
        require sub_c2b184e9 > 100 * 10^18
    sub_7f5a27cf = block.timestamp
    sub_c2b184e9 = 0
    require sub_c2b184e9 + sub_cd68b5a6 >= sub_cd68b5a6
    sub_cd68b5a6 += sub_c2b184e9
}

function sub_faca64d0(?) {
    if sub_85f4f121 + (720 * 24 * 3600) >= block.timestamp:
        require sub_65fe3418 > 1000 * 10^18
    sub_85f4f121 = block.timestamp
    sub_65fe3418 = 0
    require sub_65fe3418 + sub_cd68b5a6 >= sub_cd68b5a6
    sub_cd68b5a6 += sub_65fe3418
}

function sub_14ec5274(?) {
    require sub_6b453285 > 25 * 10^18
    require 25 * 10^18 <= sub_6b453285
    require sub_6b453285 - 25 * 10^18 <= sub_6b453285
    sub_6b453285 = 25 * 10^18
    require sub_6b453285 + sub_cd68b5a6 - 25 * 10^18 >= sub_cd68b5a6
    sub_cd68b5a6 = sub_6b453285 + sub_cd68b5a6 - 25 * 10^18
}

function sub_ab90101a(?) {
    require msg.sender == address(management[0])
    require ext_code.size(0xd5d10172e8d8b84ac83031c16fe093cba4c84fc6)
    call 0xd5d10172e8d8b84ac83031c16fe093cba4c84fc6.0x6120ada7 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function sub_ad5f1465(?) {
    require sub_8359de66 > 10^17
    sub_8359de66 = 0
    require ext_code.size(0x23c3bdad7336835c0c2cd97eb941d2ca564cc24b)
    call 0x23c3bdad7336835c0c2cd97eb941d2ca564cc24b.0x5ce093de with:
       value sub_8359de66 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function sub_c30750eb(?) {
    require sub_22f197ef > 0
    sub_22f197ef = 0
    require ext_code.size(0xd5d10172e8d8b84ac83031c16fe093cba4c84fc6)
    call 0xd5d10172e8d8b84ac83031c16fe093cba4c84fc6.0x910eba1d with:
       value sub_22f197ef wei
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_8d960795(?) {
    require block.number - 10 > sub_7294c1e3
    require sub_a1c5234a >= 10^17
    require sub_1072c81d > 0
    require tx.origin == msg.sender
    require 1 <= sub_1072c81d
    sub_1072c81d--
    require 10^17 <= sub_a1c5234a
    sub_a1c5234a -= 10^17
    require pendingFills[stor16[stor20 - 1]] + 10^17 >= pendingFills[stor16[stor20 - 1]]
    pendingFills[stor16[stor20 - 1]] += 10^17
    stor17[stor16[stor20 - 1]] = 0
    emit 0x9007b5ba: sub_870b9c25[stor20 - 1], 1, 10^17, 1
}

function sub_174af159(?) {
    if sub_2c4604cb:
        mem[128 len 32 * sub_2c4604cb] = code.data[20322 len 32 * sub_2c4604cb]
    idx = 0
    s = 0
    while idx < sub_2c4604cb:
        mem[0] = s
        mem[32] = 32
        require s < sub_2c4604cb
        mem[(32 * s) + 128] = sub_2ed36b49[s]
        idx = idx + 1
        s = s + 1
        continue 
    mem[(32 * sub_2c4604cb) + 192 len floor32(sub_2c4604cb)] = mem[128 len floor32(sub_2c4604cb)]
    return Array(len=sub_2c4604cb, data=mem[128 len floor32(sub_2c4604cb)], mem[(32 * sub_2c4604cb) + floor32(sub_2c4604cb) + 192 len (32 * sub_2c4604cb) - floor32(sub_2c4604cb)]), 
}

function sub_44709764(?) {
    require ext_code.size(0x23c3bdad7336835c0c2cd97eb941d2ca564cc24b)
    call 0x23c3bdad7336835c0c2cd97eb941d2ca564cc24b.0x373420d9 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x23c3bdad7336835c0c2cd97eb941d2ca564cc24b)
    call 0x23c3bdad7336835c0c2cd97eb941d2ca564cc24b.0x2157c46a with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_call.return_data[0] + sub_cd68b5a6 >= sub_cd68b5a6
    sub_cd68b5a6 += ext_call.return_data[0]
}

function getManagementInfo() {
    mem[448] = 20
    mem[480 len 640] = code.data[20322 len 640]
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

function sub_87ca80ac(?) {
    require ext_code.size(0xd5d10172e8d8b84ac83031c16fe093cba4c84fc6)
    call 0xd5d10172e8d8b84ac83031c16fe093cba4c84fc6.0xab6e988c with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require ext_code.size(0xd5d10172e8d8b84ac83031c16fe093cba4c84fc6)
    call 0xd5d10172e8d8b84ac83031c16fe093cba4c84fc6.0xcefb3605 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_call.return_data[0] + sub_cd68b5a6 >= sub_cd68b5a6
    sub_cd68b5a6 += ext_call.return_data[0]
}

function sub_239ea573(?) {
    require ext_code.size(0xd5d10172e8d8b84ac83031c16fe093cba4c84fc6)
    call 0xd5d10172e8d8b84ac83031c16fe093cba4c84fc6.0xfef038e8 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require ext_code.size(0xd5d10172e8d8b84ac83031c16fe093cba4c84fc6)
    call 0xd5d10172e8d8b84ac83031c16fe093cba4c84fc6.piggyToWallet() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_call.return_data[0] + sub_cd68b5a6 >= sub_cd68b5a6
    sub_cd68b5a6 += ext_call.return_data[0]
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

function sub_b8f489b2(?) {
    require sub_7c6a4991 >= 10^17
    require sub_2c4604cb > 0
    require sub_588c68ee != block.number
    if block.number - 256 > sub_588c68ee:
        sub_588c68ee = block.number
    else:
        if sub_588c68ee != block.number:
            require sub_2c4604cb
            emit 0x82130c7c: block.hash(sub_588c68ee) % sub_2c4604cb
            require 10^17 <= sub_7c6a4991
            sub_7c6a4991 -= 10^17
            require pendingFills[stor32[block.hash(stor34) % stor33]] + 10^17 >= pendingFills[stor32[block.hash(stor34) % stor33]]
            pendingFills[stor32[block.hash(stor34) % stor33]] += 10^17
            emit 0x9007b5ba: sub_2ed36b49[block.hash(stor34) % stor33], 1, 10^17, 9
            sub_2ed36b49[block.hash(stor34) % stor33] = sub_2ed36b49[stor33 - 1]
            sub_2c4604cb--
            sub_588c68ee = block.number
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
    require stor52[address(arg1)] <= totalDividendPoints
    require pointMultiplier
    if (totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor52[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier > 0:
        require (totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor52[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier <= unclaimedDividends
        unclaimedDividends -= (totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor52[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier
        require ((totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor52[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier) + pendingFills[address(arg1)] >= pendingFills[address(arg1)]
        pendingFills[address(arg1)] += (totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor52[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier
    stor52[address(arg1)] = totalDividendPoints
}

function sub_e80d179b(?) {
    require msg.sender == 0xb0efad4ae088a88ffdc50bce5fb63c6936b9220
    s = 0
    t = 0
    t = 0
    t = 0
    idx = 0
    while idx < arg1:
        require ext_code.size(0x767b8c6fb76db2e2a547819ba7afd2006d3de6b2)
        call 0x767b8c6fb76db2e2a547819ba7afd2006d3de6b2.0x32d05a53 with:
             gas gas_remaining wei
            args (stor50 + idx)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[100] = address(ext_call.return_data[0])
        require ext_code.size(0x767b8c6fb76db2e2a547819ba7afd2006d3de6b2)
        call 0x767b8c6fb76db2e2a547819ba7afd2006d3de6b2.0xe2b9e322 with:
             gas gas_remaining wei
            args address(ext_call.return_data[0])
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _18 = ext_call.return_data[0]
        require ext_call.return_data[0] + bondsOutstanding[address(ext_call.return_data[0])] >= bondsOutstanding[address(ext_call.return_data[0])]
        mem[0] = address(ext_call.return_data[0])
        mem[32] = 4
        bondsOutstanding[address(ext_call.return_data[0])] += ext_call.return_data[0]
        require ext_call.return_data[0] + s >= s
        s = ext_call.return_data[0] + s
        t = ext_call.return_data[0]
        t = ext_call.return_data[0]
        t = stor50 + idx
        idx = idx + 1
        continue 
    require (_18 * arg1) + totalSupplyBonds >= totalSupplyBonds
    totalSupplyBonds += _18 * arg1
    stor50 += arg1
}

function ExitPlincWithLoss(uint256 arg1) {
    require stor52[address(msg.sender)] <= totalDividendPoints
    require pointMultiplier
    if (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor52[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier > 0:
        require (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor52[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier <= unclaimedDividends
        unclaimedDividends -= (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor52[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier
        require ((totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor52[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier) + pendingFills[address(msg.sender)] >= pendingFills[address(msg.sender)]
        pendingFills[address(msg.sender)] += (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor52[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier
    stor52[address(msg.sender)] = totalDividendPoints
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

function sub_c298b394(?) payable {
    require stor52[address(msg.sender)] <= totalDividendPoints
    require pointMultiplier
    if (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor52[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier > 0:
        require (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor52[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier <= unclaimedDividends
        unclaimedDividends -= (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor52[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier
        require ((totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor52[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier) + pendingFills[address(msg.sender)] >= pendingFills[address(msg.sender)]
        pendingFills[address(msg.sender)] += (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor52[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier
    stor52[address(msg.sender)] = totalDividendPoints
    if not arg1:
        require msg.value >= 0
    else:
        require 10^16 * arg1 / arg1 == 10^16
        require msg.value >= 10^16 * arg1
    require arg1 > 0
    idx = 0
    s = 0
    while idx < arg1:
        mem[0] = idx + sub_2c4604cb
        mem[32] = 32
        sub_2ed36b49[idx + stor33] = msg.sender
        idx = idx + 1
        s = idx + sub_2c4604cb
        continue 
    sub_2c4604cb += arg1
    require msg.value + bondsOutstanding[address(msg.sender)] >= bondsOutstanding[address(msg.sender)]
    bondsOutstanding[address(msg.sender)] += msg.value
    require msg.value + totalSupplyBonds >= totalSupplyBonds
    totalSupplyBonds += msg.value
    require msg.value + sub_cd68b5a6 >= sub_cd68b5a6
    sub_cd68b5a6 += msg.value
}

function cheatTheLine() payable {
    require stor52[address(msg.sender)] <= totalDividendPoints
    require pointMultiplier
    if (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor52[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier > 0:
        require (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor52[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier <= unclaimedDividends
        unclaimedDividends -= (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor52[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier
        require ((totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor52[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier) + pendingFills[address(msg.sender)] >= pendingFills[address(msg.sender)]
        pendingFills[address(msg.sender)] += (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor52[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier
    stor52[address(msg.sender)] = totalDividendPoints
    require msg.value >= 10^16
    require tx.origin == msg.sender
    sub_7294c1e3 = block.number
    if 1 == bool(stor17[address(msg.sender)]):
        sub_870b9c25[stor18[address(msg.sender)]] = sub_870b9c25[stor21]
        sub_870b9c25[stor20] = msg.sender
        sub_1072c81d++
        sub_3fcda615++
    if not stor17[address(msg.sender)]:
        sub_870b9c25[stor20] = msg.sender
        sub_b1255c6c[address(msg.sender)] = sub_1072c81d
        sub_1072c81d++
        stor17[address(msg.sender)] = 1
    require msg.value + bondsOutstanding[address(msg.sender)] >= bondsOutstanding[address(msg.sender)]
    bondsOutstanding[address(msg.sender)] += msg.value
    require msg.value + totalSupplyBonds >= totalSupplyBonds
    totalSupplyBonds += msg.value
    require msg.value + sub_cd68b5a6 >= sub_cd68b5a6
    sub_cd68b5a6 += msg.value
}

function ethPropagate() {
    require sub_cd68b5a6 > 0
    sub_cd68b5a6 = 0
    require ext_code.size(0xfaae60f2ce6491886c9f7c9356bd92f688ca66a1)
    call 0xfaae60f2ce6491886c9f7c9356bd92f688ca66a1.disburse() with:
       value sub_cd68b5a6 / 50 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not sub_cd68b5a6 / 50:
        require ethPendingManagement >= ethPendingManagement
    else:
        require 3 * sub_cd68b5a6 / 50 / sub_cd68b5a6 / 50 == 3
        require (3 * sub_cd68b5a6 / 50) + ethPendingManagement >= ethPendingManagement
        ethPendingManagement += 3 * sub_cd68b5a6 / 50
    if not sub_cd68b5a6 / 50:
        require totalSupplyBonds > 0
        require totalSupplyBonds
        require (0 / totalSupplyBonds) + totalDividendPoints >= totalDividendPoints
        totalDividendPoints += 0 / totalSupplyBonds
        require unclaimedDividends >= unclaimedDividends
        emit 0xc9cd0231 
        emit 0x0 
    else:
        require 6 * sub_cd68b5a6 / 50 / sub_cd68b5a6 / 50 == 6
        if not 6 * sub_cd68b5a6 / 50:
            require totalSupplyBonds > 0
            require totalSupplyBonds
            require (0 / totalSupplyBonds) + totalDividendPoints >= totalDividendPoints
            totalDividendPoints += 0 / totalSupplyBonds
        else:
            require 6 * pointMultiplier * sub_cd68b5a6 / 50 / 6 * sub_cd68b5a6 / 50 == pointMultiplier
            require totalSupplyBonds > 0
            require totalSupplyBonds
            require (6 * pointMultiplier * sub_cd68b5a6 / 50 / totalSupplyBonds) + totalDividendPoints >= totalDividendPoints
            totalDividendPoints += 6 * pointMultiplier * sub_cd68b5a6 / 50 / totalSupplyBonds
        require (6 * sub_cd68b5a6 / 50) + unclaimedDividends >= unclaimedDividends
        unclaimedDividends += 6 * sub_cd68b5a6 / 50
        emit 0xc9cd0231: 6 * sub_cd68b5a6 / 50
    if not sub_cd68b5a6 / 50:
        require sub_790ecceb >= sub_790ecceb
    else:
        require 40 * sub_cd68b5a6 / 50 / sub_cd68b5a6 / 50 == 40
        require (40 * sub_cd68b5a6 / 50) + sub_790ecceb >= sub_790ecceb
        sub_790ecceb += 40 * sub_cd68b5a6 / 50
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

function sub_3c7330ea(?) payable {
    require stor52[address(msg.sender)] <= totalDividendPoints
    require pointMultiplier
    if (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor52[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier > 0:
        require (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor52[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier <= unclaimedDividends
        unclaimedDividends -= (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor52[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier
        require ((totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor52[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier) + pendingFills[address(msg.sender)] >= pendingFills[address(msg.sender)]
        pendingFills[address(msg.sender)] += (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor52[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier
    stor52[address(msg.sender)] = totalDividendPoints
    require msg.sender == tx.origin
    require msg.value >= 10^17
    if 101 * 10^15 > sub_9e2b33f4:
        require msg.value + bondsOutstanding[address(msg.sender)] >= bondsOutstanding[address(msg.sender)]
        bondsOutstanding[address(msg.sender)] += msg.value
        require msg.value + totalSupplyBonds >= totalSupplyBonds
        totalSupplyBonds += msg.value
        require msg.value + sub_cd68b5a6 >= sub_cd68b5a6
        sub_cd68b5a6 += msg.value
        emit 0x9007b5ba: address(msg.sender), 0, 101 * 10^15, 16
    else:
        require 10^17 <= sub_9e2b33f4
        sub_9e2b33f4 -= 10^17
        require pendingFills[address(msg.sender)] + 101 * 10^15 >= pendingFills[address(msg.sender)]
        pendingFills[address(msg.sender)] += 101 * 10^15
        require msg.value + bondsOutstanding[address(msg.sender)] >= bondsOutstanding[address(msg.sender)]
        bondsOutstanding[address(msg.sender)] += msg.value
        require msg.value + totalSupplyBonds >= totalSupplyBonds
        totalSupplyBonds += msg.value
        require msg.value + sub_cd68b5a6 >= sub_cd68b5a6
        sub_cd68b5a6 += msg.value
        emit 0x9007b5ba: address(msg.sender), 1, 101 * 10^15, 16
}

function sub_16eea9b7(?) payable {
    require stor52[address(msg.sender)] <= totalDividendPoints
    require pointMultiplier
    if (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor52[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier > 0:
        require (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor52[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier <= unclaimedDividends
        unclaimedDividends -= (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor52[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier
        require ((totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor52[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier) + pendingFills[address(msg.sender)] >= pendingFills[address(msg.sender)]
        pendingFills[address(msg.sender)] += (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor52[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier
    stor52[address(msg.sender)] = totalDividendPoints
    require msg.value > sub_31035f04 / 5
    require sub_31035f04 / 5 > 1000
    if not sub_31035f04 / 5:
        require 0 <= sub_31035f04
        require msg.sender == tx.origin
        require pendingFills[address(msg.sender)] >= pendingFills[address(msg.sender)]
        require msg.value + bondsOutstanding[address(msg.sender)] >= bondsOutstanding[address(msg.sender)]
        bondsOutstanding[address(msg.sender)] += msg.value
        require msg.value + totalSupplyBonds >= totalSupplyBonds
        totalSupplyBonds += msg.value
        require msg.value + sub_cd68b5a6 >= sub_cd68b5a6
        sub_cd68b5a6 += msg.value
        emit 0x9007b5ba: address(msg.sender), 1, 0, 4
    else:
        require 101 * sub_31035f04 / 5 / sub_31035f04 / 5 == 101
        require 101 * sub_31035f04 / 5 / 100 <= sub_31035f04
        sub_31035f04 -= 101 * sub_31035f04 / 5 / 100
        require msg.sender == tx.origin
        require (101 * sub_31035f04 / 5 / 100) + pendingFills[address(msg.sender)] >= pendingFills[address(msg.sender)]
        pendingFills[address(msg.sender)] += 101 * sub_31035f04 / 5 / 100
        require msg.value + bondsOutstanding[address(msg.sender)] >= bondsOutstanding[address(msg.sender)]
        bondsOutstanding[address(msg.sender)] += msg.value
        require msg.value + totalSupplyBonds >= totalSupplyBonds
        totalSupplyBonds += msg.value
        require msg.value + sub_cd68b5a6 >= sub_cd68b5a6
        sub_cd68b5a6 += msg.value
        emit 0x9007b5ba: address(msg.sender), 1, 101 * sub_31035f04 / 5 / 100, 4
}

function sub_705f6df2(?) payable {
    require stor52[address(msg.sender)] <= totalDividendPoints
    require pointMultiplier
    if (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor52[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier > 0:
        require (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor52[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier <= unclaimedDividends
        unclaimedDividends -= (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor52[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier
        require ((totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor52[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier) + pendingFills[address(msg.sender)] >= pendingFills[address(msg.sender)]
        pendingFills[address(msg.sender)] += (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor52[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier
    stor52[address(msg.sender)] = totalDividendPoints
    require msg.value > sub_2fec94f5 / 100
    require sub_2fec94f5 / 100 > 1000
    if not sub_2fec94f5 / 100:
        require 0 <= sub_2fec94f5
        require msg.sender == tx.origin
        require pendingFills[address(msg.sender)] >= pendingFills[address(msg.sender)]
        require msg.value + bondsOutstanding[address(msg.sender)] >= bondsOutstanding[address(msg.sender)]
        bondsOutstanding[address(msg.sender)] += msg.value
        require msg.value + totalSupplyBonds >= totalSupplyBonds
        totalSupplyBonds += msg.value
        require msg.value + sub_cd68b5a6 >= sub_cd68b5a6
        sub_cd68b5a6 += msg.value
        emit 0x9007b5ba: address(msg.sender), 1, 0, 3
    else:
        require 101 * sub_2fec94f5 / 100 / sub_2fec94f5 / 100 == 101
        require 101 * sub_2fec94f5 / 100 / 100 <= sub_2fec94f5
        sub_2fec94f5 -= 101 * sub_2fec94f5 / 100 / 100
        require msg.sender == tx.origin
        require (101 * sub_2fec94f5 / 100 / 100) + pendingFills[address(msg.sender)] >= pendingFills[address(msg.sender)]
        pendingFills[address(msg.sender)] += 101 * sub_2fec94f5 / 100 / 100
        require msg.value + bondsOutstanding[address(msg.sender)] >= bondsOutstanding[address(msg.sender)]
        bondsOutstanding[address(msg.sender)] += msg.value
        require msg.value + totalSupplyBonds >= totalSupplyBonds
        totalSupplyBonds += msg.value
        require msg.value + sub_cd68b5a6 >= sub_cd68b5a6
        sub_cd68b5a6 += msg.value
        emit 0x9007b5ba: address(msg.sender), 1, 101 * sub_2fec94f5 / 100 / 100, 3
}

function fillBonds(address arg1) {
    require stor52[address(msg.sender)] <= totalDividendPoints
    require pointMultiplier
    if (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor52[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier > 0:
        require (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor52[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier <= unclaimedDividends
        unclaimedDividends -= (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor52[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier
        require ((totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor52[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier) + pendingFills[address(msg.sender)] >= pendingFills[address(msg.sender)]
        pendingFills[address(msg.sender)] += (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor52[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier
    stor52[address(msg.sender)] = totalDividendPoints
    require stor52[address(arg1)] <= totalDividendPoints
    require pointMultiplier
    if (totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor52[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier > 0:
        require (totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor52[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier <= unclaimedDividends
        unclaimedDividends -= (totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor52[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier
        require ((totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor52[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier) + pendingFills[address(arg1)] >= pendingFills[address(arg1)]
        pendingFills[address(arg1)] += (totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor52[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier
    stor52[address(arg1)] = totalDividendPoints
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

function getPlayerInfo() {
    if nextPlayerID:
        mem[128 len 32 * nextPlayerID] = code.data[20322 len 32 * nextPlayerID]
    mem[(32 * nextPlayerID) + 128] = 5 * nextPlayerID
    if 5 * nextPlayerID:
        mem[(32 * nextPlayerID) + 160 len 32 * 5 * nextPlayerID] = code.data[20322 len 32 * 5 * nextPlayerID]
    mem[(32 * nextPlayerID) + (32 * 5 * nextPlayerID) + 160] = nextPlayerID
    if nextPlayerID:
        mem[(32 * nextPlayerID) + (32 * 5 * nextPlayerID) + 192 len 32 * nextPlayerID] = code.data[20322 len 32 * nextPlayerID]
    idx = 0
    s = 0
    t = 0
    while idx < nextPlayerID:
        require t < nextPlayerID
        mem[(32 * t) + 128] = idToAdress[t]
        require s < mem[(32 * nextPlayerID) + 128]
        mem[(32 * nextPlayerID) + (32 * s) + 160] = bondsOutstanding[stor10[t]]
        require s + 1 < mem[(32 * nextPlayerID) + 128]
        mem[(32 * nextPlayerID) + (32 * s + 1) + 160] = pendingFills[stor10[t]]
        require s + 2 < mem[(32 * nextPlayerID) + 128]
        mem[(32 * nextPlayerID) + (32 * s + 2) + 160] = playerVault[stor10[t]]
        require s + 3 < mem[(32 * nextPlayerID) + 128]
        mem[(32 * nextPlayerID) + (32 * s + 3) + 160] = percentageToReinvest[stor10[t]]
        require stor52[stor10[t]] <= totalDividendPoints
        require pointMultiplier
        require s + 4 < mem[(32 * nextPlayerID) + 128]
        mem[(32 * nextPlayerID) + (32 * s + 4) + 160] = (totalDividendPoints * bondsOutstanding[stor10[t]]) - (stor52[stor10[t]] * bondsOutstanding[stor10[t]]) / pointMultiplier
        mem[0] = idToAdress[t]
        mem[32] = 12
        require t < mem[(32 * nextPlayerID) + (32 * 5 * nextPlayerID) + 160]
        mem[(32 * nextPlayerID) + (32 * 5 * nextPlayerID) + (32 * t) + 192] = bool(stor12[stor10[t]])
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
    mem[(32 * mem[(32 * nextPlayerID) + 128]) + (98 * nextPlayerID) + (32 * 5 * nextPlayerID) + 384 len floor32(mem[(32 * nextPlayerID) + (32 * 5 * nextPlayerID) + 160])] = mem[(32 * nextPlayerID) + (32 * 5 * nextPlayerID) + 192 len floor32(mem[(32 * nextPlayerID) + (32 * 5 * nextPlayerID) + 160])]
    return memory
      from (64 * nextPlayerID) + (32 * 5 * nextPlayerID) + 192
       len (32 * mem[(32 * nextPlayerID) + (32 * 5 * nextPlayerID) + 160]) + (32 * mem[(32 * nextPlayerID) + 128]) + (161 * nextPlayerID) + 192
}

function buyBonds(address arg1) payable {
    require stor52[address(msg.sender)] <= totalDividendPoints
    require pointMultiplier
    if (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor52[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier > 0:
        require (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor52[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier <= unclaimedDividends
        unclaimedDividends -= (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor52[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier
        require ((totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor52[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier) + pendingFills[address(msg.sender)] >= pendingFills[address(msg.sender)]
        pendingFills[address(msg.sender)] += (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor52[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier
    stor52[address(msg.sender)] = totalDividendPoints
    require stor52[address(arg1)] <= totalDividendPoints
    require pointMultiplier
    if (totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor52[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier > 0:
        require (totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor52[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier <= unclaimedDividends
        unclaimedDividends -= (totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor52[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier
        require ((totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor52[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier) + pendingFills[address(arg1)] >= pendingFills[address(arg1)]
        pendingFills[address(arg1)] += (totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor52[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier
    stor52[address(arg1)] = totalDividendPoints
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
        idToAdress[stor11] = msg.sender
        nextPlayerID++
}

function forceBonds(address arg1) {
    require stor52[address(msg.sender)] <= totalDividendPoints
    require pointMultiplier
    if (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor52[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier > 0:
        require (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor52[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier <= unclaimedDividends
        unclaimedDividends -= (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor52[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier
        require ((totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor52[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier) + pendingFills[address(msg.sender)] >= pendingFills[address(msg.sender)]
        pendingFills[address(msg.sender)] += (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor52[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier
    stor52[address(msg.sender)] = totalDividendPoints
    require stor52[address(arg1)] <= totalDividendPoints
    require pointMultiplier
    if (totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor52[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier > 0:
        require (totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor52[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier <= unclaimedDividends
        unclaimedDividends -= (totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor52[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier
        require ((totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor52[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier) + pendingFills[address(arg1)] >= pendingFills[address(arg1)]
        pendingFills[address(arg1)] += (totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor52[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier
    stor52[address(arg1)] = totalDividendPoints
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

function sub_fb38fff9(?) payable {
    require stor52[address(msg.sender)] <= totalDividendPoints
    require pointMultiplier
    if (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor52[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier > 0:
        require (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor52[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier <= unclaimedDividends
        unclaimedDividends -= (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor52[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier
        require ((totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor52[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier) + pendingFills[address(msg.sender)] >= pendingFills[address(msg.sender)]
        pendingFills[address(msg.sender)] += (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor52[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier
    stor52[address(msg.sender)] = totalDividendPoints
    if not sub_c055d4e9[msg.sender]:
        if not msg.value:
            require arg1 > 0
            require arg1
            require block.number > sub_9f90d8bd[address(msg.sender)]
            require sub_6b453285 / 5 >= 0 / arg1
            require 0 / arg1 < 25 * 10^18
        else:
            require 99 * msg.value / msg.value == 99
            require arg1 > 0
            require arg1
            require block.number > sub_9f90d8bd[address(msg.sender)]
            require sub_6b453285 / 5 >= 99 * msg.value / arg1
            require 99 * msg.value / arg1 < 25 * 10^18
        require 0 <= sub_6b453285
        require arg1 > 0
        require arg1 < 100
        if block.number - 256 > sub_9f90d8bd[address(msg.sender)]:
            sub_9f90d8bd[address(msg.sender)] = block.number
        if block.number - 256 <= sub_9f90d8bd[address(msg.sender)]:
            if sub_9f90d8bd[address(msg.sender)] != block.number:
                emit 0x82130c7c: block.hash(sub_9f90d8bd[address(msg.sender)]) % 100
                if block.hash(sub_9f90d8bd[address(msg.sender)]) % 100 < sub_c055d4e9[address(msg.sender)]:
                    require 0 <= sub_6b453285
                    require playerVault[address(msg.sender)] >= playerVault[address(msg.sender)]
    else:
        if not sub_2bbaa35d[address(msg.sender)]:
            require sub_c055d4e9[address(msg.sender)] > 0
            require sub_c055d4e9[address(msg.sender)]
            if not msg.value:
                require arg1 > 0
                require arg1
                require block.number > sub_9f90d8bd[address(msg.sender)]
                require sub_6b453285 / 5 >= 0 / arg1
                require 0 / arg1 < 25 * 10^18
            else:
                require 99 * msg.value / msg.value == 99
                require arg1 > 0
                require arg1
                require block.number > sub_9f90d8bd[address(msg.sender)]
                require sub_6b453285 / 5 >= 99 * msg.value / arg1
                require 99 * msg.value / arg1 < 25 * 10^18
            require 0 / sub_c055d4e9[address(msg.sender)] <= sub_6b453285
            require arg1 > 0
            require arg1 < 100
            if block.number - 256 > sub_9f90d8bd[address(msg.sender)]:
                sub_9f90d8bd[address(msg.sender)] = block.number
            if block.number - 256 > sub_9f90d8bd[address(msg.sender)]:
                if 0 / sub_c055d4e9[address(msg.sender)] > 0:
                    emit 0x9007b5ba: address(msg.sender), 0, 0 / sub_c055d4e9[address(msg.sender)], 14
            else:
                if block.number == sub_9f90d8bd[address(msg.sender)]:
                    if 0 / sub_c055d4e9[address(msg.sender)] > 0:
                        emit 0x9007b5ba: address(msg.sender), 0, 0 / sub_c055d4e9[address(msg.sender)], 14
                else:
                    emit 0x82130c7c: block.hash(sub_9f90d8bd[address(msg.sender)]) % 100
                    if block.hash(sub_9f90d8bd[address(msg.sender)]) % 100 >= sub_c055d4e9[address(msg.sender)]:
                        if 0 / sub_c055d4e9[address(msg.sender)] > 0:
                            emit 0x9007b5ba: address(msg.sender), 0, 0 / sub_c055d4e9[address(msg.sender)], 14
                    else:
                        require 0 / sub_c055d4e9[address(msg.sender)] <= sub_6b453285
                        sub_6b453285 -= 0 / sub_c055d4e9[address(msg.sender)]
                        require (0 / sub_c055d4e9[address(msg.sender)]) + playerVault[address(msg.sender)] >= playerVault[address(msg.sender)]
                        playerVault[address(msg.sender)] += 0 / sub_c055d4e9[address(msg.sender)]
                        if 0 / sub_c055d4e9[address(msg.sender)] > 0:
                            emit 0x9007b5ba: address(msg.sender), 1, 0 / sub_c055d4e9[address(msg.sender)], 14
        else:
            require 99 * sub_2bbaa35d[address(msg.sender)] / sub_2bbaa35d[address(msg.sender)] == 99
            require sub_c055d4e9[address(msg.sender)] > 0
            require sub_c055d4e9[address(msg.sender)]
            if not msg.value:
                require arg1 > 0
                require arg1
                require block.number > sub_9f90d8bd[address(msg.sender)]
                require sub_6b453285 / 5 >= 0 / arg1
                require 0 / arg1 < 25 * 10^18
            else:
                require 99 * msg.value / msg.value == 99
                require arg1 > 0
                require arg1
                require block.number > sub_9f90d8bd[address(msg.sender)]
                require sub_6b453285 / 5 >= 99 * msg.value / arg1
                require 99 * msg.value / arg1 < 25 * 10^18
            require 99 * sub_2bbaa35d[address(msg.sender)] / sub_c055d4e9[address(msg.sender)] <= sub_6b453285
            require arg1 > 0
            require arg1 < 100
            if block.number - 256 > sub_9f90d8bd[address(msg.sender)]:
                sub_9f90d8bd[address(msg.sender)] = block.number
            if block.number - 256 > sub_9f90d8bd[address(msg.sender)]:
                if 99 * sub_2bbaa35d[address(msg.sender)] / sub_c055d4e9[address(msg.sender)] > 0:
                    emit 0x9007b5ba: address(msg.sender), 0, 99 * sub_2bbaa35d[address(msg.sender)] / sub_c055d4e9[address(msg.sender)], 14
            else:
                if block.number == sub_9f90d8bd[address(msg.sender)]:
                    if 99 * sub_2bbaa35d[address(msg.sender)] / sub_c055d4e9[address(msg.sender)] > 0:
                        emit 0x9007b5ba: address(msg.sender), 0, 99 * sub_2bbaa35d[address(msg.sender)] / sub_c055d4e9[address(msg.sender)], 14
                else:
                    emit 0x82130c7c: block.hash(sub_9f90d8bd[address(msg.sender)]) % 100
                    if block.hash(sub_9f90d8bd[address(msg.sender)]) % 100 >= sub_c055d4e9[address(msg.sender)]:
                        if 99 * sub_2bbaa35d[address(msg.sender)] / sub_c055d4e9[address(msg.sender)] > 0:
                            emit 0x9007b5ba: address(msg.sender), 0, 99 * sub_2bbaa35d[address(msg.sender)] / sub_c055d4e9[address(msg.sender)], 14
                    else:
                        require 99 * sub_2bbaa35d[address(msg.sender)] / sub_c055d4e9[address(msg.sender)] <= sub_6b453285
                        sub_6b453285 -= 99 * sub_2bbaa35d[address(msg.sender)] / sub_c055d4e9[address(msg.sender)]
                        require (99 * sub_2bbaa35d[address(msg.sender)] / sub_c055d4e9[address(msg.sender)]) + playerVault[address(msg.sender)] >= playerVault[address(msg.sender)]
                        playerVault[address(msg.sender)] += 99 * sub_2bbaa35d[address(msg.sender)] / sub_c055d4e9[address(msg.sender)]
                        if 99 * sub_2bbaa35d[address(msg.sender)] / sub_c055d4e9[address(msg.sender)] > 0:
                            emit 0x9007b5ba: address(msg.sender), 1, 99 * sub_2bbaa35d[address(msg.sender)] / sub_c055d4e9[address(msg.sender)], 14
    sub_2bbaa35d[address(msg.sender)] = msg.value
    sub_c055d4e9[address(msg.sender)] = arg1
    sub_9f90d8bd[address(msg.sender)] = block.number
    require (msg.value / 100) + bondsOutstanding[address(msg.sender)] >= bondsOutstanding[address(msg.sender)]
    bondsOutstanding[address(msg.sender)] += msg.value / 100
    require (msg.value / 100) + totalSupplyBonds >= totalSupplyBonds
    totalSupplyBonds += msg.value / 100
    require (msg.value / 100) + sub_cd68b5a6 >= sub_cd68b5a6
    sub_cd68b5a6 += msg.value / 100
    if not msg.value / 100:
        require sub_6b453285 >= sub_6b453285
    else:
        require 99 * msg.value / 100 / msg.value / 100 == 99
        require (99 * msg.value / 100) + sub_6b453285 >= sub_6b453285
        sub_6b453285 += 99 * msg.value / 100
}

function freelanceReinvest(address arg1) {
    require stor52[address(msg.sender)] <= totalDividendPoints
    require pointMultiplier
    if (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor52[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier > 0:
        require (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor52[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier <= unclaimedDividends
        unclaimedDividends -= (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor52[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier
        require ((totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor52[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier) + pendingFills[address(msg.sender)] >= pendingFills[address(msg.sender)]
        pendingFills[address(msg.sender)] += (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor52[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier
    stor52[address(msg.sender)] = totalDividendPoints
    require stor52[address(arg1)] <= totalDividendPoints
    require pointMultiplier
    if (totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor52[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier > 0:
        require (totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor52[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier <= unclaimedDividends
        unclaimedDividends -= (totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor52[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier
        require ((totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor52[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier) + pendingFills[address(arg1)] >= pendingFills[address(arg1)]
        pendingFills[address(arg1)] += (totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor52[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier
    stor52[address(arg1)] = totalDividendPoints
    require bool(stor12[address(arg1)]) == 1
    require 100000 < playerVault[address(arg1)]
    require tx.origin == msg.sender
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
    require stor52[address(arg1)] <= totalDividendPoints
    require pointMultiplier
    if (totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor52[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier > 0:
        require (totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor52[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier <= unclaimedDividends
        unclaimedDividends -= (totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor52[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier
        require ((totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor52[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier) + pendingFills[address(arg1)] >= pendingFills[address(arg1)]
        pendingFills[address(arg1)] += (totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor52[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier
    stor52[address(arg1)] = totalDividendPoints
    require stor52[address(msg.sender)] <= totalDividendPoints
    require pointMultiplier
    if (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor52[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier > 0:
        require (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor52[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier <= unclaimedDividends
        unclaimedDividends -= (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor52[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier
        require ((totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor52[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier) + pendingFills[address(msg.sender)] >= pendingFills[address(msg.sender)]
        pendingFills[address(msg.sender)] += (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor52[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier
    stor52[address(msg.sender)] = totalDividendPoints
    require stor52[address(arg1)] <= totalDividendPoints
    require pointMultiplier
    if (totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor52[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier > 0:
        require (totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor52[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier <= unclaimedDividends
        unclaimedDividends -= (totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor52[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier
        require ((totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor52[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier) + pendingFills[address(arg1)] >= pendingFills[address(arg1)]
        pendingFills[address(arg1)] += (totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor52[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier
    stor52[address(arg1)] = totalDividendPoints
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
    require stor52[address(msg.sender)] <= totalDividendPoints
    require pointMultiplier
    if (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor52[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier > 0:
        require (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor52[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier <= unclaimedDividends
        unclaimedDividends -= (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor52[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier
        require ((totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor52[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier) + pendingFills[address(msg.sender)] >= pendingFills[address(msg.sender)]
        pendingFills[address(msg.sender)] += (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor52[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier
    stor52[address(msg.sender)] = totalDividendPoints
    require stor52[address(arg1)] <= totalDividendPoints
    require pointMultiplier
    if (totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor52[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier > 0:
        require (totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor52[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier <= unclaimedDividends
        unclaimedDividends -= (totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor52[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier
        require ((totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor52[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier) + pendingFills[address(arg1)] >= pendingFills[address(arg1)]
        pendingFills[address(arg1)] += (totalDividendPoints * bondsOutstanding[address(arg1)]) - (stor52[address(arg1)] * bondsOutstanding[address(arg1)]) / pointMultiplier
    stor52[address(arg1)] = totalDividendPoints
    require bool(stor12[address(arg1)]) == 1
    require 100000 < playerVault[address(arg1)]
    require tx.origin == msg.sender
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

function sub_80fdefec(?) payable {
    require stor52[address(msg.sender)] <= totalDividendPoints
    require pointMultiplier
    if (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor52[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier > 0:
        require (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor52[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier <= unclaimedDividends
        unclaimedDividends -= (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor52[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier
        require ((totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor52[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier) + pendingFills[address(msg.sender)] >= pendingFills[address(msg.sender)]
        pendingFills[address(msg.sender)] += (totalDividendPoints * bondsOutstanding[address(msg.sender)]) - (stor52[address(msg.sender)] * bondsOutstanding[address(msg.sender)]) / pointMultiplier
    stor52[address(msg.sender)] = totalDividendPoints
    mem[0] = sub_50d0d68eAddress
    mem[32] = 25
    require block.number > sub_34b89001
    if not arg1:
        require msg.value >= 0
    else:
        require 10^17 * arg1 / arg1 == 10^17
        require msg.value >= 10^17 * arg1
    if not sub_60818807[stor28]:
        if sub_68dcff1d:
            if 1 == bool(sub_68dcff1d):
                sub_b003201c = arg1
                sub_68dcff1d = 0
                sub_50d0d68eAddress = msg.sender
                sub_34b89001 = block.number
                require msg.value + bondsOutstanding[address(msg.sender)] >= bondsOutstanding[address(msg.sender)]
                bondsOutstanding[address(msg.sender)] += msg.value
                require msg.value + totalSupplyBonds >= totalSupplyBonds
                totalSupplyBonds += msg.value
                require msg.value + sub_cd68b5a6 >= sub_cd68b5a6
                sub_cd68b5a6 += msg.value
        else:
            sub_68dcff1d = 1
            if block.number - 256 > sub_34b89001:
                sub_34b89001 = block.number
                require msg.value + playerVault[address(msg.sender)] >= playerVault[address(msg.sender)]
                playerVault[address(msg.sender)] += msg.value
                sub_68dcff1d = 0
            if block.number - 256 > sub_34b89001:
                if 1 == bool(sub_68dcff1d):
                    sub_b003201c = arg1
                    sub_68dcff1d = 0
                    sub_50d0d68eAddress = msg.sender
                    sub_34b89001 = block.number
                    require msg.value + bondsOutstanding[address(msg.sender)] >= bondsOutstanding[address(msg.sender)]
                    bondsOutstanding[address(msg.sender)] += msg.value
                    require msg.value + totalSupplyBonds >= totalSupplyBonds
                    totalSupplyBonds += msg.value
                    require msg.value + sub_cd68b5a6 >= sub_cd68b5a6
                    sub_cd68b5a6 += msg.value
            else:
                if sub_34b89001 == block.number:
                    if 1 == bool(sub_68dcff1d):
                        sub_b003201c = arg1
                        sub_68dcff1d = 0
                        sub_50d0d68eAddress = msg.sender
                        sub_34b89001 = block.number
                        require msg.value + bondsOutstanding[address(msg.sender)] >= bondsOutstanding[address(msg.sender)]
                        bondsOutstanding[address(msg.sender)] += msg.value
                        require msg.value + totalSupplyBonds >= totalSupplyBonds
                        totalSupplyBonds += msg.value
                        require msg.value + sub_cd68b5a6 >= sub_cd68b5a6
                        sub_cd68b5a6 += msg.value
                else:
                    s = 0
                    idx = 0
                    s = 0
                    t = 0
                    u = 0
                    while idx < sub_b003201c:
                        if -sub_60818807[stor28] + -idx + 1000 <= 2:
                            require u
                            if -sub_60818807[stor28] + -idx + 1000 <= 2:
                                emit 0x82130c7c 
                                emit 0x1 
                                sub_ddadc843 = stor26
                                require stor26 + pendingFills[stor28] >= pendingFills[stor28]
                                pendingFills[stor28] += stor26
                                mem[0] = sub_50d0d68eAddress
                                mem[32] = 25
                                sub_60818807[stor28] = 0
                                s = 1
                                idx = sub_b003201c + 1
                                s = sub_ddadc843
                                t = 1
                                u = u
                                continue 
                            emit 0x82130c7c: block.hash(sub_34b89001) % u
                            if block.hash(sub_34b89001) % u != 1:
                                s = block.hash(sub_34b89001) % u
                                idx = idx + 1
                                s = s
                                t = t
                                u = u
                                continue 
                            sub_ddadc843 = stor26
                            require stor26 + pendingFills[stor28] >= pendingFills[stor28]
                            pendingFills[stor28] += stor26
                            mem[0] = sub_50d0d68eAddress
                            mem[32] = 25
                            sub_60818807[stor28] = 0
                            s = block.hash(sub_34b89001) % u
                            idx = sub_b003201c + 1
                            s = sub_ddadc843
                            t = 1
                            u = u
                            continue 
                        require -sub_60818807[stor28] + -idx + 1000
                        if -sub_60818807[stor28] + -idx + 1000 <= 2:
                            emit 0x82130c7c 
                            emit 0x1 
                            sub_ddadc843 = stor26
                            require stor26 + pendingFills[stor28] >= pendingFills[stor28]
                            pendingFills[stor28] += stor26
                            mem[0] = sub_50d0d68eAddress
                            mem[32] = 25
                            sub_60818807[stor28] = 0
                            s = 1
                            idx = sub_b003201c + 1
                            s = sub_ddadc843
                            t = 1
                            u = -sub_60818807[stor28] + -idx + 1000
                            continue 
                        emit 0x82130c7c: block.hash(sub_34b89001) % -sub_60818807[stor28] + -idx + 1000
                        if block.hash(sub_34b89001) % -sub_60818807[stor28] + -idx + 1000 != 1:
                            s = block.hash(sub_34b89001) % -sub_60818807[stor28] + -idx + 1000
                            idx = idx + 1
                            s = s
                            t = t
                            u = -sub_60818807[stor28] + -idx + 1000
                            continue 
                        sub_ddadc843 = stor26
                        require stor26 + pendingFills[stor28] >= pendingFills[stor28]
                        pendingFills[stor28] += stor26
                        mem[0] = sub_50d0d68eAddress
                        mem[32] = 25
                        sub_60818807[stor28] = 0
                        s = block.hash(sub_34b89001) % -sub_60818807[stor28] + -idx + 1000
                        idx = sub_b003201c + 1
                        s = sub_ddadc843
                        t = 1
                        u = -sub_60818807[stor28] + -idx + 1000
                        continue 
                    require sub_b003201c + sub_60818807[stor28] >= sub_60818807[stor28]
                    sub_60818807[stor28] += sub_b003201c
                    if 1 == bool(sub_68dcff1d):
                        if s > 0:
                            emit 0x9007b5ba: sub_50d0d68eAddress, bool(t), s, 7
                        sub_b003201c = arg1
                        sub_68dcff1d = 0
                        sub_50d0d68eAddress = msg.sender
                        sub_34b89001 = block.number
                        require msg.value + bondsOutstanding[address(msg.sender)] >= bondsOutstanding[address(msg.sender)]
                        bondsOutstanding[address(msg.sender)] += msg.value
                        require msg.value + totalSupplyBonds >= totalSupplyBonds
                        totalSupplyBonds += msg.value
                        require msg.value + sub_cd68b5a6 >= sub_cd68b5a6
                        sub_cd68b5a6 += msg.value
    else:
        require sub_b003201c * sub_60818807[stor28] / sub_60818807[stor28] == sub_b003201c
        if sub_68dcff1d:
            if 1 == bool(sub_68dcff1d):
                if sub_b003201c * sub_60818807[stor28] > 0:
                    emit 0x9007b5ba: sub_50d0d68eAddress, 0, sub_b003201c * sub_60818807[stor28], 7
                sub_b003201c = arg1
                sub_68dcff1d = 0
                sub_50d0d68eAddress = msg.sender
                sub_34b89001 = block.number
                require msg.value + bondsOutstanding[address(msg.sender)] >= bondsOutstanding[address(msg.sender)]
                bondsOutstanding[address(msg.sender)] += msg.value
                require msg.value + totalSupplyBonds >= totalSupplyBonds
                totalSupplyBonds += msg.value
                require msg.value + sub_cd68b5a6 >= sub_cd68b5a6
                sub_cd68b5a6 += msg.value
        else:
            sub_68dcff1d = 1
            if block.number - 256 <= sub_34b89001:
                if block.number - 256 > sub_34b89001:
                    if 1 == bool(sub_68dcff1d):
                        if sub_b003201c * sub_60818807[stor28] > 0:
                            emit 0x9007b5ba: sub_50d0d68eAddress, 0, sub_b003201c * sub_60818807[stor28], 7
                        sub_b003201c = arg1
                        sub_68dcff1d = 0
                        sub_50d0d68eAddress = msg.sender
                        sub_34b89001 = block.number
                        require msg.value + bondsOutstanding[address(msg.sender)] >= bondsOutstanding[address(msg.sender)]
                        bondsOutstanding[address(msg.sender)] += msg.value
                        require msg.value + totalSupplyBonds >= totalSupplyBonds
                        totalSupplyBonds += msg.value
                        require msg.value + sub_cd68b5a6 >= sub_cd68b5a6
                        sub_cd68b5a6 += msg.value
                else:
                    if sub_34b89001 == block.number:
                        if 1 == bool(sub_68dcff1d):
                            if sub_b003201c * sub_60818807[stor28] > 0:
                                emit 0x9007b5ba: sub_50d0d68eAddress, 0, sub_b003201c * sub_60818807[stor28], 7
                            sub_b003201c = arg1
                            sub_68dcff1d = 0
                            sub_50d0d68eAddress = msg.sender
                            sub_34b89001 = block.number
                            require msg.value + bondsOutstanding[address(msg.sender)] >= bondsOutstanding[address(msg.sender)]
                            bondsOutstanding[address(msg.sender)] += msg.value
                            require msg.value + totalSupplyBonds >= totalSupplyBonds
                            totalSupplyBonds += msg.value
                            require msg.value + sub_cd68b5a6 >= sub_cd68b5a6
                            sub_cd68b5a6 += msg.value
                    else:
                        s = 0
                        idx = 0
                        s = sub_b003201c * stor[sha3(mem[0 len 64])]
                        t = 0
                        u = 0
                        while idx < sub_b003201c:
                            if -sub_60818807[stor28] + -idx + 1000 <= 2:
                                require u
                                if -sub_60818807[stor28] + -idx + 1000 <= 2:
                                    emit 0x82130c7c 
                                    emit 0x1 
                                    sub_ddadc843 = stor26
                                    require stor26 + pendingFills[stor28] >= pendingFills[stor28]
                                    pendingFills[stor28] += stor26
                                    mem[0] = sub_50d0d68eAddress
                                    mem[32] = 25
                                    sub_60818807[stor28] = 0
                                    s = 1
                                    idx = sub_b003201c + 1
                                    s = sub_ddadc843
                                    t = 1
                                    u = u
                                    continue 
                                emit 0x82130c7c: block.hash(sub_34b89001) % u
                                if block.hash(sub_34b89001) % u != 1:
                                    s = block.hash(sub_34b89001) % u
                                    idx = idx + 1
                                    s = s
                                    t = t
                                    u = u
                                    continue 
                                sub_ddadc843 = stor26
                                require stor26 + pendingFills[stor28] >= pendingFills[stor28]
                                pendingFills[stor28] += stor26
                                mem[0] = sub_50d0d68eAddress
                                mem[32] = 25
                                sub_60818807[stor28] = 0
                                s = block.hash(sub_34b89001) % u
                                idx = sub_b003201c + 1
                                s = sub_ddadc843
                                t = 1
                                u = u
                                continue 
                            require -sub_60818807[stor28] + -idx + 1000
                            if -sub_60818807[stor28] + -idx + 1000 <= 2:
                                emit 0x82130c7c 
                                emit 0x1 
                                sub_ddadc843 = stor26
                                require stor26 + pendingFills[stor28] >= pendingFills[stor28]
                                pendingFills[stor28] += stor26
                                mem[0] = sub_50d0d68eAddress
                                mem[32] = 25
                                sub_60818807[stor28] = 0
                                s = 1
                                idx = sub_b003201c + 1
                                s = sub_ddadc843
                                t = 1
                                u = -sub_60818807[stor28] + -idx + 1000
                                continue 
                            emit 0x82130c7c: block.hash(sub_34b89001) % -sub_60818807[stor28] + -idx + 1000
                            if block.hash(sub_34b89001) % -sub_60818807[stor28] + -idx + 1000 != 1:
                                s = block.hash(sub_34b89001) % -sub_60818807[stor28] + -idx + 1000
                                idx = idx + 1
                                s = s
                                t = t
                                u = -sub_60818807[stor28] + -idx + 1000
                                continue 
                            sub_ddadc843 = stor26
                            require stor26 + pendingFills[stor28] >= pendingFills[stor28]
                            pendingFills[stor28] += stor26
                            mem[0] = sub_50d0d68eAddress
                            mem[32] = 25
                            sub_60818807[stor28] = 0
                            s = block.hash(sub_34b89001) % -sub_60818807[stor28] + -idx + 1000
                            idx = sub_b003201c + 1
                            s = sub_ddadc843
                            t = 1
                            u = -sub_60818807[stor28] + -idx + 1000
                            continue 
                        require sub_b003201c + sub_60818807[stor28] >= sub_60818807[stor28]
                        sub_60818807[stor28] += sub_b003201c
                        if 1 == bool(sub_68dcff1d):
                            if s > 0:
                                emit 0x9007b5ba: sub_50d0d68eAddress, bool(t), s, 7
                            sub_b003201c = arg1
                            sub_68dcff1d = 0
                            sub_50d0d68eAddress = msg.sender
                            sub_34b89001 = block.number
                            require msg.value + bondsOutstanding[address(msg.sender)] >= bondsOutstanding[address(msg.sender)]
                            bondsOutstanding[address(msg.sender)] += msg.value
                            require msg.value + totalSupplyBonds >= totalSupplyBonds
                            totalSupplyBonds += msg.value
                            require msg.value + sub_cd68b5a6 >= sub_cd68b5a6
                            sub_cd68b5a6 += msg.value
            else:
                sub_34b89001 = block.number
                require msg.value + playerVault[address(msg.sender)] >= playerVault[address(msg.sender)]
                playerVault[address(msg.sender)] += msg.value
                sub_68dcff1d = 0
                if block.number - 256 > sub_34b89001:
                    if 1 == bool(sub_68dcff1d):
                        if sub_b003201c * sub_60818807[stor28] > 0:
                            emit 0x9007b5ba: sub_50d0d68eAddress, 0, sub_b003201c * sub_60818807[stor28], 7
                        sub_b003201c = arg1
                        sub_68dcff1d = 0
                        sub_50d0d68eAddress = msg.sender
                        sub_34b89001 = block.number
                        require msg.value + bondsOutstanding[address(msg.sender)] >= bondsOutstanding[address(msg.sender)]
                        bondsOutstanding[address(msg.sender)] += msg.value
                        require msg.value + totalSupplyBonds >= totalSupplyBonds
                        totalSupplyBonds += msg.value
                        require msg.value + sub_cd68b5a6 >= sub_cd68b5a6
                        sub_cd68b5a6 += msg.value
                else:
                    if sub_34b89001 == block.number:
                        if 1 == bool(sub_68dcff1d):
                            if sub_b003201c * sub_60818807[stor28] > 0:
                                emit 0x9007b5ba: sub_50d0d68eAddress, 0, sub_b003201c * sub_60818807[stor28], 7
                            sub_b003201c = arg1
                            sub_68dcff1d = 0
                            sub_50d0d68eAddress = msg.sender
                            sub_34b89001 = block.number
                            require msg.value + bondsOutstanding[address(msg.sender)] >= bondsOutstanding[address(msg.sender)]
                            bondsOutstanding[address(msg.sender)] += msg.value
                            require msg.value + totalSupplyBonds >= totalSupplyBonds
                            totalSupplyBonds += msg.value
                            require msg.value + sub_cd68b5a6 >= sub_cd68b5a6
                            sub_cd68b5a6 += msg.value
                    else:
                        s = 0
                        idx = 0
                        s = sub_b003201c * sub_60818807[stor28]
                        t = 0
                        u = 0
                        while idx < sub_b003201c:
                            if -sub_60818807[stor28] + -idx + 1000 <= 2:
                                require u
                                if -sub_60818807[stor28] + -idx + 1000 <= 2:
                                    emit 0x82130c7c 
                                    emit 0x1 
                                    sub_ddadc843 = stor26
                                    require stor26 + pendingFills[stor28] >= pendingFills[stor28]
                                    pendingFills[stor28] += stor26
                                    mem[0] = sub_50d0d68eAddress
                                    mem[32] = 25
                                    sub_60818807[stor28] = 0
                                    s = 1
                                    idx = sub_b003201c + 1
                                    s = sub_ddadc843
                                    t = 1
                                    u = u
                                    continue 
                                emit 0x82130c7c: block.hash(sub_34b89001) % u
                                if block.hash(sub_34b89001) % u != 1:
                                    s = block.hash(sub_34b89001) % u
                                    idx = idx + 1
                                    s = s
                                    t = t
                                    u = u
                                    continue 
                                sub_ddadc843 = stor26
                                require stor26 + pendingFills[stor28] >= pendingFills[stor28]
                                pendingFills[stor28] += stor26
                                mem[0] = sub_50d0d68eAddress
                                mem[32] = 25
                                sub_60818807[stor28] = 0
                                s = block.hash(sub_34b89001) % u
                                idx = sub_b003201c + 1
                                s = sub_ddadc843
                                t = 1
                                u = u
                                continue 
                            require -sub_60818807[stor28] + -idx + 1000
                            if -sub_60818807[stor28] + -idx + 1000 <= 2:
                                emit 0x82130c7c 
                                emit 0x1 
                                sub_ddadc843 = stor26
                                require stor26 + pendingFills[stor28] >= pendingFills[stor28]
                                pendingFills[stor28] += stor26
                                mem[0] = sub_50d0d68eAddress
                                mem[32] = 25
                                sub_60818807[stor28] = 0
                                s = 1
                                idx = sub_b003201c + 1
                                s = sub_ddadc843
                                t = 1
                                u = -sub_60818807[stor28] + -idx + 1000
                                continue 
                            emit 0x82130c7c: block.hash(sub_34b89001) % -sub_60818807[stor28] + -idx + 1000
                            if block.hash(sub_34b89001) % -sub_60818807[stor28] + -idx + 1000 != 1:
                                s = block.hash(sub_34b89001) % -sub_60818807[stor28] + -idx + 1000
                                idx = idx + 1
                                s = s
                                t = t
                                u = -sub_60818807[stor28] + -idx + 1000
                                continue 
                            sub_ddadc843 = stor26
                            require stor26 + pendingFills[stor28] >= pendingFills[stor28]
                            pendingFills[stor28] += stor26
                            mem[0] = sub_50d0d68eAddress
                            mem[32] = 25
                            sub_60818807[stor28] = 0
                            s = block.hash(sub_34b89001) % -sub_60818807[stor28] + -idx + 1000
                            idx = sub_b003201c + 1
                            s = sub_ddadc843
                            t = 1
                            u = -sub_60818807[stor28] + -idx + 1000
                            continue 
                        require sub_b003201c + sub_60818807[stor28] >= sub_60818807[stor28]
                        sub_60818807[stor28] += sub_b003201c
                        if 1 == bool(sub_68dcff1d):
                            if s > 0:
                                emit 0x9007b5ba: sub_50d0d68eAddress, bool(t), s, 7
                            sub_b003201c = arg1
                            sub_68dcff1d = 0
                            sub_50d0d68eAddress = msg.sender
                            sub_34b89001 = block.number
                            require msg.value + bondsOutstanding[address(msg.sender)] >= bondsOutstanding[address(msg.sender)]
                            bondsOutstanding[address(msg.sender)] += msg.value
                            require msg.value + totalSupplyBonds >= totalSupplyBonds
                            totalSupplyBonds += msg.value
                            require msg.value + sub_cd68b5a6 >= sub_cd68b5a6
                            sub_cd68b5a6 += msg.value
}



}
