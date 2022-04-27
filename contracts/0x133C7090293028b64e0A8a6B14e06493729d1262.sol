contract main {


// =======================  Init code  ======================


#
#  - _fallback()
#


// =====================  Runtime code  =====================


#
#  - sub_14958a64(?)
#  - __callback(bytes32 arg1, string arg2)
#  - setPayouts(uint256 arg1, string arg2)
#
const balanceOf(address arg1) = 0


address stor0;
address stor1;
uint256 stor1;
array of uint256 stor2;
uint256 week;
uint8 stor6;
uint256 prizePool;
address ethReliefAddress;
address etheraffleAddress;
address upgradeAddr;
address disburseAddr;
uint256 tktPrice;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
array of uint256 stor20;
address stor23;
array of uint256 stor24;
array of uint256 stor25;
array of uint256 stor26;
array of uint256 stor27;
array of struct sub_c7688cf8;
mapping of struct sub_fe171015;

function ethRelief() {
    return ethReliefAddress
}

function upgradeAddr() {
    return upgradeAddr
}

function week() {
    return week
}

function paused() {
    return bool(stor6)
}

function prizePool() {
    return prizePool
}

function etheraffle() {
    return etheraffleAddress
}

function tktPrice() {
    return tktPrice
}

function sub_c7688cf8(?) {
    return sub_c7688cf8[arg1].field_768, 
           sub_c7688cf8[arg1].field_1024,
           bool(uint8(sub_c7688cf8[arg1].field_1280)),
           sub_c7688cf8[arg1].field_1536,
           sub_c7688cf8[arg1].field_1792
}

function getUserNumEntries(address arg1, uint256 arg2) {
    return sub_c7688cf8[arg2][address(arg1)].field_0
}

function disburseAddr() {
    return disburseAddr
}

function sub_fe171015(?) {
    return sub_fe171015[arg1].field_0, bool(uint8(sub_fe171015[arg1].field_256)), bool(uint8(sub_fe171015[arg1].field_264))
}

function selfDestruct() {
    require etheraffleAddress == msg.sender
    require block.timestamp - stor19 > 1680 * 24 * 3600
    selfdestruct(ethReliefAddress)
}

function _fallback() payable {
    revert
}

function destroy(address arg1, uint256 arg2) {
  stop
}

function __callback(bytes32 arg1, string arg2, bytes arg3) {
  stop
}

function addToPrizePool() payable {
    require msg.value > 0
    prizePool += msg.value
}

function setTake(uint256 arg1) {
    require etheraffleAddress == msg.sender
    stor13 = arg1
}

function setRafEnd(uint256 arg1) {
    require etheraffleAddress == msg.sender
    stor14 = arg1
}

function setFreeLOT(address arg1) {
    require etheraffleAddress == msg.sender
    stor23 = arg1
}

function setPaused(bool arg1) {
    require etheraffleAddress == msg.sender
    stor6 = uint8(arg1)
}

function setTktPrice(uint256 arg1) {
    require etheraffleAddress == msg.sender
    tktPrice = arg1
}

function setWithdrawBeforeTime(uint256 arg1) {
    require etheraffleAddress == msg.sender
    stor18 = arg1
}

function setEthRelief(address arg1) {
    require etheraffleAddress == msg.sender
    ethReliefAddress = arg1
}

function setDisbursingAddr(address arg1) {
    require etheraffleAddress == msg.sender
    disburseAddr = arg1
}

function setEtheraffle(address arg1) {
    require etheraffleAddress == msg.sender
    etheraffleAddress = arg1
}

function getWeek() {
    if block.timestamp + (-604800 * block.timestamp - (416736 * 24 * 3600) / 168 * 24 * 3600) - (416736 * 24 * 3600) <= stor14:
        return (block.timestamp - (416736 * 24 * 3600) / 168 * 24 * 3600)
    return ((block.timestamp - (416736 * 24 * 3600) / 168 * 24 * 3600) + 1)
}

function upgradeContract(address arg1) {
    require etheraffleAddress == msg.sender
    require not stor19
    require not upgradeAddr
    upgradeAddr = arg1
    stor19 = block.timestamp
    week = 0
    prizePool = 0
    stor15 = 0
    require eth.balance(this.address) >= prizePool
    require ext_code.size(arg1)
    call arg1.0xb3ede13f with:
       value prizePool wei
         gas gas_remaining - 9710 wei
    require ext_call.success
    emit LogUpgrade(address(arg1), prizePool, stor19);
}

function setPercentOfPool(uint256[] arg1) {
    require etheraffleAddress == msg.sender
    stor20.length = arg1.length
    if not arg1.length:
        idx = 0
        while stor20.length > idx:
            stor20[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = arg1 + 36
        while arg1 + (32 * arg1.length) + 36 > idx:
            stor20[s] = cd[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while stor20.length > idx:
            stor20[idx] = 0
            idx = idx + 1
            continue 
}

function getWinningDetails(uint256 arg1) {
    if sub_c7688cf8[arg1].field_256:
        mem[192] = sub_c7688cf8[arg1][1].field_0
        idx = 192
        s = 0
        while (32 * sub_c7688cf8[arg1].field_256) + 160 > idx:
            mem[idx + 32] = sub_c7688cf8[arg1][s + 1].field_256
            idx = idx + 32
            s = s + 1
            continue 
    if sub_c7688cf8[arg1].field_512:
        mem[(32 * sub_c7688cf8[arg1].field_256) + 224] = sub_c7688cf8[arg1][2].field_0
        idx = (32 * sub_c7688cf8[arg1].field_256) + 224
        s = 0
        while (32 * sub_c7688cf8[arg1].field_256) + (32 * sub_c7688cf8[arg1].field_512) + 192 > idx:
            mem[idx + 32] = sub_c7688cf8[arg1][s + 2].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * sub_c7688cf8[arg1].field_256) + (32 * sub_c7688cf8[arg1].field_512) + 320 len floor32(sub_c7688cf8[arg1].field_256)] = mem[192 len floor32(sub_c7688cf8[arg1].field_256)]
    mem[(64 * sub_c7688cf8[arg1].field_256) + (32 * sub_c7688cf8[arg1].field_512) + 320] = sub_c7688cf8[arg1].field_512
    mem[(64 * sub_c7688cf8[arg1].field_256) + (32 * sub_c7688cf8[arg1].field_512) + 352 len floor32(sub_c7688cf8[arg1].field_512)] = mem[(32 * sub_c7688cf8[arg1].field_256) + 224 len floor32(sub_c7688cf8[arg1].field_512)]
    return Array(len=sub_c7688cf8[arg1].field_256, data=mem[192 len floor32(sub_c7688cf8[arg1].field_256)], mem[(32 * sub_c7688cf8[arg1].field_256) + (32 * sub_c7688cf8[arg1].field_512) + floor32(sub_c7688cf8[arg1].field_256) + 320 len (32 * sub_c7688cf8[arg1].field_256) + (32 * sub_c7688cf8[arg1].field_512) + -floor32(sub_c7688cf8[arg1].field_256) + 32]), 
           (32 * sub_c7688cf8[arg1].field_256) + 96
}

function getChosenNumbers(address arg1, uint256 arg2, uint256 arg3) {
    require arg3 - 1 < sub_c7688cf8[arg2][address(arg1)].field_0
    if not sub_c7688cf8[arg2][address(arg1)][arg3].field_0:
        mem[(32 * sub_c7688cf8[arg2][address(arg1)][arg3].field_0) + 160] = 32
        mem[(32 * sub_c7688cf8[arg2][address(arg1)][arg3].field_0) + 192] = sub_c7688cf8[arg2][address(arg1)][arg3].field_0
        mem[(32 * sub_c7688cf8[arg2][address(arg1)][arg3].field_0) + 224 len floor32(sub_c7688cf8[arg2][address(arg1)][arg3].field_0)] = mem[160 len floor32(sub_c7688cf8[arg2][address(arg1)][arg3].field_0)]
        return memory
          from (32 * sub_c7688cf8[arg2][address(arg1)][arg3].field_0) + 160
           len (96 * sub_c7688cf8[arg2][address(arg1)][arg3].field_0) + 64
    mem[160] = stor[sha3(arg3 + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('param', 'arg2'), ('name', 'sub_c7688cf8', 28))) - 1)].field_0
    idx = 160
    s = 0
    while (32 * sub_c7688cf8[arg2][address(arg1)][arg3].field_0) + 128 > idx:
        mem[idx + 32] = stor[s + sha3(arg3 + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('param', 'arg2'), ('name', 'sub_c7688cf8', 28))) - 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_c7688cf8[arg2][address(arg1)][arg3].field_0) + 224 len floor32(sub_c7688cf8[arg2][address(arg1)][arg3].field_0)] = mem[160 len floor32(sub_c7688cf8[arg2][address(arg1)][arg3].field_0)]
    return Array(len=sub_c7688cf8[arg2][address(arg1)][arg3].field_0, data=mem[160 len floor32(sub_c7688cf8[arg2][address(arg1)][arg3].field_0)], mem[(32 * sub_c7688cf8[arg2][address(arg1)][arg3].field_0) + floor32(sub_c7688cf8[arg2][address(arg1)][arg3].field_0) + 224 len (32 * sub_c7688cf8[arg2][address(arg1)][arg3].field_0) - floor32(sub_c7688cf8[arg2][address(arg1)][arg3].field_0)]), 
}

