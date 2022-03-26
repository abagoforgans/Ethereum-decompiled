contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = msg.sender
    return code.data[148 len 10095]
}



// =====================  Runtime code  =====================


#
#  - ListAllSince(uint256 arg1)
#
address stor0;
array of uint256 stor1;
mapping of uint256 stor2;
array of struct stor3;

function kill() {
    require msg.sender == stor0
    selfdestruct(stor0)
}

function _fallback() payable {
    revert 
}

function CountExecs() {
    if stor0 != msg.sender:
        require msg.sender == address(stor1.length)
    idx = 0
    s = 0
    while idx < stor3.length:
        mem[0] = 3
        if uint8(stor3[idx].field_512):
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    return stor3.length, s
}

function IsValidated(string arg1) {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    if stor0 != msg.sender:
        require msg.sender == address(stor1.length)
    mem[ceil32(arg1.length) + 128 len arg1.length] = arg1[all]
    mem[arg1.length + ceil32(arg1.length) + 128] = 2
    require stor2[arg1[all]] < stor3.length
    mem[ceil32(arg1.length) + 128] = stor[(4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1].length
    mem[0] = (4 * stor2[arg1[all]]) + sha3(3) + 1
    mem[ceil32(arg1.length) + 160] = uint256(stor[sha3((4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1)].field_0)
    idx = ceil32(arg1.length) + 160
    s = 0
    while ceil32(arg1.length) + stor[(4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1].length + 128 > idx:
        mem[idx + 32] = uint256(stor[s + sha3((4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg1.length) + ceil32(stor[(4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1].length) + 160] = 0
    mem[64] = ceil32(arg1.length) + ceil32(stor[(4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1].length) + 224
    mem[ceil32(arg1.length) + ceil32(stor[(4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1].length) + 192] = 0
    require stor[(4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1].length == arg1.length
    idx = 0
    while idx < stor[(4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1].length:
        require idx < arg1.length
        require idx < stor[(4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1].length
        require Mask(8, 248, mem[ceil32(arg1.length) + idx + 160]) == Mask(8, 248, mem[idx + 128])
        idx = idx + 1
        continue 
    require stor2[arg1[all]] < stor3.length
    return bool(uint8(stor3[stor2[arg1[all]]].field_512))
}

function CheckExecution(string arg1) {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    if stor0 != msg.sender:
        require msg.sender == address(stor1.length)
    mem[ceil32(arg1.length) + 128 len arg1.length] = arg1[all]
    mem[arg1.length + ceil32(arg1.length) + 128] = 2
    if stor2[arg1[all]] >= stor3.length:
        return 0
    mem[ceil32(arg1.length) + 128] = stor[(4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1].length
    mem[0] = (4 * stor2[arg1[all]]) + sha3(3) + 1
    mem[ceil32(arg1.length) + 160] = uint256(stor[sha3((4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1)].field_0)
    idx = ceil32(arg1.length) + 160
    s = 0
    while ceil32(arg1.length) + stor[(4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1].length + 128 > idx:
        mem[idx + 32] = uint256(stor[s + sha3((4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg1.length) + ceil32(stor[(4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1].length) + 160] = 0
    mem[64] = ceil32(arg1.length) + ceil32(stor[(4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1].length) + 224
    mem[ceil32(arg1.length) + ceil32(stor[(4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1].length) + 192] = 0
    if stor[(4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1].length != arg1.length:
        return 0
    idx = 0
    while idx < stor[(4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1].length:
        require idx < arg1.length
        require idx < stor[(4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1].length
        if Mask(8, 248, mem[ceil32(arg1.length) + idx + 160]) == Mask(8, 248, mem[idx + 128]):
            idx = idx + 1
            continue 
        else:
            return 0
    require stor2[arg1[all]] < stor3.length
    return 1, 
           uint256(stor3[stor2[arg1[all]]].field_0),
           bool(uint8(stor3[stor2[arg1[all]]].field_512)),
           uint256(stor3[stor2[arg1[all]]].field_768)
}

function LastValidated() {
    mem[64] = 128
    mem[96] = 0
    if msg.sender == stor0:
        idx = 0
        s = 0
        t = 96
        while idx < stor3.length:
            mem[0] = 3
            if not uint8(stor3[idx].field_512):
                idx = idx + 1
                s = s
                t = t
                continue 
            require idx < stor3.length
            mem[0] = 3
            if uint256(stor3[idx].field_768) <= s:
                idx = idx + 1
                s = s
                t = t
                continue 
            require idx < stor3.length
            mem[0] = 3
            _48 = mem[64]
            mem[64] = mem[64] + ceil32(stor[(4 * idx) + ('name', 'stor3', 3) + 1].length) + 32
            mem[_48] = stor[(4 * idx) + ('name', 'stor3', 3) + 1].length
            mem[0] = (4 * idx) + sha3(3) + 1
            mem[_48 + 32] = uint256(stor[sha3((4 * idx) + ('name', 'stor3', 3) + 1)].field_0)
            s = _48 + 32
            t = sha3(mem[0])
            while _48 + stor[(4 * idx) + ('name', 'stor3', 3) + 1].length > s:
                mem[s + 32] = uint256(stor1[t])
                s = s + 32
                t = t + 1
                continue 
            require idx < stor3.length
            mem[0] = 3
            idx = idx + 1
            s = uint256(stor3[idx].field_768)
            t = _48
            continue 
        mem[mem[64] + 32] = s
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[t]
        _34 = mem[t]
        mem[mem[64] + 96 len mem[t]] = mem[t + 32 len mem[t]]
        if not _34 % 32:
            return 64, s, mem[mem[64] + 64 len _34 + 32]
        mem[floor32(_34) + mem[64] + 96] = mem[floor32(_34) + mem[64] + -(_34 % 32) + 128 len _34 % 32]
        return 64, s, mem[mem[64] + 64 len floor32(_34) + 64]
    require msg.sender == address(stor1.length)
    idx = 0
    s = 0
    t = 96
    while idx < stor3.length:
        mem[0] = 3
        if not uint8(stor3[idx].field_512):
            idx = idx + 1
            s = s
            t = t
            continue 
        require idx < stor3.length
        mem[0] = 3
        if uint256(stor3[idx].field_768) <= s:
            idx = idx + 1
            s = s
            t = t
            continue 
        require idx < stor3.length
        mem[0] = 3
        _49 = mem[64]
        mem[64] = mem[64] + ceil32(stor[(4 * idx) + ('name', 'stor3', 3) + 1].length) + 32
        mem[_49] = stor[(4 * idx) + ('name', 'stor3', 3) + 1].length
        mem[0] = (4 * idx) + sha3(3) + 1
        mem[_49 + 32] = uint256(stor[sha3((4 * idx) + ('name', 'stor3', 3) + 1)].field_0)
        s = _49 + 32
        t = sha3(mem[0])
        while _49 + stor[(4 * idx) + ('name', 'stor3', 3) + 1].length > s:
            mem[s + 32] = uint256(stor1[t])
            s = s + 32
            t = t + 1
            continue 
        require idx < stor3.length
        mem[0] = 3
        idx = idx + 1
        s = uint256(stor3[idx].field_768)
        t = _49
        continue 
    mem[mem[64] + 32] = s
    mem[mem[64]] = 64
    mem[mem[64] + 64] = mem[t]
    _37 = mem[t]
    mem[mem[64] + 96 len mem[t]] = mem[t + 32 len mem[t]]
    if not _37 % 32:
        return 64, s, mem[mem[64] + 64 len _37 + 32]
    mem[floor32(_37) + mem[64] + 96] = mem[floor32(_37) + mem[64] + -(_37 % 32) + 128 len _37 % 32]
    return 64, s, mem[mem[64] + 64 len floor32(_37) + 64]
}

function ValidateExec(string arg1) {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    require msg.sender == address(stor1.length)
    mem[ceil32(arg1.length) + 128 len arg1.length] = arg1[all]
    mem[arg1.length + ceil32(arg1.length) + 128] = 2
    require stor2[arg1[all]] < stor3.length
    mem[ceil32(arg1.length) + 128] = stor[(4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1].length
    mem[0] = (4 * stor2[arg1[all]]) + sha3(3) + 1
    mem[ceil32(arg1.length) + 160] = uint256(stor[sha3((4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1)].field_0)
    idx = ceil32(arg1.length) + 160
    s = 0
    while ceil32(arg1.length) + stor[(4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1].length + 128 > idx:
        mem[idx + 32] = uint256(stor[s + sha3((4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg1.length) + ceil32(stor[(4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1].length) + 160] = 0
    mem[64] = ceil32(arg1.length) + ceil32(stor[(4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1].length) + 224
    mem[ceil32(arg1.length) + ceil32(stor[(4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1].length) + 192] = 0
    require stor[(4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1].length == arg1.length
    idx = 0
    while idx < stor[(4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1].length:
        require idx < arg1.length
        require idx < stor[(4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1].length
        require Mask(8, 248, mem[ceil32(arg1.length) + idx + 160]) == Mask(8, 248, mem[idx + 128])
        idx = idx + 1
        continue 
    require stor2[arg1[all]] < stor3.length
    require not uint8(stor3[stor2[arg1[all]]].field_512)
    mem[ceil32(arg1.length) + ceil32(stor[(4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1].length) + 224 len arg1.length] = arg1[all]
    mem[arg1.length + ceil32(arg1.length) + ceil32(stor[(4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1].length) + 224] = 2
    require stor2[arg1[all]] < stor3.length
    mem[64] = ceil32(arg1.length) + (2 * ceil32(stor[(4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1].length)) + 256
    mem[ceil32(arg1.length) + ceil32(stor[(4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1].length) + 224] = stor[(4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1].length
    mem[0] = (4 * stor2[arg1[all]]) + sha3(3) + 1
    mem[ceil32(arg1.length) + ceil32(stor[(4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1].length) + 256] = uint256(stor[sha3((4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1)].field_0)
    idx = ceil32(arg1.length) + ceil32(stor[(4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1].length) + 256
    s = 0
    while ceil32(arg1.length) + ceil32(stor[(4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1].length) + stor[(4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1].length + 224 > idx:
        mem[idx + 32] = uint256(stor[s + sha3((4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    _550 = mem[64]
    mem[64] = mem[64] + 32
    mem[_550] = 0
    _551 = mem[64]
    mem[64] = mem[64] + 32
    mem[_551] = 0
    require stor[(4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1].length == mem[96]
    idx = 0
    while idx < stor[(4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1].length:
        require idx < mem[96]
        require idx < stor[(4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1].length
        require Mask(8, 248, mem[ceil32(arg1.length) + ceil32(stor[(4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1].length) + idx + 256]) == Mask(8, 248, mem[idx + 128])
        idx = idx + 1
        continue 
    require stor2[arg1[all]] < stor3.length
    mem[0] = 3
    uint8(stor3[stor2[arg1[all]]].field_512) = 1
    uint256(stor3[stor2[arg1[all]]].field_768) = block.timestamp
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len mem[96]] = mem[128 len mem[96]]
    if not mem[96] % 32:
        emit Validated(string rg1):
                       32,
                       mem[mem[64] + 32 len mem[96] + 32],
    else:
        mem[floor32(mem[96]) + mem[64] + 64] = mem[floor32(mem[96]) + mem[64] + -(mem[96] % 32) + 96 len mem[96] % 32]
        emit Validated(Array(len=mem[96], data=mem[mem[64] + 64 len floor32(mem[96]) + 32]));
}

function AddExec(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    require msg.sender == stor0
    mem[ceil32(arg1.length) + 128 len arg1.length] = arg1[all]
    mem[arg1.length + ceil32(arg1.length) + 128] = 2
    if stor2[arg1[all]] >= stor3.length:
        stor3.length++
        if not stor3.length <= stor3.length + 1:
            mem[0] = 3
            idx = 4 * stor3.length + 1
            while sha3(3) + (4 * stor3.length) > idx + sha3(mem[0]):
                uint256(stor[idx + sha3(mem[0])]) = 0
                uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                if 31 < stor[idx + sha3(mem[0]) + 1].length:
                    mem[0] = idx + sha3(mem[0]) + 1
                    s = sha3(idx + sha3(mem[0]) + 1)
                    while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                uint8(stor[idx + sha3(mem[0]) + 2]) = 0
                uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                idx = idx + 4
                continue 
        stor2[arg1[all]] = stor3.length
        require stor3.length < stor3.length
        uint256(stor3[stor3.length].field_0) = block.timestamp
        uint256(stor[sha3((4 * stor3.length) + ('name', 'stor3', 3) + 1)][].field_0) = Array(len=arg1.length, data=arg1[all])
    else:
        mem[ceil32(arg1.length) + 128] = stor[(4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1].length
        mem[ceil32(arg1.length) + 160] = uint256(stor[sha3((4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1)].field_0)
        idx = ceil32(arg1.length) + 160
        s = 0
        while ceil32(arg1.length) + stor[(4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1].length + 128 > idx:
            mem[idx + 32] = uint256(stor[s + sha3((4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1)].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(arg1.length) + ceil32(stor[(4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1].length) + 160] = 0
        mem[ceil32(arg1.length) + ceil32(stor[(4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1].length) + 192] = 0
        if stor[(4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1].length == arg1.length:
            require 0 < stor[(4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1].length
            require 0 < arg1.length
            require 0 < stor[(4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1].length
            s = 0
            while Mask(8, 248, mem[ceil32(arg1.length) + 160]) == Mask(8, 248, mem[128]):
                require s + 1 < stor[(4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1].length
                require s + 1 < arg1.length
                require s + 1 < stor[(4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1].length
                s = s + 1
                continue 
        stor3.length++
        if not stor3.length <= stor3.length + 1:
            mem[0] = 3
            idx = 4 * stor3.length + 1
            while sha3(3) + (4 * stor3.length) > idx + sha3(mem[0]):
                uint256(stor[idx + sha3(mem[0])]) = 0
                uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                if 31 < stor[idx + sha3(mem[0]) + 1].length:
                    mem[0] = idx + sha3(mem[0]) + 1
                    s = sha3(idx + sha3(mem[0]) + 1)
                    while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                uint8(stor[idx + sha3(mem[0]) + 2]) = 0
                uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                idx = idx + 4
                continue 
        mem[ceil32(arg1.length) + ceil32(stor[(4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1].length) + 224 len arg1.length] = arg1[all]
        mem[arg1.length + ceil32(arg1.length) + ceil32(stor[(4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1].length) + 224] = 2
        stor2[arg1[all]] = stor3.length
        require stor3.length < stor3.length
        uint256(stor3[stor3.length].field_0) = block.timestamp
        uint256(stor[sha3((4 * stor3.length) + ('name', 'stor3', 3) + 1)][].field_0) = Array(len=arg1.length, data=mem[128 len arg1.length])
    emit Executed(Array(len=arg1.length, data=arg1[all]));
}

function NotValSince(uint256 arg1) {
    mem[96] = 0
    mem[64] = 160
    mem[128] = 0
    if msg.sender == stor0:
        idx = 0
        s = block.timestamp
        t = 96
        u = 0
        while idx < stor3.length:
            mem[0] = 3
            if uint8(stor3[idx].field_512):
                idx = idx + 1
                s = s
                t = t
                u = u
                continue 
            require idx < stor3.length
            mem[0] = 3
            if uint256(stor3[idx].field_0) < arg1:
                idx = idx + 1
                s = s
                t = t
                u = u
                continue 
            require idx < stor3.length
            require idx < stor3.length
            mem[0] = 3
            if uint256(stor3[idx].field_0) < s:
                _101 = mem[64]
                mem[64] = mem[64] + ceil32(stor[(4 * idx) + ('name', 'stor3', 3) + 1].length) + 32
                mem[_101] = stor[(4 * idx) + ('name', 'stor3', 3) + 1].length
                mem[0] = (4 * idx) + sha3(3) + 1
                mem[_101 + 32] = uint256(stor[sha3((4 * idx) + ('name', 'stor3', 3) + 1)].field_0)
                s = _101 + 32
                t = sha3(mem[0])
                while _101 + stor[(4 * idx) + ('name', 'stor3', 3) + 1].length > s:
                    mem[s + 32] = uint256(stor1[t])
                    s = s + 32
                    t = t + 1
                    continue 
                require idx < stor3.length
                mem[0] = 3
                idx = idx + 1
                s = uint256(stor3[idx].field_0)
                t = _101
                u = u + 1
                continue 
            if uint256(stor3[idx].field_0) > 0:
                require idx < stor3.length
                mem[0] = 3
                _109 = mem[64]
                mem[64] = mem[64] + ceil32(stor[(4 * idx) + ('name', 'stor3', 3) + 1].length) + 32
                mem[_109] = stor[(4 * idx) + ('name', 'stor3', 3) + 1].length
                mem[0] = (4 * idx) + sha3(3) + 1
                mem[_109 + 32] = uint256(stor[sha3((4 * idx) + ('name', 'stor3', 3) + 1)].field_0)
                v = _109 + 32
                w = sha3(mem[0])
                while _109 + stor[(4 * idx) + ('name', 'stor3', 3) + 1].length > v:
                    mem[v + 32] = uint256(stor1[w])
                    v = v + 32
                    w = w + 1
                    continue 
                require idx < stor3.length
                mem[0] = 3
            idx = idx + 1
            s = s
            t = t
            u = u + 1
            continue 
        mem[mem[64]] = u
        mem[mem[64] + 64] = s
        mem[mem[64] + 128] = 0
        mem[mem[64] + 32] = 160
        mem[mem[64] + 160] = mem[t]
        _67 = mem[t]
        mem[mem[64] + 192 len mem[t]] = mem[t + 32 len mem[t]]
        if not _67 % 32:
            mem[mem[64] + 96] = _67 + 192
            mem[_67 + mem[64] + 192] = mem[128]
            mem[_67 + mem[64] + 224 len mem[128]] = mem[160 len mem[128]]
            if not mem[128] % 32:
                return u, 160, s, _67 + 192, 0, mem[mem[64] + 160 len mem[128] + _67 + 64]
            mem[floor32(mem[128]) + _67 + mem[64] + 224] = mem[floor32(mem[128]) + _67 + mem[64] + -(mem[128] % 32) + 256 len mem[128] % 32]
            return u, 160, s, _67 + 192, 0, mem[mem[64] + 160 len floor32(mem[128]) + _67 + 96]
        mem[floor32(_67) + mem[64] + 192] = mem[floor32(_67) + mem[64] + -(_67 % 32) + 224 len _67 % 32]
        mem[mem[64] + 96] = floor32(_67) + 224
        mem[floor32(_67) + mem[64] + 224] = mem[128]
        mem[floor32(_67) + mem[64] + 256 len mem[128]] = mem[160 len mem[128]]
        if not mem[128] % 32:
            return u, 160, s, floor32(_67) + 224, 0, mem[mem[64] + 160 len mem[128] + floor32(_67) + 96]
        mem[floor32(mem[128]) + floor32(_67) + mem[64] + 256] = mem[floor32(mem[128]) + floor32(_67) + mem[64] + -(mem[128] % 32) + 288 len mem[128] % 32]
        return u, 160, s, floor32(_67) + 224, 0, mem[mem[64] + 160 len floor32(mem[128]) + floor32(_67) + 128]
    require msg.sender == address(stor1.length)
    idx = 0
    s = block.timestamp
    t = 96
    u = 0
    while idx < stor3.length:
        mem[0] = 3
        if uint8(stor3[idx].field_512):
            idx = idx + 1
            s = s
            t = t
            u = u
            continue 
        require idx < stor3.length
        mem[0] = 3
        if uint256(stor3[idx].field_0) < arg1:
            idx = idx + 1
            s = s
            t = t
            u = u
            continue 
        require idx < stor3.length
        require idx < stor3.length
        mem[0] = 3
        if uint256(stor3[idx].field_0) < s:
            _102 = mem[64]
            mem[64] = mem[64] + ceil32(stor[(4 * idx) + ('name', 'stor3', 3) + 1].length) + 32
            mem[_102] = stor[(4 * idx) + ('name', 'stor3', 3) + 1].length
            mem[0] = (4 * idx) + sha3(3) + 1
            mem[_102 + 32] = uint256(stor[sha3((4 * idx) + ('name', 'stor3', 3) + 1)].field_0)
            s = _102 + 32
            t = sha3(mem[0])
            while _102 + stor[(4 * idx) + ('name', 'stor3', 3) + 1].length > s:
                mem[s + 32] = uint256(stor1[t])
                s = s + 32
                t = t + 1
                continue 
            require idx < stor3.length
            mem[0] = 3
            idx = idx + 1
            s = uint256(stor3[idx].field_0)
            t = _102
            u = u + 1
            continue 
        if uint256(stor3[idx].field_0) > 0:
            require idx < stor3.length
            mem[0] = 3
            _110 = mem[64]
            mem[64] = mem[64] + ceil32(stor[(4 * idx) + ('name', 'stor3', 3) + 1].length) + 32
            mem[_110] = stor[(4 * idx) + ('name', 'stor3', 3) + 1].length
            mem[0] = (4 * idx) + sha3(3) + 1
            mem[_110 + 32] = uint256(stor[sha3((4 * idx) + ('name', 'stor3', 3) + 1)].field_0)
            v = _110 + 32
            w = sha3(mem[0])
            while _110 + stor[(4 * idx) + ('name', 'stor3', 3) + 1].length > v:
                mem[v + 32] = uint256(stor1[w])
                v = v + 32
                w = w + 1
                continue 
            require idx < stor3.length
            mem[0] = 3
        idx = idx + 1
        s = s
        t = t
        u = u + 1
        continue 
    mem[mem[64]] = u
    mem[mem[64] + 64] = s
    mem[mem[64] + 128] = 0
    mem[mem[64] + 32] = 160
    mem[mem[64] + 160] = mem[t]
    _70 = mem[t]
    mem[mem[64] + 192 len mem[t]] = mem[t + 32 len mem[t]]
    if not _70 % 32:
        mem[mem[64] + 96] = _70 + 192
        mem[_70 + mem[64] + 192] = mem[128]
        mem[_70 + mem[64] + 224 len mem[128]] = mem[160 len mem[128]]
        if not mem[128] % 32:
            return u, 160, s, _70 + 192, 0, mem[mem[64] + 160 len mem[128] + _70 + 64]
        mem[floor32(mem[128]) + _70 + mem[64] + 224] = mem[floor32(mem[128]) + _70 + mem[64] + -(mem[128] % 32) + 256 len mem[128] % 32]
        return u, 160, s, _70 + 192, 0, mem[mem[64] + 160 len floor32(mem[128]) + _70 + 96]
    mem[floor32(_70) + mem[64] + 192] = mem[floor32(_70) + mem[64] + -(_70 % 32) + 224 len _70 % 32]
    mem[mem[64] + 96] = floor32(_70) + 224
    mem[floor32(_70) + mem[64] + 224] = mem[128]
    mem[floor32(_70) + mem[64] + 256 len mem[128]] = mem[160 len mem[128]]
    if not mem[128] % 32:
        return u, 160, s, floor32(_70) + 224, 0, mem[mem[64] + 160 len mem[128] + floor32(_70) + 96]
    mem[floor32(mem[128]) + floor32(_70) + mem[64] + 256] = mem[floor32(mem[128]) + floor32(_70) + mem[64] + -(mem[128] % 32) + 288 len mem[128] % 32]
    return u, 160, s, floor32(_70) + 224, 0, mem[mem[64] + 160 len floor32(mem[128]) + floor32(_70) + 128]
}

function LastExecuted() {
    mem[64] = 128
    mem[96] = 0
    if msg.sender == stor0:
        if stor3.length <= 0:
            return 64, 0, 0
        require 0 < stor3.length
        mem[0] = 3
        if uint8(stor3.field_512):
            idx = stor3.length - 1
            while idx > 0:
                require idx < stor3.length
                mem[0] = 3
                if uint8(stor3[idx].field_512):
                    idx = idx - 1
                    continue 
                require idx < stor3.length
                mem[0] = 3
                if uint256(stor3[idx].field_0) <= 0:
                    idx = idx - 1
                    continue 
                require idx < stor3.length
                mem[64] = ceil32(stor[(4 * idx) + ('name', 'stor3', 3) + 1].length) + 160
                mem[128] = stor[(4 * idx) + ('name', 'stor3', 3) + 1].length
                mem[0] = (4 * idx) + sha3(3) + 1
                mem[160] = uint256(stor[sha3((4 * idx) + ('name', 'stor3', 3) + 1)].field_0)
                s = 160
                t = sha3(mem[0])
                while stor[(4 * idx) + ('name', 'stor3', 3) + 1].length + 128 > s:
                    mem[s + 32] = uint256(stor1[t])
                    s = s + 32
                    t = t + 1
                    continue 
                require idx < stor3.length
                mem[0] = 3
                mem[mem[64] + 32] = uint256(stor3[idx].field_0)
                mem[mem[64]] = 64
                mem[mem[64] + 64] = mem[128]
                _566 = mem[128]
                mem[mem[64] + 96 len mem[128]] = mem[160 len mem[128]]
                if not mem[128] % 32:
                    return 64, uint256(stor3[idx].field_0), mem[mem[64] + 64 len mem[128] + 32]
                mem[floor32(mem[128]) + mem[64] + 96] = mem[floor32(mem[128]) + mem[64] + -(mem[128] % 32) + 128 len mem[128] % 32]
                return 64, uint256(stor3[idx].field_0), mem[mem[64] + 64 len floor32(_566) + 64]
            return 64, 0, 0
        require 0 < stor3.length
        mem[64] = ceil32(stor3[1].length) + 160
        mem[128] = stor3[1].length
        mem[160] = uint256(stor3[1].field_0)
        idx = 160
        s = 0
        while stor3[1].length + 128 > idx:
            mem[idx + 32] = uint256(stor3[s + 1].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        require 0 < stor3.length
        mem[0] = 3
        idx = stor3.length - 1
        while idx > 0:
            require idx < stor3.length
            mem[0] = 3
            if uint8(stor3[idx].field_512):
                idx = idx - 1
                continue 
            require idx < stor3.length
            mem[0] = 3
            if uint256(stor3[idx].field_0) <= uint256(stor3.field_0):
                idx = idx - 1
                continue 
            require idx < stor3.length
            mem[64] = ceil32(stor3[1].length) + ceil32(stor[(4 * idx) + ('name', 'stor3', 3) + 1].length) + 192
            mem[ceil32(stor3[1].length) + 160] = stor[(4 * idx) + ('name', 'stor3', 3) + 1].length
            mem[0] = (4 * idx) + sha3(3) + 1
            mem[ceil32(stor3[1].length) + 192] = uint256(stor[sha3((4 * idx) + ('name', 'stor3', 3) + 1)].field_0)
            s = ceil32(stor3[1].length) + 192
            t = sha3(mem[0])
            while ceil32(stor3[1].length) + stor[(4 * idx) + ('name', 'stor3', 3) + 1].length + 160 > s:
                mem[s + 32] = uint256(stor1[t])
                s = s + 32
                t = t + 1
                continue 
            require idx < stor3.length
            mem[0] = 3
            mem[mem[64] + 32] = uint256(stor3[idx].field_0)
            mem[mem[64]] = 64
            mem[mem[64] + 64] = mem[ceil32(stor3[1].length) + 160]
            _652 = mem[ceil32(stor3[1].length) + 160]
            mem[mem[64] + 96 len mem[ceil32(stor3[1].length) + 160]] = mem[ceil32(stor3[1].length) + 192 len mem[ceil32(stor3[1].length) + 160]]
            if not _652 % 32:
                return 64, uint256(stor3[idx].field_0), mem[mem[64] + 64 len _652 + 32]
            mem[floor32(_652) + mem[64] + 96] = mem[floor32(_652) + mem[64] + -(_652 % 32) + 128 len _652 % 32]
            return 64, uint256(stor3[idx].field_0), mem[mem[64] + 64 len floor32(_652) + 64]
    else:
        require msg.sender == address(stor1.length)
        if stor3.length <= 0:
            return 64, 0, 0
        require 0 < stor3.length
        mem[0] = 3
        if uint8(stor3.field_512):
            idx = stor3.length - 1
            while idx > 0:
                require idx < stor3.length
                mem[0] = 3
                if uint8(stor3[idx].field_512):
                    idx = idx - 1
                    continue 
                require idx < stor3.length
                mem[0] = 3
                if uint256(stor3[idx].field_0) <= 0:
                    idx = idx - 1
                    continue 
                require idx < stor3.length
                mem[64] = ceil32(stor[(4 * idx) + ('name', 'stor3', 3) + 1].length) + 160
                mem[128] = stor[(4 * idx) + ('name', 'stor3', 3) + 1].length
                mem[0] = (4 * idx) + sha3(3) + 1
                mem[160] = uint256(stor[sha3((4 * idx) + ('name', 'stor3', 3) + 1)].field_0)
                s = 160
                t = sha3(mem[0])
                while stor[(4 * idx) + ('name', 'stor3', 3) + 1].length + 128 > s:
                    mem[s + 32] = uint256(stor1[t])
                    s = s + 32
                    t = t + 1
                    continue 
                require idx < stor3.length
                mem[0] = 3
                mem[mem[64] + 32] = uint256(stor3[idx].field_0)
                mem[mem[64]] = 64
                mem[mem[64] + 64] = mem[128]
                _576 = mem[128]
                mem[mem[64] + 96 len mem[128]] = mem[160 len mem[128]]
                if not mem[128] % 32:
                    return 64, uint256(stor3[idx].field_0), mem[mem[64] + 64 len mem[128] + 32]
                mem[floor32(mem[128]) + mem[64] + 96] = mem[floor32(mem[128]) + mem[64] + -(mem[128] % 32) + 128 len mem[128] % 32]
                return 64, uint256(stor3[idx].field_0), mem[mem[64] + 64 len floor32(_576) + 64]
            return 64, 0, 0
        require 0 < stor3.length
        mem[64] = ceil32(stor3[1].length) + 160
        mem[160] = uint256(stor3[1].field_0)
        idx = 160
        s = 0
        while stor3[1].length + 128 > idx:
            mem[idx + 32] = uint256(stor3[s + 1].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        require 0 < stor3.length
        mem[0] = 3
        idx = stor3.length - 1
        while idx > 0:
            require idx < stor3.length
            mem[0] = 3
            if uint8(stor3[idx].field_512):
                idx = idx - 1
                continue 
            require idx < stor3.length
            mem[0] = 3
            if uint256(stor3[idx].field_0) <= uint256(stor3.field_0):
                idx = idx - 1
                continue 
            require idx < stor3.length
            mem[64] = ceil32(stor3[1].length) + ceil32(stor[(4 * idx) + ('name', 'stor3', 3) + 1].length) + 192
            mem[ceil32(stor3[1].length) + 160] = stor[(4 * idx) + ('name', 'stor3', 3) + 1].length
            mem[0] = (4 * idx) + sha3(3) + 1
            mem[ceil32(stor3[1].length) + 192] = uint256(stor[sha3((4 * idx) + ('name', 'stor3', 3) + 1)].field_0)
            s = ceil32(stor3[1].length) + 192
            t = sha3(mem[0])
            while ceil32(stor3[1].length) + stor[(4 * idx) + ('name', 'stor3', 3) + 1].length + 160 > s:
                mem[s + 32] = uint256(stor1[t])
                s = s + 32
                t = t + 1
                continue 
            require idx < stor3.length
            mem[0] = 3
            mem[mem[64] + 32] = uint256(stor3[idx].field_0)
            mem[mem[64]] = 64
            mem[mem[64] + 64] = mem[ceil32(stor3[1].length) + 160]
            _655 = mem[ceil32(stor3[1].length) + 160]
            mem[mem[64] + 96 len mem[ceil32(stor3[1].length) + 160]] = mem[ceil32(stor3[1].length) + 192 len mem[ceil32(stor3[1].length) + 160]]
            if not _655 % 32:
                return 64, uint256(stor3[idx].field_0), mem[mem[64] + 64 len _655 + 32]
            mem[floor32(_655) + mem[64] + 96] = mem[floor32(_655) + mem[64] + -(_655 % 32) + 128 len _655 % 32]
            return 64, uint256(stor3[idx].field_0), mem[mem[64] + 64 len floor32(_655) + 64]
    return Array(len=stor3[1].length, data=mem[160 len stor3[1].length]), uint256(stor3.field_0)
}

function ListNotValSince(uint256 arg1) {
    mem[96] = 0
    if msg.sender == stor0:
        mem[64] = 192
        mem[128] = 1
        mem[160] = '
'
        idx = 0
        s = block.timestamp
        t = 128
        u = 0
        while idx < stor3.length:
            mem[0] = 3
            if uint8(stor3[idx].field_512):
                idx = idx + 1
                s = s
                t = t
                u = u
                continue 
            require idx < stor3.length
            mem[0] = 3
            if uint256(stor3[idx].field_0) < arg1:
                idx = idx + 1
                s = s
                t = t
                u = u
                continue 
            require idx < stor3.length
            mem[0] = 3
            _428 = mem[64]
            mem[64] = mem[64] + ceil32(stor[(4 * idx) + ('name', 'stor3', 3) + 1].length) + 32
            mem[_428] = stor[(4 * idx) + ('name', 'stor3', 3) + 1].length
            mem[0] = (4 * idx) + sha3(3) + 1
            mem[_428 + 32] = uint256(stor[sha3((4 * idx) + ('name', 'stor3', 3) + 1)].field_0)
            v = _428 + 32
            w = sha3(mem[0])
            while _428 + stor[(4 * idx) + ('name', 'stor3', 3) + 1].length > v:
                mem[v + 32] = uint256(stor1[w])
                v = v + 32
                w = w + 1
                continue 
            _838 = mem[64]
            mem[64] = mem[64] + 64
            mem[_838] = 3
            mem[_838 + 32] = ' ;
'
            _860 = mem[64]
            mem[64] = mem[64] + 32
            mem[_860] = 0
            _861 = mem[64]
            mem[64] = mem[64] + 32
            mem[_861] = 0
            _862 = mem[64]
            mem[64] = mem[64] + 32
            mem[_862] = 0
            _878 = mem[64]
            mem[64] = mem[64] + 32
            mem[_878] = 0
            _879 = mem[64]
            mem[64] = mem[64] + 32
            mem[_879] = 0
            _880 = mem[64]
            mem[64] = mem[64] + 32
            mem[_880] = 0
            _881 = mem[64]
            mem[64] = mem[64] + 32
            mem[_881] = 0
            _882 = mem[64]
            mem[64] = mem[64] + 32
            mem[_882] = 0
            _883 = mem[64]
            mem[64] = mem[64] + 32
            mem[_883] = 0
            _884 = mem[64]
            mem[64] = mem[64] + 32
            mem[_884] = 0
            _885 = mem[64]
            mem[64] = mem[64] + 32
            mem[_885] = 0
            _889 = mem[_428]
            _890 = mem[t]
            _891 = mem[64]
            if msize < mem[64]:
                mem[mem[64]] = mem[t] + mem[_428] + 3
                mem[64] = mem[64] + (32 * _890 + _889 + 3) + 32
                _1122 = mem[t]
                v = 0
                w = 0
                while v < _1122:
                    require v < mem[t]
                    require w < mem[_891]
                    mem[_891 + w + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 2), ('var', 4)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 2), ('var', 4)), 32))), 0) - 256
                    v = v + 1
                    w = w + 1
                    continue 
                _1354 = mem[_428]
                t = 0
                v = _1122
                while t < _1354:
                    require t < mem[_428]
                    require v < mem[_891]
                    mem[_891 + v + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_428'), ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_428'), ('var', 2)), 32))), 0) - 256
                    _1354 = mem[_428]
                    t = t + 1
                    v = v + 1
                    continue 
                _1538 = mem[_838]
                t = 0
                v = _1122 + _1354
                while t < _1538:
                    require t < mem[_838]
                    require v < mem[_891]
                    mem[_891 + v + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_838'), ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_838'), ('var', 2)), 32))), 0) - 256
                    _1538 = mem[_838]
                    t = t + 1
                    v = v + 1
                    continue 
                _1674 = mem[_861]
                t = 0
                v = _1122 + _1354 + _1538
                while t < _1674:
                    require t < mem[_861]
                    require v < mem[_891]
                    mem[_891 + v + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_861'), ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_861'), ('var', 2)), 32))), 0) - 256
                    _1674 = mem[_861]
                    t = t + 1
                    v = v + 1
                    continue 
                _1760 = mem[_862]
                t = 0
                v = _1122 + _1354 + _1538 + _1674
                while t < _1760:
                    require t < mem[_862]
                    require v < mem[_891]
                    mem[_891 + v + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_862'), ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_862'), ('var', 2)), 32))), 0) - 256
                    _1760 = mem[_862]
                    t = t + 1
                    v = v + 1
                    continue 
                require idx < stor3.length
                mem[0] = 3
                if uint256(stor3[idx].field_0) >= s:
                    idx = idx + 1
                    s = s
                    t = _891
                    u = u + 1
                    continue 
                require idx < stor3.length
                mem[0] = 3
                idx = idx + 1
                s = uint256(stor3[idx].field_0)
                t = _891
                u = u + 1
                continue 
            _928 = msize
            mem[msize] = mem[t] + mem[_428] + 3
            mem[64] = _928 + (32 * _890 + _889 + 3) + 32
            _1123 = mem[t]
            v = 0
            w = 0
            while v < _1123:
                require v < mem[t]
                require w < mem[_928]
                mem[_928 + w + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 2), ('var', 4)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 2), ('var', 4)), 32))), 0) - 256
                v = v + 1
                w = w + 1
                continue 
            _1355 = mem[_428]
            t = 0
            v = _1123
            while t < _1355:
                require t < mem[_428]
                require v < mem[_928]
                mem[_928 + v + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_428'), ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_428'), ('var', 2)), 32))), 0) - 256
                _1355 = mem[_428]
                t = t + 1
                v = v + 1
                continue 
            _1539 = mem[_838]
            t = 0
            v = _1123 + _1355
            while t < _1539:
                require t < mem[_838]
                require v < mem[_928]
                mem[_928 + v + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_838'), ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_838'), ('var', 2)), 32))), 0) - 256
                _1539 = mem[_838]
                t = t + 1
                v = v + 1
                continue 
            _1675 = mem[_861]
            t = 0
            v = _1123 + _1355 + _1539
            while t < _1675:
                require t < mem[_861]
                require v < mem[_928]
                mem[_928 + v + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_861'), ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_861'), ('var', 2)), 32))), 0) - 256
                _1675 = mem[_861]
                t = t + 1
                v = v + 1
                continue 
            _1761 = mem[_862]
            t = 0
            v = _1123 + _1355 + _1539 + _1675
            while t < _1761:
                require t < mem[_862]
                require v < mem[_928]
                mem[_928 + v + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_862'), ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_862'), ('var', 2)), 32))), 0) - 256
                _1761 = mem[_862]
                t = t + 1
                v = v + 1
                continue 
            require idx < stor3.length
            mem[0] = 3
            if uint256(stor3[idx].field_0) >= s:
                idx = idx + 1
                s = s
                t = _928
                u = u + 1
                continue 
            require idx < stor3.length
            mem[0] = 3
            idx = idx + 1
            s = uint256(stor3[idx].field_0)
            t = _928
            u = u + 1
            continue 
        mem[mem[64]] = u
        mem[mem[64] + 64] = s
        mem[mem[64] + 32] = 96
        mem[mem[64] + 96] = mem[t]
        _414 = mem[t]
        mem[mem[64] + 128 len mem[t]] = mem[t + 32 len mem[t]]
        if not _414 % 32:
            return u, 96, s, mem[mem[64] + 96 len _414 + 32]
        mem[floor32(_414) + mem[64] + 128] = mem[floor32(_414) + mem[64] + -(_414 % 32) + 160 len _414 % 32]
        return u, 96, s, mem[mem[64] + 96 len floor32(_414) + 64]
    require msg.sender == address(stor1.length)
    mem[64] = 192
    mem[128] = 1
    mem[160] = '
'
    idx = 0
    s = block.timestamp
    t = 128
    u = 0
    while idx < stor3.length:
        mem[0] = 3
        if uint8(stor3[idx].field_512):
            idx = idx + 1
            s = s
            t = t
            u = u
            continue 
        require idx < stor3.length
        mem[0] = 3
        if uint256(stor3[idx].field_0) < arg1:
            idx = idx + 1
            s = s
            t = t
            u = u
            continue 
        require idx < stor3.length
        mem[0] = 3
        _429 = mem[64]
        mem[64] = mem[64] + ceil32(stor[(4 * idx) + ('name', 'stor3', 3) + 1].length) + 32
        mem[_429] = stor[(4 * idx) + ('name', 'stor3', 3) + 1].length
        mem[0] = (4 * idx) + sha3(3) + 1
        mem[_429 + 32] = uint256(stor[sha3((4 * idx) + ('name', 'stor3', 3) + 1)].field_0)
        v = _429 + 32
        w = sha3(mem[0])
        while _429 + stor[(4 * idx) + ('name', 'stor3', 3) + 1].length > v:
            mem[v + 32] = uint256(stor1[w])
            v = v + 32
            w = w + 1
            continue 
        _851 = mem[64]
        mem[64] = mem[64] + 64
        mem[_851] = 3
        mem[_851 + 32] = ' ;
'
        _867 = mem[64]
        mem[64] = mem[64] + 32
        mem[_867] = 0
        _868 = mem[64]
        mem[64] = mem[64] + 32
        mem[_868] = 0
        _869 = mem[64]
        mem[64] = mem[64] + 32
        mem[_869] = 0
        _905 = mem[64]
        mem[64] = mem[64] + 32
        mem[_905] = 0
        _906 = mem[64]
        mem[64] = mem[64] + 32
        mem[_906] = 0
        _907 = mem[64]
        mem[64] = mem[64] + 32
        mem[_907] = 0
        _908 = mem[64]
        mem[64] = mem[64] + 32
        mem[_908] = 0
        _909 = mem[64]
        mem[64] = mem[64] + 32
        mem[_909] = 0
        _910 = mem[64]
        mem[64] = mem[64] + 32
        mem[_910] = 0
        _911 = mem[64]
        mem[64] = mem[64] + 32
        mem[_911] = 0
        _912 = mem[64]
        mem[64] = mem[64] + 32
        mem[_912] = 0
        _916 = mem[_429]
        _917 = mem[t]
        _918 = mem[64]
        if msize < mem[64]:
            mem[mem[64]] = mem[t] + mem[_429] + 3
            mem[64] = mem[64] + (32 * _917 + _916 + 3) + 32
            _1128 = mem[t]
            v = 0
            w = 0
            while v < _1128:
                require v < mem[t]
                require w < mem[_918]
                mem[_918 + w + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 2), ('var', 4)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 2), ('var', 4)), 32))), 0) - 256
                v = v + 1
                w = w + 1
                continue 
            _1360 = mem[_429]
            t = 0
            v = _1128
            while t < _1360:
                require t < mem[_429]
                require v < mem[_918]
                mem[_918 + v + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_429'), ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_429'), ('var', 2)), 32))), 0) - 256
                _1360 = mem[_429]
                t = t + 1
                v = v + 1
                continue 
            _1544 = mem[_851]
            t = 0
            v = _1128 + _1360
            while t < _1544:
                require t < mem[_851]
                require v < mem[_918]
                mem[_918 + v + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_851'), ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_851'), ('var', 2)), 32))), 0) - 256
                _1544 = mem[_851]
                t = t + 1
                v = v + 1
                continue 
            _1680 = mem[_868]
            t = 0
            v = _1128 + _1360 + _1544
            while t < _1680:
                require t < mem[_868]
                require v < mem[_918]
                mem[_918 + v + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_868'), ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_868'), ('var', 2)), 32))), 0) - 256
                _1680 = mem[_868]
                t = t + 1
                v = v + 1
                continue 
            _1762 = mem[_869]
            t = 0
            v = _1128 + _1360 + _1544 + _1680
            while t < _1762:
                require t < mem[_869]
                require v < mem[_918]
                mem[_918 + v + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_869'), ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_869'), ('var', 2)), 32))), 0) - 256
                _1762 = mem[_869]
                t = t + 1
                v = v + 1
                continue 
            require idx < stor3.length
            mem[0] = 3
            if uint256(stor3[idx].field_0) >= s:
                idx = idx + 1
                s = s
                t = _918
                u = u + 1
                continue 
            require idx < stor3.length
            mem[0] = 3
            idx = idx + 1
            s = uint256(stor3[idx].field_0)
            t = _918
            u = u + 1
            continue 
        _933 = msize
        mem[msize] = mem[t] + mem[_429] + 3
        mem[64] = _933 + (32 * _917 + _916 + 3) + 32
        _1129 = mem[t]
        v = 0
        w = 0
        while v < _1129:
            require v < mem[t]
            require w < mem[_933]
            mem[_933 + w + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 2), ('var', 4)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 2), ('var', 4)), 32))), 0) - 256
            v = v + 1
            w = w + 1
            continue 
        _1361 = mem[_429]
        t = 0
        v = _1129
        while t < _1361:
            require t < mem[_429]
            require v < mem[_933]
            mem[_933 + v + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_429'), ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_429'), ('var', 2)), 32))), 0) - 256
            _1361 = mem[_429]
            t = t + 1
            v = v + 1
            continue 
        _1545 = mem[_851]
        t = 0
        v = _1129 + _1361
        while t < _1545:
            require t < mem[_851]
            require v < mem[_933]
            mem[_933 + v + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_851'), ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_851'), ('var', 2)), 32))), 0) - 256
            _1545 = mem[_851]
            t = t + 1
            v = v + 1
            continue 
        _1681 = mem[_868]
        t = 0
        v = _1129 + _1361 + _1545
        while t < _1681:
            require t < mem[_868]
            require v < mem[_933]
            mem[_933 + v + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_868'), ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_868'), ('var', 2)), 32))), 0) - 256
            _1681 = mem[_868]
            t = t + 1
            v = v + 1
            continue 
        _1763 = mem[_869]
        t = 0
        v = _1129 + _1361 + _1545 + _1681
        while t < _1763:
            require t < mem[_869]
            require v < mem[_933]
            mem[_933 + v + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_869'), ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_869'), ('var', 2)), 32))), 0) - 256
            _1763 = mem[_869]
            t = t + 1
            v = v + 1
            continue 
        require idx < stor3.length
        mem[0] = 3
        if uint256(stor3[idx].field_0) >= s:
            idx = idx + 1
            s = s
            t = _933
            u = u + 1
            continue 
        require idx < stor3.length
        mem[0] = 3
        idx = idx + 1
        s = uint256(stor3[idx].field_0)
        t = _933
        u = u + 1
        continue 
    mem[mem[64]] = u
    mem[mem[64] + 64] = s
    mem[mem[64] + 32] = 96
    mem[mem[64] + 96] = mem[t]
    _417 = mem[t]
    mem[mem[64] + 128 len mem[t]] = mem[t + 32 len mem[t]]
    if not _417 % 32:
        return u, 96, s, mem[mem[64] + 96 len _417 + 32]
    mem[floor32(_417) + mem[64] + 128] = mem[floor32(_417) + mem[64] + -(_417 % 32) + 160 len _417 % 32]
    return u, 96, s, mem[mem[64] + 96 len floor32(_417) + 64]
}



}
