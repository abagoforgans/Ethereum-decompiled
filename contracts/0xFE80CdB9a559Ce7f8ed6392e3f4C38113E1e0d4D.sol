contract main {


// =======================  Init code  ======================


const _fallback = code.data[19 len 11142]




// =====================  Runtime code  =====================


#
#  - copyEntireGlofile(address arg1)
#  - getBasicInfo(address arg1)
#
mapping of struct parentCount;

function getParentCount(address arg1) payable {
    return uint256(parentCount[address(arg1)].field_2816)
}

function getAvatarCount(address arg1) payable {
    return uint256(parentCount[address(arg1)].field_1792)
}

function getBackgroundImageCount(address arg1) payable {
    return uint256(parentCount[address(arg1)].field_2304)
}

function getChildCount(address arg1) payable {
    return uint256(parentCount[address(arg1)].field_3072)
}

function getCoverImageCount(address arg1) payable {
    return uint256(parentCount[address(arg1)].field_2048)
}

function getTopicCount(address arg1) payable {
    return uint256(parentCount[address(arg1)].field_2560)
}

function _fallback() payable {
  stop
}

function sub_a71a7334(?) payable {
    emit 0xb64bdfb7: msg.sender, arg1
}

function sub_de56a544(?) payable {
    Mask(248, 0, parentCount[address(msg.sender)].field_8) = Mask(248, 0, arg1)
    emit code.data[11110 len 32]: msg.sender
}

function sub_85b5c8b4(?) payable {
    Mask(240, 0, parentCount[address(msg.sender)].field_16) = Mask(240, 0, arg1)
    emit code.data[11110 len 32]: msg.sender
}

function setDontIndex(bool arg1) payable {
    uint256(parentCount[address(msg.sender)].field_0) = arg1 or Mask(248, 8, uint256(parentCount[address(msg.sender)].field_0))
    emit code.data[11110 len 32]: msg.sender
}

function sub_4e21a517(?) payable {
    Mask(232, 0, parentCount[address(msg.sender)].field_24) = Mask(232, 0, uint16(parentCount[address(msg.sender)].field_24) + 1)
    emit 0xd9f5e98a: Array(len=arg1.length, data=arg1[all]), msg.sender, uint16(parentCount[address(msg.sender)].field_24)
}

function sub_684841e0(?) payable {
    if uint256(parentCount[address(arg1)][13][arg2].field_0):
        mem[160] = uint256(parentCount[address(arg1)][13][arg2].field_0)
        idx = 160
        s = 0
        while uint256(parentCount[address(arg1)][13][arg2].field_0) + 128 > idx:
            mem[idx + 32] = uint256(parentCount[address(arg1)][13][arg2][s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=uint256(parentCount[address(arg1)][13][arg2].field_0), data=mem[160 len uint256(parentCount[address(arg1)][13][arg2].field_0)]), 
}

function deleteAvatar(uint256 arg1) payable {
    require arg1 < uint256(parentCount[address(msg.sender)].field_1792)
    uint256(stor[arg1 + ('array', 7, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'parentCount', 0)))].field_0) = 0
    idx = 0
    while uint256(stor[arg1 + ('array', 7, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'parentCount', 0)))].field_0) + 31 / 32 > idx:
        uint256(stor[idx + sha3(arg1 + ('array', 7, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'parentCount', 0))))].field_0) = 0
        idx = idx + 1
        continue 
    emit code.data[11110 len 32]: msg.sender
}

function deleteChild(uint256 arg1) payable {
    require arg1 < uint256(parentCount[address(msg.sender)].field_3072)
    uint256(stor[arg1 + ('array', 12, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'parentCount', 0)))].field_0) = 0
    idx = 0
    while uint256(stor[arg1 + ('array', 12, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'parentCount', 0)))].field_0) + 31 / 32 > idx:
        uint256(stor[idx + sha3(arg1 + ('array', 12, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'parentCount', 0))))].field_0) = 0
        idx = idx + 1
        continue 
    emit code.data[11110 len 32]: msg.sender
}

function deleteTopic(uint256 arg1) payable {
    require arg1 < uint256(parentCount[address(msg.sender)].field_2560)
    uint256(stor[arg1 + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'parentCount', 0)))].field_0) = 0
    idx = 0
    while uint256(stor[arg1 + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'parentCount', 0)))].field_0) + 31 / 32 > idx:
        uint256(stor[idx + sha3(arg1 + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'parentCount', 0))))].field_0) = 0
        idx = idx + 1
        continue 
    emit code.data[11110 len 32]: msg.sender
}

function deleteParent(uint256 arg1) payable {
    require arg1 < uint256(parentCount[address(msg.sender)].field_2816)
    uint256(stor[arg1 + ('array', 11, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'parentCount', 0)))].field_0) = 0
    idx = 0
    while uint256(stor[arg1 + ('array', 11, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'parentCount', 0)))].field_0) + 31 / 32 > idx:
        uint256(stor[idx + sha3(arg1 + ('array', 11, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'parentCount', 0))))].field_0) = 0
        idx = idx + 1
        continue 
    emit code.data[11110 len 32]: msg.sender
}

function deleteCoverImage(uint256 arg1) payable {
    require arg1 < uint256(parentCount[address(msg.sender)].field_2048)
    uint256(stor[arg1 + ('array', 8, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'parentCount', 0)))].field_0) = 0
    idx = 0
    while uint256(stor[arg1 + ('array', 8, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'parentCount', 0)))].field_0) + 31 / 32 > idx:
        uint256(stor[idx + sha3(arg1 + ('array', 8, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'parentCount', 0))))].field_0) = 0
        idx = idx + 1
        continue 
    emit code.data[11110 len 32]: msg.sender
}

function deleteBackgroundImage(uint256 arg1) payable {
    require arg1 < uint256(parentCount[address(msg.sender)].field_2304)
    uint256(stor[arg1 + ('array', 9, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'parentCount', 0)))].field_0) = 0
    idx = 0
    while uint256(stor[arg1 + ('array', 9, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'parentCount', 0)))].field_0) + 31 / 32 > idx:
        uint256(stor[idx + sha3(arg1 + ('array', 9, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'parentCount', 0))))].field_0) = 0
        idx = idx + 1
        continue 
    emit code.data[11110 len 32]: msg.sender
}

function deleteAllAvatars() payable {
    uint256(parentCount[address(msg.sender)].field_1792) = 0
    mem[0] = sha3(address(msg.sender), 0) + 7
    idx = 0
    while sha3(sha3(address(msg.sender), 0) + 7) + uint256(parentCount[address(msg.sender)].field_1792) > idx + sha3(mem[0]):
        uint256(stor[idx + sha3(mem[0])]) = 0
        mem[0] = idx + sha3(mem[0])
        s = sha3(s + sha3(mem[0]))
        while sha3(s + sha3(mem[0])) + (uint256(stor[s + sha3(mem[0])]) + 31 / 32) > s + sha3(mem[0]):
            uint256(stor[s + sha3(mem[0])]) = 0
            s = s + 1
            continue 
        s = s + 1
        continue 
    emit code.data[11110 len 32]: msg.sender
}

