contract main {


// =======================  Init code  ======================


const _fallback = code.data[24 len 7803]




// =====================  Runtime code  =====================


#
#  - claim(string arg1)
#
address stor0;
address stor1;
uint256 stor1;
array of uint256 myUsername;
mapping of address address;
mapping of struct stor4;

function myUsername() {
    return myUsername[address(msg.sender)][0 len myUsername[address(msg.sender)].length]
}

function getAddress(string arg1) {
    return address[arg1[all]]
}

function getUsername(address arg1) {
    return myUsername[address(arg1)][0 len myUsername[address(arg1)].length]
}

function _fallback() {
    revert 
}

function keybasePubURL(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 0
    mem[ceil32(arg1.length) + 256] = 'https://'
    mem[ceil32(arg1.length) + 288] = 16
    mem[ceil32(arg1.length) + 320] = '.keybase.pub/eth'
    mem[ceil32(arg1.length) + 352] = 0
    mem[ceil32(arg1.length) + 416] = 0
    mem[ceil32(arg1.length) + 448] = 0
    idx = 0
    s = 0
    while idx < 8:
        require idx < 8
        require s < arg1.length + 24
        mem[ceil32(arg1.length) + s + 736 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        s = s + 1
        continue 
    idx = 0
    s = 8
    while idx < arg1.length:
        require idx < arg1.length
        require s < arg1.length + 24
        mem[ceil32(arg1.length) + s + 736 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        s = s + 1
        continue 
    idx = 0
    s = arg1.length + 8
    while idx < 16:
        require idx < 16
        require s < arg1.length + 24
        mem[ceil32(arg1.length) + s + 736 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 320, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 320, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        s = s + 1
        continue 
    idx = 0
    s = arg1.length + 24
    while idx < 0:
        require idx < 0
        require s < arg1.length + 24
        mem[ceil32(arg1.length) + s + 736 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 416, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 416, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        s = s + 1
        continue 
    idx = 0
    s = arg1.length + 24
    while idx < 0:
        require idx < 0
        require s < arg1.length + 24
        mem[ceil32(arg1.length) + s + 736 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 448, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 448, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        s = s + 1
        continue 
    return Array(len=arg1.length + 24, data=mem[ceil32(arg1.length) + 736 len arg1.length + 24])
}

function __callback(bytes32 arg1, string arg2) {
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    if stor0:
        require ext_code.size(stor0)
        call stor0.getAddress() with:
             gas gas_remaining - 50 wei
        require ext_call.success
        uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
        require ext_code.size(address(stor1))
        call address(stor1).cbAddress() with:
             gas gas_remaining - 50 wei
        require ext_call.success
        require msg.sender == ext_call.return_data[12 len 20]
        mem[0] = arg1
        mem[32] = 4
        require not uint8(stor4[arg1].field_416)
        require address(stor4[arg1].field_256)
        mem[ceil32(arg2.length) + 128] = 0
        mem[64] = ceil32(arg2.length) + 192
        mem[ceil32(arg2.length) + 160] = 0
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            if mem[idx + 128 len 1] >= 65:
                require idx < arg2.length
                if mem[idx + 128 len 1] <= 90:
                    require idx < arg2.length
                    require idx < arg2.length
                    mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
            idx = idx + 1
            continue 
        _152 = mem[64]
        mem[64] = mem[64] + 32
        mem[_152] = 0
        idx = 2
        s = 0
        s = 0
        s = 0
        while idx < 42:
            require idx < arg2.length
            require idx + 1 < arg2.length
            if mem[idx + 128 len 1] >= 97:
                if mem[idx + 128 len 1] <= 102:
                    if mem[idx + 129 len 1] >= 97:
                        if mem[idx + 129 len 1] <= 102:
                            idx = idx + 2
                            s = mem[idx + 129 len 1] - 87
                            s = mem[idx + 128 len 1] - 87
                            s = (256 * s) + (16 * mem[idx + 128 len 1] - 87) + mem[idx + 129 len 1] - 87
                            continue 
                    if mem[idx + 129 len 1] < 48:
                        idx = idx + 2
                        s = mem[idx + 129 len 1]
                        s = mem[idx + 128 len 1] - 87
                        s = (256 * s) + (16 * mem[idx + 128 len 1] - 87) + mem[idx + 129 len 1]
                        continue 
                    if mem[idx + 129 len 1] > 57:
                        idx = idx + 2
                        s = mem[idx + 129 len 1]
                        s = mem[idx + 128 len 1] - 87
                        s = (256 * s) + (16 * mem[idx + 128 len 1] - 87) + mem[idx + 129 len 1]
                        continue 
                    idx = idx + 2
                    s = mem[idx + 129 len 1] - 48
                    s = mem[idx + 128 len 1] - 87
                    s = (256 * s) + (16 * mem[idx + 128 len 1] - 87) + mem[idx + 129 len 1] - 48
                    continue 
            if mem[idx + 128 len 1] < 48:
                if mem[idx + 129 len 1] >= 97:
                    if mem[idx + 129 len 1] <= 102:
                        idx = idx + 2
                        s = mem[idx + 129 len 1] - 87
                        s = mem[idx + 128 len 1]
                        s = (256 * s) + (Mask(8, 248, mem[idx + 128]) >> 244) + mem[idx + 129 len 1] - 87
                        continue 
                if mem[idx + 129 len 1] < 48:
                    idx = idx + 2
                    s = mem[idx + 129 len 1]
                    s = mem[idx + 128 len 1]
                    s = (256 * s) + (Mask(8, 248, mem[idx + 128]) >> 244) + mem[idx + 129 len 1]
                    continue 
                if mem[idx + 129 len 1] > 57:
                    idx = idx + 2
                    s = mem[idx + 129 len 1]
                    s = mem[idx + 128 len 1]
                    s = (256 * s) + (Mask(8, 248, mem[idx + 128]) >> 244) + mem[idx + 129 len 1]
                    continue 
                idx = idx + 2
                s = mem[idx + 129 len 1] - 48
                s = mem[idx + 128 len 1]
                s = (256 * s) + (Mask(8, 248, mem[idx + 128]) >> 244) + mem[idx + 129 len 1] - 48
                continue 
            if mem[idx + 128 len 1] > 57:
                if mem[idx + 129 len 1] >= 97:
                    if mem[idx + 129 len 1] <= 102:
                        idx = idx + 2
                        s = mem[idx + 129 len 1] - 87
                        s = mem[idx + 128 len 1]
                        s = (256 * s) + (Mask(8, 248, mem[idx + 128]) >> 244) + mem[idx + 129 len 1] - 87
                        continue 
                if mem[idx + 129 len 1] < 48:
                    idx = idx + 2
                    s = mem[idx + 129 len 1]
                    s = mem[idx + 128 len 1]
                    s = (256 * s) + (Mask(8, 248, mem[idx + 128]) >> 244) + mem[idx + 129 len 1]
                    continue 
                if mem[idx + 129 len 1] > 57:
                    idx = idx + 2
                    s = mem[idx + 129 len 1]
                    s = mem[idx + 128 len 1]
                    s = (256 * s) + (Mask(8, 248, mem[idx + 128]) >> 244) + mem[idx + 129 len 1]
                    continue 
                idx = idx + 2
                s = mem[idx + 129 len 1] - 48
                s = mem[idx + 128 len 1]
                s = (256 * s) + (Mask(8, 248, mem[idx + 128]) >> 244) + mem[idx + 129 len 1] - 48
                continue 
            if mem[idx + 129 len 1] >= 97:
                if mem[idx + 129 len 1] <= 102:
                    idx = idx + 2
                    s = mem[idx + 129 len 1] - 87
                    s = mem[idx + 128 len 1] - 48
                    s = (256 * s) + (16 * mem[idx + 128 len 1] - 48) + mem[idx + 129 len 1] - 87
                    continue 
            if mem[idx + 129 len 1] < 48:
                idx = idx + 2
                s = mem[idx + 129 len 1]
                s = mem[idx + 128 len 1] - 48
                s = (256 * s) + (16 * mem[idx + 128 len 1] - 48) + mem[idx + 129 len 1]
                continue 
            if mem[idx + 129 len 1] > 57:
                idx = idx + 2
                s = mem[idx + 129 len 1]
                s = mem[idx + 128 len 1] - 48
                s = (256 * s) + (16 * mem[idx + 128 len 1] - 48) + mem[idx + 129 len 1]
                continue 
            idx = idx + 2
            s = mem[idx + 129 len 1] - 48
            s = mem[idx + 128 len 1] - 48
            s = (256 * s) + (16 * mem[idx + 128 len 1] - 48) + mem[idx + 129 len 1] - 48
            continue 
        require address(s) == address(stor4[arg1].field_256)
        _217 = mem[64]
        mem[64] = mem[64] + 96
        _218 = mem[64]
        mem[64] = mem[64] + ceil32(stor4[arg1].length) + 32
        mem[_218] = stor4[arg1].length
        mem[0] = sha3(arg1, 4)
        mem[_218 + 32] = uint256(stor4[arg1].field_0)
        idx = _218 + 32
        s = 0
        while _218 + stor4[arg1].length > idx:
            mem[idx + 32] = uint256(stor4[arg1][s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[_217] = _218
        mem[_217 + 32] = address(stor4[arg1].field_256)
        mem[_217 + 64] = bool(uint8(stor4[arg1].field_416))
        _3322 = mem[64]
        mem[mem[64] len stor4[arg1].length] = mem[_218 + 32 len stor4[arg1].length]
        mem[stor4[arg1].length + mem[64]] = 3
        mem[0] = address(stor[sha3(mem[mem[64] len stor4[arg1].length + _3322 + -mem[64] + 32])].field_0)
        mem[32] = 2
        _3326 = sha3(mem[0], 2)
        _3327 = mem[64]
        mem[64] = mem[64] + 32
        mem[_3327] = 0
        _3329 = mem[64]
        mem[mem[64] len stor4[arg1].length] = mem[_218 + 32 len stor4[arg1].length]
        mem[stor4[arg1].length + mem[64]] = 3
        mem[0] = address(stor[sha3(mem[mem[64] len stor4[arg1].length + _3329 + -mem[64] + 32])].field_0)
        mem[32] = 2
        _3333 = sha3(mem[0], 2)
        mem[0] = sha3(mem[0], 2)
        bool(stor[_3333].field_0) = 0
        uint255(stor[_3333].field_1) = 0
        Mask(248, 0, stor[_3333].field_8) = mem[_3327 + 32 len 31]
        idx = 0
        while stor[_3333].length + 31 / 32 > idx:
            uint256(stor[idx + sha3(mem[0])].field_0) = 0
            idx = idx + 1
            continue 
        _6257 = mem[64]
        mem[0] = _3326
        mem[mem[64]] = uint256(stor[sha3(_3326)].field_0)
        idx = mem[64]
        s = 0
        while _6257 + stor[_3326].length > idx + 32:
            mem[idx + 32] = uint256(stor[s + sha3(mem[0]) + 1].field_0)
            idx = idx + 32
            s = s + 1
            continue 
        mem[_6257 + stor[_3326].length] = 3
        address(stor[sha3(mem[mem[64] len _6257 + stor[_3326].length + -mem[64] + 32])].field_0) = 0
        _10683 = mem[_217]
        mem[0] = mem[_217 + 44 len 20]
        mem[32] = 2
        _10685 = sha3(mem[0], 2)
        _10686 = mem[_10683]
        mem[0] = sha3(mem[0], 2)
        uint256(stor[sha3(_10685)][].field_0) = Array(len=_10686, data=mem[_10683 + 32 len _10686])
        _13036 = mem[_217 + 32]
        _13038 = mem[64]
        _13039 = mem[mem[_217]]
        mem[mem[64] len mem[mem[_217]]] = mem[mem[_217] + 32 len mem[mem[_217]]]
        mem[_13039 + mem[64]] = 3
        address(stor[sha3(mem[mem[64] len _13039 + _13038 + -mem[64] + 32])].field_0) = address(_13036)
    else:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
            require ext_code.size(stor0)
            call stor0.getAddress() with:
                 gas gas_remaining - 50 wei
            require ext_call.success
            uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
            require ext_code.size(address(stor1))
            call address(stor1).cbAddress() with:
                 gas gas_remaining - 50 wei
            require ext_call.success
            require msg.sender == ext_call.return_data[12 len 20]
            mem[0] = arg1
            mem[32] = 4
            require not uint8(stor4[arg1].field_416)
            require address(stor4[arg1].field_256)
            mem[ceil32(arg2.length) + 128] = 0
            mem[64] = ceil32(arg2.length) + 192
            mem[ceil32(arg2.length) + 160] = 0
            idx = 0
            while idx < arg2.length:
                require idx < arg2.length
                if mem[idx + 128 len 1] >= 65:
                    require idx < arg2.length
                    if mem[idx + 128 len 1] <= 90:
                        require idx < arg2.length
                        require idx < arg2.length
                        mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
                idx = idx + 1
                continue 
            _160 = mem[64]
            mem[64] = mem[64] + 32
            mem[_160] = 0
            idx = 2
            s = 0
            s = 0
            s = 0
            while idx < 42:
                require idx < arg2.length
                require idx + 1 < arg2.length
                if mem[idx + 128 len 1] >= 97:
                    if mem[idx + 128 len 1] <= 102:
                        if mem[idx + 129 len 1] >= 97:
                            if mem[idx + 129 len 1] <= 102:
                                idx = idx + 2
                                s = mem[idx + 129 len 1] - 87
                                s = mem[idx + 128 len 1] - 87
                                s = (256 * s) + (16 * mem[idx + 128 len 1] - 87) + mem[idx + 129 len 1] - 87
                                continue 
                        if mem[idx + 129 len 1] < 48:
                            idx = idx + 2
                            s = mem[idx + 129 len 1]
                            s = mem[idx + 128 len 1] - 87
                            s = (256 * s) + (16 * mem[idx + 128 len 1] - 87) + mem[idx + 129 len 1]
                            continue 
                        if mem[idx + 129 len 1] > 57:
                            idx = idx + 2
                            s = mem[idx + 129 len 1]
                            s = mem[idx + 128 len 1] - 87
                            s = (256 * s) + (16 * mem[idx + 128 len 1] - 87) + mem[idx + 129 len 1]
                            continue 
                        idx = idx + 2
                        s = mem[idx + 129 len 1] - 48
                        s = mem[idx + 128 len 1] - 87
                        s = (256 * s) + (16 * mem[idx + 128 len 1] - 87) + mem[idx + 129 len 1] - 48
                        continue 
                if mem[idx + 128 len 1] < 48:
                    if mem[idx + 129 len 1] >= 97:
                        if mem[idx + 129 len 1] <= 102:
                            idx = idx + 2
                            s = mem[idx + 129 len 1] - 87
                            s = mem[idx + 128 len 1]
                            s = (256 * s) + (Mask(8, 248, mem[idx + 128]) >> 244) + mem[idx + 129 len 1] - 87
                            continue 
                    if mem[idx + 129 len 1] < 48:
                        idx = idx + 2
                        s = mem[idx + 129 len 1]
                        s = mem[idx + 128 len 1]
                        s = (256 * s) + (Mask(8, 248, mem[idx + 128]) >> 244) + mem[idx + 129 len 1]
                        continue 
                    if mem[idx + 129 len 1] > 57:
                        idx = idx + 2
                        s = mem[idx + 129 len 1]
                        s = mem[idx + 128 len 1]
                        s = (256 * s) + (Mask(8, 248, mem[idx + 128]) >> 244) + mem[idx + 129 len 1]
                        continue 
                    idx = idx + 2
                    s = mem[idx + 129 len 1] - 48
                    s = mem[idx + 128 len 1]
                    s = (256 * s) + (Mask(8, 248, mem[idx + 128]) >> 244) + mem[idx + 129 len 1] - 48
                    continue 
                if mem[idx + 128 len 1] > 57:
                    if mem[idx + 129 len 1] >= 97:
                        if mem[idx + 129 len 1] <= 102:
                            idx = idx + 2
                            s = mem[idx + 129 len 1] - 87
                            s = mem[idx + 128 len 1]
                            s = (256 * s) + (Mask(8, 248, mem[idx + 128]) >> 244) + mem[idx + 129 len 1] - 87
                            continue 
                    if mem[idx + 129 len 1] < 48:
                        idx = idx + 2
                        s = mem[idx + 129 len 1]
                        s = mem[idx + 128 len 1]
                        s = (256 * s) + (Mask(8, 248, mem[idx + 128]) >> 244) + mem[idx + 129 len 1]
                        continue 
                    if mem[idx + 129 len 1] > 57:
                        idx = idx + 2
                        s = mem[idx + 129 len 1]
                        s = mem[idx + 128 len 1]
                        s = (256 * s) + (Mask(8, 248, mem[idx + 128]) >> 244) + mem[idx + 129 len 1]
                        continue 
                    idx = idx + 2
                    s = mem[idx + 129 len 1] - 48
                    s = mem[idx + 128 len 1]
                    s = (256 * s) + (Mask(8, 248, mem[idx + 128]) >> 244) + mem[idx + 129 len 1] - 48
                    continue 
                if mem[idx + 129 len 1] >= 97:
                    if mem[idx + 129 len 1] <= 102:
                        idx = idx + 2
                        s = mem[idx + 129 len 1] - 87
                        s = mem[idx + 128 len 1] - 48
                        s = (256 * s) + (16 * mem[idx + 128 len 1] - 48) + mem[idx + 129 len 1] - 87
                        continue 
                if mem[idx + 129 len 1] < 48:
                    idx = idx + 2
                    s = mem[idx + 129 len 1]
                    s = mem[idx + 128 len 1] - 48
                    s = (256 * s) + (16 * mem[idx + 128 len 1] - 48) + mem[idx + 129 len 1]
                    continue 
                if mem[idx + 129 len 1] > 57:
                    idx = idx + 2
                    s = mem[idx + 129 len 1]
                    s = mem[idx + 128 len 1] - 48
                    s = (256 * s) + (16 * mem[idx + 128 len 1] - 48) + mem[idx + 129 len 1]
                    continue 
                idx = idx + 2
                s = mem[idx + 129 len 1] - 48
                s = mem[idx + 128 len 1] - 48
                s = (256 * s) + (16 * mem[idx + 128 len 1] - 48) + mem[idx + 129 len 1] - 48
                continue 
            require address(s) == address(stor4[arg1].field_256)
            _225 = mem[64]
            mem[64] = mem[64] + 96
            _226 = mem[64]
            mem[64] = mem[64] + ceil32(stor4[arg1].length) + 32
            mem[_226] = stor4[arg1].length
            mem[0] = sha3(arg1, 4)
            mem[_226 + 32] = uint256(stor4[arg1].field_0)
            idx = _226 + 32
            s = 0
            while _226 + stor4[arg1].length > idx:
                mem[idx + 32] = uint256(stor4[arg1][s].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            mem[_225] = _226
            mem[_225 + 32] = address(stor4[arg1].field_256)
            mem[_225 + 64] = bool(uint8(stor4[arg1].field_416))
            _3494 = mem[64]
            mem[mem[64] len stor4[arg1].length] = mem[_226 + 32 len stor4[arg1].length]
            mem[stor4[arg1].length + mem[64]] = 3
            mem[0] = address(stor[sha3(mem[mem[64] len stor4[arg1].length + _3494 + -mem[64] + 32])].field_0)
            mem[32] = 2
            _3498 = sha3(mem[0], 2)
            _3499 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3499] = 0
            _3501 = mem[64]
            mem[mem[64] len stor4[arg1].length] = mem[_226 + 32 len stor4[arg1].length]
            mem[stor4[arg1].length + mem[64]] = 3
            mem[0] = address(stor[sha3(mem[mem[64] len stor4[arg1].length + _3501 + -mem[64] + 32])].field_0)
            mem[32] = 2
            _3505 = sha3(mem[0], 2)
            mem[0] = sha3(mem[0], 2)
            bool(stor[_3505].field_0) = 0
            uint255(stor[_3505].field_1) = 0
            Mask(248, 0, stor[_3505].field_8) = mem[_3499 + 32 len 31]
            idx = 0
            while stor[_3505].length + 31 / 32 > idx:
                uint256(stor[idx + sha3(mem[0])].field_0) = 0
                idx = idx + 1
                continue 
            mem[0] = _3498
            mem[mem[64]] = uint256(stor[sha3(_3498)].field_0)
            idx = mem[64]
            s = 0
            while mem[64] + stor[_3498].length > idx + 32:
                mem[idx + 32] = uint256(stor[s + sha3(mem[0]) + 1].field_0)
                idx = idx + 32
                s = s + 1
                continue 
            mem[mem[64] + stor[_3498].length] = 3
            address(stor[sha3(mem[mem[64] len stor[_3498].length + 32])].field_0) = 0
            _10795 = mem[_225]
            mem[0] = mem[_225 + 44 len 20]
            mem[32] = 2
            _10797 = sha3(mem[0], 2)
            _10798 = mem[_10795]
            mem[0] = sha3(mem[0], 2)
            uint256(stor[sha3(_10797)][].field_0) = Array(len=_10798, data=mem[_10795 + 32 len _10798])
            _13180 = mem[_225 + 32]
            _13182 = mem[64]
            _13183 = mem[mem[_225]]
            mem[mem[64] len mem[mem[_225]]] = mem[mem[_225] + 32 len mem[mem[_225]]]
            mem[_13183 + mem[64]] = 3
            address(stor[sha3(mem[mem[64] len _13183 + _13182 + -mem[64] + 32])].field_0) = address(_13180)
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                require ext_code.size(stor0)
                call stor0.getAddress() with:
                     gas gas_remaining - 50 wei
                require ext_call.success
                uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                require ext_code.size(address(stor1))
                call address(stor1).cbAddress() with:
                     gas gas_remaining - 50 wei
                require ext_call.success
                require msg.sender == ext_call.return_data[12 len 20]
                mem[0] = arg1
                mem[32] = 4
                require not uint8(stor4[arg1].field_416)
                require address(stor4[arg1].field_256)
                mem[ceil32(arg2.length) + 128] = 0
                mem[64] = ceil32(arg2.length) + 192
                mem[ceil32(arg2.length) + 160] = 0
                idx = 0
                while idx < arg2.length:
                    require idx < arg2.length
                    if mem[idx + 128 len 1] >= 65:
                        require idx < arg2.length
                        if mem[idx + 128 len 1] <= 90:
                            require idx < arg2.length
                            require idx < arg2.length
                            mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
                    idx = idx + 1
                    continue 
                _158 = mem[64]
                mem[64] = mem[64] + 32
                mem[_158] = 0
                idx = 2
                s = 0
                s = 0
                s = 0
                while idx < 42:
                    require idx < arg2.length
                    require idx + 1 < arg2.length
                    if mem[idx + 128 len 1] >= 97:
                        if mem[idx + 128 len 1] <= 102:
                            if mem[idx + 129 len 1] >= 97:
                                if mem[idx + 129 len 1] <= 102:
                                    idx = idx + 2
                                    s = mem[idx + 129 len 1] - 87
                                    s = mem[idx + 128 len 1] - 87
                                    s = (256 * s) + (16 * mem[idx + 128 len 1] - 87) + mem[idx + 129 len 1] - 87
                                    continue 
                            if mem[idx + 129 len 1] < 48:
                                idx = idx + 2
                                s = mem[idx + 129 len 1]
                                s = mem[idx + 128 len 1] - 87
                                s = (256 * s) + (16 * mem[idx + 128 len 1] - 87) + mem[idx + 129 len 1]
                                continue 
                            if mem[idx + 129 len 1] > 57:
                                idx = idx + 2
                                s = mem[idx + 129 len 1]
                                s = mem[idx + 128 len 1] - 87
                                s = (256 * s) + (16 * mem[idx + 128 len 1] - 87) + mem[idx + 129 len 1]
                                continue 
                            idx = idx + 2
                            s = mem[idx + 129 len 1] - 48
                            s = mem[idx + 128 len 1] - 87
                            s = (256 * s) + (16 * mem[idx + 128 len 1] - 87) + mem[idx + 129 len 1] - 48
                            continue 
                    if mem[idx + 128 len 1] < 48:
                        if mem[idx + 129 len 1] >= 97:
                            if mem[idx + 129 len 1] <= 102:
                                idx = idx + 2
                                s = mem[idx + 129 len 1] - 87
                                s = mem[idx + 128 len 1]
                                s = (256 * s) + (Mask(8, 248, mem[idx + 128]) >> 244) + mem[idx + 129 len 1] - 87
                                continue 
                        if mem[idx + 129 len 1] < 48:
                            idx = idx + 2
                            s = mem[idx + 129 len 1]
                            s = mem[idx + 128 len 1]
                            s = (256 * s) + (Mask(8, 248, mem[idx + 128]) >> 244) + mem[idx + 129 len 1]
                            continue 
                        if mem[idx + 129 len 1] > 57:
                            idx = idx + 2
                            s = mem[idx + 129 len 1]
                            s = mem[idx + 128 len 1]
                            s = (256 * s) + (Mask(8, 248, mem[idx + 128]) >> 244) + mem[idx + 129 len 1]
                            continue 
                        idx = idx + 2
                        s = mem[idx + 129 len 1] - 48
                        s = mem[idx + 128 len 1]
                        s = (256 * s) + (Mask(8, 248, mem[idx + 128]) >> 244) + mem[idx + 129 len 1] - 48
                        continue 
                    if mem[idx + 128 len 1] > 57:
                        if mem[idx + 129 len 1] >= 97:
                            if mem[idx + 129 len 1] <= 102:
                                idx = idx + 2
                                s = mem[idx + 129 len 1] - 87
                                s = mem[idx + 128 len 1]
                                s = (256 * s) + (Mask(8, 248, mem[idx + 128]) >> 244) + mem[idx + 129 len 1] - 87
                                continue 
                        if mem[idx + 129 len 1] < 48:
                            idx = idx + 2
                            s = mem[idx + 129 len 1]
                            s = mem[idx + 128 len 1]
                            s = (256 * s) + (Mask(8, 248, mem[idx + 128]) >> 244) + mem[idx + 129 len 1]
                            continue 
                        if mem[idx + 129 len 1] > 57:
                            idx = idx + 2
                            s = mem[idx + 129 len 1]
                            s = mem[idx + 128 len 1]
                            s = (256 * s) + (Mask(8, 248, mem[idx + 128]) >> 244) + mem[idx + 129 len 1]
                            continue 
                        idx = idx + 2
                        s = mem[idx + 129 len 1] - 48
                        s = mem[idx + 128 len 1]
                        s = (256 * s) + (Mask(8, 248, mem[idx + 128]) >> 244) + mem[idx + 129 len 1] - 48
                        continue 
                    if mem[idx + 129 len 1] >= 97:
                        if mem[idx + 129 len 1] <= 102:
                            idx = idx + 2
                            s = mem[idx + 129 len 1] - 87
                            s = mem[idx + 128 len 1] - 48
                            s = (256 * s) + (16 * mem[idx + 128 len 1] - 48) + mem[idx + 129 len 1] - 87
                            continue 
                    if mem[idx + 129 len 1] < 48:
                        idx = idx + 2
                        s = mem[idx + 129 len 1]
                        s = mem[idx + 128 len 1] - 48
                        s = (256 * s) + (16 * mem[idx + 128 len 1] - 48) + mem[idx + 129 len 1]
                        continue 
                    if mem[idx + 129 len 1] > 57:
                        idx = idx + 2
                        s = mem[idx + 129 len 1]
                        s = mem[idx + 128 len 1] - 48
                        s = (256 * s) + (16 * mem[idx + 128 len 1] - 48) + mem[idx + 129 len 1]
                        continue 
                    idx = idx + 2
                    s = mem[idx + 129 len 1] - 48
                    s = mem[idx + 128 len 1] - 48
                    s = (256 * s) + (16 * mem[idx + 128 len 1] - 48) + mem[idx + 129 len 1] - 48
                    continue 
                require address(s) == address(stor4[arg1].field_256)
                _223 = mem[64]
                mem[64] = mem[64] + 96
                _224 = mem[64]
                mem[64] = mem[64] + ceil32(stor4[arg1].length) + 32
                mem[_224] = stor4[arg1].length
                mem[0] = sha3(arg1, 4)
                mem[_224 + 32] = uint256(stor4[arg1].field_0)
                idx = _224 + 32
                s = 0
                while _224 + stor4[arg1].length > idx:
                    mem[idx + 32] = uint256(stor4[arg1][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[_223] = _224
                mem[_223 + 32] = address(stor4[arg1].field_256)
                mem[_223 + 64] = bool(uint8(stor4[arg1].field_416))
                _3451 = mem[64]
                mem[mem[64] len stor4[arg1].length] = mem[_224 + 32 len stor4[arg1].length]
                mem[stor4[arg1].length + mem[64]] = 3
                mem[0] = address(stor[sha3(mem[mem[64] len stor4[arg1].length + _3451 + -mem[64] + 32])].field_0)
                mem[32] = 2
                _3455 = sha3(mem[0], 2)
                _3456 = mem[64]
                mem[64] = mem[64] + 32
                mem[_3456] = 0
                mem[mem[64] len stor4[arg1].length] = mem[_224 + 32 len stor4[arg1].length]
                mem[stor4[arg1].length + mem[64]] = 3
                mem[0] = address(stor[sha3(mem[mem[64] len stor4[arg1].length + 32])].field_0)
                mem[32] = 2
                _3462 = sha3(mem[0], 2)
                mem[0] = sha3(mem[0], 2)
                bool(stor[_3462].field_0) = 0
                uint255(stor[_3462].field_1) = 0
                Mask(248, 0, stor[_3462].field_8) = mem[_3456 + 32 len 31]
                idx = 0
                while stor[_3462].length + 31 / 32 > idx:
                    uint256(stor[idx + sha3(mem[0])].field_0) = 0
                    idx = idx + 1
                    continue 
                _6557 = mem[64]
                mem[0] = _3455
                mem[mem[64]] = uint256(stor[sha3(_3455)].field_0)
                idx = mem[64]
                s = 0
                while _6557 + stor[_3455].length > idx + 32:
                    mem[idx + 32] = uint256(stor[s + sha3(mem[0]) + 1].field_0)
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[_6557 + stor[_3455].length] = 3
                address(stor[sha3(mem[mem[64] len _6557 + stor[_3455].length + -mem[64] + 32])].field_0) = 0
                _10767 = mem[_223]
                mem[0] = mem[_223 + 44 len 20]
                mem[32] = 2
                _10769 = sha3(mem[0], 2)
                _10770 = mem[_10767]
                mem[0] = sha3(mem[0], 2)
                uint256(stor[sha3(_10769)][].field_0) = Array(len=_10770, data=mem[_10767 + 32 len _10770])
                _13144 = mem[_223 + 32]
                _13146 = mem[64]
                _13147 = mem[mem[_223]]
                mem[mem[64] len mem[mem[_223]]] = mem[mem[_223] + 32 len mem[mem[_223]]]
                mem[_13147 + mem[64]] = 3
                address(stor[sha3(mem[mem[64] len _13147 + _13146 + -mem[64] + 32])].field_0) = address(_13144)
            else:
                if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) <= 0:
                    require ext_code.size(stor0)
                    call stor0.getAddress() with:
                         gas gas_remaining - 50 wei
                    require ext_call.success
                    uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                    require ext_code.size(address(stor1))
                    call address(stor1).cbAddress() with:
                         gas gas_remaining - 50 wei
                    require ext_call.success
                    require msg.sender == ext_call.return_data[12 len 20]
                    mem[0] = arg1
                    mem[32] = 4
                    require not uint8(stor4[arg1].field_416)
                    require address(stor4[arg1].field_256)
                    mem[ceil32(arg2.length) + 128] = 0
                    mem[64] = ceil32(arg2.length) + 192
                    mem[ceil32(arg2.length) + 160] = 0
                    idx = 0
                    while idx < arg2.length:
                        require idx < arg2.length
                        if mem[idx + 128 len 1] >= 65:
                            require idx < arg2.length
                            if mem[idx + 128 len 1] <= 90:
                                require idx < arg2.length
                                require idx < arg2.length
                                mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
                        idx = idx + 1
                        continue 
                    _154 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_154] = 0
                    idx = 2
                    s = 0
                    s = 0
                    s = 0
                    while idx < 42:
                        require idx < arg2.length
                        require idx + 1 < arg2.length
                        if mem[idx + 128 len 1] >= 97:
                            if mem[idx + 128 len 1] <= 102:
                                if mem[idx + 129 len 1] >= 97:
                                    if mem[idx + 129 len 1] <= 102:
                                        idx = idx + 2
                                        s = mem[idx + 129 len 1] - 87
                                        s = mem[idx + 128 len 1] - 87
                                        s = (256 * s) + (16 * mem[idx + 128 len 1] - 87) + mem[idx + 129 len 1] - 87
                                        continue 
                                if mem[idx + 129 len 1] < 48:
                                    idx = idx + 2
                                    s = mem[idx + 129 len 1]
                                    s = mem[idx + 128 len 1] - 87
                                    s = (256 * s) + (16 * mem[idx + 128 len 1] - 87) + mem[idx + 129 len 1]
                                    continue 
                                if mem[idx + 129 len 1] > 57:
                                    idx = idx + 2
                                    s = mem[idx + 129 len 1]
                                    s = mem[idx + 128 len 1] - 87
                                    s = (256 * s) + (16 * mem[idx + 128 len 1] - 87) + mem[idx + 129 len 1]
                                    continue 
                                idx = idx + 2
                                s = mem[idx + 129 len 1] - 48
                                s = mem[idx + 128 len 1] - 87
                                s = (256 * s) + (16 * mem[idx + 128 len 1] - 87) + mem[idx + 129 len 1] - 48
                                continue 
                        if mem[idx + 128 len 1] < 48:
                            if mem[idx + 129 len 1] >= 97:
                                if mem[idx + 129 len 1] <= 102:
                                    idx = idx + 2
                                    s = mem[idx + 129 len 1] - 87
                                    s = mem[idx + 128 len 1]
                                    s = (256 * s) + (Mask(8, 248, mem[idx + 128]) >> 244) + mem[idx + 129 len 1] - 87
                                    continue 
                            if mem[idx + 129 len 1] < 48:
                                idx = idx + 2
                                s = mem[idx + 129 len 1]
                                s = mem[idx + 128 len 1]
                                s = (256 * s) + (Mask(8, 248, mem[idx + 128]) >> 244) + mem[idx + 129 len 1]
                                continue 
                            if mem[idx + 129 len 1] > 57:
                                idx = idx + 2
                                s = mem[idx + 129 len 1]
                                s = mem[idx + 128 len 1]
                                s = (256 * s) + (Mask(8, 248, mem[idx + 128]) >> 244) + mem[idx + 129 len 1]
                                continue 
                            idx = idx + 2
                            s = mem[idx + 129 len 1] - 48
                            s = mem[idx + 128 len 1]
                            s = (256 * s) + (Mask(8, 248, mem[idx + 128]) >> 244) + mem[idx + 129 len 1] - 48
                            continue 
                        if mem[idx + 128 len 1] > 57:
                            if mem[idx + 129 len 1] >= 97:
                                if mem[idx + 129 len 1] <= 102:
                                    idx = idx + 2
                                    s = mem[idx + 129 len 1] - 87
                                    s = mem[idx + 128 len 1]
                                    s = (256 * s) + (Mask(8, 248, mem[idx + 128]) >> 244) + mem[idx + 129 len 1] - 87
                                    continue 
                            if mem[idx + 129 len 1] < 48:
                                idx = idx + 2
                                s = mem[idx + 129 len 1]
                                s = mem[idx + 128 len 1]
                                s = (256 * s) + (Mask(8, 248, mem[idx + 128]) >> 244) + mem[idx + 129 len 1]
                                continue 
                            if mem[idx + 129 len 1] > 57:
                                idx = idx + 2
                                s = mem[idx + 129 len 1]
                                s = mem[idx + 128 len 1]
                                s = (256 * s) + (Mask(8, 248, mem[idx + 128]) >> 244) + mem[idx + 129 len 1]
                                continue 
                            idx = idx + 2
                            s = mem[idx + 129 len 1] - 48
                            s = mem[idx + 128 len 1]
                            s = (256 * s) + (Mask(8, 248, mem[idx + 128]) >> 244) + mem[idx + 129 len 1] - 48
                            continue 
                        if mem[idx + 129 len 1] >= 97:
                            if mem[idx + 129 len 1] <= 102:
                                idx = idx + 2
                                s = mem[idx + 129 len 1] - 87
                                s = mem[idx + 128 len 1] - 48
                                s = (256 * s) + (16 * mem[idx + 128 len 1] - 48) + mem[idx + 129 len 1] - 87
                                continue 
                        if mem[idx + 129 len 1] < 48:
                            idx = idx + 2
                            s = mem[idx + 129 len 1]
                            s = mem[idx + 128 len 1] - 48
                            s = (256 * s) + (16 * mem[idx + 128 len 1] - 48) + mem[idx + 129 len 1]
                            continue 
                        if mem[idx + 129 len 1] > 57:
                            idx = idx + 2
                            s = mem[idx + 129 len 1]
                            s = mem[idx + 128 len 1] - 48
                            s = (256 * s) + (16 * mem[idx + 128 len 1] - 48) + mem[idx + 129 len 1]
                            continue 
                        idx = idx + 2
                        s = mem[idx + 129 len 1] - 48
                        s = mem[idx + 128 len 1] - 48
                        s = (256 * s) + (16 * mem[idx + 128 len 1] - 48) + mem[idx + 129 len 1] - 48
                        continue 
                    require address(s) == address(stor4[arg1].field_256)
                    _219 = mem[64]
                    mem[64] = mem[64] + 96
                    _220 = mem[64]
                    mem[64] = mem[64] + ceil32(stor4[arg1].length) + 32
                    mem[_220] = stor4[arg1].length
                    mem[0] = sha3(arg1, 4)
                    mem[_220 + 32] = uint256(stor4[arg1].field_0)
                    idx = _220 + 32
                    s = 0
                    while _220 + stor4[arg1].length > idx:
                        mem[idx + 32] = uint256(stor4[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[_219] = _220
                    mem[_219 + 32] = address(stor4[arg1].field_256)
                    mem[_219 + 64] = bool(uint8(stor4[arg1].field_416))
                    mem[mem[64] len stor4[arg1].length] = mem[_220 + 32 len stor4[arg1].length]
                    mem[stor4[arg1].length + mem[64]] = 3
                    mem[0] = address(stor[sha3(mem[mem[64] len stor4[arg1].length + 32])].field_0)
                    mem[32] = 2
                    _3369 = sha3(mem[0], 2)
                    _3370 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_3370] = 0
                    mem[mem[64] len stor4[arg1].length] = mem[_220 + 32 len stor4[arg1].length]
                    mem[stor4[arg1].length + mem[64]] = 3
                    mem[0] = address(stor[sha3(mem[mem[64] len stor4[arg1].length + 32])].field_0)
                    mem[32] = 2
                    _3376 = sha3(mem[0], 2)
                    mem[0] = sha3(mem[0], 2)
                    bool(stor[_3376].field_0) = 0
                    uint255(stor[_3376].field_1) = 0
                    Mask(248, 0, stor[_3376].field_8) = mem[_3370 + 32 len 31]
                    idx = 0
                    while stor[_3376].length + 31 / 32 > idx:
                        uint256(stor[idx + sha3(mem[0])].field_0) = 0
                        idx = idx + 1
                        continue 
                    _6357 = mem[64]
                    mem[0] = _3369
                    mem[mem[64]] = uint256(stor[sha3(_3369)].field_0)
                    idx = mem[64]
                    s = 0
                    while _6357 + stor[_3369].length > idx + 32:
                        mem[idx + 32] = uint256(stor[s + sha3(mem[0]) + 1].field_0)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[_6357 + stor[_3369].length] = 3
                    address(stor[sha3(mem[mem[64] len _6357 + stor[_3369].length + -mem[64] + 32])].field_0) = 0
                    _10711 = mem[_219]
                    mem[0] = mem[_219 + 44 len 20]
                    mem[32] = 2
                    _10713 = sha3(mem[0], 2)
                    _10714 = mem[_10711]
                    mem[0] = sha3(mem[0], 2)
                    uint256(stor[sha3(_10713)][].field_0) = Array(len=_10714, data=mem[_10711 + 32 len _10714])
                    _13072 = mem[_219 + 32]
                    _13075 = mem[mem[_219]]
                    mem[mem[64] len mem[mem[_219]]] = mem[mem[_219] + 32 len mem[mem[_219]]]
                    mem[_13075 + mem[64]] = 3
                    address(stor[sha3(mem[mem[64] len _13075 + 32])].field_0) = address(_13072)
                else:
                    stor0 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                    require ext_code.size(stor0)
                    call stor0.getAddress() with:
                         gas gas_remaining - 50 wei
                    require ext_call.success
                    uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                    require ext_code.size(address(stor1))
                    call address(stor1).cbAddress() with:
                         gas gas_remaining - 50 wei
                    require ext_call.success
                    require msg.sender == ext_call.return_data[12 len 20]
                    mem[0] = arg1
                    mem[32] = 4
                    require not uint8(stor4[arg1].field_416)
                    require address(stor4[arg1].field_256)
                    mem[ceil32(arg2.length) + 128] = 0
                    mem[64] = ceil32(arg2.length) + 192
                    mem[ceil32(arg2.length) + 160] = 0
                    idx = 0
                    while idx < arg2.length:
                        require idx < arg2.length
                        if mem[idx + 128 len 1] >= 65:
                            require idx < arg2.length
                            if mem[idx + 128 len 1] <= 90:
                                require idx < arg2.length
                                require idx < arg2.length
                                mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
                        idx = idx + 1
                        continue 
                    _156 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_156] = 0
                    idx = 2
                    s = 0
                    s = 0
                    s = 0
                    while idx < 42:
                        require idx < arg2.length
                        require idx + 1 < arg2.length
                        if mem[idx + 128 len 1] >= 97:
                            if mem[idx + 128 len 1] <= 102:
                                if mem[idx + 129 len 1] >= 97:
                                    if mem[idx + 129 len 1] <= 102:
                                        idx = idx + 2
                                        s = mem[idx + 129 len 1] - 87
                                        s = mem[idx + 128 len 1] - 87
                                        s = (256 * s) + (16 * mem[idx + 128 len 1] - 87) + mem[idx + 129 len 1] - 87
                                        continue 
                                if mem[idx + 129 len 1] < 48:
                                    idx = idx + 2
                                    s = mem[idx + 129 len 1]
                                    s = mem[idx + 128 len 1] - 87
                                    s = (256 * s) + (16 * mem[idx + 128 len 1] - 87) + mem[idx + 129 len 1]
                                    continue 
                                if mem[idx + 129 len 1] > 57:
                                    idx = idx + 2
                                    s = mem[idx + 129 len 1]
                                    s = mem[idx + 128 len 1] - 87
                                    s = (256 * s) + (16 * mem[idx + 128 len 1] - 87) + mem[idx + 129 len 1]
                                    continue 
                                idx = idx + 2
                                s = mem[idx + 129 len 1] - 48
                                s = mem[idx + 128 len 1] - 87
                                s = (256 * s) + (16 * mem[idx + 128 len 1] - 87) + mem[idx + 129 len 1] - 48
                                continue 
                        if mem[idx + 128 len 1] < 48:
                            if mem[idx + 129 len 1] >= 97:
                                if mem[idx + 129 len 1] <= 102:
                                    idx = idx + 2
                                    s = mem[idx + 129 len 1] - 87
                                    s = mem[idx + 128 len 1]
                                    s = (256 * s) + (Mask(8, 248, mem[idx + 128]) >> 244) + mem[idx + 129 len 1] - 87
                                    continue 
                            if mem[idx + 129 len 1] < 48:
                                idx = idx + 2
                                s = mem[idx + 129 len 1]
                                s = mem[idx + 128 len 1]
                                s = (256 * s) + (Mask(8, 248, mem[idx + 128]) >> 244) + mem[idx + 129 len 1]
                                continue 
                            if mem[idx + 129 len 1] > 57:
                                idx = idx + 2
                                s = mem[idx + 129 len 1]
                                s = mem[idx + 128 len 1]
                                s = (256 * s) + (Mask(8, 248, mem[idx + 128]) >> 244) + mem[idx + 129 len 1]
                                continue 
                            idx = idx + 2
                            s = mem[idx + 129 len 1] - 48
                            s = mem[idx + 128 len 1]
                            s = (256 * s) + (Mask(8, 248, mem[idx + 128]) >> 244) + mem[idx + 129 len 1] - 48
                            continue 
                        if mem[idx + 128 len 1] > 57:
                            if mem[idx + 129 len 1] >= 97:
                                if mem[idx + 129 len 1] <= 102:
                                    idx = idx + 2
                                    s = mem[idx + 129 len 1] - 87
                                    s = mem[idx + 128 len 1]
                                    s = (256 * s) + (Mask(8, 248, mem[idx + 128]) >> 244) + mem[idx + 129 len 1] - 87
                                    continue 
                            if mem[idx + 129 len 1] < 48:
                                idx = idx + 2
                                s = mem[idx + 129 len 1]
                                s = mem[idx + 128 len 1]
                                s = (256 * s) + (Mask(8, 248, mem[idx + 128]) >> 244) + mem[idx + 129 len 1]
                                continue 
                            if mem[idx + 129 len 1] > 57:
                                idx = idx + 2
                                s = mem[idx + 129 len 1]
                                s = mem[idx + 128 len 1]
                                s = (256 * s) + (Mask(8, 248, mem[idx + 128]) >> 244) + mem[idx + 129 len 1]
                                continue 
                            idx = idx + 2
                            s = mem[idx + 129 len 1] - 48
                            s = mem[idx + 128 len 1]
                            s = (256 * s) + (Mask(8, 248, mem[idx + 128]) >> 244) + mem[idx + 129 len 1] - 48
                            continue 
                        if mem[idx + 129 len 1] >= 97:
                            if mem[idx + 129 len 1] <= 102:
                                idx = idx + 2
                                s = mem[idx + 129 len 1] - 87
                                s = mem[idx + 128 len 1] - 48
                                s = (256 * s) + (16 * mem[idx + 128 len 1] - 48) + mem[idx + 129 len 1] - 87
                                continue 
                        if mem[idx + 129 len 1] < 48:
                            idx = idx + 2
                            s = mem[idx + 129 len 1]
                            s = mem[idx + 128 len 1] - 48
                            s = (256 * s) + (16 * mem[idx + 128 len 1] - 48) + mem[idx + 129 len 1]
                            continue 
                        if mem[idx + 129 len 1] > 57:
                            idx = idx + 2
                            s = mem[idx + 129 len 1]
                            s = mem[idx + 128 len 1] - 48
                            s = (256 * s) + (16 * mem[idx + 128 len 1] - 48) + mem[idx + 129 len 1]
                            continue 
                        idx = idx + 2
                        s = mem[idx + 129 len 1] - 48
                        s = mem[idx + 128 len 1] - 48
                        s = (256 * s) + (16 * mem[idx + 128 len 1] - 48) + mem[idx + 129 len 1] - 48
                        continue 
                    require address(s) == address(stor4[arg1].field_256)
                    _221 = mem[64]
                    mem[64] = mem[64] + 96
                    _222 = mem[64]
                    mem[64] = mem[64] + ceil32(stor4[arg1].length) + 32
                    mem[_222] = stor4[arg1].length
                    mem[0] = sha3(arg1, 4)
                    mem[_222 + 32] = uint256(stor4[arg1].field_0)
                    idx = _222 + 32
                    s = 0
                    while _222 + stor4[arg1].length > idx:
                        mem[idx + 32] = uint256(stor4[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[_221] = _222
                    mem[_221 + 32] = address(stor4[arg1].field_256)
                    mem[_221 + 64] = bool(uint8(stor4[arg1].field_416))
                    _3408 = mem[64]
                    mem[mem[64] len stor4[arg1].length] = mem[_222 + 32 len stor4[arg1].length]
                    mem[stor4[arg1].length + mem[64]] = 3
                    mem[0] = address(stor[sha3(mem[mem[64] len stor4[arg1].length + _3408 + -mem[64] + 32])].field_0)
                    mem[32] = 2
                    _3412 = sha3(mem[0], 2)
                    _3413 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_3413] = 0
                    _3415 = mem[64]
                    mem[mem[64] len stor4[arg1].length] = mem[_222 + 32 len stor4[arg1].length]
                    mem[stor4[arg1].length + mem[64]] = 3
                    mem[0] = address(stor[sha3(mem[mem[64] len stor4[arg1].length + _3415 + -mem[64] + 32])].field_0)
                    mem[32] = 2
                    _3419 = sha3(mem[0], 2)
                    mem[0] = sha3(mem[0], 2)
                    bool(stor[_3419].field_0) = 0
                    uint255(stor[_3419].field_1) = 0
                    Mask(248, 0, stor[_3419].field_8) = mem[_3413 + 32 len 31]
                    idx = 0
                    while stor[_3419].length + 31 / 32 > idx:
                        uint256(stor[idx + sha3(mem[0])].field_0) = 0
                        idx = idx + 1
                        continue 
                    _6457 = mem[64]
                    mem[0] = _3412
                    mem[mem[64]] = uint256(stor[sha3(_3412)].field_0)
                    idx = mem[64]
                    s = 0
                    while _6457 + stor[_3412].length > idx + 32:
                        mem[idx + 32] = uint256(stor[s + sha3(mem[0]) + 1].field_0)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[_6457 + stor[_3412].length] = 3
                    address(stor[sha3(mem[mem[64] len _6457 + stor[_3412].length + -mem[64] + 32])].field_0) = 0
                    _10739 = mem[_221]
                    mem[0] = mem[_221 + 44 len 20]
                    mem[32] = 2
                    _10741 = sha3(mem[0], 2)
                    _10742 = mem[_10739]
                    mem[0] = sha3(mem[0], 2)
                    uint256(stor[sha3(_10741)][].field_0) = Array(len=_10742, data=mem[_10739 + 32 len _10742])
                    _13108 = mem[_221 + 32]
                    _13111 = mem[mem[_221]]
                    mem[mem[64] len mem[mem[_221]]] = mem[mem[_221] + 32 len mem[mem[_221]]]
                    mem[_13111 + mem[64]] = 3
                    address(stor[sha3(mem[mem[64] len _13111 + 32])].field_0) = address(_13108)
    uint8(stor4[arg1].field_416) = 1
}



}
