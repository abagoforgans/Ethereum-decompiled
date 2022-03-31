contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
address stor17;

function _fallback() payable {
    stor0 = 1
    stor1 = 10^16
    stor2 = 10^15
    stor3 = 3
    stor4 = 0
    require not msg.value
    stor17 = msg.sender
    return code.data[132 len 3366]
}



// =====================  Runtime code  =====================


uint256 lotteryId;
uint256 entryFee;
uint256 rake;
uint256 sub_9ae6f132;
uint256 numPlayers;
array of uint256 stor5;
array of address stor7;
array of uint256 stor8;
address stor17;
mapping of struct withdrawal;

function entryFee() {
    return entryFee
}

function rake() {
    return rake
}

function getWithdrawal(uint256 arg1) {
    return withdrawal[arg1].field_0, withdrawal[arg1].field_256, address(withdrawal[arg1].field_512), withdrawal[arg1].field_768
}

function numPlayers() {
    return numPlayers
}

function sub_9ae6f132(?) {
    return sub_9ae6f132
}

function lotteryId() {
    return lotteryId
}

function destroy() {
    require msg.sender == stor17
    selfdestruct(stor17)
}

function _fallback() {
    revert
}

function sub_9083dbe8(?) {
    require msg.sender == stor17
    call stor17 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
}

function withdraw(uint256 arg1) {
    if withdrawal[arg1].field_768 <= 0:
        return 0
    if address(withdrawal[arg1].field_512) != msg.sender:
        return 0
    withdrawal[arg1].field_768 = 0
    call msg.sender with:
       value withdrawal[arg1].field_768 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        return 0
    emit 0x36fe8a92: withdrawal[arg1].field_0, withdrawal[arg1].field_256, address(withdrawal[arg1].field_512), withdrawal[arg1].field_768, block.timestamp
    return 1
}

function players(uint256 arg1) {
    require arg1 < 3
    mem[256] = stor[sha3((4 * arg1) + 6)]
    idx = 256
    s = 0
    while stor[(4 * arg1) + 6].length + 256 > idx + 32:
        mem[idx + 32] = stor[s + sha3((4 * arg1) + 6) + 1]
        idx = idx + 32
        s = s + 1
        continue 
    return stor5[arg1], 
           Array(len=stor[(4 * arg1) + 6].length, data=mem[256 len stor[(4 * arg1) + 6].length + (floor32(stor[(4 * arg1) + 6].length - 1) + -stor[(4 * arg1) + 6].length + 32 % 32)]),
           stor7[arg1],
           stor8[arg1]
}

function enter(string arg1) payable {
    mem[128 len arg1.length] = arg1[all]
    require msg.value == entryFee
    require arg1.length <= 20
    mem[ceil32(arg1.length) + 128] = numPlayers + 1
    mem[ceil32(arg1.length) + 160] = 96
    mem[ceil32(arg1.length) + 192] = msg.sender
    mem[ceil32(arg1.length) + 224] = block.timestamp
    require numPlayers < 3
    stor5[stor4] = numPlayers + 1
    stor[sha3((4 * stor4) + 6)][] = Array(len=arg1.length, data=arg1[all])
    stor7[stor4] = msg.sender
    stor8[stor4] = block.timestamp
    mem[ceil32(arg1.length) + 256] = lotteryId
    mem[ceil32(arg1.length) + 288] = numPlayers + 1
    mem[ceil32(arg1.length) + 320] = msg.sender
    mem[ceil32(arg1.length) + 384] = entryFee
    mem[ceil32(arg1.length) + 416] = block.timestamp
    mem[ceil32(arg1.length) + 352] = 192
    mem[ceil32(arg1.length) + 448] = arg1.length
    if arg1.length:
        mem[ceil32(arg1.length) + 480] = mem[128]
        mem[ceil32(arg1.length) + 512 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
    emit 0x6af41bda: lotteryId, numPlayers + 1, msg.sender, Array(len=arg1.length, data=mem[ceil32(arg1.length) + 480 len arg1.length]), entryFee, block.timestamp
    numPlayers++
    if numPlayers == sub_9ae6f132:
        require mulmod(0, block.timestamp, sub_9ae6f132 - 1) < 3
        withdrawal[stor0].field_0 = lotteryId
        withdrawal[stor0].field_256 = stor5[mulmod(0, block.timestamp, stor3 - 1)]
        address(withdrawal[stor0].field_512) = stor7[mulmod(0, block.timestamp, stor3 - 1)]
        withdrawal[stor0].field_768 = (sub_9ae6f132 * entryFee) - rake
        mem[ceil32(arg1.length) + 608] = stor[sha3((4 * mulmod(0, block.timestamp, stor3 - 1)) + 6)]
        idx = ceil32(arg1.length) + 608
        s = 0
        while ceil32(arg1.length) + stor[(4 * mulmod(0, block.timestamp, stor3 - 1)) + 6].length + 608 > idx + 32:
            mem[idx + 32] = stor[s + sha3((4 * mulmod(0, block.timestamp, stor3 - 1)) + 6) + 1]
            idx = idx + 32
            s = s + 1
            continue 
        emit 0x8c2f0602: lotteryId, stor5[mulmod(0, block.timestamp, stor3 - 1)], stor7[mulmod(0, block.timestamp, stor3 - 1)], Array(len=stor[(4 * mulmod(0, block.timestamp, stor3 - 1)) + 6].length, data=mem[ceil32(arg1.length) + 608 len stor[(4 * mulmod(0, block.timestamp, stor3 - 1)) + 6].length + (floor32(stor[(4 * mulmod(0, block.timestamp, stor3 - 1)) + 6].length - 1) + -stor[(4 * mulmod(0, block.timestamp, stor3 - 1)) + 6].length + 32 % 32)]), (sub_9ae6f132 * entryFee) - rake, block.timestamp
        numPlayers = 0
        lotteryId++
        emit 0xa5c56439: lotteryId, sub_9ae6f132, entryFee, block.timestamp
}



}
