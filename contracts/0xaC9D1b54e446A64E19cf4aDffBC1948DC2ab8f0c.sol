contract main {


// =======================  Init code  ======================


uint256 stor1;

function _fallback() payable {
    stor1++
    if not stor1 <= stor1 + 1:
        mem[0] = 1
        idx = 8 * stor1 + 1
        while sha3(1) + (8 * stor1) > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])]) = 0
            uint8(stor[idx + sha3(mem[0]) + 1]) = 0
            uint256(stor[idx + sha3(mem[0]) + 2]) = 0
            uint256(stor[idx + sha3(mem[0]) + 3]) = 0
            uint256(stor[idx + sha3(mem[0]) + 5]) = 0
            s = sha3(idx + sha3(mem[0]) + 5)
            while sha3(idx + sha3(mem[0]) + 5) + uint256(stor[idx + sha3(mem[0]) + 5]) > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
            uint256(stor[idx + sha3(mem[0]) + 6]) = 0
            mem[0] = idx + sha3(mem[0]) + 6
            s = sha3(s + sha3(mem[0]) + 6)
            while sha3(s + sha3(mem[0]) + 6) + uint256(stor[s + sha3(mem[0]) + 6]) > s + sha3(mem[0]):
                uint256(stor[s + sha3(mem[0])]) = 0
                s = s + 1
                continue 
            uint8(stor[s + sha3(mem[0]) + 7]) = 0
            s = s + 1
            continue 
    return code.data[316 len 5278]
}



// =====================  Runtime code  =====================


#
#  - totalSupply(bytes32 arg1)
#
const recover(address arg1, address arg2) = 0


mapping of uint256 sub_c4242719;

function sub_c4242719(?) payable {
    return sub_c4242719[arg1]
}

function assets(uint256 arg1) payable {
    require arg1 < assets.length
    return uint256(assets[arg1].field_0), 
           uint8(assets[arg1].field_256),
           uint256(assets[arg1].field_512),
           uint256(assets[arg1].field_768),
           uint8(assets[arg1].field_1792)
}

function _fallback() payable {
  stop
}

function name(bytes32 arg1) payable {
    if not sub_c4242719[arg1]:
        return 0
    require sub_c4242719[arg1] < assets.length
    return uint256(assets[stor0[arg1]].field_512)
}

function description(bytes32 arg1) payable {
    if not sub_c4242719[arg1]:
        return 0
    require sub_c4242719[arg1] < assets.length
    return uint256(assets[stor0[arg1]].field_768)
}

function balanceOf(address arg1, bytes32 arg2) payable {
    if not sub_c4242719[arg2]:
        return 0
    require sub_c4242719[arg2] < assets.length
    if not uint256(stor[(8 * stor0[arg2]) + ('name', 'assets', 1) + 4][address(arg1)].field_0):
        return 0
    require sub_c4242719[arg2] < assets.length
    require uint256(stor[(8 * stor0[arg2]) + ('name', 'assets', 1) + 4][address(arg1)].field_0) < uint256(assets[stor0[arg2]].field_1536)
    return uint256(stor[uint256(stor[(8 * stor0[arg2]) + ('name', 'assets', 1) + 4][address(arg1)].field_0) + sha3((8 * stor0[arg2]) + ('name', 'assets', 1) + 6)].field_0)
}

function sub_bb46942f(?) payable {
    if not sub_c4242719[arg1]:
        return 0
    require sub_c4242719[arg1] < assets.length
    if not uint8(assets[stor0[arg1]].field_1792):
        return 0
    if not sub_c4242719[arg1]:
        if arg2 <= 1:
            return 0
        if 0 < arg2:
            return 0
    else:
        require sub_c4242719[arg1] < assets.length
        if not uint256(stor[(8 * stor0[arg1]) + ('name', 'assets', 1) + 4][tx.origin].field_0):
            if arg2 <= 1:
                return 0
            if 0 < arg2:
                return 0
        else:
            require sub_c4242719[arg1] < assets.length
            require uint256(stor[(8 * stor0[arg1]) + ('name', 'assets', 1) + 4][tx.origin].field_0) < uint256(assets[stor0[arg1]].field_1536)
            if arg2 <= 1:
                return 0
            if uint256(stor[uint256(stor[(8 * stor0[arg1]) + ('name', 'assets', 1) + 4][tx.origin].field_0) + sha3((8 * stor0[arg1]) + ('name', 'assets', 1) + 6)].field_0) < arg2:
                return 0
    require sub_c4242719[arg1] < assets.length
    require uint256(stor[(8 * stor0[arg1]) + ('name', 'assets', 1) + 4][tx.origin].field_0) < uint256(assets[stor0[arg1]].field_1536)
    uint256(stor[uint256(stor[(8 * stor0[arg1]) + ('name', 'assets', 1) + 4][tx.origin].field_0) + sha3((8 * stor0[arg1]) + ('name', 'assets', 1) + 6)].field_0) -= arg2
    emit 0x30b1b5fb: arg2, tx.origin, 0, arg1
    return 1
}

