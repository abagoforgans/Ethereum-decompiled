contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = code.data[5249 len 32]
    stor1 = code.data[5281 len 32]
    return code.data[145 len 5104]
}



// =====================  Runtime code  =====================


const sender = msg.sender

const quorumVersion = 1


address bitcoinKeyAddress;
address stor1;
mapping of struct pending;
array of struct pendingRefs;

function pendingRefs(uint256 arg1) payable {
    require arg1 < pendingRefs.length
    return pendingRefs[arg1].field_0
}

function pending(bytes32 arg1) payable {
    mem[224] = pending[arg1][2].field_0
    idx = 224
    s = 0
    while pending[arg1][2].length + 224 > idx + 32:
        mem[idx + 32] = pending[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return pending[arg1].field_0, 
           pending[arg1].field_256,
           Array(len=pending[arg1][2].length, data=mem[224 len pending[arg1][2].length + (floor32(pending[arg1][2].length - 1) + -pending[arg1][2].length + 32 % 32)])
}

function bitcoinKey() payable {
    return bitcoinKeyAddress
}

function kill() payable {
    require stor1
    require msg.sender == stor1
    selfdestruct(stor1)
}

function _fallback() payable {
  stop
}

function x() payable {
    call 0x41ad2bc63a2059f9b623533d87fe99887d794847 with:
       value 1000 wei
         gas 0 wei
    return 0
}

function allPendingRefs() payable {
    if pendingRefs.length:
        mem[160] = uint256(pendingRefs.field_0)
        idx = 160
        s = 0
        while (32 * pendingRefs.length) + 128 > idx:
            mem[idx + 32] = pendingRefs[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=pendingRefs.length, data=mem[160 len 32 * pendingRefs.length])
}

function createTransfer(address arg1, uint256 arg2, bytes arg3) payable {
    pending[block.number][block.timestamp][arg1][arg2][arg3[all]].field_0 = arg1
    pending[block.number][block.timestamp][arg1][arg2][arg3[all]].field_256 = arg2
    pending[block.number][block.timestamp][arg1][arg2][arg3[all]][2][].field_0 = Array(len=arg3.length, data=arg3[all])
    pendingRefs.length++
    if not pendingRefs.length <= pendingRefs.length + 1:
        idx = pendingRefs.length + 1
        while pendingRefs.length > idx:
            pendingRefs[idx].field_0 = 0
            idx = idx + 1
            continue 
    pendingRefs[pendingRefs.length].field_0 = sha3(block.number, block.timestamp, arg1, arg2, arg3[all])
    return sha3(block.number, block.timestamp, arg1, arg2, arg3[all])
}

function test(bytes32 arg1) payable {
    idx = 0
    s = 0
    while idx < 32:
        require s < 64
        if Mask(4, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 260, idx) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 260 <= 9:
            mem[s + 192 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 4, ('add', 260, ('mul', -1, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0))), ('add', -260, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0)), ('var', 0)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 4, ('add', 260, ('mul', -1, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0))), ('add', -260, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0)), ('var', 0)))), 0) - 256
        else:
            mem[s + 192 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 87, ('mask_shl', 4, ('add', 260, ('mul', -1, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0))), ('add', -260, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0)), ('var', 0)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 87, ('mask_shl', 4, ('add', 260, ('mul', -1, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0))), ('add', -260, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0)), ('var', 0)))), 0) - 256
        require s + 1 < 64
        if Mask(4, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, idx) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 256 <= 9:
            mem[s + 193 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 4, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0))), ('add', -256, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0)), ('var', 0)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 4, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0))), ('add', -256, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0)), ('var', 0)))), 0) - 256
        else:
            mem[s + 193 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 87, ('mask_shl', 4, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0))), ('add', -256, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0)), ('var', 0)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 87, ('mask_shl', 4, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0))), ('add', -256, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0)), ('var', 0)))), 0) - 256
        idx = idx + 1
        s = s + 2
        continue 
    hash = sha256hash(0x18426974636f696e205369676e6564204d65, 0, mem[192 len 64]) 
    require sha256hash.result
    hash = sha256hash(hash) 
    return hash
}