function deleteAllTopics() payable {
    uint256(parentCount[address(msg.sender)].field_2560) = 0
    mem[0] = sha3(address(msg.sender), 0) + 10
    idx = 0
    while sha3(sha3(address(msg.sender), 0) + 10) + uint256(parentCount[address(msg.sender)].field_2560) > idx + sha3(mem[0]):
        uint256(stor[idx + sha3(mem[0])]) = 0
        mem[0] = idx + sha3(mem[0])
        s = sha3(s + sha3(mem[0]))
        while sha3(s + sha3(mem[0])) + (uint256(stor[s + sha3(mem[0])]) + 31 / 32) > s + sha3(mem[0]):
            uint256(stor[s + sha3(mem[0])]) = 0
            s = s + 1
            continue 
        s = s + 1
        continue 
    emit code.data[11110 len 32]: msg.sender
}

function deleteAllParents() payable {
    uint256(parentCount[address(msg.sender)].field_2816) = 0
    mem[0] = sha3(address(msg.sender), 0) + 11
    idx = 0
    while sha3(sha3(address(msg.sender), 0) + 11) + uint256(parentCount[address(msg.sender)].field_2816) > idx + sha3(mem[0]):
        uint256(stor[idx + sha3(mem[0])]) = 0
        mem[0] = idx + sha3(mem[0])
        s = sha3(s + sha3(mem[0]))
        while sha3(s + sha3(mem[0])) + (uint256(stor[s + sha3(mem[0])]) + 31 / 32) > s + sha3(mem[0]):
            uint256(stor[s + sha3(mem[0])]) = 0
            s = s + 1
            continue 
        s = s + 1
        continue 
    emit code.data[11110 len 32]: msg.sender
}

function deleteAllChildren() payable {
    uint256(parentCount[address(msg.sender)].field_3072) = 0
    mem[0] = sha3(address(msg.sender), 0) + 12
    idx = 0
    while sha3(sha3(address(msg.sender), 0) + 12) + uint256(parentCount[address(msg.sender)].field_3072) > idx + sha3(mem[0]):
        uint256(stor[idx + sha3(mem[0])]) = 0
        mem[0] = idx + sha3(mem[0])
        s = sha3(s + sha3(mem[0]))
        while sha3(s + sha3(mem[0])) + (uint256(stor[s + sha3(mem[0])]) + 31 / 32) > s + sha3(mem[0]):
            uint256(stor[s + sha3(mem[0])]) = 0
            s = s + 1
            continue 
        s = s + 1
        continue 
    emit code.data[11110 len 32]: msg.sender
}

function deleteAllCoverImages() payable {
    uint256(parentCount[address(msg.sender)].field_2048) = 0
    mem[0] = sha3(address(msg.sender), 0) + 8
    idx = 0
    while sha3(sha3(address(msg.sender), 0) + 8) + uint256(parentCount[address(msg.sender)].field_2048) > idx + sha3(mem[0]):
        uint256(stor[idx + sha3(mem[0])]) = 0
        mem[0] = idx + sha3(mem[0])
        s = sha3(s + sha3(mem[0]))
        while sha3(s + sha3(mem[0])) + (uint256(stor[s + sha3(mem[0])]) + 31 / 32) > s + sha3(mem[0]):
            uint256(stor[s + sha3(mem[0])]) = 0
            s = s + 1
            continue 
        s = s + 1
        continue 
    emit code.data[11110 len 32]: msg.sender
}

function sub_06e89f63(?) payable {
    if uint256(parentCount[address(arg1)].field_1536):
        mem[160] = uint256(parentCount[address(arg1)][6].field_0) / 256^0 << 232
        idx = 160
        s = 0
        while (32 * uint256(parentCount[address(arg1)].field_1536)) + 128 > idx:
            mem[idx + 32] = uint256(parentCount[address(arg1)][6].field_0) / 256^((-3 * s + 5 / 32) + s + (-1 * s + 5 / 32 * s) + 3) << 232
            idx = idx + 32
            s = (-3 * s + 5 / 32) + s + (-1 * s + 5 / 32 * s) + 3
            continue 
    return Array(len=uint256(parentCount[address(arg1)].field_1536), data=mem[160 len 32 * uint256(parentCount[address(arg1)].field_1536)]), 
}

function deleteAllBackgroundImages() payable {
    uint256(parentCount[address(msg.sender)].field_2304) = 0
    mem[0] = sha3(address(msg.sender), 0) + 9
    idx = 0
    while sha3(sha3(address(msg.sender), 0) + 9) + uint256(parentCount[address(msg.sender)].field_2304) > idx + sha3(mem[0]):
        uint256(stor[idx + sha3(mem[0])]) = 0
        mem[0] = idx + sha3(mem[0])
        s = sha3(s + sha3(mem[0]))
        while sha3(s + sha3(mem[0])) + (uint256(stor[s + sha3(mem[0])]) + 31 / 32) > s + sha3(mem[0]):
            uint256(stor[s + sha3(mem[0])]) = 0
            s = s + 1
            continue 
        s = s + 1
        continue 
    emit code.data[11110 len 32]: msg.sender
}

function setFullName(string arg1) payable {
    mem[128 len arg1.length] = arg1[all]
    uint256(parentCount[address(msg.sender)].field_512) = arg1.length
    if not arg1.length:
        idx = 0
        while uint256(parentCount[address(msg.sender)].field_512) + 31 / 32 > idx:
            uint256(parentCount[address(msg.sender)][idx + 2].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while arg1.length + 128 > idx:
            uint256(parentCount[address(msg.sender)][s + 2].field_0) = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, arg1.length + 31) >> 5
        while uint256(parentCount[address(msg.sender)].field_512) + 31 / 32 > idx:
            uint256(parentCount[address(msg.sender)][idx + 2].field_0) = 0
            idx = idx + 1
            continue 
    emit code.data[11110 len 32]: msg.sender
}

function setLocation(string arg1) payable {
    mem[128 len arg1.length] = arg1[all]
    uint256(parentCount[address(msg.sender)].field_768) = arg1.length
    if not arg1.length:
        idx = 0
        while uint256(parentCount[address(msg.sender)].field_768) + 31 / 32 > idx:
            uint256(parentCount[address(msg.sender)][idx + 3].field_0) = 0
            idx = idx + 1
            continue 
    else:
        if arg1.length <= 0:
            idx = 0
            while uint256(parentCount[address(msg.sender)].field_768) + 31 / 32 > idx:
                uint256(parentCount[address(msg.sender)][idx + 3].field_0) = 0
                idx = idx + 1
                continue 
        else:
            uint256(parentCount[address(msg.sender)][3].field_0) = mem[128]
            s = 1
            idx = 160
            while arg1.length + 128 > idx:
                uint256(parentCount[address(msg.sender)][s + 3].field_0) = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = (Mask(251, 0, arg1.length - 1) >> 5) + 1
            while uint256(parentCount[address(msg.sender)].field_768) + 31 / 32 > idx:
                uint256(parentCount[address(msg.sender)][idx + 3].field_0) = 0
                idx = idx + 1
                continue 
    emit code.data[11110 len 32]: msg.sender
}

