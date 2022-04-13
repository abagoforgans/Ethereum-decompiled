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
uint256 stor18;

function _fallback() payable {
    stor3 = 6
    uint8(stor4.field_0) = 1
    Mask(248, 0, stor4.field_8) = 1
    stor10 = 21 * 10^12
    stor11 = 300 * 10^6
    stor12 = 0
    stor13 = 0
    stor14 = 0
    stor15 = 0
    stor16 = 0
    stor17 = 0
    stor18 = 0
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
    return code.data[676 len 12799]
}



// =====================  Runtime code  =====================


const get_this_balance = eth.balance(this.address)


uint256 totalSupply;
array of uint256 balanceOf;
array of uint256 allowance;
uint256 decimals;
uint8 stor4;
uint8 stor4; offset 8
uint256 stor4; offset 8
array of struct exchangeRateArray;
mapping of struct members;
array of struct adminArray;
array of address memberArray;
address deposit_address;
uint256 INITIAL_SUPPLY;
uint256 tokenExchangeRateInWei;
uint256 total_tokenwei;
uint256 min_pay_wei;
uint256 total_devidend;
uint256 total_withdraw;
uint256 deposit_amount;
uint256 withdraw_amount;
uint256 dividend_amount;

function tokenExchangeRateInWei() {
    return tokenExchangeRateInWei
}

function members(address arg1) {
    return bool(uint8(members[arg1].field_0)), 
           bool(uint8(members[arg1].field_8)),
           bool(uint8(members[arg1].field_16)),
           members[arg1].field_256,
           members[arg1].field_512
}

function total_tokenwei() {
    return total_tokenwei
}

function totalSupply() {
    return totalSupply
}

function withdraw_amount() {
    return withdraw_amount
}

function INITIAL_SUPPLY() {
    return INITIAL_SUPPLY
}

function decimals() {
    return decimals
}

function exchangeRateArray(uint256 arg1) {
    require arg1 < exchangeRateArray.length
    return exchangeRateArray[arg1].field_0, exchangeRateArray[arg1].field_256, exchangeRateArray[arg1].field_512
}

