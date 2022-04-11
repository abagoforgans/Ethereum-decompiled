contract main {


// =======================  Init code  ======================


#
#  - _fallback()
#


// =====================  Runtime code  =====================


#
#  - sub_9611cc84(?)
#
array of struct stor0;
array of struct stor1;
array of uint8 stor2;
uint256 stor3;
array of struct stor4;
array of uint256 stor5;
uint256 stor6;
mapping of uint8 stor99;

function _fallback() payable {
    revert
}

function sub_0af01081(?) {
    if not arg1:
        return 96, 0, 0, 0
    if arg1 > stor2.length:
        return 96, 0, 0, 0
    require arg1 < stor4.length
    require arg1 < stor5.length
    mem[160] = uint256(stor4[arg1].field_0)
    idx = 160
    s = 0
    while stor4[arg1].length + 128 > idx:
        mem[idx + 32] = uint256(stor4[arg1 + s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor4[arg1].length, data=mem[160 len stor4[arg1].length]), stor5[arg1], stor6
}

function sub_9c63d42e(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 7
    if stor2[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))]:
        mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
        mem[arg1.length + ceil32(arg1.length) + 128] = 7
        if not stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]:
            if stor3 >= block.timestamp:
                if arg2:
                    if arg2 <= stor2.length:
                        stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]] = 1
                        uint256(stor1[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_0) = arg2
                        require arg2 < stor5.length
                        stor5[arg2]++
                        stor6++
}

function sub_e5d1d902(?) {
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    if stor3 <= block.timestamp:
        mem[192] = 13
        mem[224] = 'voting closed'
        mem[256] = stor0.length
        mem[0] = 0
        mem[288] = uint256(stor0.field_0)
        idx = 288
        s = 0
        while stor0.length + 256 > idx:
            mem[idx + 32] = uint256(stor0[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[64] = ceil32(stor0.length) + ceil32(stor1.length) + 320
        mem[ceil32(stor0.length) + 288] = stor1.length
        mem[ceil32(stor0.length) + 320] = uint256(stor1.field_0)
        idx = ceil32(stor0.length) + 320
        s = 0
        while ceil32(stor0.length) + stor1.length + 288 > idx:
            mem[idx + 32] = uint256(stor1[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(stor0.length) + ceil32(stor1.length) + 416] = stor6
        mem[ceil32(stor0.length) + ceil32(stor1.length) + 448] = stor2.length
        mem[ceil32(stor0.length) + ceil32(stor1.length) + 320] = 160
        mem[ceil32(stor0.length) + ceil32(stor1.length) + 480] = stor0.length
        mem[ceil32(stor0.length) + ceil32(stor1.length) + 512 len ceil32(stor0.length)] = mem[288 len ceil32(stor0.length)]
        mem[ceil32(stor0.length) + ceil32(stor1.length) + 352] = stor0.length + 192
        mem[stor0.length + ceil32(stor0.length) + ceil32(stor1.length) + 512] = stor1.length
        mem[stor0.length + ceil32(stor0.length) + ceil32(stor1.length) + 544 len ceil32(stor1.length)] = mem[ceil32(stor0.length) + 320 len ceil32(stor1.length)]
        if not stor1.length % 32:
            mem[stor1.length + stor0.length + ceil32(stor0.length) + ceil32(stor1.length) + 544] = 13
            mem[stor1.length + stor0.length + ceil32(stor0.length) + ceil32(stor1.length) + 576] = Mask(104, 0, 'voting closed')
            return Array(len=stor0.length, data=mem[288 len ceil32(stor0.length)], mem[(2 * ceil32(stor0.length)) + ceil32(stor1.length) + 512 len stor1.length + stor0.length + -ceil32(stor0.length) + 96]), 
                   stor0.length + 192,
                   stor1.length + stor0.length + 224,
                   stor6,
                   stor2.length
        mem[floor32(stor1.length) + stor0.length + ceil32(stor0.length) + ceil32(stor1.length) + 544] = mem[floor32(stor1.length) + stor0.length + ceil32(stor0.length) + ceil32(stor1.length) + -stor1.length % 32 + 576 len stor1.length % 32]
        mem[floor32(stor1.length) + stor0.length + ceil32(stor0.length) + ceil32(stor1.length) + 576] = 13
        mem[floor32(stor1.length) + stor0.length + ceil32(stor0.length) + ceil32(stor1.length) + 608] = Mask(104, 0, 'voting closed')
    else:
        mem[192] = 11
        mem[224] = 'voting open'
        mem[256] = stor0.length
        mem[0] = 0
        mem[288] = uint256(stor0.field_0)
        idx = 288
        s = 0
        while stor0.length + 256 > idx:
            mem[idx + 32] = uint256(stor0[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[64] = ceil32(stor0.length) + ceil32(stor1.length) + 320
        mem[ceil32(stor0.length) + 288] = stor1.length
        mem[ceil32(stor0.length) + 320] = uint256(stor1.field_0)
        idx = ceil32(stor0.length) + 320
        s = 0
        while ceil32(stor0.length) + stor1.length + 288 > idx:
            mem[idx + 32] = uint256(stor1[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(stor0.length) + ceil32(stor1.length) + 416] = stor6
        mem[ceil32(stor0.length) + ceil32(stor1.length) + 448] = stor2.length
        mem[ceil32(stor0.length) + ceil32(stor1.length) + 320] = 160
        mem[ceil32(stor0.length) + ceil32(stor1.length) + 480] = stor0.length
        mem[ceil32(stor0.length) + ceil32(stor1.length) + 512 len ceil32(stor0.length)] = mem[288 len ceil32(stor0.length)]
        mem[ceil32(stor0.length) + ceil32(stor1.length) + 352] = stor0.length + 192
        mem[stor0.length + ceil32(stor0.length) + ceil32(stor1.length) + 512] = stor1.length
        mem[stor0.length + ceil32(stor0.length) + ceil32(stor1.length) + 544 len ceil32(stor1.length)] = mem[ceil32(stor0.length) + 320 len ceil32(stor1.length)]
        if not stor1.length % 32:
            mem[stor1.length + stor0.length + ceil32(stor0.length) + ceil32(stor1.length) + 544] = 11
            mem[stor1.length + stor0.length + ceil32(stor0.length) + ceil32(stor1.length) + 576] = Mask(88, 0, 'voting open')
            return Array(len=stor0.length, data=mem[288 len ceil32(stor0.length)], mem[(2 * ceil32(stor0.length)) + ceil32(stor1.length) + 512 len stor1.length + stor0.length + -ceil32(stor0.length) + 96]), 
                   stor0.length + 192,
                   stor1.length + stor0.length + 224,
                   stor6,
                   stor2.length
        mem[floor32(stor1.length) + stor0.length + ceil32(stor0.length) + ceil32(stor1.length) + 544] = mem[floor32(stor1.length) + stor0.length + ceil32(stor0.length) + ceil32(stor1.length) + -stor1.length % 32 + 576 len stor1.length % 32]
        mem[floor32(stor1.length) + stor0.length + ceil32(stor0.length) + ceil32(stor1.length) + 576] = 11
        mem[floor32(stor1.length) + stor0.length + ceil32(stor0.length) + ceil32(stor1.length) + 608] = Mask(88, 0, 'voting open')
    return Array(len=stor0.length, data=mem[288 len ceil32(stor0.length)], mem[(2 * ceil32(stor0.length)) + ceil32(stor1.length) + 512 len floor32(stor1.length) + stor0.length + -ceil32(stor0.length) + 128]), 
           stor0.length + 192,
           floor32(stor1.length) + stor0.length + 256,
           stor6,
           stor2.length
}



}
