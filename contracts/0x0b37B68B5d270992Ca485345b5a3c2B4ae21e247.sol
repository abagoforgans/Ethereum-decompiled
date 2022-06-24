contract main {




// =====================  Runtime code  =====================


#
#  - offers(uint256 arg1)
#
address owner;
uint256 sub_d2c96d1e;
array of uint256 sub_a7264f88;
mapping of struct stor3;
uint256 sub_5f5d0655;
mapping of struct stor6;
mapping of uint256 sub_3d672b15;
array of uint256 sub_421e85c5;
array of uint256 sub_a4aa3f70;
mapping of uint256 sub_3a8c50b9;
mapping of uint256 stor99;

function sub_3a8c50b9(?) {
    require calldata.size - 4 >= 32
    return sub_3a8c50b9[arg1]
}

function sub_3d672b15(?) {
    require calldata.size - 4 >= 64
    return sub_3d672b15[arg1][arg2]
}

function sub_421e85c5(?) {
    require calldata.size - 4 >= 64
    require arg2 < sub_421e85c5[arg1]
    return sub_421e85c5[arg1][arg2]
}

function sub_5f5d0655(?) {
    return sub_5f5d0655
}

function owner() {
    return owner
}

function sub_a4aa3f70(?) {
    require calldata.size - 4 >= 64
    require arg2 < sub_a4aa3f70[arg1]
    return sub_a4aa3f70[arg1][arg2]
}

function sub_a7264f88(?) {
    return sub_a7264f88[arg1][arg2][0 len sub_a7264f88[arg1][arg2].length]
}

function sub_d2c96d1e(?) {
    return sub_d2c96d1e
}

function _fallback() payable {
    revert
}

function setAccessLevel(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        require sub_3a8c50b9[address(msg.sender)] >= 5
    sub_3a8c50b9[address(arg1)] = arg2
}

function sub_910352b0(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        require sub_3a8c50b9[address(msg.sender)] >= 1
    require arg1 > 0
    require arg1 < sub_d2c96d1e
    stor3[arg1].field_768 = arg2
}

function sub_c18af4ef(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        require sub_3a8c50b9[address(msg.sender)] >= 1
    require arg1 > 0
    require arg1 < sub_d2c96d1e
    stor3[arg1].field_1024 = arg2
}

function sub_c0fc80a2(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        require sub_3a8c50b9[address(msg.sender)] >= 2
    require uint8(stor6[stor7[arg1][address(arg2)]].field_1024) <= 3
    require uint8(stor6[stor7[arg1][address(arg2)]].field_1024) == 2
    uint8(stor6[stor7[arg1][address(arg2)]].field_1024) = 0
}

function sub_db9371c2(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        require sub_3a8c50b9[address(msg.sender)] >= 2
    require uint8(stor6[stor7[arg1][address(arg2)]].field_1024) <= 3
    require uint8(stor6[stor7[arg1][address(arg2)]].field_1024) == 2
    uint8(stor6[stor7[arg1][address(arg2)]].field_1024) = 1
}

function sub_2a6446ca(?) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        require sub_3a8c50b9[address(msg.sender)] >= 1
    require arg1 > 0
    require arg1 < sub_d2c96d1e
    stor3[arg1][1][].field_0 = Array(len=arg2.length, data=arg2[all])
}

function sub_41309af4(?) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    if owner != msg.sender:
        require sub_3a8c50b9[address(msg.sender)] >= 1
    require sub_3d672b15[arg1][address(arg2)]
    require uint8(stor6[stor7[arg1][address(arg2)]].field_1024) <= 3
    require uint8(stor6[stor7[arg1][address(arg2)]].field_1024) == 3
    sub_a7264f88[arg1]++
    sub_a7264f88[arg1][sub_a7264f88[arg1]][] = Array(len=arg3.length, data=arg3[all])
    emit 0xb21301e3 
}

function sub_33e17c60(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 4
    mem[ceil32(arg1.length) + 128] = stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)]
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function sub_715c084b(?) {
    require calldata.size - 4 >= 128
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if owner != msg.sender:
        require sub_3a8c50b9[address(msg.sender)] >= 3
    require uint8(stor6[stor7[arg1][address(arg2)]].field_1024) <= 3
    require uint8(stor6[stor7[arg1][address(arg2)]].field_1024) == 2
    stor6[stor7[arg1][address(arg2)]][3][].field_0 = Array(len=arg4.length, data=arg4[all])
    stor6[stor7[arg1][address(arg2)]][2][].field_0 = Array(len=arg3.length, data=arg3[all])
    uint8(stor6[stor7[arg1][address(arg2)]].field_1024) = 3
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = arg1
    emit acceptOffer(uint256 arg1):
                     Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0),
                     mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)],
}

