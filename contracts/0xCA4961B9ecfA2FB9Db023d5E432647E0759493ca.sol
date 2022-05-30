contract main {




// =====================  Runtime code  =====================


address stor0;
array of struct stor1;

function _fallback() payable {
    revert
}

function isWhiteListed(address arg1, address arg2) {
    if not stor1[address(arg1)].field_0:
        return 1
    if stor1[address(arg1)].field_0 > 0:
        idx = 0
        while idx < stor1[address(arg1)].field_0:
            require idx < stor1[address(arg1)].field_0
            if stor1[address(arg1)][idx].field_0 == arg2:
                return 1
            mem[0] = arg1
            mem[32] = 1
            idx = idx + 1
            continue 
        return 0
    else:
        return 0
}

function sub_05ea0de0(?) {
    require msg.sender == stor0
    require not stor1[address(cd[4])].field_0
    stor1[address(cd[4])].field_0 = ('cd', 36).length
    if not ('cd', 36).length:
        idx = 0
        while stor1[address(cd[4])].field_0 > idx:
            stor1[address(cd[4])][idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[36] + 36
        while cd[36] + (32 * ('cd', 36).length) + 36 > idx:
            stor1[address(cd[4])][s].field_0 = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 36).length) + 31) >> 5
        while stor1[address(cd[4])].field_0 > idx:
            stor1[address(cd[4])][idx].field_0 = 0
            idx = idx + 1
            continue 
    emit 0xe7350f93: address(cd[4]), sha3(call.data[cd[36] + 36 len 32 * ('cd', 36).length])
}

function sub_74f1e496(?) {
    require arg1
    require stor1[address(arg1)].field_0
    if not stor1[address(arg1)].field_0:
        mem[(32 * stor1[address(arg1)].field_0) + 128] = 32
        mem[(32 * stor1[address(arg1)].field_0) + 160] = stor1[address(arg1)].field_0
        mem[(32 * stor1[address(arg1)].field_0) + 192 len floor32(stor1[address(arg1)].field_0)] = mem[128 len floor32(stor1[address(arg1)].field_0)]
        return memory
          from (32 * stor1[address(arg1)].field_0) + 128
           len (96 * stor1[address(arg1)].field_0) + 64
    mem[128] = stor1[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * stor1[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = stor1[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor1[address(arg1)].field_0) + 192 len floor32(stor1[address(arg1)].field_0)] = mem[128 len floor32(stor1[address(arg1)].field_0)]
    return Array(len=stor1[address(arg1)].field_0, data=mem[128 len floor32(stor1[address(arg1)].field_0)], mem[(32 * stor1[address(arg1)].field_0) + floor32(stor1[address(arg1)].field_0) + 192 len (32 * stor1[address(arg1)].field_0) - floor32(stor1[address(arg1)].field_0)]), 
}



}
