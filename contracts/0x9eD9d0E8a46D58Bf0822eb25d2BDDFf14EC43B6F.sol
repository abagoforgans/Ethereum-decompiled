contract main {


// =======================  Init code  ======================


uint256 stor4;
address stor6;
address stor7;
uint256 stor8;
uint8 stor9;

function _fallback() payable {
    stor4 = 0
    stor8 = 95
    if code.data[8875 len 20] > 0:
        stor6 = code.data[8875 len 20]
    else:
        stor6 = msg.sender
    stor7 = msg.sender
    stor9 = 0
    return code.data[286 len 8577]
}



// =====================  Runtime code  =====================


#
#  - nextState()
#
mapping of struct sub_69532e1b;
array of struct sub_03f744cb;
mapping of uint256 sub_a8007363;
array of uint8 stor3;
uint256 voteCounter;
array of address sub_eb1d440d;
address owner;
address cashierAddress;
uint256 sub_a4b8eedf;
uint8 state;

function sub_03f744cb(?) {
    require arg1 < sub_03f744cb.length
    return address(sub_03f744cb[arg1].field_0)
}

function cashierAddress() {
    return cashierAddress
}

function voteCounter() {
    return voteCounter
}

function sub_69532e1b(?) {
    return sub_69532e1b[arg1][0 len sub_69532e1b[arg1].length].field_0
}

function owner() {
    return owner
}

function sub_a21e7d99(?) {
    return sub_03f744cb.length
}

function sub_a4b8eedf(?) {
    return sub_a4b8eedf
}

function sub_a8007363(?) {
    return sub_a8007363[arg1]
}

function sub_ae17b11f(?) {
    require arg1 < stor3.length
    return sub_ae17b11f[uint8(arg1)]
}

function state() {
    return state
}

function sub_eb1d440d(?) {
    require arg1 < sub_eb1d440d.length
    return sub_eb1d440d[arg1]
}

function _fallback() payable {
    revert 
}

function sub_90868293(?) {
    require msg.sender == owner
    sub_a4b8eedf = arg1
}

function changeOwner(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function setCashier(address arg1) {
    require msg.sender == owner
    cashierAddress = arg1
}

function sub_fb69b2d3(?) payable {
    voteCounter++
    sub_a8007363[address(arg1)] += msg.value
    emit 0x7dd2f5e9 
}

function sub_1305874c(?) {
    if arg1 == arg2:
        if arg2 == arg3:
            return 1, 3, 1, 3, 1, 3
        if arg1 == arg2:
            return 4, 10, 4, 10, 2, 10
    if arg2 != arg3:
        return 5, 10, 3, 10, 2, 10
    return 5, 10, 1, 4, 1, 4
}

function sub_f61bf945(?) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if sub_03f744cb.length < 3:
    idx = 0
    while idx < arg1.length - 1:
        require idx < sub_03f744cb.length
        mem[0] = 1
        require idx < arg1.length
        call address(sub_03f744cb[idx].field_0) with:
           value mem[(32 * idx) + 128] wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        idx = idx + 1
        continue 
    if arg1.length - 1 < sub_03f744cb.length:
        call address(sub_03f744cb[arg1.length].field_0) with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
    revert 
}

function removeCharity(address arg1) {
    require msg.sender == owner
    idx = 0
    while idx < sub_03f744cb.length:
        mem[0] = 1
        if address(sub_03f744cb[idx].field_0) != arg1:
            idx = idx + 1
            continue 
        require sub_03f744cb.length - 1 < sub_03f744cb.length
        if idx == sub_03f744cb.length - 1:
            require idx < sub_03f744cb.length
            uint64(sub_03f744cb[idx].field_0) = uint64(sub_03f744cb[sub_03f744cb.length].field_0)
            Mask(96, 0, sub_03f744cb[idx].field_64) = 0
        address(sub_03f744cb[sub_03f744cb.length].field_0) = 0
        sub_69532e1b[address(arg1)].field_0 = 0
        if 31 < sub_69532e1b[address(arg1)].length:
            idx = sha3(sha3(address(arg1), 0))
            while sha3(sha3(address(arg1), 0)) + (sub_69532e1b[address(arg1)].length + 31 / 32) > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        sub_03f744cb.length--
        if not sub_03f744cb.length <= sub_03f744cb.length - 1:
            idx = sha3(1) + sub_03f744cb.length - 1
            while sha3(1) + sub_03f744cb.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        return 1
    return 0
}

function sub_9a19521c(?) {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    require msg.sender == owner
    if arg1.length > 0:
        s = 0
        idx = 0
        while idx < sub_03f744cb.length:
            mem[0] = address(sub_03f744cb[idx].field_0)
            mem[32] = 0
            if sub_69532e1b[address(stor1[idx].field_0)].length == arg1.length:
                s = 0
                while s <= arg1.length:
                    if s == arg1.length:
                    require s < arg1.length
                    require s < sub_69532e1b[address(stor1[idx].field_0)].length
                    if not bool(sub_69532e1b[address(stor1[idx].field_0)].field_0):
                        if Mask(8, -(('field', 3, ('stor', ('map', ('type', 160, ('field', 0, ('stor', ('array', ('var', 0), ('name', 'stor1', 1))))), ('name', 'sub_69532e1b', 0)))), 0) + 256, s) << (('field', 3, ('stor', ('map', ('type', 160, ('field', 0, ('stor', ('array', ('var', 0), ('name', 'stor1', 1))))), ('name', 'sub_69532e1b', 0)))), 0) - 8 == Mask(8, 248, mem[s + 128]):
                            s = s + 1
                            continue 
                    else:
                        mem[0] = sha3(address(sub_03f744cb[idx].field_0), 0)
                        if Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('var', 1)), ('map', ('type', 160, ('field', 0, ('stor', ('array', ('var', 0), ('name', 'stor1', 1))))), ('name', 'sub_69532e1b', 0))))), 0) + 256, s % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('var', 1)), ('map', ('type', 160, ('field', 0, ('stor', ('array', ('var', 0), ('name', 'stor1', 1))))), ('name', 'sub_69532e1b', 0))))), 0) - 8 == Mask(8, 248, mem[s + 128]):
                            s = s + 1
                            continue 
                    s = sha3(address(sub_03f744cb[idx].field_0), 0)
                    idx = idx + 1
                    continue 
            s = sha3(address(sub_03f744cb[idx].field_0), 0)
            idx = idx + 1
            continue 
        if not Mask(255, 1, (256 * not bool(sub_69532e1b[address(arg2)].field_0)) - 1 and sub_69532e1b[address(arg2)].field_0):
            sub_03f744cb.length++
            if not sub_03f744cb.length <= sub_03f744cb.length + 1:
                idx = sub_03f744cb.length + 1
                while sub_03f744cb.length > idx:
                    sub_03f744cb[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            address(sub_03f744cb[sub_03f744cb.length].field_0) = arg2
        sub_69532e1b[address(arg2)][].field_0 = Array(len=arg1.length, data=arg1[all])
}

