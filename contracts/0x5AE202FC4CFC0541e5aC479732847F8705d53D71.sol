contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[57 len 11252]
}



// =====================  Runtime code  =====================


#
#  - bidSpread(bytes32 arg1, bool arg2, int32 arg3)
#  - createGame(string arg1, string arg2, uint16 arg3, uint64 arg4)
#
array of uint256 stor0;
mapping of uint256 balances;

function balances(address arg1) {
    return balances[arg1]
}

function owner() {
    return address(stor0.length)
}

function kill() {
    if address(stor0.length) != msg.sender:
    selfdestruct(address(stor0.length))
}

function _fallback() payable {
    revert
}

function withdraw() {
    balances[address(msg.sender)] = 0
    call msg.sender with:
       value balances[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        return 1
    emit Withdrawal(balances[address(msg.sender)], block.timestamp, msg.sender);
    return -1
}

function getActiveGames() {
    idx = 0
    while idx < stor1.length:
        mem[0] = 1
        require idx < stor1.length
        mem[(32 * idx) + 192] = stor1[idx].field_0
        idx = idx + 1
        continue 
    mem[(32 * stor1.length) + 192] = 32
    mem[(32 * stor1.length) + 224] = stor1.length
    if Mask(251, 0, stor1.length):
        mem[(32 * stor1.length) + 256] = mem[192]
        mem[(32 * stor1.length) + 288 len floor32((32 * stor1.length) - 1)] = mem[224 len floor32((32 * stor1.length) - 1)]
    return Array(len=stor1.length, data=mem[(32 * stor1.length) + 256 len 32 * stor1.length])
}

function cancelBid(address arg1, bytes32 arg2, int32 arg3, bool arg4) {
    require 0 < stor1.length
    idx = 0
    while stor1[idx].field_0 != arg2:
        require idx + 1 < stor1.length
        mem[0] = 1
        idx = idx + 1
        continue 
    require None + 2 < stor1.length
    if arg4:
        idx = 0
        s = 0
        while idx < stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_0:
            mem[0] = sha3(0, (7 * None) + sha3(1) + 18)
            if stor[(7 * None) + ('name', 'stor1', 1) + 18][0][idx].field_0 != arg1:
                idx = idx + 1
                s = s
                continue 
            require idx < stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_0
            mem[0] = sha3(0, (7 * None) + sha3(1) + 18)
            if ('signextend', 3, ('signextend', 3, ('field', 520, ('stor', ('array', ('mul', 3, ('var', 0)), ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1)))))))) != ('signextend', 3, ('signextend', 3, ('param', 'arg3'))):
                idx = idx + 1
                s = s
                continue 
            require idx < stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_0
            mem[32] = 2
            balances[address(arg1)] += stor[(7 * None) + ('name', 'stor1', 1) + 18][0][idx].field_256
            mem[0] = sha3(0, (7 * None) + sha3(1) + 18)
            stor[(7 * None) + ('name', 'stor1', 1) + 18][0][idx].field_0 = 0
            stor[(7 * None) + ('name', 'stor1', 1) + 18][0][idx].field_256 = 0
            stor[(7 * None) + ('name', 'stor1', 1) + 18][0][idx].field_512 = 0
            idx = idx + 1
            s = 1
            continue 
    else:
        idx = 0
        s = 0
        while idx < stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_256:
            mem[0] = sha3(0, (7 * None) + sha3(1) + 18) + 1
            if stor[(3 * idx) + ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))].field_0 != arg1:
                idx = idx + 1
                s = s
                continue 
            require idx < stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_256
            mem[0] = sha3(0, (7 * None) + sha3(1) + 18) + 1
            if ('signextend', 3, ('signextend', 3, ('field', 520, ('stor', ('add', ('mul', 3, ('var', 0)), ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))))))) != ('signextend', 3, ('signextend', 3, ('param', 'arg3'))):
                idx = idx + 1
                s = s
                continue 
            require idx < stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_256
            mem[32] = 2
            balances[address(arg1)] += stor[(3 * idx) + ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))].field_256
            mem[0] = sha3(0, (7 * None) + sha3(1) + 18) + 1
            stor[(3 * idx) + ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))].field_0 = 0
            stor[(3 * idx) + ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))].field_256 = 0
            stor[(3 * idx) + ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))].field_512 = 0
            idx = idx + 1
            s = 1
            continue 
    return bool(s)
}

function getGameId(string arg1, string arg2, uint16 arg3, uint64 arg4) {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 256] = arg2.length + arg1.length + 10
    mem[64] = ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg2.length + arg1.length + 10) + 288
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require s < arg2.length + arg1.length + 10
        mem[ceil32(arg1.length) + ceil32(arg2.length) + s + 288 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
        s = s + 1
        idx = idx + 1
        continue 
    s = arg1.length
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        require s < arg2.length + arg1.length + 10
        mem[ceil32(arg1.length) + ceil32(arg2.length) + s + 288 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 0)), 32))), 0) - 256
        s = s + 1
        idx = idx + 1
        continue 
    s = arg1.length + arg2.length
    idx = 0
    while idx < 2:
        require s < arg2.length + arg1.length + 10
        mem[ceil32(arg1.length) + ceil32(arg2.length) + s + 288 len 8] = Mask(8, -(('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 16, 0, 237, ('param', 'arg3')), 0))), ('add', -11, (('mask_shl', 16, 0, 237, ('param', 'arg3')), 0)), ('var', 0)), 0) + 256, 0) << (('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 16, 0, 237, ('param', 'arg3')), 0))), ('add', -11, (('mask_shl', 16, 0, 237, ('param', 'arg3')), 0)), ('var', 0)), 0) - 256
        s = s + 1
        idx = idx + 1
        continue 
    s = arg1.length + arg2.length + 2
    idx = 0
    while idx < 8:
        require s < arg2.length + arg1.length + 10
        mem[ceil32(arg1.length) + ceil32(arg2.length) + s + 288 len 8] = Mask(8, -(('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 64, 0, 189, ('param', 'arg4')), 0))), ('add', -11, (('mask_shl', 64, 0, 189, ('param', 'arg4')), 0)), ('var', 0)), 0) + 256, 0) << (('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 64, 0, 189, ('param', 'arg4')), 0))), ('add', -11, (('mask_shl', 64, 0, 189, ('param', 'arg4')), 0)), ('var', 0)), 0) - 256
        s = s + 1
        idx = idx + 1
        continue 
    s = ceil32(arg1.length) + ceil32(arg2.length) + 288
    s = ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg2.length + arg1.length + 10) + 288
    idx = mem[ceil32(arg1.length) + ceil32(arg2.length) + 256]
    while idx >= 32:
        mem[s] = mem[arg1.length + arg2.length + 10]
        s = arg1.length + arg2.length + 42
        s = s + 32
        idx = idx - 32
        continue 
    mem[ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg2.length + arg1.length + 10) + floor32(mem[ceil32(arg1.length) + ceil32(arg2.length) + 256]) + -(mem[ceil32(arg1.length) + ceil32(arg2.length) + 256] % 32) + 320 len mem[ceil32(arg1.length) + ceil32(arg2.length) + 256] % 32] = mem[arg1.length + arg2.length + -(mem[ceil32(arg1.length) + ceil32(arg2.length) + 256] % 32) + 42 len mem[ceil32(arg1.length) + ceil32(arg2.length) + 256] % 32]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg2.length + arg1.length + 10) + 288] = sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg2.length + arg1.length + 10) + 288 len arg2.length + arg1.length + 10])
    return memory
      from ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg2.length + arg1.length + 10) + 288
       len 32
}

