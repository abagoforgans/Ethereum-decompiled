contract main {


// =======================  Init code  ======================


uint256 stor0;
uint8 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor13;
address stor14;

function _fallback() payable {
    stor3 = 0
    require not msg.value
    stor0 = 0
    stor4 = 21 * 10^14
    stor5 = 10^14
    stor6 = 10^14
    stor7 = 50
    stor8 = 2016
    stor11 = 210000
    stor10 = 0
    stor13 = 56 * 10^12 * 3600
    stor14 = 0xdeaddeaddeaddeaddeaddeaddeaddeaddeaddead
    stor9 = block.number
    return code.data[149 len 8479]
}



// =====================  Runtime code  =====================


const current_external_block = block.number

const name = ''

const decimals = 8

const divisible_units = 10 * 10^6

const initial_reward = 100

const symbol = ''

const difficultyScaleMultiplierLimit = 4

const INITIAL_SUPPLY = 0

const MAX_SUPPLY = 21 * 10^14


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor3;
uint256 maximumSupply;
uint256 currentDifficultyWei;
uint256 minimumDifficultyThresholdWei;
uint256 blockCreationRate;
uint256 difficultyAdjustmentPeriod;
uint256 lastDifficultyAdjustmentEthereumBlock;
uint256 totalBlocksMined;
uint256 rewardAdjustmentPeriod;
uint256 totalWeiCommitted;
uint8 stor13;
uint256 stor13;
uint256 stor13; offset 2
uint256 totalWeiExpected;
address burnAddress;
mapping of struct blockData;
mapping of struct miningAttempts;

function maximumSupply() {
    return maximumSupply
}

function totalWeiCommitted() {
    return totalWeiCommitted
}

function totalSupply() {
    return totalSupply
}

function getBlockData(uint256 arg1) {
    return blockData[arg1].field_0, 
           blockData[arg1].field_256,
           blockData[arg1].field_512,
           blockData[arg1].field_768,
           blockData[arg1].field_1024,
           bool(blockData[arg1].field_1280),
           blockData[arg1].field_1280,
           bool(blockData[arg1].field_1448)
}

function lastDifficultyAdjustmentEthereumBlock() {
    return lastDifficultyAdjustmentEthereumBlock
}

function minimumDifficultyThresholdWei() {
    return minimumDifficultyThresholdWei
}

function totalBlocksMined() {
    return totalBlocksMined
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function burnAddress() {
    return burnAddress
}

function blockData(uint256 arg1) {
    return blockData[arg1].field_0, 
           blockData[arg1].field_256,
           blockData[arg1].field_512,
           blockData[arg1].field_768,
           blockData[arg1].field_1024,
           bool(blockData[arg1].field_1280),
           blockData[arg1].field_1280,
           bool(blockData[arg1].field_1448)
}

function checkMiningAttempt(uint256 arg1, address arg2) {
    return bool(miningAttempts[arg1][address(arg2)].field_512)
}

function miningAttempts(uint256 arg1, address arg2) {
    return miningAttempts[arg1][arg2].field_0, miningAttempts[arg1][arg2].field_256, bool(miningAttempts[arg1][arg2].field_512)
}

function blockCreationRate() {
    return blockCreationRate
}

function currentDifficultyWei() {
    return currentDifficultyWei
}

function totalWeiExpected() {
    return totalWeiExpected
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function difficultyAdjustmentPeriod() {
    return difficultyAdjustmentPeriod
}

function rewardAdjustmentPeriod() {
    return rewardAdjustmentPeriod
}

function _fallback() payable {
    revert
}

function checkMiningActive() {
    return (totalSupply < maximumSupply)
}

function resolve_block_hash(uint256 arg1) {
    return block.hash(arg1)
}

function targetBlockNumber(uint256 arg1) {
    return (blockCreationRate + (arg1 * blockCreationRate))
}

function get_internal_block_number() {
    require blockCreationRate
    return (block.number / blockCreationRate)
}

function checkBlockMature(uint256 arg1, uint256 arg2) {
    return arg2 >= blockCreationRate + (arg1 * blockCreationRate)
}

function calculate_range_attempt(uint256 arg1, uint256 arg2) {
    require arg2 + arg1 >= arg2
    return arg2, arg2 + arg1
}

function external_to_internal_block_number(uint256 arg1) {
    require blockCreationRate
    return (arg1 / blockCreationRate)
}

function isBlockRedeemed(uint256 arg1) {
    if blockData[arg1].field_1448:
        return bool(blockData[arg1].field_1280)
    else:
        return 0
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
}

function checkRedemptionWindow(uint256 arg1, uint256 arg2) {
    if arg2 < blockCreationRate + (arg1 * blockCreationRate):
        return arg2 >= blockCreationRate + (arg1 * blockCreationRate)
    return (arg2 < blockCreationRate + (arg1 * blockCreationRate) + 256)
}

function calculate_proportional_reward(uint256 arg1, uint256 arg2, uint256 arg3) {
    require arg2 <= arg3
    require arg2 > 0
    require arg3 > 0
    require arg3
    if 10 * 10^6 * arg2 / arg3 < 10 * 10^6:
        return (10 * 10^6 * arg2 / arg3 * arg1 / 10 * 10^6)
    return arg1
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
}

function getMiningAttempt(uint256 arg1, address arg2) {
    if not miningAttempts[arg1][address(arg2)].field_512:
        return 0
    return miningAttempts[arg1][address(arg2)].field_0, 
           miningAttempts[arg1][address(arg2)].field_256,
           bool(miningAttempts[arg1][address(arg2)].field_512)
}

function calculate_next_expected_wei(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require arg4
    if arg1 < arg2 / arg4:
        if arg2 / arg4 >= arg3:
            return (arg2 / arg4)
    else:
        if arg1 <= arg4 * arg2:
            if arg1 >= arg3:
                return arg1
        else:
            if arg4 * arg2 >= arg3:
                return (arg4 * arg2)
    return arg3
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
}

function calculate_base_mining_reward(uint256 arg1) {
    if arg1 < 210000:
        return 10^10
    if arg1 % 210000 <= 0:
        idx = 1
        s = 10^10
        while idx < arg1 / 210000:
            idx = idx + 1
            s = s / 2
            continue 
        return ((255 * arg1 / 210000) + 9999999745)
    idx = 1
    s = 10^10
    while idx < (arg1 / 210000) + 1:
        idx = idx + 1
        s = s / 2
        continue 
    return s
}

function calculate_difficulty_attempt(uint256 arg1, uint256 arg2, uint256 arg3) {
    if arg2 <= arg1:
        require arg1
        if 10 * 10^6 * arg3 / arg1 < 10 * 10^6:
            return (0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * arg3 / arg1)
    else:
        require arg2
        if 10 * 10^6 * arg3 / arg2 < 10 * 10^6:
            return (0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * arg3 / arg2)
    return -1
}

function transmute(address arg1, uint256 arg2) {
    require not stor3
    stor3 = 1
    require arg2 > 0
    require balanceOf[address(msg.sender)] >= arg2
    require totalSupply >= arg2
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    require ext_code.size(arg1)
    call arg1.transmuted(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args arg2
    require ext_call.success
    require ext_call.return_data[0]
    emit Transmuted(address(this.address), address(arg1), arg2, ext_call.return_data[32], msg.sender);
    stor3 = 0
    return bool(ext_call.return_data[0]), ext_call.return_data[32]
}

function getContractState() {
    require blockCreationRate
    if blockData[block.number / stor7].field_1448:
        return currentDifficultyWei, 
               minimumDifficultyThresholdWei,
               block.number / blockCreationRate,
               blockCreationRate,
               difficultyAdjustmentPeriod,
               rewardAdjustmentPeriod,
               lastDifficultyAdjustmentEthereumBlock,
               totalBlocksMined,
               totalWeiCommitted,
               totalWeiExpected,
               blockData[block.number / stor7].field_0,
               blockData[block.number / stor7].field_512,
               blockData[block.number / stor7].field_1024
    return currentDifficultyWei, 
           minimumDifficultyThresholdWei,
           block.number / blockCreationRate,
           blockCreationRate,
           difficultyAdjustmentPeriod,
           rewardAdjustmentPeriod,
           lastDifficultyAdjustmentEthereumBlock,
           totalBlocksMined,
           totalWeiCommitted,
           totalWeiExpected,
           currentDifficultyWei,
           0,
           0
}

function calculate_reward(uint256 arg1, address arg2, uint256 arg3) {
    if arg1 < 210000:
        require miningAttempts[arg3][address(arg2)].field_256 <= blockData[arg3].field_512
        require miningAttempts[arg3][address(arg2)].field_256 > 0
        require blockData[arg3].field_512 > 0
        require blockData[arg3].field_512
        if 10 * 10^6 * miningAttempts[arg3][address(arg2)].field_256 / blockData[arg3].field_512 < 10 * 10^6:
            return (1000 * 10 * 10^6 * miningAttempts[arg3][address(arg2)].field_256 / blockData[arg3].field_512)
        return 10^10
    if arg1 % 210000 <= 0:
        idx = 1
        s = 10^10
        while idx < arg1 / 210000:
            idx = idx + 1
            s = s / 2
            continue 
        require miningAttempts[arg3][address(arg2)].field_256 <= blockData[arg3].field_512
        require miningAttempts[arg3][address(arg2)].field_256 > 0
        require blockData[arg3].field_512 > 0
        require blockData[arg3].field_512
        if 10 * 10^6 * miningAttempts[arg3][address(arg2)].field_256 / blockData[arg3].field_512 < 10 * 10^6:
            return (10 * 10^6 * miningAttempts[arg3][address(arg2)].field_256 / blockData[arg3].field_512 * (255 * arg1 / 210000) + 9999999745 / 10 * 10^6)
        return ((255 * arg1 / 210000) + 9999999745)
    idx = 1
    s = 10^10
    while idx < (arg1 / 210000) + 1:
        idx = idx + 1
        s = s / 2
        continue 
    require miningAttempts[arg3][address(arg2)].field_256 <= blockData[arg3].field_512
    require miningAttempts[arg3][address(arg2)].field_256 > 0
    require blockData[arg3].field_512 > 0
    require blockData[arg3].field_512
    if 10 * 10^6 * miningAttempts[arg3][address(arg2)].field_256 / blockData[arg3].field_512 < 10 * 10^6:
        return (10 * 10^6 * miningAttempts[arg3][address(arg2)].field_256 / blockData[arg3].field_512 * s / 10 * 10^6)
    return s
}

function mine() payable {
    require not stor3
    stor3 = 1
    require msg.value >= currentDifficultyWei / 10 * 10^6
    require msg.value <= 1000000 * 10^18
    require totalSupply < maximumSupply
    require blockCreationRate
    require block.number / blockCreationRate != block.number
    if not blockData[block.number / stor7].field_1448:
        if block.number - lastDifficultyAdjustmentEthereumBlock > difficultyAdjustmentPeriod * blockCreationRate:
            if totalWeiCommitted < Mask(254, 0, stor13.field_2):
                if Mask(254, 0, stor13.field_2) >= minimumDifficultyThresholdWei * difficultyAdjustmentPeriod:
                    totalWeiExpected = Mask(254, 0, stor13.field_2)
                    require difficultyAdjustmentPeriod
                    currentDifficultyWei = Mask(254, 0, stor13.field_2) / difficultyAdjustmentPeriod
                else:
                    totalWeiExpected = minimumDifficultyThresholdWei * difficultyAdjustmentPeriod
                    require difficultyAdjustmentPeriod
                    currentDifficultyWei = minimumDifficultyThresholdWei * difficultyAdjustmentPeriod / difficultyAdjustmentPeriod
            else:
                if totalWeiCommitted <= 4 * totalWeiExpected:
                    if totalWeiCommitted >= minimumDifficultyThresholdWei * difficultyAdjustmentPeriod:
                        totalWeiExpected = totalWeiCommitted
                        require difficultyAdjustmentPeriod
                        currentDifficultyWei = totalWeiCommitted / difficultyAdjustmentPeriod
                    else:
                        totalWeiExpected = minimumDifficultyThresholdWei * difficultyAdjustmentPeriod
                        require difficultyAdjustmentPeriod
                        currentDifficultyWei = minimumDifficultyThresholdWei * difficultyAdjustmentPeriod / difficultyAdjustmentPeriod
                else:
                    if 4 * totalWeiExpected < minimumDifficultyThresholdWei * difficultyAdjustmentPeriod:
                        totalWeiExpected = minimumDifficultyThresholdWei * difficultyAdjustmentPeriod
                        require difficultyAdjustmentPeriod
                        currentDifficultyWei = minimumDifficultyThresholdWei * difficultyAdjustmentPeriod / difficultyAdjustmentPeriod
                    else:
                        stor13.field_0 % 4 = 0
                        Mask(254, 0, stor13.field_2) = Mask(254, 0, stor13.field_0)
                        require difficultyAdjustmentPeriod
                        currentDifficultyWei = 4 * totalWeiExpected / difficultyAdjustmentPeriod
            totalWeiCommitted = 0
            lastDifficultyAdjustmentEthereumBlock = block.number
        blockData[block.number / stor7].field_0 = currentDifficultyWei
        blockData[block.number / stor7].field_256 = block.number / blockCreationRate
        blockData[block.number / stor7].field_512 = 0
        blockData[block.number / stor7].field_768 = 0
        blockData[block.number / stor7].field_1024 = 0
        blockData[block.number / stor7].field_1280 = 0
        blockData[block.number / stor7].field_1288 = 0
        blockData[block.number / stor7].field_1536 = 0
        blockData[block.number / stor7].field_1448 = 1
    require blockCreationRate
    require block.number / blockCreationRate != block.number
    require blockData[block.number / stor7].field_1448
    require not blockData[block.number / stor7].field_1280
    require blockCreationRate
    require block.number / blockCreationRate != block.number
    require not miningAttempts[block.number / stor7][address(msg.sender)].field_512
    require blockCreationRate
    miningAttempts[block.number / stor7][address(msg.sender)].field_0 = blockData[block.number / stor7].field_1024
    miningAttempts[block.number / stor7][address(msg.sender)].field_256 = msg.value
    miningAttempts[block.number / stor7][address(msg.sender)].field_512 = 1
    blockData[block.number / stor7].field_768++
    blockData[block.number / stor7].field_512 += msg.value
    totalWeiCommitted += msg.value
    blockData[block.number / stor7].field_1024 += msg.value
    emit MiningAttemptEvent(msg.value, blockData[block.number / stor7].field_512, blockData[block.number / stor7].field_0, msg.sender, block.number / blockCreationRate);
    call burnAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    stor3 = 0
    return 1
}

function checkWinning(uint256 arg1) {
    if not miningAttempts[arg1][address(msg.sender)].field_512:
        return 0
    if block.number < blockCreationRate + (arg1 * blockCreationRate):
        return 0
    if blockData[arg1].field_512 <= blockData[arg1].field_0:
        require blockData[arg1].field_0
        if 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_256 / blockData[arg1].field_0 < 10 * 10^6:
            if blockData[arg1].field_512 <= blockData[arg1].field_0:
                require blockData[arg1].field_0
                if 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_0 < 10 * 10^6:
                    require (0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_0) + (0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_256 / blockData[arg1].field_0) >= 0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_0
                    if 0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_0 >= sha3(block.hash(blockCreationRate + (blockData[arg1].field_256 * blockCreationRate))):
                        return 0
                    if (0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_0) + (0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_256 / blockData[arg1].field_0) < sha3(block.hash(blockCreationRate + (blockData[arg1].field_256 * blockCreationRate))):
                        return 0
                else:
                    require (0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_256 / blockData[arg1].field_0) - 1 >= -1
                    if -1 >= sha3(block.hash(blockCreationRate + (blockData[arg1].field_256 * blockCreationRate))):
                        return 0
                    if (0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_256 / blockData[arg1].field_0) - 1 < sha3(block.hash(blockCreationRate + (blockData[arg1].field_256 * blockCreationRate))):
                        return 0
            else:
                require blockData[arg1].field_512
                if 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_512 < 10 * 10^6:
                    require (0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_512) + (0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_256 / blockData[arg1].field_0) >= 0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_512
                    if 0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_512 >= sha3(block.hash(blockCreationRate + (blockData[arg1].field_256 * blockCreationRate))):
                        return 0
                    if (0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_512) + (0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_256 / blockData[arg1].field_0) < sha3(block.hash(blockCreationRate + (blockData[arg1].field_256 * blockCreationRate))):
                        return 0
                else:
                    require (0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_256 / blockData[arg1].field_0) - 1 >= -1
                    if -1 >= sha3(block.hash(blockCreationRate + (blockData[arg1].field_256 * blockCreationRate))):
                        return 0
                    if (0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_256 / blockData[arg1].field_0) - 1 < sha3(block.hash(blockCreationRate + (blockData[arg1].field_256 * blockCreationRate))):
                        return 0
        else:
            if blockData[arg1].field_512 <= blockData[arg1].field_0:
                require blockData[arg1].field_0
                require 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_0 < 10 * 10^6
                require (0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_0) - 1 >= 0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_0
                if 0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_0 >= sha3(block.hash(blockCreationRate + (blockData[arg1].field_256 * blockCreationRate))):
                    return 0
                if (0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_0) - 1 < sha3(block.hash(blockCreationRate + (blockData[arg1].field_256 * blockCreationRate))):
                    return 0
            else:
                require blockData[arg1].field_512
                require 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_512 < 10 * 10^6
                require (0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_512) - 1 >= 0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_512
                if 0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_512 >= sha3(block.hash(blockCreationRate + (blockData[arg1].field_256 * blockCreationRate))):
                    return 0
                if (0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_512) - 1 < sha3(block.hash(blockCreationRate + (blockData[arg1].field_256 * blockCreationRate))):
                    return 0
    else:
        require blockData[arg1].field_512
        if 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_256 / blockData[arg1].field_512 < 10 * 10^6:
            if blockData[arg1].field_512 <= blockData[arg1].field_0:
                require blockData[arg1].field_0
                if 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_0 < 10 * 10^6:
                    require (0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_0) + (0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_256 / blockData[arg1].field_512) >= 0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_0
                    if 0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_0 >= sha3(block.hash(blockCreationRate + (blockData[arg1].field_256 * blockCreationRate))):
                        return 0
                    if (0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_0) + (0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_256 / blockData[arg1].field_512) < sha3(block.hash(blockCreationRate + (blockData[arg1].field_256 * blockCreationRate))):
                        return 0
                else:
                    require (0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_256 / blockData[arg1].field_512) - 1 >= -1
                    if -1 >= sha3(block.hash(blockCreationRate + (blockData[arg1].field_256 * blockCreationRate))):
                        return 0
                    if (0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_256 / blockData[arg1].field_512) - 1 < sha3(block.hash(blockCreationRate + (blockData[arg1].field_256 * blockCreationRate))):
                        return 0
            else:
                require blockData[arg1].field_512
                if 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_512 < 10 * 10^6:
                    require (0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_512) + (0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_256 / blockData[arg1].field_512) >= 0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_512
                    if 0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_512 >= sha3(block.hash(blockCreationRate + (blockData[arg1].field_256 * blockCreationRate))):
                        return 0
                    if (0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_512) + (0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_256 / blockData[arg1].field_512) < sha3(block.hash(blockCreationRate + (blockData[arg1].field_256 * blockCreationRate))):
                        return 0
                else:
                    require (0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_256 / blockData[arg1].field_512) - 1 >= -1
                    if -1 >= sha3(block.hash(blockCreationRate + (blockData[arg1].field_256 * blockCreationRate))):
                        return 0
                    if (0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_256 / blockData[arg1].field_512) - 1 < sha3(block.hash(blockCreationRate + (blockData[arg1].field_256 * blockCreationRate))):
                        return 0
        else:
            if blockData[arg1].field_512 <= blockData[arg1].field_0:
                require blockData[arg1].field_0
                require 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_0 < 10 * 10^6
                require (0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_0) - 1 >= 0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_0
                if 0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_0 >= sha3(block.hash(blockCreationRate + (blockData[arg1].field_256 * blockCreationRate))):
                    return 0
                if (0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_0) - 1 < sha3(block.hash(blockCreationRate + (blockData[arg1].field_256 * blockCreationRate))):
                    return 0
            else:
                require blockData[arg1].field_512
                require 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_512 < 10 * 10^6
                require (0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_512) - 1 >= 0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_512
                if 0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_512 >= sha3(block.hash(blockCreationRate + (blockData[arg1].field_256 * blockCreationRate))):
                    return 0
                if (0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_512) - 1 < sha3(block.hash(blockCreationRate + (blockData[arg1].field_256 * blockCreationRate))):
                    return 0
    return 1
}

function claim(uint256 arg1, address arg2) {
    require not stor3
    stor3 = 1
    require arg1 != block.number
    require blockData[arg1].field_1448
    require not blockData[arg1].field_1280
    require arg1 != block.number
    require block.number >= blockCreationRate + (arg1 * blockCreationRate)
    require block.number < blockCreationRate + (arg1 * blockCreationRate) + 256
    require block.hash(blockCreationRate + (arg1 * blockCreationRate))
    require miningAttempts[arg1][address(msg.sender)].field_512
    require miningAttempts[arg1][address(msg.sender)].field_512
    require block.number >= blockCreationRate + (arg1 * blockCreationRate)
    if blockData[arg1].field_512 <= blockData[arg1].field_0:
        require blockData[arg1].field_0
        if 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_256 / blockData[arg1].field_0 < 10 * 10^6:
            if blockData[arg1].field_512 <= blockData[arg1].field_0:
                require blockData[arg1].field_0
                if 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_0 < 10 * 10^6:
                    require (0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_0) + (0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_256 / blockData[arg1].field_0) >= 0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_0
                    require 0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_0 < sha3(block.hash(blockCreationRate + (blockData[arg1].field_256 * blockCreationRate)))
                    require (0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_0) + (0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_256 / blockData[arg1].field_0) >= sha3(block.hash(blockCreationRate + (blockData[arg1].field_256 * blockCreationRate)))
                else:
                    require (0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_256 / blockData[arg1].field_0) - 1 >= -1
                    require -1 < sha3(block.hash(blockCreationRate + (blockData[arg1].field_256 * blockCreationRate)))
                    require (0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_256 / blockData[arg1].field_0) - 1 >= sha3(block.hash(blockCreationRate + (blockData[arg1].field_256 * blockCreationRate)))
            else:
                require blockData[arg1].field_512
                if 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_512 < 10 * 10^6:
                    require (0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_512) + (0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_256 / blockData[arg1].field_0) >= 0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_512
                    require 0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_512 < sha3(block.hash(blockCreationRate + (blockData[arg1].field_256 * blockCreationRate)))
                    require (0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_512) + (0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_256 / blockData[arg1].field_0) >= sha3(block.hash(blockCreationRate + (blockData[arg1].field_256 * blockCreationRate)))
                else:
                    require (0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_256 / blockData[arg1].field_0) - 1 >= -1
                    require -1 < sha3(block.hash(blockCreationRate + (blockData[arg1].field_256 * blockCreationRate)))
                    require (0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_256 / blockData[arg1].field_0) - 1 >= sha3(block.hash(blockCreationRate + (blockData[arg1].field_256 * blockCreationRate)))
        else:
            if blockData[arg1].field_512 <= blockData[arg1].field_0:
                require blockData[arg1].field_0
                require 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_0 < 10 * 10^6
                require (0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_0) - 1 >= 0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_0
                require 0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_0 < sha3(block.hash(blockCreationRate + (blockData[arg1].field_256 * blockCreationRate)))
                require (0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_0) - 1 >= sha3(block.hash(blockCreationRate + (blockData[arg1].field_256 * blockCreationRate)))
            else:
                require blockData[arg1].field_512
                require 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_512 < 10 * 10^6
                require (0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_512) - 1 >= 0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_512
                require 0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_512 < sha3(block.hash(blockCreationRate + (blockData[arg1].field_256 * blockCreationRate)))
                require (0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_512) - 1 >= sha3(block.hash(blockCreationRate + (blockData[arg1].field_256 * blockCreationRate)))
    else:
        require blockData[arg1].field_512
        if 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_256 / blockData[arg1].field_512 < 10 * 10^6:
            if blockData[arg1].field_512 <= blockData[arg1].field_0:
                require blockData[arg1].field_0
                if 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_0 < 10 * 10^6:
                    require (0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_0) + (0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_256 / blockData[arg1].field_512) >= 0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_0
                    require 0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_0 < sha3(block.hash(blockCreationRate + (blockData[arg1].field_256 * blockCreationRate)))
                    require (0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_0) + (0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_256 / blockData[arg1].field_512) >= sha3(block.hash(blockCreationRate + (blockData[arg1].field_256 * blockCreationRate)))
                else:
                    require (0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_256 / blockData[arg1].field_512) - 1 >= -1
                    require -1 < sha3(block.hash(blockCreationRate + (blockData[arg1].field_256 * blockCreationRate)))
                    require (0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_256 / blockData[arg1].field_512) - 1 >= sha3(block.hash(blockCreationRate + (blockData[arg1].field_256 * blockCreationRate)))
            else:
                require blockData[arg1].field_512
                if 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_512 < 10 * 10^6:
                    require (0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_512) + (0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_256 / blockData[arg1].field_512) >= 0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_512
                    require 0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_512 < sha3(block.hash(blockCreationRate + (blockData[arg1].field_256 * blockCreationRate)))
                    require (0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_512) + (0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_256 / blockData[arg1].field_512) >= sha3(block.hash(blockCreationRate + (blockData[arg1].field_256 * blockCreationRate)))
                else:
                    require (0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_256 / blockData[arg1].field_512) - 1 >= -1
                    require -1 < sha3(block.hash(blockCreationRate + (blockData[arg1].field_256 * blockCreationRate)))
                    require (0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_256 / blockData[arg1].field_512) - 1 >= sha3(block.hash(blockCreationRate + (blockData[arg1].field_256 * blockCreationRate)))
        else:
            if blockData[arg1].field_512 <= blockData[arg1].field_0:
                require blockData[arg1].field_0
                require 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_0 < 10 * 10^6
                require (0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_0) - 1 >= 0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_0
                require 0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_0 < sha3(block.hash(blockCreationRate + (blockData[arg1].field_256 * blockCreationRate)))
                require (0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_0) - 1 >= sha3(block.hash(blockCreationRate + (blockData[arg1].field_256 * blockCreationRate)))
            else:
                require blockData[arg1].field_512
                require 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_512 < 10 * 10^6
                require (0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_512) - 1 >= 0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_512
                require 0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_512 < sha3(block.hash(blockCreationRate + (blockData[arg1].field_256 * blockCreationRate)))
                require (0x1ad7f29abcaf485787a6520ec08d23699194119a5c37387b71906614310 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_0 / blockData[arg1].field_512) - 1 >= sha3(block.hash(blockCreationRate + (blockData[arg1].field_256 * blockCreationRate)))
    blockData[arg1].field_1280 = 1
    blockData[arg1].field_1288 = msg.sender
    blockData[arg1].field_1536 = 0
    totalBlocksMined++
    if totalBlocksMined + 1 < 210000:
        require miningAttempts[arg1][address(msg.sender)].field_256 <= blockData[arg1].field_512
        require miningAttempts[arg1][address(msg.sender)].field_256 > 0
        require blockData[arg1].field_512 > 0
        require blockData[arg1].field_512
        if 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_256 / blockData[arg1].field_512 < 10 * 10^6:
            require (1000 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_256 / blockData[arg1].field_512) + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
            balanceOf[address(arg2)] += 1000 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_256 / blockData[arg1].field_512
            totalSupply += 1000 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_256 / blockData[arg1].field_512
            emit BlockClaimedEvent((1000 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_256 / blockData[arg1].field_512), msg.sender, arg2, arg1);
            emit Transfer((1000 * 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_256 / blockData[arg1].field_512), this.address, arg2);
        else:
            require balanceOf[address(arg2)] + 10^10 >= balanceOf[address(arg2)]
            balanceOf[address(arg2)] += 10^10
            totalSupply += 10^10
            emit BlockClaimedEvent(10^10, msg.sender, arg2, arg1);
            emit Transfer(10^10, this.address, arg2);
    else:
        if totalBlocksMined + 1 % 210000 <= 0:
            idx = 1
            s = 10^10
            while idx < totalBlocksMined + 1 / 210000:
                idx = idx + 1
                s = s / 2
                continue 
            require miningAttempts[arg1][address(msg.sender)].field_256 <= blockData[arg1].field_512
            require miningAttempts[arg1][address(msg.sender)].field_256 > 0
            require blockData[arg1].field_512 > 0
            require blockData[arg1].field_512
            if 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_256 / blockData[arg1].field_512 < 10 * 10^6:
                require (10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_256 / blockData[arg1].field_512 * (255 * totalBlocksMined + 1 / 210000) + 9999999745 / 10 * 10^6) + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
                balanceOf[address(arg2)] += 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_256 / blockData[arg1].field_512 * (255 * totalBlocksMined + 1 / 210000) + 9999999745 / 10 * 10^6
                totalSupply += 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_256 / blockData[arg1].field_512 * (255 * totalBlocksMined + 1 / 210000) + 9999999745 / 10 * 10^6
                emit BlockClaimedEvent((10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_256 / blockData[arg1].field_512 * (255 * totalBlocksMined + 1 / 210000) + 9999999745 / 10 * 10^6), msg.sender, arg2, arg1);
                emit Transfer((10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_256 / blockData[arg1].field_512 * (255 * totalBlocksMined + 1 / 210000) + 9999999745 / 10 * 10^6), this.address, arg2);
            else:
                require (255 * totalBlocksMined + 1 / 210000) + balanceOf[address(arg2)] + 9999999745 >= balanceOf[address(arg2)]
                balanceOf[address(arg2)] = (255 * totalBlocksMined + 1 / 210000) + balanceOf[address(arg2)] + 9999999745
                totalSupply = (255 * totalBlocksMined + 1 / 210000) + totalSupply + 9999999745
                emit BlockClaimedEvent(((255 * totalBlocksMined + 1 / 210000) + 9999999745), msg.sender, arg2, arg1);
                emit Transfer(((255 * totalBlocksMined + 1 / 210000) + 9999999745), this.address, arg2);
        else:
            idx = 1
            s = 10^10
            while idx < (totalBlocksMined + 1 / 210000) + 1:
                idx = idx + 1
                s = s / 2
                continue 
            require miningAttempts[arg1][address(msg.sender)].field_256 <= blockData[arg1].field_512
            require miningAttempts[arg1][address(msg.sender)].field_256 > 0
            require blockData[arg1].field_512 > 0
            require blockData[arg1].field_512
            if 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_256 / blockData[arg1].field_512 < 10 * 10^6:
                require (10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_256 / blockData[arg1].field_512 * s / 10 * 10^6) + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
                balanceOf[address(arg2)] += 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_256 / blockData[arg1].field_512 * s / 10 * 10^6
                totalSupply += 10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_256 / blockData[arg1].field_512 * s / 10 * 10^6
                emit BlockClaimedEvent((10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_256 / blockData[arg1].field_512 * s / 10 * 10^6), msg.sender, arg2, arg1);
                emit Transfer((10 * 10^6 * miningAttempts[arg1][address(msg.sender)].field_256 / blockData[arg1].field_512 * s / 10 * 10^6), this.address, arg2);
            else:
                require s + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
                balanceOf[address(arg2)] += s
                totalSupply += s
                emit BlockClaimedEvent(s, msg.sender, arg2, arg1);
                emit Transfer(s, this.address, arg2);
    stor3 = 0
    return 1
}



}
