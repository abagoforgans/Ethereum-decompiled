contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
address stor5;
uint256 stor8;
uint256 stor9;
uint8 stor10;
uint256 stor11;

function _fallback() payable {
    uint8(stor0.field_160) = 0
    stor1 = 100
    stor2 = 0
    stor3 = 0
    stor4 = 10^9
    stor8 = 0
    stor9 = 10
    stor10 = 0
    stor11 = 10000 * 10^18
    require not msg.value
    address(stor0.field_0) = msg.sender
    stor3 = 50
    stor5 = 0x73dd069c299a5d691e9836243bcaec9c8c1d8734
    return code.data[220 len 6179]
}



// =====================  Runtime code  =====================


const current_external_block = block.number

const pool_name = 'ed'

const divisible_units = 10 * 10^6

const sub_ac70663b(?) = ''

const get_bitcoineum_contract_address = 0x73dd069c299a5d691e9836243bcaec9c8c1d8734


uint8 stor0; offset 160
address owner;
uint256 contract_period;
uint256 sub_8efd5bf0;
uint256 blockCreationRate;
uint256 sub_79325b88;
address stor5;
mapping of struct users;
mapping of struct sub_c097a457;
uint8 stor8;
uint256 stor8; offset 8
uint256 pool_percentage;
uint256 sub_e8125513;
uint8 stor10;
uint256 max_bet;

function max_bet() {
    return max_bet
}

function sub_79325b88(?) {
    return sub_79325b88
}

function owner() {
    return owner
}

function sub_8efd5bf0(?) {
    return sub_8efd5bf0
}

function users(address arg1) {
    return users[arg1].field_0, 
           users[arg1].field_256,
           users[arg1].field_512,
           users[arg1].field_768,
           bool(users[arg1].field_1024),
           bool(users[arg1].field_1032)
}

function blockCreationRate() {
    return blockCreationRate
}

function isPaused() {
    return bool(stor10)
}

function sub_c097a457(?) {
    return sub_c097a457[arg1].field_0, 
           sub_c097a457[arg1].field_256,
           sub_c097a457[arg1].field_512,
           sub_c097a457[arg1].field_1024,
           sub_c097a457[arg1].field_768,
           sub_c097a457[arg1].field_1280
}

function epochs(uint256 arg1) {
    return sub_c097a457[arg1].field_0, 
           sub_c097a457[arg1].field_256,
           sub_c097a457[arg1].field_512,
           sub_c097a457[arg1].field_768,
           sub_c097a457[arg1].field_1024,
           sub_c097a457[arg1].field_1280,
           bool(sub_c097a457[arg1].field_1536)
}

function contract_period() {
    return contract_period
}

function pool_percentage() {
    return pool_percentage
}

function sub_e8125513(?) {
    return sub_e8125513
}