function sub_a92abe37(?) payable {
    require sub_c4242719[arg1] < assets.length
    if not uint8(assets[stor0[arg1]].field_1792):
        return 0
    require sub_c4242719[arg1] < assets.length
    require sub_c4242719[arg1] < assets.length
    if uint256(stor[(8 * stor0[arg1]) + ('name', 'assets', 1) + 4][tx.origin].field_0):
        require uint256(stor[(8 * stor0[arg1]) + ('name', 'assets', 1) + 4][tx.origin].field_0) < uint256(assets[stor0[arg1]].field_1536)
        uint256(stor[uint256(stor[(8 * stor0[arg1]) + ('name', 'assets', 1) + 4][tx.origin].field_0) + sha3((8 * stor0[arg1]) + ('name', 'assets', 1) + 6)].field_0) += arg2
    else:
        uint256(assets[stor0[arg1]].field_1536)++
        if not uint256(assets[stor0[arg1]].field_1536) <= uint256(assets[stor0[arg1]].field_1536) + 1:
            idx = uint256(assets[stor0[arg1]].field_1536) + 1
            while uint256(assets[stor0[arg1]].field_1536) > idx:
                uint256(stor[idx + sha3((8 * stor0[arg1]) + ('name', 'assets', 1) + 6)].field_0) = 0
                idx = idx + 1
                continue 
        require sub_c4242719[arg1] < assets.length
        uint256(assets[stor0[arg1]].field_1280)++
        if not uint256(assets[stor0[arg1]].field_1280) <= uint256(assets[stor0[arg1]].field_1280) + 1:
            idx = uint256(assets[stor0[arg1]].field_1280) + 1
            while uint256(assets[stor0[arg1]].field_1280) > idx:
                uint256(stor[idx + sha3((8 * stor0[arg1]) + ('name', 'assets', 1) + 5)].field_0) = 0
                idx = idx + 1
                continue 
        require sub_c4242719[arg1] < assets.length
        require uint256(assets[stor0[arg1]].field_1536) < uint256(assets[stor0[arg1]].field_1280)
        uint256(stor[uint256(assets[stor0[arg1]].field_1536) + sha3((8 * stor0[arg1]) + ('name', 'assets', 1) + 5)].field_0) = tx.origin or Mask(96, 160, uint256(stor[uint256(assets[stor0[arg1]].field_1536) + sha3((8 * stor0[arg1]) + ('name', 'assets', 1) + 5)].field_0))
        require sub_c4242719[arg1] < assets.length
        uint256(stor[(8 * stor0[arg1]) + ('name', 'assets', 1) + 4][tx.origin].field_0) = uint256(assets[stor0[arg1]].field_1536)
        require uint256(assets[stor0[arg1]].field_1536) < uint256(assets[stor0[arg1]].field_1536)
        uint256(stor[uint256(assets[stor0[arg1]].field_1536) + sha3((8 * stor0[arg1]) + ('name', 'assets', 1) + 6)].field_0) += arg2
    emit 0x30b1b5fb: arg2, 0, tx.origin, arg1
    return 1
}

