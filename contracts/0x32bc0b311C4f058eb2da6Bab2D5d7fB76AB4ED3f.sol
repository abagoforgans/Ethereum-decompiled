contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;

function _fallback() {
    stor0 = msg.sender
    stor1.length++
    if not stor1.length <= stor1.length + 1:
        mem[0] = 1
        idx = stor1.length + 1
        while sha3(1) + stor1.length > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            if 31 < stor[idx + sha3(mem[0])].length:
                mem[0] = idx + sha3(mem[0])
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
    mem[128] = 'QmXFny7aahyrNFqoTMM3hYTjZGD6xuSy'
    mem[160] = 'FfJbGcWXPLMwM1'
    stor1[stor1.length] = 93
    s = 0
    idx = 128
    while 174 > idx:
        stor1[stor1.length + s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 2
    while stor1[stor1.length].length + 31 / 32 > idx:
        stor1[stor1.length + idx] = 0
        idx = idx + 1
        continue 
    return code.data[518 len 1366]
}



// =====================  Runtime code  =====================


address stor0;
array of uint256 sub_1567e531;

function sub_1567e531(?) {
    return stor[sub_1567e531.length + ('name', 'sub_1567e531', 1) - 1][0 len stor[sub_1567e531.length + ('name', 'sub_1567e531', 1) - 1].length]
}

function hashes(uint256 arg1) {
    return sub_1567e531[arg1][0 len sub_1567e531[arg1].length]
}

function sub_a58a390e(?) {
    return sub_1567e531.length
}

function _fallback() {
    revert
}

function sub_8168b646(?) {
    require stor0 == msg.sender
    sub_1567e531.length++
    if not sub_1567e531.length <= sub_1567e531.length + 1:
        mem[0] = 1
        idx = sub_1567e531.length + 1
        while sha3(1) + sub_1567e531.length > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            if 31 < stor[idx + sha3(mem[0])].length:
                mem[0] = idx + sha3(mem[0])
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
    sub_1567e531[sub_1567e531.length][] = Array(len=arg1.length, data=arg1[all])
}



}
