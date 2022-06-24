contract main {




// =====================  Runtime code  =====================


array of struct stor0;
array of struct stor1;
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
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
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
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 192] = 8
    _132 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 32])
    require uint256(stor1[_132].field_0) < stor5.length
    require uint256(stor1[_132].field_0) < stor6.length
    mem[ceil32(arg1.length) + 352] = uint256(stor5[uint256(stor1[_132].field_0)].field_0)
    idx = ceil32(arg1.length) + 352
    s = 0
    while ceil32(arg1.length) + stor5[uint256(stor1[_132].field_0)].length + 320 > idx:
        mem[idx + 32] = uint256(stor5[uint256(stor1[_132].field_0) + s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg1.length) + ceil32(stor5[uint256(stor1[_132].field_0)].length) + 544 len ceil32(stor5[uint256(stor1[_132].field_0)].length)] = mem[ceil32(arg1.length) + 352 len ceil32(stor5[uint256(stor1[_132].field_0)].length)]
    if stor3 <= block.timestamp:
        mem[stor5[uint256(stor1[_132].field_0)].length + ceil32(arg1.length) + ceil32(stor5[uint256(stor1[_132].field_0)].length) + 544] = 13
        mem[stor5[uint256(stor1[_132].field_0)].length + ceil32(arg1.length) + ceil32(stor5[uint256(stor1[_132].field_0)].length) + 576] = Mask(104, 0, 'voting closed')
    else:
        mem[stor5[uint256(stor1[_132].field_0)].length + ceil32(arg1.length) + ceil32(stor5[uint256(stor1[_132].field_0)].length) + 544] = 11
        mem[stor5[uint256(stor1[_132].field_0)].length + ceil32(arg1.length) + ceil32(stor5[uint256(stor1[_132].field_0)].length) + 576] = Mask(88, 0, 'voting open')
    return bool(stor[_132]), 
           Array(len=stor5[uint256(stor1[_132].field_0)].length, data=mem[ceil32(arg1.length) + 352 len ceil32(stor5[uint256(stor1[_132].field_0)].length)], mem[ceil32(arg1.length) + (2 * ceil32(stor5[uint256(stor1[_132].field_0)].length)) + 544 len stor5[uint256(stor1[_132].field_0)].length + -ceil32(stor5[uint256(stor1[_132].field_0)].length) + 64]),
           stor6[uint256(stor1[_132].field_0)],
           stor7,
           stor5[uint256(stor1[_132].field_0)].length + 192
}

