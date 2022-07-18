contract main {




// =====================  Runtime code  =====================


#
#  - sub_4367e45e(?)
#  - sub_5fff88c8(?)
#
mapping of struct sub_8f13b2f5;
address resolverAddress;

function resolver() payable {
    return resolverAddress
}

function sub_8f13b2f5(?) payable {
    require calldata.size - 4 >= 32
    return sub_8f13b2f5[arg1].field_0, sub_8f13b2f5[arg1].field_256
}

function _fallback() payable {
    revert
}

function sub_7cac39cf(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if ('cd', 4).length:
        mem[128 len 32 * ('cd', 4).length] = code.data[10688 len 32 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        if 0 == sub_8f13b2f5[cd[((32 * idx) + cd[4] + 36)]].field_256:
            if block.number <= cd[36]:
                revert with 0, 'Payment is not finalized'
        else:
            require idx < ('cd', 4).length
            if block.number <= sub_8f13b2f5[cd[((32 * idx) + cd[4] + 36)]].field_256:
                revert with 0, 'Payment is not finalized'
        require idx < ('cd', 4).length
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        mem[32] = 0
        require idx < ('cd', 4).length
        mem[(32 * idx) + 128] = sub_8f13b2f5[cd[((32 * idx) + cd[4] + 36)]].field_0
        idx = idx + 1
        continue 
    mem[(32 * ('cd', 4).length) + 192 len floor32(('cd', 4).length)] = mem[128 len floor32(('cd', 4).length)]
    return Array(len=('cd', 4).length, data=mem[128 len floor32(('cd', 4).length)], mem[(32 * ('cd', 4).length) + floor32(('cd', 4).length) + 192 len (32 * ('cd', 4).length) - floor32(('cd', 4).length)]), 
}



}