function sub_70abebab(?) payable {
    if sub_c4242719[arg1] > 0:
        return 0
    assets.length++
    if not assets.length <= assets.length + 1:
        mem[0] = 1
        idx = 8 * assets.length + 1
        while sha3(1) + (8 * assets.length) > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])]) = 0
            uint8(stor[idx + sha3(mem[0]) + 1]) = 0
            uint256(stor[idx + sha3(mem[0]) + 2]) = 0
            uint256(stor[idx + sha3(mem[0]) + 3]) = 0
            uint256(stor[idx + sha3(mem[0]) + 5]) = 0
            s = sha3(idx + sha3(mem[0]) + 5)
            while sha3(idx + sha3(mem[0]) + 5) + uint256(stor[idx + sha3(mem[0]) + 5]) > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
            uint256(stor[idx + sha3(mem[0]) + 6]) = 0
            mem[0] = idx + sha3(mem[0]) + 6
            s = sha3(s + sha3(mem[0]) + 6)
            while sha3(s + sha3(mem[0]) + 6) + uint256(stor[s + sha3(mem[0]) + 6]) > s + sha3(mem[0]):
                uint256(stor[s + sha3(mem[0])]) = 0
                s = s + 1
                continue 
            uint8(stor[s + sha3(mem[0]) + 7]) = 0
            s = s + 1
            continue 
    mem[416] = 2
    require assets.length < assets.length
    uint256(assets[assets.length].field_0) = arg1
    uint256(assets[assets.length].field_256) = arg5 or Mask(248, 8, uint256(assets[assets.length].field_256))
    uint256(assets[assets.length].field_512) = arg3
    uint256(assets[assets.length].field_768) = arg4
    uint256(assets[assets.length].field_1280) = 2
    s = 0
    idx = 352
    while 416 > idx:
        uint256(stor[s + sha3((8 * assets.length) + ('name', 'assets', 1) + 5)].field_0) = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 2
    while uint256(assets[assets.length].field_1280) > idx:
        address(stor[idx + sha3((8 * assets.length) + ('name', 'assets', 1) + 5)].field_0) = 0
        idx = idx + 1
        continue 
    uint256(assets[assets.length].field_1536) = 2
    s = 0
    idx = 448
    while 512 > idx:
        uint256(stor[s + sha3((8 * assets.length) + ('name', 'assets', 1) + 6)].field_0) = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 2
    while uint256(assets[assets.length].field_1536) > idx:
        uint256(stor[idx + sha3((8 * assets.length) + ('name', 'assets', 1) + 6)].field_0) = 0
        idx = idx + 1
        continue 
    uint256(assets[assets.length].field_1792) = arg6 or Mask(248, 8, uint256(assets[assets.length].field_1792))
    require assets.length < assets.length
    require 1 < uint256(assets[assets.length].field_1536)
    uint256(stor[sha3((8 * assets.length) + ('name', 'assets', 1) + 6)].field_256) = arg2
    require assets.length < assets.length
    require 1 < uint256(assets[assets.length].field_1280)
    uint256(stor[sha3((8 * assets.length) + ('name', 'assets', 1) + 5)].field_256) = tx.origin or Mask(96, 160, uint256(stor[sha3((8 * assets.length) + ('name', 'assets', 1) + 5)].field_256))
    require assets.length < assets.length
    uint256(stor[(8 * assets.length) + ('name', 'assets', 1) + 4][tx.origin].field_0) = 1
    sub_c4242719[arg1] = assets.length
    emit 0x30b1b5fb: arg2, 0, tx.origin, arg1
    return 1
}

