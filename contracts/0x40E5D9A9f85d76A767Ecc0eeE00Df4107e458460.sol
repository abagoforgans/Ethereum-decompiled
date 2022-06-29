contract main {




// =====================  Runtime code  =====================


address stor0;
address sub_4b3cc78eAddress;
mapping of uint8 stor2;
array of struct stor3;
mapping of struct sub_3c74cab3;
array of struct stor5;
mapping of struct sub_3e301ffd;
array of struct stor7;
array of struct stor8;
array of struct stor9;

function sub_3be96637(?) {
    require calldata.size - 4 >= 32
    if sub_4b3cc78eAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only kmn owner can call this function.'
    return sub_3c74cab3[address(arg1)].field_0, 
           sub_3c74cab3[address(arg1)].field_0,
           sub_3c74cab3[address(arg1)].field_0,
           sub_3c74cab3[address(arg1)].field_176
}

function sub_3c74cab3(?) {
    return sub_3c74cab3[address(msg.sender)].field_0, 
           sub_3c74cab3[address(msg.sender)].field_0,
           sub_3c74cab3[address(msg.sender)].field_176
}

function sub_3e301ffd(?) {
    return sub_3e301ffd[address(arg1)][0 len sub_3e301ffd[address(arg1)].length].field_0
}

function sub_4b3cc78e(?) {
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only smart contract owner can call this function.'
    return sub_4b3cc78eAddress
}

function sub_a7bd69fd(?) {
    return sub_3e301ffd[address(arg1)][1][0 len sub_3e301ffd[address(arg1)][1].length].field_0
}

function sub_ef943eb6(?) {
    require calldata.size - 4 >= 32
    if sub_4b3cc78eAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only kmn owner can call this function.'
    return bool(stor2[address(arg1)])
}

function sub_fe935215(?) {
    return sub_3e301ffd[address(arg1)][2][0 len sub_3e301ffd[address(arg1)][2].length].field_0
}

function kill() {
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only smart contract owner can call this function.'
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}

function sub_d4f8b409(?) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only smart contract owner can call this function.'
    sub_4b3cc78eAddress = arg1
}

function sub_574128e0(?) {
    if sub_3c74cab3[address(msg.sender)].field_0 < 2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Insufficient merchant level to access data.'
    sub_3c74cab3[address(msg.sender)].field_96 = Mask(80, 0, sub_3c74cab3[address(msg.sender)].field_96 + 1)
}

function sub_9d9306bb(?) {
    if sub_3c74cab3[address(msg.sender)].field_0 < 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Insufficient merchant level to access data.'
    sub_3c74cab3[address(msg.sender)].field_16 = Mask(80, 0, sub_3c74cab3[address(msg.sender)].field_16 + 1)
}

function sub_bf328b78(?) {
    if sub_3c74cab3[address(msg.sender)].field_0 < 3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Insufficient merchant level to access data.'
    sub_3c74cab3[address(msg.sender)].field_176 = Mask(80, 0, sub_3c74cab3[address(msg.sender)].field_176 + 1)
}

function sub_ad3ee1a9(?) {
    require calldata.size - 4 >= 64
    if sub_4b3cc78eAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only kmn owner can call this function.'
    stor2[address(arg1)] = uint8(arg2)
    stor3.length++
    stor3[stor3.length].field_0 = arg1
}

function sub_d36358da(?) {
    require calldata.size - 4 >= 64
    if sub_4b3cc78eAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only kmn owner can call this function.'
    sub_3c74cab3[address(arg1)].field_0 = arg2
    stor5.length++
    stor5[stor5.length].field_0 = arg1
}

function sub_55e68d4e(?) {
    if sub_4b3cc78eAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only kmn owner can call this function.'
    if not stor9.length:
        mem[(32 * stor9.length) + 128] = 32
        mem[(32 * stor9.length) + 160] = stor9.length
        mem[(32 * stor9.length) + 192 len floor32(stor9.length)] = mem[128 len floor32(stor9.length)]
        return memory
          from (32 * stor9.length) + 128
           len (96 * stor9.length) + 64
    mem[128] = address(stor9.field_0)
    idx = 128
    s = 0
    while (32 * stor9.length) + 96 > idx:
        mem[idx + 32] = stor9[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor9.length) + 192 len floor32(stor9.length)] = mem[128 len floor32(stor9.length)]
    return Array(len=stor9.length, data=mem[128 len floor32(stor9.length)], mem[(32 * stor9.length) + floor32(stor9.length) + 192 len (32 * stor9.length) - floor32(stor9.length)]), 
}

function sub_58b2afbf(?) {
    if sub_4b3cc78eAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only kmn owner can call this function.'
    if not stor8.length:
        mem[(32 * stor8.length) + 128] = 32
        mem[(32 * stor8.length) + 160] = stor8.length
        mem[(32 * stor8.length) + 192 len floor32(stor8.length)] = mem[128 len floor32(stor8.length)]
        return memory
          from (32 * stor8.length) + 128
           len (96 * stor8.length) + 64
    mem[128] = address(stor8.field_0)
    idx = 128
    s = 0
    while (32 * stor8.length) + 96 > idx:
        mem[idx + 32] = stor8[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor8.length) + 192 len floor32(stor8.length)] = mem[128 len floor32(stor8.length)]
    return Array(len=stor8.length, data=mem[128 len floor32(stor8.length)], mem[(32 * stor8.length) + floor32(stor8.length) + 192 len (32 * stor8.length) - floor32(stor8.length)]), 
}

