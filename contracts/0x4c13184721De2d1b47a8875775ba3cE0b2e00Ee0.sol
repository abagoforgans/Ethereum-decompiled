contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
address stor7;

function _fallback() payable {
    uint8(stor0.field_160) = 0
    stor1 = 5
    stor2 = 0
    stor3 = 100
    stor4 = 1
    stor5 = 1
    stor6 = 0
    require not msg.value
    address(stor0.field_0) = msg.sender
    stor6 = 50
    stor7 = 0x73dd069c299a5d691e9836243bcaec9c8c1d8734
    return code.data[192 len 5300]
}



// =====================  Runtime code  =====================


const current_external_block = block.number

const pool_name = ''

const divisible_units = 10 * 10^6

const max_users = 100

const get_bitcoineum_contract_address = 0x73dd069c299a5d691e9836243bcaec9c8c1d8734


uint8 stor0; offset 160
address owner;
uint8 stor1;
uint256 stor1; offset 8
uint256 pool_percentage;
mapping of uint256 balanceOf;
array of uint256 stor11;
array of address active_users;
uint256 total_users;
uint256 contract_period;
uint256 mined_blocks;
uint256 claimed_blocks;
uint256 blockCreationRate;
address stor7;
mapping of struct users;
mapping of uint256 attempts;

function claimed_blocks() {
    return claimed_blocks
}

function attempts(uint256 arg1) {
    return attempts[arg1]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function users(address arg1) {
    return users[arg1].field_0, users[arg1].field_256, users[arg1].field_512
}

function blockCreationRate() {
    return blockCreationRate
}

function mined_blocks() {
    return mined_blocks
}

function contract_period() {
    return contract_period
}

function pool_percentage() {
    return pool_percentage
}

function total_users() {
    return total_users
}

function active_users(uint256 arg1) {
    require arg1 < 256
    return active_users[arg1]
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function available_slots() {
    if total_users >= 100:
        return stor11.length
    return (-total_users + 100)
}

function external_to_internal_block_number(uint256 arg1) {
    require blockCreationRate
    return (arg1 / blockCreationRate)
}

function set_pool_percentage(uint8 arg1) {
    require not stor0
    stor0 = 1
    require 0 or owner == msg.sender
    require arg1 < 11
    uint8(stor1.field_0) = arg1
    Mask(248, 0, stor1.field_8) = 0
    stor0 = 0
}

function checkWinning(uint256 arg1) {
    require ext_code.size(stor7)
    call stor7.0xdda6c3ce with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function calculate_minimum_contribution() {
    require ext_code.size(stor7)
    call stor7.currentDifficultyWei() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return (ext_call.return_data[0] / 10 * 10^6 * contract_period)
}

function checkMiningAttempt(uint256 arg1, address arg2) {
    require ext_code.size(stor7)
    call stor7.0x88537daf with:
         gas gas_remaining - 710 wei
        args arg1, arg2
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function find_contribution(address arg1) {
    if users[address(arg1)].field_0 <= 0:
        return 0
    if users[address(arg1)].field_256 <= mined_blocks:
        return users[address(arg1)].field_0, 
               users[address(arg1)].field_256,
               users[address(arg1)].field_512,
               users[address(arg1)].field_512 * contract_period,
               0
    return users[address(arg1)].field_0, 
           users[address(arg1)].field_256,
           users[address(arg1)].field_512,
           users[address(arg1)].field_512 * contract_period,
           (users[address(arg1)].field_256 * users[address(arg1)].field_512) - (mined_blocks * users[address(arg1)].field_512)
}

function redeem() {
    require not stor0
    stor0 = 1
    if balanceOf[address(msg.sender)] > 0:
        require ext_code.size(stor7)
        if balanceOf[address(msg.sender)] / 100 * pool_percentage > 0:
            call stor7.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args owner, balanceOf[address(msg.sender)] / 100 * pool_percentage
            require ext_call.success
        call stor7.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] / 100 * pool_percentage)
        require ext_call.success
        balanceOf[address(msg.sender)] = 0
    stor0 = 0
}

function mine() {
    mem[64] = 192
    require not stor0
    stor0 = 1
    require blockCreationRate
    require ext_code.size(stor7)
    call stor7.0x88537daf with:
         gas gas_remaining - 710 wei
        args block.number / blockCreationRate, this.address
    require ext_call.success
    require not ext_call.return_data[0]
    s = 96
    t = 0
    idx = 0
    t = 0
    while uint8(idx) < total_users:
        require uint8(idx) < 256
        if active_users[uint8(idx)] <= 0:
            s = s
            t = active_users[uint8(idx)]
            idx = idx + 1
            t = t
            continue 
        mem[0] = active_users[uint8(idx)]
        mem[32] = 8
        _17 = mem[64]
        mem[64] = mem[64] + 96
        mem[_17] = users[stor12[uint8(idx)]].field_0
        mem[_17 + 32] = users[stor12[uint8(idx)]].field_256
        mem[_17 + 64] = users[stor12[uint8(idx)]].field_512
        if users[stor12[uint8(idx)]].field_256 > mined_blocks:
            s = _17
            t = active_users[uint8(idx)]
            idx = idx + 1
            t = t
            continue 
        if uint8(t) >= 10:
            s = _17
            t = active_users[uint8(idx)]
            idx = idx + 1
            t = t
            continue 
        require uint8(idx) < 256
        active_users[uint8(idx)] = 0
        stor11.length++
        if not stor11.length <= stor11.length + 1:
            s = sha3(11) + (stor11.length + 32 / 32)
            while sha3(11) + (stor11.length + 31 / 32) > s:
                stor[s] = 0
                s = s + 1
                continue 
        stor11[Mask(251, 0, stor11.length.field_5)].field_0 = stor11[Mask(251, 0, stor11.length.field_5)].field_0 and !(255 * 256^stor11.length % 32) or 256^stor11.length % 32 * uint8(idx)
        require uint8(idx) < 256
        mem[0] = active_users[uint8(idx)]
        mem[32] = 8
        users[stor12[uint8(idx)]].field_0 = 0
        users[stor12[uint8(idx)]].field_256 = 0
        users[stor12[uint8(idx)]].field_512 = 0
        s = _17
        t = active_users[uint8(idx)]
        idx = idx + 1
        t = t + 1
        continue 
    stor0 = 0
}

function _fallback() payable {
    require ext_code.size(stor7)
    call stor7.currentDifficultyWei() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require msg.value >= ext_call.return_data[0] / 10 * 10^6 * contract_period
    require contract_period
    if users[address(msg.sender)].field_0 <= 0:
        users[address(msg.sender)].field_512 = msg.value / contract_period
        if total_users < 100:
            active_users[stor2] = msg.sender
            total_users++
        else:
            require stor11.length
            require stor11.length - 1 < stor11.length
            require stor('array', ('div', 0.03125, ('add', -1, ('stor', 256, 0, ('length', ('name', 'stor11', 11))))), ('name', 'stor11', 11))[uint8(stor11.length - 1)] < 256
            active_users[stor('array', ('div', 0.03125, ('add', -1, ('stor', 256, 0, ('length', ('name', 'stor11', 11))))), ('name', 'stor11', 11))[uint8(stor11.length - 1)]] = msg.sender
            require stor11.length - 1 < stor11.length
            stor11[0.03125 / stor11.length - 1].field_0 = !(255 * 256^(stor11.length - 1 % 32)) and stor11[0.03125 / stor11.length - 1].field_0
    else:
        if users[address(msg.sender)].field_256 <= mined_blocks:
            users[address(msg.sender)].field_512 = msg.value / contract_period
        else:
            users[address(msg.sender)].field_512 = (users[address(msg.sender)].field_256 * users[address(msg.sender)].field_512) - (mined_blocks * users[address(msg.sender)].field_512) + msg.value / contract_period
        if balanceOf[address(msg.sender)] > 0:
            require ext_code.size(stor7)
            if balanceOf[address(msg.sender)] / 100 * pool_percentage > 0:
                call stor7.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args owner, balanceOf[address(msg.sender)] / 100 * pool_percentage
                require ext_call.success
            call stor7.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] / 100 * pool_percentage)
            require ext_call.success
            balanceOf[address(msg.sender)] = 0
    users[address(msg.sender)].field_0 = mined_blocks
    users[address(msg.sender)].field_256 = contract_period + mined_blocks
}