function setForegroundColors(bytes3[] arg1) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    uint256(parentCount[address(msg.sender)].field_1024) = arg1.length
    if not arg1.length:
        idx = 0
        while uint256(parentCount[address(msg.sender)].field_1024) + 9 / 10 > idx:
            parentCount[address(msg.sender)][idx + 4].field_0 % 16777216 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            uint256(parentCount[address(msg.sender)][4].field_0) = mem[idx len 3] * 256^s or !(16777215 * 256^s) and uint256(parentCount[address(msg.sender)][4].field_0)
            s = s + (-3 * s + 5 / 32) + (-1 * s * s + 5 / 32) + 3
            idx = idx + 32
            continue 
        idx = 3 * Mask(251, 0, (32 * arg1.length) + 31) >> 5
        s = sha3(sha3(address(msg.sender), 0) + 4)
        while idx:
            uint256(stor[s]) = !(16777215 * 256^idx) and uint256(stor[s])
            idx = idx + (-3 * idx + 5 / 32) + (-1 * idx * idx + 5 / 32) + 3
            s = (idx + 5 / 32) + s
            continue 
        idx = s
        while sha3(sha3(address(msg.sender), 0) + 4) + (uint256(parentCount[address(msg.sender)].field_1024) + 9 / 10) > idx:
            stor[idx] % 16777216 = 0
            idx = idx + 1
            continue 
    emit code.data[11110 len 32]: msg.sender
}

function getAvatar(address arg1, uint256 arg2) payable {
    require arg2 < uint256(parentCount[address(arg1)].field_1792)
    if uint256(stor[arg2 + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'parentCount', 0)))].field_0):
        mem[160] = uint256(stor[sha3(arg2 + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'parentCount', 0))))].field_0)
        if uint256(stor[arg2 + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'parentCount', 0)))].field_0) + 32 > 64:
            mem[192] = uint256(stor[sha3(arg2 + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'parentCount', 0))))].field_256)
            idx = 192
            s = 1
            while uint256(stor[arg2 + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'parentCount', 0)))].field_0) + 128 > idx:
                mem[idx + 32] = uint256(stor[s + sha3(arg2 + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'parentCount', 0))))].field_256)
                idx = idx + 32
                s = s + 1
                continue 
    return Array(len=uint256(stor[arg2 + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'parentCount', 0)))].field_0), data=mem[160 len uint256(stor[arg2 + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'parentCount', 0)))].field_0)]), 
}

function getCoverImage(address arg1, uint256 arg2) payable {
    require arg2 < uint256(parentCount[address(arg1)].field_2048)
    if uint256(stor[arg2 + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'parentCount', 0)))].field_0):
        mem[160] = uint256(stor[sha3(arg2 + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'parentCount', 0))))].field_0)
        if uint256(stor[arg2 + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'parentCount', 0)))].field_0) + 32 > 64:
            mem[192] = uint256(stor[sha3(arg2 + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'parentCount', 0))))].field_256)
            idx = 192
            s = 1
            while uint256(stor[arg2 + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'parentCount', 0)))].field_0) + 128 > idx:
                mem[idx + 32] = uint256(stor[s + sha3(arg2 + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'parentCount', 0))))].field_256)
                idx = idx + 32
                s = s + 1
                continue 
    return Array(len=uint256(stor[arg2 + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'parentCount', 0)))].field_0), data=mem[160 len uint256(stor[arg2 + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'parentCount', 0)))].field_0)]), 
}

function getTopic(address arg1, uint256 arg2) payable {
    require arg2 < uint256(parentCount[address(arg1)].field_2560)
    if uint256(stor[arg2 + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'parentCount', 0)))].field_0):
        mem[160] = uint256(stor[sha3(arg2 + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'parentCount', 0))))].field_0)
        if uint256(stor[arg2 + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'parentCount', 0)))].field_0) + 32 > 64:
            mem[192] = uint256(stor[sha3(arg2 + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'parentCount', 0))))].field_256)
            idx = 192
            s = 1
            while uint256(stor[arg2 + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'parentCount', 0)))].field_0) + 128 > idx:
                mem[idx + 32] = uint256(stor[s + sha3(arg2 + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'parentCount', 0))))].field_256)
                idx = idx + 32
                s = s + 1
                continue 
    return Array(len=uint256(stor[arg2 + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'parentCount', 0)))].field_0), data=mem[160 len uint256(stor[arg2 + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'parentCount', 0)))].field_0)]), 
}

function getChild(address arg1, uint256 arg2) payable {
    require arg2 < uint256(parentCount[address(arg1)].field_3072)
    if uint256(stor[arg2 + ('array', 12, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'parentCount', 0)))].field_0):
        mem[160] = uint256(stor[sha3(arg2 + ('array', 12, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'parentCount', 0))))].field_0)
        if uint256(stor[arg2 + ('array', 12, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'parentCount', 0)))].field_0) + 32 > 64:
            mem[192] = uint256(stor[sha3(arg2 + ('array', 12, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'parentCount', 0))))].field_256)
            idx = 192
            s = 1
            while uint256(stor[arg2 + ('array', 12, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'parentCount', 0)))].field_0) + 128 > idx:
                mem[idx + 32] = uint256(stor[s + sha3(arg2 + ('array', 12, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'parentCount', 0))))].field_256)
                idx = idx + 32
                s = s + 1
                continue 
    return Array(len=uint256(stor[arg2 + ('array', 12, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'parentCount', 0)))].field_0), data=mem[160 len uint256(stor[arg2 + ('array', 12, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'parentCount', 0)))].field_0)]), 
}

function getParent(address arg1, uint256 arg2) payable {
    require arg2 < uint256(parentCount[address(arg1)].field_2816)
    if uint256(stor[arg2 + ('array', 11, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'parentCount', 0)))].field_0):
        mem[160] = uint256(stor[sha3(arg2 + ('array', 11, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'parentCount', 0))))].field_0)
        if uint256(stor[arg2 + ('array', 11, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'parentCount', 0)))].field_0) + 32 > 64:
            mem[192] = uint256(stor[sha3(arg2 + ('array', 11, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'parentCount', 0))))].field_256)
            idx = 192
            s = 1
            while uint256(stor[arg2 + ('array', 11, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'parentCount', 0)))].field_0) + 128 > idx:
                mem[idx + 32] = uint256(stor[s + sha3(arg2 + ('array', 11, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'parentCount', 0))))].field_256)
                idx = idx + 32
                s = s + 1
                continue 
    return Array(len=uint256(stor[arg2 + ('array', 11, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'parentCount', 0)))].field_0), data=mem[160 len uint256(stor[arg2 + ('array', 11, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'parentCount', 0)))].field_0)]), 
}

