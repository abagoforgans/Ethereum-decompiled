contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;
uint256 stor1;
uint8 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
address stor10;

function _fallback() payable {
    uint8(stor0.field_160) = 0
    stor1 = 0
    stor2 = 0
    stor3 = 100
    stor4 = 0
    stor5 = 0
    stor6 = 100
    stor7 = 0
    stor8 = 0
    stor9 = 0
    require not msg.value
    address(stor0.field_0) = msg.sender
    stor9 = 50
    stor10 = 0x73dd069c299a5d691e9836243bcaec9c8c1d8734
    return code.data[213 len 5850]
}



// =====================  Runtime code  =====================


const current_external_block = block.number

const pool_name = ''

const divisible_units = 10 * 10^6

const get_bitcoineum_contract_address = 0x73dd069c299a5d691e9836243bcaec9c8c1d8734


uint8 stor0; offset 160
address owner;
uint8 stor1;
uint256 stor1; offset 8
uint256 pool_percentage;
uint8 stor2;
uint256 max_users;
uint256 total_users;
uint8 stor5;
uint256 stor5; offset 5
uint256 sub_6ee548fc;
uint256 contract_period;
uint256 mined_blocks;
uint256 claimed_blocks;
uint256 blockCreationRate;
address stor10;
mapping of struct users;
mapping of uint256 attempts;
mapping of uint256 balanceOf;
array of uint8 stor14;
array of address active_users;

function claimed_blocks() {
    return claimed_blocks
}

function attempts(uint256 arg1) {
    return attempts[arg1]
}

