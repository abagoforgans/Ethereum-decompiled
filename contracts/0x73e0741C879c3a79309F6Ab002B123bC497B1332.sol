contract main {




// =====================  Runtime code  =====================


address owner;
mapping of address delegate;
array of struct stor2;
mapping of uint256 stor3;

function delegateAddress(string arg1) {
    if not stor3[arg1[all]]:
        revert with 0, 'Function signature not found.'
    return address(delegate[Mask(32, 224, sha3(arg1[all]))])
}

function owner() {
    return owner
}

function totalFunctions() {
    return stor2.length
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function functionExists(string arg1) {
    return not not stor3[arg1[all]]
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function functionByIndex(uint256 arg1) {
    if arg1 >= stor2.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'functionSignatures index does not exist.'
    mem[96] = stor2[arg1].length
    mem[0] = sha3(2) + arg1
    mem[128] = uint256(stor2[arg1].field_0)
    idx = 128
    s = 0
    while stor2[arg1].length + 96 > idx:
        mem[idx + 32] = uint256(stor2[arg1 + s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor2[arg1].length) + 128 len floor32(stor2[arg1].length)] = mem[128 len floor32(stor2[arg1].length)]
    mem[ceil32(stor2[arg1].length) + floor32(stor2[arg1].length) + 128] = mem[floor32(stor2[arg1].length) + -stor2[arg1].length % 32 + 160 len stor2[arg1].length % 32] or Mask(8 * -stor2[arg1].length % 32 + 32, -(8 * -stor2[arg1].length % 32 + 32) + 256, mem[ceil32(stor2[arg1].length) + floor32(stor2[arg1].length) + 128])
    _97 = sha3(Mask(32, 224, sha3(mem[ceil32(stor2[arg1].length) + 128 len stor2[arg1].length])), 1)
    mem[ceil32(stor2[arg1].length) + 160] = Mask(32, 224, sha3(mem[ceil32(stor2[arg1].length) + 128 len stor2[arg1].length]))
    return Array(len=stor2[arg1].length, data=mem[128 len stor2[arg1].length]), 
           mem[ceil32(stor2[arg1].length) + 160],
           address(stor[_97])
}

function functionById(bytes4 arg1) payable {
    mem[64] = 96
    require not msg.value
    idx = 0
    while idx < stor2.length:
        _63 = mem[64]
        mem[0] = sha3(2) + idx
        mem[mem[64]] = uint256(stor2[idx].field_0)
        s = mem[64]
        t = sha3(mem[0])
        while _63 + stor2[s].length > s + 32:
            mem[s + 32] = uint256(delegate[t])
            s = s + 32
            t = t + 1
            continue 
        if Mask(32, 224, arg1) != Mask(32, 224, sha3(mem[mem[64] len _63 + stor2[s].length - mem[64]])):
            s = s + 1
            continue 
        require s < stor2.length
        mem[0] = Mask(32, 224, arg1)
        mem[32] = 1
        _157 = mem[64]
        mem[64] = mem[64] + ceil32(stor2[s].length) + 32
        mem[_157] = stor2[s].length
        mem[0] = sha3(2) + s
        mem[_157 + 32] = uint256(stor2[s].field_0)
        t = _157 + 32
        u = sha3(mem[0])
        while _157 + stor2[s].length > t:
            mem[t + 32] = uint256(delegate[u])
            t = t + 32
            u = u + 1
            continue 
        _192 = mem[64]
        mem[mem[64] + 32] = address(delegate[Mask(32, 224, arg1)])
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[_157]
        _194 = mem[_157]
        idx = 0
        while idx < _194:
            mem[mem[64] + idx + 96] = mem[_157 + idx + 32]
            idx = idx + 32
            continue 
        if not _194 % 32:
            return memory
              from mem[64]
               len _194 + _192 + -mem[64] + 96
        mem[floor32(_194) + _192 + 96] = mem[floor32(_194) + _192 + -(_194 % 32) + 128 len _194 % 32]
        return memory
          from mem[64]
           len floor32(_194) + _192 + -mem[64] + 128
    revert with 0, 'functionId not found'
}

function delegateAddresses() {
    mem[96] = stor2.length
    mem[64] = (32 * stor2.length) + 128
    if not stor2.length:
        s = 0
        idx = 0
        s = 0
        while idx < stor2.length:
            _39 = mem[64]
            mem[0] = sha3(2) + idx
            mem[mem[64]] = uint256(stor2[idx].field_0)
            t = mem[64]
            u = sha3(mem[0])
            while _39 + stor2[idx].length > t + 32:
                mem[t + 32] = uint256(delegate[u])
                t = t + 32
                u = u + 1
                continue 
            mem[0] = Mask(32, 224, sha3(mem[mem[64] len _39 + stor2[idx].length - mem[64]]))
            mem[32] = 1
            t = 0
            while t < s:
                require t < mem[96]
                if address(delegate[mem[0]]) != mem[(32 * t) + 140 len 20]:
                    t = t + 1
                    continue 
                s = address(delegate[mem[0]])
                idx = idx + 1
                s = s
                continue 
            require s < mem[96]
            mem[(32 * s) + 128] = address(delegate[mem[0]])
            s = address(delegate[mem[0]])
            idx = idx + 1
            s = s + 1
            continue 
        _36 = mem[64]
        mem[mem[64]] = s
        mem[64] = mem[64] + (32 * s) + 32
        if not s:
            t = 0
            while t < s:
                require t < mem[96]
                require t < mem[_36]
                mem[(32 * t) + _36 + 32] = mem[(32 * t) + 140 len 20]
                t = t + 1
                continue 
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[_36]
            _114 = mem[_36]
            mem[mem[64] + 64 len floor32(mem[_36])] = mem[_36 + 32 len floor32(mem[_36])]
            return 32, mem[mem[64] + 32 len (32 * _114) + 32]
        mem[_36 + 32 len 32 * s] = code.data[9897 len 32 * s]
        t = 0
        while t < s:
            require t < mem[96]
            require t < mem[_36]
            mem[(32 * t) + _36 + 32] = mem[(32 * t) + 140 len 20]
            t = t + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[_36]
        _119 = mem[_36]
        mem[mem[64] + 64 len floor32(mem[_36])] = mem[_36 + 32 len floor32(mem[_36])]
        return 32, mem[mem[64] + 32 len (32 * _119) + 32]
    mem[128 len 32 * stor2.length] = code.data[9897 len 32 * stor2.length]
    s = 0
    idx = 0
    s = 0
    while idx < stor2.length:
        _41 = mem[64]
        mem[0] = sha3(2) + idx
        mem[mem[64]] = uint256(stor2[idx].field_0)
        t = mem[64]
        u = sha3(mem[0])
        while _41 + stor2[idx].length > t + 32:
            mem[t + 32] = uint256(delegate[u])
            t = t + 32
            u = u + 1
            continue 
        mem[0] = Mask(32, 224, sha3(mem[mem[64] len _41 + stor2[idx].length - mem[64]]))
        mem[32] = 1
        t = 0
        while t < s:
            require t < mem[96]
            if address(delegate[mem[0]]) != mem[(32 * t) + 140 len 20]:
                t = t + 1
                continue 
            s = address(delegate[mem[0]])
            idx = idx + 1
            s = s
            continue 
        require s < mem[96]
        mem[(32 * s) + 128] = address(delegate[mem[0]])
        s = address(delegate[mem[0]])
        idx = idx + 1
        s = s + 1
        continue 
    _37 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + (32 * s) + 32
    if not s:
        t = 0
        while t < s:
            require t < mem[96]
            require t < mem[_37]
            mem[(32 * t) + _37 + 32] = mem[(32 * t) + 140 len 20]
            t = t + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[_37]
        _128 = mem[_37]
        mem[mem[64] + 64 len floor32(mem[_37])] = mem[_37 + 32 len floor32(mem[_37])]
        return 32, mem[mem[64] + 32 len (32 * _128) + 32]
    mem[_37 + 32 len 32 * s] = code.data[9897 len 32 * s]
    t = 0
    while t < s:
        require t < mem[96]
        require t < mem[_37]
        mem[(32 * t) + _37 + 32] = mem[(32 * t) + 140 len 20]
        t = t + 1
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_37]
    _133 = mem[_37]
    mem[mem[64] + 64 len floor32(mem[_37])] = mem[_37 + 32 len floor32(mem[_37])]
    return 32, mem[mem[64] + 32 len (32 * _133) + 32]
}

function functionSignatures() {
    mem[96] = stor2.length
    mem[64] = (32 * stor2.length) + 128
    if not stor2.length:
        idx = 0
        s = 96
        t = 0
        while idx < stor2.length:
            mem[0] = 2
            _50 = mem[64]
            mem[64] = mem[64] + ceil32(stor2[idx].length) + 32
            mem[_50] = stor2[idx].length
            mem[0] = sha3(2) + idx
            mem[_50 + 32] = uint256(stor2[idx].field_0)
            s = _50 + 32
            u = sha3(mem[0])
            while _50 + stor2[idx].length > s:
                mem[s + 32] = uint256(delegate[u])
                s = s + 32
                u = u + 1
                continue 
            _118 = mem[_50]
            require idx < mem[96]
            mem[(32 * idx) + 128] = _50
            idx = idx + 1
            s = _50
            t = t + _118
            continue 
        _48 = mem[64]
        mem[mem[64]] = t
        mem[64] = mem[64] + ceil32(t) + 32
        if not t:
            idx = 0
            t = s
            while idx < stor2.length:
                require idx < mem[96]
                _113 = mem[(32 * idx) + 128]
                _171 = mem[mem[(32 * idx) + 128]]
                s = 0
                t = 0
                while s < _171:
                    require s < mem[_113]
                    require t < mem[_48]
                    mem[_48 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_113'), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_113'), ('var', 1)), 32))), 0) - 256
                    s = s + 1
                    t = t + 1
                    continue 
                idx = idx + 1
                t = _113
                continue 
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[_48]
            _112 = mem[_48]
            mem[mem[64] + 64 len ceil32(mem[_48])] = mem[_48 + 32 len ceil32(mem[_48])]
            if not _112 % 32:
                return 32, mem[mem[64] + 32 len _112 + 32]
            mem[floor32(_112) + mem[64] + 64] = mem[floor32(_112) + mem[64] + -(_112 % 32) + 96 len _112 % 32]
            return 32, mem[mem[64] + 32 len floor32(_112) + 64]
        mem[_48 + 32 len 32 * t] = code.data[9897 len 32 * t]
        idx = 0
        t = s
        while idx < stor2.length:
            require idx < mem[96]
            _117 = mem[(32 * idx) + 128]
            _172 = mem[mem[(32 * idx) + 128]]
            s = 0
            t = 0
            while s < _172:
                require s < mem[_117]
                require t < mem[_48]
                mem[_48 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_117'), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_117'), ('var', 1)), 32))), 0) - 256
                s = s + 1
                t = t + 1
                continue 
            idx = idx + 1
            t = _117
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[_48]
        _116 = mem[_48]
        mem[mem[64] + 64 len ceil32(mem[_48])] = mem[_48 + 32 len ceil32(mem[_48])]
        if not _116 % 32:
            return 32, mem[mem[64] + 32 len _116 + 32]
        mem[floor32(_116) + mem[64] + 64] = mem[floor32(_116) + mem[64] + -(_116 % 32) + 96 len _116 % 32]
        return 32, mem[mem[64] + 32 len floor32(_116) + 64]
    mem[128] = 96
    s = 128
    idx = stor2.length
    while idx - 1:
        mem[s + 32] = 96
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    s = 96
    t = 0
    while idx < stor2.length:
        mem[0] = 2
        _121 = mem[64]
        mem[64] = mem[64] + ceil32(stor2[idx].length) + 32
        mem[_121] = stor2[idx].length
        mem[0] = sha3(2) + idx
        mem[_121 + 32] = uint256(stor2[idx].field_0)
        s = _121 + 32
        u = sha3(mem[0])
        while _121 + stor2[idx].length > s:
            mem[s + 32] = uint256(delegate[u])
            s = s + 32
            u = u + 1
            continue 
        _195 = mem[_121]
        require idx < mem[96]
        mem[(32 * idx) + 128] = _121
        idx = idx + 1
        s = _121
        t = t + _195
        continue 
    _109 = mem[64]
    mem[mem[64]] = t
    mem[64] = mem[64] + ceil32(t) + 32
    if not t:
        idx = 0
        t = s
        while idx < stor2.length:
            require idx < mem[96]
            _190 = mem[(32 * idx) + 128]
            _215 = mem[mem[(32 * idx) + 128]]
            s = 0
            t = 0
            while s < _215:
                require s < mem[_190]
                require t < mem[_109]
                mem[_109 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_190'), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_190'), ('var', 1)), 32))), 0) - 256
                s = s + 1
                t = t + 1
                continue 
            idx = idx + 1
            t = _190
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[_109]
        _189 = mem[_109]
        mem[mem[64] + 64 len ceil32(mem[_109])] = mem[_109 + 32 len ceil32(mem[_109])]
        if not _189 % 32:
            return 32, mem[mem[64] + 32 len _189 + 32]
        mem[floor32(_189) + mem[64] + 64] = mem[floor32(_189) + mem[64] + -(_189 % 32) + 96 len _189 % 32]
        return 32, mem[mem[64] + 32 len floor32(_189) + 64]
    mem[_109 + 32 len 32 * t] = code.data[9897 len 32 * t]
    idx = 0
    t = s
    while idx < stor2.length:
        require idx < mem[96]
        _194 = mem[(32 * idx) + 128]
        _216 = mem[mem[(32 * idx) + 128]]
        s = 0
        t = 0
        while s < _216:
            require s < mem[_194]
            require t < mem[_109]
            mem[_109 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_194'), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_194'), ('var', 1)), 32))), 0) - 256
            s = s + 1
            t = t + 1
            continue 
        idx = idx + 1
        t = _194
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_109]
    _193 = mem[_109]
    mem[mem[64] + 64 len ceil32(mem[_109])] = mem[_109 + 32 len ceil32(mem[_109])]
    if not _193 % 32:
        return 32, mem[mem[64] + 32 len _193 + 32]
    mem[floor32(_193) + mem[64] + 64] = mem[floor32(_193) + mem[64] + -(_193 % 32) + 96 len _193 % 32]
    return 32, mem[mem[64] + 32 len floor32(_193) + 64]
}

