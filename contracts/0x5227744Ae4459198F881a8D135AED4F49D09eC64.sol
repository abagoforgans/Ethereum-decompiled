contract main {


// =======================  Init code  ======================


#
#  - _fallback()
#


// =====================  Runtime code  =====================


#
#  - sub_3dbf667c(?)
#  - sub_aefef986(?)
#  - sub_cc8f1b10(?)
#
address owner;
array of uint256 sub_b72869b5;
array of struct stor2;

function owner() payable {
    return owner
}

function sub_b72869b5(?) payable {
    return sub_b72869b5[0 len sub_b72869b5.length].field_0
}

function sub_93980360(?) payable {
    if owner != msg.sender:
    selfdestruct(msg.sender)
}

function _fallback() payable {
  stop
}

function sub_1726d3fd(?) payable {
    if owner != msg.sender:
        mem[ceil32(arg1.length) + 320] = mem[ceil32(arg1.length) + 350 len 2]
        return Array(len=2, data=mem[ceil32(arg1.length) + 320])
    idx = 0
    while idx < stor2.length:
        mem[0] = 2
        stor2[idx].field_0 = 0
        if 31 < stor2[idx].length:
            mem[0] = (4 * idx) + sha3(2)
            s = sha3((4 * idx) + sha3(2))
            while sha3((4 * idx) + sha3(2)) + (stor2[idx].length + 31 / 32) > s:
                stor[s] = 0
                s = s + 1
                continue 
        stor2[idx].field_256 = 0
        if 31 < stor[(4 * idx) + ('name', 'stor2', 2) + 1].length:
            mem[0] = (4 * idx) + sha3(2) + 1
            s = sha3((4 * idx) + sha3(2) + 1)
            while sha3((4 * idx) + sha3(2) + 1) + (stor[(4 * idx) + ('name', 'stor2', 2) + 1].length + 31 / 32) > s:
                stor[s] = 0
                s = s + 1
                continue 
        stor2[idx].field_512 = 0
        if 31 < stor[(4 * idx) + ('name', 'stor2', 2) + 2].length:
            mem[0] = (4 * idx) + sha3(2) + 2
            s = sha3((4 * idx) + sha3(2) + 2)
            while sha3((4 * idx) + sha3(2) + 2) + (stor[(4 * idx) + ('name', 'stor2', 2) + 2].length + 31 / 32) > s:
                stor[s] = 0
                s = s + 1
                continue 
        stor2[idx].field_768 = 0
        if 31 < stor[(4 * idx) + ('name', 'stor2', 2) + 3].length:
            mem[0] = (4 * idx) + sha3(2) + 3
            s = sha3((4 * idx) + sha3(2) + 3)
            while sha3((4 * idx) + sha3(2) + 3) + (stor[(4 * idx) + ('name', 'stor2', 2) + 3].length + 31 / 32) > s:
                stor[s] = 0
                s = s + 1
                continue 
        idx = idx + 1
        continue 
    bool(sub_b72869b5.length) = 0
    uint255(sub_b72869b5.length.field_1) = 0
    Mask(248, 0, sub_b72869b5.length.field_8) = mem[ceil32(arg1.length) + 256 len 31]
    idx = 0
    while sub_b72869b5.length + 31 / 32 > idx:
        sub_b72869b5[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[ceil32(arg1.length) + 384] = mem[ceil32(arg1.length) + 414 len 2]
    return Array(len=2, data=mem[ceil32(arg1.length) + 384])
}



}
