contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint8 stor3;
uint256 stor4;
mapping of uint256 stor5;
mapping of uint256 stor6;
mapping of address stor7;
mapping of uint256 stor8;
mapping of address stor9;
mapping of uint256 stor10;
mapping of struct stor11;
uint256 stor12;
mapping of struct stor14;

function _fallback() payable {
    stor1 = 0
    require not msg.value
    stor3 = 1
    stor0 = msg.sender
    stor8[0] = 5 * 10^15
    stor1 = 1
    if not stor8[1]:
        stor8[1] = stor8[0] + (25 * stor8[0] / 100)
    stor6[0][0] = stor1
    stor11[stor1].field_0 = 0
    stor11[stor1].field_256 = 0
    stor11[stor1].field_512 = 0
    stor11[stor1].field_513 = 14
    stor11[stor1].field_520 = 'First Block :)' / 256
    idx = 0
    while stor11[stor1][2].length + 31 / 32 > idx:
        stor11[stor1][idx + 2].field_0 = 0
        idx = idx + 1
        continue 
    stor7[stor1] = stor0
    emit NewBlock(stor1);
    if not stor1 % 100:
        if stor4 != 49:
            stor4++
            require stor2 * stor4 / 120 <= stor2
            stor2 -= stor2 * stor4 / 120
            stor5[stor0] += stor2 * stor4 / 120
            emit Reward(stor4, stor0, stor2 * stor4 / 120);
            stor9[stor4 - 1] = stor0
            stor10[stor4 - 1] = stor2 * stor4 / 120
        else:
            stor3 = 0
            stor4++
            stor2 = 0
            stor5[stor0] += stor2
            emit Reward(stor4, stor0, stor2);
            stor9[stor4 - 1] = stor0
            stor10[stor4 - 1] = stor2
    stor1++
    stor14[stor12].field_0 = msg.sender
    stor14[stor12].field_256 = 0
    stor14[stor12].field_257 = 28
    stor14[stor12].field_264 = 'Welcome to the Circleramide!' / 256
    idx = 0
    while stor14[stor12][1].length + 31 / 32 > idx:
        stor14[stor12][idx + 1].field_0 = 0
        idx = idx + 1
        continue 
    emit SendMessage(stor12, 'Welcome to the Circleramide!', msg.sender);
    require stor12 + 1 >= stor12
    stor12++
    return code.data[2118 len 8320]
}



// =====================  Runtime code  =====================


address stor0;
uint256 totalBlocks;
uint256 rewardBalance;
uint8 stor3;
uint256 rewardsCount;
mapping of uint256 balances;
mapping of uint256 blocksCoordinates;
mapping of address blocksOwners;
mapping of uint256 blockPrice;
mapping of address rewards_id;
mapping of uint256 rewards_amount;
array of struct blocks;
uint256 stor12;
array of struct usernames;
mapping of struct messages;

