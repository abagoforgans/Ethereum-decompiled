contract main {




// =====================  Runtime code  =====================


#
#  - sub_e5d1d902(?)
#
array of uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
array of struct stor5;
array of uint256 stor6;
uint256 stor7;
mapping of uint8 stor99;

function _fallback() payable {
    revert
}

function sub_0af01081(?) payable {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        return 96, 0, 0, 96, 0, 0, 96
    if arg1 > stor2:
        return 96, 0, 0, 96, 0, 0, 96
    require arg1 < stor5.length
    require arg1 < stor6.length
    mem[128] = uint256(stor5[arg1].field_0)
    idx = 128
    s = 0
    while stor5[arg1].length + 96 > idx:
        mem[idx + 32] = uint256(stor5[arg1 + s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor5[arg1].length, data=mem[128 len stor5[arg1].length]), stor6[arg1], stor7
}

function sub_9c63d42e(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 128] = 0
    mem[ceil32(arg1.length) + 160] = 0
    mem[ceil32(arg1.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 192] = 8
    if not stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]:
        if stor3 >= block.timestamp:
            if arg2:
                if arg2 <= stor2:
                    if stor7 < stor4:
                        require arg2 < stor6.length
                        stor6[arg2]++
                        stor7++
}

function sub_9611cc84(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 128] = 0
    mem[ceil32(arg1.length) + 160] = 0
    mem[ceil32(arg1.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 192] = 8
    _132 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 32])
    require stor1[_132] < stor5.length
    require stor1[_132] < stor6.length
    mem[ceil32(arg1.length) + 352] = uint256(stor5[stor1[_132]].field_0)
    idx = ceil32(arg1.length) + 352
    s = 0
    while ceil32(arg1.length) + stor5[stor1[_132]].length + 320 > idx:
        mem[idx + 32] = uint256(stor5[stor1[_132] + s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg1.length) + ceil32(stor5[stor1[_132]].length) + 544 len ceil32(stor5[stor1[_132]].length)] = mem[ceil32(arg1.length) + 352 len ceil32(stor5[stor1[_132]].length)]
    if stor3 <= block.timestamp:
        mem[stor5[stor1[_132]].length + ceil32(arg1.length) + ceil32(stor5[stor1[_132]].length) + 544] = 13
        mem[stor5[stor1[_132]].length + ceil32(arg1.length) + ceil32(stor5[stor1[_132]].length) + 576] = Mask(104, 0, 'voting closed')
    else:
        mem[stor5[stor1[_132]].length + ceil32(arg1.length) + ceil32(stor5[stor1[_132]].length) + 544] = 11
        mem[stor5[stor1[_132]].length + ceil32(arg1.length) + ceil32(stor5[stor1[_132]].length) + 576] = Mask(88, 0, 'voting open')
    return bool(stor[_132]), 
           Array(len=stor5[stor1[_132]].length, data=mem[ceil32(arg1.length) + 352 len ceil32(stor5[stor1[_132]].length)], mem[ceil32(arg1.length) + (2 * ceil32(stor5[stor1[_132]].length)) + 544 len stor5[stor1[_132]].length + -ceil32(stor5[stor1[_132]].length) + 64]),
           stor6[stor1[_132]],
           stor7,
           stor5[stor1[_132]].length + 192
}



}
