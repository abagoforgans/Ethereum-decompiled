contract main {




// =====================  Runtime code  =====================


const decimals = 0

const getContractAddress = address(this.address)

const isStormBirdContract = 1

const getDecimals = 0


array of struct stor0;
address stor1;
address stor2;
array of uint256 name;
array of uint256 symbol;

function name() {
    return name[0 len name.length]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function endContract() {
    require msg.sender == stor1
    selfdestruct(stor1)
}

function _fallback() {
    revert
}

function sub_cf0b41a3(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == stor1
    idx = 0
    while idx < arg1.length:
        mem[32] = 0
        require idx < arg1.length
        stor0[stor1].field_0++
        mem[0] = sha3(stor1, 0)
        stor0[stor1][stor0[stor1].field_0].field_0 = mem[(32 * idx) + 128]
        idx = idx + 1
        continue 
}

function balanceOf(address arg1) {
    if not stor0[address(arg1)].field_0:
        mem[(32 * stor0[address(arg1)].field_0) + 128] = 32
        mem[(32 * stor0[address(arg1)].field_0) + 160] = stor0[address(arg1)].field_0
        mem[(32 * stor0[address(arg1)].field_0) + 192 len floor32(stor0[address(arg1)].field_0)] = mem[128 len floor32(stor0[address(arg1)].field_0)]
        return memory
          from (32 * stor0[address(arg1)].field_0) + 128
           len (96 * stor0[address(arg1)].field_0) + 64
    mem[128] = stor0[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * stor0[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = stor0[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor0[address(arg1)].field_0) + 192 len floor32(stor0[address(arg1)].field_0)] = mem[128 len floor32(stor0[address(arg1)].field_0)]
    return Array(len=stor0[address(arg1)].field_0, data=mem[128 len floor32(stor0[address(arg1)].field_0)], mem[(32 * stor0[address(arg1)].field_0) + floor32(stor0[address(arg1)].field_0) + 192 len (32 * stor0[address(arg1)].field_0) - floor32(stor0[address(arg1)].field_0)]), 
}

function transfer(address arg1, uint256[] arg2) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    s = 0
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        require mem[(32 * idx) + 128] < stor0[address(msg.sender)].field_0
        require stor0[address(msg.sender)][mem[(32 * idx) + 128]].field_0
        require mem[(32 * idx) + 128] < stor0[address(msg.sender)].field_0
        stor0[address(arg1)].field_0++
        stor0[address(arg1)][stor0[address(arg1)].field_0].field_0 = stor0[address(msg.sender)][mem[(32 * idx) + 128]].field_0
        mem[32] = 0
        require mem[(32 * idx) + 128] < stor0[address(msg.sender)].field_0
        mem[0] = sha3(address(msg.sender), 0)
        stor0[address(msg.sender)][mem[(32 * idx) + 128]].field_0 = 0
        s = mem[(32 * idx) + 128]
        idx = idx + 1
        continue 
    mem[(32 * arg2.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    emit 0xe686f544: Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + floor32(arg2.length) + 192 len (32 * arg2.length) - floor32(arg2.length)]), arg1
}

function transferFrom(address arg1, address arg2, uint256[] arg3) {
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require msg.sender == stor1
    s = 0
    idx = 0
    while idx < arg3.length:
        require idx < arg3.length
        require mem[(32 * idx) + 128] < stor0[address(arg1)].field_0
        require stor0[address(arg1)][mem[(32 * idx) + 128]].field_0
        require mem[(32 * idx) + 128] < stor0[address(msg.sender)].field_0
        stor0[address(arg2)].field_0++
        stor0[address(arg2)][stor0[address(arg2)].field_0].field_0 = stor0[address(msg.sender)][mem[(32 * idx) + 128]].field_0
        mem[32] = 0
        require mem[(32 * idx) + 128] < stor0[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 0)
        stor0[address(arg1)][mem[(32 * idx) + 128]].field_0 = 0
        s = mem[(32 * idx) + 128]
        idx = idx + 1
        continue 
    mem[(32 * arg3.length) + 192 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    emit 0x3f71f503: Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + floor32(arg3.length) + 192 len (32 * arg3.length) - floor32(arg3.length)]), arg1, arg2
}

function myBalance() {
    if not stor0[address(msg.sender)].field_0:
        mem[(32 * stor0[address(msg.sender)].field_0) + 128] = 32
        mem[(32 * stor0[address(msg.sender)].field_0) + 160] = stor0[address(msg.sender)].field_0
        mem[(32 * stor0[address(msg.sender)].field_0) + 192 len floor32(stor0[address(msg.sender)].field_0)] = mem[128 len floor32(stor0[address(msg.sender)].field_0)]
        return memory
          from (32 * stor0[address(msg.sender)].field_0) + 128
           len (96 * stor0[address(msg.sender)].field_0) + 64
    mem[128] = stor0[address(msg.sender)].field_0
    idx = 128
    s = 0
    while (32 * stor0[address(msg.sender)].field_0) + 96 > idx:
        mem[idx + 32] = stor0[address(msg.sender)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor0[address(msg.sender)].field_0) + 192 len floor32(stor0[address(msg.sender)].field_0)] = mem[128 len floor32(stor0[address(msg.sender)].field_0)]
    return Array(len=stor0[address(msg.sender)].field_0, data=mem[128 len floor32(stor0[address(msg.sender)].field_0)], mem[(32 * stor0[address(msg.sender)].field_0) + floor32(stor0[address(msg.sender)].field_0) + 192 len (32 * stor0[address(msg.sender)].field_0) - floor32(stor0[address(msg.sender)].field_0)]), 
}

