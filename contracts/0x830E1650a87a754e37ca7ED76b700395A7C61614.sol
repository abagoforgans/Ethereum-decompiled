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

function myBalance() {
    if not stor0[msg.sender].field_0:
        mem[(32 * stor0[msg.sender].field_0) + 128] = 32
        mem[(32 * stor0[msg.sender].field_0) + 160] = stor0[msg.sender].field_0
        mem[(32 * stor0[msg.sender].field_0) + 192 len floor32(stor0[msg.sender].field_0)] = mem[128 len floor32(stor0[msg.sender].field_0)]
        return memory
          from (32 * stor0[msg.sender].field_0) + 128
           len (96 * stor0[msg.sender].field_0) + 64
    mem[128] = stor0[msg.sender].field_0
    idx = 128
    s = 0
    while (32 * stor0[msg.sender].field_0) + 96 > idx:
        mem[idx + 32] = stor0[msg.sender][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor0[msg.sender].field_0) + 192 len floor32(stor0[msg.sender].field_0)] = mem[128 len floor32(stor0[msg.sender].field_0)]
    return Array(len=stor0[msg.sender].field_0, data=mem[128 len floor32(stor0[msg.sender].field_0)], mem[(32 * stor0[msg.sender].field_0) + floor32(stor0[msg.sender].field_0) + 192 len (32 * stor0[msg.sender].field_0) - floor32(stor0[msg.sender].field_0)]), 
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

function transfer(address arg1, uint16[] arg2) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    s = 0
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        require mem[(32 * idx) + 158 len 2] < stor0[msg.sender].field_0
        require stor0[msg.sender][mem[(32 * idx) + 158 len 2]].field_0
        require mem[(32 * idx) + 158 len 2] < stor0[msg.sender].field_0
        stor0[address(arg1)].field_0++
        stor0[address(arg1)][stor0[address(arg1)].field_0].field_0 = stor0[msg.sender][mem[(32 * idx) + 158 len 2]].field_0
        mem[32] = 0
        require mem[(32 * idx) + 158 len 2] < stor0[msg.sender].field_0
        mem[0] = sha3(msg.sender, 0)
        stor0[msg.sender][mem[(32 * idx) + 158 len 2]].field_0 = 0
        s = mem[(32 * idx) + 158 len 2]
        idx = idx + 1
        continue 
    mem[(32 * arg2.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    emit Transfer(Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + floor32(arg2.length) + 192 len (32 * arg2.length) - floor32(arg2.length)]), arg1);
}

