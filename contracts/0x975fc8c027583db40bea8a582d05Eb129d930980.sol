contract main {


// =======================  Init code  ======================


uint256 stor0;
uint128 stor1; offset 160
uint256 stor1;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    uint256(stor1.field_0) = Mask(96, 0, stor1.field_160)
    return code.data[50 len 7444]
}



// =====================  Runtime code  =====================


#
#  - AddExec(string arg1)
#
address stor0;
array of uint256 stor1;
mapping of uint256 stor2;
array of struct stor3;
array of uint8 stor87903029871075914254377627908054574944891091886930582284385770809450030037085;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037086;

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
        require Mask(8, 248, mem[idx + ceil32(arg1.length) + 160]) == Mask(8, 248, mem[idx + 128])
        idx = idx + 1
        continue 
    require stor2[arg1[all]] < stor3.length
    return bool(uint8(stor3[stor2[arg1[all]]].field_512))
}

function CheckExecution(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    if stor0 != msg.sender:
        require msg.sender == address(stor1.length)
    mem[ceil32(arg1.length) + 128 len arg1.length] = arg1[all]
    mem[arg1.length + ceil32(arg1.length) + 128] = 2
    if stor2[arg1[all]] >= stor3.length:
        return 0
    mem[ceil32(arg1.length) + 128] = stor[(4 * stor2[arg1[all]]) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length
    mem[ceil32(arg1.length) + 160] = uint256(stor[sha3((4 * stor2[arg1[all]]) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4)])
    idx = ceil32(arg1.length) + 160
    s = 0
    while ceil32(arg1.length) + stor[(4 * stor2[arg1[all]]) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length + 128 > idx:
        mem[idx + 32] = uint256(stor[s + sha3((4 * stor2[arg1[all]]) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg1.length) + ceil32(stor[(4 * stor2[arg1[all]]) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length) + 160] = 0
    if stor[(4 * stor2[arg1[all]]) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length != arg1.length:
        return 0
    idx = 0
    while idx < stor[(4 * stor2[arg1[all]]) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length:
        require idx < arg1.length
        require idx < stor[(4 * stor2[arg1[all]]) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length
        if Mask(8, 248, mem[idx + ceil32(arg1.length) + 160]) == Mask(8, 248, mem[idx + 128]):
            idx = idx + 1
            continue 
        else:
            return 0
    require stor2[arg1[all]] < stor3.length
    return 1, uint256(stor3[stor2[arg1[all]]].field_0), bool(storC257[stor2[arg1[all]]]), storC257[stor2[arg1[all]]]
}

function LastValidated() {
    mem[64] = 128
    mem[96] = 0
    if msg.sender == stor0:
        idx = 0
        s = 0
        t = 96
        while idx < stor3.length:
            _33 = sha3(mem[0])
            mem[0] = 3
            if not uint8(stor[(4 * idx) + _33 + 2]):
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
            _47 = mem[64]
            mem[64] = mem[64] + ceil32(stor[(4 * idx) + ('name', 'stor3', 3) + 1].length) + 32
            mem[_47] = stor[(4 * idx) + ('name', 'stor3', 3) + 1].length
            mem[0] = (4 * idx) + sha3(3) + 1
            mem[_47 + 32] = uint256(stor[sha3((4 * idx) + ('name', 'stor3', 3) + 1)].field_0)
            s = _47 + 32
            t = sha3(mem[0])
            while _47 + stor[(4 * idx) + ('name', 'stor3', 3) + 1].length > s:
                mem[s + 32] = uint256(stor1[t])
                s = s + 32
                t = t + 1
                continue 
            require idx < stor3.length
            mem[0] = 3
            idx = idx + 1
            s = uint256(stor3[idx].field_768)
            t = _47
            continue 
        mem[mem[64] + 32] = s
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[t]
        _32 = mem[t]
        mem[mem[64] + 96 len mem[t]] = mem[t + 32 len mem[t]]
        if not _32 % 32:
            return 64, s, mem[mem[64] + 64 len _32 + 32]
        mem[floor32(_32) + mem[64] + 96] = mem[floor32(_32) + mem[64] + -(_32 % 32) + 128 len _32 % 32]
        return 64, s, mem[mem[64] + 64 len floor32(_32) + 64]
    require msg.sender == address(stor1.length)
    idx = 0
    s = 0
    t = 96
    while idx < stor3.length:
        _37 = sha3(mem[0])
        mem[0] = 3
        if not uint8(stor[(4 * idx) + _37 + 2]):
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
    _36 = mem[t]
    mem[mem[64] + 96 len mem[t]] = mem[t + 32 len mem[t]]
    if not _36 % 32:
        return 64, s, mem[mem[64] + 64 len _36 + 32]
    mem[floor32(_36) + mem[64] + 96] = mem[floor32(_36) + mem[64] + -(_36 % 32) + 128 len _36 % 32]
    return 64, s, mem[mem[64] + 64 len floor32(_36) + 64]
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
        require Mask(8, 248, mem[idx + ceil32(arg1.length) + 160]) == Mask(8, 248, mem[idx + 128])
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
        require Mask(8, 248, mem[idx + ceil32(arg1.length) + ceil32(stor[(4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1].length) + 256]) == Mask(8, 248, mem[idx + 128])
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
                _99 = mem[64]
                mem[64] = mem[64] + ceil32(stor[(4 * idx) + ('name', 'stor3', 3) + 1].length) + 32
                mem[_99] = stor[(4 * idx) + ('name', 'stor3', 3) + 1].length
                mem[0] = (4 * idx) + sha3(3) + 1
                mem[_99 + 32] = uint256(stor[sha3((4 * idx) + ('name', 'stor3', 3) + 1)].field_0)
                s = _99 + 32
                t = sha3(mem[0])
                while _99 + stor[(4 * idx) + ('name', 'stor3', 3) + 1].length > s:
                    mem[s + 32] = uint256(stor1[t])
                    s = s + 32
                    t = t + 1
                    continue 
                require idx < stor3.length
                mem[0] = 3
                idx = idx + 1
                s = uint256(stor3[idx].field_0)
                t = _99
                u = u + 1
                continue 
            if uint256(stor3[idx].field_0) > 0:
                require idx < stor3.length
                mem[0] = 3
                _104 = mem[64]
                mem[64] = mem[64] + ceil32(stor[(4 * idx) + ('name', 'stor3', 3) + 1].length) + 32
                mem[_104] = stor[(4 * idx) + ('name', 'stor3', 3) + 1].length
                mem[0] = (4 * idx) + sha3(3) + 1
                mem[_104 + 32] = uint256(stor[sha3((4 * idx) + ('name', 'stor3', 3) + 1)].field_0)
                v = _104 + 32
                w = sha3(mem[0])
                while _104 + stor[(4 * idx) + ('name', 'stor3', 3) + 1].length > v:
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
        _65 = mem[t]
        mem[mem[64] + 192 len mem[t]] = mem[t + 32 len mem[t]]
        if not _65 % 32:
            mem[mem[64] + 96] = _65 + 192
            mem[_65 + mem[64] + 192] = mem[128]
            mem[_65 + mem[64] + 224 len mem[128]] = mem[160 len mem[128]]
            if not mem[128] % 32:
                return u, 160, s, _65 + 192, 0, mem[mem[64] + 160 len mem[128] + _65 + 64]
            mem[floor32(mem[128]) + _65 + mem[64] + 224] = mem[floor32(mem[128]) + _65 + mem[64] + -(mem[128] % 32) + 256 len mem[128] % 32]
            return u, 160, s, _65 + 192, 0, mem[mem[64] + 160 len floor32(mem[128]) + _65 + 96]
        mem[floor32(_65) + mem[64] + 192] = mem[floor32(_65) + mem[64] + -(_65 % 32) + 224 len _65 % 32]
        mem[mem[64] + 96] = floor32(_65) + 224
        mem[floor32(_65) + mem[64] + 224] = mem[128]
        mem[floor32(_65) + mem[64] + 256 len mem[128]] = mem[160 len mem[128]]
        if not mem[128] % 32:
            return u, 160, s, floor32(_65) + 224, 0, mem[mem[64] + 160 len mem[128] + floor32(_65) + 96]
        mem[floor32(mem[128]) + floor32(_65) + mem[64] + 256] = mem[floor32(mem[128]) + floor32(_65) + mem[64] + -(mem[128] % 32) + 288 len mem[128] % 32]
        return u, 160, s, floor32(_65) + 224, 0, mem[mem[64] + 160 len floor32(mem[128]) + floor32(_65) + 128]
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
            _108 = mem[64]
            mem[64] = mem[64] + ceil32(stor[(4 * idx) + ('name', 'stor3', 3) + 1].length) + 32
            mem[_108] = stor[(4 * idx) + ('name', 'stor3', 3) + 1].length
            mem[0] = (4 * idx) + sha3(3) + 1
            mem[_108 + 32] = uint256(stor[sha3((4 * idx) + ('name', 'stor3', 3) + 1)].field_0)
            v = _108 + 32
            w = sha3(mem[0])
            while _108 + stor[(4 * idx) + ('name', 'stor3', 3) + 1].length > v:
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
    _69 = mem[t]
    mem[mem[64] + 192 len mem[t]] = mem[t + 32 len mem[t]]
    if not _69 % 32:
        mem[mem[64] + 96] = _69 + 192
        mem[_69 + mem[64] + 192] = mem[128]
        mem[_69 + mem[64] + 224 len mem[128]] = mem[160 len mem[128]]
        if not mem[128] % 32:
            return u, 160, s, _69 + 192, 0, mem[mem[64] + 160 len mem[128] + _69 + 64]
        mem[floor32(mem[128]) + _69 + mem[64] + 224] = mem[floor32(mem[128]) + _69 + mem[64] + -(mem[128] % 32) + 256 len mem[128] % 32]
        return u, 160, s, _69 + 192, 0, mem[mem[64] + 160 len floor32(mem[128]) + _69 + 96]
    mem[floor32(_69) + mem[64] + 192] = mem[floor32(_69) + mem[64] + -(_69 % 32) + 224 len _69 % 32]
    mem[mem[64] + 96] = floor32(_69) + 224
    mem[floor32(_69) + mem[64] + 224] = mem[128]
    mem[floor32(_69) + mem[64] + 256 len mem[128]] = mem[160 len mem[128]]
    if not mem[128] % 32:
        return u, 160, s, floor32(_69) + 224, 0, mem[mem[64] + 160 len mem[128] + floor32(_69) + 96]
    mem[floor32(mem[128]) + floor32(_69) + mem[64] + 256] = mem[floor32(mem[128]) + floor32(_69) + mem[64] + -(mem[128] % 32) + 288 len mem[128] % 32]
    return u, 160, s, floor32(_69) + 224, 0, mem[mem[64] + 160 len floor32(mem[128]) + floor32(_69) + 128]
}

function LastExecuted() {
    mem[64] = 128
    mem[96] = 0
    if stor0 == msg.sender:
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
                _575 = mem[128]
                mem[mem[64] + 96 len mem[128]] = mem[160 len mem[128]]
                if not mem[128] % 32:
                    return 64, uint256(stor3[idx].field_0), mem[mem[64] + 64 len mem[128] + 32]
                mem[floor32(mem[128]) + mem[64] + 96] = mem[floor32(mem[128]) + mem[64] + -(mem[128] % 32) + 128 len mem[128] % 32]
                return 64, uint256(stor3[idx].field_0), mem[mem[64] + 64 len floor32(_575) + 64]
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
        mem[64] = 160
        mem[128] = 0
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
            _403 = mem[64]
            mem[64] = mem[64] + ceil32(stor[(4 * idx) + ('name', 'stor3', 3) + 1].length) + 32
            mem[_403] = stor[(4 * idx) + ('name', 'stor3', 3) + 1].length
            mem[0] = (4 * idx) + sha3(3) + 1
            mem[_403 + 32] = uint256(stor[sha3((4 * idx) + ('name', 'stor3', 3) + 1)].field_0)
            v = _403 + 32
            w = sha3(mem[0])
            while _403 + stor[(4 * idx) + ('name', 'stor3', 3) + 1].length > v:
                mem[v + 32] = uint256(stor1[w])
                v = v + 32
                w = w + 1
                continue 
            _800 = mem[64]
            mem[64] = mem[64] + 64
            mem[_800] = 3
            mem[_800 + 32] = ' ; '
            _801 = mem[64]
            mem[64] = mem[64] + 32
            mem[_801] = 0
            _802 = mem[64]
            mem[64] = mem[64] + 32
            mem[_802] = 0
            _803 = mem[64]
            mem[64] = mem[64] + 32
            mem[_803] = 0
            _840 = mem[64]
            mem[64] = mem[64] + 32
            mem[_840] = 0
            _841 = mem[64]
            mem[64] = mem[64] + 32
            mem[_841] = 0
            _842 = mem[64]
            mem[64] = mem[64] + 32
            mem[_842] = 0
            _843 = mem[64]
            mem[64] = mem[64] + 32
            mem[_843] = 0
            _844 = mem[64]
            mem[64] = mem[64] + 32
            mem[_844] = 0
            _845 = mem[64]
            mem[64] = mem[64] + 32
            mem[_845] = 0
            _846 = mem[64]
            mem[64] = mem[64] + 32
            mem[_846] = 0
            _847 = mem[64]
            mem[64] = mem[64] + 32
            mem[_847] = 0
            _848 = mem[64]
            _852 = mem[_403]
            _853 = mem[t]
            if msize < mem[64]:
                mem[mem[64]] = mem[t] + mem[_403] + 3
                mem[64] = mem[64] + (32 * _853 + _852 + 3) + 32
                if not _853 + _852 + 3:
                    _1212 = mem[t]
                    v = 0
                    w = 0
                    while v < _1212:
                        require v < mem[t]
                        require w < mem[_848]
                        mem[_848 + w + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 2), ('var', 4)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 2), ('var', 4)), 32))), 0) - 256
                        v = v + 1
                        w = w + 1
                        continue 
                    _1660 = mem[_403]
                    t = 0
                    v = _1212
                    while t < _1660:
                        require t < mem[_403]
                        require v < mem[_848]
                        mem[_848 + v + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_403'), ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_403'), ('var', 2)), 32))), 0) - 256
                        _1660 = mem[_403]
                        t = t + 1
                        v = v + 1
                        continue 
                    _2028 = mem[_800]
                    t = 0
                    v = _1212 + _1660
                    while t < _2028:
                        require t < mem[_800]
                        require v < mem[_848]
                        mem[_848 + v + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_800'), ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_800'), ('var', 2)), 32))), 0) - 256
                        _2028 = mem[_800]
                        t = t + 1
                        v = v + 1
                        continue 
                    _2300 = mem[_802]
                    t = 0
                    v = _1212 + _1660 + _2028
                    while t < _2300:
                        require t < mem[_802]
                        require v < mem[_848]
                        mem[_848 + v + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_802'), ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_802'), ('var', 2)), 32))), 0) - 256
                        _2300 = mem[_802]
                        t = t + 1
                        v = v + 1
                        continue 
                    _2474 = mem[_803]
                    idx = 0
                    s = _1212 + _1660 + _2028 + _2300
                    while idx < _2474:
                        require idx < mem[_803]
                        require s < mem[_848]
                        mem[_848 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_803'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_803'), ('var', 0)), 32))), 0) - 256
                        _2474 = mem[_803]
                        idx = idx + 1
                        s = s + 1
                        continue 
                    require _2300 < stor3.length
                    mem[0] = 3
                    if uint256(stor3[_2300].field_0) >= _1212 + _1660 + _2028 + _2300:
                        t = _2300 + 1
                        v = _1212 + _1660 + _2028 + _2300
                        t = _848
                        u = u + 1
                        continue 
                    require _2300 < stor3.length
                    t = _2300 + 1
                    v = uint256(stor3[_2300].field_0)
                    t = _848
                    u = u + 1
                    continue 
                _1661 = mem[t]
                v = 0
                w = 0
                while v < _1661:
                    require v < mem[t]
                    require w < mem[_848]
                    mem[_848 + w + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 2), ('var', 4)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 2), ('var', 4)), 32))), 0) - 256
                    v = v + 1
                    w = w + 1
                    continue 
                _2029 = mem[_403]
                t = 0
                v = _1661
                while t < _2029:
                    require t < mem[_403]
                    require v < mem[_848]
                    mem[_848 + v + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_403'), ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_403'), ('var', 2)), 32))), 0) - 256
                    _2029 = mem[_403]
                    t = t + 1
                    v = v + 1
                    continue 
                _2301 = mem[_800]
                t = 0
                v = _1661 + _2029
                while t < _2301:
                    require t < mem[_800]
                    require v < mem[_848]
                    mem[_848 + v + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_800'), ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_800'), ('var', 2)), 32))), 0) - 256
                    _2301 = mem[_800]
                    t = t + 1
                    v = v + 1
                    continue 
                _2475 = mem[_802]
                t = 0
                v = _1661 + _2029 + _2301
                while t < _2475:
                    require t < mem[_802]
                    require v < mem[_848]
                    mem[_848 + v + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_802'), ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_802'), ('var', 2)), 32))), 0) - 256
                    _2475 = mem[_802]
                    t = t + 1
                    v = v + 1
                    continue 
                _2552 = mem[_803]
                t = 0
                v = _1661 + _2029 + _2301 + _2475
                while t < _2552:
                    require t < mem[_803]
                    require v < mem[_848]
                    mem[_848 + v + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_803'), ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_803'), ('var', 2)), 32))), 0) - 256
                    _2552 = mem[_803]
                    t = t + 1
                    v = v + 1
                    continue 
                require idx < stor3.length
                mem[0] = 3
                if uint256(stor3[idx].field_0) >= s:
                    idx = idx + 1
                    s = s
                    t = _848
                    u = u + 1
                    continue 
                require idx < stor3.length
                idx = idx + 1
                s = uint256(stor3[idx].field_0)
                t = _848
                u = u + 1
                continue 
            _902 = msize
            mem[msize] = mem[t] + mem[_403] + 3
            mem[64] = _902 + (32 * _853 + _852 + 3) + 32
            if not _853 + _852 + 3:
                _1213 = mem[t]
                v = 0
                w = 0
                while v < _1213:
                    require v < mem[t]
                    require w < mem[_902]
                    mem[_902 + w + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 2), ('var', 4)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 2), ('var', 4)), 32))), 0) - 256
                    v = v + 1
                    w = w + 1
                    continue 
                _1662 = mem[_403]
                t = 0
                v = _1213
                while t < _1662:
                    require t < mem[_403]
                    require v < mem[_902]
                    mem[_902 + v + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_403'), ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_403'), ('var', 2)), 32))), 0) - 256
                    _1662 = mem[_403]
                    t = t + 1
                    v = v + 1
                    continue 
                _2030 = mem[_800]
                t = 0
                v = _1213 + _1662
                while t < _2030:
                    require t < mem[_800]
                    require v < mem[_902]
                    mem[_902 + v + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_800'), ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_800'), ('var', 2)), 32))), 0) - 256
                    _2030 = mem[_800]
                    t = t + 1
                    v = v + 1
                    continue 
                _2302 = mem[_802]
                t = 0
                v = _1213 + _1662 + _2030
                while t < _2302:
                    require t < mem[_802]
                    require v < mem[_902]
                    mem[_902 + v + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_802'), ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_802'), ('var', 2)), 32))), 0) - 256
                    _2302 = mem[_802]
                    t = t + 1
                    v = v + 1
                    continue 
                _2476 = mem[_803]
                t = 0
                v = _1213 + _1662 + _2030 + _2302
                while t < _2476:
                    require t < mem[_803]
                    require v < mem[_902]
                    mem[_902 + v + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_803'), ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_803'), ('var', 2)), 32))), 0) - 256
                    _2476 = mem[_803]
                    t = t + 1
                    v = v + 1
                    continue 
            else:
                _1663 = mem[t]
                v = 0
                w = 0
                while v < _1663:
                    require v < mem[t]
                    require w < mem[_902]
                    mem[_902 + w + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 2), ('var', 4)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 2), ('var', 4)), 32))), 0) - 256
                    v = v + 1
                    w = w + 1
                    continue 
                _2031 = mem[_403]
                t = 0
                v = _1663
                while t < _2031:
                    require t < mem[_403]
                    require v < mem[_902]
                    mem[_902 + v + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_403'), ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_403'), ('var', 2)), 32))), 0) - 256
                    _2031 = mem[_403]
                    t = t + 1
                    v = v + 1
                    continue 
                _2303 = mem[_800]
                t = 0
                v = _1663 + _2031
                while t < _2303:
                    require t < mem[_800]
                    require v < mem[_902]
                    mem[_902 + v + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_800'), ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_800'), ('var', 2)), 32))), 0) - 256
                    _2303 = mem[_800]
                    t = t + 1
                    v = v + 1
                    continue 
                _2477 = mem[_802]
                t = 0
                v = _1663 + _2031 + _2303
                while t < _2477:
                    require t < mem[_802]
                    require v < mem[_902]
                    mem[_902 + v + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_802'), ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_802'), ('var', 2)), 32))), 0) - 256
                    _2477 = mem[_802]
                    t = t + 1
                    v = v + 1
                    continue 
                _2553 = mem[_803]
                t = 0
                v = _1663 + _2031 + _2303 + _2477
                while t < _2553:
                    require t < mem[_803]
                    require v < mem[_902]
                    mem[_902 + v + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_803'), ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_803'), ('var', 2)), 32))), 0) - 256
                    _2553 = mem[_803]
                    t = t + 1
                    v = v + 1
                    continue 
            require idx < stor3.length
            mem[0] = 3
            if uint256(stor3[idx].field_0) >= s:
                idx = idx + 1
                s = s
                t = _902
                u = u + 1
                continue 
            require idx < stor3.length
            idx = idx + 1
            s = uint256(stor3[idx].field_0)
            t = _902
            u = u + 1
            continue 
        mem[mem[64]] = u
        mem[mem[64] + 64] = s
        mem[mem[64] + 32] = 96
        mem[mem[64] + 96] = mem[t]
        _388 = mem[t]
        mem[mem[64] + 128 len mem[t]] = mem[t + 32 len mem[t]]
        if not _388 % 32:
            return u, 96, s, mem[mem[64] + 96 len _388 + 32]
        mem[floor32(_388) + mem[64] + 128] = mem[floor32(_388) + mem[64] + -(_388 % 32) + 160 len _388 % 32]
        return u, 96, s, mem[mem[64] + 96 len floor32(_388) + 64]
    require msg.sender == address(stor1.length)
    mem[64] = 160
    mem[128] = 0
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
        _405 = mem[64]
        mem[64] = mem[64] + ceil32(stor[(4 * idx) + ('name', 'stor3', 3) + 1].length) + 32
        mem[_405] = stor[(4 * idx) + ('name', 'stor3', 3) + 1].length
        mem[0] = (4 * idx) + sha3(3) + 1
        mem[_405 + 32] = uint256(stor[sha3((4 * idx) + ('name', 'stor3', 3) + 1)].field_0)
        v = _405 + 32
        w = sha3(mem[0])
        while _405 + stor[(4 * idx) + ('name', 'stor3', 3) + 1].length > v:
            mem[v + 32] = uint256(stor1[w])
            v = v + 32
            w = w + 1
            continue 
        _820 = mem[64]
        mem[64] = mem[64] + 64
        mem[_820] = 3
        mem[_820 + 32] = ' ; '
        _821 = mem[64]
        mem[64] = mem[64] + 32
        mem[_821] = 0
        _822 = mem[64]
        mem[64] = mem[64] + 32
        mem[_822] = 0
        _823 = mem[64]
        mem[64] = mem[64] + 32
        mem[_823] = 0
        _871 = mem[64]
        mem[64] = mem[64] + 32
        mem[_871] = 0
        _872 = mem[64]
        mem[64] = mem[64] + 32
        mem[_872] = 0
        _873 = mem[64]
        mem[64] = mem[64] + 32
        mem[_873] = 0
        _874 = mem[64]
        mem[64] = mem[64] + 32
        mem[_874] = 0
        _875 = mem[64]
        mem[64] = mem[64] + 32
        mem[_875] = 0
        _876 = mem[64]
        mem[64] = mem[64] + 32
        mem[_876] = 0
        _877 = mem[64]
        mem[64] = mem[64] + 32
        mem[_877] = 0
        _878 = mem[64]
        mem[64] = mem[64] + 32
        mem[_878] = 0
        _879 = mem[64]
        _883 = mem[_405]
        _884 = mem[t]
        if msize < mem[64]:
            mem[mem[64]] = mem[t] + mem[_405] + 3
            mem[64] = mem[64] + (32 * _884 + _883 + 3) + 32
            if not _884 + _883 + 3:
                _1222 = mem[t]
                v = 0
                w = 0
                while v < _1222:
                    require v < mem[t]
                    require w < mem[_879]
                    mem[_879 + w + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 2), ('var', 4)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 2), ('var', 4)), 32))), 0) - 256
                    v = v + 1
                    w = w + 1
                    continue 
                _1672 = mem[_405]
                t = 0
                v = _1222
                while t < _1672:
                    require t < mem[_405]
                    require v < mem[_879]
                    mem[_879 + v + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_405'), ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_405'), ('var', 2)), 32))), 0) - 256
                    _1672 = mem[_405]
                    t = t + 1
                    v = v + 1
                    continue 
                _2040 = mem[_820]
                t = 0
                v = _1222 + _1672
                while t < _2040:
                    require t < mem[_820]
                    require v < mem[_879]
                    mem[_879 + v + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_820'), ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_820'), ('var', 2)), 32))), 0) - 256
                    _2040 = mem[_820]
                    t = t + 1
                    v = v + 1
                    continue 
                _2312 = mem[_822]
                t = 0
                v = _1222 + _1672 + _2040
                while t < _2312:
                    require t < mem[_822]
                    require v < mem[_879]
                    mem[_879 + v + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_822'), ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_822'), ('var', 2)), 32))), 0) - 256
                    _2312 = mem[_822]
                    t = t + 1
                    v = v + 1
                    continue 
                _2482 = mem[_823]
                idx = 0
                s = _1222 + _1672 + _2040 + _2312
                while idx < _2482:
                    require idx < mem[_823]
                    require s < mem[_879]
                    mem[_879 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_823'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_823'), ('var', 0)), 32))), 0) - 256
                    _2482 = mem[_823]
                    idx = idx + 1
                    s = s + 1
                    continue 
                require _2312 < stor3.length
                mem[0] = 3
                if uint256(stor3[_2312].field_0) >= _1222 + _1672 + _2040 + _2312:
                    t = _2312 + 1
                    v = _1222 + _1672 + _2040 + _2312
                    t = _879
                    u = u + 1
                    continue 
                require _2312 < stor3.length
                t = _2312 + 1
                v = uint256(stor3[_2312].field_0)
                t = _879
                u = u + 1
                continue 
            _1673 = mem[t]
            v = 0
            w = 0
            while v < _1673:
                require v < mem[t]
                require w < mem[_879]
                mem[_879 + w + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 2), ('var', 4)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 2), ('var', 4)), 32))), 0) - 256
                v = v + 1
                w = w + 1
                continue 
            _2041 = mem[_405]
            t = 0
            v = _1673
            while t < _2041:
                require t < mem[_405]
                require v < mem[_879]
                mem[_879 + v + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_405'), ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_405'), ('var', 2)), 32))), 0) - 256
                _2041 = mem[_405]
                t = t + 1
                v = v + 1
                continue 
            _2313 = mem[_820]
            t = 0
            v = _1673 + _2041
            while t < _2313:
                require t < mem[_820]
                require v < mem[_879]
                mem[_879 + v + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_820'), ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_820'), ('var', 2)), 32))), 0) - 256
                _2313 = mem[_820]
                t = t + 1
                v = v + 1
                continue 
            _2483 = mem[_822]
            t = 0
            v = _1673 + _2041 + _2313
            while t < _2483:
                require t < mem[_822]
                require v < mem[_879]
                mem[_879 + v + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_822'), ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_822'), ('var', 2)), 32))), 0) - 256
                _2483 = mem[_822]
                t = t + 1
                v = v + 1
                continue 
            _2554 = mem[_823]
            t = 0
            v = _1673 + _2041 + _2313 + _2483
            while t < _2554:
                require t < mem[_823]
                require v < mem[_879]
                mem[_879 + v + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_823'), ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_823'), ('var', 2)), 32))), 0) - 256
                _2554 = mem[_823]
                t = t + 1
                v = v + 1
                continue 
            require idx < stor3.length
            mem[0] = 3
            if uint256(stor3[idx].field_0) >= s:
                idx = idx + 1
                s = s
                t = _879
                u = u + 1
                continue 
            require idx < stor3.length
            idx = idx + 1
            s = uint256(stor3[idx].field_0)
            t = _879
            u = u + 1
            continue 
        _919 = msize
        mem[msize] = mem[t] + mem[_405] + 3
        mem[64] = _919 + (32 * _884 + _883 + 3) + 32
        if not _884 + _883 + 3:
            _1223 = mem[t]
            v = 0
            w = 0
            while v < _1223:
                require v < mem[t]
                require w < mem[_919]
                mem[_919 + w + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 2), ('var', 4)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 2), ('var', 4)), 32))), 0) - 256
                v = v + 1
                w = w + 1
                continue 
            _1674 = mem[_405]
            t = 0
            v = _1223
            while t < _1674:
                require t < mem[_405]
                require v < mem[_919]
                mem[_919 + v + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_405'), ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_405'), ('var', 2)), 32))), 0) - 256
                _1674 = mem[_405]
                t = t + 1
                v = v + 1
                continue 
            _2042 = mem[_820]
            t = 0
            v = _1223 + _1674
            while t < _2042:
                require t < mem[_820]
                require v < mem[_919]
                mem[_919 + v + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_820'), ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_820'), ('var', 2)), 32))), 0) - 256
                _2042 = mem[_820]
                t = t + 1
                v = v + 1
                continue 
            _2314 = mem[_822]
            t = 0
            v = _1223 + _1674 + _2042
            while t < _2314:
                require t < mem[_822]
                require v < mem[_919]
                mem[_919 + v + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_822'), ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_822'), ('var', 2)), 32))), 0) - 256
                _2314 = mem[_822]
                t = t + 1
                v = v + 1
                continue 
            _2484 = mem[_823]
            t = 0
            v = _1223 + _1674 + _2042 + _2314
            while t < _2484:
                require t < mem[_823]
                require v < mem[_919]
                mem[_919 + v + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_823'), ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_823'), ('var', 2)), 32))), 0) - 256
                _2484 = mem[_823]
                t = t + 1
                v = v + 1
                continue 
        else:
            _1675 = mem[t]
            v = 0
            w = 0
            while v < _1675:
                require v < mem[t]
                require w < mem[_919]
                mem[_919 + w + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 2), ('var', 4)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 2), ('var', 4)), 32))), 0) - 256
                v = v + 1
                w = w + 1
                continue 
            _2043 = mem[_405]
            t = 0
            v = _1675
            while t < _2043:
                require t < mem[_405]
                require v < mem[_919]
                mem[_919 + v + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_405'), ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_405'), ('var', 2)), 32))), 0) - 256
                _2043 = mem[_405]
                t = t + 1
                v = v + 1
                continue 
            _2315 = mem[_820]
            t = 0
            v = _1675 + _2043
            while t < _2315:
                require t < mem[_820]
                require v < mem[_919]
                mem[_919 + v + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_820'), ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_820'), ('var', 2)), 32))), 0) - 256
                _2315 = mem[_820]
                t = t + 1
                v = v + 1
                continue 
            _2485 = mem[_822]
            t = 0
            v = _1675 + _2043 + _2315
            while t < _2485:
                require t < mem[_822]
                require v < mem[_919]
                mem[_919 + v + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_822'), ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_822'), ('var', 2)), 32))), 0) - 256
                _2485 = mem[_822]
                t = t + 1
                v = v + 1
                continue 
            _2555 = mem[_823]
            t = 0
            v = _1675 + _2043 + _2315 + _2485
            while t < _2555:
                require t < mem[_823]
                require v < mem[_919]
                mem[_919 + v + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_823'), ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_823'), ('var', 2)), 32))), 0) - 256
                _2555 = mem[_823]
                t = t + 1
                v = v + 1
                continue 
        require idx < stor3.length
        mem[0] = 3
        if uint256(stor3[idx].field_0) >= s:
            idx = idx + 1
            s = s
            t = _919
            u = u + 1
            continue 
        require idx < stor3.length
        idx = idx + 1
        s = uint256(stor3[idx].field_0)
        t = _919
        u = u + 1
        continue 
    mem[mem[64]] = u
    mem[mem[64] + 64] = s
    mem[mem[64] + 32] = 96
    mem[mem[64] + 96] = mem[t]
    _392 = mem[t]
    mem[mem[64] + 128 len mem[t]] = mem[t + 32 len mem[t]]
    if not _392 % 32:
        return u, 96, s, mem[mem[64] + 96 len _392 + 32]
    mem[floor32(_392) + mem[64] + 128] = mem[floor32(_392) + mem[64] + -(_392 % 32) + 160 len _392 % 32]
    return u, 96, s, mem[mem[64] + 96 len floor32(_392) + 64]
}

