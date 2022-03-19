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
    return code.data[316 len 4164]
}



// =====================  Runtime code  =====================


#
#  - totalSupply(bytes32 arg1)
#
const recover(address arg1, address arg2) = 0

const sub_f104816b(?) = 1


mapping of uint256 sub_c4242719;

function sub_c4242719(?) payable {
    return sub_c4242719[arg1]
}

function assets(uint256 arg1) payable {
    require arg1 < assets.length
    return assets[arg1].field_0, assets[arg1].field_256, assets[arg1].field_512, assets[arg1].field_768, assets[arg1].field_1792
}

function _fallback() payable {
  stop
}

function name(bytes32 arg1) payable {
    if not sub_c4242719[arg1]:
        return 0
    require sub_c4242719[arg1] < assets.length
    return assets[stor0[arg1]].field_512
}

function description(bytes32 arg1) payable {
    if not sub_c4242719[arg1]:
        return 0
    require sub_c4242719[arg1] < assets.length
    return assets[stor0[arg1]].field_768
}

function balanceOf(address arg1, bytes32 arg2) payable {
    if not sub_c4242719[arg2]:
        return 0
    require sub_c4242719[arg2] < assets.length
    if not stor[(8 * stor0[arg2]) + ('name', 'assets', 1) + 4][address(arg1)].field_0:
        return 0
    require sub_c4242719[arg2] < assets.length
    require stor[(8 * stor0[arg2]) + ('name', 'assets', 1) + 4][address(arg1)].field_0 < assets[stor0[arg2]].field_1536
    return stor[stor[(8 * stor0[arg2]) + ('name', 'assets', 1) + 4][address(arg1)].field_0 + sha3((8 * stor0[arg2]) + ('name', 'assets', 1) + 6)].field_0
}

function sub_bb46942f(?) payable {
    if not sub_c4242719[arg1]:
        return 0
    require sub_c4242719[arg1] < assets.length
    if not assets[stor0[arg1]].field_1792:
        return 0
    if not sub_c4242719[arg1]:
        if arg2 <= 1:
            return 0
        if 0 < arg2:
            return 0
    else:
        require sub_c4242719[arg1] < assets.length
        if not stor[(8 * stor0[arg1]) + ('name', 'assets', 1) + 4][address(msg.sender)].field_0:
            if arg2 <= 1:
                return 0
            if 0 < arg2:
                return 0
        else:
            require sub_c4242719[arg1] < assets.length
            require stor[(8 * stor0[arg1]) + ('name', 'assets', 1) + 4][address(msg.sender)].field_0 < assets[stor0[arg1]].field_1536
            if arg2 <= 1:
                return 0
            if stor[stor[(8 * stor0[arg1]) + ('name', 'assets', 1) + 4][address(msg.sender)].field_0 + sha3((8 * stor0[arg1]) + ('name', 'assets', 1) + 6)].field_0 < arg2:
                return 0
    require sub_c4242719[arg1] < assets.length
    require stor[(8 * stor0[arg1]) + ('name', 'assets', 1) + 4][address(msg.sender)].field_0 < assets[stor0[arg1]].field_1536
    stor[stor[(8 * stor0[arg1]) + ('name', 'assets', 1) + 4][address(msg.sender)].field_0 + sha3((8 * stor0[arg1]) + ('name', 'assets', 1) + 6)].field_0 -= arg2
    emit 0x30b1b5fb: arg2, msg.sender, 0, arg1
    return 1
}

