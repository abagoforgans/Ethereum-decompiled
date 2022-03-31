contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 1127]




// =====================  Runtime code  =====================


uint256 date;
array of struct stor2;
array of struct stor3;

function getDate() {
    return date
}

function _fallback() payable {
    revert
}

function set(string arg1, string arg2) {
    stor2[].field_0 = Array(len=arg1.length, data=arg1[all])
    stor3[].field_0 = Array(len=arg2.length, data=arg2[all])
    date = block.timestamp
}

function getContract() {
    mem[96] = 0
    mem[128] = 0
    mem[160] = stor2.length
    mem[192] = uint256(stor2.field_0)
    idx = 192
    s = 0
    while stor2.length + 160 > idx:
        mem[idx + 32] = stor2[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor2.length) + ceil32(stor3.length) + 224
    mem[ceil32(stor2.length) + 192] = stor3.length
    mem[0] = 3
    mem[ceil32(stor2.length) + 224] = uint256(stor3.field_0)
    idx = ceil32(stor2.length) + 224
    s = 0
    while ceil32(stor2.length) + stor3.length + 192 > idx:
        mem[idx + 32] = stor3[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor2.length) + ceil32(stor3.length) + 288] = date
    mem[ceil32(stor2.length) + ceil32(stor3.length) + 224] = 96
    mem[ceil32(stor2.length) + ceil32(stor3.length) + 320] = stor2.length
    if not stor2.length:
        mem[ceil32(stor2.length) + ceil32(stor3.length) + 256] = stor2.length + 128
        mem[stor2.length + ceil32(stor2.length) + ceil32(stor3.length) + 352] = stor3.length
        if not stor3.length:
            if not stor3.length % 32:
                return Array(len=stor2.length, data=mem[ceil32(stor2.length) + ceil32(stor3.length) + 352 len stor3.length + stor2.length + 32]), 
                       stor2.length + 128,
                       date
            mem[floor32(stor3.length) + stor2.length + ceil32(stor2.length) + ceil32(stor3.length) + 384] = mem[floor32(stor3.length) + stor2.length + ceil32(stor2.length) + ceil32(stor3.length) + -stor3.length % 32 + 416 len stor3.length % 32]
            return Array(len=stor2.length, data=mem[ceil32(stor2.length) + ceil32(stor3.length) + 352 len floor32(stor3.length) + stor2.length + 64]), 
                   stor2.length + 128,
                   date
        mem[stor2.length + ceil32(stor2.length) + ceil32(stor3.length) + 384] = mem[ceil32(stor2.length) + 224]
        mem[stor2.length + ceil32(stor2.length) + ceil32(stor3.length) + 416 len floor32(stor3.length - 1)] = mem[ceil32(stor2.length) + 256 len floor32(stor3.length - 1)]
        if not stor3.length % 32:
            return Array(len=stor2.length, data=mem[ceil32(stor2.length) + ceil32(stor3.length) + 352 len stor3.length + stor2.length + 32]), 
                   stor2.length + 128,
                   date
        mem[floor32(stor3.length) + stor2.length + ceil32(stor2.length) + ceil32(stor3.length) + 384] = mem[floor32(stor3.length) + stor2.length + ceil32(stor2.length) + ceil32(stor3.length) + -stor3.length % 32 + 416 len stor3.length % 32]
        return Array(len=stor2.length, data=mem[ceil32(stor2.length) + ceil32(stor3.length) + 352 len stor2.length + 32], mem[ceil32(stor2.length) + 224], mem[ceil32(stor2.length) + ceil32(stor3.length) + stor2.length + 416 len floor32(stor3.length)]), 
               stor2.length + 128,
               date
    mem[ceil32(stor2.length) + ceil32(stor3.length) + 352] = mem[192]
    mem[ceil32(stor2.length) + ceil32(stor3.length) + 384 len floor32(stor2.length - 1)] = mem[224 len floor32(stor2.length - 1)]
    mem[ceil32(stor2.length) + ceil32(stor3.length) + 256] = stor2.length + 128
    mem[stor2.length + ceil32(stor2.length) + ceil32(stor3.length) + 352] = stor3.length
    if stor3.length:
        mem[stor2.length + ceil32(stor2.length) + ceil32(stor3.length) + 384] = mem[ceil32(stor2.length) + 224]
        mem[stor2.length + ceil32(stor2.length) + ceil32(stor3.length) + 416 len floor32(stor3.length - 1)] = mem[ceil32(stor2.length) + 256 len floor32(stor3.length - 1)]
    if not stor3.length % 32:
        return Array(len=stor2.length, data=mem[192], mem[ceil32(stor2.length) + ceil32(stor3.length) + 384 len stor3.length + stor2.length]), 
               stor2.length + 128,
               date
    mem[floor32(stor3.length) + stor2.length + ceil32(stor2.length) + ceil32(stor3.length) + 384] = mem[floor32(stor3.length) + stor2.length + ceil32(stor2.length) + ceil32(stor3.length) + -stor3.length % 32 + 416 len stor3.length % 32]
    return Array(len=stor2.length, data=mem[192], mem[ceil32(stor2.length) + ceil32(stor3.length) + 384 len floor32(stor3.length) + stor2.length + 32]), 
           stor2.length + 128,
           date
}



}
