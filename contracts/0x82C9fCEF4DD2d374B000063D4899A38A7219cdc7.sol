contract main {


// =======================  Init code  ======================


mapping of struct stor0;
uint256 stor1;
array of uint64 stor2;
address stor3;
array of struct stor4;
mapping of address sub_d0296612;

function sub_8fee67bf(?) {
    return sub_d0296612[arg1[all]]
}

function sub_c9d2f339(?) {
    return sub_d0296612[arg1[all]]
}

function sub_d0296612(?) {
    return sub_d0296612[arg1[all]]
}

function _fallback() {
    stor3 = msg.sender
}

function sub_064f88c2(?) {
    require arg1 < stor2.length
    if 31 >= stor0[address(stor2[arg1])][3].length:
        stor4.length = uint256(stor0[address(stor2[arg1])].field_768)
        idx = 0
        while stor4.length + 31 / 32 > idx:
            uint256(stor4[idx].field_0) = 0
            idx = idx + 1
            continue 
    else:
        stor4.length = Mask(255, 1, (256 * not bool(stor0[address(stor2[arg1])].field_768)) - 1 and uint256(stor0[address(stor2[arg1])].field_768)) + 1
        if not Mask(255, 1, (256 * not bool(stor0[address(stor2[arg1])].field_768)) - 1 and uint256(stor0[address(stor2[arg1])].field_768)):
            idx = 0
            while stor4.length + 31 / 32 > idx:
                uint256(stor4[idx].field_0) = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while stor0[address(stor2[arg1])][3].length + 31 / 32 > idx:
                uint256(stor4[s].field_0) = uint256(stor0[address(stor2[arg1])][idx + 3].field_0)
                s = s + 1
                idx = idx + 1
                continue 
            idx = stor0[address(stor2[arg1])][3].length + 31 / 32
            while stor4.length + 31 / 32 > idx:
                uint256(stor4[idx].field_0) = 0
                idx = idx + 1
                continue 
    return address(stor2[arg1]), uint256(stor0[address(stor2[arg1])].field_256)
}

function apply() {
    mem[96] = uint256(stor4.field_0)
    idx = 96
    s = 0
    while stor4.length + 96 > idx + 32:
        mem[idx + 32] = uint256(stor4[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor4.length + 96] = 5
    address(stor[sha3(mem[96 len stor4.length + 32])]) = msg.sender
    mem[128] = uint256(stor4.field_0)
    idx = 128
    s = 0
    while stor4.length + 96 > idx:
        mem[idx + 32] = uint256(stor4[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor4.length) + 128 len stor4.length] = mem[128 len stor4.length]
    mem[stor4.length + ceil32(stor4.length) + 128] = 5
    if not uint256(stor0[address(stor[sha3(mem[ceil32(stor4.length) + 128 len stor4.length + 32])])].field_256):
        uint256(stor0[address(stor[sha3(mem[ceil32(stor4.length) + 128 len stor4.length + 32])])].field_256) = block.timestamp
        if 31 >= stor4.length:
            uint256(stor0[address(stor[sha3(mem[ceil32(stor4.length) + 128 len stor4.length + 32])])].field_768) = stor4.length
            idx = 0
            while stor0[address(stor[sha3(mem[ceil32(stor4.length) + 128 len stor4.length + 32])])][3].length + 31 / 32 > idx:
                uint256(stor0[address(stor[sha3(mem[ceil32(stor4.length) + 128 len stor4.length + 32])])][idx + 3].field_0) = 0
                idx = idx + 1
                continue 
        else:
            uint256(stor0[address(stor[sha3(mem[ceil32(stor4.length) + 128 len stor4.length + 32])])].field_768) = Mask(255, 1, (256 * not bool(stor4.length)) - 1 and stor4.length) + 1
            if not Mask(255, 1, (256 * not bool(stor4.length)) - 1 and stor4.length):
                idx = 0
                while stor0[address(stor[sha3(mem[ceil32(stor4.length) + 128 len stor4.length + 32])])][3].length + 31 / 32 > idx:
                    uint256(stor0[address(stor[sha3(mem[ceil32(stor4.length) + 128 len stor4.length + 32])])][idx + 3].field_0) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while stor4.length + 31 / 32 > idx:
                    uint256(stor0[address(stor[sha3(mem[ceil32(stor4.length) + 128 len stor4.length + 32])])][s + 3].field_0) = uint256(stor4[idx].field_0)
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = stor4.length + 31 / 32
                while stor0[address(stor[sha3(mem[ceil32(stor4.length) + 128 len stor4.length + 32])])][3].length + 31 / 32 > idx:
                    uint256(stor0[address(stor[sha3(mem[ceil32(stor4.length) + 128 len stor4.length + 32])])][idx + 3].field_0) = 0
                    idx = idx + 1
                    continue 
        uint256(stor0[address(stor[sha3(mem[ceil32(stor4.length) + 128 len stor4.length + 32])])].field_512) = stor2.length
        stor2.length++
        if not stor2.length <= stor2.length + 1:
            idx = stor2.length + 1
            while stor2.length > idx:
                uint256(stor2[idx]) = 0
                idx = idx + 1
                continue 
        require stor2.length - 1 < stor2.length
        uint64(stor2[stor2.length]) = uint64(stor[sha3(mem[ceil32(stor4.length) + 128 len stor4.length + 32])])
        Mask(96, 0, stor2[stor2.length]) = 0
        stor1++
}



// =====================  Runtime code  =====================




}
