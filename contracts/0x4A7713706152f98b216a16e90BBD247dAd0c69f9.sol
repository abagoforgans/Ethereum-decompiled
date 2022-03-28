contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
address stor3;

function _fallback() {
    mem[96 len -1627] = code.data[2012 len -1627]
    mem[64] = -1531
    stor3 = msg.sender
    stor0.length = mem[mem[96] + 96]
    mem[0] = 0
    if not mem[mem[96] + 96]:
        idx = 0
        while stor0.length > idx:
            stor0[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = mem[96] + 128
        while mem[96] + (32 * mem[mem[96] + 96]) + 128 > idx:
            stor0[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[mem[96] + 96]) + 31) >> 5
        while stor0.length > idx:
            stor0[idx] = 0
            idx = idx + 1
            continue 
    stor1.length = mem[mem[160] + 96]
    if not mem[mem[160] + 96]:
        idx = 0
        while stor1.length > idx:
            stor1[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = mem[160] + 128
        while mem[160] + (32 * mem[mem[160] + 96]) + 128 > idx:
            stor1[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[mem[160] + 96]) + 31) >> 5
        while stor1.length > idx:
            stor1[idx] = 0
            idx = idx + 1
            continue 
    stor2.length = mem[mem[128] + 96]
    if not mem[mem[128] + 96]:
        idx = 0
        while stor2.length > idx:
            stor2[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = mem[128] + 128
        while mem[128] + (32 * mem[mem[128] + 96]) + 128 > idx:
            stor2[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[mem[128] + 96]) + 31) >> 5
        while stor2.length > idx:
            stor2[idx] = 0
            idx = idx + 1
            continue 
    return code.data[385 len 1627]
}



// =====================  Runtime code  =====================


#
#  - data()
#
uint256 stor0;
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

function sub_8b0d8b12(?) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg2.length == stor0
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