function transferFrom(address arg1, address arg2, uint16[] arg3) {
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require msg.sender == stor1
    s = 0
    idx = 0
    while idx < arg3.length:
        require idx < arg3.length
        require mem[(32 * idx) + 158 len 2] < stor0[address(arg1)].field_0
        require stor0[address(arg1)][mem[(32 * idx) + 158 len 2]].field_0
        require mem[(32 * idx) + 158 len 2] < stor0[msg.sender].field_0
        stor0[address(arg2)].field_0++
        stor0[address(arg2)][stor0[address(arg2)].field_0].field_0 = stor0[msg.sender][mem[(32 * idx) + 158 len 2]].field_0
        mem[32] = 0
        require mem[(32 * idx) + 158 len 2] < stor0[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 0)
        stor0[address(arg1)][mem[(32 * idx) + 158 len 2]].field_0 = 0
        s = mem[(32 * idx) + 158 len 2]
        idx = idx + 1
        continue 
    mem[(32 * arg3.length) + 192 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    emit TransferFrom(Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + floor32(arg3.length) + 192 len (32 * arg3.length) - floor32(arg3.length)]), arg1, arg2);
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
                mem[(32 * arg2.length) + idx + 192 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) - 256
                idx = idx + 1
                continue 
            idx = 0
            while idx < 20:
                require idx + 64 < (32 * arg2.length) + 84
                mem[(32 * arg2.length) + idx + 224 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('mask_shl', 160, 0, 0, 'address'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('mask_shl', 160, 0, 0, 'address'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) - 256
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
                    _320 = mem[(32 * idx) + 128]
                    require idx < arg2.length
                    mem[(32 * idx) + 128] = mem[(32 * idx) + 128 len 31]
                    require (32 * idx) + s + 84 < mem[(32 * arg2.length) + 128]
                    mem[(32 * arg2.length) + (32 * idx) + s + 244 len 8] = Mask(8, -(('mask_shl', 8, 8, 237, ('var', '_320')), 0) + 256, 0) << (('mask_shl', 8, 8, 237, ('var', '_320')), 0) - 256
                    s = s + 1
                    continue 
                s = 32
                idx = idx + 1
                continue 
        else:
            mem[(32 * arg2.length) + 160 len 32 * (32 * arg2.length) + 84] = code.data[5879 len 32 * (32 * arg2.length) + 84]
            idx = 0
            while idx < 32:
                require idx < (32 * arg2.length) + 84
                mem[(32 * arg2.length) + idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                idx = idx + 1
                continue 
            idx = 0
            while idx < 32:
                require idx + 32 < (32 * arg2.length) + 84
                mem[(32 * arg2.length) + idx + 192 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) - 256
                idx = idx + 1
                continue 
            idx = 0
            while idx < 20:
                require idx + 64 < (32 * arg2.length) + 84
                mem[(32 * arg2.length) + idx + 224 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('mask_shl', 160, 0, 0, 'address'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('mask_shl', 160, 0, 0, 'address'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) - 256
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
                    _324 = mem[(32 * idx) + 128]
                    require idx < arg2.length
                    mem[(32 * idx) + 128] = mem[(32 * idx) + 128 len 31]
                    require (32 * idx) + s + 84 < mem[(32 * arg2.length) + 128]
                    mem[(32 * arg2.length) + (32 * idx) + s + 244 len 8] = Mask(8, -(('mask_shl', 8, 8, 237, ('var', '_324')), 0) + 256, 0) << (('mask_shl', 8, 8, 237, ('var', '_324')), 0) - 256
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
                mem[(32 * arg2.length) + idx + 192 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) - 256
                idx = idx + 1
                continue 
            idx = 0
            while idx < 20:
                require idx + 64 < (32 * arg2.length) + 84
                mem[(32 * arg2.length) + idx + 224 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('mask_shl', 160, 0, 0, 'address'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('mask_shl', 160, 0, 0, 'address'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) - 256
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
                    _328 = mem[(32 * idx) + 128]
                    require idx < arg2.length
                    mem[(32 * idx) + 128] = mem[(32 * idx) + 128 len 31]
                    require (32 * idx) + s + 84 < mem[(32 * arg2.length) + 128]
                    mem[(32 * arg2.length) + (32 * idx) + s + 244 len 8] = Mask(8, -(('mask_shl', 8, 8, 237, ('var', '_328')), 0) + 256, 0) << (('mask_shl', 8, 8, 237, ('var', '_328')), 0) - 256
                    s = s + 1
                    continue 
                s = 32
                idx = idx + 1
                continue 
        else:
            mem[(32 * arg2.length) + 160 len 32 * (32 * arg2.length) + 84] = code.data[5879 len 32 * (32 * arg2.length) + 84]
            idx = 0
            while idx < 32:
                require idx < (32 * arg2.length) + 84
                mem[(32 * arg2.length) + idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                idx = idx + 1
                continue 
            idx = 0
            while idx < 32:
                require idx + 32 < (32 * arg2.length) + 84
                mem[(32 * arg2.length) + idx + 192 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) - 256
                idx = idx + 1
                continue 
            idx = 0
            while idx < 20:
                require idx + 64 < (32 * arg2.length) + 84
                mem[(32 * arg2.length) + idx + 224 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('mask_shl', 160, 0, 0, 'address'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('mask_shl', 160, 0, 0, 'address'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) - 256
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
                    _332 = mem[(32 * idx) + 128]
                    require idx < arg2.length
                    mem[(32 * idx) + 128] = mem[(32 * idx) + 128 len 31]
                    require (32 * idx) + s + 84 < mem[(32 * arg2.length) + 128]
                    mem[(32 * arg2.length) + (32 * idx) + s + 244 len 8] = Mask(8, -(('mask_shl', 8, 8, 237, ('var', '_332')), 0) + 256, 0) << (('mask_shl', 8, 8, 237, ('var', '_332')), 0) - 256
                    s = s + 1
                    continue 
                s = 32
                idx = idx + 1
                continue 
    mem[(32 * arg2.length) + floor32((32 * arg2.length) + 115) + 160 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
    mem[(32 * arg2.length) + floor32((32 * arg2.length) + 115) + floor32(mem[(32 * arg2.length) + 128]) + 160] = mem[(32 * arg2.length) + floor32((32 * arg2.length) + 115) + floor32(mem[(32 * arg2.length) + 128]) + 160] and 256^(-(mem[(32 * arg2.length) + 128] % 32) + 32) - 1 or mem[(32 * arg2.length) + floor32(mem[(32 * arg2.length) + 128]) + 160] and !(256^(-(mem[(32 * arg2.length) + 128] % 32) + 32) - 1)
    signer = erecover(sha3(mem[(32 * arg2.length) + floor32((32 * arg2.length) + 115) + 160 len mem[(32 * arg2.length) + 128]]), arg3 << 248, arg4, arg5) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require stor1 == address(signer)
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

function passTo(uint256 arg1, uint16[] arg2, uint8 arg3, bytes32 arg4, bytes32 arg5, address arg6) {
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
                mem[(32 * arg2.length) + idx + 192 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) - 256
                idx = idx + 1
                continue 
            idx = 0
            while idx < 20:
                require idx + 64 < (2 * arg2.length) + 84
                mem[(32 * arg2.length) + idx + 224 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('mask_shl', 160, 0, 0, 'address'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('mask_shl', 160, 0, 0, 'address'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) - 256
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
            _170 = mem[64]
            _171 = mem[(32 * arg2.length) + 128]
            mem[mem[64] len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
            mem[mem[64] + floor32(mem[(32 * arg2.length) + 128])] = mem[mem[64] + floor32(mem[(32 * arg2.length) + 128])] and 256^(-(mem[(32 * arg2.length) + 128] % 32) + 32) - 1 or mem[(32 * arg2.length) + floor32(mem[(32 * arg2.length) + 128]) + 160] and !(256^(-(mem[(32 * arg2.length) + 128] % 32) + 32) - 1)
            _305 = sha3(mem[mem[64] len _170 + _171 - mem[64]])
            _322 = mem[64]
            mem[mem[64]] = 0
            mem[64] = mem[64] + 32
            mem[_322 + 32] = _305
            mem[_322 + 64] = arg3
            mem[_322 + 96] = arg4
            mem[_322 + 128] = arg5
            signer = erecover(_305, arg3 << 248, arg4, arg5) 
            mem[_322] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            s = 0
            s = 0
            idx = 0
            while idx < arg2.length:
                require idx < arg2.length
                mem[0] = mem[_322 + 12 len 20]
                mem[32] = 0
                require mem[(32 * idx) + 158 len 2] < stor0[mem[0]].field_0
                mem[0] = sha3(mem[0], 0)
                require stor[sha3(mem[0]) + mem[(32 * idx) + 158 len 2]]
                mem[0] = mem[_322 + 12 len 20]
                require mem[(32 * idx) + 158 len 2] < stor0[mem[0]].field_0
                mem[0] = sha3(mem[0], 0)
                _446 = sha3(mem[0])
                mem[32] = 0
                stor0[address(arg6)].field_0++
                mem[0] = sha3(address(arg6), 0)
                stor0[address(arg6)][stor0[address(arg6)].field_0].field_0 = stor[mem[(32 * idx) + 158 len 2] + _446]
                mem[0] = mem[_322 + 12 len 20]
                require mem[(32 * idx) + 158 len 2] < stor0[mem[0]].field_0
                mem[0] = sha3(mem[0], 0)
                stor[sha3(mem[0]) + mem[(32 * idx) + 158 len 2]] = 0
                s = stor[mem[(32 * idx) + 158 len 2] + _446]
                s = mem[(32 * idx) + 128]
                idx = idx + 1
                continue 
            mem[_322 + 64] = arg3
            mem[_322 + 96] = arg4
            mem[_322 + 128] = arg5
            mem[_322 + 32] = 128
            mem[_322 + 160] = arg2.length
            mem[_322 + 192 len floor32(arg2.length)] = mem[128 len floor32(arg2.length)]
            emit PassTo(Array(len=arg2.length, data=mem[_322 + 192 len 32 * arg2.length]), arg3 << 248, arg4, arg5, arg6);
        else:
            mem[(32 * arg2.length) + 160 len 32 * (2 * arg2.length) + 84] = code.data[5879 len 32 * (2 * arg2.length) + 84]
            idx = 0
            while idx < 32:
                require idx < (2 * arg2.length) + 84
                mem[(32 * arg2.length) + idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                idx = idx + 1
                continue 
            idx = 0
            while idx < 32:
                require idx + 32 < (2 * arg2.length) + 84
                mem[(32 * arg2.length) + idx + 192 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) - 256
                idx = idx + 1
                continue 
            idx = 0
            while idx < 20:
                require idx + 64 < (2 * arg2.length) + 84
                mem[(32 * arg2.length) + idx + 224 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('mask_shl', 160, 0, 0, 'address'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('mask_shl', 160, 0, 0, 'address'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) - 256
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
            _173 = mem[64]
            _174 = mem[(32 * arg2.length) + 128]
            mem[mem[64] len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
            mem[mem[64] + floor32(mem[(32 * arg2.length) + 128])] = mem[mem[64] + floor32(mem[(32 * arg2.length) + 128])] and 256^(-(mem[(32 * arg2.length) + 128] % 32) + 32) - 1 or mem[(32 * arg2.length) + floor32(mem[(32 * arg2.length) + 128]) + 160] and !(256^(-(mem[(32 * arg2.length) + 128] % 32) + 32) - 1)
            _310 = sha3(mem[mem[64] len _173 + _174 - mem[64]])
            _324 = mem[64]
            mem[mem[64]] = 0
            mem[64] = mem[64] + 32
            mem[_324 + 32] = _310
            mem[_324 + 64] = arg3
            mem[_324 + 96] = arg4
            mem[_324 + 128] = arg5
            signer = erecover(_310, arg3 << 248, arg4, arg5) 
            mem[_324] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            s = 0
            s = 0
            idx = 0
            while idx < arg2.length:
                require idx < arg2.length
                mem[0] = mem[_324 + 12 len 20]
                mem[32] = 0
                require mem[(32 * idx) + 158 len 2] < stor0[mem[0]].field_0
                mem[0] = sha3(mem[0], 0)
                require stor[sha3(mem[0]) + mem[(32 * idx) + 158 len 2]]
                mem[0] = mem[_324 + 12 len 20]
                require mem[(32 * idx) + 158 len 2] < stor0[mem[0]].field_0
                mem[0] = sha3(mem[0], 0)
                _450 = sha3(mem[0])
                mem[32] = 0
                stor0[address(arg6)].field_0++
                mem[0] = sha3(address(arg6), 0)
                stor0[address(arg6)][stor0[address(arg6)].field_0].field_0 = stor[mem[(32 * idx) + 158 len 2] + _450]
                mem[0] = mem[_324 + 12 len 20]
                require mem[(32 * idx) + 158 len 2] < stor0[mem[0]].field_0
                mem[0] = sha3(mem[0], 0)
                stor[sha3(mem[0]) + mem[(32 * idx) + 158 len 2]] = 0
                s = stor[mem[(32 * idx) + 158 len 2] + _450]
                s = mem[(32 * idx) + 128]
                idx = idx + 1
                continue 
            mem[_324 + 64] = arg3
            mem[_324 + 96] = arg4
            mem[_324 + 128] = arg5
            mem[_324 + 32] = 128
            mem[_324 + 160] = arg2.length
            mem[_324 + 192 len floor32(arg2.length)] = mem[128 len floor32(arg2.length)]
            emit PassTo(Array(len=arg2.length, data=mem[_324 + 192 len 32 * arg2.length]), arg3 << 248, arg4, arg5, arg6);
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
                mem[(32 * arg2.length) + idx + 192 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) - 256
                idx = idx + 1
                continue 
            idx = 0
            while idx < 20:
                require idx + 64 < (2 * arg2.length) + 84
                mem[(32 * arg2.length) + idx + 224 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('mask_shl', 160, 0, 0, 'address'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('mask_shl', 160, 0, 0, 'address'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) - 256
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
            _176 = mem[64]
            _177 = mem[(32 * arg2.length) + 128]
            mem[mem[64] len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
            mem[mem[64] + floor32(mem[(32 * arg2.length) + 128])] = mem[mem[64] + floor32(mem[(32 * arg2.length) + 128])] and 256^(-(mem[(32 * arg2.length) + 128] % 32) + 32) - 1 or mem[(32 * arg2.length) + floor32(mem[(32 * arg2.length) + 128]) + 160] and !(256^(-(mem[(32 * arg2.length) + 128] % 32) + 32) - 1)
            _315 = sha3(mem[mem[64] len _176 + _177 - mem[64]])
            _326 = mem[64]
            mem[mem[64]] = 0
            mem[64] = mem[64] + 32
            mem[_326 + 32] = _315
            mem[_326 + 64] = arg3
            mem[_326 + 96] = arg4
            mem[_326 + 128] = arg5
            signer = erecover(_315, arg3 << 248, arg4, arg5) 
            mem[_326] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            s = 0
            s = 0
            idx = 0
            while idx < arg2.length:
                require idx < arg2.length
                mem[0] = mem[_326 + 12 len 20]
                mem[32] = 0
                require mem[(32 * idx) + 158 len 2] < stor0[mem[0]].field_0
                mem[0] = sha3(mem[0], 0)
                require stor[sha3(mem[0]) + mem[(32 * idx) + 158 len 2]]
                mem[0] = mem[_326 + 12 len 20]
                require mem[(32 * idx) + 158 len 2] < stor0[mem[0]].field_0
                mem[0] = sha3(mem[0], 0)
                _454 = sha3(mem[0])
                mem[32] = 0
                stor0[address(arg6)].field_0++
                mem[0] = sha3(address(arg6), 0)
                stor0[address(arg6)][stor0[address(arg6)].field_0].field_0 = stor[mem[(32 * idx) + 158 len 2] + _454]
                mem[0] = mem[_326 + 12 len 20]
                require mem[(32 * idx) + 158 len 2] < stor0[mem[0]].field_0
                mem[0] = sha3(mem[0], 0)
                stor[sha3(mem[0]) + mem[(32 * idx) + 158 len 2]] = 0
                s = stor[mem[(32 * idx) + 158 len 2] + _454]
                s = mem[(32 * idx) + 128]
                idx = idx + 1
                continue 
            mem[_326 + 64] = arg3
            mem[_326 + 96] = arg4
            mem[_326 + 128] = arg5
            mem[_326 + 32] = 128
            mem[_326 + 160] = arg2.length
            mem[_326 + 192 len floor32(arg2.length)] = mem[128 len floor32(arg2.length)]
            emit PassTo(Array(len=arg2.length, data=mem[_326 + 192 len 32 * arg2.length]), arg3 << 248, arg4, arg5, arg6);
        else:
            mem[(32 * arg2.length) + 160 len 32 * (2 * arg2.length) + 84] = code.data[5879 len 32 * (2 * arg2.length) + 84]
            idx = 0
            while idx < 32:
                require idx < (2 * arg2.length) + 84
                mem[(32 * arg2.length) + idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                idx = idx + 1
                continue 
            idx = 0
            while idx < 32:
                require idx + 32 < (2 * arg2.length) + 84
                mem[(32 * arg2.length) + idx + 192 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) - 256
                idx = idx + 1
                continue 
            idx = 0
            while idx < 20:
                require idx + 64 < (2 * arg2.length) + 84
                mem[(32 * arg2.length) + idx + 224 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('mask_shl', 160, 0, 0, 'address'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('mask_shl', 160, 0, 0, 'address'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) - 256
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
            _179 = mem[64]
            _180 = mem[(32 * arg2.length) + 128]
            mem[mem[64] len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
            mem[mem[64] + floor32(mem[(32 * arg2.length) + 128])] = mem[mem[64] + floor32(mem[(32 * arg2.length) + 128])] and 256^(-(mem[(32 * arg2.length) + 128] % 32) + 32) - 1 or mem[(32 * arg2.length) + floor32(mem[(32 * arg2.length) + 128]) + 160] and !(256^(-(mem[(32 * arg2.length) + 128] % 32) + 32) - 1)
            _320 = sha3(mem[mem[64] len _179 + _180 - mem[64]])
            _328 = mem[64]
            mem[mem[64]] = 0
            mem[64] = mem[64] + 32
            mem[_328 + 32] = _320
            mem[_328 + 64] = arg3
            mem[_328 + 96] = arg4
            mem[_328 + 128] = arg5
            signer = erecover(_320, arg3 << 248, arg4, arg5) 
            mem[_328] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            s = 0
            s = 0
            idx = 0
            while idx < arg2.length:
                require idx < arg2.length
                mem[0] = mem[_328 + 12 len 20]
                mem[32] = 0
                require mem[(32 * idx) + 158 len 2] < stor0[mem[0]].field_0
                mem[0] = sha3(mem[0], 0)
                require stor[sha3(mem[0]) + mem[(32 * idx) + 158 len 2]]
                mem[0] = mem[_328 + 12 len 20]
                require mem[(32 * idx) + 158 len 2] < stor0[mem[0]].field_0
                mem[0] = sha3(mem[0], 0)
                _458 = sha3(mem[0])
                mem[32] = 0
                stor0[address(arg6)].field_0++
                mem[0] = sha3(address(arg6), 0)
                stor0[address(arg6)][stor0[address(arg6)].field_0].field_0 = stor[mem[(32 * idx) + 158 len 2] + _458]
                mem[0] = mem[_328 + 12 len 20]
                require mem[(32 * idx) + 158 len 2] < stor0[mem[0]].field_0
                mem[0] = sha3(mem[0], 0)
                stor[sha3(mem[0]) + mem[(32 * idx) + 158 len 2]] = 0
                s = stor[mem[(32 * idx) + 158 len 2] + _458]
                s = mem[(32 * idx) + 128]
                idx = idx + 1
                continue 
            mem[_328 + 64] = arg3
            mem[_328 + 96] = arg4
            mem[_328 + 128] = arg5
            mem[_328 + 32] = 128
            mem[_328 + 160] = arg2.length
            mem[_328 + 192 len floor32(arg2.length)] = mem[128 len floor32(arg2.length)]
            emit PassTo(Array(len=arg2.length, data=mem[_328 + 192 len 32 * arg2.length]), arg3 << 248, arg4, arg5, arg6);
}

function trade(uint256 arg1, uint16[] arg2, uint8 arg3, bytes32 arg4, bytes32 arg5) payable {
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if arg1 > block.timestamp:
        mem[(32 * arg2.length) + 128] = (2 * arg2.length) + 84
        mem[64] = (32 * arg2.length) + floor32((2 * arg2.length) + 115) + 160
        if not (2 * arg2.length) + 84:
            idx = 0
            while idx < 32:
                require idx < (2 * arg2.length) + 84
                mem[(32 * arg2.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', 'callvalue', ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', 'callvalue', ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) - 256
                idx = idx + 1
                continue 
            idx = 0
            while idx < 32:
                require idx + 32 < (2 * arg2.length) + 84
                mem[(32 * arg2.length) + idx + 192 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) - 256
                idx = idx + 1
                continue 
            idx = 0
            while idx < 20:
                require idx + 64 < (2 * arg2.length) + 84
                mem[(32 * arg2.length) + idx + 224 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('mask_shl', 160, 0, 0, 'address'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('mask_shl', 160, 0, 0, 'address'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) - 256
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
            mem[mem[64] + floor32(mem[(32 * arg2.length) + 128])] = mem[mem[64] + floor32(mem[(32 * arg2.length) + 128])] and 256^(-(mem[(32 * arg2.length) + 128] % 32) + 32) - 1 or mem[(32 * arg2.length) + floor32(mem[(32 * arg2.length) + 128]) + 160] and !(256^(-(mem[(32 * arg2.length) + 128] % 32) + 32) - 1)
            _313 = sha3(mem[mem[64] len _174 + _175 - mem[64]])
            _330 = mem[64]
            mem[mem[64]] = 0
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
            idx = 0
            while idx < arg2.length:
                require idx < arg2.length
                mem[0] = mem[_330 + 12 len 20]
                require mem[(32 * idx) + 158 len 2] < stor0[mem[0]].field_0
                mem[0] = sha3(mem[0], 0)
                require stor[sha3(mem[0]) + mem[(32 * idx) + 158 len 2]]
                mem[0] = msg.sender
                mem[32] = 0
                mem[0] = mem[_330 + 12 len 20]
                require mem[(32 * idx) + 158 len 2] < stor0[mem[0]].field_0
                mem[0] = sha3(mem[0], 0)
                _466 = sha3(mem[0])
                stor0[msg.sender].field_0++
                mem[0] = sha3(msg.sender, 0)
                stor0[msg.sender][stor0[msg.sender].field_0].field_0 = stor[mem[(32 * idx) + 158 len 2] + _466]
                mem[0] = mem[_330 + 12 len 20]
                mem[32] = 0
                require mem[(32 * idx) + 158 len 2] < stor0[mem[0]].field_0
                mem[0] = sha3(mem[0], 0)
                stor[sha3(mem[0]) + mem[(32 * idx) + 158 len 2]] = 0
                s = mem[(32 * idx) + 128]
                idx = idx + 1
                continue 
            call mem[_330 + 12 len 20] with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_330 + 64] = arg3
            mem[_330 + 96] = arg4
            mem[_330 + 128] = arg5
            mem[_330 + 32] = 128
            mem[_330 + 160] = arg2.length
            mem[_330 + 192 len floor32(arg2.length)] = mem[128 len floor32(arg2.length)]
            emit Trade(Array(len=arg2.length, data=mem[_330 + 192 len 32 * arg2.length]), arg3 << 248, arg4, arg5, address(signer));
        else:
            mem[(32 * arg2.length) + 160 len 32 * (2 * arg2.length) + 84] = code.data[5879 len 32 * (2 * arg2.length) + 84]
            idx = 0
            while idx < 32:
                require idx < (2 * arg2.length) + 84
                mem[(32 * arg2.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', 'callvalue', ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', 'callvalue', ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) - 256
                idx = idx + 1
                continue 
            idx = 0
            while idx < 32:
                require idx + 32 < (2 * arg2.length) + 84
                mem[(32 * arg2.length) + idx + 192 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) - 256
                idx = idx + 1
                continue 
            idx = 0
            while idx < 20:
                require idx + 64 < (2 * arg2.length) + 84
                mem[(32 * arg2.length) + idx + 224 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('mask_shl', 160, 0, 0, 'address'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('mask_shl', 160, 0, 0, 'address'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) - 256
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
            mem[mem[64] + floor32(mem[(32 * arg2.length) + 128])] = mem[mem[64] + floor32(mem[(32 * arg2.length) + 128])] and 256^(-(mem[(32 * arg2.length) + 128] % 32) + 32) - 1 or mem[(32 * arg2.length) + floor32(mem[(32 * arg2.length) + 128]) + 160] and !(256^(-(mem[(32 * arg2.length) + 128] % 32) + 32) - 1)
            _318 = sha3(mem[mem[64] len _177 + _178 - mem[64]])
            _332 = mem[64]
            mem[mem[64]] = 0
            mem[64] = mem[64] + 32
            mem[_332 + 32] = _318
            mem[_332 + 64] = arg3
            mem[_332 + 96] = arg4
            mem[_332 + 128] = arg5
            signer = erecover(_318, arg3 << 248, arg4, arg5) 
            mem[_332] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            s = 0
            idx = 0
            while idx < arg2.length:
                require idx < arg2.length
                mem[0] = mem[_332 + 12 len 20]
                require mem[(32 * idx) + 158 len 2] < stor0[mem[0]].field_0
                mem[0] = sha3(mem[0], 0)
                require stor[sha3(mem[0]) + mem[(32 * idx) + 158 len 2]]
                mem[0] = msg.sender
                mem[32] = 0
                mem[0] = mem[_332 + 12 len 20]
                require mem[(32 * idx) + 158 len 2] < stor0[mem[0]].field_0
                mem[0] = sha3(mem[0], 0)
                _469 = sha3(mem[0])
                stor0[msg.sender].field_0++
                mem[0] = sha3(msg.sender, 0)
                stor0[msg.sender][stor0[msg.sender].field_0].field_0 = stor[mem[(32 * idx) + 158 len 2] + _469]
                mem[0] = mem[_332 + 12 len 20]
                mem[32] = 0
                require mem[(32 * idx) + 158 len 2] < stor0[mem[0]].field_0
                mem[0] = sha3(mem[0], 0)
                stor[sha3(mem[0]) + mem[(32 * idx) + 158 len 2]] = 0
                s = mem[(32 * idx) + 128]
                idx = idx + 1
                continue 
            call mem[_332 + 12 len 20] with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_332 + 64] = arg3
            mem[_332 + 96] = arg4
            mem[_332 + 128] = arg5
            mem[_332 + 32] = 128
            mem[_332 + 160] = arg2.length
            mem[_332 + 192 len floor32(arg2.length)] = mem[128 len floor32(arg2.length)]
            emit Trade(Array(len=arg2.length, data=mem[_332 + 192 len 32 * arg2.length]), arg3 << 248, arg4, arg5, address(signer));
    else:
        require not arg1
        mem[(32 * arg2.length) + 128] = (2 * arg2.length) + 84
        mem[64] = (32 * arg2.length) + floor32((2 * arg2.length) + 115) + 160
        if not (2 * arg2.length) + 84:
            idx = 0
            while idx < 32:
                require idx < (2 * arg2.length) + 84
                mem[(32 * arg2.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', 'callvalue', ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', 'callvalue', ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) - 256
                idx = idx + 1
                continue 
            idx = 0
            while idx < 32:
                require idx + 32 < (2 * arg2.length) + 84
                mem[(32 * arg2.length) + idx + 192 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) - 256
                idx = idx + 1
                continue 
            idx = 0
            while idx < 20:
                require idx + 64 < (2 * arg2.length) + 84
                mem[(32 * arg2.length) + idx + 224 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('mask_shl', 160, 0, 0, 'address'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('mask_shl', 160, 0, 0, 'address'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) - 256
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
            mem[mem[64] + floor32(mem[(32 * arg2.length) + 128])] = mem[mem[64] + floor32(mem[(32 * arg2.length) + 128])] and 256^(-(mem[(32 * arg2.length) + 128] % 32) + 32) - 1 or mem[(32 * arg2.length) + floor32(mem[(32 * arg2.length) + 128]) + 160] and !(256^(-(mem[(32 * arg2.length) + 128] % 32) + 32) - 1)
            _323 = sha3(mem[mem[64] len _180 + _181 - mem[64]])
            _334 = mem[64]
            mem[mem[64]] = 0
            mem[64] = mem[64] + 32
            mem[_334 + 32] = _323
            mem[_334 + 64] = arg3
            mem[_334 + 96] = arg4
            mem[_334 + 128] = arg5
            signer = erecover(_323, arg3 << 248, arg4, arg5) 
            mem[_334] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            s = 0
            idx = 0
            while idx < arg2.length:
                require idx < arg2.length
                mem[0] = mem[_334 + 12 len 20]
                require mem[(32 * idx) + 158 len 2] < stor0[mem[0]].field_0
                mem[0] = sha3(mem[0], 0)
                require stor[sha3(mem[0]) + mem[(32 * idx) + 158 len 2]]
                mem[0] = msg.sender
                mem[32] = 0
                mem[0] = mem[_334 + 12 len 20]
                require mem[(32 * idx) + 158 len 2] < stor0[mem[0]].field_0
                mem[0] = sha3(mem[0], 0)
                _472 = sha3(mem[0])
                stor0[msg.sender].field_0++
                mem[0] = sha3(msg.sender, 0)
                stor0[msg.sender][stor0[msg.sender].field_0].field_0 = stor[mem[(32 * idx) + 158 len 2] + _472]
                mem[0] = mem[_334 + 12 len 20]
                mem[32] = 0
                require mem[(32 * idx) + 158 len 2] < stor0[mem[0]].field_0
                mem[0] = sha3(mem[0], 0)
                stor[sha3(mem[0]) + mem[(32 * idx) + 158 len 2]] = 0
                s = mem[(32 * idx) + 128]
                idx = idx + 1
                continue 
            call mem[_334 + 12 len 20] with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_334 + 64] = arg3
            mem[_334 + 96] = arg4
            mem[_334 + 128] = arg5
            mem[_334 + 32] = 128
            mem[_334 + 160] = arg2.length
            mem[_334 + 192 len floor32(arg2.length)] = mem[128 len floor32(arg2.length)]
            emit Trade(Array(len=arg2.length, data=mem[_334 + 192 len 32 * arg2.length]), arg3 << 248, arg4, arg5, address(signer));
        else:
            mem[(32 * arg2.length) + 160 len 32 * (2 * arg2.length) + 84] = code.data[5879 len 32 * (2 * arg2.length) + 84]
            idx = 0
            while idx < 32:
                require idx < (2 * arg2.length) + 84
                mem[(32 * arg2.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', 'callvalue', ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', 'callvalue', ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) - 256
                idx = idx + 1
                continue 
            idx = 0
            while idx < 32:
                require idx + 32 < (2 * arg2.length) + 84
                mem[(32 * arg2.length) + idx + 192 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) - 256
                idx = idx + 1
                continue 
            idx = 0
            while idx < 20:
                require idx + 64 < (2 * arg2.length) + 84
                mem[(32 * arg2.length) + idx + 224 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('mask_shl', 160, 0, 0, 'address'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('mask_shl', 160, 0, 0, 'address'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) - 256
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
            mem[mem[64] + floor32(mem[(32 * arg2.length) + 128])] = mem[mem[64] + floor32(mem[(32 * arg2.length) + 128])] and 256^(-(mem[(32 * arg2.length) + 128] % 32) + 32) - 1 or mem[(32 * arg2.length) + floor32(mem[(32 * arg2.length) + 128]) + 160] and !(256^(-(mem[(32 * arg2.length) + 128] % 32) + 32) - 1)
            _328 = sha3(mem[mem[64] len _183 + _184 - mem[64]])
            _336 = mem[64]
            mem[mem[64]] = 0
            mem[64] = mem[64] + 32
            mem[_336 + 32] = _328
            mem[_336 + 64] = arg3
            mem[_336 + 96] = arg4
            mem[_336 + 128] = arg5
            signer = erecover(_328, arg3 << 248, arg4, arg5) 
            mem[_336] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            s = 0
            idx = 0
            while idx < arg2.length:
                require idx < arg2.length
                mem[0] = mem[_336 + 12 len 20]
                require mem[(32 * idx) + 158 len 2] < stor0[mem[0]].field_0
                mem[0] = sha3(mem[0], 0)
                require stor[sha3(mem[0]) + mem[(32 * idx) + 158 len 2]]
                mem[0] = msg.sender
                mem[32] = 0
                mem[0] = mem[_336 + 12 len 20]
                require mem[(32 * idx) + 158 len 2] < stor0[mem[0]].field_0
                mem[0] = sha3(mem[0], 0)
                _475 = sha3(mem[0])
                stor0[msg.sender].field_0++
                mem[0] = sha3(msg.sender, 0)
                stor0[msg.sender][stor0[msg.sender].field_0].field_0 = stor[mem[(32 * idx) + 158 len 2] + _475]
                mem[0] = mem[_336 + 12 len 20]
                mem[32] = 0
                require mem[(32 * idx) + 158 len 2] < stor0[mem[0]].field_0
                mem[0] = sha3(mem[0], 0)
                stor[sha3(mem[0]) + mem[(32 * idx) + 158 len 2]] = 0
                s = mem[(32 * idx) + 128]
                idx = idx + 1
                continue 
            call mem[_336 + 12 len 20] with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_336 + 64] = arg3
            mem[_336 + 96] = arg4
            mem[_336 + 128] = arg5
            mem[_336 + 32] = 128
            mem[_336 + 160] = arg2.length
            mem[_336 + 192 len floor32(arg2.length)] = mem[128 len floor32(arg2.length)]
            emit Trade(Array(len=arg2.length, data=mem[_336 + 192 len 32 * arg2.length]), arg3 << 248, arg4, arg5, address(signer));
}



}