function sub_6f712d6c(?) {
    mem[96] = 0
    mem[128 len 160] = 0
    mem[288] = 0
    mem[320 len 160] = 0
    require 0 < stor3.length
    require uint8(stor3.field_0) < sub_03f744cb.length
    require 1 < stor3.length
    require uint8(stor3.field_8) < sub_03f744cb.length
    require 2 < stor3.length
    require uint8(stor3.field_16) < sub_03f744cb.length
    mem[480] = 0
    mem[512 len 160] = 0
    mem[64] = 864
    if sub_a8007363[address(stor1[uint8(stor3.field_0)].field_0)] != sub_a8007363[address(stor1[uint8(stor3.field_8)].field_0)]:
        mem[672] = 5
        mem[704] = 10
        if sub_a8007363[address(stor1[uint8(stor3.field_8)].field_0)] != sub_a8007363[address(stor1[uint8(stor3.field_16)].field_0)]:
            mem[736] = 3
            mem[768] = 10
            mem[800] = 2
            mem[832] = 10
        else:
            mem[736] = 1
            mem[768] = 4
            mem[800] = 1
            mem[832] = 4
    else:
        if sub_a8007363[address(stor1[uint8(stor3.field_8)].field_0)] == sub_a8007363[address(stor1[uint8(stor3.field_16)].field_0)]:
            mem[672] = 1
            mem[704] = 3
            mem[736] = 1
            mem[768] = 3
            mem[800] = 1
            mem[832] = 3
        else:
            if sub_a8007363[address(stor1[uint8(stor3.field_0)].field_0)] == sub_a8007363[address(stor1[uint8(stor3.field_8)].field_0)]:
                mem[672] = 4
                mem[704] = 10
                mem[736] = 4
                mem[768] = 10
                mem[800] = 2
                mem[832] = 10
            else:
                mem[672] = 5
                mem[704] = 10
                if sub_a8007363[address(stor1[uint8(stor3.field_8)].field_0)] != sub_a8007363[address(stor1[uint8(stor3.field_16)].field_0)]:
                    mem[736] = 3
                    mem[768] = 10
                    mem[800] = 2
                    mem[832] = 10
                else:
                    mem[736] = 1
                    mem[768] = 4
                    mem[800] = 1
                    mem[832] = 4
    idx = 0
    while idx < stor3.length:
        require 2 * idx < 6
        require idx < stor3.length
        require 2 * stor3[0.03125 / idx].field_0 / 256^(idx % 32) % 128 < 6
        mem[(64 * stor3[0.03125 / idx].field_0 / 256^(idx % 32) % 128) + 96] = mem[(64 * idx) + 703 len 1]
        require (2 * idx) + 1 < 6
        require idx < stor3.length
        mem[0] = 3
        require uint8((2 * uint8(stor3[0.03125 / idx].field_0 / 256^(idx % 32))) + 1) < 6
        mem[(32 * uint8((2 * uint8(stor3[0.03125 / idx].field_0 / 256^(idx % 32))) + 1)) + 96] = mem[(32 * (2 * idx) + 1) + 703 len 1]
        idx = idx + 1
        continue 
    mem[mem[64] len 192] = mem[96 len 192]
    return memory
      from mem[64]
       len 192
}