function sub_bbfd5e53(?) {
    require calldata.size - 4 >= 128
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if owner != msg.sender:
        require sub_3a8c50b9[address(msg.sender)] >= 4
    require uint8(stor6[stor7[arg1][address(arg2)]].field_1024) <= 3
    require uint8(stor6[stor7[arg1][address(arg2)]].field_1024) == 2
    address(stor3[arg1].field_512) = arg2
    stor6[stor7[arg1][address(arg2)]][3][].field_0 = Array(len=arg4.length, data=arg4[all])
    stor6[stor7[arg1][address(arg2)]][2][].field_0 = Array(len=arg3.length, data=arg3[all])
    uint8(stor6[stor7[arg1][address(arg2)]].field_1024) = 3
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = arg1
    emit acceptOffer(uint256 arg1):
                     Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0),
                     mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)],
}

function sub_65d72416(?) {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    if owner != msg.sender:
        require sub_3a8c50b9[address(msg.sender)] >= 2
    if arg1 <= 0:
        revert with 0, 'Wrong cid'
    if arg1 >= sub_d2c96d1e:
        revert with 0, 'Wrong cid'
    require uint8(stor6[stor7[arg1][address(arg2)]].field_1024) <= 3
    if uint8(stor6[stor7[arg1][address(arg2)]].field_1024) == 3:
        revert with 0, 'Offer already exist'
    require uint8(stor6[stor7[arg1][address(arg2)]].field_1024) <= 3
    if uint8(stor6[stor7[arg1][address(arg2)]].field_1024) == 2:
        revert with 0, 'Offer already exist'
    stor6[stor5].field_0 = stor6[stor7[arg1][address(arg2)]].field_0 + 1
    stor6[stor5][1][].field_0 = Array(len=arg5.length, data=arg5[all])
    bool(stor6[stor5].field_512) = 0
    uint255(stor6[stor5].field_513) = 4
    Mask(248, 0, stor6[stor5].field_520) = 'none' / 256
    idx = 0
    while stor6[stor5][2].length + 31 / 32 > idx:
        stor6[stor5][idx + 2].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor6[stor5].field_768) = 0
    uint255(stor6[stor5].field_769) = 4
    Mask(248, 0, stor6[stor5].field_776) = 'none' / 256
    idx = 0
    while stor6[stor5][3].length + 31 / 32 > idx:
        stor6[stor5][idx + 3].field_0 = 0
        idx = idx + 1
        continue 
    uint8(stor6[stor5].field_1024) = 2
    stor6[stor5].field_1280 = arg1
    address(stor6[stor5].field_1536) = arg2
    stor6[stor5].field_1792 = arg3
    stor6[stor5].field_2048 = arg4
    sub_3d672b15[arg1][address(arg2)] = sub_5f5d0655
    sub_421e85c5[arg1]++
    sub_421e85c5[arg1][sub_421e85c5[arg1]] = sub_5f5d0655
    sub_a4aa3f70[address(arg2)]++
    sub_a4aa3f70[address(arg2)][sub_a4aa3f70[address(arg2)]] = sub_5f5d0655
    emit 0xf5c743a8: arg1, arg3, arg4, arg2
    sub_5f5d0655++
}

function sub_8c3ce5d7(?) {
    require calldata.size - 4 >= 160
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = arg3.length
    mem[ceil32(arg1.length) + 160 len arg3.length] = arg3[all]
    mem[ceil32(arg1.length) + arg3.length + 160] = 0
    if owner != msg.sender:
        require sub_3a8c50b9[address(msg.sender)] >= 2
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg3.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + 160] = 4
    if stor[mem[ceil32(arg1.length) + arg3.length + 192 len arg1.length - arg3.length + ceil32(arg3.length)]][Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0)]:
        revert with 0, 'Content already uploaded'
    sub_d2c96d1e++
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg3.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + 160] = 4
    stor[mem[ceil32(arg1.length) + arg3.length + 192 len arg1.length - arg3.length + ceil32(arg3.length)]][Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0)] = sub_d2c96d1e
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 160] = 96
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 192] = ceil32(arg1.length) + 128
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 224] = arg2
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 256] = arg4
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 288] = arg5
    stor3[stor1][].field_0 = Array(len=arg1.length, data=arg1[all])
    stor3[stor1][1][].field_0 = Array(len=Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)], data=mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
    address(stor3[stor1].field_512) = arg2
    stor3[stor1].field_768 = arg4
    stor3[stor1].field_1024 = arg5
    emit 0x7dd31811: sub_d2c96d1e
    return sub_d2c96d1e
}