function isWithdrawable() {
    return bool(uint8(stor4.field_8))
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function dividend_amount() {
    return dividend_amount
}

function min_pay_wei() {
    return min_pay_wei
}

function deposit_address() {
    return deposit_address
}

function adminArray(uint256 arg1) {
    require arg1 < adminArray.length
    return address(adminArray[arg1].field_0)
}

function total_withdraw() {
    return total_withdraw
}

function deposit_amount() {
    return deposit_amount
}

function memberArray(uint256 arg1) {
    require arg1 < memberArray.length
    return address(memberArray[arg1])
}

function isPayable() {
    return bool(uint8(stor4.field_0))
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function total_devidend() {
    return total_devidend
}

function get_total_info() {
    return deposit_amount, total_devidend, total_devidend - total_withdraw, total_withdraw
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
}

function get_info(address arg1) {
    return balanceOf[address(arg1)], 
           members[address(arg1)].field_256,
           members[address(arg1)].field_256 - members[address(arg1)].field_512,
           members[address(arg1)].field_512
}

function admin_active_payable() {
    require 0 < adminArray.length
    idx = 0
    while address(adminArray[idx].field_0) != msg.sender:
        require idx + 1 < adminArray.length
        mem[0] = 7
        idx = idx + 1
        continue 
    uint8(stor4.field_0) = 1
}

function admin_inactive_payable() {
    require 0 < adminArray.length
    idx = 0
    while address(adminArray[idx].field_0) != msg.sender:
        require idx + 1 < adminArray.length
        mem[0] = 7
        idx = idx + 1
        continue 
    uint8(stor4.field_0) = 0
}

function admin_set_deposit(address arg1) {
    require 0 < adminArray.length
    idx = 0
    while address(adminArray[idx].field_0) != msg.sender:
        require idx + 1 < adminArray.length
        mem[0] = 7
        idx = idx + 1
        continue 
    deposit_address = arg1
}

function admin_deposit(uint256 arg1) {
    require 0 < adminArray.length
    idx = 0
    while address(adminArray[idx].field_0) != msg.sender:
        require idx + 1 < adminArray.length
        mem[0] = 7
        idx = idx + 1
        continue 
    deposit_amount += 10^18 * arg1
}

function admin_active_withdrawable() {
    require 0 < adminArray.length
    idx = 0
    while address(adminArray[idx].field_0) != msg.sender:
        require idx + 1 < adminArray.length
        mem[0] = 7
        idx = idx + 1
        continue 
    Mask(248, 0, stor4.field_8) = 1
}

function admin_inactive_withdrawable() {
    require 0 < adminArray.length
    idx = 0
    while address(adminArray[idx].field_0) != msg.sender:
        require idx + 1 < adminArray.length
        mem[0] = 7
        idx = idx + 1
        continue 
    Mask(248, 0, stor4.field_8) = 0
}

function withdraw_admin(uint256 arg1) {
    require msg.sender == deposit_address
    require eth.balance(this.address) > 10^18 * arg1
    call msg.sender with:
       value 10^18 * arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    withdraw_amount += 10^18 * arg1
}

function admin_set_min_pay(uint256 arg1) {
    require 0 < adminArray.length
    idx = 0
    while address(adminArray[idx].field_0) != msg.sender:
        require idx + 1 < adminArray.length
        mem[0] = 7
        idx = idx + 1
        continue 
    require arg1 >= 0
    min_pay_wei = 10^18 * arg1
}

function admin_active_dividend(address arg1) {
    require 0 < adminArray.length
    idx = 0
    while address(adminArray[idx].field_0) != msg.sender:
        require idx + 1 < adminArray.length
        mem[0] = 7
        idx = idx + 1
        continue 
    require bool(uint8(members[address(arg1)].field_0)) == 1
    Mask(248, 0, members[address(arg1)].field_8) = 1
}

function admin_active_withdraw(address arg1) {
    require 0 < adminArray.length
    idx = 0
    while address(adminArray[idx].field_0) != msg.sender:
        require idx + 1 < adminArray.length
        mem[0] = 7
        idx = idx + 1
        continue 
    require bool(uint8(members[address(arg1)].field_0)) == 1
    Mask(240, 0, members[address(arg1)].field_16) = 1
}

function admin_inactive_dividend(address arg1) {
    require 0 < adminArray.length
    idx = 0
    while address(adminArray[idx].field_0) != msg.sender:
        require idx + 1 < adminArray.length
        mem[0] = 7
        idx = idx + 1
        continue 
    require bool(uint8(members[address(arg1)].field_0)) == 1
    Mask(248, 0, members[address(arg1)].field_8) = 0
}

function admin_inactive_withdraw(address arg1) {
    require 0 < adminArray.length
    idx = 0
    while address(adminArray[idx].field_0) != msg.sender:
        require idx + 1 < adminArray.length
        mem[0] = 7
        idx = idx + 1
        continue 
    require bool(uint8(members[address(arg1)].field_0)) == 1
    Mask(240, 0, members[address(arg1)].field_16) = 0
}

function withdraw_all_admin(address arg1) {
    require 0 < adminArray.length
    idx = 0
    while address(adminArray[idx].field_0) != msg.sender:
        require idx + 1 < adminArray.length
        mem[0] = 7
        idx = idx + 1
        continue 
    require arg1 == deposit_address
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    total_devidend = 0
    total_withdraw = 0
    deposit_amount = 0
    withdraw_amount = 0
    dividend_amount = 0
}

function withdraw() {
    require bool(uint8(members[address(msg.sender)].field_0)) == 1
    require members[address(msg.sender)].field_256 - members[address(msg.sender)].field_512 > 0
    require uint8(stor4.field_8)
    require uint8(members[address(msg.sender)].field_16)
    call msg.sender with:
       value members[address(msg.sender)].field_256 - members[address(msg.sender)].field_512 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    members[address(msg.sender)].field_512 = members[address(msg.sender)].field_256
    total_withdraw = total_withdraw + members[address(msg.sender)].field_256 - members[address(msg.sender)].field_512
}

function admin_add(address arg1) {
    require 0 < adminArray.length
    idx = 0
    while address(adminArray[idx].field_0) != msg.sender:
        require idx + 1 < adminArray.length
        mem[0] = 7
        idx = idx + 1
        continue 
    idx = 0
    while idx < adminArray.length:
        mem[0] = 7
        require arg1 != address(adminArray[idx].field_0)
        idx = idx + 1
        continue 
    adminArray.length++
    if not adminArray.length <= adminArray.length + 1:
        idx = adminArray.length + 1
        while adminArray.length > idx:
            adminArray[idx].field_0 = 0
            idx = idx + 1
            continue 
    address(adminArray[adminArray.length].field_0) = arg1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    require arg1 != deposit_address
    require uint8(stor4.field_0)
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    if bool(uint8(members[address(arg1)].field_0)) != 1:
        uint8(members[address(arg1)].field_0) = 1
        Mask(248, 0, members[address(arg1)].field_8) = 1
        Mask(240, 0, members[address(arg1)].field_16) = 1
        memberArray.length++
        if not memberArray.length <= memberArray.length + 1:
            idx = memberArray.length + 1
            while memberArray.length > idx:
                uint256(memberArray[idx]) = 0
                idx = idx + 1
                continue 
        address(memberArray[memberArray.length]) = arg1
    emit Transfer(arg2, msg.sender, arg1);
}

function get_admin_list() {
    if not adminArray.length:
        mem[(32 * adminArray.length) + 160] = 32
        mem[(32 * adminArray.length) + 192] = adminArray.length
        mem[(32 * adminArray.length) + 224 len floor32(adminArray.length)] = mem[160 len floor32(adminArray.length)]
        return memory
          from (32 * adminArray.length) + 160
           len (96 * adminArray.length) + 64
    mem[160] = address(adminArray.field_0)
    idx = 160
    s = 0
    while (32 * adminArray.length) + 128 > idx:
        mem[idx + 32] = address(adminArray[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * adminArray.length) + 224 len floor32(adminArray.length)] = mem[160 len floor32(adminArray.length)]
    return Array(len=adminArray.length, data=mem[160 len floor32(adminArray.length)], mem[(32 * adminArray.length) + floor32(adminArray.length) + 224 len (32 * adminArray.length) - floor32(adminArray.length)]), 
}

function get_exchange_wei() {
    mem[64] = 192
    s = 0
    s = 0
    s = 0
    s = 96
    idx = 0
    while idx < exchangeRateArray.length:
        mem[0] = 5
        _14 = mem[64]
        mem[64] = mem[64] + 96
        mem[_14] = exchangeRateArray[idx].field_0
        mem[_14 + 32] = exchangeRateArray[idx].field_256
        mem[_14 + 64] = exchangeRateArray[idx].field_512
        if block.timestamp < exchangeRateArray[idx].field_0:
            s = exchangeRateArray[idx].field_512
            s = exchangeRateArray[idx].field_256
            s = exchangeRateArray[idx].field_0
            s = _14
            idx = idx + 3
            continue 
        if block.timestamp > exchangeRateArray[idx].field_256:
            s = exchangeRateArray[idx].field_512
            s = exchangeRateArray[idx].field_256
            s = exchangeRateArray[idx].field_0
            s = _14
            idx = idx + 3
            continue 
        tokenExchangeRateInWei = exchangeRateArray[idx].field_512
        return exchangeRateArray[idx].field_512
    return tokenExchangeRateInWei
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
    require arg2 != deposit_address
    require arg1 != deposit_address
    require uint8(stor4.field_0)
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    if bool(uint8(members[address(arg2)].field_0)) != 1:
        uint8(members[address(arg2)].field_0) = 1
        Mask(248, 0, members[address(arg2)].field_8) = 1
        Mask(240, 0, members[address(arg2)].field_16) = 1
        memberArray.length++
        if not memberArray.length <= memberArray.length + 1:
            idx = memberArray.length + 1
            while memberArray.length > idx:
                uint256(memberArray[idx]) = 0
                idx = idx + 1
                continue 
        address(memberArray[memberArray.length]) = arg2
    emit Transfer(arg3, arg1, arg2);
}

function admin_del(address arg1) {
    require 0 < adminArray.length
    idx = 0
    while address(adminArray[idx].field_0) != msg.sender:
        require idx + 1 < adminArray.length
        mem[0] = 7
        idx = idx + 1
        continue 
    require arg1 != msg.sender
    require 0 < adminArray.length
    idx = 0
    while arg1 != address(adminArray[idx].field_0):
        require idx + 1 < adminArray.length
        mem[0] = 7
        idx = idx + 1
        continue 
    idx = 0
    while idx < adminArray.length - 1:
        mem[0] = 7
        if address(adminArray[idx].field_0) != arg1:
            idx = idx + 1
            continue 
        require adminArray.length - 1 < adminArray.length
        require idx < adminArray.length
        address(adminArray[idx].field_0) = address(adminArray[adminArray.length].field_0)
        adminArray.length--
        if not adminArray.length <= adminArray.length - 1:
            idx = sha3(7) + adminArray.length - 1
            while sha3(7) + adminArray.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
    adminArray.length--
    if not adminArray.length <= adminArray.length - 1:
        idx = adminArray.length - 1
        while adminArray.length > idx:
            adminArray[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function admin_dividend(uint256 arg1) {
    require 0 < adminArray.length
    idx = 0
    while address(adminArray[idx].field_0) != msg.sender:
        require idx + 1 < adminArray.length
        mem[0] = 7
        idx = idx + 1
        continue 
    require 10^18 * arg1 <= deposit_amount - dividend_amount
    dividend_amount += 10^18 * arg1
    s = 0
    t = 0
    idx = 0
    while idx < memberArray.length:
        mem[0] = address(memberArray[idx])
        mem[32] = 6
        if not uint8(members[address(stor8[idx])].field_8):
            s = s
            t = address(memberArray[idx])
            idx = idx + 1
            continue 
        mem[0] = address(memberArray[idx])
        mem[32] = 1
        s = balanceOf[address(stor8[idx])]
        t = address(memberArray[idx])
        idx = idx + 1
        continue 
    require s / 10^6
    u = 0
    v = t
    idx = 0
    while idx < memberArray.length:
        mem[0] = address(memberArray[idx])
        mem[32] = 6
        if not uint8(members[address(stor8[idx])].field_8):
            u = u
            v = address(memberArray[idx])
            idx = idx + 1
            continue 
        mem[0] = address(memberArray[idx])
        mem[32] = 6
        members[address(stor8[idx])].field_256 += balanceOf[address(stor8[idx])] / 10^6 * 10^18 * arg1 / s / 10^6
        total_devidend += balanceOf[address(stor8[idx])] / 10^6 * 10^18 * arg1 / s / 10^6
        u = balanceOf[address(stor8[idx])] / 10^6 * 10^18 * arg1 / s / 10^6
        v = address(memberArray[idx])
        idx = idx + 1
        continue 
}

function _fallback() payable {
    require msg.value > min_pay_wei
    require uint8(stor4.field_0)
    if msg.sender == deposit_address:
        deposit_amount += msg.value
    else:
        mem[64] = 192
        s = 0
        s = 0
        s = 0
        s = 96
        idx = 0
        while idx < exchangeRateArray.length:
            mem[0] = 5
            _28 = mem[64]
            mem[64] = mem[64] + 96
            mem[_28] = exchangeRateArray[idx].field_0
            mem[_28 + 32] = exchangeRateArray[idx].field_256
            mem[_28 + 64] = exchangeRateArray[idx].field_512
            if block.timestamp < exchangeRateArray[idx].field_0:
                s = exchangeRateArray[idx].field_512
                s = exchangeRateArray[idx].field_256
                s = exchangeRateArray[idx].field_0
                s = _28
                idx = idx + 3
                continue 
            if block.timestamp > exchangeRateArray[idx].field_256:
                s = exchangeRateArray[idx].field_512
                s = exchangeRateArray[idx].field_256
                s = exchangeRateArray[idx].field_0
                s = _28
                idx = idx + 3
                continue 
            tokenExchangeRateInWei = exchangeRateArray[idx].field_512
            if bool(uint8(members[address(msg.sender)].field_0)) != 1:
                uint8(members[address(msg.sender)].field_0) = 1
                Mask(248, 0, members[address(msg.sender)].field_8) = 1
                Mask(240, 0, members[address(msg.sender)].field_16) = 1
                memberArray.length++
                if not memberArray.length <= memberArray.length + 1:
                    s = sha3(8) + memberArray.length + 1
                    while sha3(8) + memberArray.length > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                address(memberArray[memberArray.length]) = msg.sender
            balanceOf[address(msg.sender)] += exchangeRateArray[idx].field_512 * msg.value / 10^18
            total_tokenwei += exchangeRateArray[idx].field_512 * msg.value / 10^18
        if bool(uint8(members[address(msg.sender)].field_0)) != 1:
            uint8(members[address(msg.sender)].field_0) = 1
            Mask(248, 0, members[address(msg.sender)].field_8) = 1
            Mask(240, 0, members[address(msg.sender)].field_16) = 1
            memberArray.length++
            if not memberArray.length <= memberArray.length + 1:
                idx = memberArray.length + 1
                while memberArray.length > idx:
                    uint256(memberArray[idx]) = 0
                    idx = idx + 1
                    continue 
            address(memberArray[memberArray.length]) = msg.sender
        balanceOf[address(msg.sender)] += tokenExchangeRateInWei * msg.value / 10^18
        total_tokenwei += tokenExchangeRateInWei * msg.value / 10^18
}

function pay() payable {
    require msg.value > min_pay_wei
    require uint8(stor4.field_0)
    if msg.sender == deposit_address:
        deposit_amount += msg.value
    else:
        mem[64] = 192
        s = 0
        s = 0
        s = 0
        s = 96
        idx = 0
        while idx < exchangeRateArray.length:
            mem[0] = 5
            _42 = mem[64]
            mem[64] = mem[64] + 96
            mem[_42] = exchangeRateArray[idx].field_0
            mem[_42 + 32] = exchangeRateArray[idx].field_256
            mem[_42 + 64] = exchangeRateArray[idx].field_512
            if block.timestamp < exchangeRateArray[idx].field_0:
                s = exchangeRateArray[idx].field_512
                s = exchangeRateArray[idx].field_256
                s = exchangeRateArray[idx].field_0
                s = _42
                idx = idx + 3
                continue 
            if block.timestamp > exchangeRateArray[idx].field_256:
                s = exchangeRateArray[idx].field_512
                s = exchangeRateArray[idx].field_256
                s = exchangeRateArray[idx].field_0
                s = _42
                idx = idx + 3
                continue 
            tokenExchangeRateInWei = exchangeRateArray[idx].field_512
            if bool(uint8(members[address(msg.sender)].field_0)) != 1:
                uint8(members[address(msg.sender)].field_0) = 1
                Mask(248, 0, members[address(msg.sender)].field_8) = 1
                Mask(240, 0, members[address(msg.sender)].field_16) = 1
                memberArray.length++
                if not memberArray.length <= memberArray.length + 1:
                    s = sha3(8) + memberArray.length + 1
                    while sha3(8) + memberArray.length > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                address(memberArray[memberArray.length]) = msg.sender
            balanceOf[address(msg.sender)] += exchangeRateArray[idx].field_512 * msg.value / 10^18
            total_tokenwei += exchangeRateArray[idx].field_512 * msg.value / 10^18
            return 1
        if bool(uint8(members[address(msg.sender)].field_0)) != 1:
            uint8(members[address(msg.sender)].field_0) = 1
            Mask(248, 0, members[address(msg.sender)].field_8) = 1
            Mask(240, 0, members[address(msg.sender)].field_16) = 1
            memberArray.length++
            if not memberArray.length <= memberArray.length + 1:
                idx = memberArray.length + 1
                while memberArray.length > idx:
                    uint256(memberArray[idx]) = 0
                    idx = idx + 1
                    continue 
            address(memberArray[memberArray.length]) = msg.sender
        balanceOf[address(msg.sender)] += tokenExchangeRateInWei * msg.value / 10^18
        total_tokenwei += tokenExchangeRateInWei * msg.value / 10^18
    return 1
}

function admin_set_exchange_rate(uint256[] arg1) {
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require 0 < adminArray.length
    idx = 0
    while address(adminArray[idx].field_0) != msg.sender:
        require idx + 1 < adminArray.length
        mem[0] = 7
        idx = idx + 1
        continue 
    exchangeRateArray.length = 0
    if not exchangeRateArray.length > 0:
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
            exchangeRateArray.length++
            if not exchangeRateArray.length > exchangeRateArray.length + 1:
                mem[0] = 5
                _85 = mem[64]
                mem[64] = mem[64] + 96
                mem[_85] = mem[(32 * idx) + 128]
                mem[_85 + 32] = _79
                mem[_85 + 64] = 1000 * _81
            else:
                s = sha3(5) + (3 * exchangeRateArray.length) + 3
                while sha3(5) + (3 * exchangeRateArray.length) > s:
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
            exchangeRateArray[exchangeRateArray.length].field_0 = _77
            exchangeRateArray[exchangeRateArray.length].field_256 = _79
            exchangeRateArray[exchangeRateArray.length].field_512 = 1000 * _81
            s = 1000 * _81
            s = _79
            s = _77
            idx = idx + 3
            continue 
    else:
        idx = 0
        while 3 * exchangeRateArray.length > idx:
            exchangeRateArray[idx].field_0 = 0
            exchangeRateArray[idx].field_256 = 0
            exchangeRateArray[idx].field_512 = 0
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
            exchangeRateArray.length++
            if not exchangeRateArray.length > exchangeRateArray.length + 1:
                mem[0] = 5
                _123 = mem[64]
                mem[64] = mem[64] + 96
                mem[_123] = mem[(32 * idx) + 128]
                mem[_123 + 32] = _113
                mem[_123 + 64] = 1000 * _115
            else:
                s = sha3(5) + (3 * exchangeRateArray.length) + 3
                while sha3(5) + (3 * exchangeRateArray.length) > s:
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
            exchangeRateArray[exchangeRateArray.length].field_0 = _111
            exchangeRateArray[exchangeRateArray.length].field_256 = _113
            exchangeRateArray[exchangeRateArray.length].field_512 = 1000 * _115
            s = 1000 * _115
            s = _113
            s = _111
            idx = idx + 3
            continue 
}



}