function calculateWinner() {
    mem[160] = sub_03f744cb.length
    idx = 0
    while uint8(idx) < sub_03f744cb.length:
        require uint8(idx) < mem[160]
        mem[(32 * uint8(idx)) + 192] = uint8(idx)
        idx = idx + 1
        continue 
    if not sub_03f744cb.length:
        s = 0
        idx = 0
        while idx < mem[160]:
            s = idx + 1
            while s < mem[160]:
                require s < mem[160]
                require mem[(32 * s) + 223 len 1] < sub_03f744cb.length
                require idx < mem[160]
                require mem[(32 * idx) + 223 len 1] < sub_03f744cb.length
                mem[0] = address(sub_03f744cb[mem[(32 * idx) + 223 len 1]].field_0)
                mem[32] = 2
                if sub_a8007363[address(stor1[mem[(32 * idx) + 223 len 1]].field_0)] < sub_a8007363[address(stor1[mem[(32 * s) + 223 len 1]].field_0)]:
                    require idx < mem[160]
                    _498 = mem[(32 * idx) + 192]
                    require s < mem[160]
                    require s < mem[160]
                    require idx < mem[160]
                    mem[(32 * idx) + 192] = mem[(32 * s) + 223 len 1]
                    mem[(32 * s) + 192] = uint8(_498)
                s = s + 1
                continue 
            s = s
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 0
        while idx < mem[160]:
            s = idx + 1
            while s < mem[160]:
                require s < mem[160]
                require mem[(32 * s) + 223 len 1] < sub_03f744cb.length
                require idx < mem[160]
                require mem[(32 * idx) + 223 len 1] < sub_03f744cb.length
                mem[0] = address(sub_03f744cb[mem[(32 * idx) + 223 len 1]].field_0)
                mem[32] = 2
                if sub_a8007363[address(stor1[mem[(32 * idx) + 223 len 1]].field_0)] < sub_a8007363[address(stor1[mem[(32 * s) + 223 len 1]].field_0)]:
                    require idx < mem[160]
                    _630 = mem[(32 * idx) + 192]
                    require s < mem[160]
                    require s < mem[160]
                    require idx < mem[160]
                    mem[(32 * idx) + 192] = mem[(32 * s) + 223 len 1]
                    mem[(32 * s) + 192] = uint8(_630)
                s = s + 1
                continue 
            s = s
            idx = idx + 1
            continue 
    stor3.length = mem[160]
    if not mem[160]:
        idx = 0
        while stor3.length + 31 / 32 > idx:
            uint8(stor3[idx].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 192
        while (32 * mem[160]) + 192 > idx:
            uint256(stor3.field_0) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor3.field_0)
            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[160]) + 31) >> 5
        s = sha3(3)
        while idx:
            stor[s] = !(255 * 256^idx) and stor[s]
            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
            s = (idx + 1 / 32) + s
            continue 
        idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * mem[160]) + 31) >> 5 * None + 3 / 32)
        while stor3.length + 31 / 32 > idx:
            uint8(stor3[idx].field_0) = 0
            idx = idx + 1
            continue 
    if stor3.length:
        mem[(32 * sub_03f744cb.length) + 224] = uint8(stor3.field_0)
        idx = (32 * sub_03f744cb.length) + 224
        s = 0
        while (32 * sub_03f744cb.length) + (32 * stor3.length) + 192 > idx:
            mem[idx + 32] = stor('name', 'stor3', 3)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
            idx = idx + 32
            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
            continue 
    return Array(len=stor3.length, data=mem[(32 * sub_03f744cb.length) + 224 len 32 * stor3.length])
}

