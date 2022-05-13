contract main {




// =====================  Runtime code  =====================


#
#  - editionInfo(uint256 arg1)
#
const InterfaceSignature_ERC721Optional = 0xb0aa718700000000000000000000000000000000000000000000000000000000


mapping of address ownerOf;
mapping of address approved;
mapping of uint256 balanceOf;
mapping of uint8 stor3;
array of uint256 name;
array of uint256 symbol;
array of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor7;
array of uint256 tokenByIndex;
mapping of uint256 stor9;
mapping of bool tokenURI;
address owner;
array of struct stor12;
uint8 stor13; offset 160
uint128 stor13; offset 160
address stor13;

function name() {
    return name[0 len name.length].field_0
}

function getApproved(uint256 arg1) {
    return approved[arg1]
}

function totalSupply() {
    return tokenByIndex.length
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require arg1
    require arg2 < balanceOf[address(arg1)]
    require arg2 < tokenOfOwnerByIndex[address(arg1)]
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function tokenByIndex(uint256 arg1) {
    require arg1 < tokenByIndex.length
    return tokenByIndex[arg1]
}

function ownerOf(uint256 arg1) {
    require ownerOf[arg1]
    return ownerOf[arg1]
}

function balanceOf(address arg1) {
    require arg1
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length].field_0
}

function tokenURI(uint256 arg1) {
    return uint256(tokenURI[arg1][0 len tokenURI[arg1].length])
}

function isApprovedForAll(address arg1, address arg2) {
    return bool(stor3[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function exists(uint256 arg1) {
    return not not ownerOf[arg1]
}

function sub_72412b35(?) {
    emit 0x6a690455: block.timestamp, Array(len=arg1.length, data=arg1[all]), arg2
}

function sub_1ce91923(?) {
    emit 0x64f67b17: block.timestamp, Array(len=arg1.length, data=arg1[all]), address(arg2)
}

function setManager(address arg1) {
    require msg.sender == owner
    require arg1
    address(stor13.field_0) = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setApprovalForAll(address arg1, bool arg2) {
    require arg1 != msg.sender
    stor3[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function setTokenURI(uint256 arg1, string arg2) {
    if owner != msg.sender:
        require msg.sender == address(stor13.field_0)
    require ownerOf[arg1]
    require ownerOf[arg1]
    uint256(tokenURI[arg1][]) = Array(len=arg2.length, data=arg2[all])
}

function approve(address arg1, uint256 arg2) {
    require ownerOf[arg2]
    require arg1 != ownerOf[arg2]
    if ownerOf[arg2] != msg.sender:
        require stor3[stor0[arg2]][address(msg.sender)]
    if approved[arg2]:
        approved[arg2] = arg1
        emit Approval(arg2, ownerOf[arg2], arg1);
    else:
        if arg1:
            approved[arg2] = arg1
            emit Approval(arg2, ownerOf[arg2], arg1);
}

function initialize(address arg1) {
    require not uint8(stor13.field_160)
    owner = arg1
    bool(name.length) = 0
    name.length.field_1 = 23
    name.length.field_8 = 'Digital Objects Artwork' / 256
    idx = 0
    while name.length + 31 / 32 > idx:
        name[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(symbol.length) = 0
    symbol.length.field_1 = 4
    symbol.length.field_8 = 'DOBJ' / 256
    idx = 0
    while symbol.length + 31 / 32 > idx:
        symbol[idx].field_0 = 0
        idx = idx + 1
        continue 
    Mask(96, 0, stor13.field_160) = 1
}

function supportsInterface(bytes4 arg1) {
    if Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x80ac58cd00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0xb0aa718700000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x780e9d6300000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x5b5e139f00000000000000000000000000000000000000000000000000000000)
}

function log(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = block.timestamp
    mem[ceil32(arg1.length) + 256 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(arg1.length) + 256] = 0
    emit 0x191353c5: block.timestamp, Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 256 len arg1.length + -ceil32(arg1.length) + 64]), arg1.length + 128
}

function sub_62eb5720(?) {
    if owner != msg.sender:
        require msg.sender == address(stor13.field_0)
    require arg8
    require arg9
    require arg4.length > 0
    require arg7 > 0
    require arg9
    require not ownerOf[arg1]
    ownerOf[arg1] = arg9
    require balanceOf[address(arg9)] + 1 >= balanceOf[address(arg9)]
    balanceOf[address(arg9)]++
    tokenOfOwnerByIndex[address(arg9)]++
    tokenOfOwnerByIndex[address(arg9)][tokenOfOwnerByIndex[address(arg9)]] = arg1
    stor7[arg1] = tokenOfOwnerByIndex[address(arg9)]
    emit Transfer(arg1, 0, arg9);
    stor9[arg1] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = arg1
    require ownerOf[arg1]
    uint256(tokenURI[arg1][]) = Array(len=arg4.length, data=arg4[all])
    stor12[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
    stor12[arg1][1][].field_0 = Array(len=arg3.length, data=arg3[all])
    stor12[arg1].field_512 = arg5
    stor12[arg1].field_544 = arg6
    emit 0x53aecee9: arg1, arg7 << 192, Mask(64, 192, 'USD'), arg8, arg9
}

function logString(string arg1, string arg2) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = block.timestamp
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 288 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 288] = arg2.length
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 320 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        emit 0x191353c5: block.timestamp, Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 288 len arg2.length + arg1.length + -ceil32(arg1.length) + 32]), arg1.length + 128
    else:
        mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 320] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 352 len arg2.length % 32]
        emit 0x191353c5: block.timestamp, Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 288 len floor32(arg2.length) + arg1.length + -ceil32(arg1.length) + 64]), arg1.length + 128
}