function spawnPassTo(uint256 arg1, uint256[] arg2, uint8 arg3, bytes32 arg4, bytes32 arg5, address arg6) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if arg1 > block.timestamp:
        mem[(32 * arg2.length) + 128] = (32 * arg2.length) + 84
        if not (32 * arg2.length) + 84:
            idx = 0
            while idx < 32:
                require idx < (32 * arg2.length) + 84
                mem[(32 * arg2.length) + idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                idx = idx + 1
                continue 
            idx = 0
            while idx < 32:
                require idx + 32 < (32 * arg2.length) + 84
                mem[(32 * arg2.length) + idx + 192 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))), ('param', 'arg1'))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))), ('param', 'arg1'))), 0) - 256
                idx = idx + 1
                continue 
            idx = 0
            while idx < 20:
                require idx + 64 < (32 * arg2.length) + 84
                mem[(32 * arg2.length) + idx + 224 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))), ('mask_shl', 160, 0, 0, 'address'))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))), ('mask_shl', 160, 0, 0, 'address'))), 0) - 256
                idx = idx + 1
                continue 
            s = 0
            idx = 0
            while idx < arg2.length:
                require idx < arg2.length
                require (32 * idx) + 84 < mem[(32 * arg2.length) + 128]
                mem[(32 * arg2.length) + (32 * idx) + 244 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('mem', ('range', ('add', 128, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('mem', ('range', ('add', 128, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 0) - 256
                s = 1
                while s < 32:
                    require idx < arg2.length
                    _333 = mem[(32 * idx) + 128]
                    require idx < arg2.length
                    mem[(32 * idx) + 128] = mem[(32 * idx) + 128 len 31]
                    require (32 * idx) + s + 84 < mem[(32 * arg2.length) + 128]
                    mem[(32 * arg2.length) + (32 * idx) + s + 244 len 8] = Mask(8, -(('mask_shl', 8, 8, 237, ('var', '_333')), 0) + 256, 0) << (('mask_shl', 8, 8, 237, ('var', '_333')), 0) - 256
                    s = s + 1
                    continue 
                s = 32
                idx = idx + 1
                continue 
        else:
            mem[(32 * arg2.length) + 160 len 32 * (32 * arg2.length) + 84] = code.data[9255 len 32 * (32 * arg2.length) + 84]
            idx = 0
            while idx < 32:
                require idx < (32 * arg2.length) + 84
                mem[(32 * arg2.length) + idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                idx = idx + 1
                continue 
            idx = 0
            while idx < 32:
                require idx + 32 < (32 * arg2.length) + 84
                mem[(32 * arg2.length) + idx + 192 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))), ('param', 'arg1'))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))), ('param', 'arg1'))), 0) - 256
                idx = idx + 1
                continue 
            idx = 0
            while idx < 20:
                require idx + 64 < (32 * arg2.length) + 84
                mem[(32 * arg2.length) + idx + 224 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))), ('mask_shl', 160, 0, 0, 'address'))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))), ('mask_shl', 160, 0, 0, 'address'))), 0) - 256
                idx = idx + 1
                continue 
            s = 0
            idx = 0
            while idx < arg2.length:
                require idx < arg2.length
                require (32 * idx) + 84 < mem[(32 * arg2.length) + 128]
                mem[(32 * arg2.length) + (32 * idx) + 244 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('mem', ('range', ('add', 128, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('mem', ('range', ('add', 128, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 0) - 256
                s = 1
                while s < 32:
                    require idx < arg2.length
                    _338 = mem[(32 * idx) + 128]
                    require idx < arg2.length
                    mem[(32 * idx) + 128] = mem[(32 * idx) + 128 len 31]
                    require (32 * idx) + s + 84 < mem[(32 * arg2.length) + 128]
                    mem[(32 * arg2.length) + (32 * idx) + s + 244 len 8] = Mask(8, -(('mask_shl', 8, 8, 237, ('var', '_338')), 0) + 256, 0) << (('mask_shl', 8, 8, 237, ('var', '_338')), 0) - 256
                    s = s + 1
                    continue 
                s = 32
                idx = idx + 1
                continue 
    else:
        require not arg1
        mem[(32 * arg2.length) + 128] = (32 * arg2.length) + 84
        if not (32 * arg2.length) + 84:
            idx = 0
            while idx < 32:
                require idx < (32 * arg2.length) + 84
                mem[(32 * arg2.length) + idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                idx = idx + 1
                continue 
            idx = 0
            while idx < 32:
                require idx + 32 < (32 * arg2.length) + 84
                mem[(32 * arg2.length) + idx + 192 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))), ('param', 'arg1'))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))), ('param', 'arg1'))), 0) - 256
                idx = idx + 1
                continue 
            idx = 0
            while idx < 20:
                require idx + 64 < (32 * arg2.length) + 84
                mem[(32 * arg2.length) + idx + 224 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))), ('mask_shl', 160, 0, 0, 'address'))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))), ('mask_shl', 160, 0, 0, 'address'))), 0) - 256
                idx = idx + 1
                continue 
            s = 0
            idx = 0
            while idx < arg2.length:
                require idx < arg2.length
                require (32 * idx) + 84 < mem[(32 * arg2.length) + 128]
                mem[(32 * arg2.length) + (32 * idx) + 244 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('mem', ('range', ('add', 128, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('mem', ('range', ('add', 128, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 0) - 256
                s = 1
                while s < 32:
                    require idx < arg2.length
                    _343 = mem[(32 * idx) + 128]
                    require idx < arg2.length
                    mem[(32 * idx) + 128] = mem[(32 * idx) + 128 len 31]
                    require (32 * idx) + s + 84 < mem[(32 * arg2.length) + 128]
                    mem[(32 * arg2.length) + (32 * idx) + s + 244 len 8] = Mask(8, -(('mask_shl', 8, 8, 237, ('var', '_343')), 0) + 256, 0) << (('mask_shl', 8, 8, 237, ('var', '_343')), 0) - 256
                    s = s + 1
                    continue 
                s = 32
                idx = idx + 1
                continue 
        else:
            mem[(32 * arg2.length) + 160 len 32 * (32 * arg2.length) + 84] = code.data[9255 len 32 * (32 * arg2.length) + 84]
            idx = 0
            while idx < 32:
                require idx < (32 * arg2.length) + 84
                mem[(32 * arg2.length) + idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                idx = idx + 1
                continue 
            idx = 0
            while idx < 32:
                require idx + 32 < (32 * arg2.length) + 84
                mem[(32 * arg2.length) + idx + 192 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))), ('param', 'arg1'))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))), ('param', 'arg1'))), 0) - 256
                idx = idx + 1
                continue 
            idx = 0
            while idx < 20:
                require idx + 64 < (32 * arg2.length) + 84
                mem[(32 * arg2.length) + idx + 224 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))), ('mask_shl', 160, 0, 0, 'address'))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))), ('mask_shl', 160, 0, 0, 'address'))), 0) - 256
                idx = idx + 1
                continue 
            s = 0
            idx = 0
            while idx < arg2.length:
                require idx < arg2.length
                require (32 * idx) + 84 < mem[(32 * arg2.length) + 128]
                mem[(32 * arg2.length) + (32 * idx) + 244 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('mem', ('range', ('add', 128, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('mem', ('range', ('add', 128, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 0) - 256
                s = 1
                while s < 32:
                    require idx < arg2.length
                    _348 = mem[(32 * idx) + 128]
                    require idx < arg2.length
                    mem[(32 * idx) + 128] = mem[(32 * idx) + 128 len 31]
                    require (32 * idx) + s + 84 < mem[(32 * arg2.length) + 128]
                    mem[(32 * arg2.length) + (32 * idx) + s + 244 len 8] = Mask(8, -(('mask_shl', 8, 8, 237, ('var', '_348')), 0) + 256, 0) << (('mask_shl', 8, 8, 237, ('var', '_348')), 0) - 256
                    s = s + 1
                    continue 
                s = 32
                idx = idx + 1
                continue 
    mem[(32 * arg2.length) + floor32((32 * arg2.length) + 115) + 160 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
    mem[(32 * arg2.length) + floor32((32 * arg2.length) + 115) + floor32(mem[(32 * arg2.length) + 128]) + -(mem[(32 * arg2.length) + 128] % 32) + 192 len mem[(32 * arg2.length) + 128] % 32] = mem[(32 * arg2.length) + floor32(mem[(32 * arg2.length) + 128]) + -(mem[(32 * arg2.length) + 128] % 32) + 192 len mem[(32 * arg2.length) + 128] % 32]
    signer = erecover(sha3(mem[(32 * arg2.length) + floor32((32 * arg2.length) + 115) + 160 len mem[(32 * arg2.length) + 128]]), arg3 << 248, arg4, arg5) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require address(signer) == stor1
    idx = 0
    while idx < arg2.length:
        mem[32] = 0
        require idx < arg2.length
        stor0[address(arg6)].field_0++
        mem[0] = sha3(address(arg6), 0)
        stor0[address(arg6)][stor0[address(arg6)].field_0].field_0 = mem[(32 * idx) + 128]
        idx = idx + 1
        continue 
}

function passTo(uint256 arg1, uint256[] arg2, uint8 arg3, bytes32 arg4, bytes32 arg5, address arg6) {
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == stor2
    if arg1 > block.timestamp:
        mem[(32 * arg2.length) + 128] = (2 * arg2.length) + 84
        mem[64] = (32 * arg2.length) + floor32((2 * arg2.length) + 115) + 160
        if not (2 * arg2.length) + 84:
            idx = 0
            while idx < 32:
                require idx < (2 * arg2.length) + 84
                mem[(32 * arg2.length) + idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                idx = idx + 1
                continue 
            idx = 0
            while idx < 32:
                require idx + 32 < (2 * arg2.length) + 84
                mem[(32 * arg2.length) + idx + 192 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))), ('param', 'arg1'))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))), ('param', 'arg1'))), 0) - 256
                idx = idx + 1
                continue 
            idx = 0
            while idx < 20:
                require idx + 64 < (2 * arg2.length) + 84
                mem[(32 * arg2.length) + idx + 224 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))), ('mask_shl', 160, 0, 0, 'address'))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))), ('mask_shl', 160, 0, 0, 'address'))), 0) - 256
                idx = idx + 1
                continue 
            idx = 0
            while idx < arg2.length:
                require idx < arg2.length
                require (2 * idx) + 84 < mem[(32 * arg2.length) + 128]
                mem[(32 * arg2.length) + (2 * idx) + 244 len 8] = Mask(8, -(('mask_shl', 8, 8, 237, ('mem', ('range', ('add', 128, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 0) + 256, 0) << (('mask_shl', 8, 8, 237, ('mem', ('range', ('add', 128, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 0) - 256
                require idx < arg2.length
                require (2 * idx) + 85 < mem[(32 * arg2.length) + 128]
                mem[(32 * arg2.length) + (2 * idx) + 245 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('mem', ('range', ('add', 128, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('mem', ('range', ('add', 128, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 0) - 256
                idx = idx + 1
                continue 
            _174 = mem[64]
            _175 = mem[(32 * arg2.length) + 128]
            mem[mem[64] len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
            mem[mem[64] + floor32(mem[(32 * arg2.length) + 128]) + -(mem[(32 * arg2.length) + 128] % 32) + 32 len mem[(32 * arg2.length) + 128] % 32] = mem[(32 * arg2.length) + floor32(mem[(32 * arg2.length) + 128]) + -(mem[(32 * arg2.length) + 128] % 32) + 192 len mem[(32 * arg2.length) + 128] % 32]
            _313 = sha3(mem[mem[64] len _175 + _174 - mem[64]])
            _330 = mem[64]
            mem[64] = mem[64] + 32
            mem[_330 + 32] = _313
            mem[_330 + 64] = arg3
            mem[_330 + 96] = arg4
            mem[_330 + 128] = arg5
            signer = erecover(_313, arg3 << 248, arg4, arg5) 
            mem[_330] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            s = 0
            s = 0
            idx = 0
            while idx < arg2.length:
                require idx < arg2.length
                mem[0] = mem[_330 + 12 len 20]
                mem[32] = 0
                require mem[(32 * idx) + 128] < stor0[mem[0]].field_0
                mem[0] = sha3(mem[0], 0)
                require stor[sha3(mem[0]) + mem[(32 * idx) + 128]]
                mem[0] = mem[_330 + 12 len 20]
                require mem[(32 * idx) + 128] < stor0[mem[0]].field_0
                mem[0] = sha3(mem[0], 0)
                _458 = sha3(mem[0])
                mem[32] = 0
                stor0[address(arg6)].field_0++
                mem[0] = sha3(address(arg6), 0)
                stor0[address(arg6)][stor0[address(arg6)].field_0].field_0 = stor[_458 + mem[(32 * idx) + 128]]
                mem[0] = mem[_330 + 12 len 20]
                mem[32] = 0
                require mem[(32 * idx) + 128] < stor0[mem[0]].field_0
                mem[0] = sha3(mem[0], 0)
                stor[sha3(mem[0]) + mem[(32 * idx) + 128]] = 0
                s = stor[_458 + mem[(32 * idx) + 128]]
                s = mem[(32 * idx) + 128]
                idx = idx + 1
                continue 
            mem[_330 + 64] = arg3
            mem[_330 + 96] = arg4
            mem[_330 + 128] = arg5
            mem[_330 + 32] = 128
            mem[_330 + 160] = arg2.length
            mem[_330 + 192 len floor32(arg2.length)] = mem[128 len floor32(arg2.length)]
            emit PassTo(Array(len=arg2.length, data=mem[_330 + 192 len 32 * arg2.length]), arg3 << 248, arg4, arg5, arg6);
        else:
            mem[(32 * arg2.length) + 160 len 32 * (2 * arg2.length) + 84] = code.data[9255 len 32 * (2 * arg2.length) + 84]
            idx = 0
            while idx < 32:
                require idx < (2 * arg2.length) + 84
                mem[(32 * arg2.length) + idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                idx = idx + 1
                continue 
            idx = 0
            while idx < 32:
                require idx + 32 < (2 * arg2.length) + 84
                mem[(32 * arg2.length) + idx + 192 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))), ('param', 'arg1'))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))), ('param', 'arg1'))), 0) - 256
                idx = idx + 1
                continue 
            idx = 0
            while idx < 20:
                require idx + 64 < (2 * arg2.length) + 84
                mem[(32 * arg2.length) + idx + 224 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))), ('mask_shl', 160, 0, 0, 'address'))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))), ('mask_shl', 160, 0, 0, 'address'))), 0) - 256
                idx = idx + 1
                continue 
            idx = 0
            while idx < arg2.length:
                require idx < arg2.length
                require (2 * idx) + 84 < mem[(32 * arg2.length) + 128]
                mem[(32 * arg2.length) + (2 * idx) + 244 len 8] = Mask(8, -(('mask_shl', 8, 8, 237, ('mem', ('range', ('add', 128, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 0) + 256, 0) << (('mask_shl', 8, 8, 237, ('mem', ('range', ('add', 128, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 0) - 256
                require idx < arg2.length
                require (2 * idx) + 85 < mem[(32 * arg2.length) + 128]
                mem[(32 * arg2.length) + (2 * idx) + 245 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('mem', ('range', ('add', 128, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('mem', ('range', ('add', 128, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 0) - 256
                idx = idx + 1
                continue 
            _177 = mem[64]
            _178 = mem[(32 * arg2.length) + 128]
            mem[mem[64] len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
            mem[mem[64] + floor32(mem[(32 * arg2.length) + 128]) + -(mem[(32 * arg2.length) + 128] % 32) + 32 len mem[(32 * arg2.length) + 128] % 32] = mem[(32 * arg2.length) + floor32(mem[(32 * arg2.length) + 128]) + -(mem[(32 * arg2.length) + 128] % 32) + 192 len mem[(32 * arg2.length) + 128] % 32]
            _318 = sha3(mem[mem[64] len _178 + _177 - mem[64]])
            _333 = mem[64]
            mem[64] = mem[64] + 32
            mem[_333 + 32] = _318
            mem[_333 + 64] = arg3
            mem[_333 + 96] = arg4
            mem[_333 + 128] = arg5
            signer = erecover(_318, arg3 << 248, arg4, arg5) 
            mem[_333] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            s = 0
            s = 0
            idx = 0
            while idx < arg2.length:
                require idx < arg2.length
                mem[0] = mem[_333 + 12 len 20]
                mem[32] = 0
                require mem[(32 * idx) + 128] < stor0[mem[0]].field_0
                mem[0] = sha3(mem[0], 0)
                require stor[sha3(mem[0]) + mem[(32 * idx) + 128]]
                mem[0] = mem[_333 + 12 len 20]
                require mem[(32 * idx) + 128] < stor0[mem[0]].field_0
                mem[0] = sha3(mem[0], 0)
                _462 = sha3(mem[0])
                mem[32] = 0
                stor0[address(arg6)].field_0++
                mem[0] = sha3(address(arg6), 0)
                stor0[address(arg6)][stor0[address(arg6)].field_0].field_0 = stor[_462 + mem[(32 * idx) + 128]]
                mem[0] = mem[_333 + 12 len 20]
                mem[32] = 0
                require mem[(32 * idx) + 128] < stor0[mem[0]].field_0
                mem[0] = sha3(mem[0], 0)
                stor[sha3(mem[0]) + mem[(32 * idx) + 128]] = 0
                s = stor[_462 + mem[(32 * idx) + 128]]
                s = mem[(32 * idx) + 128]
                idx = idx + 1
                continue 
            mem[_333 + 64] = arg3
            mem[_333 + 96] = arg4
            mem[_333 + 128] = arg5
            mem[_333 + 32] = 128
            mem[_333 + 160] = arg2.length
            mem[_333 + 192 len floor32(arg2.length)] = mem[128 len floor32(arg2.length)]
            emit PassTo(Array(len=arg2.length, data=mem[_333 + 192 len 32 * arg2.length]), arg3 << 248, arg4, arg5, arg6);
    else:
        require not arg1
        mem[(32 * arg2.length) + 128] = (2 * arg2.length) + 84
        mem[64] = (32 * arg2.length) + floor32((2 * arg2.length) + 115) + 160
        if not (2 * arg2.length) + 84:
            idx = 0
            while idx < 32:
                require idx < (2 * arg2.length) + 84
                mem[(32 * arg2.length) + idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                idx = idx + 1
                continue 
            idx = 0
            while idx < 32:
                require idx + 32 < (2 * arg2.length) + 84
                mem[(32 * arg2.length) + idx + 192 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))), ('param', 'arg1'))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))), ('param', 'arg1'))), 0) - 256
                idx = idx + 1
                continue 
            idx = 0
            while idx < 20:
                require idx + 64 < (2 * arg2.length) + 84
                mem[(32 * arg2.length) + idx + 224 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))), ('mask_shl', 160, 0, 0, 'address'))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))), ('mask_shl', 160, 0, 0, 'address'))), 0) - 256
                idx = idx + 1
                continue 
            idx = 0
            while idx < arg2.length:
                require idx < arg2.length
                require (2 * idx) + 84 < mem[(32 * arg2.length) + 128]
                mem[(32 * arg2.length) + (2 * idx) + 244 len 8] = Mask(8, -(('mask_shl', 8, 8, 237, ('mem', ('range', ('add', 128, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 0) + 256, 0) << (('mask_shl', 8, 8, 237, ('mem', ('range', ('add', 128, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 0) - 256
                require idx < arg2.length
                require (2 * idx) + 85 < mem[(32 * arg2.length) + 128]
                mem[(32 * arg2.length) + (2 * idx) + 245 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('mem', ('range', ('add', 128, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('mem', ('range', ('add', 128, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 0) - 256
                idx = idx + 1
                continue 
            _180 = mem[64]
            _181 = mem[(32 * arg2.length) + 128]
            mem[mem[64] len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
            mem[mem[64] + floor32(mem[(32 * arg2.length) + 128]) + -(mem[(32 * arg2.length) + 128] % 32) + 32 len mem[(32 * arg2.length) + 128] % 32] = mem[(32 * arg2.length) + floor32(mem[(32 * arg2.length) + 128]) + -(mem[(32 * arg2.length) + 128] % 32) + 192 len mem[(32 * arg2.length) + 128] % 32]
            _323 = sha3(mem[mem[64] len _181 + _180 - mem[64]])
            _336 = mem[64]
            mem[64] = mem[64] + 32
            mem[_336 + 32] = _323
            mem[_336 + 64] = arg3
            mem[_336 + 96] = arg4
            mem[_336 + 128] = arg5
            signer = erecover(_323, arg3 << 248, arg4, arg5) 
            mem[_336] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            s = 0
            s = 0
            idx = 0
            while idx < arg2.length:
                require idx < arg2.length
                mem[0] = mem[_336 + 12 len 20]
                mem[32] = 0
                require mem[(32 * idx) + 128] < stor0[mem[0]].field_0
                mem[0] = sha3(mem[0], 0)
                require stor[sha3(mem[0]) + mem[(32 * idx) + 128]]
                mem[0] = mem[_336 + 12 len 20]
                require mem[(32 * idx) + 128] < stor0[mem[0]].field_0
                mem[0] = sha3(mem[0], 0)
                _466 = sha3(mem[0])
                mem[32] = 0
                stor0[address(arg6)].field_0++
                mem[0] = sha3(address(arg6), 0)
                stor0[address(arg6)][stor0[address(arg6)].field_0].field_0 = stor[_466 + mem[(32 * idx) + 128]]
                mem[0] = mem[_336 + 12 len 20]
                mem[32] = 0
                require mem[(32 * idx) + 128] < stor0[mem[0]].field_0
                mem[0] = sha3(mem[0], 0)
                stor[sha3(mem[0]) + mem[(32 * idx) + 128]] = 0
                s = stor[_466 + mem[(32 * idx) + 128]]
                s = mem[(32 * idx) + 128]
                idx = idx + 1
                continue 
            mem[_336 + 64] = arg3
            mem[_336 + 96] = arg4
            mem[_336 + 128] = arg5
            mem[_336 + 32] = 128
            mem[_336 + 160] = arg2.length
            mem[_336 + 192 len floor32(arg2.length)] = mem[128 len floor32(arg2.length)]
            emit PassTo(Array(len=arg2.length, data=mem[_336 + 192 len 32 * arg2.length]), arg3 << 248, arg4, arg5, arg6);
        else:
            mem[(32 * arg2.length) + 160 len 32 * (2 * arg2.length) + 84] = code.data[9255 len 32 * (2 * arg2.length) + 84]
            idx = 0
            while idx < 32:
                require idx < (2 * arg2.length) + 84
                mem[(32 * arg2.length) + idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                idx = idx + 1
                continue 
            idx = 0
            while idx < 32:
                require idx + 32 < (2 * arg2.length) + 84
                mem[(32 * arg2.length) + idx + 192 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))), ('param', 'arg1'))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))), ('param', 'arg1'))), 0) - 256
                idx = idx + 1
                continue 
            idx = 0
            while idx < 20:
                require idx + 64 < (2 * arg2.length) + 84
                mem[(32 * arg2.length) + idx + 224 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))), ('mask_shl', 160, 0, 0, 'address'))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))), ('mask_shl', 160, 0, 0, 'address'))), 0) - 256
                idx = idx + 1
                continue 
            idx = 0
            while idx < arg2.length:
                require idx < arg2.length
                require (2 * idx) + 84 < mem[(32 * arg2.length) + 128]
                mem[(32 * arg2.length) + (2 * idx) + 244 len 8] = Mask(8, -(('mask_shl', 8, 8, 237, ('mem', ('range', ('add', 128, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 0) + 256, 0) << (('mask_shl', 8, 8, 237, ('mem', ('range', ('add', 128, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 0) - 256
                require idx < arg2.length
                require (2 * idx) + 85 < mem[(32 * arg2.length) + 128]
                mem[(32 * arg2.length) + (2 * idx) + 245 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('mem', ('range', ('add', 128, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('mem', ('range', ('add', 128, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 0) - 256
                idx = idx + 1
                continue 
            _183 = mem[64]
            _184 = mem[(32 * arg2.length) + 128]
            mem[mem[64] len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
            mem[mem[64] + floor32(mem[(32 * arg2.length) + 128]) + -(mem[(32 * arg2.length) + 128] % 32) + 32 len mem[(32 * arg2.length) + 128] % 32] = mem[(32 * arg2.length) + floor32(mem[(32 * arg2.length) + 128]) + -(mem[(32 * arg2.length) + 128] % 32) + 192 len mem[(32 * arg2.length) + 128] % 32]
            _328 = sha3(mem[mem[64] len _184 + _183 - mem[64]])
            _339 = mem[64]
            mem[64] = mem[64] + 32
            mem[_339 + 32] = _328
            mem[_339 + 64] = arg3
            mem[_339 + 96] = arg4
            mem[_339 + 128] = arg5
            signer = erecover(_328, arg3 << 248, arg4, arg5) 
            mem[_339] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            s = 0
            s = 0
            idx = 0
            while idx < arg2.length:
                require idx < arg2.length
                mem[0] = mem[_339 + 12 len 20]
                mem[32] = 0
                require mem[(32 * idx) + 128] < stor0[mem[0]].field_0
                mem[0] = sha3(mem[0], 0)
                require stor[sha3(mem[0]) + mem[(32 * idx) + 128]]
                mem[0] = mem[_339 + 12 len 20]
                require mem[(32 * idx) + 128] < stor0[mem[0]].field_0
                mem[0] = sha3(mem[0], 0)
                _470 = sha3(mem[0])
                mem[32] = 0
                stor0[address(arg6)].field_0++
                mem[0] = sha3(address(arg6), 0)
                stor0[address(arg6)][stor0[address(arg6)].field_0].field_0 = stor[_470 + mem[(32 * idx) + 128]]
                mem[0] = mem[_339 + 12 len 20]
                mem[32] = 0
                require mem[(32 * idx) + 128] < stor0[mem[0]].field_0
                mem[0] = sha3(mem[0], 0)
                stor[sha3(mem[0]) + mem[(32 * idx) + 128]] = 0
                s = stor[_470 + mem[(32 * idx) + 128]]
                s = mem[(32 * idx) + 128]
                idx = idx + 1
                continue 
            mem[_339 + 64] = arg3
            mem[_339 + 96] = arg4
            mem[_339 + 128] = arg5
            mem[_339 + 32] = 128
            mem[_339 + 160] = arg2.length
            mem[_339 + 192 len floor32(arg2.length)] = mem[128 len floor32(arg2.length)]
            emit PassTo(Array(len=arg2.length, data=mem[_339 + 192 len 32 * arg2.length]), arg3 << 248, arg4, arg5, arg6);
}

function trade(uint256 arg1, uint256[] arg2, uint8 arg3, bytes32 arg4, bytes32 arg5) payable {
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if arg1 > block.timestamp:
        mem[(32 * arg2.length) + 128] = (2 * arg2.length) + 84
        mem[64] = (32 * arg2.length) + floor32((2 * arg2.length) + 115) + 160
        if not (2 * arg2.length) + 84:
            idx = 0
            while idx < 32:
                require idx < (2 * arg2.length) + 84
                mem[(32 * arg2.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))), 'callvalue')), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))), 'callvalue')), 0) - 256
                idx = idx + 1
                continue 
            idx = 0
            while idx < 32:
                require idx + 32 < (2 * arg2.length) + 84
                mem[(32 * arg2.length) + idx + 192 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))), ('param', 'arg1'))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))), ('param', 'arg1'))), 0) - 256
                idx = idx + 1
                continue 
            idx = 0
            while idx < 20:
                require idx + 64 < (2 * arg2.length) + 84
                mem[(32 * arg2.length) + idx + 224 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))), ('mask_shl', 160, 0, 0, 'address'))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))), ('mask_shl', 160, 0, 0, 'address'))), 0) - 256
                idx = idx + 1
                continue 
            idx = 0
            while idx < arg2.length:
                require idx < arg2.length
                require (2 * idx) + 84 < mem[(32 * arg2.length) + 128]
                mem[(32 * arg2.length) + (2 * idx) + 244 len 8] = Mask(8, -(('mask_shl', 8, 8, 237, ('mem', ('range', ('add', 128, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 0) + 256, 0) << (('mask_shl', 8, 8, 237, ('mem', ('range', ('add', 128, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 0) - 256
                require idx < arg2.length
                require (2 * idx) + 85 < mem[(32 * arg2.length) + 128]
                mem[(32 * arg2.length) + (2 * idx) + 245 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('mem', ('range', ('add', 128, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('mem', ('range', ('add', 128, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 0) - 256
                idx = idx + 1
                continue 
            _182 = mem[64]
            _183 = mem[(32 * arg2.length) + 128]
            mem[mem[64] len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
            mem[mem[64] + floor32(mem[(32 * arg2.length) + 128]) + -(mem[(32 * arg2.length) + 128] % 32) + 32 len mem[(32 * arg2.length) + 128] % 32] = mem[(32 * arg2.length) + floor32(mem[(32 * arg2.length) + 128]) + -(mem[(32 * arg2.length) + 128] % 32) + 192 len mem[(32 * arg2.length) + 128] % 32]
            _329 = sha3(mem[mem[64] len _183 + _182 - mem[64]])
            _346 = mem[64]
            mem[64] = mem[64] + 32
            mem[_346 + 32] = _329
            mem[_346 + 64] = arg3
            mem[_346 + 96] = arg4
            mem[_346 + 128] = arg5
            signer = erecover(_329, arg3 << 248, arg4, arg5) 
            mem[_346] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            s = 0
            idx = 0
            while idx < arg2.length:
                require idx < arg2.length
                mem[0] = mem[_346 + 12 len 20]
                require mem[(32 * idx) + 128] < stor0[mem[0]].field_0
                mem[0] = sha3(mem[0], 0)
                require stor[sha3(mem[0]) + mem[(32 * idx) + 128]]
                mem[0] = msg.sender
                mem[32] = 0
                mem[0] = mem[_346 + 12 len 20]
                mem[32] = 0
                require mem[(32 * idx) + 128] < stor0[mem[0]].field_0
                mem[0] = sha3(mem[0], 0)
                _494 = sha3(mem[0])
                stor0[address(msg.sender)].field_0++
                mem[0] = sha3(address(msg.sender), 0)
                stor0[address(msg.sender)][stor0[address(msg.sender)].field_0].field_0 = stor[_494 + mem[(32 * idx) + 128]]
                mem[0] = mem[_346 + 12 len 20]
                mem[32] = 0
                require mem[(32 * idx) + 128] < stor0[mem[0]].field_0
                mem[0] = sha3(mem[0], 0)
                stor[sha3(mem[0]) + mem[(32 * idx) + 128]] = 0
                s = mem[(32 * idx) + 128]
                idx = idx + 1
                continue 
            call mem[_346 + 12 len 20] with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_346 + 64] = arg3
            mem[_346 + 96] = arg4
            mem[_346 + 128] = arg5
            mem[_346 + 32] = 128
            mem[_346 + 160] = arg2.length
            mem[_346 + 192 len floor32(arg2.length)] = mem[128 len floor32(arg2.length)]
            emit Trade(Array(len=arg2.length, data=mem[_346 + 192 len 32 * arg2.length]), arg3 << 248, arg4, arg5, address(signer));
        else:
            mem[(32 * arg2.length) + 160 len 32 * (2 * arg2.length) + 84] = code.data[9255 len 32 * (2 * arg2.length) + 84]
            idx = 0
            while idx < 32:
                require idx < (2 * arg2.length) + 84
                mem[(32 * arg2.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))), 'callvalue')), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))), 'callvalue')), 0) - 256
                idx = idx + 1
                continue 
            idx = 0
            while idx < 32:
                require idx + 32 < (2 * arg2.length) + 84
                mem[(32 * arg2.length) + idx + 192 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))), ('param', 'arg1'))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))), ('param', 'arg1'))), 0) - 256
                idx = idx + 1
                continue 
            idx = 0
            while idx < 20:
                require idx + 64 < (2 * arg2.length) + 84
                mem[(32 * arg2.length) + idx + 224 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))), ('mask_shl', 160, 0, 0, 'address'))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))), ('mask_shl', 160, 0, 0, 'address'))), 0) - 256
                idx = idx + 1
                continue 
            idx = 0
            while idx < arg2.length:
                require idx < arg2.length
                require (2 * idx) + 84 < mem[(32 * arg2.length) + 128]
                mem[(32 * arg2.length) + (2 * idx) + 244 len 8] = Mask(8, -(('mask_shl', 8, 8, 237, ('mem', ('range', ('add', 128, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 0) + 256, 0) << (('mask_shl', 8, 8, 237, ('mem', ('range', ('add', 128, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 0) - 256
                require idx < arg2.length
                require (2 * idx) + 85 < mem[(32 * arg2.length) + 128]
                mem[(32 * arg2.length) + (2 * idx) + 245 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('mem', ('range', ('add', 128, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('mem', ('range', ('add', 128, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 0) - 256
                idx = idx + 1
                continue 
            _185 = mem[64]
            _186 = mem[(32 * arg2.length) + 128]
            mem[mem[64] len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
            mem[mem[64] + floor32(mem[(32 * arg2.length) + 128]) + -(mem[(32 * arg2.length) + 128] % 32) + 32 len mem[(32 * arg2.length) + 128] % 32] = mem[(32 * arg2.length) + floor32(mem[(32 * arg2.length) + 128]) + -(mem[(32 * arg2.length) + 128] % 32) + 192 len mem[(32 * arg2.length) + 128] % 32]
            _334 = sha3(mem[mem[64] len _186 + _185 - mem[64]])
            _349 = mem[64]
            mem[64] = mem[64] + 32
            mem[_349 + 32] = _334
            mem[_349 + 64] = arg3
            mem[_349 + 96] = arg4
            mem[_349 + 128] = arg5
            signer = erecover(_334, arg3 << 248, arg4, arg5) 
            mem[_349] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            s = 0
            idx = 0
            while idx < arg2.length:
                require idx < arg2.length
                mem[0] = mem[_349 + 12 len 20]
                require mem[(32 * idx) + 128] < stor0[mem[0]].field_0
                mem[0] = sha3(mem[0], 0)
                require stor[sha3(mem[0]) + mem[(32 * idx) + 128]]
                mem[0] = msg.sender
                mem[32] = 0
                mem[0] = mem[_349 + 12 len 20]
                mem[32] = 0
                require mem[(32 * idx) + 128] < stor0[mem[0]].field_0
                mem[0] = sha3(mem[0], 0)
                _497 = sha3(mem[0])
                stor0[address(msg.sender)].field_0++
                mem[0] = sha3(address(msg.sender), 0)
                stor0[address(msg.sender)][stor0[address(msg.sender)].field_0].field_0 = stor[_497 + mem[(32 * idx) + 128]]
                mem[0] = mem[_349 + 12 len 20]
                mem[32] = 0
                require mem[(32 * idx) + 128] < stor0[mem[0]].field_0
                mem[0] = sha3(mem[0], 0)
                stor[sha3(mem[0]) + mem[(32 * idx) + 128]] = 0
                s = mem[(32 * idx) + 128]
                idx = idx + 1
                continue 
            call mem[_349 + 12 len 20] with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_349 + 64] = arg3
            mem[_349 + 96] = arg4
            mem[_349 + 128] = arg5
            mem[_349 + 32] = 128
            mem[_349 + 160] = arg2.length
            mem[_349 + 192 len floor32(arg2.length)] = mem[128 len floor32(arg2.length)]
            emit Trade(Array(len=arg2.length, data=mem[_349 + 192 len 32 * arg2.length]), arg3 << 248, arg4, arg5, address(signer));
    else:
        require not arg1
        mem[(32 * arg2.length) + 128] = (2 * arg2.length) + 84
        mem[64] = (32 * arg2.length) + floor32((2 * arg2.length) + 115) + 160
        if not (2 * arg2.length) + 84:
            idx = 0
            while idx < 32:
                require idx < (2 * arg2.length) + 84
                mem[(32 * arg2.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))), 'callvalue')), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))), 'callvalue')), 0) - 256
                idx = idx + 1
                continue 
            idx = 0
            while idx < 32:
                require idx + 32 < (2 * arg2.length) + 84
                mem[(32 * arg2.length) + idx + 192 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))), ('param', 'arg1'))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))), ('param', 'arg1'))), 0) - 256
                idx = idx + 1
                continue 
            idx = 0
            while idx < 20:
                require idx + 64 < (2 * arg2.length) + 84
                mem[(32 * arg2.length) + idx + 224 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))), ('mask_shl', 160, 0, 0, 'address'))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))), ('mask_shl', 160, 0, 0, 'address'))), 0) - 256
                idx = idx + 1
                continue 
            idx = 0
            while idx < arg2.length:
                require idx < arg2.length
                require (2 * idx) + 84 < mem[(32 * arg2.length) + 128]
                mem[(32 * arg2.length) + (2 * idx) + 244 len 8] = Mask(8, -(('mask_shl', 8, 8, 237, ('mem', ('range', ('add', 128, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 0) + 256, 0) << (('mask_shl', 8, 8, 237, ('mem', ('range', ('add', 128, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 0) - 256
                require idx < arg2.length
                require (2 * idx) + 85 < mem[(32 * arg2.length) + 128]
                mem[(32 * arg2.length) + (2 * idx) + 245 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('mem', ('range', ('add', 128, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('mem', ('range', ('add', 128, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 0) - 256
                idx = idx + 1
                continue 
            _188 = mem[64]
            _189 = mem[(32 * arg2.length) + 128]
            mem[mem[64] len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
            mem[mem[64] + floor32(mem[(32 * arg2.length) + 128]) + -(mem[(32 * arg2.length) + 128] % 32) + 32 len mem[(32 * arg2.length) + 128] % 32] = mem[(32 * arg2.length) + floor32(mem[(32 * arg2.length) + 128]) + -(mem[(32 * arg2.length) + 128] % 32) + 192 len mem[(32 * arg2.length) + 128] % 32]
            _339 = sha3(mem[mem[64] len _189 + _188 - mem[64]])
            _352 = mem[64]
            mem[64] = mem[64] + 32
            mem[_352 + 32] = _339
            mem[_352 + 64] = arg3
            mem[_352 + 96] = arg4
            mem[_352 + 128] = arg5
            signer = erecover(_339, arg3 << 248, arg4, arg5) 
            mem[_352] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            s = 0
            idx = 0
            while idx < arg2.length:
                require idx < arg2.length
                mem[0] = mem[_352 + 12 len 20]
                require mem[(32 * idx) + 128] < stor0[mem[0]].field_0
                mem[0] = sha3(mem[0], 0)
                require stor[sha3(mem[0]) + mem[(32 * idx) + 128]]
                mem[0] = msg.sender
                mem[32] = 0
                mem[0] = mem[_352 + 12 len 20]
                mem[32] = 0
                require mem[(32 * idx) + 128] < stor0[mem[0]].field_0
                mem[0] = sha3(mem[0], 0)
                _500 = sha3(mem[0])
                stor0[address(msg.sender)].field_0++
                mem[0] = sha3(address(msg.sender), 0)
                stor0[address(msg.sender)][stor0[address(msg.sender)].field_0].field_0 = stor[_500 + mem[(32 * idx) + 128]]
                mem[0] = mem[_352 + 12 len 20]
                mem[32] = 0
                require mem[(32 * idx) + 128] < stor0[mem[0]].field_0
                mem[0] = sha3(mem[0], 0)
                stor[sha3(mem[0]) + mem[(32 * idx) + 128]] = 0
                s = mem[(32 * idx) + 128]
                idx = idx + 1
                continue 
            call mem[_352 + 12 len 20] with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_352 + 64] = arg3
            mem[_352 + 96] = arg4
            mem[_352 + 128] = arg5
            mem[_352 + 32] = 128
            mem[_352 + 160] = arg2.length
            mem[_352 + 192 len floor32(arg2.length)] = mem[128 len floor32(arg2.length)]
            emit Trade(Array(len=arg2.length, data=mem[_352 + 192 len 32 * arg2.length]), arg3 << 248, arg4, arg5, address(signer));
        else:
            mem[(32 * arg2.length) + 160 len 32 * (2 * arg2.length) + 84] = code.data[9255 len 32 * (2 * arg2.length) + 84]
            idx = 0
            while idx < 32:
                require idx < (2 * arg2.length) + 84
                mem[(32 * arg2.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))), 'callvalue')), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))), 'callvalue')), 0) - 256
                idx = idx + 1
                continue 
            idx = 0
            while idx < 32:
                require idx + 32 < (2 * arg2.length) + 84
                mem[(32 * arg2.length) + idx + 192 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))), ('param', 'arg1'))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))), ('param', 'arg1'))), 0) - 256
                idx = idx + 1
                continue 
            idx = 0
            while idx < 20:
                require idx + 64 < (2 * arg2.length) + 84
                mem[(32 * arg2.length) + idx + 224 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))), ('mask_shl', 160, 0, 0, 'address'))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))), ('mask_shl', 160, 0, 0, 'address'))), 0) - 256
                idx = idx + 1
                continue 
            idx = 0
            while idx < arg2.length:
                require idx < arg2.length
                require (2 * idx) + 84 < mem[(32 * arg2.length) + 128]
                mem[(32 * arg2.length) + (2 * idx) + 244 len 8] = Mask(8, -(('mask_shl', 8, 8, 237, ('mem', ('range', ('add', 128, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 0) + 256, 0) << (('mask_shl', 8, 8, 237, ('mem', ('range', ('add', 128, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 0) - 256
                require idx < arg2.length
                require (2 * idx) + 85 < mem[(32 * arg2.length) + 128]
                mem[(32 * arg2.length) + (2 * idx) + 245 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('mem', ('range', ('add', 128, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('mem', ('range', ('add', 128, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 0) - 256
                idx = idx + 1
                continue 
            _191 = mem[64]
            _192 = mem[(32 * arg2.length) + 128]
            mem[mem[64] len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
            mem[mem[64] + floor32(mem[(32 * arg2.length) + 128]) + -(mem[(32 * arg2.length) + 128] % 32) + 32 len mem[(32 * arg2.length) + 128] % 32] = mem[(32 * arg2.length) + floor32(mem[(32 * arg2.length) + 128]) + -(mem[(32 * arg2.length) + 128] % 32) + 192 len mem[(32 * arg2.length) + 128] % 32]
            _344 = sha3(mem[mem[64] len _192 + _191 - mem[64]])
            _355 = mem[64]
            mem[64] = mem[64] + 32
            mem[_355 + 32] = _344
            mem[_355 + 64] = arg3
            mem[_355 + 96] = arg4
            mem[_355 + 128] = arg5
            signer = erecover(_344, arg3 << 248, arg4, arg5) 
            mem[_355] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            s = 0
            idx = 0
            while idx < arg2.length:
                require idx < arg2.length
                mem[0] = mem[_355 + 12 len 20]
                require mem[(32 * idx) + 128] < stor0[mem[0]].field_0
                mem[0] = sha3(mem[0], 0)
                require stor[sha3(mem[0]) + mem[(32 * idx) + 128]]
                mem[0] = msg.sender
                mem[32] = 0
                mem[0] = mem[_355 + 12 len 20]
                mem[32] = 0
                require mem[(32 * idx) + 128] < stor0[mem[0]].field_0
                mem[0] = sha3(mem[0], 0)
                _503 = sha3(mem[0])
                stor0[address(msg.sender)].field_0++
                mem[0] = sha3(address(msg.sender), 0)
                stor0[address(msg.sender)][stor0[address(msg.sender)].field_0].field_0 = stor[_503 + mem[(32 * idx) + 128]]
                mem[0] = mem[_355 + 12 len 20]
                mem[32] = 0
                require mem[(32 * idx) + 128] < stor0[mem[0]].field_0
                mem[0] = sha3(mem[0], 0)
                stor[sha3(mem[0]) + mem[(32 * idx) + 128]] = 0
                s = mem[(32 * idx) + 128]
                idx = idx + 1
                continue 
            call mem[_355 + 12 len 20] with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_355 + 64] = arg3
            mem[_355 + 96] = arg4
            mem[_355 + 128] = arg5
            mem[_355 + 32] = 128
            mem[_355 + 160] = arg2.length
            mem[_355 + 192 len floor32(arg2.length)] = mem[128 len floor32(arg2.length)]
            emit Trade(Array(len=arg2.length, data=mem[_355 + 192 len 32 * arg2.length]), arg3 << 248, arg4, arg5, address(signer));
}



}