function delegateFunctionSignatures(address arg1) {
    mem[96] = stor2.length
    mem[64] = (32 * stor2.length) + 128
    if not stor2.length:
        idx = 0
        s = 96
        t = 0
        u = 0
        while idx < stor2.length:
            mem[0] = 2
            _116 = mem[64]
            mem[64] = mem[64] + ceil32(stor2[idx].length) + 32
            mem[_116] = stor2[idx].length
            mem[0] = sha3(2) + idx
            mem[_116 + 32] = uint256(stor2[idx].field_0)
            s = _116 + 32
            v = sha3(mem[0])
            while _116 + stor2[idx].length > s:
                mem[s + 32] = uint256(delegate[v])
                s = s + 32
                v = v + 1
                continue 
            _278 = mem[_116]
            v = _116 + 32
            w = mem[64]
            s = mem[_116]
            while s >= 32:
                mem[w] = mem[v]
                v = v + 32
                w = w + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[_116])] = mem[_116 + floor32(mem[_116]) + -(mem[_116] % 32) + 64 len mem[_116] % 32] or Mask(8 * -(mem[_116] % 32) + 32, -(8 * -(mem[_116] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_116])])
            mem[0] = Mask(32, 224, sha3(mem[mem[64] len _278]))
            mem[32] = 1
            if arg1 != address(delegate[mem[0]]):
                idx = idx + 1
                s = _116
                t = t
                u = u
                continue 
            _438 = mem[_116]
            require u < mem[96]
            mem[(32 * u) + 128] = _116
            idx = idx + 1
            s = _116
            t = t + _438
            u = u + 1
            continue 
        _114 = mem[64]
        mem[mem[64]] = t
        mem[64] = mem[64] + ceil32(t) + 32
        if not t:
            _248 = mem[96]
            idx = 0
            t = s
            while idx < _248:
                require idx < mem[96]
                _268 = mem[(32 * idx) + 128]
                if mem[mem[(32 * idx) + 128]]:
                    _396 = mem[mem[(32 * idx) + 128]]
                    s = 0
                    t = 0
                    while s < _396:
                        require s < mem[_268]
                        require t < mem[_114]
                        mem[_114 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_268'), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_268'), ('var', 1)), 32))), 0) - 256
                        s = s + 1
                        t = t + 1
                        continue 
                    idx = idx + 1
                    t = _268
                    continue 
                _302 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = mem[_114]
                _304 = mem[_114]
                idx = 0
                while idx < _304:
                    mem[_302 + idx + 64] = mem[_114 + idx + 32]
                    idx = idx + 32
                    continue 
                if not _304 % 32:
                    return memory
                      from mem[64]
                       len _304 + _302 + -mem[64] + 64
                mem[floor32(_304) + _302 + 64] = mem[floor32(_304) + _302 + -(_304 % 32) + 96 len _304 % 32]
                return memory
                  from mem[64]
                   len floor32(_304) + _302 + -mem[64] + 96
            _265 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[_114]
            _267 = mem[_114]
            mem[mem[64] + 64 len ceil32(mem[_114])] = mem[_114 + 32 len ceil32(mem[_114])]
            if not _267 % 32:
                return 32, mem[mem[64] + 32 len _267 + 32]
            mem[floor32(_267) + mem[64] + 64] = mem[floor32(_267) + mem[64] + -(_267 % 32) + 96 len _267 % 32]
            return memory
              from mem[64]
               len floor32(_267) + _265 + -mem[64] + 96
        mem[_114 + 32 len 32 * t] = code.data[9897 len 32 * t]
        _249 = mem[96]
        t = 0
        u = u
        while t < _249:
            require t < mem[96]
            _273 = mem[(32 * t) + 128]
            if mem[mem[(32 * t) + 128]]:
                _397 = mem[mem[(32 * t) + 128]]
                idx = 0
                s = 0
                while idx < _397:
                    require idx < mem[_273]
                    require s < mem[_114]
                    mem[_114 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_273'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_273'), ('var', 0)), 32))), 0) - 256
                    idx = idx + 1
                    s = s + 1
                    continue 
                t = t + 1
                u = _273
                continue 
            _308 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[_114]
            _310 = mem[_114]
            idx = 0
            while idx < _310:
                mem[_308 + idx + 64] = mem[_114 + idx + 32]
                idx = idx + 32
                continue 
            if not _310 % 32:
                return memory
                  from mem[64]
                   len _310 + _308 + -mem[64] + 64
            mem[floor32(_310) + _308 + 64] = mem[floor32(_310) + _308 + -(_310 % 32) + 96 len _310 % 32]
            return memory
              from mem[64]
               len floor32(_310) + _308 + -mem[64] + 96
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[_114]
        _272 = mem[_114]
        mem[mem[64] + 64 len ceil32(mem[_114])] = mem[_114 + 32 len ceil32(mem[_114])]
        if not _272 % 32:
            return 32, mem[mem[64] + 32 len _272 + 32]
        mem[floor32(_272) + mem[64] + 64] = mem[floor32(_272) + mem[64] + -(_272 % 32) + 96 len _272 % 32]
        return 32, mem[mem[64] + 32 len floor32(_272) + 64]
    mem[128] = 96
    s = 128
    idx = stor2.length
    while idx - 1:
        mem[s + 32] = 96
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    s = 96
    t = 0
    u = 0
    while idx < stor2.length:
        mem[0] = 2
        _282 = mem[64]
        mem[64] = mem[64] + ceil32(stor2[idx].length) + 32
        mem[_282] = stor2[idx].length
        mem[0] = sha3(2) + idx
        mem[_282 + 32] = uint256(stor2[idx].field_0)
        s = _282 + 32
        v = sha3(mem[0])
        while _282 + stor2[idx].length > s:
            mem[s + 32] = uint256(delegate[v])
            s = s + 32
            v = v + 1
            continue 
        _453 = mem[_282]
        v = _282 + 32
        w = mem[64]
        s = mem[_282]
        while s >= 32:
            mem[w] = mem[v]
            v = v + 32
            w = w + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[_282])] = mem[_282 + floor32(mem[_282]) + -(mem[_282] % 32) + 64 len mem[_282] % 32] or Mask(8 * -(mem[_282] % 32) + 32, -(8 * -(mem[_282] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_282])])
        mem[0] = Mask(32, 224, sha3(mem[mem[64] len _453]))
        mem[32] = 1
        if arg1 != address(delegate[mem[0]]):
            idx = idx + 1
            s = _282
            t = t
            u = u
            continue 
        _524 = mem[_282]
        require u < mem[96]
        mem[(32 * u) + 128] = _282
        idx = idx + 1
        s = _282
        t = t + _524
        u = u + 1
        continue 
    _264 = mem[64]
    mem[mem[64]] = t
    mem[64] = mem[64] + ceil32(t) + 32
    if not t:
        _398 = mem[96]
        idx = 0
        t = s
        while idx < _398:
            require idx < mem[96]
            _443 = mem[(32 * idx) + 128]
            if mem[mem[(32 * idx) + 128]]:
                _498 = mem[mem[(32 * idx) + 128]]
                s = 0
                t = 0
                while s < _498:
                    require s < mem[_443]
                    require t < mem[_264]
                    mem[_264 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_443'), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_443'), ('var', 1)), 32))), 0) - 256
                    s = s + 1
                    t = t + 1
                    continue 
                idx = idx + 1
                t = _443
                continue 
            _473 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[_264]
            _475 = mem[_264]
            idx = 0
            while idx < _475:
                mem[_473 + idx + 64] = mem[_264 + idx + 32]
                idx = idx + 32
                continue 
            if not _475 % 32:
                return memory
                  from mem[64]
                   len _475 + _473 + -mem[64] + 64
            mem[floor32(_475) + _473 + 64] = mem[floor32(_475) + _473 + -(_475 % 32) + 96 len _475 % 32]
            return memory
              from mem[64]
               len floor32(_475) + _473 + -mem[64] + 96
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[_264]
        _442 = mem[_264]
        mem[mem[64] + 64 len ceil32(mem[_264])] = mem[_264 + 32 len ceil32(mem[_264])]
        if not _442 % 32:
            return 32, mem[mem[64] + 32 len _442 + 32]
        mem[floor32(_442) + mem[64] + 64] = mem[floor32(_442) + mem[64] + -(_442 % 32) + 96 len _442 % 32]
        return 32, mem[mem[64] + 32 len floor32(_442) + 64]
    mem[_264 + 32 len 32 * t] = code.data[9897 len 32 * t]
    _399 = mem[96]
    t = 0
    u = u
    while t < _399:
        require t < mem[96]
        _448 = mem[(32 * t) + 128]
        if mem[mem[(32 * t) + 128]]:
            _499 = mem[mem[(32 * t) + 128]]
            idx = 0
            s = 0
            while idx < _499:
                require idx < mem[_448]
                require s < mem[_264]
                mem[_264 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_448'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_448'), ('var', 0)), 32))), 0) - 256
                idx = idx + 1
                s = s + 1
                continue 
            t = t + 1
            u = _448
            continue 
        _479 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[_264]
        _481 = mem[_264]
        idx = 0
        while idx < _481:
            mem[_479 + idx + 64] = mem[_264 + idx + 32]
            idx = idx + 32
            continue 
        if not _481 % 32:
            return memory
              from mem[64]
               len _481 + _479 + -mem[64] + 64
        mem[floor32(_481) + _479 + 64] = mem[floor32(_481) + _479 + -(_481 % 32) + 96 len _481 % 32]
        return memory
          from mem[64]
           len floor32(_481) + _479 + -mem[64] + 96
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_264]
    _447 = mem[_264]
    mem[mem[64] + 64 len ceil32(mem[_264])] = mem[_264 + 32 len ceil32(mem[_264])]
    if not _447 % 32:
        return 32, mem[mem[64] + 32 len _447 + 32]
    mem[floor32(_447) + mem[64] + 64] = mem[floor32(_447) + mem[64] + -(_447 % 32) + 96 len _447 % 32]
    return 32, mem[mem[64] + 32 len floor32(_447) + 64]
}

