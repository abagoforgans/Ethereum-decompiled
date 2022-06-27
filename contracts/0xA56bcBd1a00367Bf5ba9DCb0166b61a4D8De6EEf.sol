contract main {




// =====================  Runtime code  =====================


#
#  - sub_4063d812(?)
#
address owner;
mapping of struct stor1;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function lookup(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1[arg1].field_1024:
        return 1
    else:
        return 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function revoke(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require stor1[arg1].field_1024
    require msg.sender == owner
    stor1[arg1].field_0 = 0
    if 31 < stor1[arg1].length:
        idx = 0
        while stor1[arg1].length + 31 / 32 > idx:
            stor1[arg1][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor1[arg1].field_256 = 0
    if 31 < stor1[arg1][1].length:
        idx = 0
        while stor1[arg1][1].length + 31 / 32 > idx:
            stor1[arg1][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    stor1[arg1].field_512 = 0
    if 31 < stor1[arg1][2].length:
        idx = 0
        while stor1[arg1][2].length + 31 / 32 > idx:
            stor1[arg1][idx + 2].field_0 = 0
            idx = idx + 1
            continue 
    stor1[arg1].field_768 = 0
    if 31 < stor1[arg1][3].length:
        idx = 0
        while stor1[arg1][3].length + 31 / 32 > idx:
            stor1[arg1][idx + 3].field_0 = 0
            idx = idx + 1
            continue 
    stor1[arg1].field_1024 = 0
    emit 0x22b3f549: arg1
}

function sub_fac49a3c(?) payable {
    require calldata.size - 4 >= 160
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    require msg.sender == owner
    require not stor1[arg1].field_1024
    stor1[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
    stor1[arg1][1][].field_0 = Array(len=arg3.length, data=arg3[all])
    stor1[arg1][2][].field_0 = Array(len=arg4.length, data=arg4[all])
    stor1[arg1][3][].field_0 = Array(len=arg5.length, data=arg5[all])
    stor1[arg1].field_1024 = block.number
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 224] = arg1
    emit 0x8cbec4f9: Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg5.length + 256 len -arg5.length + ceil32(arg5.length)]
}

function sub_4fe3bc3a(?) payable {
    require calldata.size - 4 >= 128
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require msg.sender == owner
    require arg1 != arg2
    stor1[arg2][].field_0 = Array(len=arg3.length, data=arg3[all])
    if 31 >= stor1[arg1][1].length:
        stor1[arg2].field_256 = stor1[arg1].field_256
        idx = 0
        while stor1[arg2][1].length + 31 / 32 > idx:
            stor1[arg2][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    else:
        stor1[arg2].field_256 = Mask(255, 1, (256 * not stor1[arg1].field_256) - 1 and stor1[arg1].field_256) + 1
        if not Mask(255, 1, (256 * not stor1[arg1].field_256) - 1 and stor1[arg1].field_256):
            idx = 0
            while stor1[arg2][1].length + 31 / 32 > idx:
                stor1[arg2][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while stor1[arg1][1].length + 31 / 32 > idx:
                stor1[arg2][s + 1].field_0 = stor1[arg1][idx + 1].field_0
                s = s + 1
                idx = idx + 1
                continue 
            idx = stor1[arg1][1].length + 31 / 32
            while stor1[arg2][1].length + 31 / 32 > idx:
                stor1[arg2][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
    if 31 >= stor1[arg1][2].length:
        stor1[arg2].field_512 = stor1[arg1].field_512
        idx = 0
        while stor1[arg2][2].length + 31 / 32 > idx:
            stor1[arg2][idx + 2].field_0 = 0
            idx = idx + 1
            continue 
    else:
        stor1[arg2].field_512 = Mask(255, 1, (256 * not stor1[arg1].field_512) - 1 and stor1[arg1].field_512) + 1
        if not Mask(255, 1, (256 * not stor1[arg1].field_512) - 1 and stor1[arg1].field_512):
            idx = 0
            while stor1[arg2][2].length + 31 / 32 > idx:
                stor1[arg2][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while stor1[arg1][2].length + 31 / 32 > idx:
                stor1[arg2][s + 2].field_0 = stor1[arg1][idx + 2].field_0
                s = s + 1
                idx = idx + 1
                continue 
            idx = stor1[arg1][2].length + 31 / 32
            while stor1[arg2][2].length + 31 / 32 > idx:
                stor1[arg2][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
    stor1[arg2][3][].field_0 = Array(len=arg4.length, data=arg4[all])
    stor1[arg2].field_1024 = stor1[arg1].field_1024
    require msg.sender == owner
    stor1[arg1].field_0 = 0
    if 31 < stor1[arg1].length:
        idx = 0
        while stor1[arg1].length + 31 / 32 > idx:
            stor1[arg1][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor1[arg1].field_256 = 0
    if 31 < stor1[arg1][1].length:
        idx = 0
        while stor1[arg1][1].length + 31 / 32 > idx:
            stor1[arg1][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    stor1[arg1].field_512 = 0
    if 31 < stor1[arg1][2].length:
        idx = 0
        while stor1[arg1][2].length + 31 / 32 > idx:
            stor1[arg1][idx + 2].field_0 = 0
            idx = idx + 1
            continue 
    stor1[arg1].field_768 = 0
    if 31 < stor1[arg1][3].length:
        idx = 0
        while stor1[arg1][3].length + 31 / 32 > idx:
            stor1[arg1][idx + 3].field_0 = 0
            idx = idx + 1
            continue 
    stor1[arg1].field_1024 = 0
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = arg1
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 192] = arg2
    emit 0x73df0525: Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length) + 32]
}



}
