contract main {




// =====================  Runtime code  =====================


const sub_d51bbbdd(?) = eth.balance(this.address)


address owner;
address stor1;
mapping of uint256 sub_5c97ecc4;
mapping of uint256 sub_45add95a;
mapping of address sub_a58dd579;
array of struct sub_3ae3ebb7;
array of struct stor6;
address stor7;
address firstAddress;
address lastAddress;
address jackpotAddress;
uint256 stor11;
uint256 rate;
uint256 stor13;
uint8 stor14;
uint256 stor14; offset 8
uint256 stor14;
uint256 totalFund;
uint256 userCount;
bool stor18; offset 256
uint8 sub_fd51deae;
uint8 sub_aeb11b64; offset 8
uint8 stor18; offset 16
uint8 stor18; offset 24
uint8 stor18; offset 32
uint8 stor18; offset 40
uint8 stor18; offset 48
uint64 stor18;
uint64 stor18; offset 8
uint256 stor18; offset 56
array of address stor1546678032441257452667456735582814959992782782816731922691272282333561699760;

function userCount() {
    return userCount
}

function totalFund() {
    return totalFund
}

function rate() {
    return rate
}

function sub_3ae3ebb7(?) {
    require arg1 < sub_3ae3ebb7.length
    return address(sub_3ae3ebb7[arg1].field_0)
}

function sub_45add95a(?) {
    return sub_45add95a[arg1 << 248][address(arg2)]
}

function canBet() {
    return bool(uint8(stor18.field_16))
}

function sub_5c97ecc4(?) {
    return sub_5c97ecc4[arg1 << 248][address(arg2)]
}

function jackpotAddress() {
    return jackpotAddress
}

function sub_8da49ee1(?) {
    return bool(uint8(stor18.field_24))
}

function owner() {
    return owner
}

function sub_a58dd579(?) {
    return sub_a58dd579[arg1]
}

function sub_aeb11b64(?) {
    return sub_aeb11b64
}

function lastAddress() {
    return lastAddress
}

function firstAddress() {
    return firstAddress
}

function sub_fd51deae(?) {
    return sub_fd51deae
}

function _fallback() payable {
    revert
}

function sub_c2dc6da6(?) {
    require msg.sender == owner
    stor11 = arg1
}

function setRate(uint256 arg1) {
    require msg.sender == owner
    rate = arg1
}

function finishBet() {
    require msg.sender == owner
    require 1 == bool(uint8(stor18.field_16))
    uint8(stor18.field_16) = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sendToBeneficiary() {
    require msg.sender == owner
    require uint8(stor18.field_32)
    call stor7 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
        emit FundTransfer(stor7, eth.balance(this.address));
}

function sub_91cac091(?) {
    require msg.sender == owner
    require not uint8(stor18.field_16)
    require uint8(stor18.field_48)
    rate = arg2
    sub_fd51deae = arg1
    stor18.field_8 % 1099511627776 = sub_aeb11b64
    uint8(stor18.field_16) = 1
    uint8(stor18.field_48) = 0
    Mask(200, 0, stor18.field_56) = 0
    stor18.field_256 % 1 = 0
}

function transferTokens(address arg1) {
    require msg.sender == owner
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_b8906411(?) {
    require msg.sender == owner
    require uint8(stor18.field_32)
    require arg1 <= eth.balance(this.address)
    jackpotAddress = sub_a58dd579[arg2]
    if not arg1:
        call jackpotAddress with:
             gas 2300 wei
        if ext_call.success:
            emit 0x6c9e2d8e: jackpotAddress, 0
    else:
        require 10^18 * arg1 / arg1 == 10^18
        call jackpotAddress with:
           value 10^18 * arg1 wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
            emit 0x6c9e2d8e: jackpotAddress, 10^18 * arg1
}

function getAllUsers() {
    if sub_3ae3ebb7.length:
        mem[128] = address(sub_3ae3ebb7.field_0)
        if (32 * sub_3ae3ebb7.length) + 32 > 64:
            mem[160] = address(sub_3ae3ebb7.field_256)
            idx = 160
            s = 1
            while (32 * sub_3ae3ebb7.length) + 96 > idx:
                mem[idx + 32] = address(sub_3ae3ebb7[s].field_256)
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * sub_3ae3ebb7.length) + 128] = 32
    mem[(32 * sub_3ae3ebb7.length) + 160] = sub_3ae3ebb7.length
    mem[(32 * sub_3ae3ebb7.length) + 192 len floor32(sub_3ae3ebb7.length)] = mem[128 len floor32(sub_3ae3ebb7.length)]
    return memory
      from (32 * sub_3ae3ebb7.length) + 128
       len (96 * sub_3ae3ebb7.length) + 64
}

function getAllWinners() {
    if not stor6.length:
        mem[(32 * stor6.length) + 128] = 32
        mem[(32 * stor6.length) + 160] = stor6.length
        mem[(32 * stor6.length) + 192 len floor32(stor6.length)] = mem[128 len floor32(stor6.length)]
        return memory
          from (32 * stor6.length) + 128
           len (96 * stor6.length) + 64
    mem[128] = address(stor6.field_0)
    idx = 128
    s = 0
    while (32 * stor6.length) + 96 > idx:
        mem[idx + 32] = address(stor6[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor6.length) + 192 len floor32(stor6.length)] = mem[128 len floor32(stor6.length)]
    return Array(len=stor6.length, data=mem[128 len floor32(stor6.length)], mem[(32 * stor6.length) + floor32(stor6.length) + 192 len (32 * stor6.length) - floor32(stor6.length)]), 
}

function sub_923ba470(?) {
    require msg.sender == owner
    require not uint8(stor18.field_16)
    require not uint8(stor18.field_24)
    require arg1 > 0
    require arg1 <= sub_fd51deae
    sub_aeb11b64 = arg1
    uint8(stor14.field_0) = arg2
    Mask(248, 0, stor14.field_8) = 0
    idx = 0
    while idx < sub_3ae3ebb7.length:
        mem[0] = address(sub_3ae3ebb7[idx].field_0)
        mem[32] = sha3(sub_fd51deae, 3)
        if sub_45add95a[uint8(stor18.field_0)][address(stor5[idx].field_0)] > 0:
            require idx < sub_3ae3ebb7.length
            stor6.length++
            mem[0] = 6
            address(stor6[stor6.length].field_0) = address(sub_3ae3ebb7[idx].field_0)
        idx = idx + 1
        continue 
    if stor6.length:
        idx = 128
        s = 0
        while (32 * stor6.length) + 96 > idx:
            mem[idx + 32] = address(stor6[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    uint8(stor18.field_24) = 1
}

function sub_09bb9003(?) {
    require msg.sender == owner
    require 1 == bool(uint8(stor18.field_24))
    require uint8(stor18.field_32)
    require not uint8(stor18.field_48)
    s = 0
    idx = 0
    while idx < sub_3ae3ebb7.length:
        s = 1
        while uint8(s) <= sub_fd51deae:
            require idx < sub_3ae3ebb7.length
            sub_45add95a[s << 248][address(stor5[idx].field_0)] = 0
            mem[0] = address(sub_3ae3ebb7[idx].field_0)
            mem[32] = sha3(s << 248, 2)
            sub_5c97ecc4[s << 248][address(stor5[idx].field_0)] = 0
            s = s + 1
            continue 
        s = None + 1
        idx = idx + 1
        continue 
    stor6.length = 0
    idx = 0
    while stor6.length > idx:
        stor6[idx].field_0 = 0
        idx = idx + 1
        continue 
    sub_3ae3ebb7.length = 0
    idx = 0
    while sub_3ae3ebb7.length > idx:
        sub_3ae3ebb7[idx].field_0 = 0
        idx = idx + 1
        continue 
    firstAddress = 0
    lastAddress = 0
    stor13 = 0
    totalFund = 0
    userCount = 0
    stor18.field_0 % 1099511627776 = 0
    uint8(stor18.field_40) = 1
    uint8(stor18.field_48) = 1
}

function sub_758de2e6(?) payable {
    require 1 == bool(uint8(stor18.field_16))
    require msg.value == rate
    require arg1 <= sub_fd51deae
    require arg1 > 0
    lastAddress = msg.sender
    require msg.value + sub_45add95a[arg1 << 248][address(msg.sender)] >= sub_45add95a[arg1 << 248][address(msg.sender)]
    sub_45add95a[arg1 << 248][address(msg.sender)] += msg.value
    require sub_5c97ecc4[arg1 << 248][address(msg.sender)] + 1 >= sub_5c97ecc4[arg1 << 248][address(msg.sender)]
    sub_5c97ecc4[arg1 << 248][address(msg.sender)]++
    sub_a58dd579[stor13] = msg.sender
    require msg.value + totalFund >= totalFund
    totalFund += msg.value
    if not msg.value / 10^13:
        require ext_code.size(stor1)
        call stor1.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 0
    else:
        require 10^18 * msg.value / 10^13 / msg.value / 10^13 == 10^18
        require ext_code.size(stor1)
        call stor1.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 10^18 * msg.value / 10^13
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg2:
        if arg2 != msg.sender:
            require ext_code.size(stor1)
            call stor1.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg2), stor11
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    if not stor13:
        firstAddress = msg.sender
    require stor13 + 1 >= stor13
    stor13++
    idx = 0
    while idx < sub_3ae3ebb7.length:
        mem[0] = 5
        if address(sub_3ae3ebb7[idx].field_0) != msg.sender:
            idx = idx + 1
            continue 
        emit 0x7826c074: arg1 << 248, msg.sender, msg.value
    sub_3ae3ebb7.length++
    stor36B6[stor5.length] = msg.sender
    require userCount + 1 >= userCount
    userCount++
    emit 0x7826c074: arg1 << 248, msg.sender, msg.value
}

function sub_d7581e81(?) {
    require rate
    idx = 0
    s = 0
    while idx < stor6.length:
        mem[0] = address(stor6[idx].field_0)
        mem[32] = sha3(sub_fd51deae, 2)
        require sub_5c97ecc4[uint8(stor18.field_0)][address(stor6[idx].field_0)] + s >= s
        idx = idx + 1
        s = sub_5c97ecc4[uint8(stor18.field_0)][address(stor6[idx].field_0)] + s
        continue 
    if stor[_10] * stor6.length:
        if not totalFund / stor[_10] * stor6.length:
            if sub_45add95a[uint8(stor18.field_0)][address(arg1)] <= 0:
                if not -sub_45add95a[uint8(stor18.field_0)][address(arg1)]:
                    return sub_45add95a[uint8(stor18.field_0)][address(arg1)]
                if not -sub_45add95a[uint8(stor18.field_0)][address(arg1)]:
                    if sub_45add95a[uint8(stor18.field_0)][address(arg1)] >= 0:
                        return sub_45add95a[uint8(stor18.field_0)][address(arg1)]
                else:
                    if -1 * uint256(stor14.field_0) * sub_45add95a[uint8(stor18.field_0)][address(arg1)] / -sub_45add95a[uint8(stor18.field_0)][address(arg1)] == uint256(stor14.field_0):
                        if sub_45add95a[uint8(stor18.field_0)][address(arg1)] + (-1 * uint256(stor14.field_0) * sub_45add95a[uint8(stor18.field_0)][address(arg1)] / 100) >= -1 * uint256(stor14.field_0) * sub_45add95a[uint8(stor18.field_0)][address(arg1)] / 100:
                            return (sub_45add95a[uint8(stor18.field_0)][address(arg1)] + (-1 * uint256(stor14.field_0) * sub_45add95a[uint8(stor18.field_0)][address(arg1)] / 100))
        else:
            if sub_45add95a[uint8(stor18.field_0)][address(arg1)] / rate * totalFund / stor[_10] * stor6.length / totalFund / stor[_10] * stor6.length == sub_45add95a[uint8(stor18.field_0)][address(arg1)] / rate:
                if sub_45add95a[uint8(stor18.field_0)][address(arg1)] <= sub_45add95a[uint8(stor18.field_0)][address(arg1)] / rate * totalFund / stor[_10] * stor6.length:
                    if not (sub_45add95a[uint8(stor18.field_0)][address(arg1)] / rate * totalFund / stor[_10] * stor6.length) - sub_45add95a[uint8(stor18.field_0)][address(arg1)]:
                        return sub_45add95a[uint8(stor18.field_0)][address(arg1)]
                    if not (sub_45add95a[uint8(stor18.field_0)][address(arg1)] / rate * totalFund / stor[_10] * stor6.length) - sub_45add95a[uint8(stor18.field_0)][address(arg1)]:
                        if sub_45add95a[uint8(stor18.field_0)][address(arg1)] >= 0:
                            return sub_45add95a[uint8(stor18.field_0)][address(arg1)]
                    else:
                        if (sub_45add95a[uint8(stor18.field_0)][address(arg1)] / rate * totalFund / stor[_10] * stor6.length * uint256(stor14.field_0)) - (sub_45add95a[uint8(stor18.field_0)][address(arg1)] * uint256(stor14.field_0)) / (sub_45add95a[uint8(stor18.field_0)][address(arg1)] / rate * totalFund / stor[_10] * stor6.length) - sub_45add95a[uint8(stor18.field_0)][address(arg1)] == uint256(stor14.field_0):
                            if sub_45add95a[uint8(stor18.field_0)][address(arg1)] + ((sub_45add95a[uint8(stor18.field_0)][address(arg1)] / rate * totalFund / stor[_10] * stor6.length * uint256(stor14.field_0)) - (sub_45add95a[uint8(stor18.field_0)][address(arg1)] * uint256(stor14.field_0)) / 100) >= (sub_45add95a[uint8(stor18.field_0)][address(arg1)] / rate * totalFund / stor[_10] * stor6.length * uint256(stor14.field_0)) - (sub_45add95a[uint8(stor18.field_0)][address(arg1)] * uint256(stor14.field_0)) / 100:
                                return (sub_45add95a[uint8(stor18.field_0)][address(arg1)] + ((sub_45add95a[uint8(stor18.field_0)][address(arg1)] / rate * totalFund / stor[_10] * stor6.length * uint256(stor14.field_0)) - (sub_45add95a[uint8(stor18.field_0)][address(arg1)] * uint256(stor14.field_0)) / 100))
    revert
}

function sub_596378a1(?) {
    require msg.sender == owner
    require not uint8(stor18.field_16)
    require 1 == bool(uint8(stor18.field_24))
    require not uint8(stor18.field_32)
    idx = 0
    s = 0
    while idx < stor6.length:
        require rate
        s = 0
        t = 0
        while s < stor6.length:
            mem[0] = address(stor6[s].field_0)
            mem[32] = sha3(sub_fd51deae, 2)
            require sub_5c97ecc4[uint8(stor18.field_0)][address(stor6[s].field_0)] + t >= t
            s = s + 1
            t = sub_5c97ecc4[uint8(stor18.field_0)][address(stor6[s].field_0)] + t
            continue 
        require stor[_54] * stor6.length
        if not totalFund / stor[_54] * stor6.length:
            require sub_45add95a[uint8(stor18.field_0)][address(stor6[idx].field_0)] <= 0
            mem[32] = sha3(sub_fd51deae, 3)
            if not -sub_45add95a[uint8(stor18.field_0)][address(stor6[idx].field_0)]:
                require idx < stor6.length
                mem[0] = 6
                require msg.sender == owner
                call address(stor6[idx].field_0) with:
                   value sub_45add95a[uint8(stor18.field_0)][address(stor6[idx].field_0)] wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
                    mem[96] = address(stor6[idx].field_0)
                    mem[128] = sub_45add95a[uint8(stor18.field_0)][address(stor6[idx].field_0)]
                    emit 0xfde21004: address(stor6[idx].field_0), sub_45add95a[uint8(stor18.field_0)][address(stor6[idx].field_0)]
                idx = idx + 1
                s = sub_45add95a[uint8(stor18.field_0)][address(stor6[idx].field_0)]
                continue 
            if not -sub_45add95a[uint8(stor18.field_0)][address(stor6[idx].field_0)]:
                require sub_45add95a[uint8(stor18.field_0)][address(stor6[idx].field_0)] >= 0
                require idx < stor6.length
                mem[0] = 6
                require msg.sender == owner
                call address(stor6[idx].field_0) with:
                   value sub_45add95a[uint8(stor18.field_0)][address(stor6[idx].field_0)] wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
                    mem[96] = address(stor6[idx].field_0)
                    mem[128] = sub_45add95a[uint8(stor18.field_0)][address(stor6[idx].field_0)]
                    emit 0xfde21004: address(stor6[idx].field_0), sub_45add95a[uint8(stor18.field_0)][address(stor6[idx].field_0)]
                idx = idx + 1
                s = sub_45add95a[uint8(stor18.field_0)][address(stor6[idx].field_0)]
                continue 
            require -1 * uint256(stor14.field_0) * sub_45add95a[uint8(stor18.field_0)][address(stor6[idx].field_0)] / -sub_45add95a[uint8(stor18.field_0)][address(stor6[idx].field_0)] == uint256(stor14.field_0)
            require sub_45add95a[uint8(stor18.field_0)][address(stor6[idx].field_0)] + (-1 * uint256(stor14.field_0) * sub_45add95a[uint8(stor18.field_0)][address(stor6[idx].field_0)] / 100) >= -1 * uint256(stor14.field_0) * sub_45add95a[uint8(stor18.field_0)][address(stor6[idx].field_0)] / 100
            require idx < stor6.length
            mem[0] = 6
            require msg.sender == owner
            call address(stor6[idx].field_0) with:
               value sub_45add95a[uint8(stor18.field_0)][address(stor6[idx].field_0)] + (-1 * uint256(stor14.field_0) * sub_45add95a[uint8(stor18.field_0)][address(stor6[idx].field_0)] / 100) wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
                mem[96] = address(stor6[idx].field_0)
                mem[128] = sub_45add95a[uint8(stor18.field_0)][address(stor6[idx].field_0)] + (-1 * uint256(stor14.field_0) * sub_45add95a[uint8(stor18.field_0)][address(stor6[idx].field_0)] / 100)
                emit 0xfde21004: address(stor6[idx].field_0), sub_45add95a[uint8(stor18.field_0)][address(stor6[idx].field_0)] + (-1 * uint256(stor14.field_0) * sub_45add95a[uint8(stor18.field_0)][address(stor6[idx].field_0)] / 100)
            idx = idx + 1
            s = sub_45add95a[uint8(stor18.field_0)][address(stor6[idx].field_0)] + (-1 * uint256(stor14.field_0) * sub_45add95a[uint8(stor18.field_0)][address(stor6[idx].field_0)] / 100)
            continue 
        require sub_45add95a[uint8(stor18.field_0)][address(stor6[idx].field_0)] / rate * totalFund / stor[_54] * stor6.length / totalFund / stor[_54] * stor6.length == sub_45add95a[uint8(stor18.field_0)][address(stor6[idx].field_0)] / rate
        require sub_45add95a[uint8(stor18.field_0)][address(stor6[idx].field_0)] <= sub_45add95a[uint8(stor18.field_0)][address(stor6[idx].field_0)] / rate * totalFund / stor[_54] * stor6.length
        mem[32] = sha3(sub_fd51deae, 3)
        if not (sub_45add95a[uint8(stor18.field_0)][address(stor6[idx].field_0)] / rate * totalFund / stor[_54] * stor6.length) - sub_45add95a[uint8(stor18.field_0)][address(stor6[idx].field_0)]:
            require idx < stor6.length
            mem[0] = 6
            require msg.sender == owner
            call address(stor6[idx].field_0) with:
               value sub_45add95a[uint8(stor18.field_0)][address(stor6[idx].field_0)] wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
                mem[96] = address(stor6[idx].field_0)
                mem[128] = sub_45add95a[uint8(stor18.field_0)][address(stor6[idx].field_0)]
                emit 0xfde21004: address(stor6[idx].field_0), sub_45add95a[uint8(stor18.field_0)][address(stor6[idx].field_0)]
            idx = idx + 1
            s = sub_45add95a[uint8(stor18.field_0)][address(stor6[idx].field_0)]
            continue 
        if not (sub_45add95a[uint8(stor18.field_0)][address(stor6[idx].field_0)] / rate * totalFund / stor[_54] * stor6.length) - sub_45add95a[uint8(stor18.field_0)][address(stor6[idx].field_0)]:
            require sub_45add95a[uint8(stor18.field_0)][address(stor6[idx].field_0)] >= 0
            require idx < stor6.length
            mem[0] = 6
            require msg.sender == owner
            call address(stor6[idx].field_0) with:
               value sub_45add95a[uint8(stor18.field_0)][address(stor6[idx].field_0)] wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
                mem[96] = address(stor6[idx].field_0)
                mem[128] = sub_45add95a[uint8(stor18.field_0)][address(stor6[idx].field_0)]
                emit 0xfde21004: address(stor6[idx].field_0), sub_45add95a[uint8(stor18.field_0)][address(stor6[idx].field_0)]
            idx = idx + 1
            s = sub_45add95a[uint8(stor18.field_0)][address(stor6[idx].field_0)]
            continue 
        require (sub_45add95a[uint8(stor18.field_0)][address(stor6[idx].field_0)] / rate * totalFund / stor[_54] * stor6.length * uint256(stor14.field_0)) - (sub_45add95a[uint8(stor18.field_0)][address(stor6[idx].field_0)] * uint256(stor14.field_0)) / (sub_45add95a[uint8(stor18.field_0)][address(stor6[idx].field_0)] / rate * totalFund / stor[_54] * stor6.length) - sub_45add95a[uint8(stor18.field_0)][address(stor6[idx].field_0)] == uint256(stor14.field_0)
        require sub_45add95a[uint8(stor18.field_0)][address(stor6[idx].field_0)] + ((sub_45add95a[uint8(stor18.field_0)][address(stor6[idx].field_0)] / rate * totalFund / stor[_54] * stor6.length * uint256(stor14.field_0)) - (sub_45add95a[uint8(stor18.field_0)][address(stor6[idx].field_0)] * uint256(stor14.field_0)) / 100) >= (sub_45add95a[uint8(stor18.field_0)][address(stor6[idx].field_0)] / rate * totalFund / stor[_54] * stor6.length * uint256(stor14.field_0)) - (sub_45add95a[uint8(stor18.field_0)][address(stor6[idx].field_0)] * uint256(stor14.field_0)) / 100
        require idx < stor6.length
        mem[0] = 6
        require msg.sender == owner
        call address(stor6[idx].field_0) with:
           value sub_45add95a[uint8(stor18.field_0)][address(stor6[idx].field_0)] + ((sub_45add95a[uint8(stor18.field_0)][address(stor6[idx].field_0)] / rate * totalFund / stor[_54] * stor6.length * uint256(stor14.field_0)) - (sub_45add95a[uint8(stor18.field_0)][address(stor6[idx].field_0)] * uint256(stor14.field_0)) / 100) wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
            mem[96] = address(stor6[idx].field_0)
            mem[128] = sub_45add95a[uint8(stor18.field_0)][address(stor6[idx].field_0)] + ((sub_45add95a[uint8(stor18.field_0)][address(stor6[idx].field_0)] / rate * totalFund / stor[_54] * stor6.length * uint256(stor14.field_0)) - (sub_45add95a[uint8(stor18.field_0)][address(stor6[idx].field_0)] * uint256(stor14.field_0)) / 100)
            emit 0xfde21004: address(stor6[idx].field_0), sub_45add95a[uint8(stor18.field_0)][address(stor6[idx].field_0)] + ((sub_45add95a[uint8(stor18.field_0)][address(stor6[idx].field_0)] / rate * totalFund / stor[_54] * stor6.length * uint256(stor14.field_0)) - (sub_45add95a[uint8(stor18.field_0)][address(stor6[idx].field_0)] * uint256(stor14.field_0)) / 100)
        idx = idx + 1
        s = sub_45add95a[uint8(stor18.field_0)][address(stor6[idx].field_0)] + ((sub_45add95a[uint8(stor18.field_0)][address(stor6[idx].field_0)] / rate * totalFund / stor[_54] * stor6.length * uint256(stor14.field_0)) - (sub_45add95a[uint8(stor18.field_0)][address(stor6[idx].field_0)] * uint256(stor14.field_0)) / 100)
        continue 
    uint8(stor18.field_32) = 1
}



}
