contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor3;
uint8 stor4;
uint256 stor4; offset 8
array of address stor7;
address stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;

function _fallback() payable {
    stor3 = 6
    uint8(stor4.field_0) = 1
    Mask(248, 0, stor4.field_8) = 1
    stor10 = 21 * 10^12
    stor11 = 0
    stor12 = 0
    stor13 = 0
    stor14 = 0
    stor15 = 0
    stor16 = 0
    stor17 = 0
    require not msg.value
    stor0 = stor10
    stor7.length++
    if not stor7.length <= stor7.length + 1:
        idx = stor7.length + 1
        while stor7.length > idx:
            uint256(stor7[idx]) = 0
            idx = idx + 1
            continue 
    address(stor7[stor7.length]) = msg.sender
    require 0 < stor7.length
    idx = 0
    while address(stor7[idx]) != msg.sender:
        require idx + 1 < stor7.length
        mem[0] = 7
        idx = idx + 1
        continue 
    stor9 = msg.sender
    require 0 < stor7.length
    idx = 0
    while address(stor7[idx]) != msg.sender:
        require idx + 1 < stor7.length
        mem[0] = 7
        idx = idx + 1
        continue 
    stor11 = 300 * 10^6
    return code.data[783 len 12526]
}



// =====================  Runtime code  =====================


const get_my_info = Array(len=4, data=mem[416 len 128])

const get_this_balance = eth.balance(this.address)


uint256 totalSupply;
array of uint256 balanceOf;
array of uint256 allowance;
uint256 decimals;
uint8 stor4;
uint8 stor4; offset 8
uint256 stor4; offset 8
array of struct stor5;
mapping of struct stor6;
array of struct stor7;
array of address stor8;
address stor9;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;

function totalSupply() {
    return totalSupply
}

function get_balance(address arg1) {
    return balanceOf[address(arg1)]
}

function decimals() {
    return decimals
}