function burn(uint256 arg1) {
    if owner != msg.sender:
        require msg.sender == address(stor13.field_0)
    require ownerOf[arg1]
    require ownerOf[arg1]
    require ownerOf[arg1]
    require ownerOf[arg1] == ownerOf[arg1]
    if approved[arg1]:
        approved[arg1] = 0
        emit Approval(arg1, ownerOf[arg1], 0);
    require ownerOf[arg1]
    require ownerOf[arg1] == ownerOf[arg1]
    require 1 <= balanceOf[stor0[arg1]]
    balanceOf[stor0[arg1]]--
    ownerOf[arg1] = 0
    require 1 <= tokenOfOwnerByIndex[stor0[arg1]]
    require tokenOfOwnerByIndex[stor0[arg1]] - 1 < tokenOfOwnerByIndex[stor0[arg1]]
    require stor7[arg1] < tokenOfOwnerByIndex[stor0[arg1]]
    tokenOfOwnerByIndex[stor0[arg1]][stor7[arg1]] = tokenOfOwnerByIndex[stor0[arg1]][tokenOfOwnerByIndex[stor0[arg1]]]
    require tokenOfOwnerByIndex[stor0[arg1]] - 1 < tokenOfOwnerByIndex[stor0[arg1]]
    tokenOfOwnerByIndex[stor0[arg1]][tokenOfOwnerByIndex[stor0[arg1]]] = 0
    tokenOfOwnerByIndex[stor0[arg1]]--
    if tokenOfOwnerByIndex[stor0[arg1]] > tokenOfOwnerByIndex[stor0[arg1]] - 1:
        idx = tokenOfOwnerByIndex[stor0[arg1]] - 1
        while tokenOfOwnerByIndex[stor0[arg1]] > idx:
            tokenOfOwnerByIndex[stor0[arg1]][idx] = 0
            idx = idx + 1
            continue 
    stor7[arg1] = 0
    stor7[stor6[stor0[arg1]][stor6[stor0[arg1]]]] = stor7[arg1]
    emit Transfer(arg1, ownerOf[arg1], 0);
    if Mask(255, 1, (256 * not bool(tokenURI[arg1])) - 1 and uint256(tokenURI[arg1])):
        uint256(tokenURI[arg1]) = 0
        if 31 < tokenURI[arg1].length:
            idx = 0
            while tokenURI[arg1].length + 31 / 32 > idx:
                uint256(tokenURI[arg1][idx]) = 0
                idx = idx + 1
                continue 
    require 1 <= tokenByIndex.length
    require tokenByIndex.length - 1 < tokenByIndex.length
    require stor9[arg1] < tokenByIndex.length
    tokenByIndex[stor9[arg1]] = tokenByIndex[tokenByIndex.length]
    require tokenByIndex.length - 1 < tokenByIndex.length
    tokenByIndex[tokenByIndex.length] = 0
    tokenByIndex.length--
    if tokenByIndex.length > tokenByIndex.length - 1:
        idx = tokenByIndex.length - 1
        while tokenByIndex.length > idx:
            tokenByIndex[idx] = 0
            idx = idx + 1
            continue 
    stor9[arg1] = 0
    stor9[stor8[stor8.length]] = stor9[arg1]
    stor12[arg1].field_0 = 0
    if 31 < stor12[arg1].length:
        idx = 0
        while stor12[arg1].length + 31 / 32 > idx:
            stor12[arg1][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor12[arg1].field_256 = 0
    if 31 < stor12[arg1][1].length:
        idx = 0
        while stor12[arg1][1].length + 31 / 32 > idx:
            stor12[arg1][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    stor12[arg1].field_512 = 0
    stor12[arg1].field_544 = 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if msg.sender == address(stor13.field_0):
        require arg1
        require arg2
        require ownerOf[arg3]
        require ownerOf[arg3] == arg1
        if approved[arg3]:
            approved[arg3] = 0
            emit Approval(arg3, arg1, 0);
        require ownerOf[arg3]
        require ownerOf[arg3] == arg1
        require 1 <= balanceOf[address(arg1)]
        balanceOf[address(arg1)]--
        ownerOf[arg3] = 0
        require 1 <= tokenOfOwnerByIndex[address(arg1)]
        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
        require stor7[arg3] < tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
        tokenOfOwnerByIndex[address(arg1)]--
        if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
            idx = tokenOfOwnerByIndex[address(arg1)] - 1
            while tokenOfOwnerByIndex[address(arg1)] > idx:
                tokenOfOwnerByIndex[address(arg1)][idx] = 0
                idx = idx + 1
                continue 
    else:
        require ownerOf[arg3]
        if ownerOf[arg3] != msg.sender:
            if approved[arg3] != msg.sender:
                require stor3[stor0[arg3]][address(msg.sender)]
        require arg1
        require arg2
        require ownerOf[arg3]
        require ownerOf[arg3] == arg1
        if approved[arg3]:
            approved[arg3] = 0
            emit Approval(arg3, arg1, 0);
        require ownerOf[arg3]
        require ownerOf[arg3] == arg1
        require 1 <= balanceOf[address(arg1)]
        balanceOf[address(arg1)]--
        ownerOf[arg3] = 0
        require 1 <= tokenOfOwnerByIndex[address(arg1)]
        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
        require stor7[arg3] < tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
        tokenOfOwnerByIndex[address(arg1)]--
        if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
            idx = tokenOfOwnerByIndex[address(arg1)] - 1
            while tokenOfOwnerByIndex[address(arg1)] > idx:
                tokenOfOwnerByIndex[address(arg1)][idx] = 0
                idx = idx + 1
                continue 
    stor7[arg3] = 0
    stor7[stor6[address(arg1)][stor6[address(arg1)]]] = stor7[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
    emit Transfer(arg3, arg1, arg2);
}

function sub_e8688374(?) {
    if msg.sender == address(stor13.field_0):
        require arg1
        require arg2
        require ownerOf[arg3]
        require ownerOf[arg3] == arg1
        if approved[arg3]:
            approved[arg3] = 0
            emit Approval(arg3, arg1, 0);
        require ownerOf[arg3]
        require ownerOf[arg3] == arg1
        require 1 <= balanceOf[address(arg1)]
        balanceOf[address(arg1)]--
        ownerOf[arg3] = 0
        require 1 <= tokenOfOwnerByIndex[address(arg1)]
        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
        require stor7[arg3] < tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
        tokenOfOwnerByIndex[address(arg1)]--
        if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
            idx = tokenOfOwnerByIndex[address(arg1)] - 1
            while tokenOfOwnerByIndex[address(arg1)] > idx:
                tokenOfOwnerByIndex[address(arg1)][idx] = 0
                idx = idx + 1
                continue 
    else:
        require ownerOf[arg3]
        if ownerOf[arg3] != msg.sender:
            if approved[arg3] != msg.sender:
                require stor3[stor0[arg3]][address(msg.sender)]
        if msg.sender == address(stor13.field_0):
            require arg1
            require arg2
            require ownerOf[arg3]
            require ownerOf[arg3] == arg1
            if approved[arg3]:
                approved[arg3] = 0
                emit Approval(arg3, arg1, 0);
            require ownerOf[arg3]
            require ownerOf[arg3] == arg1
            require 1 <= balanceOf[address(arg1)]
            balanceOf[address(arg1)]--
            ownerOf[arg3] = 0
            require 1 <= tokenOfOwnerByIndex[address(arg1)]
            require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
            require stor7[arg3] < tokenOfOwnerByIndex[address(arg1)]
            tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
            require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
            tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
            tokenOfOwnerByIndex[address(arg1)]--
            if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
                idx = tokenOfOwnerByIndex[address(arg1)] - 1
                while tokenOfOwnerByIndex[address(arg1)] > idx:
                    tokenOfOwnerByIndex[address(arg1)][idx] = 0
                    idx = idx + 1
                    continue 
        else:
            require ownerOf[arg3]
            if ownerOf[arg3] != msg.sender:
                if approved[arg3] != msg.sender:
                    require stor3[stor0[arg3]][address(msg.sender)]
            require arg1
            require arg2
            require ownerOf[arg3]
            require ownerOf[arg3] == arg1
            if approved[arg3]:
                approved[arg3] = 0
                emit Approval(arg3, arg1, 0);
            require ownerOf[arg3]
            require ownerOf[arg3] == arg1
            require 1 <= balanceOf[address(arg1)]
            balanceOf[address(arg1)]--
            ownerOf[arg3] = 0
            require 1 <= tokenOfOwnerByIndex[address(arg1)]
            require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
            require stor7[arg3] < tokenOfOwnerByIndex[address(arg1)]
            tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
            require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
            tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
            tokenOfOwnerByIndex[address(arg1)]--
            if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
                idx = tokenOfOwnerByIndex[address(arg1)] - 1
                while tokenOfOwnerByIndex[address(arg1)] > idx:
                    tokenOfOwnerByIndex[address(arg1)][idx] = 0
                    idx = idx + 1
                    continue 
    stor7[arg3] = 0
    stor7[stor6[address(arg1)][stor6[address(arg1)]]] = stor7[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
    emit Transfer(arg3, arg1, arg2);
    emit 0x53aecee9: arg3, arg4 << 192, Mask(64, 192, 'USD'), arg1, arg2
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    if msg.sender == address(stor13.field_0):
        require arg1
        require arg2
        require ownerOf[arg3]
        require ownerOf[arg3] == arg1
        if approved[arg3]:
            approved[arg3] = 0
            emit Approval(arg3, arg1, 0);
        require ownerOf[arg3]
        require ownerOf[arg3] == arg1
        require 1 <= balanceOf[address(arg1)]
        balanceOf[address(arg1)]--
        ownerOf[arg3] = 0
        require 1 <= tokenOfOwnerByIndex[address(arg1)]
        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
        require stor7[arg3] < tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
        tokenOfOwnerByIndex[address(arg1)]--
        if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
            idx = tokenOfOwnerByIndex[address(arg1)] - 1
            while tokenOfOwnerByIndex[address(arg1)] > idx:
                tokenOfOwnerByIndex[address(arg1)][idx] = 0
                idx = idx + 1
                continue 
    else:
        require ownerOf[arg3]
        if ownerOf[arg3] != msg.sender:
            if approved[arg3] != msg.sender:
                require stor3[stor0[arg3]][address(msg.sender)]
        if msg.sender == address(stor13.field_0):
            require arg1
            require arg2
            require ownerOf[arg3]
            require ownerOf[arg3] == arg1
            if approved[arg3]:
                approved[arg3] = 0
                emit Approval(arg3, arg1, 0);
            require ownerOf[arg3]
            require ownerOf[arg3] == arg1
            require 1 <= balanceOf[address(arg1)]
            balanceOf[address(arg1)]--
            ownerOf[arg3] = 0
            require 1 <= tokenOfOwnerByIndex[address(arg1)]
            require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
            require stor7[arg3] < tokenOfOwnerByIndex[address(arg1)]
            tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
            require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
            tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
            tokenOfOwnerByIndex[address(arg1)]--
            if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
                idx = tokenOfOwnerByIndex[address(arg1)] - 1
                while tokenOfOwnerByIndex[address(arg1)] > idx:
                    tokenOfOwnerByIndex[address(arg1)][idx] = 0
                    idx = idx + 1
                    continue 
        else:
            require ownerOf[arg3]
            if ownerOf[arg3] != msg.sender:
                if approved[arg3] != msg.sender:
                    require stor3[stor0[arg3]][address(msg.sender)]
            require arg1
            require arg2
            require ownerOf[arg3]
            require ownerOf[arg3] == arg1
            if approved[arg3]:
                approved[arg3] = 0
                emit Approval(arg3, arg1, 0);
            require ownerOf[arg3]
            require ownerOf[arg3] == arg1
            require 1 <= balanceOf[address(arg1)]
            balanceOf[address(arg1)]--
            ownerOf[arg3] = 0
            require 1 <= tokenOfOwnerByIndex[address(arg1)]
            require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
            require stor7[arg3] < tokenOfOwnerByIndex[address(arg1)]
            tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
            require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
            tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
            tokenOfOwnerByIndex[address(arg1)]--
            if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
                idx = tokenOfOwnerByIndex[address(arg1)] - 1
                while tokenOfOwnerByIndex[address(arg1)] > idx:
                    tokenOfOwnerByIndex[address(arg1)][idx] = 0
                    idx = idx + 1
                    continue 
    stor7[arg3] = 0
    stor7[stor6[address(arg1)][stor6[address(arg1)]]] = stor7[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
    emit Transfer(arg3, arg1, arg2);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, uint256 arg2, bytes arg3) with:
             gas gas_remaining wei
            args address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, ext_call.return_data[0]) == 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    if msg.sender == address(stor13.field_0):
        require arg1
        require arg2
        require ownerOf[arg3]
        require ownerOf[arg3] == arg1
        if approved[arg3]:
            approved[arg3] = 0
            emit Approval(arg3, arg1, 0);
        require ownerOf[arg3]
        require ownerOf[arg3] == arg1
        require 1 <= balanceOf[address(arg1)]
        balanceOf[address(arg1)]--
        ownerOf[arg3] = 0
        require 1 <= tokenOfOwnerByIndex[address(arg1)]
        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
        require stor7[arg3] < tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
        tokenOfOwnerByIndex[address(arg1)]--
        if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
            idx = tokenOfOwnerByIndex[address(arg1)] - 1
            while tokenOfOwnerByIndex[address(arg1)] > idx:
                tokenOfOwnerByIndex[address(arg1)][idx] = 0
                idx = idx + 1
                continue 
    else:
        require ownerOf[arg3]
        if ownerOf[arg3] != msg.sender:
            if approved[arg3] != msg.sender:
                require stor3[stor0[arg3]][address(msg.sender)]
        if msg.sender == address(stor13.field_0):
            require arg1
            require arg2
            require ownerOf[arg3]
            require ownerOf[arg3] == arg1
            if approved[arg3]:
                approved[arg3] = 0
                emit Approval(arg3, arg1, 0);
            require ownerOf[arg3]
            require ownerOf[arg3] == arg1
            require 1 <= balanceOf[address(arg1)]
            balanceOf[address(arg1)]--
            ownerOf[arg3] = 0
            require 1 <= tokenOfOwnerByIndex[address(arg1)]
            require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
            require stor7[arg3] < tokenOfOwnerByIndex[address(arg1)]
            tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
            require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
            tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
            tokenOfOwnerByIndex[address(arg1)]--
            if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
                idx = tokenOfOwnerByIndex[address(arg1)] - 1
                while tokenOfOwnerByIndex[address(arg1)] > idx:
                    tokenOfOwnerByIndex[address(arg1)][idx] = 0
                    idx = idx + 1
                    continue 
        else:
            require ownerOf[arg3]
            if ownerOf[arg3] != msg.sender:
                if approved[arg3] != msg.sender:
                    require stor3[stor0[arg3]][address(msg.sender)]
            if msg.sender == address(stor13.field_0):
                require arg1
                require arg2
                require ownerOf[arg3]
                require ownerOf[arg3] == arg1
                if approved[arg3]:
                    approved[arg3] = 0
                    emit Approval(arg3, arg1, 0);
                require ownerOf[arg3]
                require ownerOf[arg3] == arg1
                require 1 <= balanceOf[address(arg1)]
                balanceOf[address(arg1)]--
                ownerOf[arg3] = 0
                require 1 <= tokenOfOwnerByIndex[address(arg1)]
                require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                require stor7[arg3] < tokenOfOwnerByIndex[address(arg1)]
                tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
                tokenOfOwnerByIndex[address(arg1)]--
                if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
                    idx = tokenOfOwnerByIndex[address(arg1)] - 1
                    while tokenOfOwnerByIndex[address(arg1)] > idx:
                        tokenOfOwnerByIndex[address(arg1)][idx] = 0
                        idx = idx + 1
                        continue 
            else:
                require ownerOf[arg3]
                if ownerOf[arg3] != msg.sender:
                    if approved[arg3] != msg.sender:
                        require stor3[stor0[arg3]][address(msg.sender)]
                require arg1
                require arg2
                require ownerOf[arg3]
                require ownerOf[arg3] == arg1
                if approved[arg3]:
                    approved[arg3] = 0
                    emit Approval(arg3, arg1, 0);
                require ownerOf[arg3]
                require ownerOf[arg3] == arg1
                require 1 <= balanceOf[address(arg1)]
                balanceOf[address(arg1)]--
                ownerOf[arg3] = 0
                require 1 <= tokenOfOwnerByIndex[address(arg1)]
                require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                require stor7[arg3] < tokenOfOwnerByIndex[address(arg1)]
                tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
                tokenOfOwnerByIndex[address(arg1)]--
                if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
                    idx = tokenOfOwnerByIndex[address(arg1)] - 1
                    while tokenOfOwnerByIndex[address(arg1)] > idx:
                        tokenOfOwnerByIndex[address(arg1)][idx] = 0
                        idx = idx + 1
                        continue 
    stor7[arg3] = 0
    stor7[stor6[address(arg1)][stor6[address(arg1)]]] = stor7[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
    emit Transfer(arg3, arg1, arg2);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, uint256 arg2, bytes arg3) with:
             gas gas_remaining wei
            args address(arg1), arg3, 96, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, ext_call.return_data[0]) == 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000
}



}