function getBackgroundImage(address arg1, uint256 arg2) payable {
    require arg2 < uint256(parentCount[address(arg1)].field_2304)
    if uint256(stor[arg2 + ('array', 9, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'parentCount', 0)))].field_0):
        mem[160] = uint256(stor[sha3(arg2 + ('array', 9, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'parentCount', 0))))].field_0)
        if uint256(stor[arg2 + ('array', 9, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'parentCount', 0)))].field_0) + 32 > 64:
            mem[192] = uint256(stor[sha3(arg2 + ('array', 9, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'parentCount', 0))))].field_256)
            idx = 192
            s = 1
            while uint256(stor[arg2 + ('array', 9, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'parentCount', 0)))].field_0) + 128 > idx:
                mem[idx + 32] = uint256(stor[s + sha3(arg2 + ('array', 9, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'parentCount', 0))))].field_256)
                idx = idx + 32
                s = s + 1
                continue 
    return Array(len=uint256(stor[arg2 + ('array', 9, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'parentCount', 0)))].field_0), data=mem[160 len uint256(stor[arg2 + ('array', 9, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'parentCount', 0)))].field_0)]), 
}

function deleteBio(bytes3 arg1) payable {
    idx = 0
    while idx < uint256(parentCount[address(msg.sender)].field_1536):
        mem[0] = sha3(address(msg.sender), 0) + 6
        if uint256(stor[('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'parentCount', 0))) + (idx / 10)].field_0) / 256^(3 * idx % 10) << 232 != arg1:
            idx = idx + 1
            continue 
        require idx < uint256(parentCount[address(msg.sender)].field_1536)
        uint256(stor[('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'parentCount', 0))) + (idx / 10)].field_0) = !(16777215 * 256^(3 * idx % 10)) and uint256(stor[('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'parentCount', 0))) + (idx / 10)].field_0)
        uint256(parentCount[address(msg.sender)][13][arg1].field_0) = 0
        idx = sha3(sha3(arg1, sha3(address(msg.sender), 0) + 13))
        while sha3(sha3(arg1, sha3(address(msg.sender), 0) + 13)) + (uint256(parentCount[address(msg.sender)][13][arg1].field_0) + 31 / 32) > idx:
            uint256(stor[idx]) = 0
            idx = idx + 1
            continue 
        emit code.data[11110 len 32]: msg.sender
    uint256(parentCount[address(msg.sender)][13][arg1].field_0) = 0
    idx = 0
    while uint256(parentCount[address(msg.sender)][13][arg1].field_0) + 31 / 32 > idx:
        uint256(parentCount[address(msg.sender)][13][arg1][idx].field_0) = 0
        idx = idx + 1
        continue 
    emit code.data[11110 len 32]: msg.sender
}

function setBackgroundColors(bytes3[] arg1) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    uint256(parentCount[address(msg.sender)].field_1280) = arg1.length
    if not arg1.length:
        idx = 0
        while uint256(parentCount[address(msg.sender)].field_1280) + 9 / 10 > idx:
            parentCount[address(msg.sender)][idx + 5].field_0 % 16777216 = 0
            idx = idx + 1
            continue 
    else:
        if 32 * arg1.length <= 0:
            idx = 0
            while uint256(parentCount[address(msg.sender)].field_1280) + 9 / 10 > idx:
                parentCount[address(msg.sender)][idx + 5].field_0 % 16777216 = 0
                idx = idx + 1
                continue 
        else:
            parentCount[address(msg.sender)][5].field_0 % 16777216 = mem[128 len 3]
            s = 3
            idx = 160
            while (32 * arg1.length) + 128 > idx:
                uint256(parentCount[address(msg.sender)][5].field_0) = mem[idx len 3] * 256^s or !(16777215 * 256^s) and uint256(parentCount[address(msg.sender)][5].field_0)
                s = s + (-3 * s + 5 / 32) + (-1 * s * s + 5 / 32) + 3
                idx = idx + 32
                continue 
            idx = (3 * Mask(251, 0, (32 * arg1.length) - 1) >> 5) + 3
            s = sha3(sha3(address(msg.sender), 0) + 5)
            while idx:
                uint256(stor[s]) = !(16777215 * 256^idx) and uint256(stor[s])
                idx = idx + (-3 * idx + 5 / 32) + (-1 * idx * idx + 5 / 32) + 3
                s = (idx + 5 / 32) + s
                continue 
            idx = s
            while sha3(sha3(address(msg.sender), 0) + 5) + (uint256(parentCount[address(msg.sender)].field_1280) + 9 / 10) > idx:
                stor[idx] % 16777216 = 0
                idx = idx + 1
                continue 
    emit code.data[11110 len 32]: msg.sender
}

function deleteAllBioTranslations() payable {
    idx = 0
    while idx < uint256(parentCount[address(msg.sender)].field_1536):
        mem[32] = sha3(address(msg.sender), 0) + 13
        uint256(parentCount[address(msg.sender)][13][uint256(stor[('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'parentCount', 0))) + (idx / 10)].field_0) / 256^(3 * idx % 10) << 232].field_0) = 0
        mem[0] = sha3(uint256(stor[('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'parentCount', 0))) + (idx / 10)].field_0) / 256^(3 * idx % 10) << 232, sha3(address(msg.sender), 0) + 13)
        s = sha3(sha3(uint256(stor[('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'parentCount', 0))) + (s / 10)].field_0) / 256^(3 * s % 10) << 232, sha3(address(msg.sender), 0) + 13))
        while sha3(sha3(uint256(stor[('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'parentCount', 0))) + (s / 10)].field_0) / 256^(3 * s % 10) << 232, sha3(address(msg.sender), 0) + 13)) + (uint256(parentCount[address(msg.sender)][13][uint256(stor[('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'parentCount', 0))) + (s / 10)].field_0) / 256^(3 * s % 10) << 232].field_0) + 31 / 32) > s:
            uint256(stor[s]) = 0
            s = s + 1
            continue 
        s = sha3(sha3(uint256(stor[('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'parentCount', 0))) + (s / 10)].field_0) / 256^(3 * s % 10) << 232, sha3(address(msg.sender), 0) + 13)) + (uint256(parentCount[address(msg.sender)][13][uint256(stor[('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'parentCount', 0))) + (s / 10)].field_0) / 256^(3 * s % 10) << 232].field_0) + 31 / 32) + 1
        continue 
    uint256(parentCount[address(msg.sender)].field_1536) = 0
    idx = 0
    while uint256(parentCount[address(msg.sender)].field_1536) + 9 / 10 > idx:
        uint256(parentCount[address(msg.sender)][idx + 6].field_0) = 0
        idx = idx + 1
        continue 
    emit code.data[11110 len 32]: msg.sender
}

function setAvatar(uint256 arg1, bytes arg2) payable {
    mem[128 len arg2.length] = arg2[all]
    if uint256(parentCount[address(msg.sender)].field_1792) <= arg1:
        uint256(parentCount[address(msg.sender)].field_1792) = arg1 + 1
        if not uint256(parentCount[address(msg.sender)].field_1792) <= arg1 + 1:
            mem[0] = sha3(address(msg.sender), 0) + 7
            idx = arg1 + 1
            while sha3(sha3(address(msg.sender), 0) + 7) + uint256(parentCount[address(msg.sender)].field_1792) > idx + sha3(mem[0]):
                uint256(stor[idx + sha3(mem[0])]) = 0
                mem[0] = idx + sha3(mem[0])
                s = sha3(s + sha3(mem[0]))
                while sha3(s + sha3(mem[0])) + (uint256(stor[s + sha3(mem[0])]) + 31 / 32) > s + sha3(mem[0]):
                    uint256(stor[s + sha3(mem[0])]) = 0
                    s = s + 1
                    continue 
                s = s + 1
                continue 
    require arg1 < uint256(parentCount[address(msg.sender)].field_1792)
    uint256(stor[arg1 + ('array', 7, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'parentCount', 0)))].field_0) = arg2.length
    if not arg2.length:
        idx = 0
        while uint256(stor[arg1 + ('array', 7, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'parentCount', 0)))].field_0) + 31 / 32 > idx:
            uint256(stor[idx + sha3(arg1 + ('array', 7, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'parentCount', 0))))].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while arg2.length + 128 > idx:
            uint256(stor[s + sha3(arg1 + ('array', 7, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'parentCount', 0))))].field_0) = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, arg2.length + 31) >> 5
        while uint256(stor[arg1 + ('array', 7, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'parentCount', 0)))].field_0) + 31 / 32 > idx:
            uint256(stor[idx + sha3(arg1 + ('array', 7, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'parentCount', 0))))].field_0) = 0
            idx = idx + 1
            continue 
    emit code.data[11110 len 32]: msg.sender
}