function sub_6ee548fc(?) {
    return sub_6ee548fc
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function users(address arg1) {
    return users[arg1].field_0, users[arg1].field_256
}

function blockCreationRate() {
    return blockCreationRate
}

function mined_blocks() {
    return mined_blocks
}

function max_users() {
    return max_users
}

function isPaused() {
    return bool(stor2)
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
    require arg1 < 100
    return active_users[arg1]
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function sub_25a079d9(?) {
    if total_users >= max_users:
        return (max_users - sub_6ee548fc)
    return total_users
}

function available_slots() {
    if total_users >= max_users:
        return sub_6ee548fc
    return (max_users - total_users)
}

function external_to_internal_block_number(uint256 arg1) {
    require blockCreationRate
    return (arg1 / blockCreationRate)
}

function sub_3cf7dca3(?) {
    require not stor0
    stor0 = 1
    require 0 or owner == msg.sender
    stor2 = uint8(arg1)
    stor0 = 0
}

function sub_af5070f7(?) {
    require not stor0
    stor0 = 1
    require 0 or owner == msg.sender
    require arg1 < 11
    uint8(stor1.field_0) = arg1
    Mask(248, 0, stor1.field_8) = 0
    stor0 = 0
}

function checkWinning(uint256 arg1) {
    require ext_code.size(stor10)
    call stor10.0xdda6c3ce with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function calculate_minimum_contribution() {
    require ext_code.size(stor10)
    call stor10.currentDifficultyWei() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return (ext_call.return_data[0] / 10 * 10^6 * contract_period)
}

function checkMiningAttempt(uint256 arg1, address arg2) {
    require ext_code.size(stor10)
    call stor10.0x88537daf with:
         gas gas_remaining - 710 wei
        args arg1, arg2
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function find_contribution(address arg1) {
    if users[address(arg1)].field_0 <= 0:
        return 0
    if users[address(arg1)].field_0 <= mined_blocks:
        return users[address(arg1)].field_0, users[address(arg1)].field_256, users[address(arg1)].field_256 * contract_period, 0
    return users[address(arg1)].field_0, 
           users[address(arg1)].field_256,
           users[address(arg1)].field_256 * contract_period,
           (users[address(arg1)].field_0 * users[address(arg1)].field_256) - (mined_blocks * users[address(arg1)].field_256)
}

function redeem() {
    require not stor0
    stor0 = 1
    if balanceOf[address(msg.sender)] > 0:
        require ext_code.size(stor10)
        if balanceOf[address(msg.sender)] / 100 * pool_percentage > 0:
            call stor10.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args owner, balanceOf[address(msg.sender)] / 100 * pool_percentage
            require ext_call.success
        call stor10.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] / 100 * pool_percentage)
        require ext_call.success
        balanceOf[address(msg.sender)] = 0
    stor0 = 0
}

function sub_4ecd78d1(?) {
    mem[64] = 160
    require blockCreationRate
    require ext_code.size(stor10)
    call stor10.0x88537daf with:
         gas gas_remaining - 710 wei
        args block.number / blockCreationRate, this.address
    require ext_call.success
    require not ext_call.return_data[0]
    s = 96
    t = 0
    idx = 0
    while uint8(idx) < total_users:
        require uint8(idx) < 100
        if not active_users[uint8(idx)]:
            s = s
            t = active_users[uint8(idx)]
            idx = idx + 1
            continue 
        mem[0] = active_users[uint8(idx)]
        mem[32] = 11
        _16 = mem[64]
        mem[64] = mem[64] + 64
        mem[_16] = users[stor18[uint8(idx)]].field_0
        mem[_16 + 32] = users[stor18[uint8(idx)]].field_256
        s = _16
        t = active_users[uint8(idx)]
        idx = idx + 1
        continue 
    return 0
}

function _fallback() payable {
    require not stor2
    require ext_code.size(stor10)
    call stor10.currentDifficultyWei() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require msg.value >= ext_call.return_data[0] / 10 * 10^6 * contract_period
    require contract_period
    if users[address(msg.sender)].field_0 <= 0:
        users[address(msg.sender)].field_256 = msg.value / contract_period
        if total_users < max_users:
            require total_users < 100
            active_users[stor4] = msg.sender
            total_users++
        else:
            require sub_6ee548fc >= 1
            sub_6ee548fc--
            require sub_6ee548fc - 1 < 100
            require uint8(stor14[uint8(uint256(stor5.field_0) - 1)]) < 100
            active_users[uint8(stor14[uint8(uint256(stor5.field_0) - 1)])] = msg.sender
            require sub_6ee548fc < 100
            uint256(stor14[Mask(251, 0, stor5.field_5)]) = !(255 * 256^stor5.field_0 % 32) and uint256(stor14[Mask(251, 0, stor5.field_5)])
    else:
        if users[address(msg.sender)].field_0 <= mined_blocks:
            users[address(msg.sender)].field_256 = msg.value / contract_period
        else:
            users[address(msg.sender)].field_256 = (users[address(msg.sender)].field_0 * users[address(msg.sender)].field_256) - (mined_blocks * users[address(msg.sender)].field_256) + msg.value / contract_period
        if balanceOf[address(msg.sender)] > 0:
            require ext_code.size(stor10)
            if balanceOf[address(msg.sender)] / 100 * pool_percentage > 0:
                call stor10.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args owner, balanceOf[address(msg.sender)] / 100 * pool_percentage
                require ext_call.success
            call stor10.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] / 100 * pool_percentage)
            require ext_call.success
            balanceOf[address(msg.sender)] = 0
    users[address(msg.sender)].field_0 = mined_blocks + contract_period
}

