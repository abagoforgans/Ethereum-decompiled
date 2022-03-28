contract main {


// =======================  Init code  ======================


address stor3;

function _fallback() {
    stor3 = msg.sender
    return code.data[57 len 1781]
}



// =====================  Runtime code  =====================


#
#  - data()
#
array of uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
address stor3;
array of uint256 stor4;
array of uint256 stor5;

function kill() {
    if stor3 != msg.sender:
    selfdestruct(stor3)
}

function _fallback() payable {
    revert
}

function purge() {
    require stor3 == msg.sender
    stor4.length = 0
    idx = 0
    while stor4.length > idx:
        stor4[idx] = 0
        idx = idx + 1
        continue 
    stor5.length = 0
    idx = 0
    while stor5.length > idx:
        stor5[idx] = 0
        idx = idx + 1
        continue 
}

function sub_1d37f4ac(?) {
    stor0.length++
    if not stor0.length <= stor0.length + 1:
        idx = stor0.length + 1
        while stor0.length > idx:
            stor0[idx] = 0
            idx = idx + 1
            continue 
    stor0[stor0.length] = arg1
    stor2.length++
    if not stor2.length <= stor2.length + 1:
        idx = stor2.length + 1
        while stor2.length > idx:
            stor2[idx] = 0
            idx = idx + 1
            continue 
    stor2[stor2.length] = arg2
    stor1.length++
    if not stor1.length <= stor1.length + 1:
        idx = stor1.length + 1
        while stor1.length > idx:
            stor1[idx] = 0
            idx = idx + 1
            continue 
    stor1[stor1.length] = arg3
}

function sub_8b0d8b12(?) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg2.length == stor0.length
    stor4.length++
    if not stor4.length <= stor4.length + 1:
        idx = stor4.length + 1
        while stor4.length > idx:
            stor4[idx] = 0
            idx = idx + 1
            continue 
    stor4[stor4.length] = arg1
    idx = 0
    while idx < arg2.length:
        stor5.length++
        if not stor5.length <= stor5.length + 1:
            s = stor5.length + sha3(5) + 1
            while sha3(5) + stor5.length > s:
                stor[s] = 0
                s = s + 1
                continue 
        mem[0] = 5
        require idx < arg2.length
        stor5[stor5.length] = mem[(32 * idx) + 128]
        idx = idx + 1
        continue 
}



}