function isWithdrawable() {
    return bool(uint8(stor4.field_8))
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function get_balance() {
    return balanceOf[address(msg.sender)]
}

function isPayable() {
    return bool(uint8(stor4.field_0))
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
}

function active_payable() {
    require 0 < stor7.length
    idx = 0
    while address(stor7[idx].field_0) != msg.sender:
        require idx + 1 < stor7.length
        mem[0] = 7
        idx = idx + 1
        continue 
    uint8(stor4.field_0) = 1
}

function inactive_payable() {
    require 0 < stor7.length
    idx = 0
    while address(stor7[idx].field_0) != msg.sender:
        require idx + 1 < stor7.length
        mem[0] = 7
        idx = idx + 1
        continue 
    uint8(stor4.field_0) = 0
}

function set_deposit_address(address arg1) {
    require 0 < stor7.length
    idx = 0
    while address(stor7[idx].field_0) != msg.sender:
        require idx + 1 < stor7.length
        mem[0] = 7
        idx = idx + 1
        continue 
    stor9 = arg1
}

function admin_deposit(uint256 arg1) {
    require 0 < stor7.length
    idx = 0
    while address(stor7[idx].field_0) != msg.sender:
        require idx + 1 < stor7.length
        mem[0] = 7
        idx = idx + 1
        continue 
    stor15 += 10^18 * arg1
}

function active_withdrawable() {
    require 0 < stor7.length
    idx = 0
    while address(stor7[idx].field_0) != msg.sender:
        require idx + 1 < stor7.length
        mem[0] = 7
        idx = idx + 1
        continue 
    Mask(248, 0, stor4.field_8) = 1
}

function inactive_withdrawable() {
    require 0 < stor7.length
    idx = 0
    while address(stor7[idx].field_0) != msg.sender:
        require idx + 1 < stor7.length
        mem[0] = 7
        idx = idx + 1
        continue 
    Mask(248, 0, stor4.field_8) = 0
}

function withdraw_admin(uint256 arg1) {
    require msg.sender == stor9
    require eth.balance(this.address) > 10^18 * arg1
    call msg.sender with:
       value 10^18 * arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    stor16 += 10^18 * arg1
}

function set_exchange_rate_in_eth(uint256 arg1) {
    require 0 < stor7.length
    idx = 0
    while address(stor7[idx].field_0) != msg.sender:
        require idx + 1 < stor7.length
        mem[0] = 7
        idx = idx + 1
        continue 
    require arg1 > 0
    stor11 = 10^6 * arg1
}

function get_total_info() {
    require 0 < stor7.length
    idx = 0
    while address(stor7[idx].field_0) != msg.sender:
        require idx + 1 < stor7.length
        mem[0] = 7
        idx = idx + 1
        continue 
    mem[448 len 0] = None
    return Array(len=6, data=mem[448 len 192])
}

function active_dividend(address arg1) {
    require 0 < stor7.length
    idx = 0
    while address(stor7[idx].field_0) != msg.sender:
        require idx + 1 < stor7.length
        mem[0] = 7
        idx = idx + 1
        continue 
    require bool(uint8(stor6[address(arg1)].field_0)) == 1
    Mask(248, 0, stor6[address(arg1)].field_8) = 1
}

function active_withdraw(address arg1) {
    require 0 < stor7.length
    idx = 0
    while address(stor7[idx].field_0) != msg.sender:
        require idx + 1 < stor7.length
        mem[0] = 7
        idx = idx + 1
        continue 
    require bool(uint8(stor6[address(arg1)].field_0)) == 1
    Mask(240, 0, stor6[address(arg1)].field_16) = 1
}

function inactive_dividend(address arg1) {
    require 0 < stor7.length
    idx = 0
    while address(stor7[idx].field_0) != msg.sender:
        require idx + 1 < stor7.length
        mem[0] = 7
        idx = idx + 1
        continue 
    require bool(uint8(stor6[address(arg1)].field_0)) == 1
    Mask(248, 0, stor6[address(arg1)].field_8) = 0
}

function inactive_withdraw(address arg1) {
    require 0 < stor7.length
    idx = 0
    while address(stor7[idx].field_0) != msg.sender:
        require idx + 1 < stor7.length
        mem[0] = 7
        idx = idx + 1
        continue 
    require bool(uint8(stor6[address(arg1)].field_0)) == 1
    Mask(240, 0, stor6[address(arg1)].field_16) = 0
}

function get_member_info(address arg1) {
    require 0 < stor7.length
    idx = 0
    while address(stor7[idx].field_0) != msg.sender:
        require idx + 1 < stor7.length
        mem[0] = 7
        idx = idx + 1
        continue 
    require bool(uint8(stor6[address(arg1)].field_0)) == 1
    mem[416 len 0] = None
    return Array(len=4, data=mem[416 len 128])
}

function withdraw_all_admin(address arg1) {
    require 0 < stor7.length
    idx = 0
    while address(stor7[idx].field_0) != msg.sender:
        require idx + 1 < stor7.length
        mem[0] = 7
        idx = idx + 1
        continue 
    require arg1 == stor9
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    stor13 = 0
    stor14 = 0
    stor15 = 0
    stor16 = 0
    stor17 = 0
}

function withdraw() {
    require bool(uint8(stor6[address(msg.sender)].field_0)) == 1
    require stor6[address(msg.sender)].field_256 - stor6[address(msg.sender)].field_512 > 0
    require uint8(stor4.field_8)
    require uint8(stor6[address(msg.sender)].field_16)
    call msg.sender with:
       value stor6[address(msg.sender)].field_256 - stor6[address(msg.sender)].field_512 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    stor6[address(msg.sender)].field_512 = stor6[address(msg.sender)].field_256
    stor14 = stor14 + stor6[address(msg.sender)].field_256 - stor6[address(msg.sender)].field_512
}

function add_admin(address arg1) {
    require 0 < stor7.length
    idx = 0
    while address(stor7[idx].field_0) != msg.sender:
        require idx + 1 < stor7.length
        mem[0] = 7
        idx = idx + 1
        continue 
    idx = 0
    while idx < stor7.length:
        mem[0] = 7
        require arg1 != address(stor7[idx].field_0)
        idx = idx + 1
        continue 
    stor7.length++
    if not stor7.length <= stor7.length + 1:
        idx = stor7.length + 1
        while stor7.length > idx:
            stor7[idx].field_0 = 0
            idx = idx + 1
            continue 
    address(stor7[stor7.length].field_0) = arg1
}

function get_exchange_wei() {
    mem[64] = 192
    s = 0
    s = 0
    s = 0
    s = 96
    idx = 0
    while idx < stor5.length:
        mem[0] = 5
        _14 = mem[64]
        mem[64] = mem[64] + 96
        mem[_14] = stor5[idx].field_0
        mem[_14 + 32] = stor5[idx].field_256
        mem[_14 + 64] = stor5[idx].field_512
        if block.timestamp < stor5[idx].field_0:
            s = stor5[idx].field_512
            s = stor5[idx].field_256
            s = stor5[idx].field_0
            s = _14
            idx = idx + 3
            continue 
        if block.timestamp > stor5[idx].field_256:
            s = stor5[idx].field_512
            s = stor5[idx].field_256
            s = stor5[idx].field_0
            s = _14
            idx = idx + 3
            continue 
        stor11 = stor5[idx].field_512
        return stor5[idx].field_512
    return stor11
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    require arg1 != stor9
    require uint8(stor4.field_0)
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    if bool(uint8(stor6[address(arg1)].field_0)) != 1:
        uint8(stor6[address(arg1)].field_0) = 1
        Mask(248, 0, stor6[address(arg1)].field_8) = 1
        Mask(240, 0, stor6[address(arg1)].field_16) = 1
        stor8.length++
        if not stor8.length <= stor8.length + 1:
            idx = stor8.length + 1
            while stor8.length > idx:
                uint256(stor8[idx]) = 0
                idx = idx + 1
                continue 
        address(stor8[stor8.length]) = arg1
    emit Transfer(arg2, msg.sender, arg1);
}

function get_admin_list() {
    require 0 < stor7.length
    idx = 0
    while address(stor7[idx].field_0) != msg.sender:
        require idx + 1 < stor7.length
        mem[0] = 7
        idx = idx + 1
        continue 
    if not stor7.length:
        mem[(32 * stor7.length) + 160] = 32
        mem[(32 * stor7.length) + 192] = stor7.length
        mem[(32 * stor7.length) + 224 len floor32(stor7.length)] = mem[160 len floor32(stor7.length)]
        return memory
          from (32 * stor7.length) + 160
           len (96 * stor7.length) + 64
    mem[160] = address(stor7.field_0)
    idx = 160
    s = 0
    while (32 * stor7.length) + 128 > idx:
        mem[idx + 32] = address(stor7[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor7.length) + 224 len floor32(stor7.length)] = mem[160 len floor32(stor7.length)]
    return Array(len=stor7.length, data=mem[160 len floor32(stor7.length)], mem[(32 * stor7.length) + floor32(stor7.length) + 224 len (32 * stor7.length) - floor32(stor7.length)]), 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
    require arg2 != stor9
    require arg1 != stor9
    require uint8(stor4.field_0)
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    if bool(uint8(stor6[address(arg2)].field_0)) != 1:
        uint8(stor6[address(arg2)].field_0) = 1
        Mask(248, 0, stor6[address(arg2)].field_8) = 1
        Mask(240, 0, stor6[address(arg2)].field_16) = 1
        stor8.length++
        if not stor8.length <= stor8.length + 1:
            idx = stor8.length + 1
            while stor8.length > idx:
                uint256(stor8[idx]) = 0
                idx = idx + 1
                continue 
        address(stor8[stor8.length]) = arg2
    emit Transfer(arg3, arg1, arg2);
}

function del_admin(address arg1) {
    require 0 < stor7.length
    idx = 0
    while address(stor7[idx].field_0) != msg.sender:
        require idx + 1 < stor7.length
        mem[0] = 7
        idx = idx + 1
        continue 
    require arg1 != msg.sender
    require 0 < stor7.length
    idx = 0
    while arg1 != address(stor7[idx].field_0):
        require idx + 1 < stor7.length
        mem[0] = 7
        idx = idx + 1
        continue 
    idx = 0
    while idx < stor7.length - 1:
        mem[0] = 7
        if address(stor7[idx].field_0) != arg1:
            idx = idx + 1
            continue 
        require stor7.length - 1 < stor7.length
        require idx < stor7.length
        address(stor7[idx].field_0) = address(stor7[stor7.length].field_0)
        stor7.length--
        if not stor7.length <= stor7.length - 1:
            idx = sha3(7) + stor7.length - 1
            while sha3(7) + stor7.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
    stor7.length--
    if not stor7.length <= stor7.length - 1:
        idx = stor7.length - 1
        while stor7.length > idx:
            stor7[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function admin_dividend(uint256 arg1) {
    require 0 < stor7.length
    idx = 0
    while address(stor7[idx].field_0) != msg.sender:
        require idx + 1 < stor7.length
        mem[0] = 7
        idx = idx + 1
        continue 
    require 10^18 * arg1 <= stor15 - stor17
    stor17 += 10^18 * arg1
    s = 0
    t = 0
    idx = 0
    while idx < stor8.length:
        mem[0] = address(stor8[idx])
        mem[32] = 6
        if not uint8(stor6[address(stor8[idx])].field_8):
            s = s
            t = address(stor8[idx])
            idx = idx + 1
            continue 
        mem[0] = address(stor8[idx])
        mem[32] = 1
        s = balanceOf[address(stor8[idx])]
        t = address(stor8[idx])
        idx = idx + 1
        continue 
    require s / 10^6
    u = 0
    v = t
    idx = 0
    while idx < stor8.length:
        mem[0] = address(stor8[idx])
        mem[32] = 6
        if not uint8(stor6[address(stor8[idx])].field_8):
            u = u
            v = address(stor8[idx])
            idx = idx + 1
            continue 
        mem[0] = address(stor8[idx])
        mem[32] = 6
        stor6[address(stor8[idx])].field_256 += balanceOf[address(stor8[idx])] / 10^6 * 10^18 * arg1 / s / 10^6
        stor13 += balanceOf[address(stor8[idx])] / 10^6 * 10^18 * arg1 / s / 10^6
        u = balanceOf[address(stor8[idx])] / 10^6 * 10^18 * arg1 / s / 10^6
        v = address(stor8[idx])
        idx = idx + 1
        continue 
}

function _fallback() payable {
    require msg.value > 0
    require uint8(stor4.field_0)
    if msg.sender == stor9:
        stor15 += msg.value
    else:
        mem[64] = 192
        s = 0
        s = 0
        s = 0
        s = 96
        idx = 0
        while idx < stor5.length:
            mem[0] = 5
            _28 = mem[64]
            mem[64] = mem[64] + 96
            mem[_28] = stor5[idx].field_0
            mem[_28 + 32] = stor5[idx].field_256
            mem[_28 + 64] = stor5[idx].field_512
            if block.timestamp < stor5[idx].field_0:
                s = stor5[idx].field_512
                s = stor5[idx].field_256
                s = stor5[idx].field_0
                s = _28
                idx = idx + 3
                continue 
            if block.timestamp > stor5[idx].field_256:
                s = stor5[idx].field_512
                s = stor5[idx].field_256
                s = stor5[idx].field_0
                s = _28
                idx = idx + 3
                continue 
            stor11 = stor5[idx].field_512
            if bool(uint8(stor6[address(msg.sender)].field_0)) != 1:
                uint8(stor6[address(msg.sender)].field_0) = 1
                Mask(248, 0, stor6[address(msg.sender)].field_8) = 1
                Mask(240, 0, stor6[address(msg.sender)].field_16) = 1
                stor8.length++
                if not stor8.length <= stor8.length + 1:
                    s = sha3(8) + stor8.length + 1
                    while sha3(8) + stor8.length > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                address(stor8[stor8.length]) = msg.sender
            balanceOf[address(msg.sender)] += stor5[idx].field_512 * msg.value / 10^18
            stor12 += stor5[idx].field_512 * msg.value / 10^18
        if bool(uint8(stor6[address(msg.sender)].field_0)) != 1:
            uint8(stor6[address(msg.sender)].field_0) = 1
            Mask(248, 0, stor6[address(msg.sender)].field_8) = 1
            Mask(240, 0, stor6[address(msg.sender)].field_16) = 1
            stor8.length++
            if not stor8.length <= stor8.length + 1:
                idx = stor8.length + 1
                while stor8.length > idx:
                    uint256(stor8[idx]) = 0
                    idx = idx + 1
                    continue 
            address(stor8[stor8.length]) = msg.sender
        balanceOf[address(msg.sender)] += stor11 * msg.value / 10^18
        stor12 += stor11 * msg.value / 10^18
}

function pay() payable {
    require msg.value > 0
    require uint8(stor4.field_0)
    if msg.sender == stor9:
        stor15 += msg.value
    else:
        mem[64] = 192
        s = 0
        s = 0
        s = 0
        s = 96
        idx = 0
        while idx < stor5.length:
            mem[0] = 5
            _42 = mem[64]
            mem[64] = mem[64] + 96
            mem[_42] = stor5[idx].field_0
            mem[_42 + 32] = stor5[idx].field_256
            mem[_42 + 64] = stor5[idx].field_512
            if block.timestamp < stor5[idx].field_0:
                s = stor5[idx].field_512
                s = stor5[idx].field_256
                s = stor5[idx].field_0
                s = _42
                idx = idx + 3
                continue 
            if block.timestamp > stor5[idx].field_256:
                s = stor5[idx].field_512
                s = stor5[idx].field_256
                s = stor5[idx].field_0
                s = _42
                idx = idx + 3
                continue 
            stor11 = stor5[idx].field_512
            if bool(uint8(stor6[address(msg.sender)].field_0)) != 1:
                uint8(stor6[address(msg.sender)].field_0) = 1
                Mask(248, 0, stor6[address(msg.sender)].field_8) = 1
                Mask(240, 0, stor6[address(msg.sender)].field_16) = 1
                stor8.length++
                if not stor8.length <= stor8.length + 1:
                    s = sha3(8) + stor8.length + 1
                    while sha3(8) + stor8.length > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                address(stor8[stor8.length]) = msg.sender
            balanceOf[address(msg.sender)] += stor5[idx].field_512 * msg.value / 10^18
            stor12 += stor5[idx].field_512 * msg.value / 10^18
            return 1
        if bool(uint8(stor6[address(msg.sender)].field_0)) != 1:
            uint8(stor6[address(msg.sender)].field_0) = 1
            Mask(248, 0, stor6[address(msg.sender)].field_8) = 1
            Mask(240, 0, stor6[address(msg.sender)].field_16) = 1
            stor8.length++
            if not stor8.length <= stor8.length + 1:
                idx = stor8.length + 1
                while stor8.length > idx:
                    uint256(stor8[idx]) = 0
                    idx = idx + 1
                    continue 
            address(stor8[stor8.length]) = msg.sender
        balanceOf[address(msg.sender)] += stor11 * msg.value / 10^18
        stor12 += stor11 * msg.value / 10^18
    return 1
}

function set_exchange_rate(uint256[] arg1) {
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require 0 < stor7.length
    idx = 0
    while address(stor7[idx].field_0) != msg.sender:
        require idx + 1 < stor7.length
        mem[0] = 7
        idx = idx + 1
        continue 
    stor5.length = 0
    if not stor5.length > 0:
        s = 0
        s = 0
        s = 0
        idx = 0
        while idx < arg1.length:
            require idx < mem[96]
            _77 = mem[(32 * idx) + 128]
            require idx + 1 < mem[96]
            _79 = mem[(32 * idx + 1) + 128]
            require idx + 2 < mem[96]
            _81 = mem[(32 * idx + 2) + 128]
            stor5.length++
            if not stor5.length > stor5.length + 1:
                mem[0] = 5
                _85 = mem[64]
                mem[64] = mem[64] + 96
                mem[_85] = mem[(32 * idx) + 128]
                mem[_85 + 32] = _79
                mem[_85 + 64] = 1000 * _81
            else:
                s = sha3(5) + (3 * stor5.length) + 3
                while sha3(5) + (3 * stor5.length) > s:
                    stor[s] = 0
                    balanceOf[s] = 0
                    allowance[s] = 0
                    s = s + 3
                    continue 
                mem[0] = 5
                _117 = mem[64]
                mem[64] = mem[64] + 96
                mem[_117] = mem[(32 * idx) + 128]
                mem[_117 + 32] = _79
                mem[_117 + 64] = 1000 * _81
            stor5[stor5.length].field_0 = _77
            stor5[stor5.length].field_256 = _79
            stor5[stor5.length].field_512 = 1000 * _81
            s = 1000 * _81
            s = _79
            s = _77
            idx = idx + 3
            continue 
    else:
        idx = 0
        while 3 * stor5.length > idx:
            stor5[idx].field_0 = 0
            stor5[idx].field_256 = 0
            stor5[idx].field_512 = 0
            idx = idx + 3
            continue 
        s = 0
        s = 0
        s = 0
        idx = 0
        while idx < arg1.length:
            require idx < mem[96]
            _111 = mem[(32 * idx) + 128]
            require idx + 1 < mem[96]
            _113 = mem[(32 * idx + 1) + 128]
            require idx + 2 < mem[96]
            _115 = mem[(32 * idx + 2) + 128]
            stor5.length++
            if not stor5.length > stor5.length + 1:
                mem[0] = 5
                _123 = mem[64]
                mem[64] = mem[64] + 96
                mem[_123] = mem[(32 * idx) + 128]
                mem[_123 + 32] = _113
                mem[_123 + 64] = 1000 * _115
            else:
                s = sha3(5) + (3 * stor5.length) + 3
                while sha3(5) + (3 * stor5.length) > s:
                    stor[s] = 0
                    balanceOf[s] = 0
                    allowance[s] = 0
                    s = s + 3
                    continue 
                mem[0] = 5
                _133 = mem[64]
                mem[64] = mem[64] + 96
                mem[_133] = mem[(32 * idx) + 128]
                mem[_133 + 32] = _113
                mem[_133 + 64] = 1000 * _115
            stor5[stor5.length].field_0 = _111
            stor5[stor5.length].field_256 = _113
            stor5[stor5.length].field_512 = 1000 * _115
            s = 1000 * _115
            s = _113
            s = _111
            idx = idx + 3
            continue 
}



}