function mine() {
    mem[64] = 160
    require not stor0
    stor0 = 1
    require blockCreationRate
    require ext_code.size(stor10)
    call stor10.0x88537daf with:
         gas gas_remaining - 710 wei
        args block.number / blockCreationRate, this.address
    require ext_call.success
    require not ext_call.return_data[0]
    s = 96
    t = 0
    idx = 0
    t = 0
    while uint8(idx) < total_users:
        require uint8(idx) < 100
        if not active_users[uint8(idx)]:
            s = s
            t = active_users[uint8(idx)]
            idx = idx + 1
            t = t
            continue 
        mem[0] = active_users[uint8(idx)]
        mem[32] = 11
        _26 = mem[64]
        mem[64] = mem[64] + 64
        mem[_26] = users[stor18[uint8(idx)]].field_0
        mem[_26 + 32] = users[stor18[uint8(idx)]].field_256
        if users[stor18[uint8(idx)]].field_0 > mined_blocks:
            s = _26
            t = active_users[uint8(idx)]
            idx = idx + 1
            t = t
            continue 
        if uint8(t) >= 10:
            s = _26
            t = active_users[uint8(idx)]
            idx = idx + 1
            t = t
            continue 
        require sub_6ee548fc < 100
        uint256(stor14[Mask(251, 0, stor5.field_5)]) = uint8(idx) * 256^stor5.field_0 % 32 or !(255 * 256^stor5.field_0 % 32) and uint256(stor14[Mask(251, 0, stor5.field_5)])
        require uint8(idx) < 100
        mem[0] = active_users[uint8(idx)]
        mem[32] = 11
        users[stor18[uint8(idx)]].field_0 = 0
        users[stor18[uint8(idx)]].field_256 = 0
        active_users[uint8(idx)] = 0
        sub_6ee548fc++
        s = _26
        t = active_users[uint8(idx)]
        idx = idx + 1
        t = t + 1
        continue 
    require ext_code.size(stor10)
    call stor10.currentDifficultyWei() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if 0 > ext_call.return_data[0] / 10 * 10^6 * contract_period:
        attempts[block.number / stor9] = 0
        require ext_code.size(stor10)
        call stor10.0x99f4b251 with:
             gas gas_remaining - 9710 wei
        require ext_call.success
        mined_blocks++
    stor0 = 0
}

function claim(uint256 arg1, address arg2) {
    require not stor0
    stor0 = 1
    require ext_code.size(stor10)
    call stor10.0xdda6c3ce with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(stor10)
    call stor10.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(stor10)
    call stor10.0xddd5e1b2 with:
         gas gas_remaining - 710 wei
        args arg1, this.address
    require ext_call.success
    require ext_code.size(stor10)
    call stor10.0x70a08231 with:
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
        require uint8(idx) < 100
        if not active_users[uint8(idx)]:
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
        mem[32] = 13
        if (ext_call.return_data[0] * 10 * 10^6 * users[stor18[uint8(idx)]].field_256 / attempts[arg1]) - (ext_call.return_data[0] * 10 * 10^6 * users[stor18[uint8(idx)]].field_256 / attempts[arg1]) / 10 * 10^6 <= v:
            balanceOf[stor18[uint8(idx)]] += (ext_call.return_data[0] * 10 * 10^6 * users[stor18[uint8(idx)]].field_256 / attempts[arg1]) - (ext_call.return_data[0] * 10 * 10^6 * users[stor18[uint8(idx)]].field_256 / attempts[arg1]) / 10 * 10^6
            s = (ext_call.return_data[0] * 10 * 10^6 * users[stor18[uint8(idx)]].field_256 / attempts[arg1]) - (ext_call.return_data[0] * 10 * 10^6 * users[stor18[uint8(idx)]].field_256 / attempts[arg1]) / 10 * 10^6
            t = 10 * 10^6 * users[stor18[uint8(idx)]].field_256 / attempts[arg1]
            u = users[stor18[uint8(idx)]].field_256
            v = active_users[uint8(idx)]
            idx = idx + 1
            v = v - ((ext_call.return_data[0] * 10 * 10^6 * users[stor18[uint8(idx)]].field_256 / attempts[arg1]) - (ext_call.return_data[0] * 10 * 10^6 * users[stor18[uint8(idx)]].field_256 / attempts[arg1]) / 10 * 10^6)
            continue 
        balanceOf[stor18[uint8(idx)]] += v
        s = v
        t = 10 * 10^6 * users[stor18[uint8(idx)]].field_256 / attempts[arg1]
        u = users[stor18[uint8(idx)]].field_256
        v = active_users[uint8(idx)]
        idx = idx + 1
        v = 0
        continue 
    claimed_blocks++
    stor0 = 0
    return 0
}



}
