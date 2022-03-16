contract main {


// =======================  Init code  ======================


uint256 stor1;

function _fallback() payable {
    stor1 = 0
    return code.data[26 len 1174]
}



// =====================  Runtime code  =====================


array of struct stor0;
uint256 stor1;
array of uint256 stor18569430475105882587588266137607568536673111973893317399460219858819262702946;

function _fallback() payable {
  stop
}

function latest() payable {
    require stor1 - 1 < stor0.length
    if stor290D[stor1]:
        mem[160] = stor[sha3(stor1 + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e562)]
        idx = 160
        s = 0
        while stor290D[stor1] + 128 > idx:
            mem[idx + 32] = stor[s + sha3(stor1 + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e562) + 1]
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=stor290D[stor1], data=mem[160 len stor290D[stor1]])
}

function sub_c887eeeb(?) payable {
    if arg1 >= stor1:
        mem[256] = Mask(96, 80, 'No post found at index') >> 80, mem[278 len 10]
        return Array(len=22, data=mem[256])
    require arg1 < stor0.length
    if stor0[arg1].field_0:
        mem[160] = stor0[arg1].field_0
        idx = 160
        s = 0
        while stor0[arg1].field_0 + 128 > idx:
            mem[idx + 32] = stor0[arg1 + s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=stor0[arg1].field_0, data=mem[160 len stor0[arg1].field_0])
}

function sub_58da143b(?) payable {
    stor0.length = stor1 + 1
    if not stor0.length <= stor1 + 1:
        mem[0] = 0
        idx = stor1 + 1
        while sha3(0) + stor0.length > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            mem[0] = idx + sha3(mem[0])
            s = sha3(s + sha3(mem[0]))
            while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])] + 31 / 32) > s + sha3(mem[0]):
                stor[s + sha3(mem[0])] = 0
                s = s + 1
                continue 
            s = s + 1
            continue 
    mem[128] = 'Send me nudes'
    require stor1 < stor0.length
    stor0[stor1].field_0 = 13
    s = 0
    idx = 128
    while 141 > idx:
        stor0[stor1 + s].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 1
    while stor0[stor1].field_0 + 31 / 32 > idx:
        stor0[stor1 + idx].field_0 = 0
        idx = idx + 1
        continue 
    stor1++
}

function post(string arg1) payable {
    mem[128 len arg1.length] = arg1[all]
    stor0.length = stor1 + 1
    if not stor0.length <= stor1 + 1:
        idx = stor1 + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e564
        while stor0.length + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563 > idx:
            stor[idx] = 0
            mem[0] = idx
            s = sha3(s)
            while sha3(s) + (stor[s] + 31 / 32) > s:
                stor[s] = 0
                s = s + 1
                continue 
            s = s + 1
            continue 
    require stor1 < stor0.length
    stor0[stor1].field_0 = arg1.length
    if not arg1.length:
        idx = 0
        while stor0[stor1].field_0 + 31 / 32 > idx:
            stor0[stor1 + idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while arg1.length + 128 > idx:
            stor0[stor1 + s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, arg1.length + 31) >> 5
        while stor0[stor1].field_0 + 31 / 32 > idx:
            stor0[stor1 + idx].field_0 = 0
            idx = idx + 1
            continue 
    stor1++
}



}