function sub_a92abe37(?) payable {
    require sub_c4242719[arg1] < assets.length
    if not assets[stor0[arg1]].field_1792:
        return 0
    require sub_c4242719[arg1] < assets.length
    require sub_c4242719[arg1] < assets.length
    if stor[(8 * stor0[arg1]) + ('name', 'assets', 1) + 4][address(msg.sender)].field_0:
        require stor[(8 * stor0[arg1]) + ('name', 'assets', 1) + 4][address(msg.sender)].field_0 < assets[stor0[arg1]].field_1536
        stor[stor[(8 * stor0[arg1]) + ('name', 'assets', 1) + 4][address(msg.sender)].field_0 + sha3((8 * stor0[arg1]) + ('name', 'assets', 1) + 6)].field_0 += arg2
    else:
        assets[stor0[arg1]].field_1536++
        if not assets[stor0[arg1]].field_1536 <= assets[stor0[arg1]].field_1536 + 1:
            idx = assets[stor0[arg1]].field_1536 + 1
            while assets[stor0[arg1]].field_1536 > idx:
                stor[idx + sha3((8 * stor0[arg1]) + ('name', 'assets', 1) + 6)].field_0 = 0
                idx = idx + 1
                continue 
        require sub_c4242719[arg1] < assets.length
        assets[stor0[arg1]].field_1280++
        if not assets[stor0[arg1]].field_1280 <= assets[stor0[arg1]].field_1280 + 1:
            idx = assets[stor0[arg1]].field_1280 + 1
            while assets[stor0[arg1]].field_1280 > idx:
                stor[idx + sha3((8 * stor0[arg1]) + ('name', 'assets', 1) + 5)].field_0 = 0
                idx = idx + 1
                continue 
        require sub_c4242719[arg1] < assets.length
        require assets[stor0[arg1]].field_1536 < assets[stor0[arg1]].field_1280
        stor[assets[stor0[arg1]].field_1536 + sha3((8 * stor0[arg1]) + ('name', 'assets', 1) + 5)].field_0 = msg.sender or Mask(96, 160, stor[assets[stor0[arg1]].field_1536 + sha3((8 * stor0[arg1]) + ('name', 'assets', 1) + 5)].field_0)
        require sub_c4242719[arg1] < assets.length
        stor[(8 * stor0[arg1]) + ('name', 'assets', 1) + 4][address(msg.sender)].field_0 = assets[stor0[arg1]].field_1536
        require assets[stor0[arg1]].field_1536 < assets[stor0[arg1]].field_1536
        stor[assets[stor0[arg1]].field_1536 + sha3((8 * stor0[arg1]) + ('name', 'assets', 1) + 6)].field_0 += arg2
    emit 0x30b1b5fb: arg2, 0, msg.sender, arg1
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
        if not stor[(8 * stor0[arg3]) + ('name', 'assets', 1) + 4][tx.origin].field_0:
            if arg2 <= 1:
                return 0
            if 0 < arg2:
                return 0
        else:
            require sub_c4242719[arg3] < assets.length
            require stor[(8 * stor0[arg3]) + ('name', 'assets', 1) + 4][tx.origin].field_0 < assets[stor0[arg3]].field_1536
            if arg2 <= 1:
                return 0
            if stor[stor[(8 * stor0[arg3]) + ('name', 'assets', 1) + 4][tx.origin].field_0 + sha3((8 * stor0[arg3]) + ('name', 'assets', 1) + 6)].field_0 < arg2:
                return 0
    require sub_c4242719[arg3] < assets.length
    require sub_c4242719[arg3] < assets.length
    if stor[(8 * stor0[arg3]) + ('name', 'assets', 1) + 4][address(arg1)].field_0:
        require stor[(8 * stor0[arg3]) + ('name', 'assets', 1) + 4][tx.origin].field_0 < assets[stor0[arg3]].field_1536
        stor[stor[(8 * stor0[arg3]) + ('name', 'assets', 1) + 4][tx.origin].field_0 + sha3((8 * stor0[arg3]) + ('name', 'assets', 1) + 6)].field_0 -= arg2
        require sub_c4242719[arg3] < assets.length
        require stor[(8 * stor0[arg3]) + ('name', 'assets', 1) + 4][address(arg1)].field_0 < assets[stor0[arg3]].field_1536
        stor[stor[(8 * stor0[arg3]) + ('name', 'assets', 1) + 4][address(arg1)].field_0 + sha3((8 * stor0[arg3]) + ('name', 'assets', 1) + 6)].field_0 += arg2
    else:
        assets[stor0[arg3]].field_1536++
        if not assets[stor0[arg3]].field_1536 <= assets[stor0[arg3]].field_1536 + 1:
            idx = assets[stor0[arg3]].field_1536 + 1
            while assets[stor0[arg3]].field_1536 > idx:
                stor[idx + sha3((8 * stor0[arg3]) + ('name', 'assets', 1) + 6)].field_0 = 0
                idx = idx + 1
                continue 
        require sub_c4242719[arg3] < assets.length
        assets[stor0[arg3]].field_1280++
        if not assets[stor0[arg3]].field_1280 <= assets[stor0[arg3]].field_1280 + 1:
            idx = assets[stor0[arg3]].field_1280 + 1
            while assets[stor0[arg3]].field_1280 > idx:
                stor[idx + sha3((8 * stor0[arg3]) + ('name', 'assets', 1) + 5)].field_0 = 0
                idx = idx + 1
                continue 
        require sub_c4242719[arg3] < assets.length
        require assets[stor0[arg3]].field_1536 < assets[stor0[arg3]].field_1536
        stor[assets[stor0[arg3]].field_1536 + sha3((8 * stor0[arg3]) + ('name', 'assets', 1) + 6)].field_0 = 0
        require sub_c4242719[arg3] < assets.length
        require assets[stor0[arg3]].field_1536 < assets[stor0[arg3]].field_1280
        stor[assets[stor0[arg3]].field_1536 + sha3((8 * stor0[arg3]) + ('name', 'assets', 1) + 5)].field_0 = arg1 or Mask(96, 160, stor[assets[stor0[arg3]].field_1536 + sha3((8 * stor0[arg3]) + ('name', 'assets', 1) + 5)].field_0)
        require sub_c4242719[arg3] < assets.length
        stor[(8 * stor0[arg3]) + ('name', 'assets', 1) + 4][address(arg1)].field_0 = assets[stor0[arg3]].field_1536
        require stor[(8 * stor0[arg3]) + ('name', 'assets', 1) + 4][tx.origin].field_0 < assets[stor0[arg3]].field_1536
        stor[stor[(8 * stor0[arg3]) + ('name', 'assets', 1) + 4][tx.origin].field_0 + sha3((8 * stor0[arg3]) + ('name', 'assets', 1) + 6)].field_0 -= arg2
        require sub_c4242719[arg3] < assets.length
        require assets[stor0[arg3]].field_1536 < assets[stor0[arg3]].field_1536
        stor[assets[stor0[arg3]].field_1536 + sha3((8 * stor0[arg3]) + ('name', 'assets', 1) + 6)].field_0 += arg2
    emit 0x30b1b5fb: arg2, tx.origin, arg1, arg3
    return 1
}



}
