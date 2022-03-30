contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;

function _fallback() {
    mem[96 len -1409] = code.data[2017 len -1409]
    mem[64] = -1313
    mem[0] = 0
    mem[32] = 0
    stor0[0] = (2 * mem[mem[96] + 96]) + 1
    s = 0xf0df3dcda05b4fbd9c655cde3d5ceb211e019e72ec816e127a59e7195f2cd7f5
    idx = mem[96] + 128
    while mem[96] + mem[mem[96] + 96] + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, mem[mem[96] + 96] + 31) >> 5) - 0xf20c2325fa4b042639aa321c2a314dee1fe618d137e91ed85a618e6a0d3280b
    while (stor('map', 0, ('name', 'stor0', 0)).length + 31 / 32) - 0xf20c2325fa4b042639aa321c2a314dee1fe618d137e91ed85a618e6a0d3280b > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    stor1.length++
    mem[0] = 1
    if not stor1.length <= stor1.length + 1:
        idx = stor1.length + 1
        while sha3(1) + stor1.length > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            if 31 < stor[idx + sha3(mem[0])].length:
                mem[0] = idx + sha3(mem[0])
                if sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > sha3(idx + sha3(mem[0])):
                    stor[sha3(idx + sha3(mem[0]))] = 0
                    s = sha3(idx + sha3(mem[0])) + 1
                    while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
            idx = idx + 1
            continue 
    stor1[stor1.length] = (2 * mem[mem[96] + 96]) + 1
    s = 0
    idx = mem[96] + 128
    while mem[96] + mem[mem[96] + 96] + 128 > idx:
        stor1[stor1.length + s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    if stor1[stor1.length].length + 31 / 32 > Mask(251, 0, mem[mem[96] + 96] + 31) >> 5:
        stor[('array', ('stor', ('length', ('name', 'stor1', 1))), ('name', 'stor1', 1)) + (Mask(251, 0, mem[mem[96] + 96] + 31) >> 5)] = 0
        idx = (Mask(251, 0, mem[mem[96] + 96] + 31) >> 5) + 1
        while stor1[stor1.length].length + 31 / 32 > idx:
            stor1[stor1.length + idx] = 0
            idx = idx + 1
            continue 
    return code.data[608 len 1409]
}



// =====================  Runtime code  =====================


array of uint256 sub_e0aeb7ad;
array of uint256 keys;

function keys(uint256 arg1) {
    return keys[arg1][0 len keys[arg1].length]
}

function sub_e0aeb7ad(?) {
    return sub_e0aeb7ad[arg1][0 len sub_e0aeb7ad[arg1].length]
}

function _fallback() payable {
    revert 
}

function sub_60a676c7(?) {
    sub_e0aeb7ad[arg1][] = Array(len=arg2.length, data=arg2[all])
}

function sub_ee0f7bcd(?) {
    keys.length++
    if not keys.length <= keys.length + 1:
        mem[0] = 1
        idx = keys.length + 1
        while sha3(1) + keys.length > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            if 31 < stor[idx + sha3(mem[0])].length:
                mem[0] = idx + sha3(mem[0])
                if sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > sha3(idx + sha3(mem[0])):
                    stor[sha3(idx + sha3(mem[0]))] = 0
                    s = sha3(idx + sha3(mem[0])) + 1
                    while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
            idx = idx + 1
            continue 
    keys[keys.length][] = Array(len=arg1.length, data=arg1[all])
}



}
