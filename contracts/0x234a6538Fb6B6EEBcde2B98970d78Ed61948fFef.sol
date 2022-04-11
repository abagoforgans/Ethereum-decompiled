contract main {


// =======================  Init code  ======================


#
#  - _fallback()
#


// =====================  Runtime code  =====================


#
#  - sub_e5d1d902(?)
#
array of uint256 stor1;
uint256 stor2;
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
    if arg1 > stor2:
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
    if not stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]:
        if stor3 >= block.timestamp:
            if arg2:
                if arg2 <= stor2:
                    stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]] = 1
                    stor1[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))] = arg2
                    require arg2 < stor5.length
                    stor5[arg2]++
                    stor6++
}

function sub_9611cc84(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 0
    mem[ceil32(arg1.length) + 160] = 0
    mem[ceil32(arg1.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 192] = 7
    _126 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 32])
    require stor1[_126] < stor4.length
    require stor1[_126] < stor5.length
    mem[ceil32(arg1.length) + 288] = uint256(stor4[stor1[_126]].field_0)
    idx = ceil32(arg1.length) + 288
    s = 0
    while ceil32(arg1.length) + stor4[stor1[_126]].length + 256 > idx:
        mem[idx + 32] = uint256(stor4[stor1[_126] + s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg1.length) + ceil32(stor4[stor1[_126]].length) + 480 len ceil32(stor4[stor1[_126]].length)] = mem[ceil32(arg1.length) + 288 len ceil32(stor4[stor1[_126]].length)]
    if stor3 <= block.timestamp:
        mem[stor4[stor1[_126]].length + ceil32(arg1.length) + ceil32(stor4[stor1[_126]].length) + 480] = 13
        mem[stor4[stor1[_126]].length + ceil32(arg1.length) + ceil32(stor4[stor1[_126]].length) + 512] = Mask(104, 0, 'voting closed')
    else:
        mem[stor4[stor1[_126]].length + ceil32(arg1.length) + ceil32(stor4[stor1[_126]].length) + 480] = 11
        mem[stor4[stor1[_126]].length + ceil32(arg1.length) + ceil32(stor4[stor1[_126]].length) + 512] = Mask(88, 0, 'voting open')
    return bool(stor[_126]), 
           Array(len=stor4[stor1[_126]].length, data=mem[ceil32(arg1.length) + 288 len ceil32(stor4[stor1[_126]].length)], mem[ceil32(arg1.length) + (2 * ceil32(stor4[stor1[_126]].length)) + 480 len stor4[stor1[_126]].length + -ceil32(stor4[stor1[_126]].length) + 64]),
           stor5[stor1[_126]],
           stor6,
           stor4[stor1[_126]].length + 192
}



}