function ListAllSince(uint256 arg1) {
    mem[96] = 0
    mem[128] = 0
    if msg.sender == stor0:
        mem[64] = 192
        mem[160] = 0
        s = 128
        idx = 0
        t = 160
        while idx < stor3.length:
            mem[0] = 3
            if not uint8(stor3[idx].field_512):
                _753 = mem[64]
                mem[64] = mem[64] + 64
                mem[_753] = 12
                mem[_753 + 32] = 'published ; '
                require idx < stor3.length
                mem[0] = 3
                _762 = mem[64]
                mem[64] = mem[64] + ceil32(stor[(4 * idx) + ('name', 'stor3', 3) + 1].length) + 32
                mem[_762] = stor[(4 * idx) + ('name', 'stor3', 3) + 1].length
                mem[0] = (4 * idx) + sha3(3) + 1
                mem[_762 + 32] = uint256(stor[sha3((4 * idx) + ('name', 'stor3', 3) + 1)].field_0)
                u = _762 + 32
                v = sha3(mem[0])
                while _762 + stor[(4 * idx) + ('name', 'stor3', 3) + 1].length > u:
                    mem[u + 32] = uint256(stor1[v])
                    u = u + 32
                    v = v + 1
                    continue 
                _1537 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1537] = 3
                mem[_1537 + 32] = ' : '
                _1538 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1538] = 0
                _1539 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1539] = 0
                _1613 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1613] = 0
                _1614 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1614] = 0
                _1615 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1615] = 0
                _1616 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1616] = 0
                _1617 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1617] = 0
                _1618 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1618] = 0
                _1619 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1619] = 0
                _1620 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1620] = 0
                _1621 = mem[64]
                _1623 = mem[_753]
                _1625 = mem[_762]
                _1626 = mem[t]
                if msize < mem[64]:
                    mem[mem[64]] = mem[_753] + mem[t] + mem[_762] + 3
                    mem[64] = mem[64] + (32 * _1623 + _1626 + _1625 + 3) + 32
                    if not _1623 + _1626 + _1625 + 3:
                        _2361 = mem[t]
                        s = 0
                        u = 0
                        while s < _2361:
                            require s < mem[t]
                            require u < mem[_1621]
                            mem[_1621 + u + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 2), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 2), ('var', 1)), 32))), 0) - 256
                            s = s + 1
                            u = u + 1
                            continue 
                        _3257 = mem[_762]
                        s = 0
                        t = _2361
                        while s < _3257:
                            require s < mem[_762]
                            require t < mem[_1621]
                            mem[_1621 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_762'), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_762'), ('var', 1)), 32))), 0) - 256
                            _3257 = mem[_762]
                            s = s + 1
                            t = t + 1
                            continue 
                        _3993 = mem[_1537]
                        s = 0
                        t = _2361 + _3257
                        while s < _3993:
                            require s < mem[_1537]
                            require t < mem[_1621]
                            mem[_1621 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1537'), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1537'), ('var', 1)), 32))), 0) - 256
                            _3993 = mem[_1537]
                            s = s + 1
                            t = t + 1
                            continue 
                        _4537 = mem[_753]
                        s = 0
                        t = _2361 + _3257 + _3993
                        while s < _4537:
                            require s < mem[_753]
                            require t < mem[_1621]
                            mem[_1621 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_753'), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_753'), ('var', 1)), 32))), 0) - 256
                            _4537 = mem[_753]
                            s = s + 1
                            t = t + 1
                            continue 
                        _4887 = mem[_1539]
                        s = 0
                        t = _2361 + _3257 + _3993 + _4537
                        while s < _4887:
                            require s < mem[_1539]
                            require t < mem[_1621]
                            mem[_1621 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1539'), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1539'), ('var', 1)), 32))), 0) - 256
                            _4887 = mem[_1539]
                            s = s + 1
                            t = t + 1
                            continue 
                    else:
                        _3258 = mem[t]
                        s = 0
                        u = 0
                        while s < _3258:
                            require s < mem[t]
                            require u < mem[_1621]
                            mem[_1621 + u + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 2), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 2), ('var', 1)), 32))), 0) - 256
                            s = s + 1
                            u = u + 1
                            continue 
                        _3994 = mem[_762]
                        s = 0
                        t = _3258
                        while s < _3994:
                            require s < mem[_762]
                            require t < mem[_1621]
                            mem[_1621 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_762'), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_762'), ('var', 1)), 32))), 0) - 256
                            _3994 = mem[_762]
                            s = s + 1
                            t = t + 1
                            continue 
                        _4538 = mem[_1537]
                        s = 0
                        t = _3258 + _3994
                        while s < _4538:
                            require s < mem[_1537]
                            require t < mem[_1621]
                            mem[_1621 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1537'), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1537'), ('var', 1)), 32))), 0) - 256
                            _4538 = mem[_1537]
                            s = s + 1
                            t = t + 1
                            continue 
                        _4888 = mem[_753]
                        s = 0
                        t = _3258 + _3994 + _4538
                        while s < _4888:
                            require s < mem[_753]
                            require t < mem[_1621]
                            mem[_1621 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_753'), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_753'), ('var', 1)), 32))), 0) - 256
                            _4888 = mem[_753]
                            s = s + 1
                            t = t + 1
                            continue 
                        _5045 = mem[_1539]
                        s = 0
                        t = _3258 + _3994 + _4538 + _4888
                        while s < _5045:
                            require s < mem[_1539]
                            require t < mem[_1621]
                            mem[_1621 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1539'), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1539'), ('var', 1)), 32))), 0) - 256
                            _5045 = mem[_1539]
                            s = s + 1
                            t = t + 1
                            continue 
                    s = _753
                    idx = idx + 1
                    t = _1621
                    continue 
                _1737 = msize
                mem[msize] = mem[_753] + mem[t] + mem[_762] + 3
                mem[64] = _1737 + (32 * _1623 + _1626 + _1625 + 3) + 32
                if not _1623 + _1626 + _1625 + 3:
                    _2362 = mem[t]
                    s = 0
                    u = 0
                    while s < _2362:
                        require s < mem[t]
                        require u < mem[_1737]
                        mem[_1737 + u + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 2), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 2), ('var', 1)), 32))), 0) - 256
                        s = s + 1
                        u = u + 1
                        continue 
                    _3259 = mem[_762]
                    s = 0
                    t = _2362
                    while s < _3259:
                        require s < mem[_762]
                        require t < mem[_1737]
                        mem[_1737 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_762'), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_762'), ('var', 1)), 32))), 0) - 256
                        _3259 = mem[_762]
                        s = s + 1
                        t = t + 1
                        continue 
                    _3995 = mem[_1537]
                    s = 0
                    t = _2362 + _3259
                    while s < _3995:
                        require s < mem[_1537]
                        require t < mem[_1737]
                        mem[_1737 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1537'), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1537'), ('var', 1)), 32))), 0) - 256
                        _3995 = mem[_1537]
                        s = s + 1
                        t = t + 1
                        continue 
                    _4539 = mem[_753]
                    s = 0
                    t = _2362 + _3259 + _3995
                    while s < _4539:
                        require s < mem[_753]
                        require t < mem[_1737]
                        mem[_1737 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_753'), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_753'), ('var', 1)), 32))), 0) - 256
                        _4539 = mem[_753]
                        s = s + 1
                        t = t + 1
                        continue 
                    _4889 = mem[_1539]
                    s = 0
                    t = _2362 + _3259 + _3995 + _4539
                    while s < _4889:
                        require s < mem[_1539]
                        require t < mem[_1737]
                        mem[_1737 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1539'), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1539'), ('var', 1)), 32))), 0) - 256
                        _4889 = mem[_1539]
                        s = s + 1
                        t = t + 1
                        continue 
                    s = _753
                    idx = idx + 1
                    t = _1737
                    continue 
                _3260 = mem[t]
                u = 0
                v = 0
                while u < _3260:
                    require u < mem[t]
                    require v < mem[_1737]
                    mem[_1737 + v + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 2), ('var', 3)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 2), ('var', 3)), 32))), 0) - 256
                    u = u + 1
                    v = v + 1
                    continue 
                _3996 = mem[_762]
                t = 0
                s = _3260
                while t < _3996:
                    require t < mem[_762]
                    require s < mem[_1737]
                    mem[_1737 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_762'), ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_762'), ('var', 2)), 32))), 0) - 256
                    _3996 = mem[_762]
                    t = t + 1
                    s = s + 1
                    continue 
                _4540 = mem[_1537]
                idx = 0
                s = _3260 + _3996
                while idx < _4540:
                    require idx < mem[_1537]
                    require s < mem[_1737]
                    mem[_1737 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1537'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1537'), ('var', 0)), 32))), 0) - 256
                    _4540 = mem[_1537]
                    idx = idx + 1
                    s = s + 1
                    continue 
                _4890 = mem[_753]
                idx = 0
                s = _3260 + _3996 + _4540
                while idx < _4890:
                    require idx < mem[_753]
                    require s < mem[_1737]
                    mem[_1737 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_753'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_753'), ('var', 0)), 32))), 0) - 256
                    _4890 = mem[_753]
                    idx = idx + 1
                    s = s + 1
                    continue 
                _5046 = mem[_1539]
                idx = 0
                s = _3260 + _3996 + _4540 + _4890
                while idx < _5046:
                    require idx < mem[_1539]
                    require s < mem[_1737]
                    mem[_1737 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1539'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1539'), ('var', 0)), 32))), 0) - 256
                    _5046 = mem[_1539]
                    idx = idx + 1
                    s = s + 1
                    continue 
                t = _753
                s = _3260 + _3996 + 1
                t = _1737
                continue 
            _754 = mem[64]
            mem[64] = mem[64] + 64
            mem[_754] = 12
            mem[_754 + 32] = 'confirmed ; '
            require idx < stor3.length
            mem[0] = 3
            _764 = mem[64]
            mem[64] = mem[64] + ceil32(stor[(4 * idx) + ('name', 'stor3', 3) + 1].length) + 32
            mem[_764] = stor[(4 * idx) + ('name', 'stor3', 3) + 1].length
            mem[0] = (4 * idx) + sha3(3) + 1
            mem[_764 + 32] = uint256(stor[sha3((4 * idx) + ('name', 'stor3', 3) + 1)].field_0)
            u = _764 + 32
            v = sha3(mem[0])
            while _764 + stor[(4 * idx) + ('name', 'stor3', 3) + 1].length > u:
                mem[u + 32] = uint256(stor1[v])
                u = u + 32
                v = v + 1
                continue 
            _1556 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1556] = 3
            mem[_1556 + 32] = ' : '
            _1557 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1557] = 0
            _1558 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1558] = 0
            _1644 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1644] = 0
            _1645 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1645] = 0
            _1646 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1646] = 0
            _1647 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1647] = 0
            _1648 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1648] = 0
            _1649 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1649] = 0
            _1650 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1650] = 0
            _1651 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1651] = 0
            _1652 = mem[64]
            _1654 = mem[_754]
            _1656 = mem[_764]
            _1657 = mem[t]
            if msize < mem[64]:
                mem[mem[64]] = mem[_754] + mem[t] + mem[_764] + 3
                mem[64] = mem[64] + (32 * _1654 + _1657 + _1656 + 3) + 32
                if not _1654 + _1657 + _1656 + 3:
                    _2371 = mem[t]
                    s = 0
                    u = 0
                    while s < _2371:
                        require s < mem[t]
                        require u < mem[_1652]
                        mem[_1652 + u + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 2), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 2), ('var', 1)), 32))), 0) - 256
                        s = s + 1
                        u = u + 1
                        continue 
                    _3269 = mem[_764]
                    s = 0
                    t = _2371
                    while s < _3269:
                        require s < mem[_764]
                        require t < mem[_1652]
                        mem[_1652 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_764'), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_764'), ('var', 1)), 32))), 0) - 256
                        _3269 = mem[_764]
                        s = s + 1
                        t = t + 1
                        continue 
                    _4005 = mem[_1556]
                    s = 0
                    t = _2371 + _3269
                    while s < _4005:
                        require s < mem[_1556]
                        require t < mem[_1652]
                        mem[_1652 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1556'), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1556'), ('var', 1)), 32))), 0) - 256
                        _4005 = mem[_1556]
                        s = s + 1
                        t = t + 1
                        continue 
                    _4549 = mem[_754]
                    s = 0
                    t = _2371 + _3269 + _4005
                    while s < _4549:
                        require s < mem[_754]
                        require t < mem[_1652]
                        mem[_1652 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_754'), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_754'), ('var', 1)), 32))), 0) - 256
                        _4549 = mem[_754]
                        s = s + 1
                        t = t + 1
                        continue 
                    _4895 = mem[_1558]
                    s = 0
                    t = _2371 + _3269 + _4005 + _4549
                    while s < _4895:
                        require s < mem[_1558]
                        require t < mem[_1652]
                        mem[_1652 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1558'), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1558'), ('var', 1)), 32))), 0) - 256
                        _4895 = mem[_1558]
                        s = s + 1
                        t = t + 1
                        continue 
                else:
                    _3270 = mem[t]
                    s = 0
                    u = 0
                    while s < _3270:
                        require s < mem[t]
                        require u < mem[_1652]
                        mem[_1652 + u + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 2), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 2), ('var', 1)), 32))), 0) - 256
                        s = s + 1
                        u = u + 1
                        continue 
                    _4006 = mem[_764]
                    s = 0
                    t = _3270
                    while s < _4006:
                        require s < mem[_764]
                        require t < mem[_1652]
                        mem[_1652 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_764'), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_764'), ('var', 1)), 32))), 0) - 256
                        _4006 = mem[_764]
                        s = s + 1
                        t = t + 1
                        continue 
                    _4550 = mem[_1556]
                    s = 0
                    t = _3270 + _4006
                    while s < _4550:
                        require s < mem[_1556]
                        require t < mem[_1652]
                        mem[_1652 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1556'), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1556'), ('var', 1)), 32))), 0) - 256
                        _4550 = mem[_1556]
                        s = s + 1
                        t = t + 1
                        continue 
                    _4896 = mem[_754]
                    s = 0
                    t = _3270 + _4006 + _4550
                    while s < _4896:
                        require s < mem[_754]
                        require t < mem[_1652]
                        mem[_1652 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_754'), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_754'), ('var', 1)), 32))), 0) - 256
                        _4896 = mem[_754]
                        s = s + 1
                        t = t + 1
                        continue 
                    _5047 = mem[_1558]
                    s = 0
                    t = _3270 + _4006 + _4550 + _4896
                    while s < _5047:
                        require s < mem[_1558]
                        require t < mem[_1652]
                        mem[_1652 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1558'), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1558'), ('var', 1)), 32))), 0) - 256
                        _5047 = mem[_1558]
                        s = s + 1
                        t = t + 1
                        continue 
                s = _754
                idx = idx + 1
                t = _1652
                continue 
            _1754 = msize
            mem[msize] = mem[_754] + mem[t] + mem[_764] + 3
            mem[64] = _1754 + (32 * _1654 + _1657 + _1656 + 3) + 32
            if not _1654 + _1657 + _1656 + 3:
                _2372 = mem[t]
                s = 0
                u = 0
                while s < _2372:
                    require s < mem[t]
                    require u < mem[_1754]
                    mem[_1754 + u + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 2), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 2), ('var', 1)), 32))), 0) - 256
                    s = s + 1
                    u = u + 1
                    continue 
                _3271 = mem[_764]
                s = 0
                t = _2372
                while s < _3271:
                    require s < mem[_764]
                    require t < mem[_1754]
                    mem[_1754 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_764'), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_764'), ('var', 1)), 32))), 0) - 256
                    _3271 = mem[_764]
                    s = s + 1
                    t = t + 1
                    continue 
                _4007 = mem[_1556]
                s = 0
                t = _2372 + _3271
                while s < _4007:
                    require s < mem[_1556]
                    require t < mem[_1754]
                    mem[_1754 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1556'), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1556'), ('var', 1)), 32))), 0) - 256
                    _4007 = mem[_1556]
                    s = s + 1
                    t = t + 1
                    continue 
                _4551 = mem[_754]
                s = 0
                t = _2372 + _3271 + _4007
                while s < _4551:
                    require s < mem[_754]
                    require t < mem[_1754]
                    mem[_1754 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_754'), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_754'), ('var', 1)), 32))), 0) - 256
                    _4551 = mem[_754]
                    s = s + 1
                    t = t + 1
                    continue 
                _4897 = mem[_1558]
                s = 0
                t = _2372 + _3271 + _4007 + _4551
                while s < _4897:
                    require s < mem[_1558]
                    require t < mem[_1754]
                    mem[_1754 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1558'), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1558'), ('var', 1)), 32))), 0) - 256
                    _4897 = mem[_1558]
                    s = s + 1
                    t = t + 1
                    continue 
                s = _754
                idx = idx + 1
                t = _1754
                continue 
            _3272 = mem[t]
            u = 0
            v = 0
            while u < _3272:
                require u < mem[t]
                require v < mem[_1754]
                mem[_1754 + v + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 2), ('var', 3)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 2), ('var', 3)), 32))), 0) - 256
                u = u + 1
                v = v + 1
                continue 
            _4008 = mem[_764]
            t = 0
            s = _3272
            while t < _4008:
                require t < mem[_764]
                require s < mem[_1754]
                mem[_1754 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_764'), ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_764'), ('var', 2)), 32))), 0) - 256
                _4008 = mem[_764]
                t = t + 1
                s = s + 1
                continue 
            _4552 = mem[_1556]
            idx = 0
            s = _3272 + _4008
            while idx < _4552:
                require idx < mem[_1556]
                require s < mem[_1754]
                mem[_1754 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1556'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1556'), ('var', 0)), 32))), 0) - 256
                _4552 = mem[_1556]
                idx = idx + 1
                s = s + 1
                continue 
            _4898 = mem[_754]
            idx = 0
            s = _3272 + _4008 + _4552
            while idx < _4898:
                require idx < mem[_754]
                require s < mem[_1754]
                mem[_1754 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_754'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_754'), ('var', 0)), 32))), 0) - 256
                _4898 = mem[_754]
                idx = idx + 1
                s = s + 1
                continue 
            _5048 = mem[_1558]
            idx = 0
            s = _3272 + _4008 + _4552 + _4898
            while idx < _5048:
                require idx < mem[_1558]
                require s < mem[_1754]
                mem[_1754 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1558'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1558'), ('var', 0)), 32))), 0) - 256
                _5048 = mem[_1558]
                idx = idx + 1
                s = s + 1
                continue 
            t = _754
            s = _3272 + _4008 + 1
            t = _1754
            continue 
        mem[mem[64]] = stor3.length
        mem[mem[64] + 32] = 64
        mem[mem[64] + 64] = mem[t]
        _745 = mem[t]
        mem[mem[64] + 96 len mem[t]] = mem[t + 32 len mem[t]]
        if not _745 % 32:
            return stor3.length, 64, mem[mem[64] + 64 len _745 + 32]
        mem[floor32(_745) + mem[64] + 96] = mem[floor32(_745) + mem[64] + -(_745 % 32) + 128 len _745 % 32]
        return stor3.length, 64, mem[mem[64] + 64 len floor32(_745) + 64]
    require msg.sender == address(stor1.length)
    mem[64] = 192
    mem[160] = 0
    s = 128
    idx = 0
    t = 160
    while idx < stor3.length:
        mem[0] = 3
        if not uint8(stor3[idx].field_512):
            _757 = mem[64]
            mem[64] = mem[64] + 64
            mem[_757] = 12
            mem[_757 + 32] = 'published ; '
            require idx < stor3.length
            mem[0] = 3
            _766 = mem[64]
            mem[64] = mem[64] + ceil32(stor[(4 * idx) + ('name', 'stor3', 3) + 1].length) + 32
            mem[_766] = stor[(4 * idx) + ('name', 'stor3', 3) + 1].length
            mem[0] = (4 * idx) + sha3(3) + 1
            mem[_766 + 32] = uint256(stor[sha3((4 * idx) + ('name', 'stor3', 3) + 1)].field_0)
            u = _766 + 32
            v = sha3(mem[0])
            while _766 + stor[(4 * idx) + ('name', 'stor3', 3) + 1].length > u:
                mem[u + 32] = uint256(stor1[v])
                u = u + 32
                v = v + 1
                continue 
            _1575 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1575] = 3
            mem[_1575 + 32] = ' : '
            _1576 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1576] = 0
            _1577 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1577] = 0
            _1675 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1675] = 0
            _1676 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1676] = 0
            _1677 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1677] = 0
            _1678 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1678] = 0
            _1679 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1679] = 0
            _1680 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1680] = 0
            _1681 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1681] = 0
            _1682 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1682] = 0
            _1683 = mem[64]
            _1685 = mem[_757]
            _1687 = mem[_766]
            _1688 = mem[t]
            if msize < mem[64]:
                mem[mem[64]] = mem[_757] + mem[t] + mem[_766] + 3
                mem[64] = mem[64] + (32 * _1685 + _1688 + _1687 + 3) + 32
                if not _1685 + _1688 + _1687 + 3:
                    _2381 = mem[t]
                    s = 0
                    u = 0
                    while s < _2381:
                        require s < mem[t]
                        require u < mem[_1683]
                        mem[_1683 + u + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 2), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 2), ('var', 1)), 32))), 0) - 256
                        s = s + 1
                        u = u + 1
                        continue 
                    _3281 = mem[_766]
                    s = 0
                    t = _2381
                    while s < _3281:
                        require s < mem[_766]
                        require t < mem[_1683]
                        mem[_1683 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_766'), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_766'), ('var', 1)), 32))), 0) - 256
                        _3281 = mem[_766]
                        s = s + 1
                        t = t + 1
                        continue 
                    _4017 = mem[_1575]
                    s = 0
                    t = _2381 + _3281
                    while s < _4017:
                        require s < mem[_1575]
                        require t < mem[_1683]
                        mem[_1683 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1575'), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1575'), ('var', 1)), 32))), 0) - 256
                        _4017 = mem[_1575]
                        s = s + 1
                        t = t + 1
                        continue 
                    _4561 = mem[_757]
                    s = 0
                    t = _2381 + _3281 + _4017
                    while s < _4561:
                        require s < mem[_757]
                        require t < mem[_1683]
                        mem[_1683 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_757'), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_757'), ('var', 1)), 32))), 0) - 256
                        _4561 = mem[_757]
                        s = s + 1
                        t = t + 1
                        continue 
                    _4903 = mem[_1577]
                    s = 0
                    t = _2381 + _3281 + _4017 + _4561
                    while s < _4903:
                        require s < mem[_1577]
                        require t < mem[_1683]
                        mem[_1683 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1577'), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1577'), ('var', 1)), 32))), 0) - 256
                        _4903 = mem[_1577]
                        s = s + 1
                        t = t + 1
                        continue 
                else:
                    _3282 = mem[t]
                    s = 0
                    u = 0
                    while s < _3282:
                        require s < mem[t]
                        require u < mem[_1683]
                        mem[_1683 + u + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 2), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 2), ('var', 1)), 32))), 0) - 256
                        s = s + 1
                        u = u + 1
                        continue 
                    _4018 = mem[_766]
                    s = 0
                    t = _3282
                    while s < _4018:
                        require s < mem[_766]
                        require t < mem[_1683]
                        mem[_1683 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_766'), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_766'), ('var', 1)), 32))), 0) - 256
                        _4018 = mem[_766]
                        s = s + 1
                        t = t + 1
                        continue 
                    _4562 = mem[_1575]
                    s = 0
                    t = _3282 + _4018
                    while s < _4562:
                        require s < mem[_1575]
                        require t < mem[_1683]
                        mem[_1683 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1575'), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1575'), ('var', 1)), 32))), 0) - 256
                        _4562 = mem[_1575]
                        s = s + 1
                        t = t + 1
                        continue 
                    _4904 = mem[_757]
                    s = 0
                    t = _3282 + _4018 + _4562
                    while s < _4904:
                        require s < mem[_757]
                        require t < mem[_1683]
                        mem[_1683 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_757'), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_757'), ('var', 1)), 32))), 0) - 256
                        _4904 = mem[_757]
                        s = s + 1
                        t = t + 1
                        continue 
                    _5049 = mem[_1577]
                    s = 0
                    t = _3282 + _4018 + _4562 + _4904
                    while s < _5049:
                        require s < mem[_1577]
                        require t < mem[_1683]
                        mem[_1683 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1577'), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1577'), ('var', 1)), 32))), 0) - 256
                        _5049 = mem[_1577]
                        s = s + 1
                        t = t + 1
                        continue 
                s = _757
                idx = idx + 1
                t = _1683
                continue 
            _1771 = msize
            mem[msize] = mem[_757] + mem[t] + mem[_766] + 3
            mem[64] = _1771 + (32 * _1685 + _1688 + _1687 + 3) + 32
            if not _1685 + _1688 + _1687 + 3:
                _2382 = mem[t]
                s = 0
                u = 0
                while s < _2382:
                    require s < mem[t]
                    require u < mem[_1771]
                    mem[_1771 + u + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 2), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 2), ('var', 1)), 32))), 0) - 256
                    s = s + 1
                    u = u + 1
                    continue 
                _3283 = mem[_766]
                s = 0
                t = _2382
                while s < _3283:
                    require s < mem[_766]
                    require t < mem[_1771]
                    mem[_1771 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_766'), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_766'), ('var', 1)), 32))), 0) - 256
                    _3283 = mem[_766]
                    s = s + 1
                    t = t + 1
                    continue 
                _4019 = mem[_1575]
                s = 0
                t = _2382 + _3283
                while s < _4019:
                    require s < mem[_1575]
                    require t < mem[_1771]
                    mem[_1771 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1575'), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1575'), ('var', 1)), 32))), 0) - 256
                    _4019 = mem[_1575]
                    s = s + 1
                    t = t + 1
                    continue 
                _4563 = mem[_757]
                s = 0
                t = _2382 + _3283 + _4019
                while s < _4563:
                    require s < mem[_757]
                    require t < mem[_1771]
                    mem[_1771 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_757'), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_757'), ('var', 1)), 32))), 0) - 256
                    _4563 = mem[_757]
                    s = s + 1
                    t = t + 1
                    continue 
                _4905 = mem[_1577]
                s = 0
                t = _2382 + _3283 + _4019 + _4563
                while s < _4905:
                    require s < mem[_1577]
                    require t < mem[_1771]
                    mem[_1771 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1577'), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1577'), ('var', 1)), 32))), 0) - 256
                    _4905 = mem[_1577]
                    s = s + 1
                    t = t + 1
                    continue 
                s = _757
                idx = idx + 1
                t = _1771
                continue 
            _3284 = mem[t]
            u = 0
            v = 0
            while u < _3284:
                require u < mem[t]
                require v < mem[_1771]
                mem[_1771 + v + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 2), ('var', 3)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 2), ('var', 3)), 32))), 0) - 256
                u = u + 1
                v = v + 1
                continue 
            _4020 = mem[_766]
            t = 0
            s = _3284
            while t < _4020:
                require t < mem[_766]
                require s < mem[_1771]
                mem[_1771 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_766'), ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_766'), ('var', 2)), 32))), 0) - 256
                _4020 = mem[_766]
                t = t + 1
                s = s + 1
                continue 
            _4564 = mem[_1575]
            idx = 0
            s = _3284 + _4020
            while idx < _4564:
                require idx < mem[_1575]
                require s < mem[_1771]
                mem[_1771 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1575'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1575'), ('var', 0)), 32))), 0) - 256
                _4564 = mem[_1575]
                idx = idx + 1
                s = s + 1
                continue 
            _4906 = mem[_757]
            idx = 0
            s = _3284 + _4020 + _4564
            while idx < _4906:
                require idx < mem[_757]
                require s < mem[_1771]
                mem[_1771 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_757'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_757'), ('var', 0)), 32))), 0) - 256
                _4906 = mem[_757]
                idx = idx + 1
                s = s + 1
                continue 
            _5050 = mem[_1577]
            idx = 0
            s = _3284 + _4020 + _4564 + _4906
            while idx < _5050:
                require idx < mem[_1577]
                require s < mem[_1771]
                mem[_1771 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1577'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1577'), ('var', 0)), 32))), 0) - 256
                _5050 = mem[_1577]
                idx = idx + 1
                s = s + 1
                continue 
            t = _757
            s = _3284 + _4020 + 1
            t = _1771
            continue 
        _758 = mem[64]
        mem[64] = mem[64] + 64
        mem[_758] = 12
        mem[_758 + 32] = 'confirmed ; '
        require idx < stor3.length
        mem[0] = 3
        _768 = mem[64]
        mem[64] = mem[64] + ceil32(stor[(4 * idx) + ('name', 'stor3', 3) + 1].length) + 32
        mem[_768] = stor[(4 * idx) + ('name', 'stor3', 3) + 1].length
        mem[0] = (4 * idx) + sha3(3) + 1
        mem[_768 + 32] = uint256(stor[sha3((4 * idx) + ('name', 'stor3', 3) + 1)].field_0)
        u = _768 + 32
        v = sha3(mem[0])
        while _768 + stor[(4 * idx) + ('name', 'stor3', 3) + 1].length > u:
            mem[u + 32] = uint256(stor1[v])
            u = u + 32
            v = v + 1
            continue 
        _1594 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1594] = 3
        mem[_1594 + 32] = ' : '
        _1595 = mem[64]
        mem[64] = mem[64] + 32
        mem[_1595] = 0
        _1596 = mem[64]
        mem[64] = mem[64] + 32
        mem[_1596] = 0
        _1706 = mem[64]
        mem[64] = mem[64] + 32
        mem[_1706] = 0
        _1707 = mem[64]
        mem[64] = mem[64] + 32
        mem[_1707] = 0
        _1708 = mem[64]
        mem[64] = mem[64] + 32
        mem[_1708] = 0
        _1709 = mem[64]
        mem[64] = mem[64] + 32
        mem[_1709] = 0
        _1710 = mem[64]
        mem[64] = mem[64] + 32
        mem[_1710] = 0
        _1711 = mem[64]
        mem[64] = mem[64] + 32
        mem[_1711] = 0
        _1712 = mem[64]
        mem[64] = mem[64] + 32
        mem[_1712] = 0
        _1713 = mem[64]
        mem[64] = mem[64] + 32
        mem[_1713] = 0
        _1714 = mem[64]
        _1716 = mem[_758]
        _1718 = mem[_768]
        _1719 = mem[t]
        if msize < mem[64]:
            mem[mem[64]] = mem[_758] + mem[t] + mem[_768] + 3
            mem[64] = mem[64] + (32 * _1716 + _1719 + _1718 + 3) + 32
            if not _1716 + _1719 + _1718 + 3:
                _2391 = mem[t]
                s = 0
                u = 0
                while s < _2391:
                    require s < mem[t]
                    require u < mem[_1714]
                    mem[_1714 + u + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 2), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 2), ('var', 1)), 32))), 0) - 256
                    s = s + 1
                    u = u + 1
                    continue 
                _3293 = mem[_768]
                s = 0
                t = _2391
                while s < _3293:
                    require s < mem[_768]
                    require t < mem[_1714]
                    mem[_1714 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_768'), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_768'), ('var', 1)), 32))), 0) - 256
                    _3293 = mem[_768]
                    s = s + 1
                    t = t + 1
                    continue 
                _4029 = mem[_1594]
                s = 0
                t = _2391 + _3293
                while s < _4029:
                    require s < mem[_1594]
                    require t < mem[_1714]
                    mem[_1714 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1594'), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1594'), ('var', 1)), 32))), 0) - 256
                    _4029 = mem[_1594]
                    s = s + 1
                    t = t + 1
                    continue 
                _4573 = mem[_758]
                s = 0
                t = _2391 + _3293 + _4029
                while s < _4573:
                    require s < mem[_758]
                    require t < mem[_1714]
                    mem[_1714 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_758'), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_758'), ('var', 1)), 32))), 0) - 256
                    _4573 = mem[_758]
                    s = s + 1
                    t = t + 1
                    continue 
                _4911 = mem[_1596]
                s = 0
                t = _2391 + _3293 + _4029 + _4573
                while s < _4911:
                    require s < mem[_1596]
                    require t < mem[_1714]
                    mem[_1714 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1596'), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1596'), ('var', 1)), 32))), 0) - 256
                    _4911 = mem[_1596]
                    s = s + 1
                    t = t + 1
                    continue 
            else:
                _3294 = mem[t]
                s = 0
                u = 0
                while s < _3294:
                    require s < mem[t]
                    require u < mem[_1714]
                    mem[_1714 + u + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 2), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 2), ('var', 1)), 32))), 0) - 256
                    s = s + 1
                    u = u + 1
                    continue 
                _4030 = mem[_768]
                s = 0
                t = _3294
                while s < _4030:
                    require s < mem[_768]
                    require t < mem[_1714]
                    mem[_1714 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_768'), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_768'), ('var', 1)), 32))), 0) - 256
                    _4030 = mem[_768]
                    s = s + 1
                    t = t + 1
                    continue 
                _4574 = mem[_1594]
                s = 0
                t = _3294 + _4030
                while s < _4574:
                    require s < mem[_1594]
                    require t < mem[_1714]
                    mem[_1714 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1594'), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1594'), ('var', 1)), 32))), 0) - 256
                    _4574 = mem[_1594]
                    s = s + 1
                    t = t + 1
                    continue 
                _4912 = mem[_758]
                s = 0
                t = _3294 + _4030 + _4574
                while s < _4912:
                    require s < mem[_758]
                    require t < mem[_1714]
                    mem[_1714 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_758'), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_758'), ('var', 1)), 32))), 0) - 256
                    _4912 = mem[_758]
                    s = s + 1
                    t = t + 1
                    continue 
                _5051 = mem[_1596]
                s = 0
                t = _3294 + _4030 + _4574 + _4912
                while s < _5051:
                    require s < mem[_1596]
                    require t < mem[_1714]
                    mem[_1714 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1596'), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1596'), ('var', 1)), 32))), 0) - 256
                    _5051 = mem[_1596]
                    s = s + 1
                    t = t + 1
                    continue 
            s = _758
            idx = idx + 1
            t = _1714
            continue 
        _1788 = msize
        mem[msize] = mem[_758] + mem[t] + mem[_768] + 3
        mem[64] = _1788 + (32 * _1716 + _1719 + _1718 + 3) + 32
        if not _1716 + _1719 + _1718 + 3:
            _2392 = mem[t]
            s = 0
            u = 0
            while s < _2392:
                require s < mem[t]
                require u < mem[_1788]
                mem[_1788 + u + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 2), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 2), ('var', 1)), 32))), 0) - 256
                s = s + 1
                u = u + 1
                continue 
            _3295 = mem[_768]
            s = 0
            t = _2392
            while s < _3295:
                require s < mem[_768]
                require t < mem[_1788]
                mem[_1788 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_768'), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_768'), ('var', 1)), 32))), 0) - 256
                _3295 = mem[_768]
                s = s + 1
                t = t + 1
                continue 
            _4031 = mem[_1594]
            s = 0
            t = _2392 + _3295
            while s < _4031:
                require s < mem[_1594]
                require t < mem[_1788]
                mem[_1788 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1594'), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1594'), ('var', 1)), 32))), 0) - 256
                _4031 = mem[_1594]
                s = s + 1
                t = t + 1
                continue 
            _4575 = mem[_758]
            s = 0
            t = _2392 + _3295 + _4031
            while s < _4575:
                require s < mem[_758]
                require t < mem[_1788]
                mem[_1788 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_758'), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_758'), ('var', 1)), 32))), 0) - 256
                _4575 = mem[_758]
                s = s + 1
                t = t + 1
                continue 
            _4913 = mem[_1596]
            s = 0
            t = _2392 + _3295 + _4031 + _4575
            while s < _4913:
                require s < mem[_1596]
                require t < mem[_1788]
                mem[_1788 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1596'), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1596'), ('var', 1)), 32))), 0) - 256
                _4913 = mem[_1596]
                s = s + 1
                t = t + 1
                continue 
            s = _758
            idx = idx + 1
            t = _1788
            continue 
        _3296 = mem[t]
        u = 0
        v = 0
        while u < _3296:
            require u < mem[t]
            require v < mem[_1788]
            mem[_1788 + v + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 2), ('var', 3)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 2), ('var', 3)), 32))), 0) - 256
            u = u + 1
            v = v + 1
            continue 
        _4032 = mem[_768]
        t = 0
        s = _3296
        while t < _4032:
            require t < mem[_768]
            require s < mem[_1788]
            mem[_1788 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_768'), ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_768'), ('var', 2)), 32))), 0) - 256
            _4032 = mem[_768]
            t = t + 1
            s = s + 1
            continue 
        _4576 = mem[_1594]
        idx = 0
        s = _3296 + _4032
        while idx < _4576:
            require idx < mem[_1594]
            require s < mem[_1788]
            mem[_1788 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1594'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1594'), ('var', 0)), 32))), 0) - 256
            _4576 = mem[_1594]
            idx = idx + 1
            s = s + 1
            continue 
        _4914 = mem[_758]
        idx = 0
        s = _3296 + _4032 + _4576
        while idx < _4914:
            require idx < mem[_758]
            require s < mem[_1788]
            mem[_1788 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_758'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_758'), ('var', 0)), 32))), 0) - 256
            _4914 = mem[_758]
            idx = idx + 1
            s = s + 1
            continue 
        _5052 = mem[_1596]
        idx = 0
        s = _3296 + _4032 + _4576 + _4914
        while idx < _5052:
            require idx < mem[_1596]
            require s < mem[_1788]
            mem[_1788 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1596'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1596'), ('var', 0)), 32))), 0) - 256
            _5052 = mem[_1596]
            idx = idx + 1
            s = s + 1
            continue 
        t = _758
        s = _3296 + _4032 + 1
        t = _1788
        continue 
    mem[mem[64]] = stor3.length
    mem[mem[64] + 32] = 64
    mem[mem[64] + 64] = mem[t]
    _749 = mem[t]
    mem[mem[64] + 96 len mem[t]] = mem[t + 32 len mem[t]]
    if not _749 % 32:
        return stor3.length, 64, mem[mem[64] + 64 len _749 + 32]
    mem[floor32(_749) + mem[64] + 96] = mem[floor32(_749) + mem[64] + -(_749 % 32) + 128 len _749 % 32]
    return stor3.length, 64, mem[mem[64] + 64 len floor32(_749) + 64]
}



}