function signEthereum(bytes32 arg1) payable {
    require stor1
    require msg.sender == stor1
    mem[32] = 2
    mem[96] = pending[arg1].field_0
    mem[128] = pending[arg1].field_256
    mem[192] = pending[arg1][2].length
    mem[224] = pending[arg1][2].field_0
    idx = 224
    s = 0
    while pending[arg1][2].length + 192 > idx:
        mem[idx + 32] = pending[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[160] = 192
    if not pending[arg1].field_0:
        if not pending[arg1].field_256:
            require pending[arg1][2].length
    mem[ceil32(pending[arg1][2].length) + 224] = pending[arg1].field_0
    mem[ceil32(pending[arg1][2].length) + 256] = pending[arg1].field_256
    mem[64] = (2 * ceil32(pending[arg1][2].length)) + 352
    mem[ceil32(pending[arg1][2].length) + 320] = pending[arg1][2].length
    mem[0] = sha3(arg1, 2) + 2
    mem[ceil32(pending[arg1][2].length) + 352] = pending[arg1][2].field_0
    idx = ceil32(pending[arg1][2].length) + 352
    s = 0
    while ceil32(pending[arg1][2].length) + pending[arg1][2].length + 320 > idx:
        mem[idx + 32] = pending[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(pending[arg1][2].length) + 288] = ceil32(pending[arg1][2].length) + 320
    if pending[arg1][2].length <= 0:
        call pending[arg1].field_0 with:
           value pending[arg1].field_256 wei
             gas 0 wei
        pending[arg1].field_0 = 0
        pending[arg1].field_256 = 0
        pending[arg1].field_512 = 0
        if 31 < pending[arg1][2].length:
            idx = 0
            while pending[arg1][2].length + 31 / 32 > idx:
                pending[arg1][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
    else:
        mem[(2 * ceil32(pending[arg1][2].length)) + 352 len pending[arg1][2].length] = mem[ceil32(pending[arg1][2].length) + 352 len pending[arg1][2].length]
        if not pending[arg1][2].length % 32:
            call pending[arg1].field_0.mem[(2 * ceil32(pending[arg1][2].length)) + 352 len 4] with:
               value pending[arg1].field_256 wei
                 gas gas_remaining - 34050 wei
                args mem[(2 * ceil32(pending[arg1][2].length)) + 356 len pending[arg1][2].length - 4]
        else:
            mem[floor32(pending[arg1][2].length) + (2 * ceil32(pending[arg1][2].length)) + 352] = mem[floor32(pending[arg1][2].length) + (2 * ceil32(pending[arg1][2].length)) + -pending[arg1][2].length % 32 + 384 len pending[arg1][2].length % 32]
            call pending[arg1].field_0.mem[(2 * ceil32(pending[arg1][2].length)) + 352 len 4] with:
               value pending[arg1].field_256 wei
                 gas gas_remaining - 34050 wei
                args mem[(2 * ceil32(pending[arg1][2].length)) + 356 len floor32(pending[arg1][2].length) + 28]
        pending[arg1].field_0 = 0
        pending[arg1].field_256 = 0
        pending[arg1].field_512 = 0
        if 31 < pending[arg1][2].length:
            idx = 0
            while pending[arg1][2].length + 31 / 32 > idx:
                pending[arg1][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
    idx = 0
    while uint8(idx) < pendingRefs.length:
        require idx < pendingRefs.length
        mem[0] = 3
        if pendingRefs[idx].field_0 == arg1:
            require idx < pendingRefs.length
            mem[0] = 3
            pendingRefs[idx].field_0 = 0
        idx = idx + 1
        continue 
}

function signBitcoin(bytes32 arg1, uint8 arg2, bytes32 arg3, bytes32 arg4) payable {
    mem[32] = 2
    mem[96] = pending[arg1].field_0
    mem[128] = pending[arg1].field_256
    mem[192] = pending[arg1][2].length
    mem[0] = sha3(arg1, 2) + 2
    mem[224] = pending[arg1][2].field_0
    idx = 224
    s = 0
    while pending[arg1][2].length + 192 > idx:
        mem[idx + 32] = pending[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[160] = 192
    if pending[arg1].field_0:
        mem[ceil32(pending[arg1][2].length) + 224] = 0
        mem[ceil32(pending[arg1][2].length) + 256] = 0
        _msize = max(0, floor32(pending[arg1][2].length - 1))
        mem[_msize + 288] = 64
        idx = 0
        s = 0
        while idx < 32:
            require s < mem[_msize + 288]
            if Mask(4, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 260, idx) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 260 <= 9:
                mem[(_msize + 288) + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 4, ('add', 260, ('mul', -1, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0))), ('add', -260, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0)), ('var', 0)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 4, ('add', 260, ('mul', -1, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0))), ('add', -260, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0)), ('var', 0)))), 0) - 256
            else:
                mem[(_msize + 288) + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 87, ('mask_shl', 4, ('add', 260, ('mul', -1, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0))), ('add', -260, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0)), ('var', 0)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 87, ('mask_shl', 4, ('add', 260, ('mul', -1, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0))), ('add', -260, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0)), ('var', 0)))), 0) - 256
            require s + 1 < mem[_msize + 288]
            if Mask(4, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, idx) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 256 <= 9:
                mem[(_msize + 288) + s + 33 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 4, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0))), ('add', -256, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0)), ('var', 0)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 4, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0))), ('add', -256, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0)), ('var', 0)))), 0) - 256
            else:
                mem[(_msize + 288) + s + 33 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 87, ('mask_shl', 4, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0))), ('add', -256, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0)), ('var', 0)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 87, ('mask_shl', 4, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0))), ('add', -256, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0)), ('var', 0)))), 0) - 256
            idx = idx + 1
            s = s + 2
            continue 
        mem[(_msize + 288) + 2080] = 0
        mem[64] = (_msize + 288) + 2176
        mem[(_msize + 288) + 2112] = 25
        mem[(_msize + 288) + 2144] = 0x18426974636f696e205369676e6564204d6573736167653a0a00000000000000
        _1752 = mem[_msize + 288]
        mem[(_msize + 288) + 2176 len 25] = 0x18426974636f696e205369676e6564204d6573736167653a0a
        mem[(_msize + 288) + 2201] = _1752 << 248
        _1755 = mem[_msize + 288]
        mem[(_msize + 288) + 2202 len mem[_msize + 288]] = mem[(_msize + 288) + 32 len mem[_msize + 288]]
        hash = sha256hash(0x18426974636f696e205369676e6564204d65, mem[(_msize + 288) + 2201 len _1755 + 1]) 
        require sha256hash.result
        hash = sha256hash(0x18426974636f696e205369676e6564204d65, hash % 72057594037927936) 
        signer = erecover(0x18426974636f696e205369676e6564204d65, hash % 72057594037927936, 0, 0, arg3, arg4) 
        require erecover.result
        require address(signer) == bitcoinKeyAddress
        mem[(_msize + 288) + 2176] = pending[arg1].field_0
        mem[(_msize + 288) + 2208] = pending[arg1].field_256
        mem[64] = (_msize + 288) + ceil32(pending[arg1][2].length) + 2304
        mem[(_msize + 288) + 2272] = pending[arg1][2].length
        mem[0] = sha3(arg1, 2) + 2
        mem[(_msize + 288) + 2304] = pending[arg1][2].field_0
        idx = (_msize + 288) + 2304
        s = 0
        while (_msize + 288) + pending[arg1][2].length + 2272 > idx:
            mem[idx + 32] = pending[arg1][s + 2].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(_msize + 288) + 2240] = (_msize + 288) + 2272
        if pending[arg1][2].length <= 0:
            call mem[(_msize + 288) + 2188 len 20] with:
               value mem[(_msize + 288) + 2208] wei
                 gas 0 wei
            pending[arg1].field_0 = 0
            pending[arg1].field_256 = 0
            pending[arg1].field_512 = 0
            if 31 < pending[arg1][2].length:
                idx = 0
                while pending[arg1][2].length + 31 / 32 > idx:
                    pending[arg1][idx + 2].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            mem[(_msize + 288) + ceil32(pending[arg1][2].length) + 2304 len pending[arg1][2].length] = mem[(_msize + 288) + 2304 len pending[arg1][2].length]
            if not pending[arg1][2].length % 32:
                call mem[(_msize + 288) + 2188 len 20].mem[(_msize + 288) + ceil32(pending[arg1][2].length) + 2304 len 4] with:
                   value mem[(_msize + 288) + 2208] wei
                     gas gas_remaining - 34050 wei
                    args mem[(_msize + 288) + ceil32(pending[arg1][2].length) + 2308 len pending[arg1][2].length - 4]
            else:
                mem[floor32(pending[arg1][2].length) + (_msize + 288) + ceil32(pending[arg1][2].length) + 2304] = mem[floor32(pending[arg1][2].length) + (_msize + 288) + ceil32(pending[arg1][2].length) + -pending[arg1][2].length % 32 + 2336 len pending[arg1][2].length % 32]
                call mem[(_msize + 288) + 2188 len 20].mem[(_msize + 288) + ceil32(pending[arg1][2].length) + 2304 len 4] with:
                   value mem[(_msize + 288) + 2208] wei
                     gas gas_remaining - 34050 wei
                    args mem[(_msize + 288) + ceil32(pending[arg1][2].length) + 2308 len floor32(pending[arg1][2].length) + 28]
            pending[arg1].field_0 = 0
            pending[arg1].field_256 = 0
            pending[arg1].field_512 = 0
            if 31 < pending[arg1][2].length:
                idx = 0
                while pending[arg1][2].length + 31 / 32 > idx:
                    pending[arg1][idx + 2].field_0 = 0
                    idx = idx + 1
                    continue 
    else:
        if pending[arg1].field_256:
            mem[ceil32(pending[arg1][2].length) + 224] = 0
            mem[ceil32(pending[arg1][2].length) + 256] = 0
            _msize = max(ceil32(pending[arg1][2].length) - 288, max(0, floor32(pending[arg1][2].length - 1)) - 288)
            mem[_msize + 576] = 64
            idx = 0
            s = 0
            while idx < 32:
                require s < mem[_msize + 576]
                if Mask(4, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 260, idx) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 260 <= 9:
                    mem[(_msize + 576) + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 4, ('add', 260, ('mul', -1, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0))), ('add', -260, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0)), ('var', 0)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 4, ('add', 260, ('mul', -1, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0))), ('add', -260, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0)), ('var', 0)))), 0) - 256
                else:
                    mem[(_msize + 576) + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 87, ('mask_shl', 4, ('add', 260, ('mul', -1, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0))), ('add', -260, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0)), ('var', 0)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 87, ('mask_shl', 4, ('add', 260, ('mul', -1, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0))), ('add', -260, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0)), ('var', 0)))), 0) - 256
                require s + 1 < mem[_msize + 576]
                if Mask(4, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, idx) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 256 <= 9:
                    mem[(_msize + 576) + s + 33 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 4, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0))), ('add', -256, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0)), ('var', 0)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 4, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0))), ('add', -256, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0)), ('var', 0)))), 0) - 256
                else:
                    mem[(_msize + 576) + s + 33 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 87, ('mask_shl', 4, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0))), ('add', -256, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0)), ('var', 0)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 87, ('mask_shl', 4, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0))), ('add', -256, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0)), ('var', 0)))), 0) - 256
                idx = idx + 1
                s = s + 2
                continue 
            mem[(_msize + 576) + 2080] = 0
            mem[64] = (_msize + 576) + 2176
            mem[(_msize + 576) + 2112] = 25
            mem[(_msize + 576) + 2144] = 0x18426974636f696e205369676e6564204d6573736167653a0a00000000000000
            _1766 = mem[_msize + 576]
            mem[(_msize + 576) + 2176 len 25] = 0x18426974636f696e205369676e6564204d6573736167653a0a
            mem[(_msize + 576) + 2201] = _1766 << 248
            _1769 = mem[_msize + 576]
            mem[(_msize + 576) + 2202 len mem[_msize + 576]] = mem[(_msize + 576) + 32 len mem[_msize + 576]]
            hash = sha256hash(0x18426974636f696e205369676e6564204d65, mem[(_msize + 576) + 2201 len _1769 + 1]) 
            require sha256hash.result
            hash = sha256hash(0x18426974636f696e205369676e6564204d65, uint8(_1766) << 48) 
            signer = erecover(0x18426974636f696e205369676e6564204d65, _1766 << 248, 0, arg3, arg4) 
        else:
            require pending[arg1][2].length
            mem[ceil32(pending[arg1][2].length) + 224] = 0
            mem[ceil32(pending[arg1][2].length) + 256] = 0
            _msize = max(ceil32(pending[arg1][2].length) - 288, max(0, floor32(pending[arg1][2].length - 1)) - 288)
            mem[_msize + 576] = 64
            idx = 0
            s = 0
            while idx < 32:
                require s < mem[_msize + 576]
                if Mask(4, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 260, idx) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 260 <= 9:
                    mem[(_msize + 576) + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 4, ('add', 260, ('mul', -1, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0))), ('add', -260, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0)), ('var', 0)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 4, ('add', 260, ('mul', -1, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0))), ('add', -260, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0)), ('var', 0)))), 0) - 256
                else:
                    mem[(_msize + 576) + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 87, ('mask_shl', 4, ('add', 260, ('mul', -1, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0))), ('add', -260, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0)), ('var', 0)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 87, ('mask_shl', 4, ('add', 260, ('mul', -1, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0))), ('add', -260, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0)), ('var', 0)))), 0) - 256
                require s + 1 < mem[_msize + 576]
                if Mask(4, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, idx) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 256 <= 9:
                    mem[(_msize + 576) + s + 33 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 4, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0))), ('add', -256, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0)), ('var', 0)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 4, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0))), ('add', -256, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0)), ('var', 0)))), 0) - 256
                else:
                    mem[(_msize + 576) + s + 33 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 87, ('mask_shl', 4, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0))), ('add', -256, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0)), ('var', 0)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 87, ('mask_shl', 4, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0))), ('add', -256, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0)), ('var', 0)))), 0) - 256
                idx = idx + 1
                s = s + 2
                continue 
            mem[(_msize + 576) + 2080] = 0
            mem[64] = (_msize + 576) + 2176
            mem[(_msize + 576) + 2112] = 25
            mem[(_msize + 576) + 2144] = 0x18426974636f696e205369676e6564204d6573736167653a0a00000000000000
            _1780 = mem[_msize + 576]
            mem[(_msize + 576) + 2176 len 25] = 0x18426974636f696e205369676e6564204d6573736167653a0a
            mem[(_msize + 576) + 2201] = _1780 << 248
            _1783 = mem[_msize + 576]
            mem[(_msize + 576) + 2202 len mem[_msize + 576]] = mem[(_msize + 576) + 32 len mem[_msize + 576]]
            hash = sha256hash(0x18426974636f696e205369676e6564204d65, mem[(_msize + 576) + 2201 len _1783 + 1]) 
            require sha256hash.result
            hash = sha256hash(0x18426974636f696e205369676e6564204d65, uint8(_1780) << 48) 
            signer = erecover(0x18426974636f696e205369676e6564204d65, _1780 << 248, 0, arg3, arg4) 
        require erecover.result
        require address(signer) == bitcoinKeyAddress
        mem[(_msize + 576) + 2176] = pending[arg1].field_0
        mem[(_msize + 576) + 2208] = pending[arg1].field_256
        mem[64] = (_msize + 576) + ceil32(pending[arg1][2].length) + 2304
        mem[(_msize + 576) + 2272] = pending[arg1][2].length
        mem[0] = sha3(arg1, 2) + 2
        mem[(_msize + 576) + 2304] = pending[arg1][2].field_0
        idx = (_msize + 576) + 2304
        s = 0
        while (_msize + 576) + pending[arg1][2].length + 2272 > idx:
            mem[idx + 32] = pending[arg1][s + 2].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(_msize + 576) + 2240] = (_msize + 576) + 2272
        if pending[arg1][2].length <= 0:
            call mem[(_msize + 576) + 2188 len 20] with:
               value mem[(_msize + 576) + 2208] wei
                 gas 0 wei
            pending[arg1].field_0 = 0
            pending[arg1].field_256 = 0
            pending[arg1].field_512 = 0
            if 31 < pending[arg1][2].length:
                idx = 0
                while pending[arg1][2].length + 31 / 32 > idx:
                    pending[arg1][idx + 2].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            mem[(_msize + 576) + ceil32(pending[arg1][2].length) + 2304 len pending[arg1][2].length] = mem[(_msize + 576) + 2304 len pending[arg1][2].length]
            if not pending[arg1][2].length % 32:
                call mem[(_msize + 576) + 2188 len 20].mem[(_msize + 576) + ceil32(pending[arg1][2].length) + 2304 len 4] with:
                   value mem[(_msize + 576) + 2208] wei
                     gas gas_remaining - 34050 wei
                    args mem[(_msize + 576) + ceil32(pending[arg1][2].length) + 2308 len pending[arg1][2].length - 4]
            else:
                mem[floor32(pending[arg1][2].length) + (_msize + 576) + ceil32(pending[arg1][2].length) + 2304] = mem[floor32(pending[arg1][2].length) + (_msize + 576) + ceil32(pending[arg1][2].length) + -pending[arg1][2].length % 32 + 2336 len pending[arg1][2].length % 32]
                call mem[(_msize + 576) + 2188 len 20].mem[(_msize + 576) + ceil32(pending[arg1][2].length) + 2304 len 4] with:
                   value mem[(_msize + 576) + 2208] wei
                     gas gas_remaining - 34050 wei
                    args mem[(_msize + 576) + ceil32(pending[arg1][2].length) + 2308 len floor32(pending[arg1][2].length) + 28]
            pending[arg1].field_0 = 0
            pending[arg1].field_256 = 0
            pending[arg1].field_512 = 0
            if 31 < pending[arg1][2].length:
                idx = 0
                while pending[arg1][2].length + 31 / 32 > idx:
                    pending[arg1][idx + 2].field_0 = 0
                    idx = idx + 1
                    continue 
    idx = 0
    while uint8(idx) < pendingRefs.length:
        require idx < pendingRefs.length
        mem[0] = 3
        if pendingRefs[idx].field_0 == arg1:
            require idx < pendingRefs.length
            mem[0] = 3
            pendingRefs[idx].field_0 = 0
        idx = idx + 1
        continue 
}



}