function sub_719a5b62(?) {
    require contract_period
    return (arg1 / contract_period)
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function external_to_internal_block_number(uint256 arg1) {
    require blockCreationRate
    return (arg1 / blockCreationRate)
}

function sub_166050b7(?) {
    require not stor0
    stor0 = 1
    require 0 or owner == msg.sender
    max_bet = arg1
    stor0 = 0
}

function sub_3cf7dca3(?) {
    require not stor0
    stor0 = 1
    require 0 or owner == msg.sender
    stor10 = uint8(arg1)
    stor0 = 0
}

function sub_6331de56(?) {
    require blockCreationRate
    require contract_period
    return (arg1 / blockCreationRate / contract_period)
}

function sub_9372b4e4(?) {
    require blockCreationRate
    require contract_period
    return (block.number / blockCreationRate / contract_period)
}

function sub_af5070f7(?) {
    require not stor0
    stor0 = 1
    require 0 or owner == msg.sender
    require arg1 < sub_e8125513
    uint8(stor8.field_0) = arg1
    Mask(248, 0, stor8.field_8) = 0
    stor0 = 0
}

function checkWinning(uint256 arg1) {
    require ext_code.size(stor5)
    call stor5.0xdda6c3ce with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function calculate_minimum_contribution() {
    require ext_code.size(stor5)
    call stor5.currentDifficultyWei() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return (ext_call.return_data[0] / 10 * 10^6 * contract_period)
}

function checkMiningAttempt(uint256 arg1, address arg2) {
    require ext_code.size(stor5)
    call stor5.0x88537daf with:
         gas gas_remaining - 710 wei
        args arg1, arg2
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function sub_05918ba5(?) {
    require blockCreationRate
    if (block.number / blockCreationRate) - (arg1 * contract_period) <= contract_period:
        return (contract_period - (block.number / blockCreationRate) + (arg1 * contract_period))
    else:
        return 0
}

function find_contribution(address arg1) {
    if not users[address(arg1)].field_1024:
        return 0
    return users[address(arg1)].field_0, 
           users[address(arg1)].field_512,
           users[address(arg1)].field_256,
           users[address(arg1)].field_768
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

function balanceOf(address arg1) {
    if not users[address(arg1)].field_1024:
        return 0
    if users[address(arg1)].field_1032:
        return 0
    require users[address(arg1)].field_256 <= sub_c097a457[stor6[address(arg1)].field_0].field_512
    require users[address(arg1)].field_256 > 0
    require sub_c097a457[stor6[address(arg1)].field_0].field_512 > 0
    require sub_c097a457[stor6[address(arg1)].field_0].field_512
    if 10 * 10^6 * users[address(arg1)].field_256 / sub_c097a457[stor6[address(arg1)].field_0].field_512 < 10 * 10^6:
        return (10 * 10^6 * users[address(arg1)].field_256 / sub_c097a457[stor6[address(arg1)].field_0].field_512 * sub_c097a457[stor6[address(arg1)].field_0].field_768 / 10 * 10^6)
    return sub_c097a457[stor6[address(arg1)].field_0].field_768
}

function claim(uint256 arg1, address arg2) {
    require not stor0
    stor0 = 1
    require ext_code.size(stor5)
    call stor5.0xdda6c3ce with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(stor5)
    call stor5.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(stor5)
    call stor5.0xddd5e1b2 with:
         gas gas_remaining - 710 wei
        args arg1, this.address
    require ext_call.success
    require ext_code.size(stor5)
    call stor5.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require contract_period
    sub_c097a457[arg1 / stor1].field_256++
    stor0 = 0
    return 0
}

function mine() {
    require not stor0
    stor0 = 1
    require blockCreationRate
    require ext_code.size(stor5)
    call stor5.0x88537daf with:
         gas gas_remaining - 710 wei
        args block.number / blockCreationRate, this.address
    require ext_call.success
    require not ext_call.return_data[0]
    require blockCreationRate
    require contract_period
    if sub_c097a457[block.number / stor3 / stor1].field_1280 > 0:
        sub_c097a457[block.number / stor3 / stor1].field_1024 += sub_c097a457[block.number / stor3 / stor1].field_1280
        require ext_code.size(stor5)
        call stor5.0x99f4b251 with:
           value sub_c097a457[block.number / stor3 / stor1].field_1280 wei
             gas gas_remaining - 9710 wei
        require ext_call.success
        sub_c097a457[block.number / stor3 / stor1].field_0++
    sub_79325b88 = block.number / blockCreationRate
    stor0 = 0
}

function redeem() {
    require not stor0
    stor0 = 1
    require blockCreationRate
    require contract_period
    if users[address(msg.sender)].field_0 < block.number / blockCreationRate / contract_period:
        require blockCreationRate
        if (block.number / blockCreationRate) - contract_period - (users[address(msg.sender)].field_0 * contract_period) > contract_period:
            require not users[address(msg.sender)].field_1032
            require users[address(msg.sender)].field_256 <= sub_c097a457[stor6[address(msg.sender)].field_0].field_512
            require users[address(msg.sender)].field_256 > 0
            require sub_c097a457[stor6[address(msg.sender)].field_0].field_512 > 0
            require sub_c097a457[stor6[address(msg.sender)].field_0].field_512
            if 10 * 10^6 * users[address(msg.sender)].field_256 / sub_c097a457[stor6[address(msg.sender)].field_0].field_512 < 10 * 10^6:
                users[address(msg.sender)].field_768 += 10 * 10^6 * users[address(msg.sender)].field_256 / sub_c097a457[stor6[address(msg.sender)].field_0].field_512 * sub_c097a457[stor6[address(msg.sender)].field_0].field_768 / 10 * 10^6
            else:
                users[address(msg.sender)].field_768 += sub_c097a457[stor6[address(msg.sender)].field_0].field_768
            if users[address(msg.sender)].field_768 > 0:
                require ext_code.size(stor5)
                if users[address(msg.sender)].field_768 / 100 * pool_percentage > 0:
                    call stor5.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args owner, users[address(msg.sender)].field_768 / 100 * pool_percentage
                    require ext_call.success
                call stor5.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, users[address(msg.sender)].field_768 - (users[address(msg.sender)].field_768 / 100 * pool_percentage)
                require ext_call.success
                users[address(msg.sender)].field_768 = 0
                users[address(msg.sender)].field_1032 = 1
        else:
            if (2 * contract_period) - (block.number / blockCreationRate) + (users[address(msg.sender)].field_0 * contract_period) < 98:
                require not users[address(msg.sender)].field_1032
                require users[address(msg.sender)].field_256 <= sub_c097a457[stor6[address(msg.sender)].field_0].field_512
                require users[address(msg.sender)].field_256 > 0
                require sub_c097a457[stor6[address(msg.sender)].field_0].field_512 > 0
                require sub_c097a457[stor6[address(msg.sender)].field_0].field_512
                if 10 * 10^6 * users[address(msg.sender)].field_256 / sub_c097a457[stor6[address(msg.sender)].field_0].field_512 < 10 * 10^6:
                    users[address(msg.sender)].field_768 += 10 * 10^6 * users[address(msg.sender)].field_256 / sub_c097a457[stor6[address(msg.sender)].field_0].field_512 * sub_c097a457[stor6[address(msg.sender)].field_0].field_768 / 10 * 10^6
                else:
                    users[address(msg.sender)].field_768 += sub_c097a457[stor6[address(msg.sender)].field_0].field_768
                if users[address(msg.sender)].field_768 > 0:
                    require ext_code.size(stor5)
                    if users[address(msg.sender)].field_768 / 100 * pool_percentage > 0:
                        call stor5.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args owner, users[address(msg.sender)].field_768 / 100 * pool_percentage
                        require ext_call.success
                    call stor5.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, users[address(msg.sender)].field_768 - (users[address(msg.sender)].field_768 / 100 * pool_percentage)
                    require ext_call.success
                    users[address(msg.sender)].field_768 = 0
                    users[address(msg.sender)].field_1032 = 1
    stor0 = 0
}

function _fallback() payable {
    require ext_code.size(stor5)
    call stor5.currentDifficultyWei() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require msg.value >= ext_call.return_data[0] / 10 * 10^6 * contract_period
    require msg.value <= max_bet
    require not stor10
    require blockCreationRate
    require contract_period
    if users[address(msg.sender)].field_1024:
        require users[address(msg.sender)].field_0 < block.number / blockCreationRate / contract_period
        require blockCreationRate
        if (block.number / blockCreationRate) - contract_period - (users[address(msg.sender)].field_0 * contract_period) <= contract_period:
            require (2 * contract_period) - (block.number / blockCreationRate) + (users[address(msg.sender)].field_0 * contract_period) < 98
        require users[address(msg.sender)].field_256 <= sub_c097a457[stor6[address(msg.sender)].field_0].field_512
        require users[address(msg.sender)].field_256 > 0
        require sub_c097a457[stor6[address(msg.sender)].field_0].field_512 > 0
        require sub_c097a457[stor6[address(msg.sender)].field_0].field_512
        if 10 * 10^6 * users[address(msg.sender)].field_256 / sub_c097a457[stor6[address(msg.sender)].field_0].field_512 < 10 * 10^6:
            users[address(msg.sender)].field_768 += 10 * 10^6 * users[address(msg.sender)].field_256 / sub_c097a457[stor6[address(msg.sender)].field_0].field_512 * sub_c097a457[stor6[address(msg.sender)].field_0].field_768 / 10 * 10^6
        else:
            users[address(msg.sender)].field_768 += sub_c097a457[stor6[address(msg.sender)].field_0].field_768
        if users[address(msg.sender)].field_768 > 0:
            require ext_code.size(stor5)
            if users[address(msg.sender)].field_768 / 100 * pool_percentage > 0:
                call stor5.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args owner, users[address(msg.sender)].field_768 / 100 * pool_percentage
                require ext_call.success
            call stor5.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, users[address(msg.sender)].field_768 - (users[address(msg.sender)].field_768 / 100 * pool_percentage)
            require ext_call.success
            users[address(msg.sender)].field_768 = 0
            users[address(msg.sender)].field_1032 = 1
    require blockCreationRate
    users[address(msg.sender)].field_0 = block.number / blockCreationRate / contract_period
    require blockCreationRate
    require (block.number / blockCreationRate) - (block.number / blockCreationRate / contract_period * contract_period) <= contract_period
    if block.number / blockCreationRate != sub_79325b88:
        require contract_period - (block.number / blockCreationRate) + (block.number / blockCreationRate / contract_period * contract_period)
        users[address(msg.sender)].field_256 = (contract_period * msg.value / contract_period - (block.number / blockCreationRate) + (block.number / blockCreationRate / contract_period * contract_period)) - (block.number / blockCreationRate * msg.value / contract_period - (block.number / blockCreationRate) + (block.number / blockCreationRate / contract_period * contract_period)) + (block.number / blockCreationRate / contract_period * contract_period * msg.value / contract_period - (block.number / blockCreationRate) + (block.number / blockCreationRate / contract_period * contract_period))
        users[address(msg.sender)].field_512 = msg.value / contract_period - (block.number / blockCreationRate) + (block.number / blockCreationRate / contract_period * contract_period)
    else:
        if contract_period - (block.number / blockCreationRate) + (block.number / blockCreationRate / contract_period * contract_period) <= 0:
            require contract_period - (block.number / blockCreationRate) + (block.number / blockCreationRate / contract_period * contract_period)
            users[address(msg.sender)].field_256 = (contract_period * msg.value / contract_period - (block.number / blockCreationRate) + (block.number / blockCreationRate / contract_period * contract_period)) - (block.number / blockCreationRate * msg.value / contract_period - (block.number / blockCreationRate) + (block.number / blockCreationRate / contract_period * contract_period)) + (block.number / blockCreationRate / contract_period * contract_period * msg.value / contract_period - (block.number / blockCreationRate) + (block.number / blockCreationRate / contract_period * contract_period))
            users[address(msg.sender)].field_512 = msg.value / contract_period - (block.number / blockCreationRate) + (block.number / blockCreationRate / contract_period * contract_period)
        else:
            require contract_period + -(block.number / blockCreationRate) + (block.number / blockCreationRate / contract_period * contract_period) - 1
            users[address(msg.sender)].field_256 = -(msg.value / contract_period + -(block.number / blockCreationRate) + (block.number / blockCreationRate / contract_period * contract_period) - 1) + (contract_period * msg.value / contract_period + -(block.number / blockCreationRate) + (block.number / blockCreationRate / contract_period * contract_period) - 1) - (block.number / blockCreationRate * msg.value / contract_period + -(block.number / blockCreationRate) + (block.number / blockCreationRate / contract_period * contract_period) - 1) + (block.number / blockCreationRate / contract_period * contract_period * msg.value / contract_period + -(block.number / blockCreationRate) + (block.number / blockCreationRate / contract_period * contract_period) - 1)
            users[address(msg.sender)].field_512 = msg.value / contract_period + -(block.number / blockCreationRate) + (block.number / blockCreationRate / contract_period * contract_period) - 1
    users[address(msg.sender)].field_1024 = 1
    users[address(msg.sender)].field_1032 = 0
    users[address(msg.sender)].field_1280 = 0
    sub_c097a457[block.number / stor3 / stor1].field_512 += users[address(msg.sender)].field_256
    sub_c097a457[block.number / stor3 / stor1].field_1280 += users[address(msg.sender)].field_512
}



}