function updateContract(address arg1, string arg2, string arg3) {
    require msg.sender == owner
    if not arg1:
        mem[64] = ceil32(arg2.length) + 128
        mem[96] = arg2.length
        mem[128 len arg2.length] = arg2[all]
        s = 0
        t = 0
        u = 0
        u = 0
        v = 0
        w = 0
        x = 128
        y = 96
        idx = 128
        while idx < arg2.length + 128:
            _679 = mem[idx]
            if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('var', 0), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('var', 0), 32))), 0) - 256 != 41:
                s = s
                t = t
                u = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('var', 0), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('var', 0), 32))), 0) - 256
                u = u
                v = v
                w = w
                x = x
                y = y
                idx = idx + 1
                continue 
            mem[y] = idx + -x + 1
            v = y + 32
            w = mem[64]
            u = mem[y]
            while u >= 32:
                mem[w] = mem[v]
                v = v + 32
                w = w + 32
                u = u - 32
                continue 
            mem[mem[64] + floor32(mem[y])] = mem[y + floor32(mem[y]) + -(mem[y] % 32) + 64 len mem[y] % 32] or Mask(8 * -(mem[y] % 32) + 32, -(8 * -(mem[y] % 32) + 32) + 256, mem[mem[64] + floor32(mem[y])])
            _1350 = sha3(mem[mem[64] len idx + -x + 1])
            mem[0] = Mask(32, 224, sha3(mem[mem[64] len idx + -x + 1]))
            mem[32] = 1
            _1351 = sha3(mem[0], 1)
            if arg1:
                _1360 = mem[y]
                v = y + 32
                w = mem[64]
                u = mem[y]
                while u >= 32:
                    mem[w] = mem[v]
                    v = v + 32
                    w = w + 32
                    u = u - 32
                    continue 
                mem[mem[64] + floor32(mem[y])] = mem[y + floor32(mem[y]) + -(mem[y] % 32) + 64 len mem[y] % 32] or Mask(8 * -(mem[y] % 32) + 32, -(8 * -(mem[y] % 32) + 32) + 256, mem[mem[64] + floor32(mem[y])])
                mem[_1360 + mem[64]] = 3
                if uint256(stor[sha3(mem[mem[64] len _1360 + 32])]):
                    mem[0] = Mask(32, 224, _1350)
                    mem[32] = 1
                    if address(delegate[Mask(32, 224, _1350)]) != arg1:
                        mem[0] = Mask(32, 224, _1350)
                        mem[32] = 1
                        address(delegate[Mask(32, 224, _1350)]) = arg1
                        _2034 = mem[64]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = mem[y]
                        _2036 = mem[y]
                        u = 0
                        while u < _2036:
                            mem[_2034 + u + 64] = mem[y + u + 32]
                            u = u + 32
                            continue 
                        if not _2036 % 32:
                            emit 0x3234040c: mem[mem[64] len _2036 + _2034 + -mem[64] + 64], Mask(32, 224, _1350), address(stor[_1351]), arg1
                        else:
                            mem[floor32(_2036) + _2034 + 64] = mem[floor32(_2036) + _2034 + -(_2036 % 32) + 96 len _2036 % 32]
                            emit 0x3234040c: mem[mem[64] len floor32(_2036) + _2034 + -mem[64] + 96], Mask(32, 224, _1350), address(stor[_1351]), arg1
                else:
                    if address(stor[_1351]):
                        revert with 0, 'Funcion id clash.'
                    mem[32] = 1
                    address(delegate[Mask(32, 224, _1350)]) = arg1
                    stor2.length++
                    mem[0] = 2
                    _2039 = mem[y]
                    mem[0] = sha3(2) + stor2.length
                    uint256(stor2[stor2.length].field_0) = (2 * _2039) + 1
                    u = sha3(sha3(2) + stor2.length)
                    v = y + 32
                    while y + _2039 + 32 > v:
                        uint256(stor[u]) = mem[v]
                        u = u + 1
                        v = v + 32
                        continue 
                    v = u
                    while sha3(sha3(2) + stor2.length) + (stor2[stor2.length].length + 31 / 32) > v:
                        uint256(stor[v]) = 0
                        v = v + 1
                        continue 
                    _3380 = mem[y]
                    v = y + 32
                    w = mem[64]
                    u = mem[y]
                    while u >= 32:
                        mem[w] = mem[v]
                        v = v + 32
                        w = w + 32
                        u = u - 32
                        continue 
                    mem[mem[64] + floor32(mem[y])] = mem[y + floor32(mem[y]) + -(mem[y] % 32) + 64 len mem[y] % 32] or Mask(8 * -(mem[y] % 32) + 32, -(8 * -(mem[y] % 32) + 32) + 256, mem[mem[64] + floor32(mem[y])])
                    mem[_3380 + mem[64]] = 3
                    uint256(stor[sha3(mem[mem[64] len _3380 + 32])]) = stor2.length
                    _3722 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = mem[y]
                    _3724 = mem[y]
                    u = 0
                    while u < _3724:
                        mem[_3722 + u + 64] = mem[y + u + 32]
                        u = u + 32
                        continue 
                    if not _3724 % 32:
                        emit 0x3234040c: mem[mem[64] len _3724 + _3722 + -mem[64] + 64], Mask(32, 224, _1350), 0, arg1
                    else:
                        mem[floor32(_3724) + _3722 + 64] = mem[floor32(_3724) + _3722 + -(_3724 % 32) + 96 len _3724 % 32]
                        emit 0x3234040c: mem[mem[64] len floor32(_3724) + _3722 + -mem[64] + 96], Mask(32, 224, _1350), 0, arg1
                s = s
                t = t
                u = Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_679')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_679')), 0) - 256
                u = idx + -x + 1
                v = address(stor[_1351])
                w = _1350
                x = idx + 1
                y = y + idx + -x + 1
                idx = idx + 2
                continue 
            _1362 = mem[y]
            t = y + 32
            u = mem[64]
            s = mem[y]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[y])] = mem[y + floor32(mem[y]) + -(mem[y] % 32) + 64 len mem[y] % 32] or Mask(8 * -(mem[y] % 32) + 32, -(8 * -(mem[y] % 32) + 32) + 256, mem[mem[64] + floor32(mem[y])])
            mem[_1362 + mem[64]] = 3
            _2015 = sha3(mem[mem[64] len _1362 + 32])
            if not uint256(stor[sha3(mem[mem[64] len _1362 + 32])]):
                revert with 0, 'Function does not exist.'
            if uint256(stor[sha3(mem[mem[64] len _1362 + 32])]) - 1 == stor2.length - 1:
                stor2.length--
                if stor2.length <= stor2.length - 1:
                    _2066 = mem[y]
                    t = y + 32
                    u = mem[64]
                    s = mem[y]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[mem[64] + floor32(mem[y])] = mem[y + floor32(mem[y]) + -(mem[y] % 32) + 64 len mem[y] % 32] or Mask(8 * -(mem[y] % 32) + 32, -(8 * -(mem[y] % 32) + 32) + 256, mem[mem[64] + floor32(mem[y])])
                    mem[_2066 + mem[64]] = 3
                    uint256(stor[sha3(mem[mem[64] len _2066 + 32])]) = 0
                    mem[0] = Mask(32, 224, _1350)
                    mem[32] = 1
                    address(delegate[Mask(32, 224, _1350)]) = 0
                    _2654 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = mem[y]
                    _2656 = mem[y]
                    s = 0
                    while s < _2656:
                        mem[_2654 + s + 64] = mem[y + s + 32]
                        s = s + 32
                        continue 
                    if not _2656 % 32:
                        emit 0x3234040c: mem[mem[64] len _2656 + _2654 + -mem[64] + 64], Mask(32, 224, _1350), address(stor[_1351]), 0
                    else:
                        mem[floor32(_2656) + _2654 + 64] = mem[floor32(_2656) + _2654 + -(_2656 % 32) + 96 len _2656 % 32]
                        emit 0x3234040c: mem[mem[64] len floor32(_2656) + _2654 + -mem[64] + 96], Mask(32, 224, _1350), address(stor[_1351]), 0
                else:
                    mem[0] = 2
                    s = sha3(mem[0]) + stor2.length - 1
                    while sha3(2) + stor2.length > s:
                        uint256(stor[s]) = 0
                        if 31 < stor[s].length:
                            mem[0] = s
                            t = sha3(s)
                            while sha3(s) + (stor[s].length + 31 / 32) > t:
                                uint256(stor[t]) = 0
                                t = t + 1
                                continue 
                        s = s + 1
                        continue 
                    _2692 = mem[64]
                    _2693 = mem[y]
                    t = y + 32
                    u = mem[64]
                    s = mem[y]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[mem[64] + floor32(mem[y])] = mem[y + floor32(mem[y]) + -(mem[y] % 32) + 64 len mem[y] % 32] or Mask(8 * -(mem[y] % 32) + 32, -(8 * -(mem[y] % 32) + 32) + 256, mem[mem[64] + floor32(mem[y])])
                    mem[_2693 + mem[64]] = 3
                    uint256(stor[sha3(mem[mem[64] len _2693 + _2692 + -mem[64] + 32])]) = 0
                    mem[0] = Mask(32, 224, _1350)
                    mem[32] = 1
                    address(delegate[Mask(32, 224, _1350)]) = 0
                    _3247 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = mem[y]
                    _3249 = mem[y]
                    s = 0
                    while s < _3249:
                        mem[_3247 + s + 64] = mem[y + s + 32]
                        s = s + 32
                        continue 
                    if not _3249 % 32:
                        emit 0x3234040c: mem[mem[64] len _3249 + _3247 + -mem[64] + 64], Mask(32, 224, _1350), address(stor[_1351]), 0
                    else:
                        mem[floor32(_3249) + _3247 + 64] = mem[floor32(_3249) + _3247 + -(_3249 % 32) + 96 len _3249 % 32]
                        emit 0x3234040c: mem[mem[64] len floor32(_3249) + _3247 + -mem[64] + 96], Mask(32, 224, _1350), address(stor[_1351]), 0
            else:
                require stor2.length - 1 < stor2.length
                require uint256(stor[sha3(mem[mem[64] len _1362 + 32])]) - 1 < stor2.length
                if 31 >= stor[('name', 'stor2', 2) + stor2.length - 1].length:
                    uint256(stor2[uint256(stor[sha3(mem[mem[64] len _1362 + 32])])].field_0) = uint256(stor2[stor2.length].field_0)
                    s = sha3(sha3(2) + uint256(stor[sha3(mem[mem[64] len _1362 + 32])]) - 1)
                    while sha3(sha3(2) + uint256(stor[sha3(mem[mem[64] len _1362 + 32])]) - 1) + (stor[('name', 'stor2', 2) + uint256(stor[sha3(mem[mem[64] len _1362 + 32])]) - 1].length + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                    require stor2.length - 1 < stor2.length
                    mem[0] = sha3(2) + stor2.length - 1
                    mem[mem[64]] = uint256(stor[sha3(('name', 'stor2', 2) + stor2.length - 1)].field_0)
                    s = mem[64]
                    t = sha3(mem[0])
                    while mem[64] + stor[('name', 'stor2', 2) + stor2.length - 1].length > s + 32:
                        mem[s + 32] = uint256(delegate[t])
                        s = s + 32
                        t = t + 1
                        continue 
                    mem[mem[64] + stor[('name', 'stor2', 2) + stor2.length - 1].length] = 3
                    uint256(stor[sha3(mem[mem[64] len stor[('name', 'stor2', 2) + stor2.length - 1].length + 32])]) = uint256(stor[_2015])
                    stor2.length--
                    if stor2.length <= stor2.length - 1:
                        _3934 = mem[y]
                        t = y + 32
                        u = mem[64]
                        s = mem[y]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[mem[64] + floor32(mem[y])] = mem[y + floor32(mem[y]) + -(mem[y] % 32) + 64 len mem[y] % 32] or Mask(8 * -(mem[y] % 32) + 32, -(8 * -(mem[y] % 32) + 32) + 256, mem[mem[64] + floor32(mem[y])])
                        mem[_3934 + mem[64]] = 3
                        uint256(stor[sha3(mem[mem[64] len _3934 + 32])]) = 0
                        mem[0] = Mask(32, 224, _1350)
                        mem[32] = 1
                        address(delegate[Mask(32, 224, _1350)]) = 0
                        _4187 = mem[64]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = mem[y]
                        _4189 = mem[y]
                        s = 0
                        while s < _4189:
                            mem[_4187 + s + 64] = mem[y + s + 32]
                            s = s + 32
                            continue 
                        if not _4189 % 32:
                            emit 0x3234040c: mem[mem[64] len _4189 + _4187 + -mem[64] + 64], Mask(32, 224, _1350), address(stor[_1351]), 0
                        else:
                            mem[floor32(_4189) + _4187 + 64] = mem[floor32(_4189) + _4187 + -(_4189 % 32) + 96 len _4189 % 32]
                            emit 0x3234040c: mem[mem[64] len floor32(_4189) + _4187 + -mem[64] + 96], Mask(32, 224, _1350), address(stor[_1351]), 0
                    else:
                        mem[0] = 2
                        s = sha3(mem[0]) + stor2.length - 1
                        while sha3(2) + stor2.length > s:
                            uint256(stor[s]) = 0
                            if 31 < stor[s].length:
                                mem[0] = s
                                t = sha3(s)
                                while sha3(s) + (stor[s].length + 31 / 32) > t:
                                    uint256(stor[t]) = 0
                                    t = t + 1
                                    continue 
                            s = s + 1
                            continue 
                        _4318 = mem[y]
                        t = y + 32
                        u = mem[64]
                        s = mem[y]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[mem[64] + floor32(mem[y])] = mem[y + floor32(mem[y]) + -(mem[y] % 32) + 64 len mem[y] % 32] or Mask(8 * -(mem[y] % 32) + 32, -(8 * -(mem[y] % 32) + 32) + 256, mem[mem[64] + floor32(mem[y])])
                        mem[_4318 + mem[64]] = 3
                        uint256(stor[sha3(mem[mem[64] len _4318 + 32])]) = 0
                        mem[0] = Mask(32, 224, _1350)
                        mem[32] = 1
                        address(delegate[Mask(32, 224, _1350)]) = 0
                        _4464 = mem[64]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = mem[y]
                        _4466 = mem[y]
                        s = 0
                        while s < _4466:
                            mem[_4464 + s + 64] = mem[y + s + 32]
                            s = s + 32
                            continue 
                        if not _4466 % 32:
                            emit 0x3234040c: mem[mem[64] len _4466 + _4464 + -mem[64] + 64], Mask(32, 224, _1350), address(stor[_1351]), 0
                        else:
                            mem[floor32(_4466) + _4464 + 64] = mem[floor32(_4466) + _4464 + -(_4466 % 32) + 96 len _4466 % 32]
                            emit 0x3234040c: mem[mem[64] len floor32(_4466) + _4464 + -mem[64] + 96], Mask(32, 224, _1350), address(stor[_1351]), 0
                else:
                    uint256(stor2[uint256(stor[sha3(mem[mem[64] len _1362 + 32])])].field_0) = Mask(255, 1, (256 * not bool(stor2[stor2.length].field_0)) - 1 and uint256(stor2[stor2.length].field_0)) + 1
                    if Mask(255, 1, (256 * not bool(stor2[stor2.length].field_0)) - 1 and uint256(stor2[stor2.length].field_0)):
                        t = sha3(sha3(2) + uint256(stor[sha3(mem[mem[64] len _1362 + 32])]) - 1)
                        s = sha3(sha3(2) + stor2.length - 1)
                        while sha3(sha3(2) + stor2.length - 1) + (stor[('name', 'stor2', 2) + stor2.length - 1].length + 31 / 32) > s:
                            uint256(stor[t]) = uint256(stor[s])
                            t = t + 1
                            s = s + 1
                            continue 
                        s = sha3(sha3(2) + uint256(stor[sha3(mem[mem[64] len _1362 + 32])]) - 1) + (stor[('name', 'stor2', 2) + stor2.length - 1].length + 31 / 32)
                        while sha3(sha3(2) + uint256(stor[sha3(mem[mem[64] len _1362 + 32])]) - 1) + (stor[('name', 'stor2', 2) + uint256(stor[sha3(mem[mem[64] len _1362 + 32])]) - 1].length + 31 / 32) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                        require stor2.length - 1 < stor2.length
                        mem[0] = sha3(2) + stor2.length - 1
                        mem[mem[64]] = uint256(stor[sha3(('name', 'stor2', 2) + stor2.length - 1)].field_0)
                        s = mem[64]
                        t = sha3(mem[0])
                        while mem[64] + stor[('name', 'stor2', 2) + stor2.length - 1].length > s + 32:
                            mem[s + 32] = uint256(delegate[t])
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[mem[64] + stor[('name', 'stor2', 2) + stor2.length - 1].length] = 3
                        uint256(stor[sha3(mem[mem[64] len stor[('name', 'stor2', 2) + stor2.length - 1].length + 32])]) = uint256(stor[_2015])
                        stor2.length--
                        if stor2.length <= stor2.length - 1:
                            _4296 = mem[y]
                            t = y + 32
                            u = mem[64]
                            s = mem[y]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[mem[64] + floor32(mem[y])] = mem[y + floor32(mem[y]) + -(mem[y] % 32) + 64 len mem[y] % 32] or Mask(8 * -(mem[y] % 32) + 32, -(8 * -(mem[y] % 32) + 32) + 256, mem[mem[64] + floor32(mem[y])])
                            mem[_4296 + mem[64]] = 3
                            uint256(stor[sha3(mem[mem[64] len _4296 + 32])]) = 0
                            mem[0] = Mask(32, 224, _1350)
                            mem[32] = 1
                            address(delegate[Mask(32, 224, _1350)]) = 0
                            _4453 = mem[64]
                            mem[mem[64]] = 32
                            mem[mem[64] + 32] = mem[y]
                            _4455 = mem[y]
                            s = 0
                            while s < _4455:
                                mem[_4453 + s + 64] = mem[y + s + 32]
                                s = s + 32
                                continue 
                            if not _4455 % 32:
                                emit 0x3234040c: mem[mem[64] len _4455 + _4453 + -mem[64] + 64], Mask(32, 224, _1350), address(stor[_1351]), 0
                            else:
                                mem[floor32(_4455) + _4453 + 64] = mem[floor32(_4455) + _4453 + -(_4455 % 32) + 96 len _4455 % 32]
                                emit 0x3234040c: mem[mem[64] len floor32(_4455) + _4453 + -mem[64] + 96], Mask(32, 224, _1350), address(stor[_1351]), 0
                        else:
                            mem[0] = 2
                            s = sha3(mem[0]) + stor2.length - 1
                            while sha3(2) + stor2.length > s:
                                uint256(stor[s]) = 0
                                if 31 < stor[s].length:
                                    mem[0] = s
                                    t = sha3(s)
                                    while sha3(s) + (stor[s].length + 31 / 32) > t:
                                        uint256(stor[t]) = 0
                                        t = t + 1
                                        continue 
                                s = s + 1
                                continue 
                            _4546 = mem[y]
                            t = y + 32
                            u = mem[64]
                            s = mem[y]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[mem[64] + floor32(mem[y])] = mem[y + floor32(mem[y]) + -(mem[y] % 32) + 64 len mem[y] % 32] or Mask(8 * -(mem[y] % 32) + 32, -(8 * -(mem[y] % 32) + 32) + 256, mem[mem[64] + floor32(mem[y])])
                            mem[_4546 + mem[64]] = 3
                            uint256(stor[sha3(mem[mem[64] len _4546 + 32])]) = 0
                            mem[0] = Mask(32, 224, _1350)
                            mem[32] = 1
                            address(delegate[Mask(32, 224, _1350)]) = 0
                            _4586 = mem[64]
                            mem[mem[64]] = 32
                            mem[mem[64] + 32] = mem[y]
                            _4588 = mem[y]
                            s = 0
                            while s < _4588:
                                mem[_4586 + s + 64] = mem[y + s + 32]
                                s = s + 32
                                continue 
                            if not _4588 % 32:
                                emit 0x3234040c: mem[mem[64] len _4588 + _4586 + -mem[64] + 64], Mask(32, 224, _1350), address(stor[_1351]), 0
                            else:
                                mem[floor32(_4588) + _4586 + 64] = mem[floor32(_4588) + _4586 + -(_4588 % 32) + 96 len _4588 % 32]
                                emit 0x3234040c: mem[mem[64] len floor32(_4588) + _4586 + -mem[64] + 96], Mask(32, 224, _1350), address(stor[_1351]), 0
                    else:
                        s = sha3(sha3(2) + uint256(stor[sha3(mem[mem[64] len _1362 + 32])]) - 1)
                        while sha3(sha3(2) + uint256(stor[sha3(mem[mem[64] len _1362 + 32])]) - 1) + (stor[('name', 'stor2', 2) + uint256(stor[sha3(mem[mem[64] len _1362 + 32])]) - 1].length + 31 / 32) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                        require stor2.length - 1 < stor2.length
                        _2695 = mem[64]
                        mem[0] = sha3(2) + stor2.length - 1
                        mem[mem[64]] = uint256(stor[sha3(('name', 'stor2', 2) + stor2.length - 1)].field_0)
                        s = mem[64]
                        t = sha3(mem[0])
                        while _2695 + stor[('name', 'stor2', 2) + stor2.length - 1].length > s + 32:
                            mem[s + 32] = uint256(delegate[t])
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[_2695 + stor[('name', 'stor2', 2) + stor2.length - 1].length] = 3
                        uint256(stor[sha3(mem[mem[64] len _2695 + stor[('name', 'stor2', 2) + stor2.length - 1].length + -mem[64] + 32])]) = uint256(stor[_2015])
                        stor2.length--
                        if stor2.length <= stor2.length - 1:
                            _3924 = mem[y]
                            t = y + 32
                            u = mem[64]
                            s = mem[y]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[mem[64] + floor32(mem[y])] = mem[y + floor32(mem[y]) + -(mem[y] % 32) + 64 len mem[y] % 32] or Mask(8 * -(mem[y] % 32) + 32, -(8 * -(mem[y] % 32) + 32) + 256, mem[mem[64] + floor32(mem[y])])
                            mem[_3924 + mem[64]] = 3
                            uint256(stor[sha3(mem[mem[64] len _3924 + 32])]) = 0
                            mem[0] = Mask(32, 224, _1350)
                            mem[32] = 1
                            address(delegate[Mask(32, 224, _1350)]) = 0
                            _4156 = mem[64]
                            mem[mem[64]] = 32
                            mem[mem[64] + 32] = mem[y]
                            _4158 = mem[y]
                            s = 0
                            while s < _4158:
                                mem[_4156 + s + 64] = mem[y + s + 32]
                                s = s + 32
                                continue 
                            if not _4158 % 32:
                                emit 0x3234040c: mem[mem[64] len _4158 + _4156 + -mem[64] + 64], Mask(32, 224, _1350), address(stor[_1351]), 0
                            else:
                                mem[floor32(_4158) + _4156 + 64] = mem[floor32(_4158) + _4156 + -(_4158 % 32) + 96 len _4158 % 32]
                                emit 0x3234040c: mem[mem[64] len floor32(_4158) + _4156 + -mem[64] + 96], Mask(32, 224, _1350), address(stor[_1351]), 0
                        else:
                            mem[0] = 2
                            s = sha3(mem[0]) + stor2.length - 1
                            while sha3(2) + stor2.length > s:
                                uint256(stor[s]) = 0
                                if 31 < stor[s].length:
                                    mem[0] = s
                                    t = sha3(s)
                                    while sha3(s) + (stor[s].length + 31 / 32) > t:
                                        uint256(stor[t]) = 0
                                        t = t + 1
                                        continue 
                                s = s + 1
                                continue 
                            _4312 = mem[64]
                            _4313 = mem[y]
                            t = y + 32
                            u = mem[64]
                            s = mem[y]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[mem[64] + floor32(mem[y])] = mem[y + floor32(mem[y]) + -(mem[y] % 32) + 64 len mem[y] % 32] or Mask(8 * -(mem[y] % 32) + 32, -(8 * -(mem[y] % 32) + 32) + 256, mem[mem[64] + floor32(mem[y])])
                            mem[_4313 + mem[64]] = 3
                            uint256(stor[sha3(mem[mem[64] len _4313 + _4312 + -mem[64] + 32])]) = 0
                            mem[0] = Mask(32, 224, _1350)
                            mem[32] = 1
                            address(delegate[Mask(32, 224, _1350)]) = 0
                            _4443 = mem[64]
                            mem[mem[64]] = 32
                            mem[mem[64] + 32] = mem[y]
                            _4445 = mem[y]
                            s = 0
                            while s < _4445:
                                mem[_4443 + s + 64] = mem[y + s + 32]
                                s = s + 32
                                continue 
                            if not _4445 % 32:
                                emit 0x3234040c: mem[mem[64] len _4445 + _4443 + -mem[64] + 64], Mask(32, 224, _1350), address(stor[_1351]), 0
                            else:
                                mem[floor32(_4445) + _4443 + 64] = mem[floor32(_4445) + _4443 + -(_4445 % 32) + 96 len _4445 % 32]
                                emit 0x3234040c: mem[mem[64] len floor32(_4445) + _4443 + -mem[64] + 96], Mask(32, 224, _1350), address(stor[_1351]), 0
            s = stor2.length - 1
            t = uint256(stor[_2015]) - 1
            u = Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_679')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_679')), 0) - 256
            u = idx + -x + 1
            v = address(stor[_1351])
            w = _1350
            x = idx + 1
            y = y + idx + -x + 1
            idx = idx + 2
            continue 
    else:
        if ext_code.size(arg1) <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        '_delegate address is not a contract and is not address(0)'
        mem[64] = ceil32(arg2.length) + 128
        mem[96] = arg2.length
        mem[128 len arg2.length] = arg2[all]
        s = 0
        t = 0
        u = 0
        u = 0
        v = 0
        w = 0
        x = 128
        y = 96
        idx = 128
        while idx < arg2.length + 128:
            _682 = mem[idx]
            if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('var', 0), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('var', 0), 32))), 0) - 256 != 41:
                s = s
                t = t
                u = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('var', 0), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('var', 0), 32))), 0) - 256
                u = u
                v = v
                w = w
                x = x
                y = y
                idx = idx + 1
                continue 
            mem[y] = idx + -x + 1
            v = y + 32
            w = mem[64]
            u = mem[y]
            while u >= 32:
                mem[w] = mem[v]
                v = v + 32
                w = w + 32
                u = u - 32
                continue 
            mem[mem[64] + floor32(mem[y])] = mem[y + floor32(mem[y]) + -(mem[y] % 32) + 64 len mem[y] % 32] or Mask(8 * -(mem[y] % 32) + 32, -(8 * -(mem[y] % 32) + 32) + 256, mem[mem[64] + floor32(mem[y])])
            _1356 = sha3(mem[mem[64] len idx + -x + 1])
            mem[0] = Mask(32, 224, sha3(mem[mem[64] len idx + -x + 1]))
            mem[32] = 1
            _1357 = sha3(mem[0], 1)
            if arg1:
                _1363 = mem[64]
                _1364 = mem[y]
                v = y + 32
                w = mem[64]
                u = mem[y]
                while u >= 32:
                    mem[w] = mem[v]
                    v = v + 32
                    w = w + 32
                    u = u - 32
                    continue 
                mem[mem[64] + floor32(mem[y])] = mem[y + floor32(mem[y]) + -(mem[y] % 32) + 64 len mem[y] % 32] or Mask(8 * -(mem[y] % 32) + 32, -(8 * -(mem[y] % 32) + 32) + 256, mem[mem[64] + floor32(mem[y])])
                mem[_1364 + mem[64]] = 3
                if uint256(stor[sha3(mem[mem[64] len _1364 + _1363 + -mem[64] + 32])]):
                    mem[0] = Mask(32, 224, _1356)
                    mem[32] = 1
                    if address(delegate[Mask(32, 224, _1356)]) != arg1:
                        mem[0] = Mask(32, 224, _1356)
                        mem[32] = 1
                        address(delegate[Mask(32, 224, _1356)]) = arg1
                        _2043 = mem[64]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = mem[y]
                        _2045 = mem[y]
                        u = 0
                        while u < _2045:
                            mem[_2043 + u + 64] = mem[y + u + 32]
                            u = u + 32
                            continue 
                        if not _2045 % 32:
                            emit 0x3234040c: mem[mem[64] len _2045 + _2043 + -mem[64] + 64], Mask(32, 224, _1356), address(stor[_1357]), arg1
                        else:
                            mem[floor32(_2045) + _2043 + 64] = mem[floor32(_2045) + _2043 + -(_2045 % 32) + 96 len _2045 % 32]
                            emit 0x3234040c: mem[mem[64] len floor32(_2045) + _2043 + -mem[64] + 96], Mask(32, 224, _1356), address(stor[_1357]), arg1
                else:
                    if address(stor[_1357]):
                        revert with 0, 'Funcion id clash.'
                    mem[32] = 1
                    address(delegate[Mask(32, 224, _1356)]) = arg1
                    stor2.length++
                    mem[0] = 2
                    _2048 = mem[y]
                    mem[0] = sha3(2) + stor2.length
                    uint256(stor2[stor2.length].field_0) = (2 * _2048) + 1
                    u = sha3(sha3(2) + stor2.length)
                    v = y + 32
                    while y + _2048 + 32 > v:
                        uint256(stor[u]) = mem[v]
                        u = u + 1
                        v = v + 32
                        continue 
                    v = u
                    while sha3(sha3(2) + stor2.length) + (stor2[stor2.length].length + 31 / 32) > v:
                        uint256(stor[v]) = 0
                        v = v + 1
                        continue 
                    _3395 = mem[64]
                    _3396 = mem[y]
                    v = y + 32
                    w = mem[64]
                    u = mem[y]
                    while u >= 32:
                        mem[w] = mem[v]
                        v = v + 32
                        w = w + 32
                        u = u - 32
                        continue 
                    mem[mem[64] + floor32(mem[y])] = mem[y + floor32(mem[y]) + -(mem[y] % 32) + 64 len mem[y] % 32] or Mask(8 * -(mem[y] % 32) + 32, -(8 * -(mem[y] % 32) + 32) + 256, mem[mem[64] + floor32(mem[y])])
                    mem[_3396 + mem[64]] = 3
                    uint256(stor[sha3(mem[mem[64] len _3396 + _3395 + -mem[64] + 32])]) = stor2.length
                    _3791 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = mem[y]
                    _3793 = mem[y]
                    u = 0
                    while u < _3793:
                        mem[_3791 + u + 64] = mem[y + u + 32]
                        u = u + 32
                        continue 
                    if not _3793 % 32:
                        emit 0x3234040c: mem[mem[64] len _3793 + _3791 + -mem[64] + 64], Mask(32, 224, _1356), 0, arg1
                    else:
                        mem[floor32(_3793) + _3791 + 64] = mem[floor32(_3793) + _3791 + -(_3793 % 32) + 96 len _3793 % 32]
                        emit 0x3234040c: mem[mem[64] len floor32(_3793) + _3791 + -mem[64] + 96], Mask(32, 224, _1356), 0, arg1
                s = s
                t = t
                u = Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_682')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_682')), 0) - 256
                u = idx + -x + 1
                v = address(stor[_1357])
                w = _1356
                x = idx + 1
                y = y + idx + -x + 1
                idx = idx + 2
                continue 
            _1365 = mem[64]
            _1366 = mem[y]
            t = y + 32
            u = mem[64]
            s = mem[y]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[y])] = mem[y + floor32(mem[y]) + -(mem[y] % 32) + 64 len mem[y] % 32] or Mask(8 * -(mem[y] % 32) + 32, -(8 * -(mem[y] % 32) + 32) + 256, mem[mem[64] + floor32(mem[y])])
            mem[_1366 + mem[64]] = 3
            _2025 = sha3(mem[mem[64] len _1366 + _1365 + -mem[64] + 32])
            if not uint256(stor[sha3(mem[mem[64] len _1366 + _1365 + -mem[64] + 32])]):
                revert with 0, 'Function does not exist.'
            if uint256(stor[sha3(mem[mem[64] len _1366 + _1365 + -mem[64] + 32])]) - 1 == stor2.length - 1:
                stor2.length--
                if stor2.length <= stor2.length - 1:
                    _2071 = mem[y]
                    t = y + 32
                    u = mem[64]
                    s = mem[y]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[mem[64] + floor32(mem[y])] = mem[y + floor32(mem[y]) + -(mem[y] % 32) + 64 len mem[y] % 32] or Mask(8 * -(mem[y] % 32) + 32, -(8 * -(mem[y] % 32) + 32) + 256, mem[mem[64] + floor32(mem[y])])
                    mem[_2071 + mem[64]] = 3
                    uint256(stor[sha3(mem[mem[64] len _2071 + 32])]) = 0
                    mem[0] = Mask(32, 224, _1356)
                    mem[32] = 1
                    address(delegate[Mask(32, 224, _1356)]) = 0
                    _2665 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = mem[y]
                    _2667 = mem[y]
                    s = 0
                    while s < _2667:
                        mem[_2665 + s + 64] = mem[y + s + 32]
                        s = s + 32
                        continue 
                    if not _2667 % 32:
                        emit 0x3234040c: mem[mem[64] len _2667 + _2665 + -mem[64] + 64], Mask(32, 224, _1356), address(stor[_1357]), 0
                    else:
                        mem[floor32(_2667) + _2665 + 64] = mem[floor32(_2667) + _2665 + -(_2667 % 32) + 96 len _2667 % 32]
                        emit 0x3234040c: mem[mem[64] len floor32(_2667) + _2665 + -mem[64] + 96], Mask(32, 224, _1356), address(stor[_1357]), 0
                else:
                    mem[0] = 2
                    s = sha3(mem[0]) + stor2.length - 1
                    while sha3(2) + stor2.length > s:
                        uint256(stor[s]) = 0
                        if 31 < stor[s].length:
                            mem[0] = s
                            t = sha3(s)
                            while sha3(s) + (stor[s].length + 31 / 32) > t:
                                uint256(stor[t]) = 0
                                t = t + 1
                                continue 
                        s = s + 1
                        continue 
                    _2699 = mem[64]
                    _2700 = mem[y]
                    t = y + 32
                    u = mem[64]
                    s = mem[y]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[mem[64] + floor32(mem[y])] = mem[y + floor32(mem[y]) + -(mem[y] % 32) + 64 len mem[y] % 32] or Mask(8 * -(mem[y] % 32) + 32, -(8 * -(mem[y] % 32) + 32) + 256, mem[mem[64] + floor32(mem[y])])
                    mem[_2700 + mem[64]] = 3
                    uint256(stor[sha3(mem[mem[64] len _2700 + _2699 + -mem[64] + 32])]) = 0
                    mem[0] = Mask(32, 224, _1356)
                    mem[32] = 1
                    address(delegate[Mask(32, 224, _1356)]) = 0
                    _3309 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = mem[y]
                    _3311 = mem[y]
                    s = 0
                    while s < _3311:
                        mem[_3309 + s + 64] = mem[y + s + 32]
                        s = s + 32
                        continue 
                    if not _3311 % 32:
                        emit 0x3234040c: mem[mem[64] len _3311 + _3309 + -mem[64] + 64], Mask(32, 224, _1356), address(stor[_1357]), 0
                    else:
                        mem[floor32(_3311) + _3309 + 64] = mem[floor32(_3311) + _3309 + -(_3311 % 32) + 96 len _3311 % 32]
                        emit 0x3234040c: mem[mem[64] len floor32(_3311) + _3309 + -mem[64] + 96], Mask(32, 224, _1356), address(stor[_1357]), 0
            else:
                require stor2.length - 1 < stor2.length
                require uint256(stor[sha3(mem[mem[64] len _1366 + _1365 + -mem[64] + 32])]) - 1 < stor2.length
                if 31 >= stor[('name', 'stor2', 2) + stor2.length - 1].length:
                    uint256(stor2[uint256(stor[sha3(mem[mem[64] len _1366 + _1365 + -mem[64] + 32])])].field_0) = uint256(stor2[stor2.length].field_0)
                    s = sha3(sha3(2) + uint256(stor[sha3(mem[mem[64] len _1366 + _1365 + -mem[64] + 32])]) - 1)
                    while sha3(sha3(2) + uint256(stor[sha3(mem[mem[64] len _1366 + _1365 + -mem[64] + 32])]) - 1) + (stor[('name', 'stor2', 2) + uint256(stor[sha3(mem[mem[64] len _1366 + _1365 + -mem[64] + 32])]) - 1].length + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                    require stor2.length - 1 < stor2.length
                    mem[0] = sha3(2) + stor2.length - 1
                    mem[mem[64]] = uint256(stor[sha3(('name', 'stor2', 2) + stor2.length - 1)].field_0)
                    s = mem[64]
                    t = sha3(mem[0])
                    while mem[64] + stor[('name', 'stor2', 2) + stor2.length - 1].length > s + 32:
                        mem[s + 32] = uint256(delegate[t])
                        s = s + 32
                        t = t + 1
                        continue 
                    mem[mem[64] + stor[('name', 'stor2', 2) + stor2.length - 1].length] = 3
                    uint256(stor[sha3(mem[mem[64] len stor[('name', 'stor2', 2) + stor2.length - 1].length + 32])]) = uint256(stor[_2025])
                    stor2.length--
                    if stor2.length <= stor2.length - 1:
                        _3952 = mem[y]
                        t = y + 32
                        u = mem[64]
                        s = mem[y]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[mem[64] + floor32(mem[y])] = mem[y + floor32(mem[y]) + -(mem[y] % 32) + 64 len mem[y] % 32] or Mask(8 * -(mem[y] % 32) + 32, -(8 * -(mem[y] % 32) + 32) + 256, mem[mem[64] + floor32(mem[y])])
                        mem[_3952 + mem[64]] = 3
                        uint256(stor[sha3(mem[mem[64] len _3952 + 32])]) = 0
                        mem[0] = Mask(32, 224, _1356)
                        mem[32] = 1
                        address(delegate[Mask(32, 224, _1356)]) = 0
                        _4230 = mem[64]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = mem[y]
                        _4232 = mem[y]
                        s = 0
                        while s < _4232:
                            mem[_4230 + s + 64] = mem[y + s + 32]
                            s = s + 32
                            continue 
                        if not _4232 % 32:
                            emit 0x3234040c: mem[mem[64] len _4232 + _4230 + -mem[64] + 64], Mask(32, 224, _1356), address(stor[_1357]), 0
                        else:
                            mem[floor32(_4232) + _4230 + 64] = mem[floor32(_4232) + _4230 + -(_4232 % 32) + 96 len _4232 % 32]
                            emit 0x3234040c: mem[mem[64] len floor32(_4232) + _4230 + -mem[64] + 96], Mask(32, 224, _1356), address(stor[_1357]), 0
                    else:
                        mem[0] = 2
                        s = sha3(mem[0]) + stor2.length - 1
                        while sha3(2) + stor2.length > s:
                            uint256(stor[s]) = 0
                            if 31 < stor[s].length:
                                mem[0] = s
                                t = sha3(s)
                                while sha3(s) + (stor[s].length + 31 / 32) > t:
                                    uint256(stor[t]) = 0
                                    t = t + 1
                                    continue 
                            s = s + 1
                            continue 
                        _4326 = mem[y]
                        t = y + 32
                        u = mem[64]
                        s = mem[y]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[mem[64] + floor32(mem[y])] = mem[y + floor32(mem[y]) + -(mem[y] % 32) + 64 len mem[y] % 32] or Mask(8 * -(mem[y] % 32) + 32, -(8 * -(mem[y] % 32) + 32) + 256, mem[mem[64] + floor32(mem[y])])
                        mem[_4326 + mem[64]] = 3
                        uint256(stor[sha3(mem[mem[64] len _4326 + 32])]) = 0
                        mem[0] = Mask(32, 224, _1356)
                        mem[32] = 1
                        address(delegate[Mask(32, 224, _1356)]) = 0
                        _4495 = mem[64]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = mem[y]
                        _4497 = mem[y]
                        s = 0
                        while s < _4497:
                            mem[_4495 + s + 64] = mem[y + s + 32]
                            s = s + 32
                            continue 
                        if not _4497 % 32:
                            emit 0x3234040c: mem[mem[64] len _4497 + _4495 + -mem[64] + 64], Mask(32, 224, _1356), address(stor[_1357]), 0
                        else:
                            mem[floor32(_4497) + _4495 + 64] = mem[floor32(_4497) + _4495 + -(_4497 % 32) + 96 len _4497 % 32]
                            emit 0x3234040c: mem[mem[64] len floor32(_4497) + _4495 + -mem[64] + 96], Mask(32, 224, _1356), address(stor[_1357]), 0
                else:
                    uint256(stor2[uint256(stor[sha3(mem[mem[64] len _1366 + _1365 + -mem[64] + 32])])].field_0) = Mask(255, 1, (256 * not bool(stor2[stor2.length].field_0)) - 1 and uint256(stor2[stor2.length].field_0)) + 1
                    if not Mask(255, 1, (256 * not bool(stor2[stor2.length].field_0)) - 1 and uint256(stor2[stor2.length].field_0)):
                        s = sha3(sha3(2) + uint256(stor[sha3(mem[mem[64] len _1366 + _1365 + -mem[64] + 32])]) - 1)
                        while sha3(sha3(2) + uint256(stor[sha3(mem[mem[64] len _1366 + _1365 + -mem[64] + 32])]) - 1) + (stor[('name', 'stor2', 2) + uint256(stor[sha3(mem[mem[64] len _1366 + _1365 + -mem[64] + 32])]) - 1].length + 31 / 32) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                        require stor2.length - 1 < stor2.length
                        mem[0] = sha3(2) + stor2.length - 1
                        mem[mem[64]] = uint256(stor[sha3(('name', 'stor2', 2) + stor2.length - 1)].field_0)
                        s = mem[64]
                        t = sha3(mem[0])
                        while mem[64] + stor[('name', 'stor2', 2) + stor2.length - 1].length > s + 32:
                            mem[s + 32] = uint256(delegate[t])
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[mem[64] + stor[('name', 'stor2', 2) + stor2.length - 1].length] = 3
                        uint256(stor[sha3(mem[mem[64] len stor[('name', 'stor2', 2) + stor2.length - 1].length + 32])]) = uint256(stor[_2025])
                        stor2.length--
                        if stor2.length <= stor2.length - 1:
                            _3941 = mem[64]
                            _3942 = mem[y]
                            t = y + 32
                            u = mem[64]
                            s = mem[y]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[mem[64] + floor32(mem[y])] = mem[y + floor32(mem[y]) + -(mem[y] % 32) + 64 len mem[y] % 32] or Mask(8 * -(mem[y] % 32) + 32, -(8 * -(mem[y] % 32) + 32) + 256, mem[mem[64] + floor32(mem[y])])
                            mem[_3942 + mem[64]] = 3
                            uint256(stor[sha3(mem[mem[64] len _3942 + _3941 + -mem[64] + 32])]) = 0
                            mem[0] = Mask(32, 224, _1356)
                            mem[32] = 1
                            address(delegate[Mask(32, 224, _1356)]) = 0
                            _4199 = mem[64]
                            mem[mem[64]] = 32
                            mem[mem[64] + 32] = mem[y]
                            _4201 = mem[y]
                            s = 0
                            while s < _4201:
                                mem[_4199 + s + 64] = mem[y + s + 32]
                                s = s + 32
                                continue 
                            if not _4201 % 32:
                                emit 0x3234040c: mem[mem[64] len _4201 + _4199 + -mem[64] + 64], Mask(32, 224, _1356), address(stor[_1357]), 0
                            else:
                                mem[floor32(_4201) + _4199 + 64] = mem[floor32(_4201) + _4199 + -(_4201 % 32) + 96 len _4201 % 32]
                                emit 0x3234040c: mem[mem[64] len floor32(_4201) + _4199 + -mem[64] + 96], Mask(32, 224, _1356), address(stor[_1357]), 0
                        else:
                            mem[0] = 2
                            s = sha3(mem[0]) + stor2.length - 1
                            while sha3(2) + stor2.length > s:
                                uint256(stor[s]) = 0
                                if 31 < stor[s].length:
                                    mem[0] = s
                                    t = sha3(s)
                                    while sha3(s) + (stor[s].length + 31 / 32) > t:
                                        uint256(stor[t]) = 0
                                        t = t + 1
                                        continue 
                                s = s + 1
                                continue 
                            _4320 = mem[64]
                            _4321 = mem[y]
                            t = y + 32
                            u = mem[64]
                            s = mem[y]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[mem[64] + floor32(mem[y])] = mem[y + floor32(mem[y]) + -(mem[y] % 32) + 64 len mem[y] % 32] or Mask(8 * -(mem[y] % 32) + 32, -(8 * -(mem[y] % 32) + 32) + 256, mem[mem[64] + floor32(mem[y])])
                            mem[_4321 + mem[64]] = 3
                            uint256(stor[sha3(mem[mem[64] len _4321 + _4320 + -mem[64] + 32])]) = 0
                            mem[0] = Mask(32, 224, _1356)
                            mem[32] = 1
                            address(delegate[Mask(32, 224, _1356)]) = 0
                            _4474 = mem[64]
                            mem[mem[64]] = 32
                            mem[mem[64] + 32] = mem[y]
                            _4476 = mem[y]
                            s = 0
                            while s < _4476:
                                mem[_4474 + s + 64] = mem[y + s + 32]
                                s = s + 32
                                continue 
                            if not _4476 % 32:
                                emit 0x3234040c: mem[mem[64] len _4476 + _4474 + -mem[64] + 64], Mask(32, 224, _1356), address(stor[_1357]), 0
                            else:
                                mem[floor32(_4476) + _4474 + 64] = mem[floor32(_4476) + _4474 + -(_4476 % 32) + 96 len _4476 % 32]
                                emit 0x3234040c: mem[mem[64] len floor32(_4476) + _4474 + -mem[64] + 96], Mask(32, 224, _1356), address(stor[_1357]), 0
                    else:
                        t = sha3(sha3(2) + uint256(stor[sha3(mem[mem[64] len _1366 + _1365 + -mem[64] + 32])]) - 1)
                        s = sha3(sha3(2) + stor2.length - 1)
                        while sha3(sha3(2) + stor2.length - 1) + (stor[('name', 'stor2', 2) + stor2.length - 1].length + 31 / 32) > s:
                            uint256(stor[t]) = uint256(stor[s])
                            t = t + 1
                            s = s + 1
                            continue 
                        s = sha3(sha3(2) + uint256(stor[sha3(mem[mem[64] len _1366 + _1365 + -mem[64] + 32])]) - 1) + (stor[('name', 'stor2', 2) + stor2.length - 1].length + 31 / 32)
                        while sha3(sha3(2) + uint256(stor[sha3(mem[mem[64] len _1366 + _1365 + -mem[64] + 32])]) - 1) + (stor[('name', 'stor2', 2) + uint256(stor[sha3(mem[mem[64] len _1366 + _1365 + -mem[64] + 32])]) - 1].length + 31 / 32) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                        require stor2.length - 1 < stor2.length
                        mem[0] = sha3(2) + stor2.length - 1
                        mem[mem[64]] = uint256(stor[sha3(('name', 'stor2', 2) + stor2.length - 1)].field_0)
                        s = mem[64]
                        t = sha3(mem[0])
                        while mem[64] + stor[('name', 'stor2', 2) + stor2.length - 1].length > s + 32:
                            mem[s + 32] = uint256(delegate[t])
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[mem[64] + stor[('name', 'stor2', 2) + stor2.length - 1].length] = 3
                        uint256(stor[sha3(mem[mem[64] len stor[('name', 'stor2', 2) + stor2.length - 1].length + 32])]) = uint256(stor[_2025])
                        stor2.length--
                        if stor2.length <= stor2.length - 1:
                            _4306 = mem[y]
                            t = y + 32
                            u = mem[64]
                            s = mem[y]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[mem[64] + floor32(mem[y])] = mem[y + floor32(mem[y]) + -(mem[y] % 32) + 64 len mem[y] % 32] or Mask(8 * -(mem[y] % 32) + 32, -(8 * -(mem[y] % 32) + 32) + 256, mem[mem[64] + floor32(mem[y])])
                            mem[_4306 + mem[64]] = 3
                            uint256(stor[sha3(mem[mem[64] len _4306 + 32])]) = 0
                            mem[0] = Mask(32, 224, _1356)
                            mem[32] = 1
                            address(delegate[Mask(32, 224, _1356)]) = 0
                            _4484 = mem[64]
                            mem[mem[64]] = 32
                            mem[mem[64] + 32] = mem[y]
                            _4486 = mem[y]
                            s = 0
                            while s < _4486:
                                mem[_4484 + s + 64] = mem[y + s + 32]
                                s = s + 32
                                continue 
                            if not _4486 % 32:
                                emit 0x3234040c: mem[mem[64] len _4486 + _4484 + -mem[64] + 64], Mask(32, 224, _1356), address(stor[_1357]), 0
                            else:
                                mem[floor32(_4486) + _4484 + 64] = mem[floor32(_4486) + _4484 + -(_4486 % 32) + 96 len _4486 % 32]
                                emit 0x3234040c: mem[mem[64] len floor32(_4486) + _4484 + -mem[64] + 96], Mask(32, 224, _1356), address(stor[_1357]), 0
                        else:
                            mem[0] = 2
                            s = sha3(mem[0]) + stor2.length - 1
                            while sha3(2) + stor2.length > s:
                                uint256(stor[s]) = 0
                                if 31 < stor[s].length:
                                    mem[0] = s
                                    t = sha3(s)
                                    while sha3(s) + (stor[s].length + 31 / 32) > t:
                                        uint256(stor[t]) = 0
                                        t = t + 1
                                        continue 
                                s = s + 1
                                continue 
                            _4550 = mem[64]
                            _4551 = mem[y]
                            t = y + 32
                            u = mem[64]
                            s = mem[y]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[mem[64] + floor32(mem[y])] = mem[y + floor32(mem[y]) + -(mem[y] % 32) + 64 len mem[y] % 32] or Mask(8 * -(mem[y] % 32) + 32, -(8 * -(mem[y] % 32) + 32) + 256, mem[mem[64] + floor32(mem[y])])
                            mem[_4551 + mem[64]] = 3
                            uint256(stor[sha3(mem[mem[64] len _4551 + _4550 + -mem[64] + 32])]) = 0
                            mem[0] = Mask(32, 224, _1356)
                            mem[32] = 1
                            address(delegate[Mask(32, 224, _1356)]) = 0
                            _4598 = mem[64]
                            mem[mem[64]] = 32
                            mem[mem[64] + 32] = mem[y]
                            _4600 = mem[y]
                            s = 0
                            while s < _4600:
                                mem[_4598 + s + 64] = mem[y + s + 32]
                                s = s + 32
                                continue 
                            if not _4600 % 32:
                                emit 0x3234040c: mem[mem[64] len _4600 + _4598 + -mem[64] + 64], Mask(32, 224, _1356), address(stor[_1357]), 0
                            else:
                                mem[floor32(_4600) + _4598 + 64] = mem[floor32(_4600) + _4598 + -(_4600 % 32) + 96 len _4600 % 32]
                                emit 0x3234040c: mem[mem[64] len floor32(_4600) + _4598 + -mem[64] + 96], Mask(32, 224, _1356), address(stor[_1357]), 0
            s = stor2.length - 1
            t = uint256(stor[_2025]) - 1
            u = Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_682')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_682')), 0) - 256
            u = idx + -x + 1
            v = address(stor[_1357])
            w = _1356
            x = idx + 1
            y = y + idx + -x + 1
            idx = idx + 2
            continue 
    emit 0xaa1c0a0a: Array(len=arg3.length, data=arg3[all])
}



}