function messages(uint256 arg1) {
    mem[192] = messages[arg1][1].field_0
    idx = 192
    s = 0
    while messages[arg1][1].length + 192 > idx + 32:
        mem[idx + 32] = messages[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return messages[arg1].field_0, 
           Array(len=messages[arg1][1].length, data=mem[192 len messages[arg1][1].length + (floor32(messages[arg1][1].length - 1) + -messages[arg1][1].length + 32 % 32)])
}

function rewards_id(uint256 arg1) {
    return rewards_id[arg1]
}

function balances(address arg1) {
    return balances[arg1]
}

function blocksCoordinates(uint256 arg1, uint256 arg2) {
    return blocksCoordinates[arg1][arg2]
}

function rewardsCount() {
    return rewardsCount
}

function rewardBalance() {
    return rewardBalance
}

function rewards_amount(uint256 arg1) {
    return rewards_amount[arg1]
}

function isLive() {
    return bool(stor3)
}

function prices(uint256 arg1) {
    return blockPrice[arg1]
}

function blocksOwners(uint256 arg1) {
    return blocksOwners[arg1]
}

function usernames(address arg1) {
    return usernames[arg1][0 len usernames[arg1].length].field_0
}

function blocks(uint256 arg1) {
    mem[224] = blocks[arg1][2].field_0
    idx = 224
    s = 0
    while blocks[arg1][2].length + 224 > idx + 32:
        mem[idx + 32] = blocks[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return blocks[arg1].field_0, 
           blocks[arg1].field_256,
           Array(len=blocks[arg1][2].length, data=mem[224 len blocks[arg1][2].length + (floor32(blocks[arg1][2].length - 1) + -blocks[arg1][2].length + 32 % 32)])
}

function totalBlocks() {
    return totalBlocks
}

function getBlockPrice(uint256 arg1) {
    return blockPrice[arg1]
}

function _fallback() payable {
    revert
}

function calculateReward() {
    return (rewardBalance * rewardsCount / 120)
}

function checkBlockEmpty(uint256 arg1, uint256 arg2) {
    return not blocksCoordinates[arg2][arg1]
}

function Info() {
    return totalBlocks, 128, 5 * 10^15, rewardsCount, rewardBalance, 49, 70, 120, stor12, 100
}

function sendMessage(string arg1) {
    messages[stor12].field_0 = msg.sender
    messages[stor12][1][].field_0 = Array(len=arg1.length, data=arg1[all])
    emit SendMessage(stor12, Array(len=arg1.length, data=arg1[all]), msg.sender);
    require stor12 + 1 >= stor12
    stor12++
    return stor12
}

function withdrawBalance(uint256 arg1) {
    require arg1
    require balances[address(msg.sender)] >= arg1
    require arg1 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg1
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Withdraw(msg.sender);
}

function setUserName(string arg1) {
    idx = ceil32(arg1.length) + 192
    s = 0
    while ceil32(arg1.length) + usernames[address(msg.sender)].length + 160 > idx:
        mem[idx + 32] = usernames[address(msg.sender)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if usernames[address(msg.sender)].length:
        return 0
    usernames[address(msg.sender)][].field_0 = Array(len=arg1.length, data=arg1[all])
    return 1
}

function getPrices(uint256 arg1, uint256 arg2) {
    idx = arg1
    s = 0
    while idx < arg2 + arg1:
        mem[0] = idx
        mem[32] = 8
        require s < arg2
        mem[(32 * s) + 192] = blockPrice[idx]
        idx = idx + 1
        s = s + 1
        continue 
    mem[(32 * arg2) + 320 len floor32(arg2)] = mem[192 len floor32(arg2)]
    return arg1, 
           arg2,
           Array(len=arg2, data=mem[192 len floor32(arg2)], mem[(32 * arg2) + floor32(arg2) + 320 len (32 * arg2) - floor32(arg2)])
}

function getRewards(uint256 arg1, uint256 arg2) {
    idx = arg1
    s = 0
    while idx < arg2 + arg1:
        require s < 2 * arg2
        mem[(32 * s) + 192] = rewards_id[idx]
        mem[0] = idx
        mem[32] = 10
        require s + 1 < 2 * arg2
        mem[(32 * s + 1) + 192] = rewards_amount[idx]
        idx = idx + 1
        s = s + 2
        continue 
    mem[(64 * arg2) + 320 len 2 * Mask(251, 4, arg2)] = mem[192 len 2 * Mask(251, 4, arg2)]
    return arg1, 
           arg2,
           Array(len=2 * arg2, data=mem[192 len 2 * Mask(251, 4, arg2)], mem[(64 * arg2) + (2 * Mask(251, 4, arg2)) + 320 len (64 * arg2) - (2 * Mask(251, 4, arg2))])
}

function getBlocks(uint256 arg1, uint256 arg2) {
    s = 0
    idx = arg1
    s = 0
    while idx < arg2 + arg1:
        require s < 3 * arg2
        mem[(32 * s) + 192] = blocks[idx + 1].field_0
        require s + 1 < 3 * arg2
        mem[(32 * s + 1) + 192] = blocks[idx + 1].field_256
        mem[0] = idx + 1
        mem[32] = 7
        require s + 2 < 3 * arg2
        mem[(32 * s + 2) + 192] = blocksOwners[idx + 1]
        s = sha3(idx + 1, 11)
        idx = idx + 1
        s = s + 3
        continue 
    mem[(32 * 3 * arg2) + 320 len floor32(3 * arg2)] = mem[192 len floor32(3 * arg2)]
    return arg1, 
           arg2,
           Array(len=3 * arg2, data=mem[192 len floor32(3 * arg2)], mem[(32 * 3 * arg2) + floor32(3 * arg2) + 320 len (32 * 3 * arg2) - floor32(3 * arg2)])
}

function getBlock(uint256 arg1) {
    mem[96] = 0
    mem[32] = 7
    stor0 = blocksOwners[arg1]
    mem[128] = blocks[arg1][2].length
    mem[0] = sha3(arg1, 11) + 2
    mem[160] = blocks[arg1][2].field_0
    idx = 160
    s = 0
    while blocks[arg1][2].length + 128 > idx:
        mem[idx + 32] = blocks[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(blocks[arg1][2].length) + 160] = arg1
    mem[ceil32(blocks[arg1][2].length) + 192] = blocks[arg1].field_0
    mem[ceil32(blocks[arg1][2].length) + 224] = blocks[arg1].field_256
    mem[ceil32(blocks[arg1][2].length) + 256] = 0
    mem[ceil32(blocks[arg1][2].length) + 288] = 160
    mem[ceil32(blocks[arg1][2].length) + 320] = blocks[arg1][2].length
    mem[ceil32(blocks[arg1][2].length) + 352 len ceil32(blocks[arg1][2].length)] = mem[160 len ceil32(blocks[arg1][2].length)]
    if not blocks[arg1][2].length % 32:
        return arg1, blocks[arg1].field_0, blocks[arg1].field_256, 0, 160, blocks[arg1][2].length, mem[160 len blocks[arg1][2].length]
    mem[floor32(blocks[arg1][2].length) + ceil32(blocks[arg1][2].length) + 352] = mem[floor32(blocks[arg1][2].length) + ceil32(blocks[arg1][2].length) + -blocks[arg1][2].length % 32 + 384 len blocks[arg1][2].length % 32]
    return arg1, 
           blocks[arg1].field_0,
           blocks[arg1].field_256,
           0,
           160,
           blocks[arg1][2].length,
           mem[160 len ceil32(blocks[arg1][2].length)],
           mem[(2 * ceil32(blocks[arg1][2].length)) + 352 len floor32(blocks[arg1][2].length) + -ceil32(blocks[arg1][2].length) + 32]
}

function setBlock(uint256 arg1, uint256 arg2, string arg3) payable {
    require stor3
    if not blockPrice[arg2 + 1]:
        blockPrice[arg2 + 1] = blockPrice[arg2] + (25 * blockPrice[arg2] / 100)
    require blockPrice[arg2] <= balances[address(msg.sender)] + msg.value
    require not blocksCoordinates[arg2][arg1]
    require arg1 < -arg2 + 128
    balances[stor0] = balances[stor0] + (2 * blockPrice[arg2] / 100) - (70 * 2 * blockPrice[arg2] / 100 / 100)
    rewardBalance += 70 * 2 * blockPrice[arg2] / 100 / 100
    balances[address(msg.sender)] = balances[address(msg.sender)] + msg.value - blockPrice[arg2]
    if not arg2:
        rewardBalance += (70 * blockPrice[arg2]) - (70 * 2 * blockPrice[arg2] / 100) / 100
        balances[stor0] = balances[stor0] + blockPrice[arg2] - (2 * blockPrice[arg2] / 100) - ((70 * blockPrice[arg2]) - (70 * 2 * blockPrice[arg2] / 100) / 100)
    else:
        require blocksCoordinates[arg2 - 1][arg1]
        require blocksCoordinates[arg2 - 1][arg1 + 1]
        balances[stor7[stor6[arg2 - 1][arg1]]] += blockPrice[arg2] - (2 * blockPrice[arg2] / 100) / 2
        balances[stor7[stor6[arg2 - 1][arg1 + 1]]] = balances[stor7[stor6[arg2 - 1][arg1 + 1]]] + blockPrice[arg2] - (2 * blockPrice[arg2] / 100) - (blockPrice[arg2] - (2 * blockPrice[arg2] / 100) / 2)
    blocksCoordinates[arg2][arg1] = totalBlocks
    blocks[stor1].field_0 = arg1
    blocks[stor1].field_256 = arg2
    blocks[stor1][2][].field_0 = Array(len=arg3.length, data=arg3[all])
    blocksOwners[stor1] = msg.sender
    emit NewBlock(totalBlocks);
    if not totalBlocks % 100:
        if rewardsCount != 49:
            rewardsCount++
            require rewardBalance * rewardsCount / 120 <= rewardBalance
            rewardBalance -= rewardBalance * rewardsCount / 120
            balances[address(msg.sender)] += rewardBalance * rewardsCount / 120
            emit Reward(rewardsCount, msg.sender, rewardBalance * rewardsCount / 120);
            rewards_id[stor4 - 1] = msg.sender
            rewards_amount[stor4 - 1] = rewardBalance * rewardsCount / 120
        else:
            stor3 = 0
            rewardsCount++
            rewardBalance = 0
            balances[address(msg.sender)] += rewardBalance
            emit Reward(rewardsCount, msg.sender, rewardBalance);
            rewards_id[stor4 - 1] = msg.sender
            rewards_amount[stor4 - 1] = rewardBalance
    totalBlocks++
}



}