function sub_80552af5(?) {
    mem[96] = 0
    mem[128] = 0
    mem[160 len 160] = 0
    mem[320] = 0
    mem[352] = 0
    mem[384 len 160] = 0
    mem[544] = 0
    mem[576 len 160] = 0
    require 0 < stor3.length
    require uint8(stor3.field_0) < sub_03f744cb.length
    require 1 < stor3.length
    require uint8(stor3.field_8) < sub_03f744cb.length
    require 2 < stor3.length
    require uint8(stor3.field_16) < sub_03f744cb.length
    mem[0] = address(sub_03f744cb[uint8(stor3.field_16)].field_0)
    mem[32] = 2
    mem[736] = 0
    mem[768 len 160] = 0
    mem[64] = 1120
    if sub_a8007363[address(stor1[uint8(stor3.field_0)].field_0)] != sub_a8007363[address(stor1[uint8(stor3.field_8)].field_0)]:
        mem[928] = 5
        mem[960] = 10
        if sub_a8007363[address(stor1[uint8(stor3.field_8)].field_0)] != sub_a8007363[address(stor1[uint8(stor3.field_16)].field_0)]:
            mem[992] = 3
            mem[1024] = 10
            mem[1056] = 2
            mem[1088] = 10
            idx = 0
            while idx < stor3.length:
                require 2 * idx < 6
                require idx < stor3.length
                require 2 * stor3[0.03125 / idx].field_0 / 256^(idx % 32) % 128 < 6
                mem[(64 * stor3[0.03125 / idx].field_0 / 256^(idx % 32) % 128) + 352] = mem[(64 * idx) + 959 len 1]
                require (2 * idx) + 1 < 6
                require idx < stor3.length
                mem[0] = 3
                require uint8((2 * uint8(stor3[0.03125 / idx].field_0 / 256^(idx % 32))) + 1) < 6
                mem[(32 * uint8((2 * uint8(stor3[0.03125 / idx].field_0 / 256^(idx % 32))) + 1)) + 352] = mem[(32 * (2 * idx) + 1) + 959 len 1]
                idx = idx + 1
                continue 
            _76 = mem[64]
            if msize < mem[64]:
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                idx = 0
                while idx < mem[_76]:
                    require (2 * idx) + 1 < 6
                    require 2 * idx < 6
                    require mem[(32 * (2 * idx) + 1) + 383 len 1]
                    require idx < mem[_76]
                    mem[(32 * idx) + _76 + 32] = eth.balance(this.address) * mem[(64 * idx) + 383 len 1] / mem[(32 * (2 * idx) + 1) + 383 len 1]
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 32
                mem[mem[64] + 32] = mem[_76]
                _228 = mem[_76]
                mem[mem[64] + 64 len 32 * mem[_76]] = mem[_76 + 32 len 32 * mem[_76]]
                return 32, mem[mem[64] + 32 len (32 * _228) + 32]
            _msize = max(1088, max(0, (64 * stor3[Mask(251, 0, stor3.length.field_5)].field_0 / 256^stor3.length % 32 % 128) + 352, (64 * uint256(stor3.field_0) / 256^0 % 128) + 352, (32 * uint8((2 * uint8(stor3[Mask(251, 0, stor3.length.field_5)].field_0 / 256^stor3.length % 32)) + 1)) + 352, (32 * uint8((2 * uint8(uint256(stor3.field_0) / 256^0)) + 1)) + 352))
            mem[_msize + 32] = 3
            mem[64] = (_msize + 32) + 128
            idx = 0
            while idx < mem[_msize + 32]:
                require (2 * idx) + 1 < 6
                require 2 * idx < 6
                require mem[(32 * (2 * idx) + 1) + 383 len 1]
                require idx < mem[_msize + 32]
                mem[(32 * idx) + (_msize + 32) + 32] = eth.balance(this.address) * mem[(64 * idx) + 383 len 1] / mem[(32 * (2 * idx) + 1) + 383 len 1]
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[_msize + 32]
            _233 = mem[_msize + 32]
            mem[mem[64] + 64 len 32 * mem[_msize + 32]] = mem[(_msize + 32) + 32 len 32 * mem[_msize + 32]]
            return 32, mem[mem[64] + 32 len (32 * _233) + 32]
        mem[992] = 1
        mem[1024] = 4
        mem[1056] = 1
        mem[1088] = 4
        idx = 0
        while idx < stor3.length:
            require 2 * idx < 6
            require idx < stor3.length
            require 2 * stor3[0.03125 / idx].field_0 / 256^(idx % 32) % 128 < 6
            mem[(64 * stor3[0.03125 / idx].field_0 / 256^(idx % 32) % 128) + 352] = mem[(64 * idx) + 959 len 1]
            require (2 * idx) + 1 < 6
            require idx < stor3.length
            mem[0] = 3
            require uint8((2 * uint8(stor3[0.03125 / idx].field_0 / 256^(idx % 32))) + 1) < 6
            mem[(32 * uint8((2 * uint8(stor3[0.03125 / idx].field_0 / 256^(idx % 32))) + 1)) + 352] = mem[(32 * (2 * idx) + 1) + 959 len 1]
            idx = idx + 1
            continue 
        _78 = mem[64]
        if msize < mem[64]:
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            idx = 0
            while idx < mem[_78]:
                require (2 * idx) + 1 < 6
                require 2 * idx < 6
                require mem[(32 * (2 * idx) + 1) + 383 len 1]
                require idx < mem[_78]
                mem[(32 * idx) + _78 + 32] = eth.balance(this.address) * mem[(64 * idx) + 383 len 1] / mem[(32 * (2 * idx) + 1) + 383 len 1]
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[_78]
            _238 = mem[_78]
            mem[mem[64] + 64 len 32 * mem[_78]] = mem[_78 + 32 len 32 * mem[_78]]
            return 32, mem[mem[64] + 32 len (32 * _238) + 32]
        _msize = max(1088, max(0, (64 * stor3[Mask(251, 0, stor3.length.field_5)].field_0 / 256^stor3.length % 32 % 128) + 352, (64 * uint256(stor3.field_0) / 256^0 % 128) + 352, (32 * uint8((2 * uint8(stor3[Mask(251, 0, stor3.length.field_5)].field_0 / 256^stor3.length % 32)) + 1)) + 352, (32 * uint8((2 * uint8(uint256(stor3.field_0) / 256^0)) + 1)) + 352))
        mem[_msize + 32] = 3
        mem[64] = (_msize + 32) + 128
        idx = 0
        while idx < mem[_msize + 32]:
            require (2 * idx) + 1 < 6
            require 2 * idx < 6
            require mem[(32 * (2 * idx) + 1) + 383 len 1]
            require idx < mem[_msize + 32]
            mem[(32 * idx) + (_msize + 32) + 32] = eth.balance(this.address) * mem[(64 * idx) + 383 len 1] / mem[(32 * (2 * idx) + 1) + 383 len 1]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[_msize + 32]
        _243 = mem[_msize + 32]
        mem[mem[64] + 64 len 32 * mem[_msize + 32]] = mem[(_msize + 32) + 32 len 32 * mem[_msize + 32]]
        return 32, mem[mem[64] + 32 len (32 * _243) + 32]
    if sub_a8007363[address(stor1[uint8(stor3.field_8)].field_0)] == sub_a8007363[address(stor1[uint8(stor3.field_16)].field_0)]:
        mem[928] = 1
        mem[960] = 3
        mem[992] = 1
        mem[1024] = 3
        mem[1056] = 1
        mem[1088] = 3
        idx = 0
        while idx < stor3.length:
            require 2 * idx < 6
            require idx < stor3.length
            require 2 * stor3[0.03125 / idx].field_0 / 256^(idx % 32) % 128 < 6
            mem[(64 * stor3[0.03125 / idx].field_0 / 256^(idx % 32) % 128) + 352] = mem[(64 * idx) + 959 len 1]
            require (2 * idx) + 1 < 6
            require idx < stor3.length
            mem[0] = 3
            require uint8((2 * uint8(stor3[0.03125 / idx].field_0 / 256^(idx % 32))) + 1) < 6
            mem[(32 * uint8((2 * uint8(stor3[0.03125 / idx].field_0 / 256^(idx % 32))) + 1)) + 352] = mem[(32 * (2 * idx) + 1) + 959 len 1]
            idx = idx + 1
            continue 
        _86 = mem[64]
        if msize < mem[64]:
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            idx = 0
            while idx < mem[_86]:
                require (2 * idx) + 1 < 6
                require 2 * idx < 6
                require mem[(32 * (2 * idx) + 1) + 383 len 1]
                require idx < mem[_86]
                mem[(32 * idx) + _86 + 32] = eth.balance(this.address) * mem[(64 * idx) + 383 len 1] / mem[(32 * (2 * idx) + 1) + 383 len 1]
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[_86]
            _278 = mem[_86]
            mem[mem[64] + 64 len 32 * mem[_86]] = mem[_86 + 32 len 32 * mem[_86]]
            return 32, mem[mem[64] + 32 len (32 * _278) + 32]
        _msize = max(1088, max(0, (64 * stor3[Mask(251, 0, stor3.length.field_5)].field_0 / 256^stor3.length % 32 % 128) + 352, (64 * uint256(stor3.field_0) / 256^0 % 128) + 352, (32 * uint8((2 * uint8(stor3[Mask(251, 0, stor3.length.field_5)].field_0 / 256^stor3.length % 32)) + 1)) + 352, (32 * uint8((2 * uint8(uint256(stor3.field_0) / 256^0)) + 1)) + 352))
        mem[_msize + 32] = 3
        mem[64] = (_msize + 32) + 128
        idx = 0
        while idx < mem[_msize + 32]:
            require (2 * idx) + 1 < 6
            require 2 * idx < 6
            require mem[(32 * (2 * idx) + 1) + 383 len 1]
            require idx < mem[_msize + 32]
            mem[(32 * idx) + (_msize + 32) + 32] = eth.balance(this.address) * mem[(64 * idx) + 383 len 1] / mem[(32 * (2 * idx) + 1) + 383 len 1]
            idx = idx + 1
            continue 
        mem[(_msize + 32) + 128] = 32
        mem[(_msize + 32) + 160] = mem[_msize + 32]
        _283 = mem[_msize + 32]
        mem[(_msize + 32) + 192 len 32 * mem[_msize + 32]] = mem[(_msize + 32) + 32 len 32 * mem[_msize + 32]]
        return 32, mem[(_msize + 32) + 160 len (32 * _283) + 32]
    if sub_a8007363[address(stor1[uint8(stor3.field_0)].field_0)] == sub_a8007363[address(stor1[uint8(stor3.field_8)].field_0)]:
        mem[928] = 4
        mem[960] = 10
        mem[992] = 4
        mem[1024] = 10
        mem[1056] = 2
        mem[1088] = 10
        idx = 0
        while idx < stor3.length:
            require 2 * idx < 6
            require idx < stor3.length
            require 2 * stor3[0.03125 / idx].field_0 / 256^(idx % 32) % 128 < 6
            mem[(64 * stor3[0.03125 / idx].field_0 / 256^(idx % 32) % 128) + 352] = mem[(64 * idx) + 959 len 1]
            require (2 * idx) + 1 < 6
            require idx < stor3.length
            mem[0] = 3
            require uint8((2 * uint8(stor3[0.03125 / idx].field_0 / 256^(idx % 32))) + 1) < 6
            mem[(32 * uint8((2 * uint8(stor3[0.03125 / idx].field_0 / 256^(idx % 32))) + 1)) + 352] = mem[(32 * (2 * idx) + 1) + 959 len 1]
            idx = idx + 1
            continue 
        _84 = mem[64]
        if msize < mem[64]:
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            idx = 0
            while idx < mem[_84]:
                require (2 * idx) + 1 < 6
                require 2 * idx < 6
                require mem[(32 * (2 * idx) + 1) + 383 len 1]
                require idx < mem[_84]
                mem[(32 * idx) + _84 + 32] = eth.balance(this.address) * mem[(64 * idx) + 383 len 1] / mem[(32 * (2 * idx) + 1) + 383 len 1]
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[_84]
            _268 = mem[_84]
            mem[mem[64] + 64 len 32 * mem[_84]] = mem[_84 + 32 len 32 * mem[_84]]
            return 32, mem[mem[64] + 32 len (32 * _268) + 32]
        _msize = max(1088, max(0, (64 * stor3[Mask(251, 0, stor3.length.field_5)].field_0 / 256^stor3.length % 32 % 128) + 352, (64 * uint256(stor3.field_0) / 256^0 % 128) + 352, (32 * uint8((2 * uint8(stor3[Mask(251, 0, stor3.length.field_5)].field_0 / 256^stor3.length % 32)) + 1)) + 352, (32 * uint8((2 * uint8(uint256(stor3.field_0) / 256^0)) + 1)) + 352))
        mem[_msize + 32] = 3
        mem[64] = (_msize + 32) + 128
        idx = 0
        while idx < mem[_msize + 32]:
            require (2 * idx) + 1 < 6
            require 2 * idx < 6
            require mem[(32 * (2 * idx) + 1) + 383 len 1]
            require idx < mem[_msize + 32]
            mem[(32 * idx) + (_msize + 32) + 32] = eth.balance(this.address) * mem[(64 * idx) + 383 len 1] / mem[(32 * (2 * idx) + 1) + 383 len 1]
            idx = idx + 1
            continue 
        mem[(_msize + 32) + 128] = 32
        mem[(_msize + 32) + 160] = mem[_msize + 32]
        _273 = mem[_msize + 32]
        mem[(_msize + 32) + 192 len 32 * mem[_msize + 32]] = mem[(_msize + 32) + 32 len 32 * mem[_msize + 32]]
        return 32, mem[(_msize + 32) + 160 len (32 * _273) + 32]
    mem[928] = 5
    mem[960] = 10
    if sub_a8007363[address(stor1[uint8(stor3.field_8)].field_0)] != sub_a8007363[address(stor1[uint8(stor3.field_16)].field_0)]:
        mem[992] = 3
        mem[1024] = 10
        mem[1056] = 2
        mem[1088] = 10
        idx = 0
        while idx < stor3.length:
            require 2 * idx < 6
            require idx < stor3.length
            require 2 * stor3[0.03125 / idx].field_0 / 256^(idx % 32) % 128 < 6
            mem[(64 * stor3[0.03125 / idx].field_0 / 256^(idx % 32) % 128) + 352] = mem[(64 * idx) + 959 len 1]
            require (2 * idx) + 1 < 6
            require idx < stor3.length
            mem[0] = 3
            require uint8((2 * uint8(stor3[0.03125 / idx].field_0 / 256^(idx % 32))) + 1) < 6
            mem[(32 * uint8((2 * uint8(stor3[0.03125 / idx].field_0 / 256^(idx % 32))) + 1)) + 352] = mem[(32 * (2 * idx) + 1) + 959 len 1]
            idx = idx + 1
            continue 
        _80 = mem[64]
        if msize < mem[64]:
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            idx = 0
            while idx < mem[_80]:
                require (2 * idx) + 1 < 6
                require 2 * idx < 6
                require mem[(32 * (2 * idx) + 1) + 383 len 1]
                require idx < mem[_80]
                mem[(32 * idx) + _80 + 32] = eth.balance(this.address) * mem[(64 * idx) + 383 len 1] / mem[(32 * (2 * idx) + 1) + 383 len 1]
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[_80]
            _248 = mem[_80]
            mem[mem[64] + 64 len 32 * mem[_80]] = mem[_80 + 32 len 32 * mem[_80]]
            return 32, mem[mem[64] + 32 len (32 * _248) + 32]
        _msize = max(1088, max(0, (64 * stor3[Mask(251, 0, stor3.length.field_5)].field_0 / 256^stor3.length % 32 % 128) + 352, (64 * uint256(stor3.field_0) / 256^0 % 128) + 352, (32 * uint8((2 * uint8(stor3[Mask(251, 0, stor3.length.field_5)].field_0 / 256^stor3.length % 32)) + 1)) + 352, (32 * uint8((2 * uint8(uint256(stor3.field_0) / 256^0)) + 1)) + 352))
        mem[_msize + 32] = 3
        mem[64] = (_msize + 32) + 128
        idx = 0
        while idx < mem[_msize + 32]:
            require (2 * idx) + 1 < 6
            require 2 * idx < 6
            require mem[(32 * (2 * idx) + 1) + 383 len 1]
            require idx < mem[_msize + 32]
            mem[(32 * idx) + (_msize + 32) + 32] = eth.balance(this.address) * mem[(64 * idx) + 383 len 1] / mem[(32 * (2 * idx) + 1) + 383 len 1]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[_msize + 32]
        _253 = mem[_msize + 32]
        mem[mem[64] + 64 len 32 * mem[_msize + 32]] = mem[(_msize + 32) + 32 len 32 * mem[_msize + 32]]
        return 32, mem[mem[64] + 32 len (32 * _253) + 32]
    mem[992] = 1
    mem[1024] = 4
    mem[1056] = 1
    mem[1088] = 4
    idx = 0
    while idx < stor3.length:
        require 2 * idx < 6
        require idx < stor3.length
        require 2 * stor3[0.03125 / idx].field_0 / 256^(idx % 32) % 128 < 6
        mem[(64 * stor3[0.03125 / idx].field_0 / 256^(idx % 32) % 128) + 352] = mem[(64 * idx) + 959 len 1]
        require (2 * idx) + 1 < 6
        require idx < stor3.length
        mem[0] = 3
        require uint8((2 * uint8(stor3[0.03125 / idx].field_0 / 256^(idx % 32))) + 1) < 6
        mem[(32 * uint8((2 * uint8(stor3[0.03125 / idx].field_0 / 256^(idx % 32))) + 1)) + 352] = mem[(32 * (2 * idx) + 1) + 959 len 1]
        idx = idx + 1
        continue 
    _82 = mem[64]
    if msize < mem[64]:
        mem[mem[64]] = 3
        mem[64] = mem[64] + 128
        idx = 0
        while idx < mem[_82]:
            require (2 * idx) + 1 < 6
            require 2 * idx < 6
            require mem[(32 * (2 * idx) + 1) + 383 len 1]
            require idx < mem[_82]
            mem[(32 * idx) + _82 + 32] = eth.balance(this.address) * mem[(64 * idx) + 383 len 1] / mem[(32 * (2 * idx) + 1) + 383 len 1]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[_82]
        _258 = mem[_82]
        mem[mem[64] + 64 len 32 * mem[_82]] = mem[_82 + 32 len 32 * mem[_82]]
        return 32, mem[mem[64] + 32 len (32 * _258) + 32]
    _msize = max(1088, max(0, (64 * stor3[Mask(251, 0, stor3.length.field_5)].field_0 / 256^stor3.length % 32 % 128) + 352, (64 * uint256(stor3.field_0) / 256^0 % 128) + 352, (32 * uint8((2 * uint8(stor3[Mask(251, 0, stor3.length.field_5)].field_0 / 256^stor3.length % 32)) + 1)) + 352, (32 * uint8((2 * uint8(uint256(stor3.field_0) / 256^0)) + 1)) + 352))
    mem[_msize + 32] = 3
    mem[64] = (_msize + 32) + 128
    idx = 0
    while idx < mem[_msize + 32]:
        require (2 * idx) + 1 < 6
        require 2 * idx < 6
        require mem[(32 * (2 * idx) + 1) + 383 len 1]
        require idx < mem[_msize + 32]
        mem[(32 * idx) + (_msize + 32) + 32] = eth.balance(this.address) * mem[(64 * idx) + 383 len 1] / mem[(32 * (2 * idx) + 1) + 383 len 1]
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_msize + 32]
    _263 = mem[_msize + 32]
    mem[mem[64] + 64 len 32 * mem[_msize + 32]] = mem[(_msize + 32) + 32 len 32 * mem[_msize + 32]]
    return 32, mem[mem[64] + 32 len (32 * _263) + 32]
}



}