function setCoverImage(uint256 arg1, bytes arg2) payable {
    mem[128 len arg2.length] = arg2[all]
    if uint256(parentCount[address(msg.sender)].field_2048) <= arg1:
        uint256(parentCount[address(msg.sender)].field_2048) = arg1 + 1
        if not uint256(parentCount[address(msg.sender)].field_2048) <= arg1 + 1:
            mem[0] = sha3(address(msg.sender), 0) + 8
            idx = arg1 + 1
            while sha3(sha3(address(msg.sender), 0) + 8) + uint256(parentCount[address(msg.sender)].field_2048) > idx + sha3(mem[0]):
                uint256(stor[idx + sha3(mem[0])]) = 0
                mem[0] = idx + sha3(mem[0])
                s = sha3(s + sha3(mem[0]))
                while sha3(s + sha3(mem[0])) + (uint256(stor[s + sha3(mem[0])]) + 31 / 32) > s + sha3(mem[0]):
                    uint256(stor[s + sha3(mem[0])]) = 0
                    s = s + 1
                    continue 
                s = s + 1
                continue 
    require arg1 < uint256(parentCount[address(msg.sender)].field_2048)
    uint256(stor[arg1 + ('array', 8, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'parentCount', 0)))].field_0) = arg2.length
    if not arg2.length:
        idx = 0
        while uint256(stor[arg1 + ('array', 8, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'parentCount', 0)))].field_0) + 31 / 32 > idx:
            uint256(stor[idx + sha3(arg1 + ('array', 8, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'parentCount', 0))))].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while arg2.length + 128 > idx:
            uint256(stor[s + sha3(arg1 + ('array', 8, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'parentCount', 0))))].field_0) = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, arg2.length + 31) >> 5
        while uint256(stor[arg1 + ('array', 8, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'parentCount', 0)))].field_0) + 31 / 32 > idx:
            uint256(stor[idx + sha3(arg1 + ('array', 8, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'parentCount', 0))))].field_0) = 0
            idx = idx + 1
            continue 
    emit code.data[11110 len 32]: msg.sender
}

function setTopic(uint256 arg1, string arg2) payable {
    mem[128 len arg2.length] = arg2[all]
    if uint256(parentCount[address(msg.sender)].field_2560) <= arg1:
        uint256(parentCount[address(msg.sender)].field_2560) = arg1 + 1
        if not uint256(parentCount[address(msg.sender)].field_2560) <= arg1 + 1:
            mem[0] = sha3(address(msg.sender), 0) + 10
            idx = arg1 + 1
            while sha3(sha3(address(msg.sender), 0) + 10) + uint256(parentCount[address(msg.sender)].field_2560) > idx + sha3(mem[0]):
                uint256(stor[idx + sha3(mem[0])]) = 0
                mem[0] = idx + sha3(mem[0])
                s = sha3(s + sha3(mem[0]))
                while sha3(s + sha3(mem[0])) + (uint256(stor[s + sha3(mem[0])]) + 31 / 32) > s + sha3(mem[0]):
                    uint256(stor[s + sha3(mem[0])]) = 0
                    s = s + 1
                    continue 
                s = s + 1
                continue 
    require arg1 < uint256(parentCount[address(msg.sender)].field_2560)
    uint256(stor[arg1 + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'parentCount', 0)))].field_0) = arg2.length
    if not arg2.length:
        idx = 0
        while uint256(stor[arg1 + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'parentCount', 0)))].field_0) + 31 / 32 > idx:
            uint256(stor[idx + sha3(arg1 + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'parentCount', 0))))].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while arg2.length + 128 > idx:
            uint256(stor[s + sha3(arg1 + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'parentCount', 0))))].field_0) = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, arg2.length + 31) >> 5
        while uint256(stor[arg1 + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'parentCount', 0)))].field_0) + 31 / 32 > idx:
            uint256(stor[idx + sha3(arg1 + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'parentCount', 0))))].field_0) = 0
            idx = idx + 1
            continue 
    emit code.data[11110 len 32]: msg.sender
}

