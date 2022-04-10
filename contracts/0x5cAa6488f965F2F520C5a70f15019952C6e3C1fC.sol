contract main {


// =======================  Init code  ======================


#
#  - _fallback()
#


// =====================  Runtime code  =====================


#
#  - getMenu()
#
address stor0;
array of uint256 stor4;
array of uint256 stor5;
array of uint256 stor99;

function kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}

function getSandwichInfoCaloriesPrice(uint256 arg1) {
    mem[96] = 0
    mem[128] = 0
    require arg1 >= 100
    require arg1 <= 104
    require arg1 < 5
    mem[160] = stor[(6 * arg1) + 2].length
    mem[192] = uint256(stor[sha3((6 * arg1) + 2)])
    idx = 192
    s = 0
    while stor[(6 * arg1) + 2].length + 160 > idx:
        mem[idx + 32] = uint256(stor[s + sha3((6 * arg1) + 2) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor[(6 * arg1) + 2].length) + ceil32(stor[(6 * arg1) + 3].length) + 224
    mem[ceil32(stor[(6 * arg1) + 2].length) + 192] = stor[(6 * arg1) + 3].length
    mem[0] = (6 * arg1) + 3
    mem[ceil32(stor[(6 * arg1) + 2].length) + 224] = uint256(stor[sha3((6 * arg1) + 3)])
    idx = ceil32(stor[(6 * arg1) + 2].length) + 224
    s = 0
    while ceil32(stor[(6 * arg1) + 2].length) + stor[(6 * arg1) + 3].length + 192 > idx:
        mem[idx + 32] = uint256(stor[s + sha3((6 * arg1) + 3) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor[(6 * arg1) + 2].length) + ceil32(stor[(6 * arg1) + 3].length) + 288] = stor4[arg1]
    mem[ceil32(stor[(6 * arg1) + 2].length) + ceil32(stor[(6 * arg1) + 3].length) + 320] = stor5[arg1]
    mem[ceil32(stor[(6 * arg1) + 2].length) + ceil32(stor[(6 * arg1) + 3].length) + 224] = 128
    mem[ceil32(stor[(6 * arg1) + 2].length) + ceil32(stor[(6 * arg1) + 3].length) + 352] = stor[(6 * arg1) + 2].length
    if not stor[(6 * arg1) + 2].length:
        mem[ceil32(stor[(6 * arg1) + 2].length) + ceil32(stor[(6 * arg1) + 3].length) + 256] = stor[(6 * arg1) + 2].length + 160
        mem[stor[(6 * arg1) + 2].length + ceil32(stor[(6 * arg1) + 2].length) + ceil32(stor[(6 * arg1) + 3].length) + 384] = stor[(6 * arg1) + 3].length
        if not stor[(6 * arg1) + 3].length:
            if not stor[(6 * arg1) + 3].length % 32:
                return Array(len=stor[(6 * arg1) + 2].length, data=mem[ceil32(stor[(6 * arg1) + 2].length) + ceil32(stor[(6 * arg1) + 3].length) + 384 len stor[(6 * arg1) + 3].length + stor[(6 * arg1) + 2].length + 32]), 
                       stor[(6 * arg1) + 2].length + 160,
                       stor4[arg1],
                       stor5[arg1]
            mem[floor32(stor[(6 * arg1) + 3].length) + stor[(6 * arg1) + 2].length + ceil32(stor[(6 * arg1) + 2].length) + ceil32(stor[(6 * arg1) + 3].length) + 416] = mem[floor32(stor[(6 * arg1) + 3].length) + stor[(6 * arg1) + 2].length + ceil32(stor[(6 * arg1) + 2].length) + ceil32(stor[(6 * arg1) + 3].length) + -stor[(6 * arg1) + 3].length % 32 + 448 len stor[(6 * arg1) + 3].length % 32]
            return Array(len=stor[(6 * arg1) + 2].length, data=mem[ceil32(stor[(6 * arg1) + 2].length) + ceil32(stor[(6 * arg1) + 3].length) + 384 len floor32(stor[(6 * arg1) + 3].length) + stor[(6 * arg1) + 2].length + 64]), 
                   stor[(6 * arg1) + 2].length + 160,
                   stor4[arg1],
                   stor5[arg1]
        mem[stor[(6 * arg1) + 2].length + ceil32(stor[(6 * arg1) + 2].length) + ceil32(stor[(6 * arg1) + 3].length) + 416] = mem[ceil32(stor[(6 * arg1) + 2].length) + 224]
        mem[stor[(6 * arg1) + 2].length + ceil32(stor[(6 * arg1) + 2].length) + ceil32(stor[(6 * arg1) + 3].length) + 448 len floor32(stor[(6 * arg1) + 3].length - 1)] = mem[ceil32(stor[(6 * arg1) + 2].length) + 256 len floor32(stor[(6 * arg1) + 3].length - 1)]
        if not stor[(6 * arg1) + 3].length % 32:
            return Array(len=stor[(6 * arg1) + 2].length, data=mem[ceil32(stor[(6 * arg1) + 2].length) + ceil32(stor[(6 * arg1) + 3].length) + 384 len stor[(6 * arg1) + 3].length + stor[(6 * arg1) + 2].length + 32]), 
                   stor[(6 * arg1) + 2].length + 160,
                   stor4[arg1],
                   stor5[arg1]
        mem[floor32(stor[(6 * arg1) + 3].length) + stor[(6 * arg1) + 2].length + ceil32(stor[(6 * arg1) + 2].length) + ceil32(stor[(6 * arg1) + 3].length) + 416] = mem[floor32(stor[(6 * arg1) + 3].length) + stor[(6 * arg1) + 2].length + ceil32(stor[(6 * arg1) + 2].length) + ceil32(stor[(6 * arg1) + 3].length) + -stor[(6 * arg1) + 3].length % 32 + 448 len stor[(6 * arg1) + 3].length % 32]
        return Array(len=stor[(6 * arg1) + 2].length, data=mem[ceil32(stor[(6 * arg1) + 2].length) + ceil32(stor[(6 * arg1) + 3].length) + 384 len stor[(6 * arg1) + 2].length + 32], mem[ceil32(stor[(6 * arg1) + 2].length) + 224], mem[ceil32(stor[(6 * arg1) + 2].length) + ceil32(stor[(6 * arg1) + 3].length) + stor[(6 * arg1) + 2].length + 448 len floor32(stor[(6 * arg1) + 3].length)]), 
               stor[(6 * arg1) + 2].length + 160,
               stor4[arg1],
               stor5[arg1]
    mem[ceil32(stor[(6 * arg1) + 2].length) + ceil32(stor[(6 * arg1) + 3].length) + 384] = mem[192]
    mem[ceil32(stor[(6 * arg1) + 2].length) + ceil32(stor[(6 * arg1) + 3].length) + 416 len floor32(stor[(6 * arg1) + 2].length - 1)] = mem[224 len floor32(stor[(6 * arg1) + 2].length - 1)]
    mem[ceil32(stor[(6 * arg1) + 2].length) + ceil32(stor[(6 * arg1) + 3].length) + 256] = stor[(6 * arg1) + 2].length + 160
    mem[stor[(6 * arg1) + 2].length + ceil32(stor[(6 * arg1) + 2].length) + ceil32(stor[(6 * arg1) + 3].length) + 384] = stor[(6 * arg1) + 3].length
    if stor[(6 * arg1) + 3].length:
        mem[stor[(6 * arg1) + 2].length + ceil32(stor[(6 * arg1) + 2].length) + ceil32(stor[(6 * arg1) + 3].length) + 416] = mem[ceil32(stor[(6 * arg1) + 2].length) + 224]
        mem[stor[(6 * arg1) + 2].length + ceil32(stor[(6 * arg1) + 2].length) + ceil32(stor[(6 * arg1) + 3].length) + 448 len floor32(stor[(6 * arg1) + 3].length - 1)] = mem[ceil32(stor[(6 * arg1) + 2].length) + 256 len floor32(stor[(6 * arg1) + 3].length - 1)]
    if not stor[(6 * arg1) + 3].length % 32:
        return Array(len=stor[(6 * arg1) + 2].length, data=mem[192], mem[ceil32(stor[(6 * arg1) + 2].length) + ceil32(stor[(6 * arg1) + 3].length) + 416 len stor[(6 * arg1) + 3].length + stor[(6 * arg1) + 2].length]), 
               stor[(6 * arg1) + 2].length + 160,
               stor4[arg1],
               stor5[arg1]
    mem[floor32(stor[(6 * arg1) + 3].length) + stor[(6 * arg1) + 2].length + ceil32(stor[(6 * arg1) + 2].length) + ceil32(stor[(6 * arg1) + 3].length) + 416] = mem[floor32(stor[(6 * arg1) + 3].length) + stor[(6 * arg1) + 2].length + ceil32(stor[(6 * arg1) + 2].length) + ceil32(stor[(6 * arg1) + 3].length) + -stor[(6 * arg1) + 3].length % 32 + 448 len stor[(6 * arg1) + 3].length % 32]
    return Array(len=stor[(6 * arg1) + 2].length, data=mem[192], mem[ceil32(stor[(6 * arg1) + 2].length) + ceil32(stor[(6 * arg1) + 3].length) + 416 len floor32(stor[(6 * arg1) + 3].length) + stor[(6 * arg1) + 2].length + 32]), 
           stor[(6 * arg1) + 2].length + 160,
           stor4[arg1],
           stor5[arg1]
}



}
