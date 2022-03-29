contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;

function _fallback() payable {
    bool(stor1.length) = 0
    stor1.length.field_1 = 6
    stor1.length.field_8 = 'geheim' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[192] = 'peter'
    bool(stor2.length) = 0
    stor2.length.field_1 = 5
    stor2.length.field_8 = 'peter' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    mem[224 len -1471] = code.data[1876 len -1471]
    stor0[] = Array(len=mem[mem[224] + 224], data=mem[mem[224] + 256 len mem[mem[224] + 224]])
    return code.data[405 len 1471]
}



// =====================  Runtime code  =====================


array of struct stor0;
array of struct stor1;
array of struct stor2;
address stor3;

function kill() {
    if stor3 != msg.sender:
    selfdestruct(stor3)
}

function _fallback() payable {
    revert
}

function mortal() {
    stor3 = msg.sender
}

function main() {
    mem[96] = 0
    mem[128] = stor2.length
    mem[0] = 2
    mem[160] = uint256(stor2.field_0)
    idx = 160
    s = 0
    while stor2.length + 128 > idx:
        mem[idx + 32] = stor2[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor2.length) + 192
    mem[ceil32(stor2.length) + 160] = 0
    if stor0.length != stor2.length:
        mem[ceil32(stor2.length) + 224] = uint256(stor0.field_0)
        idx = ceil32(stor2.length) + 224
        s = 0
        while ceil32(stor2.length) + stor0.length + 192 > idx:
            mem[idx + 32] = stor0[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(stor2.length) + ceil32(stor0.length) + 224] = 32
        mem[ceil32(stor2.length) + ceil32(stor0.length) + 256] = stor0.length
        if stor0.length:
            mem[ceil32(stor2.length) + ceil32(stor0.length) + 288] = mem[ceil32(stor2.length) + 224]
            mem[ceil32(stor2.length) + ceil32(stor0.length) + 320 len floor32(stor0.length - 1)] = mem[ceil32(stor2.length) + 256 len floor32(stor0.length - 1)]
        return Array(len=stor0.length, data=mem[ceil32(stor2.length) + ceil32(stor0.length) + 288 len stor0.length])
    idx = 0
    while idx < stor0.length:
        require idx < stor2.length
        require idx < stor0.length
        if not bool(stor0.length):
            if Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor0', 0)))), 0) + 256, idx) << (('field', 3, ('stor', ('length', ('name', 'stor0', 0)))), 0) - 8 == Mask(8, 248, mem[idx + 160]):
                idx = idx + 1
                continue 
        else:
            mem[0] = 0
            if Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('var', 0)), ('name', 'stor0', 0)))), 0) + 256, idx % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('var', 0)), ('name', 'stor0', 0)))), 0) - 8 == Mask(8, 248, mem[idx + 160]):
                idx = idx + 1
                continue 
        mem[64] = ceil32(stor2.length) + ceil32(stor0.length) + 224
        mem[ceil32(stor2.length) + 192] = stor0.length
        mem[0] = 0
        mem[ceil32(stor2.length) + 224] = uint256(stor0.field_0)
        idx = ceil32(stor2.length) + 224
        s = sha3(0)
        while ceil32(stor2.length) + stor0.length + 192 > idx:
            mem[idx + 32] = stor1[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(stor2.length) + ceil32(stor0.length) + 224] = 32
        mem[ceil32(stor2.length) + ceil32(stor0.length) + 256] = stor0.length
        if not stor0.length:
            return Array(len=stor0.length, data=mem[ceil32(stor2.length) + ceil32(stor0.length) + 288 len stor0.length])
        mem[ceil32(stor2.length) + ceil32(stor0.length) + 288] = mem[ceil32(stor2.length) + 224]
        s = ceil32(stor2.length) + 224
        t = mem[64] + 64
        idx = stor0.length
        while idx > 32:
            mem[t + 32] = mem[s + 32]
            s = s + 32
            t = t + 32
            idx = idx - 32
            continue 
        if not stor0.length % 32:
            return memory
              from mem[64]
               len stor0.length + ceil32(stor2.length) + ceil32(stor0.length) + -mem[64] + 288
        mem[floor32(stor0.length) + ceil32(stor2.length) + ceil32(stor0.length) + 288] = mem[floor32(stor0.length) + ceil32(stor2.length) + ceil32(stor0.length) + -stor0.length % 32 + 320 len stor0.length % 32]
        return memory
          from mem[64]
           len floor32(stor0.length) + ceil32(stor2.length) + ceil32(stor0.length) + -mem[64] + 320
    mem[ceil32(stor2.length) + 224] = uint256(stor1.field_0)
    idx = ceil32(stor2.length) + 224
    s = 0
    while ceil32(stor2.length) + stor1.length + 192 > idx:
        mem[idx + 32] = stor1[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor2.length) + ceil32(stor1.length) + 224] = 32
    mem[ceil32(stor2.length) + ceil32(stor1.length) + 256] = stor1.length
    if stor1.length:
        mem[ceil32(stor2.length) + ceil32(stor1.length) + 288] = mem[ceil32(stor2.length) + 224]
        mem[ceil32(stor2.length) + ceil32(stor1.length) + 320 len floor32(stor1.length - 1)] = mem[ceil32(stor2.length) + 256 len floor32(stor1.length - 1)]
        var30001 = ceil32(stor2.length) + floor32(stor1.length - 1) + 224
        var30002 = ceil32(stor2.length) + ceil32(stor1.length) + floor32(stor1.length - 1) + 288
        var30003 = stor1.length - (32 * Mask(251, 0, stor1.length - 1) >> 5)
    return Array(len=stor1.length, data=mem[ceil32(stor2.length) + ceil32(stor1.length) + 288 len stor1.length])
}



}