function contents(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[32] = 3
    mem[96] = stor3[arg1].length
    mem[0] = sha3(arg1, 3)
    mem[128] = stor3[arg1].field_0
    idx = 128
    s = 0
    while stor3[arg1].length + 96 > idx:
        mem[idx + 32] = stor3[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor3[arg1].length) + ceil32(stor3[arg1][1].length) + 160
    mem[ceil32(stor3[arg1].length) + 128] = stor3[arg1][1].length
    mem[ceil32(stor3[arg1].length) + 160] = stor3[arg1][1].field_0
    idx = ceil32(stor3[arg1].length) + 160
    s = 0
    while ceil32(stor3[arg1].length) + stor3[arg1][1].length + 128 > idx:
        mem[idx + 32] = stor3[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor3[arg1].length) + ceil32(stor3[arg1][1].length) + 224] = address(stor3[arg1].field_512)
    mem[ceil32(stor3[arg1].length) + ceil32(stor3[arg1][1].length) + 256] = stor3[arg1].field_768
    mem[ceil32(stor3[arg1].length) + ceil32(stor3[arg1][1].length) + 288] = stor3[arg1].field_1024
    mem[ceil32(stor3[arg1].length) + ceil32(stor3[arg1][1].length) + 160] = 160
    mem[ceil32(stor3[arg1].length) + ceil32(stor3[arg1][1].length) + 320] = stor3[arg1].length
    mem[ceil32(stor3[arg1].length) + ceil32(stor3[arg1][1].length) + 352 len ceil32(stor3[arg1].length)] = mem[128 len ceil32(stor3[arg1].length)]
    mem[ceil32(stor3[arg1].length) + ceil32(stor3[arg1][1].length) + 192] = stor3[arg1].length + 192
    mem[stor3[arg1].length + ceil32(stor3[arg1].length) + ceil32(stor3[arg1][1].length) + 352] = stor3[arg1][1].length
    mem[stor3[arg1].length + ceil32(stor3[arg1].length) + ceil32(stor3[arg1][1].length) + 384 len ceil32(stor3[arg1][1].length)] = mem[ceil32(stor3[arg1].length) + 160 len ceil32(stor3[arg1][1].length)]
    if not stor3[arg1][1].length % 32:
        return Array(len=stor3[arg1].length, data=mem[128 len ceil32(stor3[arg1].length)], mem[(2 * ceil32(stor3[arg1].length)) + ceil32(stor3[arg1][1].length) + 352 len stor3[arg1][1].length + stor3[arg1].length + -ceil32(stor3[arg1].length) + 32]), 
               stor3[arg1].length + 192,
               address(stor3[arg1].field_512),
               stor3[arg1].field_768,
               stor3[arg1].field_1024
    mem[floor32(stor3[arg1][1].length) + stor3[arg1].length + ceil32(stor3[arg1].length) + ceil32(stor3[arg1][1].length) + 384] = mem[floor32(stor3[arg1][1].length) + stor3[arg1].length + ceil32(stor3[arg1].length) + ceil32(stor3[arg1][1].length) + -stor3[arg1][1].length % 32 + 416 len stor3[arg1][1].length % 32]
    return Array(len=stor3[arg1].length, data=mem[128 len ceil32(stor3[arg1].length)], mem[(2 * ceil32(stor3[arg1].length)) + ceil32(stor3[arg1][1].length) + 352 len floor32(stor3[arg1][1].length) + stor3[arg1].length + -ceil32(stor3[arg1].length) + 64]), 
           stor3[arg1].length + 192,
           address(stor3[arg1].field_512),
           stor3[arg1].field_768,
           stor3[arg1].field_1024
}



}