function setGameResult(bytes32 arg1, int256 arg2, int256 arg3) {
    if address(stor0.length) != msg.sender:
        return 1
    require 0 < stor1.length
    idx = 0
    while stor1[idx].field_0 != arg1:
        require idx + 1 < stor1.length
        mem[0] = 1
        idx = idx + 1
        continue 
    require None + 2 < stor1.length
    if stor1[None].field_4368 > block.timestamp:
        return 2
    require stor1[None].field_4432 <= 2
    if stor1[None].field_4432 == 2:
        return 3
    require 0 < stor1.length
    idx = 0
    while stor1[idx].field_0 != arg1:
        require idx + 1 < stor1.length
        mem[0] = 1
        idx = idx + 1
        continue 
    require None + 2 < stor1.length
    s = 0
    idx = 0
    while idx < stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_0:
        mem[0] = sha3(0, (7 * None) + sha3(1) + 18)
        if stor[(7 * None) + ('name', 'stor1', 1) + 18][0][idx].field_256 != 0:
            mem[32] = 2
            balances[stor[(7 * None) + ('name', 'stor1', 1) + 18][0][idx].field_0] += stor[(7 * None) + ('name', 'stor1', 1) + 18][0][idx].field_256
            require idx < stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_0
            mem[0] = sha3(0, (7 * None) + sha3(1) + 18)
            stor[(7 * None) + ('name', 'stor1', 1) + 18][0][idx].field_0 = 0
            stor[(7 * None) + ('name', 'stor1', 1) + 18][0][idx].field_256 = 0
            stor[(7 * None) + ('name', 'stor1', 1) + 18][0][idx].field_512 = 0
        s = (3 * idx) + sha3(sha3(0, (7 * None) + sha3(1) + 18))
        idx = idx + 1
        continue 
    t = s
    idx = 0
    while idx < stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_256:
        mem[0] = sha3(0, (7 * None) + sha3(1) + 18) + 1
        if stor[(3 * idx) + ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))].field_256 != 0:
            mem[32] = 2
            balances[stor[(3 * idx) + ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))].field_0] += stor[(3 * idx) + ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))].field_256
            require idx < stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_256
            mem[0] = sha3(0, (7 * None) + sha3(1) + 18) + 1
            stor[(3 * idx) + ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))].field_0 = 0
            stor[(3 * idx) + ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))].field_256 = 0
            stor[(3 * idx) + ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))].field_512 = 0
        t = (3 * idx) + sha3(sha3(0, (7 * None) + sha3(1) + 18) + 1)
        idx = idx + 1
        continue 
    stor1[None].field_4864 = arg2
    stor1[None].field_5120 = arg3
    stor1[None].field_4432 = 2
    emit GameScored(arg2, arg3, arg1);
    s = 0
    idx = 0
    while idx < stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_512:
        if (10 * arg3) - (10 * arg2) > ('signextend', 3, ('signextend', 3, ('field', 768, ('stor', ('add', ('mul', 4, ('var', 0)), ('array', 2, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))))))):
            mem[0] = stor[(4 * idx) + ('array', 2, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))].field_256
            mem[32] = 2
            balances[stor[(4 * idx) + ('array', 2, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))].field_256] += 2 * stor[(4 * idx) + ('array', 2, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))].field_512
        else:
            if (10 * arg3) - (10 * arg2) < ('signextend', 3, ('signextend', 3, ('field', 768, ('stor', ('add', ('mul', 4, ('var', 0)), ('array', 2, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))))))):
                mem[0] = stor[(4 * idx) + ('array', 2, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))].field_0
                mem[32] = 2
                balances[stor[(4 * idx) + ('array', 2, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))].field_0] += 2 * stor[(4 * idx) + ('array', 2, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))].field_512
            else:
                mem[32] = 2
                balances[stor[(4 * idx) + ('array', 2, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))].field_256] += stor[(4 * idx) + ('array', 2, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))].field_512
                mem[0] = stor[(4 * idx) + ('array', 2, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))].field_0
                balances[stor[(4 * idx) + ('array', 2, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))].field_0] += stor[(4 * idx) + ('array', 2, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))].field_512
        stor[(4 * idx) + ('array', 2, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))].field_800 = 1
        s = (4 * idx) + sha3(sha3(0, (7 * None) + sha3(1) + 18) + 2)
        idx = idx + 1
        continue 
    return -1
}