function setChild(uint256 arg1, string arg2) payable {
    mem[128 len arg2.length] = arg2[all]
    if uint256(parentCount[address(msg.sender)].field_3072) <= arg1:
        uint256(parentCount[address(msg.sender)].field_3072) = arg1 + 1
        if not uint256(parentCount[address(msg.sender)].field_3072) <= arg1 + 1:
            mem[0] = sha3(address(msg.sender), 0) + 12
            idx = arg1 + 1
            while sha3(sha3(address(msg.sender), 0) + 12) + uint256(parentCount[address(msg.sender)].field_3072) > idx + sha3(mem[0]):
                uint256(stor[idx + sha3(mem[0])]) = 0
                mem[0] = idx + sha3(mem[0])
                s = sha3(s + sha3(mem[0]))
                while sha3(s + sha3(mem[0])) + (uint256(stor[s + sha3(mem[0])]) + 31 / 32) > s + sha3(mem[0]):
                    uint256(stor[s + sha3(mem[0])]) = 0
                    s = s + 1
                    continue 
                s = s + 1
                continue 
    require arg1 < uint256(parentCount[address(msg.sender)].field_3072)
    uint256(stor[arg1 + ('array', 12, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'parentCount', 0)))].field_0) = arg2.length
    if not arg2.length:
        idx = 0
        while uint256(stor[arg1 + ('array', 12, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'parentCount', 0)))].field_0) + 31 / 32 > idx:
            uint256(stor[idx + sha3(arg1 + ('array', 12, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'parentCount', 0))))].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while arg2.length + 128 > idx:
            uint256(stor[s + sha3(arg1 + ('array', 12, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'parentCount', 0))))].field_0) = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, arg2.length + 31) >> 5
        while uint256(stor[arg1 + ('array', 12, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'parentCount', 0)))].field_0) + 31 / 32 > idx:
            uint256(stor[idx + sha3(arg1 + ('array', 12, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'parentCount', 0))))].field_0) = 0
            idx = idx + 1
            continue 
    emit code.data[11110 len 32]: msg.sender
}

function setParent(uint256 arg1, string arg2) payable {
    mem[128 len arg2.length] = arg2[all]
    if uint256(parentCount[address(msg.sender)].field_2816) <= arg1:
        uint256(parentCount[address(msg.sender)].field_2816) = arg1 + 1
        if not uint256(parentCount[address(msg.sender)].field_2816) <= arg1 + 1:
            mem[0] = sha3(address(msg.sender), 0) + 11
            idx = arg1 + 1
            while sha3(sha3(address(msg.sender), 0) + 11) + uint256(parentCount[address(msg.sender)].field_2816) > idx + sha3(mem[0]):
                uint256(stor[idx + sha3(mem[0])]) = 0
                mem[0] = idx + sha3(mem[0])
                s = sha3(s + sha3(mem[0]))
                while sha3(s + sha3(mem[0])) + (uint256(stor[s + sha3(mem[0])]) + 31 / 32) > s + sha3(mem[0]):
                    uint256(stor[s + sha3(mem[0])]) = 0
                    s = s + 1
                    continue 
                s = s + 1
                continue 
    require arg1 < uint256(parentCount[address(msg.sender)].field_2816)
    uint256(stor[arg1 + ('array', 11, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'parentCount', 0)))].field_0) = arg2.length
    if not arg2.length:
        idx = 0
        while uint256(stor[arg1 + ('array', 11, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'parentCount', 0)))].field_0) + 31 / 32 > idx:
            uint256(stor[idx + sha3(arg1 + ('array', 11, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'parentCount', 0))))].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while arg2.length + 128 > idx:
            uint256(stor[s + sha3(arg1 + ('array', 11, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'parentCount', 0))))].field_0) = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, arg2.length + 31) >> 5
        while uint256(stor[arg1 + ('array', 11, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'parentCount', 0)))].field_0) + 31 / 32 > idx:
            uint256(stor[idx + sha3(arg1 + ('array', 11, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'parentCount', 0))))].field_0) = 0
            idx = idx + 1
            continue 
    emit code.data[11110 len 32]: msg.sender
}

function setBackgroundImage(uint256 arg1, bytes arg2) payable {
    mem[128 len arg2.length] = arg2[all]
    if uint256(parentCount[address(msg.sender)].field_2304) <= arg1:
        uint256(parentCount[address(msg.sender)].field_2304) = arg1 + 1
        if not uint256(parentCount[address(msg.sender)].field_2304) <= arg1 + 1:
            mem[0] = sha3(address(msg.sender), 0) + 9
            idx = arg1 + 1
            while sha3(sha3(address(msg.sender), 0) + 9) + uint256(parentCount[address(msg.sender)].field_2304) > idx + sha3(mem[0]):
                uint256(stor[idx + sha3(mem[0])]) = 0
                mem[0] = idx + sha3(mem[0])
                s = sha3(s + sha3(mem[0]))
                while sha3(s + sha3(mem[0])) + (uint256(stor[s + sha3(mem[0])]) + 31 / 32) > s + sha3(mem[0]):
                    uint256(stor[s + sha3(mem[0])]) = 0
                    s = s + 1
                    continue 
                s = s + 1
                continue 
    require arg1 < uint256(parentCount[address(msg.sender)].field_2304)
    uint256(stor[arg1 + ('array', 9, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'parentCount', 0)))].field_0) = arg2.length
    if not arg2.length:
        idx = 0
        while uint256(stor[arg1 + ('array', 9, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'parentCount', 0)))].field_0) + 31 / 32 > idx:
            uint256(stor[idx + sha3(arg1 + ('array', 9, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'parentCount', 0))))].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while arg2.length + 128 > idx:
            uint256(stor[s + sha3(arg1 + ('array', 9, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'parentCount', 0))))].field_0) = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, arg2.length + 31) >> 5
        while uint256(stor[arg1 + ('array', 9, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'parentCount', 0)))].field_0) + 31 / 32 > idx:
            uint256(stor[idx + sha3(arg1 + ('array', 9, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'parentCount', 0))))].field_0) = 0
            idx = idx + 1
            continue 
    emit code.data[11110 len 32]: msg.sender
}

