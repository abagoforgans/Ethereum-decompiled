contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
array of struct sub_36ab3d2b;

function sub_36ab3d2b(?) {
    require calldata.size - 4 >= 64
    require arg2 < sub_36ab3d2b[arg1].field_0
    return sub_36ab3d2b[arg1][arg2].field_0
}

function orderSubmitted(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor0[arg1])
}

function _fallback() payable {
    revert
}

function sub_fb4d3144(?) {
    require calldata.size - 4 >= 32
    if sub_36ab3d2b[arg1].field_0:
        mem[128] = sub_36ab3d2b[arg1].field_0
        idx = 128
        s = 0
        while (32 * sub_36ab3d2b[arg1].field_0) + 96 > idx:
            mem[idx + 32] = sub_36ab3d2b[arg1][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=sub_36ab3d2b[arg1].field_0, data=mem[128 len 32 * sub_36ab3d2b[arg1].field_0])
    mem[(32 * sub_36ab3d2b[arg1].field_0) + 128] = 32
    mem[(32 * sub_36ab3d2b[arg1].field_0) + 160] = sub_36ab3d2b[arg1].field_0
    mem[(32 * sub_36ab3d2b[arg1].field_0) + 192 len 32 * sub_36ab3d2b[arg1].field_0] = mem[128 len 32 * sub_36ab3d2b[arg1].field_0]
    return memory
      from (32 * sub_36ab3d2b[arg1].field_0) + 128
       len (96 * sub_36ab3d2b[arg1].field_0) + 64
}