function setOraclizeString(string arg1, string arg2, string arg3, string arg4) {
    require etheraffleAddress == msg.sender
    stor24.length = (2 * arg1.length) + 1
    if arg1.length <= 0:
        idx = 0
        while stor24.length + 31 / 32 > idx:
            stor24[idx] = 0
            idx = idx + 1
            continue 
    else:
        stor24 = cd[(arg1 + 36)]
        s = 1
        idx = arg1 + 68
        while arg1 + arg1.length + 36 > idx:
            stor24[s] = cd[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = (Mask(251, 0, arg1.length - 1) >> 5) + 1
        while stor24.length + 31 / 32 > idx:
            stor24[idx] = 0
            idx = idx + 1
            continue 
    stor25.length = (2 * arg2.length) + 1
    if arg2.length <= 0:
        idx = 0
        while stor25.length + 31 / 32 > idx:
            stor25[idx] = 0
            idx = idx + 1
            continue 
    else:
        stor25 = cd[(arg2 + 36)]
        s = 1
        idx = arg2 + 68
        while arg2 + arg2.length + 36 > idx:
            stor25[s] = cd[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = (Mask(251, 0, arg2.length - 1) >> 5) + 1
        while stor25.length + 31 / 32 > idx:
            stor25[idx] = 0
            idx = idx + 1
            continue 
    stor26.length = (2 * arg3.length) + 1
    if arg3.length <= 0:
        idx = 0
        while stor26.length + 31 / 32 > idx:
            stor26[idx] = 0
            idx = idx + 1
            continue 
    else:
        stor26 = cd[(arg3 + 36)]
        s = 1
        idx = arg3 + 68
        while arg3 + arg3.length + 36 > idx:
            stor26[s] = cd[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = (Mask(251, 0, arg3.length - 1) >> 5) + 1
        while stor26.length + 31 / 32 > idx:
            stor26[idx] = 0
            idx = idx + 1
            continue 
    stor27.length = (2 * arg4.length) + 1
    if arg4.length <= 0:
        idx = 0
        while stor27.length + 31 / 32 > idx:
            stor27[idx] = 0
            idx = idx + 1
            continue 
    else:
        stor27 = cd[(arg4 + 36)]
        s = 1
        idx = arg4 + 68
        while arg4 + arg4.length + 36 > idx:
            stor27[s] = cd[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = (Mask(251, 0, arg4.length - 1) >> 5) + 1
        while stor27.length + 31 / 32 > idx:
            stor27[idx] = 0
            idx = idx + 1
            continue 
}

function withdrawWinnings(uint256 arg1, uint256 arg2) {
    require not stor6
    require block.timestamp - sub_c7688cf8[arg1].field_768 > sub_c7688cf8[arg1].field_768
    require block.timestamp - sub_c7688cf8[arg1].field_768 < stor18
    require 1 == bool(uint8(sub_c7688cf8[arg1].field_1280))
    require arg2 - 1 < sub_c7688cf8[arg1][address(msg.sender)].field_0
    require 6 == sub_c7688cf8[arg1][address(msg.sender)][arg2].field_0
    idx = 0
    s = 0
    while idx < 6:
        t = 0
        while t < 6:
            require t < sub_c7688cf8[arg1].field_256
            mem[32] = sha3(arg1, 28)
            require arg2 - 1 < sub_c7688cf8[arg1][address(msg.sender)].field_0
            require idx < sub_c7688cf8[arg1][address(msg.sender)][arg2].field_0
            mem[0] = arg2 + sha3(sha3(address(msg.sender), sha3(arg1, 28))) - 1
            if stor[idx + sha3(arg2 + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('map', ('param', 'arg1'), ('name', 'sub_c7688cf8', 28))) - 1)].field_0 != sub_c7688cf8[arg1][t + 1].field_0:
                t = t + 1
                continue 
            idx = idx + 1
            s = s + 1
            continue 
        idx = idx + 1
        s = s
        continue 
    require s >= 3
    require s - 3 < sub_c7688cf8[arg1].field_512
    require sub_c7688cf8[arg1][s + 2].field_0 > 0
    require s - 3 < sub_c7688cf8[arg1].field_512
    require sub_c7688cf8[arg1][s + 2].field_0 <= sub_c7688cf8[arg1].field_1024
    require arg2 - 1 < sub_c7688cf8[arg1][address(msg.sender)].field_0
    sub_c7688cf8[arg1][address(msg.sender)][arg2].field_0++
    if not sub_c7688cf8[arg1][address(msg.sender)][arg2].field_0 <= sub_c7688cf8[arg1][address(msg.sender)][arg2].field_0 + 1:
        idx = sub_c7688cf8[arg1][address(msg.sender)][arg2].field_0 + 1
        while sub_c7688cf8[arg1][address(msg.sender)][arg2].field_0 > idx:
            stor[idx + sha3(arg2 + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('map', ('param', 'arg1'), ('name', 'sub_c7688cf8', 28))) - 1)].field_0 = 0
            idx = idx + 1
            continue 
    stor[sub_c7688cf8[arg1][address(msg.sender)][arg2].field_0 + sha3(arg2 + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('map', ('param', 'arg1'), ('name', 'sub_c7688cf8', 28))) - 1)].field_0 = 0
    require s - 3 < sub_c7688cf8[arg1].field_512
    sub_c7688cf8[arg1].field_1024 -= sub_c7688cf8[arg1][s + 2].field_0
    require s - 3 < sub_c7688cf8[arg1].field_512
    call msg.sender with:
       value sub_c7688cf8[arg1][s + 2].field_0 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require s - 3 < sub_c7688cf8[arg1].field_512
    emit LogWithdraw(arg2, s, sub_c7688cf8[arg1][s + 2].field_0, block.timestamp, arg1, msg.sender);
}

function enterRaffle(uint256[] arg1, uint256 arg2) payable {
    require not stor6
    require msg.value >= tktPrice
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require 6 == arg1.length
    require sub_c7688cf8[stor5].field_768 > 0
    require block.timestamp - sub_c7688cf8[stor5].field_768 < stor14
    require 0 < arg1.length
    require 0 < mem[128]
    require 1 < arg1.length
    require 0 < arg1.length
    require mem[128] < mem[160]
    require 2 < arg1.length
    require 1 < arg1.length
    require mem[160] < mem[192]
    require 3 < arg1.length
    require 2 < arg1.length
    require mem[192] < mem[224]
    require 4 < arg1.length
    require 3 < arg1.length
    require mem[224] < mem[256]
    require 5 < arg1.length
    require 4 < arg1.length
    require mem[256] < mem[288]
    require 5 < arg1.length
    require mem[288] <= 49
    sub_c7688cf8[stor5].field_1536++
    prizePool += msg.value
    sub_c7688cf8[stor5][address(msg.sender)].field_0++
    if not sub_c7688cf8[stor5][address(msg.sender)].field_0 <= sub_c7688cf8[stor5][address(msg.sender)].field_0 + 1:
        mem[0] = sha3(address(msg.sender), sha3(week, 28))
        idx = sub_c7688cf8[stor5][address(msg.sender)].field_0 + 1
        while sha3(sha3(address(msg.sender), sha3(week, 28))) + sub_c7688cf8[stor5][address(msg.sender)].field_0 > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            mem[0] = idx + sha3(mem[0])
            s = sha3(idx + sha3(mem[0]))
            while sha3(idx + sha3(mem[0])) + stor[idx + sha3(mem[0])] > s:
                stor[s] = 0
                s = s + 1
                continue 
            idx = idx + 1
            continue 
    sub_c7688cf8[stor5][address(msg.sender)][sub_c7688cf8[stor5][address(msg.sender)].field_0].field_0 = arg1.length
    if not arg1.length:
        idx = 0
        while sub_c7688cf8[stor5][address(msg.sender)][sub_c7688cf8[stor5][address(msg.sender)].field_0].field_0 > idx:
            sub_c7688cf8[stor5][address(msg.sender)][sub_c7688cf8[stor5][address(msg.sender)].field_0 + idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            sub_c7688cf8[stor5][address(msg.sender)][sub_c7688cf8[stor5][address(msg.sender)].field_0 + s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while sub_c7688cf8[stor5][address(msg.sender)][sub_c7688cf8[stor5][address(msg.sender)].field_0].field_0 > idx:
            sub_c7688cf8[stor5][address(msg.sender)][sub_c7688cf8[stor5][address(msg.sender)].field_0 + idx].field_0 = 0
            idx = idx + 1
            continue 
    mem[(32 * arg1.length) + 320 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    emit LogTicketBought(Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 320 len (32 * arg1.length) - floor32(arg1.length)]), sub_c7688cf8[stor5][address(msg.sender)].field_0, msg.value, block.timestamp, arg2, week, sub_c7688cf8[stor5].field_1536, msg.sender);
}

function enterFreeRaffle(uint256[] arg1, uint256 arg2) payable {
    require not stor6
    mem[100] = msg.sender
    mem[132] = 1
    require ext_code.size(stor23)
    call stor23.0xa24835d1 with:
         gas gas_remaining - 710 wei
        args msg.sender, 1
    require ext_call.success
    sub_c7688cf8[stor5].field_1792++
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require 6 == arg1.length
    require sub_c7688cf8[stor5].field_768 > 0
    require block.timestamp - sub_c7688cf8[stor5].field_768 < stor14
    require 0 < arg1.length
    require 0 < mem[128 len 4], 0
    require 1 < arg1.length
    require 0 < arg1.length
    require mem[128 len 4], 0 < 1, mem[164 len 28]
    require 2 < arg1.length
    require 1 < arg1.length
    require 1, mem[164 len 28] < mem[192]
    require 3 < arg1.length
    require 2 < arg1.length
    require mem[192] < mem[224]
    require 4 < arg1.length
    require 3 < arg1.length
    require mem[224] < mem[256]
    require 5 < arg1.length
    require 4 < arg1.length
    require mem[256] < mem[288]
    require 5 < arg1.length
    require mem[288] <= 49
    sub_c7688cf8[stor5].field_1536++
    prizePool += msg.value
    sub_c7688cf8[stor5][address(msg.sender)].field_0++
    if not sub_c7688cf8[stor5][address(msg.sender)].field_0 <= sub_c7688cf8[stor5][address(msg.sender)].field_0 + 1:
        mem[0] = sha3(address(msg.sender), sha3(week, 28))
        idx = sub_c7688cf8[stor5][address(msg.sender)].field_0 + 1
        while sha3(sha3(address(msg.sender), sha3(week, 28))) + sub_c7688cf8[stor5][address(msg.sender)].field_0 > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            mem[0] = idx + sha3(mem[0])
            s = sha3(idx + sha3(mem[0]))
            while sha3(idx + sha3(mem[0])) + stor[idx + sha3(mem[0])] > s:
                stor[s] = 0
                s = s + 1
                continue 
            idx = idx + 1
            continue 
    sub_c7688cf8[stor5][address(msg.sender)][sub_c7688cf8[stor5][address(msg.sender)].field_0].field_0 = arg1.length
    if not arg1.length:
        idx = 0
        while sub_c7688cf8[stor5][address(msg.sender)][sub_c7688cf8[stor5][address(msg.sender)].field_0].field_0 > idx:
            sub_c7688cf8[stor5][address(msg.sender)][sub_c7688cf8[stor5][address(msg.sender)].field_0 + idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            sub_c7688cf8[stor5][address(msg.sender)][sub_c7688cf8[stor5][address(msg.sender)].field_0 + s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while sub_c7688cf8[stor5][address(msg.sender)][sub_c7688cf8[stor5][address(msg.sender)].field_0].field_0 > idx:
            sub_c7688cf8[stor5][address(msg.sender)][sub_c7688cf8[stor5][address(msg.sender)].field_0 + idx].field_0 = 0
            idx = idx + 1
            continue 
    mem[(32 * arg1.length) + 320 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    emit LogTicketBought(Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 320 len (32 * arg1.length) - floor32(arg1.length)]), sub_c7688cf8[stor5][address(msg.sender)].field_0, msg.value, block.timestamp, arg2, week, sub_c7688cf8[stor5].field_1536, msg.sender);
}

function sub_61ad5966(?) {
    require etheraffleAddress == msg.sender
    stor15 = arg1
    stor17 = arg2
    if arg3 > 0:
        if not stor0:
            if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                bool(stor2.length) = 0
                uint255(stor2.length.field_1) = 11
                Mask(248, 0, stor2.length.field_8) = 'eth_mainnet' / 256
                idx = 0
                while stor2.length + 31 / 32 > idx:
                    stor2[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                    stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                    bool(stor2.length) = 0
                    uint255(stor2.length.field_1) = 12
                    Mask(248, 0, stor2.length.field_8) = 'eth_ropsten3' / 256
                    idx = 0
                    while stor2.length + 31 / 32 > idx:
                        stor2[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                        stor0 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                        bool(stor2.length) = 0
                        uint255(stor2.length.field_1) = 9
                        Mask(248, 0, stor2.length.field_8) = 'eth_kovan' / 256
                        idx = 0
                        while stor2.length + 31 / 32 > idx:
                            stor2[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    else:
                        if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                            if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                                stor0 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                            else:
                                if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                    stor0 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                                else:
                                    if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                        stor0 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                        else:
                            stor0 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                            bool(stor2.length) = 0
                            uint255(stor2.length.field_1) = 11
                            Mask(248, 0, stor2.length.field_8) = 'eth_rinkeby' / 256
                            idx = 0
                            while stor2.length + 31 / 32 > idx:
                                stor2[idx].field_0 = 0
                                idx = idx + 1
                                continue 
            require ext_code.size(stor0)
        else:
            if not ext_code.size(stor0):
                if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                    stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                    bool(stor2.length) = 0
                    uint255(stor2.length.field_1) = 11
                    Mask(248, 0, stor2.length.field_8) = 'eth_mainnet' / 256
                    idx = 0
                    while stor2.length + 31 / 32 > idx:
                        stor2[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                        stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                        bool(stor2.length) = 0
                        uint255(stor2.length.field_1) = 12
                        Mask(248, 0, stor2.length.field_8) = 'eth_ropsten3' / 256
                        idx = 0
                        while stor2.length + 31 / 32 > idx:
                            stor2[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    else:
                        if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                            stor0 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                            bool(stor2.length) = 0
                            uint255(stor2.length.field_1) = 9
                            Mask(248, 0, stor2.length.field_8) = 'eth_kovan' / 256
                            idx = 0
                            while stor2.length + 31 / 32 > idx:
                                stor2[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        else:
                            if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                                if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                                    stor0 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                                else:
                                    if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                        stor0 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                                    else:
                                        if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                            stor0 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                            else:
                                stor0 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                                bool(stor2.length) = 0
                                uint255(stor2.length.field_1) = 11
                                Mask(248, 0, stor2.length.field_8) = 'eth_rinkeby' / 256
                                idx = 0
                                while stor2.length + 31 / 32 > idx:
                                    stor2[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                require ext_code.size(stor0)
        call stor0.getAddress() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        if ext_call.return_data[12 len 20] != address(stor1):
            require ext_code.size(stor0)
            call stor0.getAddress() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
        require ext_code.size(address(stor1))
        call address(stor1).setCustomGasPrice(uint256 rg1) with:
             gas gas_remaining - 710 wei
            args arg3
        require ext_call.success
        stor16 = arg3
}



}
