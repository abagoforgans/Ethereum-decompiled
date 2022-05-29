contract main {




// =====================  Runtime code  =====================


array of uint256 sub_9b342257;
array of uint256 stor99;
array of uint256 stor29102676481673041902632991033461445430619272659676223336789171408008386403024;

function sub_9b342257(?) {
    require arg1 - 1 < sub_9b342257.length
    mem[128] = stor[sha3((3 * arg1) + ('name', 'sub_9b342257', 2) - 2)].field_0
    idx = 128
    s = 0
    while stor[(3 * arg1) + ('name', 'sub_9b342257', 2) - 2].length + 96 > idx:
        mem[idx + 32] = stor[s + sha3((3 * arg1) + ('name', 'sub_9b342257', 2) - 2)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor[(3 * arg1) + ('name', 'sub_9b342257', 2) - 2].length, data=mem[128 len stor[(3 * arg1) + ('name', 'sub_9b342257', 2) - 2].length]), 
           sub_9b342257[arg1].field_0
}

function _fallback() payable {
    revert
}

function sub_1550930f(?) {
    require arg1 - 1 < sub_9b342257.length
    sub_9b342257[arg1].field_0 += arg2
}

function sub_08741b15(?) {
    sub_9b342257.length++
    sub_9b342257[sub_9b342257.length].field_0 = sub_9b342257.length + 1
    stor[sha3((3 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf)][] = Array(len=arg1.length, data=arg1[all])
    stor4057[stor2.length] = 0
    return (sub_9b342257.length + 1)
}



}