function getOpenBidsByBidder(bytes32 arg1, address arg2) {
    require 0 < stor1.length
    idx = 0
    while stor1[idx].field_0 != arg1:
        require idx + 1 < stor1.length
        mem[0] = 1
        idx = idx + 1
        continue 
    require None + 2 < stor1.length
    s = 0
    idx = 0
    t = 0
    while idx < stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_256 + stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_0:
        if idx < stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_0:
            mem[0] = sha3(0, (7 * None) + sha3(1) + 18)
            if stor[(7 * None) + ('name', 'stor1', 1) + 18][0][idx].field_0 != arg2:
                s = (3 * idx) + sha3(sha3(0, (7 * None) + sha3(1) + 18))
                idx = idx + 1
                t = t
                continue 
            s = (3 * idx) + sha3(sha3(0, (7 * None) + sha3(1) + 18))
            idx = idx + 1
            t = t + 1
            continue 
        require idx - stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_0 < stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_256
        mem[0] = sha3(0, (7 * None) + sha3(1) + 18) + 1
        if stor[(3 * idx) - (3 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_0) + ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))].field_0 != arg2:
            s = (3 * idx) - (3 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_0) + sha3(sha3(0, (7 * None) + sha3(1) + 18) + 1)
            idx = idx + 1
            t = t
            continue 
        s = (3 * idx) - (3 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_0) + sha3(sha3(0, (7 * None) + sha3(1) + 18) + 1)
        idx = idx + 1
        t = t + 1
        continue 
    u = s
    idx = 0
    while idx < stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_256 + stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_0:
        if idx < stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_0:
            mem[0] = sha3(0, (7 * None) + sha3(1) + 18)
            if stor[(7 * None) + ('name', 'stor1', 1) + 18][0][idx].field_0 == arg2:
                s = 0
                u = 0
                while s < 32:
                    require u < 37 * t
                    mem[u + 192 len 8] = Mask(8, -(('mask_shl', 8, ('add', 256, ('mul', -1, (('field', 259, ('stor', ('array', ('mul', 3, ('var', 0)), ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1)))))), 0))), ('add', -11, (('field', 259, ('stor', ('array', ('mul', 3, ('var', 0)), ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1)))))), 0)), ('var', 1)), 0) + 256, 0) << (('mask_shl', 8, ('add', 256, ('mul', -1, (('field', 259, ('stor', ('array', ('mul', 3, ('var', 0)), ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1)))))), 0))), ('add', -11, (('field', 259, ('stor', ('array', ('mul', 3, ('var', 0)), ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1)))))), 0)), ('var', 1)), 0) - 256
                    s = s + 1
                    u = u + 1
                    continue 
                require 32 < 37 * t
                if stor[(7 * None) + ('name', 'stor1', 1) + 18][0][idx].field_512:
                    mem[224 len 8] = Mask(8, -(56539106072908298546665520023773392506479484700019806659891398441363832832, 0) + 256, 0) << (56539106072908298546665520023773392506479484700019806659891398441363832832, 0) - 256
                else:
                    mem[224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                s = 0
                u = 33
                while s < 4:
                    require u < 37 * t
                    mem[u + 192 len 8] = Mask(8, -(('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 32, 0, 221, ('signextend', 3, ('field', 520, ('stor', ('array', ('mul', 3, ('var', 0)), ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1)))))))), 0))), ('add', -11, (('mask_shl', 32, 0, 221, ('signextend', 3, ('field', 520, ('stor', ('array', ('mul', 3, ('var', 0)), ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1)))))))), 0)), ('var', 1)), 0) + 256, 0) << (('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 32, 0, 221, ('signextend', 3, ('field', 520, ('stor', ('array', ('mul', 3, ('var', 0)), ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1)))))))), 0))), ('add', -11, (('mask_shl', 32, 0, 221, ('signextend', 3, ('field', 520, ('stor', ('array', ('mul', 3, ('var', 0)), ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1)))))))), 0)), ('var', 1)), 0) - 256
                    s = s + 1
                    u = u + 1
                    continue 
            u = (3 * idx) + sha3(sha3(0, (7 * None) + sha3(1) + 18))
            idx = idx + 1
            continue 
        require idx - stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_0 < stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_256
        mem[0] = sha3(0, (7 * None) + sha3(1) + 18) + 1
        if stor[(3 * idx) - (3 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_0) + ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))].field_0 == arg2:
            s = 0
            u = 0
            while s < 32:
                require u < 37 * t
                mem[u + 192 len 8] = Mask(8, -(('mask_shl', 8, ('add', 256, ('mul', -1, (('field', 259, ('stor', ('add', ('mul', 3, ('var', 0)), ('mul', -3, ('field', 0, ('stor', ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1)))))), ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))))), 0))), ('add', -11, (('field', 259, ('stor', ('add', ('mul', 3, ('var', 0)), ('mul', -3, ('field', 0, ('stor', ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1)))))), ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))))), 0)), ('var', 1)), 0) + 256, 0) << (('mask_shl', 8, ('add', 256, ('mul', -1, (('field', 259, ('stor', ('add', ('mul', 3, ('var', 0)), ('mul', -3, ('field', 0, ('stor', ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1)))))), ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))))), 0))), ('add', -11, (('field', 259, ('stor', ('add', ('mul', 3, ('var', 0)), ('mul', -3, ('field', 0, ('stor', ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1)))))), ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))))), 0)), ('var', 1)), 0) - 256
                s = s + 1
                u = u + 1
                continue 
            require 32 < 37 * t
            if stor[(3 * idx) - (3 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_0) + ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))].field_512:
                mem[224 len 8] = Mask(8, -(56539106072908298546665520023773392506479484700019806659891398441363832832, 0) + 256, 0) << (56539106072908298546665520023773392506479484700019806659891398441363832832, 0) - 256
            else:
                mem[224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            s = 0
            u = 33
            while s < 4:
                require u < 37 * t
                mem[u + 192 len 8] = Mask(8, -(('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 32, 0, 221, ('signextend', 3, ('field', 520, ('stor', ('add', ('mul', 3, ('var', 0)), ('mul', -3, ('field', 0, ('stor', ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1)))))), ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))))))), 0))), ('add', -11, (('mask_shl', 32, 0, 221, ('signextend', 3, ('field', 520, ('stor', ('add', ('mul', 3, ('var', 0)), ('mul', -3, ('field', 0, ('stor', ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1)))))), ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))))))), 0)), ('var', 1)), 0) + 256, 0) << (('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 32, 0, 221, ('signextend', 3, ('field', 520, ('stor', ('add', ('mul', 3, ('var', 0)), ('mul', -3, ('field', 0, ('stor', ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1)))))), ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))))))), 0))), ('add', -11, (('mask_shl', 32, 0, 221, ('signextend', 3, ('field', 520, ('stor', ('add', ('mul', 3, ('var', 0)), ('mul', -3, ('field', 0, ('stor', ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1)))))), ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))))))), 0)), ('var', 1)), 0) - 256
                s = s + 1
                u = u + 1
                continue 
        u = (3 * idx) - (3 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_0) + sha3(sha3(0, (7 * None) + sha3(1) + 18) + 1)
        idx = idx + 1
        continue 
    mem[(32 * 37 * t) + 192] = 32
    mem[(32 * 37 * t) + 224] = 37 * t
    if 37 * t:
        mem[(32 * 37 * t) + 256] = mem[192]
        mem[(32 * 37 * t) + 288 len floor32((37 * t) - 1)] = mem[224 len floor32((37 * t) - 1)]
    return Array(len=37 * t, data=mem[(32 * 37 * t) + 256 len 37 * t])
}