function sub_6eb79a3d(?) {
    if sub_4b3cc78eAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only kmn owner can call this function.'
    if not stor7.length:
        mem[(32 * stor7.length) + 128] = 32
        mem[(32 * stor7.length) + 160] = stor7.length
        mem[(32 * stor7.length) + 192 len floor32(stor7.length)] = mem[128 len floor32(stor7.length)]
        return memory
          from (32 * stor7.length) + 128
           len (96 * stor7.length) + 64
    mem[128] = address(stor7.field_0)
    idx = 128
    s = 0
    while (32 * stor7.length) + 96 > idx:
        mem[idx + 32] = stor7[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor7.length) + 192 len floor32(stor7.length)] = mem[128 len floor32(stor7.length)]
    return Array(len=stor7.length, data=mem[128 len floor32(stor7.length)], mem[(32 * stor7.length) + floor32(stor7.length) + 192 len (32 * stor7.length) - floor32(stor7.length)]), 
}

function sub_8ce2df51(?) {
    if sub_4b3cc78eAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only kmn owner can call this function.'
    if not stor5.length:
        mem[(32 * stor5.length) + 128] = 32
        mem[(32 * stor5.length) + 160] = stor5.length
        mem[(32 * stor5.length) + 192 len floor32(stor5.length)] = mem[128 len floor32(stor5.length)]
        return memory
          from (32 * stor5.length) + 128
           len (96 * stor5.length) + 64
    mem[128] = address(stor5.field_0)
    idx = 128
    s = 0
    while (32 * stor5.length) + 96 > idx:
        mem[idx + 32] = stor5[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor5.length) + 192 len floor32(stor5.length)] = mem[128 len floor32(stor5.length)]
    return Array(len=stor5.length, data=mem[128 len floor32(stor5.length)], mem[(32 * stor5.length) + floor32(stor5.length) + 192 len (32 * stor5.length) - floor32(stor5.length)]), 
}

function sub_c66014a6(?) {
    if sub_4b3cc78eAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only kmn owner can call this function.'
    if not stor3.length:
        mem[(32 * stor3.length) + 128] = 32
        mem[(32 * stor3.length) + 160] = stor3.length
        mem[(32 * stor3.length) + 192 len floor32(stor3.length)] = mem[128 len floor32(stor3.length)]
        return memory
          from (32 * stor3.length) + 128
           len (96 * stor3.length) + 64
    mem[128] = address(stor3.field_0)
    idx = 128
    s = 0
    while (32 * stor3.length) + 96 > idx:
        mem[idx + 32] = stor3[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor3.length) + 192 len floor32(stor3.length)] = mem[128 len floor32(stor3.length)]
    return Array(len=stor3.length, data=mem[128 len floor32(stor3.length)], mem[(32 * stor3.length) + floor32(stor3.length) + 192 len (32 * stor3.length) - floor32(stor3.length)]), 
}

function sub_b4f7cfbe(?) {
    require calldata.size - 4 >= 64
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + ('cd', 36).length + 36 <= calldata.size
    if not stor2[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only an IDV can call this function.'
    sub_3e301ffd[address(cd[4])].field_0 = (2 * ('cd', 36).length) + 1
    s = 0
    idx = cd[36] + 36
    while cd[36] + ('cd', 36).length + 36 > idx:
        sub_3e301ffd[address(cd[4])][s].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
    while sub_3e301ffd[address(cd[4])].length + 31 / 32 > idx:
        sub_3e301ffd[address(cd[4])][idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_3e301ffd[address(cd[4])].field_768:
        stor7.length++
        stor7[stor7.length].field_0 = address(cd[4])
        sub_3e301ffd[address(cd[4])].field_768 = 1
}

function sub_60c7c47b(?) {
    require calldata.size - 4 >= 64
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + ('cd', 36).length + 36 <= calldata.size
    if not stor2[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only an IDV can call this function.'
    sub_3e301ffd[address(cd[4])].field_256 = (2 * ('cd', 36).length) + 1
    s = 0
    idx = cd[36] + 36
    while cd[36] + ('cd', 36).length + 36 > idx:
        sub_3e301ffd[address(cd[4])][s + 1].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
    while sub_3e301ffd[address(cd[4])][1].length + 31 / 32 > idx:
        sub_3e301ffd[address(cd[4])][idx + 1].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_3e301ffd[address(cd[4])].field_776:
        stor8.length++
        stor8[stor8.length].field_0 = address(cd[4])
        sub_3e301ffd[address(cd[4])].field_776 = 1
}

function sub_666b27a9(?) {
    require calldata.size - 4 >= 64
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + ('cd', 36).length + 36 <= calldata.size
    if not stor2[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only an IDV can call this function.'
    sub_3e301ffd[address(cd[4])].field_512 = (2 * ('cd', 36).length) + 1
    s = 0
    idx = cd[36] + 36
    while cd[36] + ('cd', 36).length + 36 > idx:
        sub_3e301ffd[address(cd[4])][s + 2].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
    while sub_3e301ffd[address(cd[4])][2].length + 31 / 32 > idx:
        sub_3e301ffd[address(cd[4])][idx + 2].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_3e301ffd[address(cd[4])].field_784:
        stor9.length++
        stor9[stor9.length].field_0 = address(cd[4])
        sub_3e301ffd[address(cd[4])].field_784 = 1
}



}
