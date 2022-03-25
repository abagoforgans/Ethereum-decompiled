contract main {


// =======================  Init code  ======================


array of address stor0;
array of struct stor1;
mapping of uint256 stor2;

function _fallback() payable {
    stor0.length++
    if not stor0.length > stor0.length + 1:
        address(stor0[stor0.length].field_0) = 0x6b50b1fee1a46d8803d017e6bf363a3f904d8fe
        stor0.length++
    else:
        idx = stor0.length + 1
        while stor0.length > idx:
            stor0[idx].field_0 = 0
            idx = idx + 1
            continue 
        address(stor0[stor0.length].field_0) = 0x6b50b1fee1a46d8803d017e6bf363a3f904d8fe
        stor0.length++
        if not stor0.length <= stor0.length + 1:
            idx = stor0.length + 1
            while stor0.length > idx:
                stor0[idx].field_0 = 0
                idx = idx + 1
                continue 
    address(stor0[stor0.length].field_0) = 0xca35b7d915458ef540ade6068dfe2f44e8fa733c
    stor1.length++
    if not stor1.length <= stor1.length + 1:
        mem[0] = 1
        idx = (3 * stor1.length) + 3
        while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            stor[idx + sha3(mem[0]) + 1] = 0
            stor[idx + sha3(mem[0]) + 2] = 0
            if 31 < stor[idx + sha3(mem[0]) + 2].length:
                mem[0] = idx + sha3(mem[0]) + 2
                s = sha3(idx + sha3(mem[0]) + 2)
                while sha3(idx + sha3(mem[0]) + 2) + (stor[idx + sha3(mem[0]) + 2].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            idx = idx + 3
            continue 
    stor1[stor1.length].field_0 = 0
    stor1[stor1.length].field_256 = 0
    bool(stor1[stor1.length].field_512) = 0
    uint255(stor1[stor1.length].field_513) = 18
    Mask(248, 0, stor1[stor1.length].field_520) = 'Invalid player ID.' / 256
    idx = 0
    while stor[(3 * stor1.length) + ('name', 'stor1', 1) + 2].length + 31 / 32 > idx:
        stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) + 2)].field_0 = 0
        idx = idx + 1
        continue 
    stor1.length++
    if not stor1.length <= stor1.length + 1:
        mem[0] = 1
        idx = (3 * stor1.length) + 3
        while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            stor[idx + sha3(mem[0]) + 1] = 0
            stor[idx + sha3(mem[0]) + 2] = 0
            if 31 < stor[idx + sha3(mem[0]) + 2].length:
                mem[0] = idx + sha3(mem[0]) + 2
                s = sha3(idx + sha3(mem[0]) + 2)
                while sha3(idx + sha3(mem[0]) + 2) + (stor[idx + sha3(mem[0]) + 2].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            idx = idx + 3
            continue 
    stor1[stor1.length].field_0 = 53376
    stor1[stor1.length].field_256 = -6271
    bool(stor1[stor1.length].field_512) = 0
    uint255(stor1[stor1.length].field_513) = 16
    Mask(248, 0, stor1[stor1.length].field_520) = 'The place to be.' / 256
    idx = 0
    while stor[(3 * stor1.length) + ('name', 'stor1', 1) + 2].length + 31 / 32 > idx:
        stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) + 2)].field_0 = 0
        idx = idx + 1
        continue 
    require 0 < stor0.length
    stor2[address(stor0.field_0)] = 1
    require 1 < stor0.length
    stor2[address(stor0.field_256)] = 1
    return code.data[1712 len 1593]
}



// =====================  Runtime code  =====================


array of struct stor1;
mapping of uint256 stor2;

function _fallback() payable {
    revert 
}

function sub_488c9419(?) {
    if stor2[address(msg.sender)] < stor1.length:
        require stor2[address(msg.sender)] < stor1.length
        if arg1 == stor1[stor2[address(msg.sender)]].field_0:
            require stor2[address(msg.sender)] < stor1.length
            if arg2 == stor1[stor2[address(msg.sender)]].field_256:
                stor2[address(msg.sender)]++
                if stor2[address(msg.sender)] >= stor1.length:
                    call msg.sender with:
                       value 100 wei
                         gas 0 wei
}

function sub_05d22f3c(?) {
    if stor2[address(arg1)] >= stor1.length:
        mem[256] = mem[281 len 7]
        return Array(len=7, data=mem[256])
    require stor2[address(arg1)] < stor1.length
    mem[160] = stor[sha3((3 * stor2[address(arg1)]) + ('name', 'stor1', 1) + 2)].field_0
    idx = 160
    s = 0
    while stor[(3 * stor2[address(arg1)]) + ('name', 'stor1', 1) + 2].length + 128 > idx:
        mem[idx + 32] = stor[s + sha3((3 * stor2[address(arg1)]) + ('name', 'stor1', 1) + 2)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor[(3 * stor2[address(arg1)]) + ('name', 'stor1', 1) + 2].length, data=mem[160 len stor[(3 * stor2[address(arg1)]) + ('name', 'stor1', 1) + 2].length]), 
}

function sub_2e4b8953(?) {
    if stor2[address(arg3)] >= stor1.length:
        mem[288] = mem[313 len 7]
        return 0, 64, 7, mem[288]
    require stor2[address(arg3)] < stor1.length
    if arg1 != stor1[stor2[address(arg3)]].field_0:
        return 0, 64, 0
    require stor2[address(arg3)] < stor1.length
    if arg2 != stor1[stor2[address(arg3)]].field_256:
        return 0, 64, 0
    require stor2[address(arg3)] < stor1.length
    mem[160] = stor[sha3((3 * stor2[address(arg3)]) + ('name', 'stor1', 1) + 2)].field_0
    idx = 160
    s = 0
    while stor[(3 * stor2[address(arg3)]) + ('name', 'stor1', 1) + 2].length + 128 > idx:
        mem[idx + 32] = stor[s + sha3((3 * stor2[address(arg3)]) + ('name', 'stor1', 1) + 2)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return 1, 
           Array(len=stor[(3 * stor2[address(arg3)]) + ('name', 'stor1', 1) + 2].length, data=mem[160 len stor[(3 * stor2[address(arg3)]) + ('name', 'stor1', 1) + 2].length])
}



}
