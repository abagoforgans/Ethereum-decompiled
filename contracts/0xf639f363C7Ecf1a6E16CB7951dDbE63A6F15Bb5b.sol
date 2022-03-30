contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of address stor1;
array of struct stor2;
array of uint256 stor99;

function _fallback() {
    mem[96 len -1127] = code.data[1665 len -1127]
    mem[64] = -1031
    mem[0] = 0
    stor0[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    idx = 0
    while uint8(idx) < 2:
        _90 = mem[64]
        mem[64] = mem[64] + 64
        mem[_90] = mem[(32 * uint8(idx)) + 140 len 20]
        _93 = mem[64]
        mem[64] = mem[64] + 32
        mem[_93] = 0
        mem[_90 + 32] = _93
        stor1[2 * uint8(idx)] = mem[_90 + 12 len 20]
        mem[0] = (2 * uint8(idx)) + 2
        bool(stor2[2 * uint8(idx)].field_0) = 0
        uint255(stor2[2 * uint8(idx)].field_1) = 0
        Mask(248, 0, stor2[2 * uint8(idx)].field_8) = mem[_93 + 32 len 31]
        if sha3((2 * uint8(idx)) + 2) + (stor[(2 * uint8(idx)) + 2].length + 31 / 32) > sha3((2 * uint8(idx)) + 2):
            stor[sha3((2 * uint8(idx)) + 2)] = 0
            s = sha3((2 * uint8(idx)) + 2) + 1
            while sha3((2 * uint8(idx)) + 2) + (stor[(2 * uint8(idx)) + 2].length + 31 / 32) > s:
                stor[s] = 0
                s = s + 1
                continue 
        idx = idx + 1
        continue 
    return code.data[538 len 1127]
}



// =====================  Runtime code  =====================


array of uint256 companyName;
array of address stor1;

function companyName() {
    return companyName[0 len companyName.length]
}

function _fallback() payable {
    revert 
}

function sub_2c5e12de(?) {
    require arg1 < 2
    if stor1[2 * uint8(arg1)] != msg.sender:
        return 0
    require arg1 < 2
    stor1[2 * uint8(arg1)] = arg2
    return 1
}

function sub_831ecb7a(?) {
    require arg1 < 2
    if stor1[2 * uint8(arg1)] != msg.sender:
        return 0
    require arg1 < 2
    stor[sha3((2 * uint8(arg1)) + 2)][] = Array(len=arg2.length, data=arg2[all])
    return 1
}

function owners(uint256 arg1) {
    require arg1 < 2
    mem[192] = stor[sha3((2 * arg1) + 2)]
    idx = 192
    s = 0
    while stor[(2 * arg1) + 2].length + 192 > idx + 32:
        mem[idx + 32] = stor[s + sha3((2 * arg1) + 2) + 1]
        idx = idx + 32
        s = s + 1
        continue 
    return stor1[arg1], 
           Array(len=stor[(2 * arg1) + 2].length, data=mem[192 len stor[(2 * arg1) + 2].length + (floor32(stor[(2 * arg1) + 2].length - 1) + -stor[(2 * arg1) + 2].length + 32 % 32)])
}



}
