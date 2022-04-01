contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
array of uint256 stor2;
array of uint256 stor3;

function _fallback() {
    mem[96 len -1363] = code.data[1728 len -1363]
    mem[64] = -1267
    stor0 = msg.sender
    stor1 = msg.sender
    stor2.length = mem[mem[96] + 96]
    mem[0] = 2
    if not mem[mem[96] + 96]:
        idx = 0
        while stor2.length > idx:
            stor2[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = mem[96] + 128
        while mem[96] + (32 * mem[mem[96] + 96]) + 128 > idx:
            stor2[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[mem[96] + 96]) + 31) >> 5
        while stor2.length > idx:
            stor2[idx] = 0
            idx = idx + 1
            continue 
    stor3.length = mem[mem[128] + 96]
    if not mem[mem[128] + 96]:
        idx = 0
        while stor3.length > idx:
            stor3[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = mem[128] + 128
        while mem[128] + (32 * mem[mem[128] + 96]) + 128 > idx:
            stor3[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[mem[128] + 96]) + 31) >> 5
        while stor3.length > idx:
            stor3[idx] = 0
            idx = idx + 1
            continue 
    return code.data[365 len 1363]
}



// =====================  Runtime code  =====================


address stor0;
address owner;
array of uint256 stor2;
array of uint256 stor3;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) {
    require msg.sender == stor0
    stor0 = arg1
}

function getFee(string arg1) {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    s = 0
    s = 0
    idx = 97
    while idx < arg1.length + 97:
        if mem[idx + 31 len 1] < 128:
            s = mem[idx + 31 len 1]
            s = s + 1
            idx = idx + 1
            continue 
        if mem[idx + 31 len 1] < 224:
            s = mem[idx + 31 len 1]
            s = s + 1
            idx = idx + 2
            continue 
        if mem[idx + 31 len 1] < 240:
            s = mem[idx + 31 len 1]
            s = s + 1
            idx = idx + 3
            continue 
        if mem[idx + 31 len 1] < 248:
            s = mem[idx + 31 len 1]
            s = s + 1
            idx = idx + 4
            continue 
        if mem[idx + 31 len 1] >= 252:
            s = mem[idx + 31 len 1]
            s = s + 1
            idx = idx + 6
            continue 
        s = mem[idx + 31 len 1]
        s = s + 1
        idx = idx + 5
        continue 
    idx = 0
    while idx < stor2.length:
        mem[0] = 2
        if s > stor2[idx]:
            idx = idx + 1
            continue 
        require idx < stor3.length
        return stor3[idx]
    if stor3.length - 1 < stor3.length:
        return stor3[stor3.length]
    revert
}

function sub_375fede5(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == stor0
    stor2.length = arg1.length
    if not arg1.length:
        idx = 0
        while stor2.length > idx:
            stor2[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            stor2[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while stor2.length > idx:
            stor2[idx] = 0
            idx = idx + 1
            continue 
    stor3.length = arg2.length
    if not arg2.length:
        idx = 0
        while stor3.length > idx:
            stor3[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * arg1.length) + 160
        while (32 * arg1.length) + (32 * arg2.length) + 160 > idx:
            stor3[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
        while stor3.length > idx:
            stor3[idx] = 0
            idx = idx + 1
            continue 
}



}