function deleteEntireGlofile() payable {
    parentCount[address(msg.sender)].field_0 % 1099511627776 = 0
    uint256(parentCount[address(msg.sender)].field_256) = 0
    idx = 0
    while uint256(parentCount[address(msg.sender)].field_256) + 31 / 32 > idx:
        uint256(parentCount[address(msg.sender)][idx + 1].field_0) = 0
        idx = idx + 1
        continue 
    uint256(parentCount[address(msg.sender)].field_512) = 0
    idx = 0
    while uint256(parentCount[address(msg.sender)].field_512) + 31 / 32 > idx:
        uint256(parentCount[address(msg.sender)][idx + 2].field_0) = 0
        idx = idx + 1
        continue 
    uint256(parentCount[address(msg.sender)].field_768) = 0
    idx = 0
    while uint256(parentCount[address(msg.sender)].field_768) + 31 / 32 > idx:
        uint256(parentCount[address(msg.sender)][idx + 3].field_0) = 0
        idx = idx + 1
        continue 
    uint256(parentCount[address(msg.sender)].field_1024) = 0
    idx = 0
    while uint256(parentCount[address(msg.sender)].field_1024) + 9 / 10 > idx:
        uint256(parentCount[address(msg.sender)][idx + 4].field_0) = 0
        idx = idx + 1
        continue 
    uint256(parentCount[address(msg.sender)].field_1280) = 0
    idx = 0
    while uint256(parentCount[address(msg.sender)].field_1280) + 9 / 10 > idx:
        uint256(parentCount[address(msg.sender)][idx + 5].field_0) = 0
        idx = idx + 1
        continue 
    uint256(parentCount[address(msg.sender)].field_1536) = 0
    idx = 0
    while uint256(parentCount[address(msg.sender)].field_1536) + 9 / 10 > idx:
        uint256(parentCount[address(msg.sender)][idx + 6].field_0) = 0
        idx = idx + 1
        continue 
    uint256(parentCount[address(msg.sender)].field_1792) = 0
    mem[0] = sha3(address(msg.sender), 0) + 7
    idx = 0
    while sha3(sha3(address(msg.sender), 0) + 7) + uint256(parentCount[address(msg.sender)].field_1792) > idx + sha3(mem[0]):
        uint256(stor[idx + sha3(mem[0])]) = 0
        mem[0] = idx + sha3(mem[0])
        s = sha3(s + sha3(mem[0]))
        while sha3(s + sha3(mem[0])) + (uint256(stor[s + sha3(mem[0])]) + 31 / 32) > s + sha3(mem[0]):
            uint256(stor[s + sha3(mem[0])]) = 0
            s = s + 1
            continue 
        s = s + 1
        continue 
    uint256(parentCount[address(msg.sender)].field_2048) = 0
    mem[0] = sha3(address(msg.sender), 0) + 8
    idx = 0
    while sha3(sha3(address(msg.sender), 0) + 8) + uint256(parentCount[address(msg.sender)].field_2048) > idx + sha3(mem[0]):
        uint256(stor[idx + sha3(mem[0])]) = 0
        mem[0] = idx + sha3(mem[0])
        s = sha3(s + sha3(mem[0]))
        while sha3(s + sha3(mem[0])) + (uint256(stor[s + sha3(mem[0])]) + 31 / 32) > s + sha3(mem[0]):
            uint256(stor[s + sha3(mem[0])]) = 0
            s = s + 1
            continue 
        s = s + 1
        continue 
    uint256(parentCount[address(msg.sender)].field_2304) = 0
    mem[0] = sha3(address(msg.sender), 0) + 9
    idx = 0
    while sha3(sha3(address(msg.sender), 0) + 9) + uint256(parentCount[address(msg.sender)].field_2304) > idx + sha3(mem[0]):
        uint256(stor[idx + sha3(mem[0])]) = 0
        mem[0] = idx + sha3(mem[0])
        s = sha3(s + sha3(mem[0]))
        while sha3(s + sha3(mem[0])) + (uint256(stor[s + sha3(mem[0])]) + 31 / 32) > s + sha3(mem[0]):
            uint256(stor[s + sha3(mem[0])]) = 0
            s = s + 1
            continue 
        s = s + 1
        continue 
    uint256(parentCount[address(msg.sender)].field_2560) = 0
    mem[0] = sha3(address(msg.sender), 0) + 10
    idx = 0
    while sha3(sha3(address(msg.sender), 0) + 10) + uint256(parentCount[address(msg.sender)].field_2560) > idx + sha3(mem[0]):
        uint256(stor[idx + sha3(mem[0])]) = 0
        mem[0] = idx + sha3(mem[0])
        s = sha3(s + sha3(mem[0]))
        while sha3(s + sha3(mem[0])) + (uint256(stor[s + sha3(mem[0])]) + 31 / 32) > s + sha3(mem[0]):
            uint256(stor[s + sha3(mem[0])]) = 0
            s = s + 1
            continue 
        s = s + 1
        continue 
    uint256(parentCount[address(msg.sender)].field_2816) = 0
    mem[0] = sha3(address(msg.sender), 0) + 11
    idx = 0
    while sha3(sha3(address(msg.sender), 0) + 11) + uint256(parentCount[address(msg.sender)].field_2816) > idx + sha3(mem[0]):
        uint256(stor[idx + sha3(mem[0])]) = 0
        mem[0] = idx + sha3(mem[0])
        s = sha3(s + sha3(mem[0]))
        while sha3(s + sha3(mem[0])) + (uint256(stor[s + sha3(mem[0])]) + 31 / 32) > s + sha3(mem[0]):
            uint256(stor[s + sha3(mem[0])]) = 0
            s = s + 1
            continue 
        s = s + 1
        continue 
    uint256(parentCount[address(msg.sender)].field_3072) = 0
    mem[0] = sha3(address(msg.sender), 0) + 12
    idx = 0
    while sha3(sha3(address(msg.sender), 0) + 12) + uint256(parentCount[address(msg.sender)].field_3072) > idx + sha3(mem[0]):
        uint256(stor[idx + sha3(mem[0])]) = 0
        mem[0] = idx + sha3(mem[0])
        s = sha3(s + sha3(mem[0]))
        while sha3(s + sha3(mem[0])) + (uint256(stor[s + sha3(mem[0])]) + 31 / 32) > s + sha3(mem[0]):
            uint256(stor[s + sha3(mem[0])]) = 0
            s = s + 1
            continue 
        s = s + 1
        continue 
    emit Delete(msg.sender);
}

