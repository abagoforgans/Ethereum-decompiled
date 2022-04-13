contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint32 stor1;
array of uint32 stor2;
mapping of uint256 stor3;
address stor4;

function _fallback() payable {
    stor0 = 500
    mem[96] = 1503695400
    mem[128] = 1503696300
    mem[160] = 1503697200
    stor1.length = 3
    s = 0
    idx = 96
    while 192 > idx:
        uint256(stor1.field_0) = mem[idx + 28 len 4] * 256^s or !(test266151307() * 256^s) and uint256(stor1.field_0)
        s = s + (4 * -s + 7 / 32) + (-1 * s * s + 7 / 32) + 4
        idx = idx + 32
        continue 
    idx = 12
    s = sha3(1)
    while idx:
        stor[s] = !(test266151307() * 256^idx) and stor[s]
        idx = idx + (4 * -idx + 7 / 32) + (-1 * idx * idx + 7 / 32) + 4
        s = (idx + 7 / 32) + s
        continue 
    idx = Mask(252, 2, None - 7) + 19 / 32 * Mask(254, 0, None - 7) >> 2
    while stor1.length + 7 / 8 > idx:
        uint32(stor1[idx].field_0) = 0
        idx = idx + 1
        continue 
    mem[192] = 250
    mem[224] = 150
    mem[256] = 100
    stor2.length = 3
    s = 0
    idx = 192
    while 288 > idx:
        uint256(stor2) = mem[idx + 31 len 1] * 256^s or !(test266151307() * 256^s) and uint256(stor2)
        s = s + (4 * -s + 7 / 32) + (-1 * s * s + 7 / 32) + 4
        idx = idx + 32
        continue 
    idx = 12
    s = sha3(2)
    while idx:
        stor[s] = !(test266151307() * 256^idx) and stor[s]
        idx = idx + (4 * -idx + 7 / 32) + (-1 * idx * idx + 7 / 32) + 4
        s = (idx + 7 / 32) + s
        continue 
    idx = Mask(252, 2, None - 7) + 19 / 32 * Mask(254, 0, None - 7) >> 2
    while stor2.length + 7 / 8 > idx:
        uint32(stor2[idx]) = 0
        idx = idx + 1
        continue 
    require not msg.value
    stor4 = msg.sender
    idx = 0
    while uint8(idx) < stor1.length:
        mem[320] = 0
        require ext_code.size(0xbb31037f997553bec50510a635d231a35f8ec640)
        call 0xbb31037f997553bec50510a635d231a35f8ec640.0x313ce567 with:
             gas gas_remaining - 710 wei
        mem[288] = ext_call.return_data[0]
        require ext_call.success
        require uint8(idx) < stor2.length
        require uint8(idx) < stor1.length
        stor3[uint32(stor1[uint8(idx) / 8].field_(32 * idx % 8) - 224)] = stor('array', ('mask_shl', 5, 3, -3, ('var', 0)), ('name', 'stor2', 2))[uint8(idx)] * 10^uint8(ext_call.return_data[0])
        mem[0] = stor('array', ('mask_shl', 5, 3, -3, ('var', 0)), ('name', 'stor1', 1))[uint8(idx)]
        mem[32] = 3
        stor0 += stor3[uint32(stor1[uint8(idx) / 8].field_(32 * idx % 8) - 224)]
        idx = idx + 1
        continue 
    return code.data[963 len 1888]
}



// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#
uint256 lockLimit;
mapping of uint256 stor3;
address owner;

function owner() {
    return owner
}

function lockLimit() {
    return lockLimit
}

function _fallback() payable {
    revert
}

function latiumBalance() {
    require ext_code.size(0xbb31037f997553bec50510a635d231a35f8ec640)
    call 0xbb31037f997553bec50510a635d231a35f8ec640.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    return ext_call.return_data[0]
}

function lockedTokens() {
    idx = 0
    s = 0
    while uint8(idx) < stor1.length:
        require uint8(idx) < stor1.length
        mem[0] = stor('array', ('mask_shl', 5, 3, -3, ('var', 0)), ('name', 'stor1', 1))[uint8(idx)]
        mem[32] = 3
        if block.timestamp < stor('array', ('mask_shl', 5, 3, -3, ('var', 0)), ('name', 'stor1', 1))[uint8(idx)]:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + stor3[stor1[uint8(idx) / 8]]
        continue 
    require ext_code.size(0xbb31037f997553bec50510a635d231a35f8ec640)
    call 0xbb31037f997553bec50510a635d231a35f8ec640.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if s > ext_call.return_data[0]:
        return 0
    if ext_call.return_data[0] - s >= 0:
        return 0
    return (ext_call.return_data[0] - s)
}

function canBeWithdrawn() {
    idx = 0
    s = 0
    t = 0
    while uint8(idx) < stor1.length:
        mem[32] = 3
        mem[0] = 1
        if block.timestamp < stor('array', ('mask_shl', 5, 3, -3, ('var', 0)), ('name', 'stor1', 1))[uint8(idx)]:
            idx = idx + 1
            s = s + stor3[stor1[uint8(idx) / 8]]
            t = t
            continue 
        require uint8(idx) < stor1.length
        mem[0] = stor('array', ('mask_shl', 5, 3, -3, ('var', 0)), ('name', 'stor1', 1))[uint8(idx)]
        mem[32] = 3
        idx = idx + 1
        s = s + stor3[stor1[uint8(idx) / 8]]
        t = t + stor3[stor1[uint8(idx) / 8]]
        continue 
    require ext_code.size(0xbb31037f997553bec50510a635d231a35f8ec640)
    call 0xbb31037f997553bec50510a635d231a35f8ec640.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if t > ext_call.return_data[0]:
        return ext_call.return_data[0], 0
    if ext_call.return_data[0] <= s:
        return t, 0
    return t, ext_call.return_data[0] - s
}



}
