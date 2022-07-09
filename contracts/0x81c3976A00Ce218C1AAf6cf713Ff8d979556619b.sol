contract main {




// =====================  Runtime code  =====================


address owner;
uint256 sub_72cf8e1b;
array of struct stor2;

function sub_72cf8e1b(?) {
    return sub_72cf8e1b
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getArticle(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < sub_72cf8e1b
    if stor2[arg1].field_256:
        mem[320] = stor2[arg1][1].field_0
        idx = 320
        s = 0
        while (32 * stor2[arg1].field_256) + 288 > idx:
            mem[idx + 32] = stor2[arg1][s + 1].field_256
            idx = idx + 32
            s = s + 1
            continue 
    if stor2[arg1].field_512:
        mem[(32 * stor2[arg1].field_256) + 352] = stor2[arg1][2].field_0
        idx = (32 * stor2[arg1].field_256) + 352
        s = 0
        while (32 * stor2[arg1].field_256) + (32 * stor2[arg1].field_512) + 320 > idx:
            mem[idx + 32] = stor2[arg1][s + 2].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * stor2[arg1].field_256) + (32 * stor2[arg1].field_512) + 480 len floor32(stor2[arg1].field_256)] = mem[320 len floor32(stor2[arg1].field_256)]
    mem[(64 * stor2[arg1].field_256) + (32 * stor2[arg1].field_512) + 480] = stor2[arg1].field_512
    mem[(64 * stor2[arg1].field_256) + (32 * stor2[arg1].field_512) + 512 len floor32(stor2[arg1].field_512)] = mem[(32 * stor2[arg1].field_256) + 352 len floor32(stor2[arg1].field_512)]
    return stor2[arg1].field_0, 
           Array(len=stor2[arg1].field_256, data=mem[320 len floor32(stor2[arg1].field_256)], mem[(32 * stor2[arg1].field_256) + (32 * stor2[arg1].field_512) + floor32(stor2[arg1].field_256) + 480 len (32 * stor2[arg1].field_256) + (32 * stor2[arg1].field_512) + -floor32(stor2[arg1].field_256) + 32]),
           (32 * stor2[arg1].field_256) + 128
}

function sub_fd5a5307(?) {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    require msg.sender == owner
    sub_72cf8e1b++
    mem[224 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 224] = arg3.length
    mem[(32 * arg2.length) + 256 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + 256] = 0
    stor2[stor1].field_0 = arg1
    stor2[stor1].field_256 = arg2.length
    if not arg2.length:
        idx = 0
        while stor2[stor1].field_256 > idx:
            stor2[stor1][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 224
        while (32 * arg2.length) + 224 > idx:
            stor2[stor1][s + 1].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
        while stor2[stor1].field_256 > idx:
            stor2[stor1][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    stor2[stor1].field_512 = arg3.length
    if not arg3.length:
        idx = 0
        while stor2[stor1].field_512 > idx:
            stor2[stor1][idx + 2].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * arg2.length) + 256
        while (32 * arg2.length) + (32 * arg3.length) + 256 > idx:
            stor2[stor1][s + 2].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg3.length) + 31) >> 5
        while stor2[stor1].field_512 > idx:
            stor2[stor1][idx + 2].field_0 = 0
            idx = idx + 1
            continue 
    return sub_72cf8e1b
}



}
