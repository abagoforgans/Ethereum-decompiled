contract main {


// =======================  Init code  ======================


bool stor2; offset 256
uint8 stor2; offset 160
uint8 stor2; offset 168
uint128 stor2; offset 176
address stor2;
uint256 stor3;

function _fallback() payable {
    uint8(stor2.field_160) = 1
    uint8(stor2.field_168) = 0
    Mask(80, 0, stor2.field_176) = 0
    stor2.field_256 % 1 = 0
    stor3 = 0
    require not msg.value
    address(stor2.field_0) = msg.sender
    return code.data[116 len 3228]
}



// =====================  Runtime code  =====================


array of struct stor0;
mapping of uint256 _foreign_balance;
uint8 stor2; offset 160
uint8 last_slot; offset 168
address adminAddress;
uint256 start_ts;

function is_alive() {
    return bool(uint8(stor2.field_160))
}

function get_foreign_balance(address arg1) {
    return _foreign_balance[address(arg1)]
}

function last_slot() {
    return last_slot
}

function get_balance() {
    return _foreign_balance[address(msg.sender)]
}

function start_ts() {
    return start_ts
}

function admin() {
    return adminAddress
}

function set_admin(address arg1) {
    require adminAddress == msg.sender
    adminAddress = arg1
}

function bids(uint256 arg1) {
    require arg1 < stor0.length
    return stor0[arg1].field_0, stor0[arg1].field_0, stor0[arg1].field_168
}

function is_slot_in_bid(uint8 arg1, uint8 arg2, uint8 arg3) {
    if arg3 >= arg1:
        if arg3 < arg2:
            return 1
        else:
            return 0
    else:
        return 0
}

function destruct() {
    require adminAddress == msg.sender
    call adminAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    uint8(stor2.field_160) = 0
}

function withdraw() {
    require uint8(stor2.field_160)
    require _foreign_balance[address(msg.sender)] > 0
    _foreign_balance[address(msg.sender)] = 0
    call msg.sender with:
       value _foreign_balance[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function reset() {
    require adminAddress == msg.sender
    require block.timestamp > start_ts + (168 * 24 * 3600)
    require 10^16 * last_slot / 10^16 == last_slot
    call adminAddress with:
       value 10^16 * last_slot wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    start_ts = block.timestamp
    last_slot = 0
    stor0.length = 0
    idx = 0
    while stor0.length > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
}

function search_winner_bid_address(uint8 arg1) payable {
    mem[64] = 96
    require not msg.value
    if arg1 < 128:
        if uint8(var20001) < stor0.length:
            mem[0] = 0
            if arg1 < stor0[uint8(var20001)].field_160:
                var20001 = var20001 + 1
                continue 
            if arg1 >= stor0[uint8(var20001)].field_168:
                var20001 = var20001 + 1
                continue 
            if uint8(var20001) < stor0.length:
                return stor0[uint8(var20001)].field_0
    else:
        if uint8(var20001) >= 0:
            if uint8(var20001) < stor0.length:
                mem[0] = 0
                if arg1 < stor0[uint8(var20001)].field_160:
                    var20001 = var20001 - 1
                    continue 
                if arg1 >= stor0[uint8(var20001)].field_168:
                    var20001 = var20001 - 1
                    continue 
                if uint8(var20001) < stor0.length:
                    return stor0[uint8(var20001)].field_0
    revert
}

function _fallback() payable {
    require uint8(stor2.field_160)
    require msg.value >= 10^16
    if msg.value % 10^16 <= 0:
        if uint8(msg.value / 10^16) < uint8(-last_slot + 100):
            stor0.length++
            if not stor0.length <= stor0.length + 1:
                idx = stor0.length + 1
                while stor0.length > idx:
                    stor0[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            stor0[stor0.length].field_0 = msg.sender
            stor0[stor0.length].field_160 = last_slot
            stor0[stor0.length].field_168 = uint8((msg.value / 10^16) + last_slot)
            require 2 * 10^15 * uint8(msg.value / 10^16) / 2 * 10^15 == uint8(msg.value / 10^16)
            require (2 * 10^15 * uint8(msg.value / 10^16)) + _foreign_balance[address(stor2.field_0)] >= _foreign_balance[address(stor2.field_0)]
            _foreign_balance[address(stor2.field_0)] += 2 * 10^15 * uint8(msg.value / 10^16)
            last_slot = uint8((msg.value / 10^16) + last_slot)
        else:
            if uint8(msg.value / 10^16) <= uint8(-last_slot + 199):
                stor0.length++
                if not stor0.length > stor0.length + 1:
                    stor0[stor0.length].field_0 = msg.sender
                    stor0[stor0.length].field_160 = last_slot
                    stor0[stor0.length].field_168 = 100
                    require 2 * 10^15 * uint8(-last_slot + 100) / 2 * 10^15 == uint8(-last_slot + 100)
                    require (2 * 10^15 * uint8(-last_slot + 100)) + _foreign_balance[address(stor2.field_0)] >= _foreign_balance[address(stor2.field_0)]
                    _foreign_balance[address(stor2.field_0)] += 2 * 10^15 * uint8(-last_slot + 100)
                    last_slot = 100
                    hash = ripemd160hash(block.timestamp, block.number, msg.sender) 
                    require ripemd160hash.result
                    s = 0
                    idx = 0
                    while uint8(idx) < 20:
                        require uint8(var56001) < stor0.length
                        mem[0] = 0
                        if 0 < stor0[uint8(var56001)].field_160:
                            var56001 = var56001 + 1
                            continue 
                        if 0 >= stor0[uint8(var56001)].field_168:
                            var56001 = var56001 + 1
                            continue 
                        require uint8(var56001) < stor0.length
                        require _foreign_balance[stor0[uint8(var56001)].field_0] + 4 * 10^16 >= _foreign_balance[stor0[uint8(var56001)].field_0]
                        mem[0] = stor0[uint8(var56001)].field_0
                        mem[32] = 1
                        _foreign_balance[stor0[uint8(var56001)].field_0] += 4 * 10^16
                        s = stor0[uint8(var56001)].field_0
                        idx = idx + 1
                        continue 
                else:
                    idx = stor0.length + 1
                    while stor0.length > idx:
                        stor0[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    stor0[stor0.length].field_0 = msg.sender
                    stor0[stor0.length].field_160 = last_slot
                    stor0[stor0.length].field_168 = 100
                    require 2 * 10^15 * uint8(-last_slot + 100) / 2 * 10^15 == uint8(-last_slot + 100)
                    require (2 * 10^15 * uint8(-last_slot + 100)) + _foreign_balance[address(stor2.field_0)] >= _foreign_balance[address(stor2.field_0)]
                    _foreign_balance[address(stor2.field_0)] += 2 * 10^15 * uint8(-last_slot + 100)
                    last_slot = 100
                    hash = ripemd160hash(block.timestamp, block.number, msg.sender) 
                    require ripemd160hash.result
                    s = 0
                    idx = 0
                    while uint8(idx) < 20:
                        require uint8(var62001) < stor0.length
                        mem[0] = 0
                        if 0 < stor0[uint8(var62001)].field_160:
                            var62001 = var62001 + 1
                            continue 
                        if 0 >= stor0[uint8(var62001)].field_168:
                            var62001 = var62001 + 1
                            continue 
                        require uint8(var62001) < stor0.length
                        require _foreign_balance[stor0[uint8(var62001)].field_0] + 4 * 10^16 >= _foreign_balance[stor0[uint8(var62001)].field_0]
                        mem[0] = stor0[uint8(var62001)].field_0
                        mem[32] = 1
                        _foreign_balance[stor0[uint8(var62001)].field_0] += 4 * 10^16
                        s = stor0[uint8(var62001)].field_0
                        idx = idx + 1
                        continue 
                start_ts = block.timestamp
                last_slot = 0
                stor0.length = 0
                idx = 0
                while stor0.length > idx:
                    stor0[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                if uint8((msg.value / 10^16) + last_slot - 100) > 0:
                    stor0.length++
                    if not stor0.length <= stor0.length + 1:
                        idx = stor0.length + 1
                        while stor0.length > idx:
                            stor0[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    stor0[stor0.length].field_0 = msg.sender
                    stor0[stor0.length].field_160 = last_slot
                    stor0[stor0.length].field_168 = uint8((msg.value / 10^16) + (2 * last_slot) - 100)
                    require 2 * 10^15 * uint8((msg.value / 10^16) + last_slot - 100) / 2 * 10^15 == uint8((msg.value / 10^16) + last_slot - 100)
                    require (2 * 10^15 * uint8((msg.value / 10^16) + last_slot - 100)) + _foreign_balance[address(stor2.field_0)] >= _foreign_balance[address(stor2.field_0)]
                    _foreign_balance[address(stor2.field_0)] += 2 * 10^15 * uint8((msg.value / 10^16) + last_slot - 100)
                    last_slot = uint8((msg.value / 10^16) + (2 * last_slot) - 100)
            else:
                require 10^16 * uint8(-last_slot + 199) / 10^16 == uint8(-last_slot + 199)
                require 10^16 * uint8(-last_slot + 199) <= msg.value
                require msg.value - (10^16 * uint8(-last_slot + 199)) + _foreign_balance[address(stor2.field_0)] >= _foreign_balance[address(stor2.field_0)]
                _foreign_balance[address(stor2.field_0)] = msg.value - (10^16 * uint8(-last_slot + 199)) + _foreign_balance[address(stor2.field_0)]
                stor0.length++
                if not stor0.length > stor0.length + 1:
                    stor0[stor0.length].field_0 = msg.sender
                    stor0[stor0.length].field_160 = last_slot
                    stor0[stor0.length].field_168 = 100
                    require 2 * 10^15 * uint8(-last_slot + 100) / 2 * 10^15 == uint8(-last_slot + 100)
                    require (2 * 10^15 * uint8(-last_slot + 100)) + _foreign_balance[address(stor2.field_0)] >= _foreign_balance[address(stor2.field_0)]
                    _foreign_balance[address(stor2.field_0)] += 2 * 10^15 * uint8(-last_slot + 100)
                    last_slot = 100
                    hash = ripemd160hash(block.timestamp, block.number, msg.sender) 
                    require ripemd160hash.result
                    s = 0
                    idx = 0
                    while uint8(idx) < 20:
                        require uint8(var75001) < stor0.length
                        mem[0] = 0
                        if 0 < stor0[uint8(var75001)].field_160:
                            var75001 = var75001 + 1
                            continue 
                        if 0 >= stor0[uint8(var75001)].field_168:
                            var75001 = var75001 + 1
                            continue 
                        require uint8(var75001) < stor0.length
                        require _foreign_balance[stor0[uint8(var75001)].field_0] + 4 * 10^16 >= _foreign_balance[stor0[uint8(var75001)].field_0]
                        mem[0] = stor0[uint8(var75001)].field_0
                        mem[32] = 1
                        _foreign_balance[stor0[uint8(var75001)].field_0] += 4 * 10^16
                        s = stor0[uint8(var75001)].field_0
                        idx = idx + 1
                        continue 
                else:
                    idx = stor0.length + 1
                    while stor0.length > idx:
                        stor0[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    stor0[stor0.length].field_0 = msg.sender
                    stor0[stor0.length].field_160 = last_slot
                    stor0[stor0.length].field_168 = 100
                    require 2 * 10^15 * uint8(-last_slot + 100) / 2 * 10^15 == uint8(-last_slot + 100)
                    require (2 * 10^15 * uint8(-last_slot + 100)) + _foreign_balance[address(stor2.field_0)] >= _foreign_balance[address(stor2.field_0)]
                    _foreign_balance[address(stor2.field_0)] += 2 * 10^15 * uint8(-last_slot + 100)
                    last_slot = 100
                    hash = ripemd160hash(block.timestamp, block.number, msg.sender) 
                    require ripemd160hash.result
                    s = 0
                    idx = 0
                    while uint8(idx) < 20:
                        require uint8(var81001) < stor0.length
                        mem[0] = 0
                        if 0 < stor0[uint8(var81001)].field_160:
                            var81001 = var81001 + 1
                            continue 
                        if 0 >= stor0[uint8(var81001)].field_168:
                            var81001 = var81001 + 1
                            continue 
                        require uint8(var81001) < stor0.length
                        require _foreign_balance[stor0[uint8(var81001)].field_0] + 4 * 10^16 >= _foreign_balance[stor0[uint8(var81001)].field_0]
                        mem[0] = stor0[uint8(var81001)].field_0
                        mem[32] = 1
                        _foreign_balance[stor0[uint8(var81001)].field_0] += 4 * 10^16
                        s = stor0[uint8(var81001)].field_0
                        idx = idx + 1
                        continue 
                start_ts = block.timestamp
                last_slot = 0
                stor0.length = 0
                idx = 0
                while stor0.length > idx:
                    stor0[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                stor0.length++
                if not stor0.length <= stor0.length + 1:
                    idx = stor0.length + 1
                    while stor0.length > idx:
                        stor0[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                stor0[stor0.length].field_0 = msg.sender
                stor0[stor0.length].field_160 = last_slot
                stor0[stor0.length].field_168 = uint8(last_slot + 99)
                require _foreign_balance[address(stor2.field_0)] + (55 * 10^12 * 3600) >= _foreign_balance[address(stor2.field_0)]
                _foreign_balance[address(stor2.field_0)] += 55 * 10^12 * 3600
                last_slot = uint8(last_slot + 99)
    else:
        require (msg.value % 10^16) + _foreign_balance[address(stor2.field_0)] >= _foreign_balance[address(stor2.field_0)]
        _foreign_balance[address(stor2.field_0)] += msg.value % 10^16
        require msg.value % 10^16 <= msg.value
        if uint8(msg.value - (msg.value % 10^16) / 10^16) < uint8(-last_slot + 100):
            stor0.length++
            if not stor0.length <= stor0.length + 1:
                idx = stor0.length + 1
                while stor0.length > idx:
                    stor0[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            stor0[stor0.length].field_0 = msg.sender
            stor0[stor0.length].field_160 = last_slot
            stor0[stor0.length].field_168 = uint8((msg.value - (msg.value % 10^16) / 10^16) + last_slot)
            require 2 * 10^15 * uint8(msg.value - (msg.value % 10^16) / 10^16) / 2 * 10^15 == uint8(msg.value - (msg.value % 10^16) / 10^16)
            require (2 * 10^15 * uint8(msg.value - (msg.value % 10^16) / 10^16)) + _foreign_balance[address(stor2.field_0)] >= _foreign_balance[address(stor2.field_0)]
            _foreign_balance[address(stor2.field_0)] += 2 * 10^15 * uint8(msg.value - (msg.value % 10^16) / 10^16)
            last_slot = uint8((msg.value - (msg.value % 10^16) / 10^16) + last_slot)
        else:
            if uint8(msg.value - (msg.value % 10^16) / 10^16) <= uint8(-last_slot + 199):
                stor0.length++
                if not stor0.length > stor0.length + 1:
                    stor0[stor0.length].field_0 = msg.sender
                    stor0[stor0.length].field_160 = last_slot
                    stor0[stor0.length].field_168 = 100
                    require 2 * 10^15 * uint8(-last_slot + 100) / 2 * 10^15 == uint8(-last_slot + 100)
                    require (2 * 10^15 * uint8(-last_slot + 100)) + _foreign_balance[address(stor2.field_0)] >= _foreign_balance[address(stor2.field_0)]
                    _foreign_balance[address(stor2.field_0)] += 2 * 10^15 * uint8(-last_slot + 100)
                    last_slot = 100
                    hash = ripemd160hash(block.timestamp, block.number, msg.sender) 
                    require ripemd160hash.result
                    s = 0
                    idx = 0
                    while uint8(idx) < 20:
                        require uint8(var68001) < stor0.length
                        mem[0] = 0
                        if 0 < stor0[uint8(var68001)].field_160:
                            var68001 = var68001 + 1
                            continue 
                        if 0 >= stor0[uint8(var68001)].field_168:
                            var68001 = var68001 + 1
                            continue 
                        require uint8(var68001) < stor0.length
                        require _foreign_balance[stor0[uint8(var68001)].field_0] + 4 * 10^16 >= _foreign_balance[stor0[uint8(var68001)].field_0]
                        mem[0] = stor0[uint8(var68001)].field_0
                        mem[32] = 1
                        _foreign_balance[stor0[uint8(var68001)].field_0] += 4 * 10^16
                        s = stor0[uint8(var68001)].field_0
                        idx = idx + 1
                        continue 
                else:
                    idx = stor0.length + 1
                    while stor0.length > idx:
                        stor0[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    stor0[stor0.length].field_0 = msg.sender
                    stor0[stor0.length].field_160 = last_slot
                    stor0[stor0.length].field_168 = 100
                    require 2 * 10^15 * uint8(-last_slot + 100) / 2 * 10^15 == uint8(-last_slot + 100)
                    require (2 * 10^15 * uint8(-last_slot + 100)) + _foreign_balance[address(stor2.field_0)] >= _foreign_balance[address(stor2.field_0)]
                    _foreign_balance[address(stor2.field_0)] += 2 * 10^15 * uint8(-last_slot + 100)
                    last_slot = 100
                    hash = ripemd160hash(block.timestamp, block.number, msg.sender) 
                    require ripemd160hash.result
                    s = 0
                    idx = 0
                    while uint8(idx) < 20:
                        require uint8(var74001) < stor0.length
                        mem[0] = 0
                        if 0 < stor0[uint8(var74001)].field_160:
                            var74001 = var74001 + 1
                            continue 
                        if 0 >= stor0[uint8(var74001)].field_168:
                            var74001 = var74001 + 1
                            continue 
                        require uint8(var74001) < stor0.length
                        require _foreign_balance[stor0[uint8(var74001)].field_0] + 4 * 10^16 >= _foreign_balance[stor0[uint8(var74001)].field_0]
                        mem[0] = stor0[uint8(var74001)].field_0
                        mem[32] = 1
                        _foreign_balance[stor0[uint8(var74001)].field_0] += 4 * 10^16
                        s = stor0[uint8(var74001)].field_0
                        idx = idx + 1
                        continue 
                start_ts = block.timestamp
                last_slot = 0
                stor0.length = 0
                idx = 0
                while stor0.length > idx:
                    stor0[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                if uint8((msg.value - (msg.value % 10^16) / 10^16) + last_slot - 100) > 0:
                    stor0.length++
                    if not stor0.length <= stor0.length + 1:
                        idx = stor0.length + 1
                        while stor0.length > idx:
                            stor0[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    stor0[stor0.length].field_0 = msg.sender
                    stor0[stor0.length].field_160 = last_slot
                    stor0[stor0.length].field_168 = uint8((msg.value - (msg.value % 10^16) / 10^16) + (2 * last_slot) - 100)
                    require 2 * 10^15 * uint8((msg.value - (msg.value % 10^16) / 10^16) + last_slot - 100) / 2 * 10^15 == uint8((msg.value - (msg.value % 10^16) / 10^16) + last_slot - 100)
                    require (2 * 10^15 * uint8((msg.value - (msg.value % 10^16) / 10^16) + last_slot - 100)) + _foreign_balance[address(stor2.field_0)] >= _foreign_balance[address(stor2.field_0)]
                    _foreign_balance[address(stor2.field_0)] += 2 * 10^15 * uint8((msg.value - (msg.value % 10^16) / 10^16) + last_slot - 100)
                    last_slot = uint8((msg.value - (msg.value % 10^16) / 10^16) + (2 * last_slot) - 100)
            else:
                require 10^16 * uint8(-last_slot + 199) / 10^16 == uint8(-last_slot + 199)
                require 10^16 * uint8(-last_slot + 199) <= msg.value - (msg.value % 10^16)
                require msg.value - (msg.value % 10^16) - (10^16 * uint8(-last_slot + 199)) + _foreign_balance[address(stor2.field_0)] >= _foreign_balance[address(stor2.field_0)]
                _foreign_balance[address(stor2.field_0)] = msg.value - (msg.value % 10^16) - (10^16 * uint8(-last_slot + 199)) + _foreign_balance[address(stor2.field_0)]
                stor0.length++
                if not stor0.length > stor0.length + 1:
                    stor0[stor0.length].field_0 = msg.sender
                    stor0[stor0.length].field_160 = last_slot
                    stor0[stor0.length].field_168 = 100
                    require 2 * 10^15 * uint8(-last_slot + 100) / 2 * 10^15 == uint8(-last_slot + 100)
                    require (2 * 10^15 * uint8(-last_slot + 100)) + _foreign_balance[address(stor2.field_0)] >= _foreign_balance[address(stor2.field_0)]
                    _foreign_balance[address(stor2.field_0)] += 2 * 10^15 * uint8(-last_slot + 100)
                    last_slot = 100
                    hash = ripemd160hash(block.timestamp, block.number, msg.sender) 
                    require ripemd160hash.result
                    s = 0
                    idx = 0
                    while uint8(idx) < 20:
                        require uint8(var87001) < stor0.length
                        mem[0] = 0
                        if 0 < stor0[uint8(var87001)].field_160:
                            var87001 = var87001 + 1
                            continue 
                        if 0 >= stor0[uint8(var87001)].field_168:
                            var87001 = var87001 + 1
                            continue 
                        require uint8(var87001) < stor0.length
                        require _foreign_balance[stor0[uint8(var87001)].field_0] + 4 * 10^16 >= _foreign_balance[stor0[uint8(var87001)].field_0]
                        mem[0] = stor0[uint8(var87001)].field_0
                        mem[32] = 1
                        _foreign_balance[stor0[uint8(var87001)].field_0] += 4 * 10^16
                        s = stor0[uint8(var87001)].field_0
                        idx = idx + 1
                        continue 
                else:
                    idx = stor0.length + 1
                    while stor0.length > idx:
                        stor0[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    stor0[stor0.length].field_0 = msg.sender
                    stor0[stor0.length].field_160 = last_slot
                    stor0[stor0.length].field_168 = 100
                    require 2 * 10^15 * uint8(-last_slot + 100) / 2 * 10^15 == uint8(-last_slot + 100)
                    require (2 * 10^15 * uint8(-last_slot + 100)) + _foreign_balance[address(stor2.field_0)] >= _foreign_balance[address(stor2.field_0)]
                    _foreign_balance[address(stor2.field_0)] += 2 * 10^15 * uint8(-last_slot + 100)
                    last_slot = 100
                    hash = ripemd160hash(block.timestamp, block.number, msg.sender) 
                    require ripemd160hash.result
                    s = 0
                    idx = 0
                    while uint8(idx) < 20:
                        require uint8(var93001) < stor0.length
                        mem[0] = 0
                        if 0 < stor0[uint8(var93001)].field_160:
                            var93001 = var93001 + 1
                            continue 
                        if 0 >= stor0[uint8(var93001)].field_168:
                            var93001 = var93001 + 1
                            continue 
                        require uint8(var93001) < stor0.length
                        require _foreign_balance[stor0[uint8(var93001)].field_0] + 4 * 10^16 >= _foreign_balance[stor0[uint8(var93001)].field_0]
                        mem[0] = stor0[uint8(var93001)].field_0
                        mem[32] = 1
                        _foreign_balance[stor0[uint8(var93001)].field_0] += 4 * 10^16
                        s = stor0[uint8(var93001)].field_0
                        idx = idx + 1
                        continue 
                start_ts = block.timestamp
                last_slot = 0
                stor0.length = 0
                idx = 0
                while stor0.length > idx:
                    stor0[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                stor0.length++
                if not stor0.length <= stor0.length + 1:
                    idx = stor0.length + 1
                    while stor0.length > idx:
                        stor0[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                stor0[stor0.length].field_0 = msg.sender
                stor0[stor0.length].field_160 = last_slot
                stor0[stor0.length].field_168 = uint8(last_slot + 99)
                require _foreign_balance[address(stor2.field_0)] + (55 * 10^12 * 3600) >= _foreign_balance[address(stor2.field_0)]
                _foreign_balance[address(stor2.field_0)] += 55 * 10^12 * 3600
                last_slot = uint8(last_slot + 99)
}



}