function sub_5e32eba0(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if ('cd', 4).length < 18:
        revert with 0, 'INVALID_SIZE', 0
    require 17 < ('cd', 4).length
    require 0 < ('cd', 4).length
    if address(('cd', 4)[0]) != msg.sender:
        require 6 < ('cd', 4).length
        if address(('cd', 4)[6]) != msg.sender:
            revert with 0, 'UNAUTHORIZED_ONCHAIN_ORDER', 0
    require 0 < ('cd', 4).length
    require 1 < ('cd', 4).length
    require 2 < ('cd', 4).length
    require 3 < ('cd', 4).length
    require 4 < ('cd', 4).length
    require 5 < ('cd', 4).length
    require 6 < ('cd', 4).length
    require 7 < ('cd', 4).length
    require 8 < ('cd', 4).length
    require 9 < ('cd', 4).length
    require 10 < ('cd', 4).length
    require 11 < ('cd', 4).length
    require 12 < ('cd', 4).length
    require 13 < ('cd', 4).length
    require 14 < ('cd', 4).length
    require 15 < ('cd', 4).length
    require 16 < ('cd', 4).length
    if stor0[('cd', 4)[3]][('cd', 4)[4]][('cd', 4)[11]][('cd', 4)[5]][('cd', 4)[9]][uint64(('cd', 4)[0]) << 96][uint64(('cd', 4)[1]) << 96][uint64(('cd', 4)[2]) << 96][0][uint64(('cd', 4)[6]) << 96][uint64(('cd', 4)[7]) << 96][uint64(('cd', 4)[8]) << 96][uint64(('cd', 4)[15]) << 96][uint64(('cd', 4)[10]) << 96][0][0][0][0][0]:
        revert with 0, 'ALREADY_EXIST', 0
    stor0[('cd', 4)[3]][('cd', 4)[4]][('cd', 4)[11]][('cd', 4)[5]][('cd', 4)[9]][uint64(('cd', 4)[0]) << 96][uint64(('cd', 4)[1]) << 96][uint64(('cd', 4)[2]) << 96][0][uint64(('cd', 4)[6]) << 96][uint64(('cd', 4)[7]) << 96][uint64(('cd', 4)[8]) << 96][uint64(('cd', 4)[15]) << 96][uint64(('cd', 4)[10]) << 96][0][0][0][0][0] = 1
    sub_36ab3d2b[('cd', 4)[3]][('cd', 4)[4]][('cd', 4)[11]][('cd', 4)[5]][('cd', 4)[9]][uint64(('cd', 4)[0]) << 96][uint64(('cd', 4)[1]) << 96][uint64(('cd', 4)[2]) << 96][0][uint64(('cd', 4)[6]) << 96][uint64(('cd', 4)[7]) << 96][uint64(('cd', 4)[8]) << 96][uint64(('cd', 4)[15]) << 96][uint64(('cd', 4)[10]) << 96][0][0][0][0][0].field_0 = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while sub_36ab3d2b[('cd', 4)[3]][('cd', 4)[4]][('cd', 4)[11]][('cd', 4)[5]][('cd', 4)[9]][uint64(('cd', 4)[0]) << 96][uint64(('cd', 4)[1]) << 96][uint64(('cd', 4)[2]) << 96][0][uint64(('cd', 4)[6]) << 96][uint64(('cd', 4)[7]) << 96][uint64(('cd', 4)[8]) << 96][uint64(('cd', 4)[15]) << 96][uint64(('cd', 4)[10]) << 96][0][0][0][0][0].field_0 > idx:
            sub_36ab3d2b[('cd', 4)[3]][('cd', 4)[4]][('cd', 4)[11]][('cd', 4)[5]][('cd', 4)[9]][uint64(('cd', 4)[0]) << 96][uint64(('cd', 4)[1]) << 96][uint64(('cd', 4)[2]) << 96][0][uint64(('cd', 4)[6]) << 96][uint64(('cd', 4)[7]) << 96][uint64(('cd', 4)[8]) << 96][uint64(('cd', 4)[15]) << 96][uint64(('cd', 4)[10]) << 96][0][0][0][0][0][idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[4] + 36
        while cd[4] + (32 * ('cd', 4).length) + 36 > idx:
            sub_36ab3d2b[('cd', 4)[3]][('cd', 4)[4]][('cd', 4)[11]][('cd', 4)[5]][('cd', 4)[9]][uint64(('cd', 4)[0]) << 96][uint64(('cd', 4)[1]) << 96][uint64(('cd', 4)[2]) << 96][0][uint64(('cd', 4)[6]) << 96][uint64(('cd', 4)[7]) << 96][uint64(('cd', 4)[8]) << 96][uint64(('cd', 4)[15]) << 96][uint64(('cd', 4)[10]) << 96][0][0][0][0][0][s].field_0 = cd[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while sub_36ab3d2b[('cd', 4)[3]][('cd', 4)[4]][('cd', 4)[11]][('cd', 4)[5]][('cd', 4)[9]][uint64(('cd', 4)[0]) << 96][uint64(('cd', 4)[1]) << 96][uint64(('cd', 4)[2]) << 96][0][uint64(('cd', 4)[6]) << 96][uint64(('cd', 4)[7]) << 96][uint64(('cd', 4)[8]) << 96][uint64(('cd', 4)[15]) << 96][uint64(('cd', 4)[10]) << 96][0][0][0][0][0].field_0 > idx:
            sub_36ab3d2b[('cd', 4)[3]][('cd', 4)[4]][('cd', 4)[11]][('cd', 4)[5]][('cd', 4)[9]][uint64(('cd', 4)[0]) << 96][uint64(('cd', 4)[1]) << 96][uint64(('cd', 4)[2]) << 96][0][uint64(('cd', 4)[6]) << 96][uint64(('cd', 4)[7]) << 96][uint64(('cd', 4)[8]) << 96][uint64(('cd', 4)[15]) << 96][uint64(('cd', 4)[10]) << 96][0][0][0][0][0][idx].field_0 = 0
            idx = idx + 1
            continue 
    emit 0x4d86d38b: msg.sender, sha3(('cd', 4)[3], ('cd', 4)[4], ('cd', 4)[11], ('cd', 4)[5], ('cd', 4)[9], uint64(('cd', 4)[0]) << 96, uint64(('cd', 4)[1]) << 96, uint64(('cd', 4)[2]) << 96, 0, uint64(('cd', 4)[6]) << 96, uint64(('cd', 4)[7]) << 96, uint64(('cd', 4)[8]) << 96, uint64(('cd', 4)[15]) << 96, uint64(('cd', 4)[10]) << 96, 0, 0, 0, 0, 0)
}



}