function getOpenBids(bytes32 arg1) {
    require 0 < stor1.length
    idx = 0
    while stor1[idx].field_0 != arg1:
        require idx + 1 < stor1.length
        mem[0] = 1
        idx = idx + 1
        continue 
    require None + 2 < stor1.length
    s = 0
    s = 0
    s = 0
    s = 0
    s = 0
    idx = 0
    s = 0
    while idx < stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_0 + stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_256:
        if idx < stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_0:
            mem[0] = sha3(0, (7 * None) + sha3(1) + 18)
            t = 0
            u = s
            while t < 20:
                require u < (57 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_0) + (57 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_256)
                mem[u + 192 len 8] = Mask(8, -(('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('field', 0, ('stor', ('array', ('mul', 3, ('var', 0)), ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))))), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('field', 0, ('stor', ('array', ('mul', 3, ('var', 0)), ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))))), 0)), ('var', 2)), 0) + 256, 0) << (('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('field', 0, ('stor', ('array', ('mul', 3, ('var', 0)), ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))))), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('field', 0, ('stor', ('array', ('mul', 3, ('var', 0)), ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))))), 0)), ('var', 2)), 0) - 256
                t = t + 1
                u = u + 1
                continue 
            t = 0
            u = s + 20
            while t < 32:
                require u < (57 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_0) + (57 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_256)
                mem[u + 192 len 8] = Mask(8, -(('mask_shl', 8, ('add', 256, ('mul', -1, (('field', 259, ('stor', ('array', ('mul', 3, ('var', 0)), ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1)))))), 0))), ('add', -11, (('field', 259, ('stor', ('array', ('mul', 3, ('var', 0)), ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1)))))), 0)), ('var', 2)), 0) + 256, 0) << (('mask_shl', 8, ('add', 256, ('mul', -1, (('field', 259, ('stor', ('array', ('mul', 3, ('var', 0)), ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1)))))), 0))), ('add', -11, (('field', 259, ('stor', ('array', ('mul', 3, ('var', 0)), ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1)))))), 0)), ('var', 2)), 0) - 256
                t = t + 1
                u = u + 1
                continue 
            require s + 52 < (57 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_0) + (57 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_256)
            if stor[(7 * None) + ('name', 'stor1', 1) + 18][0][idx].field_512:
                mem[s + 244 len 8] = Mask(8, -(56539106072908298546665520023773392506479484700019806659891398441363832832, 0) + 256, 0) << (56539106072908298546665520023773392506479484700019806659891398441363832832, 0) - 256
            else:
                mem[s + 244 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            t = 0
            u = s + 53
            while t < 4:
                require u < (57 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_0) + (57 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_256)
                mem[u + 192 len 8] = Mask(8, -(('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 32, 0, 221, ('signextend', 3, ('field', 520, ('stor', ('array', ('mul', 3, ('var', 0)), ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1)))))))), 0))), ('add', -11, (('mask_shl', 32, 0, 221, ('signextend', 3, ('field', 520, ('stor', ('array', ('mul', 3, ('var', 0)), ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1)))))))), 0)), ('var', 2)), 0) + 256, 0) << (('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 32, 0, 221, ('signextend', 3, ('field', 520, ('stor', ('array', ('mul', 3, ('var', 0)), ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1)))))))), 0))), ('add', -11, (('mask_shl', 32, 0, 221, ('signextend', 3, ('field', 520, ('stor', ('array', ('mul', 3, ('var', 0)), ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1)))))))), 0)), ('var', 2)), 0) - 256
                t = t + 1
                u = u + 1
                continue 
            s = 4
            s = ('signextend', 3, ('field', 520, ('stor', ('array', ('mul', 3, ('var', 0)), ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))))) << 224
            s = stor[(7 * None) + ('name', 'stor1', 1) + 18][0][idx].field_256
            s = stor[(7 * None) + ('name', 'stor1', 1) + 18][0][idx].field_0
            s = (3 * idx) + sha3(sha3(0, (7 * None) + sha3(1) + 18))
            idx = idx + 1
            s = s + 57
            continue 
        require idx - stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_0 < stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_256
        mem[0] = sha3(0, (7 * None) + sha3(1) + 18) + 1
        t = 0
        u = s
        while t < 20:
            require u < (57 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_0) + (57 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_256)
            mem[u + 192 len 8] = Mask(8, -(('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('field', 0, ('stor', ('add', ('mul', 3, ('var', 0)), ('mul', -3, ('field', 0, ('stor', ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1)))))), ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1)))))))), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('field', 0, ('stor', ('add', ('mul', 3, ('var', 0)), ('mul', -3, ('field', 0, ('stor', ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1)))))), ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1)))))))), 0)), ('var', 2)), 0) + 256, 0) << (('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('field', 0, ('stor', ('add', ('mul', 3, ('var', 0)), ('mul', -3, ('field', 0, ('stor', ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1)))))), ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1)))))))), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('field', 0, ('stor', ('add', ('mul', 3, ('var', 0)), ('mul', -3, ('field', 0, ('stor', ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1)))))), ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1)))))))), 0)), ('var', 2)), 0) - 256
            t = t + 1
            u = u + 1
            continue 
        t = 0
        u = s + 20
        while t < 32:
            require u < (57 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_0) + (57 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_256)
            mem[u + 192 len 8] = Mask(8, -(('mask_shl', 8, ('add', 256, ('mul', -1, (('field', 259, ('stor', ('add', ('mul', 3, ('var', 0)), ('mul', -3, ('field', 0, ('stor', ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1)))))), ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))))), 0))), ('add', -11, (('field', 259, ('stor', ('add', ('mul', 3, ('var', 0)), ('mul', -3, ('field', 0, ('stor', ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1)))))), ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))))), 0)), ('var', 2)), 0) + 256, 0) << (('mask_shl', 8, ('add', 256, ('mul', -1, (('field', 259, ('stor', ('add', ('mul', 3, ('var', 0)), ('mul', -3, ('field', 0, ('stor', ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1)))))), ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))))), 0))), ('add', -11, (('field', 259, ('stor', ('add', ('mul', 3, ('var', 0)), ('mul', -3, ('field', 0, ('stor', ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1)))))), ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))))), 0)), ('var', 2)), 0) - 256
            t = t + 1
            u = u + 1
            continue 
        require s + 52 < (57 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_0) + (57 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_256)
        if stor[(3 * idx) - (3 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_0) + ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))].field_512:
            mem[s + 244 len 8] = Mask(8, -(56539106072908298546665520023773392506479484700019806659891398441363832832, 0) + 256, 0) << (56539106072908298546665520023773392506479484700019806659891398441363832832, 0) - 256
        else:
            mem[s + 244 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        t = 0
        u = s + 53
        while t < 4:
            require u < (57 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_0) + (57 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_256)
            mem[u + 192 len 8] = Mask(8, -(('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 32, 0, 221, ('signextend', 3, ('field', 520, ('stor', ('add', ('mul', 3, ('var', 0)), ('mul', -3, ('field', 0, ('stor', ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1)))))), ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))))))), 0))), ('add', -11, (('mask_shl', 32, 0, 221, ('signextend', 3, ('field', 520, ('stor', ('add', ('mul', 3, ('var', 0)), ('mul', -3, ('field', 0, ('stor', ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1)))))), ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))))))), 0)), ('var', 2)), 0) + 256, 0) << (('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 32, 0, 221, ('signextend', 3, ('field', 520, ('stor', ('add', ('mul', 3, ('var', 0)), ('mul', -3, ('field', 0, ('stor', ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1)))))), ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))))))), 0))), ('add', -11, (('mask_shl', 32, 0, 221, ('signextend', 3, ('field', 520, ('stor', ('add', ('mul', 3, ('var', 0)), ('mul', -3, ('field', 0, ('stor', ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1)))))), ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))))))), 0)), ('var', 2)), 0) - 256
            t = t + 1
            u = u + 1
            continue 
        s = 4
        s = ('signextend', 3, ('field', 520, ('stor', ('add', ('mul', 3, ('var', 0)), ('mul', -3, ('field', 0, ('stor', ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1)))))), ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1)))))))) << 224
        s = stor[(3 * idx) - (3 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_0) + ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))].field_256
        s = stor[(3 * idx) - (3 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_0) + ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))].field_0
        s = (3 * idx) - (3 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_0) + sha3(sha3(0, (7 * None) + sha3(1) + 18) + 1)
        idx = idx + 1
        s = s + 57
        continue 
    mem[(32 * (57 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_0) + (57 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_256)) + 192] = 32
    mem[(32 * (57 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_0) + (57 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_256)) + 224] = (57 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_0) + (57 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_256)
    if (57 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_0) + (57 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_256):
        mem[(32 * (57 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_0) + (57 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_256)) + 256] = mem[192]
        mem[(32 * (57 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_0) + (57 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_256)) + 288 len floor32((57 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_0) + (57 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_256) - 1)] = mem[224 len floor32((57 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_0) + (57 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_256) - 1)]
    return Array(len=(57 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_0) + (57 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_256), data=mem[(32 * (57 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_0) + (57 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_256)) + 256 len (57 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_0) + (57 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_256)]), 
}