function transfer(address arg1, uint256 arg2, bytes32 arg3) payable {
    if not sub_c4242719[arg3]:
        return 0
    if not sub_c4242719[arg3]:
        if arg2 <= 1:
            return 0
        if 0 < arg2:
            return 0
    else:
        require sub_c4242719[arg3] < assets.length
        if not uint256(stor[(8 * stor0[arg3]) + ('name', 'assets', 1) + 4][tx.origin].field_0):
            if arg2 <= 1:
                return 0
            if 0 < arg2:
                return 0
        else:
            require sub_c4242719[arg3] < assets.length
            require uint256(stor[(8 * stor0[arg3]) + ('name', 'assets', 1) + 4][tx.origin].field_0) < uint256(assets[stor0[arg3]].field_1536)
            if arg2 <= 1:
                return 0
            if uint256(stor[uint256(stor[(8 * stor0[arg3]) + ('name', 'assets', 1) + 4][tx.origin].field_0) + sha3((8 * stor0[arg3]) + ('name', 'assets', 1) + 6)].field_0) < arg2:
                return 0
    require sub_c4242719[arg3] < assets.length
    require sub_c4242719[arg3] < assets.length
    if uint256(stor[(8 * stor0[arg3]) + ('name', 'assets', 1) + 4][address(arg1)].field_0):
        require uint256(stor[(8 * stor0[arg3]) + ('name', 'assets', 1) + 4][tx.origin].field_0) < uint256(assets[stor0[arg3]].field_1536)
        uint256(stor[uint256(stor[(8 * stor0[arg3]) + ('name', 'assets', 1) + 4][tx.origin].field_0) + sha3((8 * stor0[arg3]) + ('name', 'assets', 1) + 6)].field_0) -= arg2
        require sub_c4242719[arg3] < assets.length
        require uint256(stor[(8 * stor0[arg3]) + ('name', 'assets', 1) + 4][address(arg1)].field_0) < uint256(assets[stor0[arg3]].field_1536)
        uint256(stor[uint256(stor[(8 * stor0[arg3]) + ('name', 'assets', 1) + 4][address(arg1)].field_0) + sha3((8 * stor0[arg3]) + ('name', 'assets', 1) + 6)].field_0) += arg2
    else:
        uint256(assets[stor0[arg3]].field_1536)++
        if not uint256(assets[stor0[arg3]].field_1536) <= uint256(assets[stor0[arg3]].field_1536) + 1:
            idx = uint256(assets[stor0[arg3]].field_1536) + 1
            while uint256(assets[stor0[arg3]].field_1536) > idx:
                uint256(stor[idx + sha3((8 * stor0[arg3]) + ('name', 'assets', 1) + 6)].field_0) = 0
                idx = idx + 1
                continue 
        require sub_c4242719[arg3] < assets.length
        uint256(assets[stor0[arg3]].field_1280)++
        if not uint256(assets[stor0[arg3]].field_1280) <= uint256(assets[stor0[arg3]].field_1280) + 1:
            idx = uint256(assets[stor0[arg3]].field_1280) + 1
            while uint256(assets[stor0[arg3]].field_1280) > idx:
                uint256(stor[idx + sha3((8 * stor0[arg3]) + ('name', 'assets', 1) + 5)].field_0) = 0
                idx = idx + 1
                continue 
        require sub_c4242719[arg3] < assets.length
        require uint256(assets[stor0[arg3]].field_1536) < uint256(assets[stor0[arg3]].field_1536)
        uint256(stor[uint256(assets[stor0[arg3]].field_1536) + sha3((8 * stor0[arg3]) + ('name', 'assets', 1) + 6)].field_0) = 0
        require sub_c4242719[arg3] < assets.length
        require uint256(assets[stor0[arg3]].field_1536) < uint256(assets[stor0[arg3]].field_1280)
        uint256(stor[uint256(assets[stor0[arg3]].field_1536) + sha3((8 * stor0[arg3]) + ('name', 'assets', 1) + 5)].field_0) = arg1 or Mask(96, 160, uint256(stor[uint256(assets[stor0[arg3]].field_1536) + sha3((8 * stor0[arg3]) + ('name', 'assets', 1) + 5)].field_0))
        require sub_c4242719[arg3] < assets.length
        uint256(stor[(8 * stor0[arg3]) + ('name', 'assets', 1) + 4][address(arg1)].field_0) = uint256(assets[stor0[arg3]].field_1536)
        require uint256(stor[(8 * stor0[arg3]) + ('name', 'assets', 1) + 4][tx.origin].field_0) < uint256(assets[stor0[arg3]].field_1536)
        uint256(stor[uint256(stor[(8 * stor0[arg3]) + ('name', 'assets', 1) + 4][tx.origin].field_0) + sha3((8 * stor0[arg3]) + ('name', 'assets', 1) + 6)].field_0) -= arg2
        require sub_c4242719[arg3] < assets.length
        require uint256(assets[stor0[arg3]].field_1536) < uint256(assets[stor0[arg3]].field_1536)
        uint256(stor[uint256(assets[stor0[arg3]].field_1536) + sha3((8 * stor0[arg3]) + ('name', 'assets', 1) + 6)].field_0) += arg2
    emit 0x30b1b5fb: arg2, tx.origin, arg1, arg3
    return 1
}



}