function sub_e5d1d902(?) payable {
    if stor3 <= block.timestamp:
        mem[96] = 13
        mem[128] = 'voting closed'
        mem[160] = stor0.length
        mem[0] = 0
        mem[192] = uint256(stor0.field_0)
        idx = 192
        s = 0
        while stor0.length + 160 > idx:
            mem[idx + 32] = uint256(stor0[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[64] = ceil32(stor0.length) + ceil32(stor1.length) + 224
        mem[ceil32(stor0.length) + 192] = stor1.length
        mem[ceil32(stor0.length) + 224] = uint256(stor1.field_0)
        idx = ceil32(stor0.length) + 224
        s = 0
        while ceil32(stor0.length) + stor1.length + 192 > idx:
            mem[idx + 32] = uint256(stor1[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(stor0.length) + ceil32(stor1.length) + 320] = stor7
        mem[ceil32(stor0.length) + ceil32(stor1.length) + 352] = stor2
        mem[ceil32(stor0.length) + ceil32(stor1.length) + 224] = 160
        mem[ceil32(stor0.length) + ceil32(stor1.length) + 384] = stor0.length
        mem[ceil32(stor0.length) + ceil32(stor1.length) + 416 len ceil32(stor0.length)] = mem[192 len ceil32(stor0.length)]
        mem[ceil32(stor0.length) + ceil32(stor1.length) + 256] = stor0.length + 192
        mem[stor0.length + ceil32(stor0.length) + ceil32(stor1.length) + 416] = stor1.length
        mem[stor0.length + ceil32(stor0.length) + ceil32(stor1.length) + 448 len ceil32(stor1.length)] = mem[ceil32(stor0.length) + 224 len ceil32(stor1.length)]
        if not stor1.length % 32:
            mem[stor1.length + stor0.length + ceil32(stor0.length) + ceil32(stor1.length) + 448] = 13
            mem[stor1.length + stor0.length + ceil32(stor0.length) + ceil32(stor1.length) + 480] = Mask(104, 0, 'voting closed')
            return Array(len=stor0.length, data=mem[192 len ceil32(stor0.length)], mem[(2 * ceil32(stor0.length)) + ceil32(stor1.length) + 416 len stor1.length + stor0.length + -ceil32(stor0.length) + 96]), 
                   stor0.length + 192,
                   stor1.length + stor0.length + 224,
                   stor7,
                   stor2
        mem[floor32(stor1.length) + stor0.length + ceil32(stor0.length) + ceil32(stor1.length) + 448] = mem[floor32(stor1.length) + stor0.length + ceil32(stor0.length) + ceil32(stor1.length) + -stor1.length % 32 + 480 len stor1.length % 32]
        mem[floor32(stor1.length) + stor0.length + ceil32(stor0.length) + ceil32(stor1.length) + 480] = 13
        mem[floor32(stor1.length) + stor0.length + ceil32(stor0.length) + ceil32(stor1.length) + 512] = Mask(104, 0, 'voting closed')
    else:
        mem[96] = 11
        mem[128] = 'voting open'
        mem[160] = stor0.length
        mem[0] = 0
        mem[192] = uint256(stor0.field_0)
        idx = 192
        s = 0
        while stor0.length + 160 > idx:
            mem[idx + 32] = uint256(stor0[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[64] = ceil32(stor0.length) + ceil32(stor1.length) + 224
        mem[ceil32(stor0.length) + 192] = stor1.length
        mem[ceil32(stor0.length) + 224] = uint256(stor1.field_0)
        idx = ceil32(stor0.length) + 224
        s = 0
        while ceil32(stor0.length) + stor1.length + 192 > idx:
            mem[idx + 32] = uint256(stor1[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(stor0.length) + ceil32(stor1.length) + 320] = stor7
        mem[ceil32(stor0.length) + ceil32(stor1.length) + 352] = stor2
        mem[ceil32(stor0.length) + ceil32(stor1.length) + 224] = 160
        mem[ceil32(stor0.length) + ceil32(stor1.length) + 384] = stor0.length
        mem[ceil32(stor0.length) + ceil32(stor1.length) + 416 len ceil32(stor0.length)] = mem[192 len ceil32(stor0.length)]
        mem[ceil32(stor0.length) + ceil32(stor1.length) + 256] = stor0.length + 192
        mem[stor0.length + ceil32(stor0.length) + ceil32(stor1.length) + 416] = stor1.length
        mem[stor0.length + ceil32(stor0.length) + ceil32(stor1.length) + 448 len ceil32(stor1.length)] = mem[ceil32(stor0.length) + 224 len ceil32(stor1.length)]
        if not stor1.length % 32:
            mem[stor1.length + stor0.length + ceil32(stor0.length) + ceil32(stor1.length) + 448] = 11
            mem[stor1.length + stor0.length + ceil32(stor0.length) + ceil32(stor1.length) + 480] = Mask(88, 0, 'voting open')
            return Array(len=stor0.length, data=mem[192 len ceil32(stor0.length)], mem[(2 * ceil32(stor0.length)) + ceil32(stor1.length) + 416 len stor1.length + stor0.length + -ceil32(stor0.length) + 96]), 
                   stor0.length + 192,
                   stor1.length + stor0.length + 224,
                   stor7,
                   stor2
        mem[floor32(stor1.length) + stor0.length + ceil32(stor0.length) + ceil32(stor1.length) + 448] = mem[floor32(stor1.length) + stor0.length + ceil32(stor0.length) + ceil32(stor1.length) + -stor1.length % 32 + 480 len stor1.length % 32]
        mem[floor32(stor1.length) + stor0.length + ceil32(stor0.length) + ceil32(stor1.length) + 480] = 11
        mem[floor32(stor1.length) + stor0.length + ceil32(stor0.length) + ceil32(stor1.length) + 512] = Mask(88, 0, 'voting open')
    return Array(len=stor0.length, data=mem[192 len ceil32(stor0.length)], mem[(2 * ceil32(stor0.length)) + ceil32(stor1.length) + 416 len floor32(stor1.length) + stor0.length + -ceil32(stor0.length) + 128]), 
           stor0.length + 192,
           floor32(stor1.length) + stor0.length + 256,
           stor7,
           stor2
}



}