function setBio(bytes3 arg1, bytes arg2) payable {
    mem[64] = ceil32(arg2.length) + 128
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[0] = msg.sender
    mem[32] = 0
    idx = 0
    while idx < uint256(parentCount[address(msg.sender)].field_1536):
        mem[0] = sha3(address(msg.sender), 0) + 6
        if uint256(stor[('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'parentCount', 0))) + (idx / 10)].field_0) / 256^(3 * idx % 10) << 232 != arg1:
            idx = idx + 1
            continue 
        if idx == uint256(parentCount[address(msg.sender)].field_1536):
            idx = 0
            while idx < uint256(parentCount[address(msg.sender)].field_1536):
                mem[0] = sha3(address(msg.sender), 0) + 6
                if stor[('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'parentCount', 0))) + (idx / 10)].field_8 * 3 * idx % 10 % 16777216:
                    idx = idx + 1
                    continue 
                if idx == uint256(parentCount[address(msg.sender)].field_1536):
                    uint256(parentCount[address(msg.sender)].field_1536)++
                    if not uint256(parentCount[address(msg.sender)].field_1536) <= uint256(parentCount[address(msg.sender)].field_1536) + 1:
                        s = sha3(sha3(address(msg.sender), 0) + 6) + (uint256(parentCount[address(msg.sender)].field_1536) + 10 / 10)
                        while sha3(sha3(address(msg.sender), 0) + 6) + (uint256(parentCount[address(msg.sender)].field_1536) + 9 / 10) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                require idx < uint256(parentCount[address(msg.sender)].field_1536)
                uint256(stor[(idx / 10) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'parentCount', 0)))].field_0) = Mask(24, 232, arg1) >> 232 * 256^(3 * idx % 10) or !(16777215 * 256^(3 * idx % 10)) and uint256(stor[(idx / 10) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'parentCount', 0)))].field_0)
                uint256(parentCount[address(msg.sender)][13][arg1].field_0) = arg2.length
                if not arg2.length:
                    idx = sha3(sha3(arg1, sha3(address(msg.sender), 0) + 13))
                    while sha3(sha3(arg1, sha3(address(msg.sender), 0) + 13)) + (uint256(parentCount[address(msg.sender)][13][arg1].field_0) + 31 / 32) > idx:
                        uint256(stor[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = sha3(sha3(arg1, sha3(address(msg.sender), 0) + 13))
                    idx = 128
                    while arg2.length + 128 > idx:
                        uint256(stor[s]) = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = sha3(sha3(arg1, sha3(address(msg.sender), 0) + 13)) + (Mask(251, 0, arg2.length + 31) >> 5)
                    while sha3(sha3(arg1, sha3(address(msg.sender), 0) + 13)) + (uint256(parentCount[address(msg.sender)][13][arg1].field_0) + 31 / 32) > idx:
                        uint256(stor[idx]) = 0
                        idx = idx + 1
                        continue 
                emit code.data[11110 len 32]: msg.sender
            if idx == uint256(parentCount[address(msg.sender)].field_1536):
                uint256(parentCount[address(msg.sender)].field_1536)++
                if not uint256(parentCount[address(msg.sender)].field_1536) <= uint256(parentCount[address(msg.sender)].field_1536) + 1:
                    s = sha3(sha3(address(msg.sender), 0) + 6) + (uint256(parentCount[address(msg.sender)].field_1536) + 10 / 10)
                    while sha3(sha3(address(msg.sender), 0) + 6) + (uint256(parentCount[address(msg.sender)].field_1536) + 9 / 10) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
            require idx < uint256(parentCount[address(msg.sender)].field_1536)
            uint256(stor[(idx / 10) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'parentCount', 0)))].field_0) = Mask(24, 232, arg1) >> 232 * 256^(3 * idx % 10) or !(16777215 * 256^(3 * idx % 10)) and uint256(stor[(idx / 10) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'parentCount', 0)))].field_0)
        uint256(parentCount[address(msg.sender)][13][arg1].field_0) = arg2.length
        if not arg2.length:
            idx = sha3(sha3(arg1, sha3(address(msg.sender), 0) + 13))
            while sha3(sha3(arg1, sha3(address(msg.sender), 0) + 13)) + (uint256(parentCount[address(msg.sender)][13][arg1].field_0) + 31 / 32) > idx:
                uint256(stor[idx]) = 0
                idx = idx + 1
                continue 
        else:
            s = sha3(sha3(arg1, sha3(address(msg.sender), 0) + 13))
            idx = 128
            while arg2.length + 128 > idx:
                uint256(stor[s]) = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = sha3(sha3(arg1, sha3(address(msg.sender), 0) + 13)) + (Mask(251, 0, arg2.length + 31) >> 5)
            while sha3(sha3(arg1, sha3(address(msg.sender), 0) + 13)) + (uint256(parentCount[address(msg.sender)][13][arg1].field_0) + 31 / 32) > idx:
                uint256(stor[idx]) = 0
                idx = idx + 1
                continue 
        emit code.data[11110 len 32]: msg.sender
    if idx == uint256(parentCount[address(msg.sender)].field_1536):
        idx = 0
        while idx < uint256(parentCount[address(msg.sender)].field_1536):
            mem[0] = sha3(address(msg.sender), 0) + 6
            if stor[('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'parentCount', 0))) + (idx / 10)].field_8 * 3 * idx % 10 % 16777216:
                idx = idx + 1
                continue 
            if idx == uint256(parentCount[address(msg.sender)].field_1536):
                uint256(parentCount[address(msg.sender)].field_1536)++
                if not uint256(parentCount[address(msg.sender)].field_1536) <= uint256(parentCount[address(msg.sender)].field_1536) + 1:
                    s = sha3(sha3(address(msg.sender), 0) + 6) + (uint256(parentCount[address(msg.sender)].field_1536) + 10 / 10)
                    while sha3(sha3(address(msg.sender), 0) + 6) + (uint256(parentCount[address(msg.sender)].field_1536) + 9 / 10) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
            require idx < uint256(parentCount[address(msg.sender)].field_1536)
            uint256(stor[(idx / 10) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'parentCount', 0)))].field_0) = Mask(24, 232, arg1) >> 232 * 256^(3 * idx % 10) or !(16777215 * 256^(3 * idx % 10)) and uint256(stor[(idx / 10) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'parentCount', 0)))].field_0)
            uint256(parentCount[address(msg.sender)][13][arg1].field_0) = arg2.length
            if not arg2.length:
                idx = sha3(sha3(arg1, sha3(address(msg.sender), 0) + 13))
                while sha3(sha3(arg1, sha3(address(msg.sender), 0) + 13)) + (uint256(parentCount[address(msg.sender)][13][arg1].field_0) + 31 / 32) > idx:
                    uint256(stor[idx]) = 0
                    idx = idx + 1
                    continue 
            else:
                s = sha3(sha3(arg1, sha3(address(msg.sender), 0) + 13))
                idx = 128
                while arg2.length + 128 > idx:
                    uint256(stor[s]) = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = sha3(sha3(arg1, sha3(address(msg.sender), 0) + 13)) + (Mask(251, 0, arg2.length + 31) >> 5)
                while sha3(sha3(arg1, sha3(address(msg.sender), 0) + 13)) + (uint256(parentCount[address(msg.sender)][13][arg1].field_0) + 31 / 32) > idx:
                    uint256(stor[idx]) = 0
                    idx = idx + 1
                    continue 
            emit code.data[11110 len 32]: msg.sender
        if idx == uint256(parentCount[address(msg.sender)].field_1536):
            uint256(parentCount[address(msg.sender)].field_1536)++
            if not uint256(parentCount[address(msg.sender)].field_1536) <= uint256(parentCount[address(msg.sender)].field_1536) + 1:
                s = uint256(parentCount[address(msg.sender)].field_1536) + 10 / 10
                while uint256(parentCount[address(msg.sender)].field_1536) + 9 / 10 > s:
                    uint256(parentCount[address(msg.sender)][s + 6].field_0) = 0
                    s = s + 1
                    continue 
        require idx < uint256(parentCount[address(msg.sender)].field_1536)
        uint256(stor[(idx / 10) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'parentCount', 0)))].field_0) = Mask(24, 232, arg1) >> 232 * 256^(3 * idx % 10) or !(16777215 * 256^(3 * idx % 10)) and uint256(stor[(idx / 10) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'parentCount', 0)))].field_0)
    uint256(parentCount[address(msg.sender)][13][arg1].field_0) = arg2.length
    if not arg2.length:
        idx = 0
        while uint256(parentCount[address(msg.sender)][13][arg1].field_0) + 31 / 32 > idx:
            uint256(parentCount[address(msg.sender)][13][arg1][idx].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while arg2.length + 128 > idx:
            uint256(parentCount[address(msg.sender)][13][arg1][s].field_0) = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, arg2.length + 31) >> 5
        while uint256(parentCount[address(msg.sender)][13][arg1].field_0) + 31 / 32 > idx:
            uint256(parentCount[address(msg.sender)][13][arg1][idx].field_0) = 0
            idx = idx + 1
            continue 
    emit code.data[11110 len 32]: msg.sender
}



}