function getOpenBidsByLine(bytes32 arg1) {
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    require 0 < stor1.length
    idx = 0
    while stor1[idx].field_0 != arg1:
        require idx + 1 < stor1.length
        mem[0] = 1
        idx = idx + 1
        continue 
    require None + 2 < stor1.length
    mem[0] = 0
    mem[32] = (7 * None) + sha3(1) + 18
    mem[64] = (32 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_256) + 256
    mem[224] = stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_256
    s = 256
    idx = 0
    while idx < stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_256:
        mem[0] = sha3(0, (7 * None) + sha3(1) + 18) + 1
        _488 = mem[64]
        mem[64] = mem[64] + 128
        mem[_488] = stor[(3 * idx) + ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))].field_0
        mem[_488 + 32] = stor[(3 * idx) + ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))].field_256
        mem[_488 + 64] = bool(stor[(3 * idx) + ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))].field_512)
        mem[_488 + 96] = ('signextend', 3, ('signextend', 3, ('signextend', 3, ('field', 520, ('stor', ('add', ('mul', 3, ('var', 0)), ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))))))))
        mem[s] = _488
        s = s + 32
        idx = idx + 1
        continue 
    idx = 0
    while idx < mem[224]:
        require idx < mem[224]
        idx = idx + 1
        continue 
    _728 = mem[64]
    mem[64] = mem[64] + (32 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_0) + 32
    mem[_728] = stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_0
    if 0 >= stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_0:
        idx = 0
        while idx < stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_0:
            require idx < stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_0
            idx = idx + 1
            continue 
        _965 = mem[64]
        if msize >= mem[64]:
            _msize = max((32 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_256) + 256, _488 + 96, _728)
            mem[_msize + 32] = 0
            if msize < (max((32 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_256) + 256, _488 + 96, _728) + 32) + 32:
                mem[(_msize + 32) + 32] = 0
                mem[64] = (_msize + 32) + 64
                s = 0
                idx = 0
                while idx < stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_0:
                    mem[0] = sha3(0, (7 * None) + sha3(1) + 18)
                    if stor[(7 * None) + ('name', 'stor1', 1) + 18][0][idx].field_256 != 0:
                        mem[32] = 0
                        if not uint256(stor0[('signextend', 3, ('signextend', 3, ('signextend', 3, ('field', 520, ('stor', ('array', ('mul', 3, ('var', 0)), ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1)))))))))]):
                            require 0 < mem[(_msize + 32) + 32]
                            mem[(_msize + 32) + 64] = ('signextend', 3, ('signextend', 3, ('signextend', 3, ('field', 520, ('stor', ('array', ('mul', 3, ('var', 0)), ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1)))))))))
                        mem[0] = ('signextend', 3, ('signextend', 3, ('signextend', 3, ('field', 520, ('stor', ('array', ('mul', 3, ('var', 0)), ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1)))))))))
                        mem[32] = 0
                        uint256(stor0[('signextend', 3, ('signextend', 3, ('signextend', 3, ('field', 520, ('stor', ('array', ('mul', 3, ('var', 0)), ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1)))))))))]) += stor[(7 * None) + ('name', 'stor1', 1) + 18][0][idx].field_256
                    s = (3 * idx) + sha3(sha3(0, (7 * None) + sha3(1) + 18))
                    idx = idx + 1
                    continue 
                t = s
                idx = 0
                while idx < stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_256:
                    mem[0] = sha3(0, (7 * None) + sha3(1) + 18) + 1
                    if stor[(3 * idx) + ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))].field_256 != 0:
                        mem[0] = ('signextend', 3, ('signextend', 3, ('signextend', 3, ('field', 520, ('stor', ('add', ('mul', 3, ('var', 0)), ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))))))))
                        mem[32] = 1
                        if not stor1[('signextend', 3, ('signextend', 3, ('signextend', 3, ('field', 520, ('stor', ('add', ('mul', 3, ('var', 0)), ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))))))))].field_0:
                            require 0 < mem[_msize + 32]
                            mem[(_msize + 32) + 32] = ('signextend', 3, ('signextend', 3, ('signextend', 3, ('field', 520, ('stor', ('add', ('mul', 3, ('var', 0)), ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))))))))
                        mem[0] = ('signextend', 3, ('signextend', 3, ('signextend', 3, ('field', 520, ('stor', ('add', ('mul', 3, ('var', 0)), ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))))))))
                        mem[32] = 1
                        stor1[('signextend', 3, ('signextend', 3, ('signextend', 3, ('field', 520, ('stor', ('add', ('mul', 3, ('var', 0)), ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))))))))].field_0 += stor[(3 * idx) + ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))].field_256
                    t = (3 * idx) + sha3(sha3(0, (7 * None) + sha3(1) + 18) + 1)
                    idx = idx + 1
                    continue 
                _1404 = mem[64]
                if msize < mem[64]:
                    mem[64] = mem[64] + 32
                    mem[_1404 + 64] = mem[_1404]
                    if mem[_1404]:
                        mem[_1404 + 96] = 32
                        mem[_1404 + 128 len floor32(mem[_1404] - 1)] = mem[_1404], 32, mem[_1404 + 128 len floor32(mem[_1404] - 1) - 64]
                    if not mem[_1404] % 32:
                        return 32, mem[_1404 + 64 len mem[_1404] + 32]
                    mem[floor32(mem[_1404]) + _1404 + 96] = mem[floor32(mem[_1404]) + _1404 + -(mem[_1404] % 32) + 128 len mem[_1404] % 32]
                    return Array(len=mem[_1404], data=mem[_1404 + 96 len floor32(mem[_1404]) + 32])
                _msize = max((32 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_256) + 256, _msize + 32, _msize + 64, _488 + 96, _728)
            else:
                _msize = max((32 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_256) + 256, _msize + 32, _488 + 96, _728)
                mem[_msize + 32] = 0
                mem[64] = (_msize + 32) + 32
                s = 0
                idx = 0
                while idx < stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_0:
                    mem[0] = sha3(0, (7 * None) + sha3(1) + 18)
                    if stor[(7 * None) + ('name', 'stor1', 1) + 18][0][idx].field_256 != 0:
                        mem[0] = ('signextend', 3, ('signextend', 3, ('signextend', 3, ('field', 520, ('stor', ('array', ('mul', 3, ('var', 0)), ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1)))))))))
                        mem[32] = 0
                        if not uint256(stor0[('signextend', 3, ('signextend', 3, ('signextend', 3, ('field', 520, ('stor', ('array', ('mul', 3, ('var', 0)), ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1)))))))))]):
                            require 0 < mem[_msize + 32]
                            mem[(_msize + 32) + 32] = ('signextend', 3, ('signextend', 3, ('signextend', 3, ('field', 520, ('stor', ('array', ('mul', 3, ('var', 0)), ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1)))))))))
                        mem[0] = ('signextend', 3, ('signextend', 3, ('signextend', 3, ('field', 520, ('stor', ('array', ('mul', 3, ('var', 0)), ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1)))))))))
                        mem[32] = 0
                        uint256(stor0[('signextend', 3, ('signextend', 3, ('signextend', 3, ('field', 520, ('stor', ('array', ('mul', 3, ('var', 0)), ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1)))))))))]) += stor[(7 * None) + ('name', 'stor1', 1) + 18][0][idx].field_256
                    s = (3 * idx) + sha3(sha3(0, (7 * None) + sha3(1) + 18))
                    idx = idx + 1
                    continue 
                t = s
                idx = 0
                while idx < stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_256:
                    mem[0] = sha3(0, (7 * None) + sha3(1) + 18) + 1
                    if stor[(3 * idx) + ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))].field_256 != 0:
                        mem[0] = ('signextend', 3, ('signextend', 3, ('signextend', 3, ('field', 520, ('stor', ('add', ('mul', 3, ('var', 0)), ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))))))))
                        mem[32] = 1
                        if not stor1[('signextend', 3, ('signextend', 3, ('signextend', 3, ('field', 520, ('stor', ('add', ('mul', 3, ('var', 0)), ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))))))))].field_0:
                            require 0 < mem[_msize + 32]
                            mem[(_msize + 32) + 32] = ('signextend', 3, ('signextend', 3, ('signextend', 3, ('field', 520, ('stor', ('add', ('mul', 3, ('var', 0)), ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))))))))
                        mem[0] = ('signextend', 3, ('signextend', 3, ('signextend', 3, ('field', 520, ('stor', ('add', ('mul', 3, ('var', 0)), ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))))))))
                        mem[32] = 1
                        stor1[('signextend', 3, ('signextend', 3, ('signextend', 3, ('field', 520, ('stor', ('add', ('mul', 3, ('var', 0)), ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))))))))].field_0 += stor[(3 * idx) + ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))].field_256
                    t = (3 * idx) + sha3(sha3(0, (7 * None) + sha3(1) + 18) + 1)
                    idx = idx + 1
                    continue 
                _1406 = mem[64]
                if msize < mem[64]:
                    mem[64] = mem[64] + 32
                    mem[_1406 + 64] = mem[_1406]
                    if mem[_1406]:
                        mem[_1406 + 96] = 32
                        mem[_1406 + 128 len floor32(mem[_1406] - 1)] = mem[_1406], 32, mem[_1406 + 128 len floor32(mem[_1406] - 1) - 64]
                    if not mem[_1406] % 32:
                        return 32, mem[_1406 + 64 len mem[_1406] + 32]
                    mem[floor32(mem[_1406]) + _1406 + 96] = mem[floor32(mem[_1406]) + _1406 + -(mem[_1406] % 32) + 128 len mem[_1406] % 32]
                    return Array(len=mem[_1406], data=mem[_1406 + 96 len floor32(mem[_1406]) + 32])
                _msize = max((32 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_256) + 256, _msize + 32, _msize + 32, _msize + 64, _msize + 64, _488 + 96, _728)
            mem[_msize + 32] = 0
            mem[64] = (_msize + 32) + 32
            mem[(_msize + 32) + 32] = 32
            mem[(_msize + 32) + 64] = 0, None
            if 0, None:
                mem[(_msize + 32) + 96] = 32
                mem[(_msize + 32) + 128 len floor32(0, None - 1)] = mem[(_msize + 32) + 64 len floor32(0, None - 1)]
            return memory
              from (_msize + 32) + 32
               len 0, None + 64
        mem[mem[64]] = 0
        _974 = max((32 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_256) + 256, _488 + 96, mem[64], _728) + 32
        _msize = max((32 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_256) + 256, _488 + 96, mem[64], _728)
        mem[_msize + 32] = 0
        mem[64] = _974 + 32
        s = 0
        idx = 0
        while idx < stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_0:
            mem[0] = sha3(0, (7 * None) + sha3(1) + 18)
            if stor[(7 * None) + ('name', 'stor1', 1) + 18][0][idx].field_256 != 0:
                mem[0] = ('signextend', 3, ('signextend', 3, ('signextend', 3, ('field', 520, ('stor', ('array', ('mul', 3, ('var', 0)), ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1)))))))))
                mem[32] = 0
                if not uint256(stor0[('signextend', 3, ('signextend', 3, ('signextend', 3, ('field', 520, ('stor', ('array', ('mul', 3, ('var', 0)), ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1)))))))))]):
                    require 0 < mem[_974]
                    mem[_974 + 32] = ('signextend', 3, ('signextend', 3, ('signextend', 3, ('field', 520, ('stor', ('array', ('mul', 3, ('var', 0)), ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1)))))))))
                mem[0] = ('signextend', 3, ('signextend', 3, ('signextend', 3, ('field', 520, ('stor', ('array', ('mul', 3, ('var', 0)), ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1)))))))))
                mem[32] = 0
                uint256(stor0[('signextend', 3, ('signextend', 3, ('signextend', 3, ('field', 520, ('stor', ('array', ('mul', 3, ('var', 0)), ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1)))))))))]) += stor[(7 * None) + ('name', 'stor1', 1) + 18][0][idx].field_256
            s = (3 * idx) + sha3(sha3(0, (7 * None) + sha3(1) + 18))
            idx = idx + 1
            continue 
        t = s
        idx = 0
        while idx < stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_256:
            mem[0] = sha3(0, (7 * None) + sha3(1) + 18) + 1
            if stor[(3 * idx) + ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))].field_256 != 0:
                mem[0] = ('signextend', 3, ('signextend', 3, ('signextend', 3, ('field', 520, ('stor', ('add', ('mul', 3, ('var', 0)), ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))))))))
                mem[32] = 1
                if not stor1[('signextend', 3, ('signextend', 3, ('signextend', 3, ('field', 520, ('stor', ('add', ('mul', 3, ('var', 0)), ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))))))))].field_0:
                    require 0 < mem[_965]
                    mem[_965 + 32] = ('signextend', 3, ('signextend', 3, ('signextend', 3, ('field', 520, ('stor', ('add', ('mul', 3, ('var', 0)), ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))))))))
                mem[0] = ('signextend', 3, ('signextend', 3, ('signextend', 3, ('field', 520, ('stor', ('add', ('mul', 3, ('var', 0)), ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))))))))
                mem[32] = 1
                stor1[('signextend', 3, ('signextend', 3, ('signextend', 3, ('field', 520, ('stor', ('add', ('mul', 3, ('var', 0)), ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))))))))].field_0 += stor[(3 * idx) + ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))].field_256
            t = (3 * idx) + sha3(sha3(0, (7 * None) + sha3(1) + 18) + 1)
            idx = idx + 1
            continue 
        _1402 = mem[64]
        if msize < mem[64]:
            mem[64] = mem[64] + 32
            mem[_1402 + 64] = mem[_1402]
            if mem[_1402]:
                mem[_1402 + 96] = 32
                mem[_1402 + 128 len floor32(mem[_1402] - 1)] = mem[_1402], 32, mem[_1402 + 128 len floor32(mem[_1402] - 1) - 64]
            if not mem[_1402] % 32:
                return 32, mem[_1402 + 64 len mem[_1402] + 32]
            mem[floor32(mem[_1402]) + _1402 + 96] = mem[floor32(mem[_1402]) + _1402 + -(mem[_1402] % 32) + 128 len mem[_1402] % 32]
            return Array(len=mem[_1402], data=mem[_1402 + 96 len floor32(mem[_1402]) + 32])
        _1410 = max((32 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_256) + 256, _965 + 32, _974 + 32, _msize + 32, _488 + 96, mem[64], _728) + 32
        _msize = max((32 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_256) + 256, _965 + 32, _974 + 32, _msize + 32, _488 + 96, mem[64], _728)
        mem[_msize + 32] = 0
        mem[64] = _1410 + 32
        mem[_1410 + 64] = mem[_1410]
        if mem[_1410]:
            mem[_1410 + 96] = 32
            mem[_1410 + 128 len floor32(mem[_1410] - 1)] = mem[_1410], 32, mem[_1410 + 128 len floor32(mem[_1410] - 1) - 64]
        if not mem[_1410] % 32:
            return 32, mem[_1410 + 64 len mem[_1410] + 32]
        mem[floor32(mem[_1410]) + _1410 + 96] = mem[floor32(mem[_1410]) + _1410 + -(mem[_1410] % 32) + 128 len mem[_1410] % 32]
        return Array(len=mem[_1410], data=mem[_1410 + 96 len floor32(mem[_1410]) + 32])
    mem[0] = sha3(0, (7 * None) + sha3(1) + 18)
    _730 = mem[64]
    mem[64] = mem[64] + 128
    mem[_730] = stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_0
    mem[_730 + 32] = stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_256
    mem[_730 + 64] = bool(stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_512)
    mem[_730 + 96] = ('signextend', 3, ('signextend', 3, ('signextend', 3, ('field', 520, ('stor', ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))))))
    mem[_728 + 32] = _730
    s = _728 + 64
    idx = 1
    while idx < stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_0:
        mem[0] = sha3(0, (7 * None) + sha3(1) + 18)
        _964 = mem[64]
        mem[64] = mem[64] + 128
        mem[_964] = stor[(7 * None) + ('name', 'stor1', 1) + 18][0][idx].field_0
        mem[_964 + 32] = stor[(7 * None) + ('name', 'stor1', 1) + 18][0][idx].field_256
        mem[_964 + 64] = bool(stor[(7 * None) + ('name', 'stor1', 1) + 18][0][idx].field_512)
        mem[_964 + 96] = ('signextend', 3, ('signextend', 3, ('signextend', 3, ('field', 520, ('stor', ('array', ('mul', 3, ('var', 0)), ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1)))))))))
        mem[s] = _964
        s = s + 32
        idx = idx + 1
        continue 
    idx = 0
    while idx < mem[_728]:
        require idx < mem[_728]
        idx = idx + 1
        continue 
    _1203 = mem[64]
    if msize >= mem[64]:
        _msize = max(_728 + (32 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_0 - 1), (32 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_256) + 192)
        mem[_msize + 96] = 0
        if msize < (max(_728 + (32 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_0 - 1), (32 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_256) + 192) + 96) + 32:
            mem[(_msize + 96) + 32] = 0
            mem[64] = (_msize + 96) + 64
            s = 0
            idx = 0
            while idx < stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_0:
                mem[0] = sha3(0, (7 * None) + sha3(1) + 18)
                if stor[(7 * None) + ('name', 'stor1', 1) + 18][0][idx].field_256 != 0:
                    if not uint256(stor0[('signextend', 3, ('signextend', 3, ('signextend', 3, ('field', 520, ('stor', ('array', ('mul', 3, ('var', 0)), ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1)))))))))]):
                        require 0 < mem[(_msize + 96) + 32]
                        mem[(_msize + 96) + 64] = ('signextend', 3, ('signextend', 3, ('signextend', 3, ('field', 520, ('stor', ('array', ('mul', 3, ('var', 0)), ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1)))))))))
                    mem[0] = ('signextend', 3, ('signextend', 3, ('signextend', 3, ('field', 520, ('stor', ('array', ('mul', 3, ('var', 0)), ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1)))))))))
                    mem[32] = 0
                    uint256(stor0[('signextend', 3, ('signextend', 3, ('signextend', 3, ('field', 520, ('stor', ('array', ('mul', 3, ('var', 0)), ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1)))))))))]) += stor[(7 * None) + ('name', 'stor1', 1) + 18][0][idx].field_256
                s = (3 * idx) + sha3(sha3(0, (7 * None) + sha3(1) + 18))
                idx = idx + 1
                continue 
            t = s
            idx = 0
            while idx < stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_256:
                mem[0] = sha3(0, (7 * None) + sha3(1) + 18) + 1
                if stor[(3 * idx) + ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))].field_256 != 0:
                    mem[0] = ('signextend', 3, ('signextend', 3, ('signextend', 3, ('field', 520, ('stor', ('add', ('mul', 3, ('var', 0)), ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))))))))
                    mem[32] = 1
                    if not stor1[('signextend', 3, ('signextend', 3, ('signextend', 3, ('field', 520, ('stor', ('add', ('mul', 3, ('var', 0)), ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))))))))].field_0:
                        require 0 < mem[_msize + 96]
                        mem[(_msize + 96) + 32] = ('signextend', 3, ('signextend', 3, ('signextend', 3, ('field', 520, ('stor', ('add', ('mul', 3, ('var', 0)), ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))))))))
                    mem[0] = ('signextend', 3, ('signextend', 3, ('signextend', 3, ('field', 520, ('stor', ('add', ('mul', 3, ('var', 0)), ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))))))))
                    mem[32] = 1
                    stor1[('signextend', 3, ('signextend', 3, ('signextend', 3, ('field', 520, ('stor', ('add', ('mul', 3, ('var', 0)), ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))))))))].field_0 += stor[(3 * idx) + ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))].field_256
                t = (3 * idx) + sha3(sha3(0, (7 * None) + sha3(1) + 18) + 1)
                idx = idx + 1
                continue 
            if msize >= (max(_728 + (32 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_0 - 1), (32 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_256) + 192) + 96) + 64:
                return ''
            mem[64] = (_msize + 96) + 96
            mem[(_msize + 96) + 128] = mem[(_msize + 96) + 64]
            if mem[(max(_728 + (32 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_0 - 1), (32 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_256) + 192) + 96) + 64]:
                mem[(_msize + 96) + 160] = 32
                mem[_msize + 288 len floor32(mem[_msize + 160] - 1)] = mem[_msize + 160], 32, mem[_msize + 288 len floor32(mem[_msize + 160] - 1) - 64]
            if not mem[(max(_728 + (32 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_0 - 1), (32 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_256) + 192) + 96) + 64] % 32:
                return 32, mem[(_msize + 96) + 128 len mem[(_msize + 96) + 64] + 32]
            mem[floor32(mem[(_msize + 96) + 64]) + (_msize + 96) + 160] = mem[floor32(mem[(_msize + 96) + 64]) + (_msize + 96) + -(mem[(_msize + 96) + 64] % 32) + 192 len mem[(_msize + 96) + 64] % 32]
            return Array(len=mem[(_msize + 96) + 64], data=mem[(_msize + 96) + 160 len floor32(mem[(_msize + 96) + 64]) + 32])
        _msize = max((32 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_256) + 256, _728 + (32 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_0 - 1) + 64, _msize + 96)
        mem[_msize + 32] = 0
        mem[64] = (_msize + 32) + 32
        s = 0
        idx = 0
        while idx < stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_0:
            mem[0] = sha3(0, (7 * None) + sha3(1) + 18)
            if stor[(7 * None) + ('name', 'stor1', 1) + 18][0][idx].field_256 != 0:
                mem[0] = ('signextend', 3, ('signextend', 3, ('signextend', 3, ('field', 520, ('stor', ('array', ('mul', 3, ('var', 0)), ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1)))))))))
                mem[32] = 0
                if not uint256(stor0[('signextend', 3, ('signextend', 3, ('signextend', 3, ('field', 520, ('stor', ('array', ('mul', 3, ('var', 0)), ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1)))))))))]):
                    require 0 < mem[_msize + 32]
                    mem[(_msize + 32) + 32] = ('signextend', 3, ('signextend', 3, ('signextend', 3, ('field', 520, ('stor', ('array', ('mul', 3, ('var', 0)), ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1)))))))))
                mem[0] = ('signextend', 3, ('signextend', 3, ('signextend', 3, ('field', 520, ('stor', ('array', ('mul', 3, ('var', 0)), ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1)))))))))
                mem[32] = 0
                uint256(stor0[('signextend', 3, ('signextend', 3, ('signextend', 3, ('field', 520, ('stor', ('array', ('mul', 3, ('var', 0)), ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1)))))))))]) += stor[(7 * None) + ('name', 'stor1', 1) + 18][0][idx].field_256
            s = (3 * idx) + sha3(sha3(0, (7 * None) + sha3(1) + 18))
            idx = idx + 1
            continue 
        t = s
        idx = 0
        while idx < stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_256:
            mem[0] = sha3(0, (7 * None) + sha3(1) + 18) + 1
            if stor[(3 * idx) + ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))].field_256 != 0:
                mem[0] = ('signextend', 3, ('signextend', 3, ('signextend', 3, ('field', 520, ('stor', ('add', ('mul', 3, ('var', 0)), ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))))))))
                mem[32] = 1
                if not stor1[('signextend', 3, ('signextend', 3, ('signextend', 3, ('field', 520, ('stor', ('add', ('mul', 3, ('var', 0)), ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))))))))].field_0:
                    require 0 < mem[_msize + 96]
                    mem[(_msize + 96) + 32] = ('signextend', 3, ('signextend', 3, ('signextend', 3, ('field', 520, ('stor', ('add', ('mul', 3, ('var', 0)), ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))))))))
                mem[0] = ('signextend', 3, ('signextend', 3, ('signextend', 3, ('field', 520, ('stor', ('add', ('mul', 3, ('var', 0)), ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))))))))
                mem[32] = 1
                stor1[('signextend', 3, ('signextend', 3, ('signextend', 3, ('field', 520, ('stor', ('add', ('mul', 3, ('var', 0)), ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))))))))].field_0 += stor[(3 * idx) + ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))].field_256
            t = (3 * idx) + sha3(sha3(0, (7 * None) + sha3(1) + 18) + 1)
            idx = idx + 1
            continue 
        if msize >= (max((32 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_256) + 256, _728 + (32 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_0 - 1) + 64, max(_728 + (32 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_0 - 1), (32 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_256) + 192) + 96) + 32) + 32:
            return ''
        mem[64] = (_msize + 32) + 64
        mem[(_msize + 32) + 96] = mem[(_msize + 32) + 32]
        if not mem[(max((32 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_256) + 256, _728 + (32 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_0 - 1) + 64, max(_728 + (32 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_0 - 1), (32 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_256) + 192) + 96) + 32) + 32]:
            if not mem[(max((32 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_256) + 256, _728 + (32 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_0 - 1) + 64, max(_728 + (32 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_0 - 1), (32 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_256) + 192) + 96) + 32) + 32] % 32:
                return 32, mem[_msize + 64], mem[_msize + 160 len mem[_msize + 64]]
            mem[floor32(mem[(_msize + 32) + 32]) + (_msize + 32) + 128] = mem[floor32(mem[(_msize + 32) + 32]) + (_msize + 32) + -(mem[(_msize + 32) + 32] % 32) + 160 len mem[(_msize + 32) + 32] % 32]
            return Array(len=mem[(_msize + 32) + 32], data=mem[(_msize + 32) + 128 len floor32(mem[(_msize + 32) + 32]) + 32])
        mem[(_msize + 32) + 128] = 32
        mem[_msize + 192 len floor32(mem[_msize + 64] - 1)] = mem[_msize + 64], None, 32, mem[_msize + 192 len floor32(mem[_msize + 64] - 1) - 64]
        if not mem[(max((32 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_256) + 256, _728 + (32 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_0 - 1) + 64, max(_728 + (32 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_0 - 1), (32 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_256) + 192) + 96) + 32) + 32] % 32:
            return 32, mem[_msize + 64], mem[_msize + 160 len mem[_msize + 64]]
        mem[floor32(mem[(_msize + 32) + 32]) + (_msize + 32) + 128] = mem[floor32(mem[(_msize + 32) + 32]) + (_msize + 32) + -(mem[(_msize + 32) + 32] % 32) + 160 len mem[(_msize + 32) + 32] % 32]
        return Array(len=mem[_msize + 64], data=32, mem[_msize + 192 len floor32(mem[_msize + 64])])
    mem[mem[64]] = 0
    _1220 = max((32 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_256) + 256, _728 + (32 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_0 - 1) + 64, mem[64]) + 32
    _msize = max((32 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_256) + 256, _728 + (32 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_0 - 1) + 64, mem[64])
    mem[_msize + 32] = 0
    mem[64] = _1220 + 32
    s = 0
    idx = 0
    while idx < stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_0:
        mem[0] = sha3(0, (7 * None) + sha3(1) + 18)
        if stor[(7 * None) + ('name', 'stor1', 1) + 18][0][idx].field_256 != 0:
            mem[0] = ('signextend', 3, ('signextend', 3, ('signextend', 3, ('field', 520, ('stor', ('array', ('mul', 3, ('var', 0)), ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1)))))))))
            mem[32] = 0
            if not uint256(stor0[('signextend', 3, ('signextend', 3, ('signextend', 3, ('field', 520, ('stor', ('array', ('mul', 3, ('var', 0)), ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1)))))))))]):
                require 0 < mem[_1220]
                mem[_1220 + 32] = ('signextend', 3, ('signextend', 3, ('signextend', 3, ('field', 520, ('stor', ('array', ('mul', 3, ('var', 0)), ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1)))))))))
            mem[0] = ('signextend', 3, ('signextend', 3, ('signextend', 3, ('field', 520, ('stor', ('array', ('mul', 3, ('var', 0)), ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1)))))))))
            mem[32] = 0
            uint256(stor0[('signextend', 3, ('signextend', 3, ('signextend', 3, ('field', 520, ('stor', ('array', ('mul', 3, ('var', 0)), ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1)))))))))]) += stor[(7 * None) + ('name', 'stor1', 1) + 18][0][idx].field_256
        s = (3 * idx) + sha3(sha3(0, (7 * None) + sha3(1) + 18))
        idx = idx + 1
        continue 
    t = s
    idx = 0
    while idx < stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_256:
        mem[0] = sha3(0, (7 * None) + sha3(1) + 18) + 1
        if stor[(3 * idx) + ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))].field_256 != 0:
            mem[0] = ('signextend', 3, ('signextend', 3, ('signextend', 3, ('field', 520, ('stor', ('add', ('mul', 3, ('var', 0)), ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))))))))
            mem[32] = 1
            if not stor1[('signextend', 3, ('signextend', 3, ('signextend', 3, ('field', 520, ('stor', ('add', ('mul', 3, ('var', 0)), ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))))))))].field_0:
                require 0 < mem[_1203]
                mem[_1203 + 32] = ('signextend', 3, ('signextend', 3, ('signextend', 3, ('field', 520, ('stor', ('add', ('mul', 3, ('var', 0)), ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))))))))
            mem[0] = ('signextend', 3, ('signextend', 3, ('signextend', 3, ('field', 520, ('stor', ('add', ('mul', 3, ('var', 0)), ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))))))))
            mem[32] = 1
            stor1[('signextend', 3, ('signextend', 3, ('signextend', 3, ('field', 520, ('stor', ('add', ('mul', 3, ('var', 0)), ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))))))))].field_0 += stor[(3 * idx) + ('array', 1, ('map', 0, ('add', 18, ('mul', 7, None), ('name', 'stor1', 1))))].field_256
        t = (3 * idx) + sha3(sha3(0, (7 * None) + sha3(1) + 18) + 1)
        idx = idx + 1
        continue 
    _1590 = mem[64]
    if msize < mem[64]:
        mem[64] = mem[64] + 32
        mem[_1590 + 64] = mem[_1590]
        if mem[_1590]:
            mem[_1590 + 96] = 32
            mem[_1590 + 128 len floor32(mem[_1590] - 1)] = mem[_1590], 32, mem[_1590 + 128 len floor32(mem[_1590] - 1) - 64]
        if not mem[_1590] % 32:
            return 32, mem[_1590 + 64 len mem[_1590] + 32]
        mem[floor32(mem[_1590]) + _1590 + 96] = mem[floor32(mem[_1590]) + _1590 + -(mem[_1590] % 32) + 128 len mem[_1590] % 32]
        return Array(len=mem[_1590], data=mem[_1590 + 96 len floor32(mem[_1590]) + 32])
    _1614 = max((32 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_256) + 256, _msize + 32, _728 + (32 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_0 - 1) + 64, mem[64]) + 32
    _msize = max((32 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_256) + 256, _msize + 32, _728 + (32 * stor[(7 * None) + ('name', 'stor1', 1) + 18][0].field_0 - 1) + 64, mem[64])
    mem[_msize + 32] = 0
    mem[64] = _1614 + 32
    mem[_1614 + 64] = mem[_1614]
    if mem[_1614]:
        mem[_1614 + 96] = 32
        mem[_1614 + 128 len floor32(mem[_1614] - 1)] = mem[_1614], 32, mem[_1614 + 128 len floor32(mem[_1614] - 1) - 64]
    if not mem[_1614] % 32:
        return 32, mem[_1614 + 64 len mem[_1614] + 32]
    mem[floor32(mem[_1614]) + _1614 + 96] = mem[floor32(mem[_1614]) + _1614 + -(mem[_1614] % 32) + 128 len mem[_1614] % 32]
    return Array(len=mem[_1614], data=mem[_1614 + 96 len floor32(mem[_1614]) + 32])
}



}