function claim(uint256 arg1, address arg2) {
    require not stor0
    stor0 = 1
    require ext_code.size(stor7)
    call stor7.0xdda6c3ce with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(stor7)
    call stor7.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(stor7)
    call stor7.0xddd5e1b2 with:
         gas gas_remaining - 710 wei
        args arg1, this.address
    require ext_call.success
    require ext_code.size(stor7)
    call stor7.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    s = 0
    t = 0
    u = 0
    v = 0
    idx = 0
    v = 0
    while uint8(idx) < total_users:
        require uint8(idx) < 256
        if active_users[uint8(idx)] <= 0:
            s = s
            t = t
            u = u
            v = active_users[uint8(idx)]
            idx = idx + 1
            v = v
            continue 
        if not v:
            s = s
            t = t
            u = u
            v = active_users[uint8(idx)]
            idx = idx + 1
            v = v
            continue 
        require attempts[arg1]
        mem[0] = active_users[uint8(idx)]
        mem[32] = 10
        if (ext_call.return_data[0] * 10 * 10^6 * users[stor12[uint8(idx)]].field_512 / attempts[arg1]) - (ext_call.return_data[0] * 10 * 10^6 * users[stor12[uint8(idx)]].field_512 / attempts[arg1]) / 10 * 10^6 <= v:
            balanceOf[stor12[uint8(idx)]] += (ext_call.return_data[0] * 10 * 10^6 * users[stor12[uint8(idx)]].field_512 / attempts[arg1]) - (ext_call.return_data[0] * 10 * 10^6 * users[stor12[uint8(idx)]].field_512 / attempts[arg1]) / 10 * 10^6
            s = (ext_call.return_data[0] * 10 * 10^6 * users[stor12[uint8(idx)]].field_512 / attempts[arg1]) - (ext_call.return_data[0] * 10 * 10^6 * users[stor12[uint8(idx)]].field_512 / attempts[arg1]) / 10 * 10^6
            t = 10 * 10^6 * users[stor12[uint8(idx)]].field_512 / attempts[arg1]
            u = users[stor12[uint8(idx)]].field_512
            v = active_users[uint8(idx)]
            idx = idx + 1
            v = v - ((ext_call.return_data[0] * 10 * 10^6 * users[stor12[uint8(idx)]].field_512 / attempts[arg1]) - (ext_call.return_data[0] * 10 * 10^6 * users[stor12[uint8(idx)]].field_512 / attempts[arg1]) / 10 * 10^6)
            continue 
        balanceOf[stor12[uint8(idx)]] += v
        s = v
        t = 10 * 10^6 * users[stor12[uint8(idx)]].field_512 / attempts[arg1]
        u = users[stor12[uint8(idx)]].field_512
        v = active_users[uint8(idx)]
        idx = idx + 1
        v = 0
        continue 
    claimed_blocks++
    stor0 = 0
    return 0
}



}
