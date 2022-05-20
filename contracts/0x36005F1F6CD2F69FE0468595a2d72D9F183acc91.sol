contract main {




// =====================  Runtime code  =====================


#
#  - sub_4b7ca4e9(?)
#
address owner;
mapping of address ownerOf;
mapping of address approved;
mapping of uint256 balanceOf;
mapping of uint8 stor4;
array of uint256 name;
array of uint256 symbol;
array of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor8;
array of uint256 tokenByIndex;
mapping of uint256 stor10;
array of uint256 tokenURI;
uint256 stor12;
mapping of uint256 sub_5dca47b7;
mapping of uint256 sub_72880a82;
array of struct stor15;

function name() {
    return name[0 len name.length]
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

function sub_5dca47b7(?) {
    require ownerOf[arg1]
    return sub_5dca47b7[arg1]
}

function ownerOf(uint256 arg1) {
    require ownerOf[arg1]
    return ownerOf[arg1]
}

function balanceOf(address arg1) {
    require arg1
    return balanceOf[address(arg1)]
}

function sub_72880a82(?) {
    require sub_72880a82[arg1]
    return sub_72880a82[arg1]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function tokenURI(uint256 arg1) {
    return tokenURI[arg1][0 len tokenURI[arg1].length]
}

function isApprovedForAll(address arg1, address arg2) {
    return bool(stor4[address(arg1)][address(arg2)])
}

function destroyContract() {
    require msg.sender == owner
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function exists(uint256 arg1) {
    return not not ownerOf[arg1]
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setApprovalForAll(address arg1, bool arg2) {
    require arg1 != msg.sender
    stor4[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function approve(address arg1, uint256 arg2) {
    require ownerOf[arg2]
    require arg1 != ownerOf[arg2]
    if ownerOf[arg2] != msg.sender:
        require stor4[stor1[arg2]][address(msg.sender)]
    if approved[arg2]:
        approved[arg2] = arg1
        emit Approval(arg2, ownerOf[arg2], arg1);
    else:
        if arg1:
            approved[arg2] = arg1
            emit Approval(arg2, ownerOf[arg2], arg1);
}

function sub_f353fe8d(?) {
    require msg.sender == owner
    stor12++
    require owner
    require not ownerOf[stor12]
    ownerOf[stor12] = owner
    require balanceOf[stor0] + 1 >= balanceOf[stor0]
    balanceOf[stor0]++
    tokenOfOwnerByIndex[stor0]++
    tokenOfOwnerByIndex[stor0][tokenOfOwnerByIndex[stor0]] = stor12
    stor8[stor12] = tokenOfOwnerByIndex[stor0]
    emit Transfer(stor12, 0, owner);
    stor10[stor12] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = stor12
    require ownerOf[stor12]
    sub_5dca47b7[stor12] = arg2
    sub_72880a82[arg2] = stor12
    require ownerOf[stor12]
    stor15[stor12].field_0 = arg1
    stor15[stor12].field_256 = stor12
    stor15[stor12].field_512 = arg2
    stor15[stor12][3][].field_0 = Array(len=arg3.length, data=arg3[all])
    stor15[stor12][4][].field_0 = Array(len=arg4.length, data=arg4[all])
    stor15[stor12][5][].field_0 = Array(len=arg5.length, data=arg5[all])
    stor15[stor12].field_1536 = 1
    emit 0x9a8ecca7: arg1, owner, stor12, arg2
}

function sub_93b3208e(?) {
    require msg.sender == owner
    stor12++
    require owner
    require not ownerOf[stor12]
    ownerOf[stor12] = owner
    require balanceOf[stor0] + 1 >= balanceOf[stor0]
    balanceOf[stor0]++
    tokenOfOwnerByIndex[stor0]++
    tokenOfOwnerByIndex[stor0][tokenOfOwnerByIndex[stor0]] = stor12
    stor8[stor12] = tokenOfOwnerByIndex[stor0]
    emit Transfer(stor12, 0, owner);
    stor10[stor12] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = stor12
    require ownerOf[stor12]
    sub_5dca47b7[stor12] = sha3(stor12, arg1)
    sub_72880a82[stor12][arg1] = stor12
    require ownerOf[stor12]
    stor15[stor12].field_0 = arg1
    stor15[stor12].field_256 = stor12
    stor15[stor12].field_512 = sha3(stor12, arg1)
    stor15[stor12][3][].field_0 = Array(len=arg2.length, data=arg2[all])
    stor15[stor12][4][].field_0 = Array(len=arg3.length, data=arg3[all])
    stor15[stor12][5][].field_0 = Array(len=arg4.length, data=arg4[all])
    stor15[stor12].field_1536 = 1
    emit 0x9a8ecca7: arg1, owner, stor12, sha3(stor12, arg1)
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor4[stor1[arg3]][address(msg.sender)]
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
    require stor8[arg3] < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][stor8[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor8[arg3] = 0
    stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    stor8[arg3] = tokenOfOwnerByIndex[address(arg2)]
    emit Transfer(arg3, arg1, arg2);
}

function sub_282eeb1a(?) {
    require sub_72880a82[arg3]
    require ownerOf[stor14[arg3]]
    require ownerOf[stor14[arg3]] == arg1
    require ownerOf[stor14[arg3]]
    if ownerOf[stor14[arg3]] != msg.sender:
        if approved[stor14[arg3]] != msg.sender:
            require stor4[stor1[stor14[arg3]]][address(msg.sender)]
    require arg1
    require arg2
    require ownerOf[stor14[arg3]]
    require ownerOf[stor14[arg3]] == arg1
    if approved[stor14[arg3]]:
        approved[stor14[arg3]] = 0
        emit Approval(sub_72880a82[arg3], arg1, 0);
    require ownerOf[stor14[arg3]]
    require ownerOf[stor14[arg3]] == arg1
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    ownerOf[stor14[arg3]] = 0
    require 1 <= tokenOfOwnerByIndex[address(arg1)]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    require stor8[stor14[arg3]] < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][stor8[stor14[arg3]]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor8[stor14[arg3]] = 0
    stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[stor14[arg3]]
    require not ownerOf[stor14[arg3]]
    ownerOf[stor14[arg3]] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = sub_72880a82[arg3]
    stor8[stor14[arg3]] = tokenOfOwnerByIndex[address(arg2)]
    emit Transfer(sub_72880a82[arg3], arg1, arg2);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor4[stor1[arg3]][address(msg.sender)]
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor4[stor1[arg3]][address(msg.sender)]
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
    require stor8[arg3] < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][stor8[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor8[arg3] = 0
    stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    stor8[arg3] = tokenOfOwnerByIndex[address(arg2)]
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
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor4[stor1[arg3]][address(msg.sender)]
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor4[stor1[arg3]][address(msg.sender)]
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor4[stor1[arg3]][address(msg.sender)]
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
    require stor8[arg3] < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][stor8[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor8[arg3] = 0
    stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    stor8[arg3] = tokenOfOwnerByIndex[address(arg2)]
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

function sub_f9a699de(?) {
    require stor15[arg1].field_1536
    require ownerOf[arg1]
    mem[32] = 15
    mem[96] = stor15[arg1][3].length
    mem[128] = stor15[arg1][3].field_0
    idx = 128
    s = 0
    while stor15[arg1][3].length + 96 > idx:
        mem[idx + 32] = stor15[arg1][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor15[arg1][3].length) + 128] = stor15[arg1][4].length
    mem[ceil32(stor15[arg1][3].length) + 160] = stor15[arg1][4].field_0
    idx = ceil32(stor15[arg1][3].length) + 160
    s = 0
    while ceil32(stor15[arg1][3].length) + stor15[arg1][4].length + 128 > idx:
        mem[idx + 32] = stor15[arg1][s + 4].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor15[arg1][3].length) + ceil32(stor15[arg1][4].length) + ceil32(stor15[arg1][5].length) + 192
    mem[ceil32(stor15[arg1][3].length) + ceil32(stor15[arg1][4].length) + 160] = stor15[arg1][5].length
    mem[0] = sha3(arg1, 15) + 5
    mem[ceil32(stor15[arg1][3].length) + ceil32(stor15[arg1][4].length) + 192] = stor15[arg1][5].field_0
    idx = ceil32(stor15[arg1][3].length) + ceil32(stor15[arg1][4].length) + 192
    s = 0
    while ceil32(stor15[arg1][3].length) + ceil32(stor15[arg1][4].length) + stor15[arg1][5].length + 160 > idx:
        mem[idx + 32] = stor15[arg1][s + 5].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor15[arg1][3].length) + ceil32(stor15[arg1][4].length) + ceil32(stor15[arg1][5].length) + 192] = stor15[arg1].field_0
    mem[ceil32(stor15[arg1][3].length) + ceil32(stor15[arg1][4].length) + ceil32(stor15[arg1][5].length) + 224] = 128
    mem[ceil32(stor15[arg1][3].length) + ceil32(stor15[arg1][4].length) + ceil32(stor15[arg1][5].length) + 320] = stor15[arg1][3].length
    mem[ceil32(stor15[arg1][3].length) + ceil32(stor15[arg1][4].length) + ceil32(stor15[arg1][5].length) + 352 len ceil32(stor15[arg1][3].length)] = mem[128 len ceil32(stor15[arg1][3].length)]
    mem[ceil32(stor15[arg1][3].length) + ceil32(stor15[arg1][4].length) + ceil32(stor15[arg1][5].length) + 256] = stor15[arg1][3].length + 160
    mem[stor15[arg1][3].length + ceil32(stor15[arg1][3].length) + ceil32(stor15[arg1][4].length) + ceil32(stor15[arg1][5].length) + 352] = stor15[arg1][4].length
    mem[stor15[arg1][3].length + ceil32(stor15[arg1][3].length) + ceil32(stor15[arg1][4].length) + ceil32(stor15[arg1][5].length) + 384 len ceil32(stor15[arg1][4].length)] = mem[ceil32(stor15[arg1][3].length) + 160 len ceil32(stor15[arg1][4].length)]
    if not stor15[arg1][4].length % 32:
        mem[ceil32(stor15[arg1][3].length) + ceil32(stor15[arg1][4].length) + ceil32(stor15[arg1][5].length) + 288] = stor15[arg1][4].length + stor15[arg1][3].length + 192
        mem[stor15[arg1][4].length + stor15[arg1][3].length + ceil32(stor15[arg1][3].length) + ceil32(stor15[arg1][4].length) + ceil32(stor15[arg1][5].length) + 384] = stor15[arg1][5].length
        mem[stor15[arg1][4].length + stor15[arg1][3].length + ceil32(stor15[arg1][3].length) + ceil32(stor15[arg1][4].length) + ceil32(stor15[arg1][5].length) + 416 len ceil32(stor15[arg1][5].length)] = mem[ceil32(stor15[arg1][3].length) + ceil32(stor15[arg1][4].length) + 192 len ceil32(stor15[arg1][5].length)]
        if not stor15[arg1][5].length % 32:
            return stor15[arg1].field_0, 
                   Array(len=stor15[arg1][3].length, data=mem[128 len ceil32(stor15[arg1][3].length)], mem[(2 * ceil32(stor15[arg1][3].length)) + ceil32(stor15[arg1][4].length) + ceil32(stor15[arg1][5].length) + 352 len stor15[arg1][4].length + stor15[arg1][3].length + -ceil32(stor15[arg1][3].length) + 32], stor15[arg1][5].length, mem[ceil32(stor15[arg1][3].length) + ceil32(stor15[arg1][4].length) + 192 len stor15[arg1][5].length]),
                   stor15[arg1][3].length + 160,
                   stor15[arg1][4].length + stor15[arg1][3].length + 192
        mem[floor32(stor15[arg1][5].length) + stor15[arg1][4].length + stor15[arg1][3].length + ceil32(stor15[arg1][3].length) + ceil32(stor15[arg1][4].length) + ceil32(stor15[arg1][5].length) + 416] = mem[floor32(stor15[arg1][5].length) + stor15[arg1][4].length + stor15[arg1][3].length + ceil32(stor15[arg1][3].length) + ceil32(stor15[arg1][4].length) + ceil32(stor15[arg1][5].length) + -stor15[arg1][5].length % 32 + 448 len stor15[arg1][5].length % 32]
        return stor15[arg1].field_0, 
               Array(len=stor15[arg1][3].length, data=mem[128 len ceil32(stor15[arg1][3].length)], mem[(2 * ceil32(stor15[arg1][3].length)) + ceil32(stor15[arg1][4].length) + ceil32(stor15[arg1][5].length) + 352 len stor15[arg1][4].length + stor15[arg1][3].length + -ceil32(stor15[arg1][3].length) + 32], stor15[arg1][5].length, mem[ceil32(stor15[arg1][3].length) + ceil32(stor15[arg1][4].length) + 192 len ceil32(stor15[arg1][5].length)], mem[ceil32(stor15[arg1][3].length) + ceil32(stor15[arg1][4].length) + (2 * ceil32(stor15[arg1][5].length)) + stor15[arg1][4].length + stor15[arg1][3].length + 416 len floor32(stor15[arg1][5].length) + -ceil32(stor15[arg1][5].length) + 32]),
               stor15[arg1][3].length + 160,
               stor15[arg1][4].length + stor15[arg1][3].length + 192
    mem[floor32(stor15[arg1][4].length) + stor15[arg1][3].length + ceil32(stor15[arg1][3].length) + ceil32(stor15[arg1][4].length) + ceil32(stor15[arg1][5].length) + 384] = mem[floor32(stor15[arg1][4].length) + stor15[arg1][3].length + ceil32(stor15[arg1][3].length) + ceil32(stor15[arg1][4].length) + ceil32(stor15[arg1][5].length) + -stor15[arg1][4].length % 32 + 416 len stor15[arg1][4].length % 32]
    mem[ceil32(stor15[arg1][3].length) + ceil32(stor15[arg1][4].length) + ceil32(stor15[arg1][5].length) + 288] = floor32(stor15[arg1][4].length) + stor15[arg1][3].length + 224
    mem[floor32(stor15[arg1][4].length) + stor15[arg1][3].length + ceil32(stor15[arg1][3].length) + ceil32(stor15[arg1][4].length) + ceil32(stor15[arg1][5].length) + 416] = stor15[arg1][5].length
    mem[floor32(stor15[arg1][4].length) + stor15[arg1][3].length + ceil32(stor15[arg1][3].length) + ceil32(stor15[arg1][4].length) + ceil32(stor15[arg1][5].length) + 448 len ceil32(stor15[arg1][5].length)] = mem[ceil32(stor15[arg1][3].length) + ceil32(stor15[arg1][4].length) + 192 len ceil32(stor15[arg1][5].length)]
    if not stor15[arg1][5].length % 32:
        return stor15[arg1].field_0, 
               Array(len=stor15[arg1][3].length, data=mem[128 len ceil32(stor15[arg1][3].length)], mem[(2 * ceil32(stor15[arg1][3].length)) + ceil32(stor15[arg1][4].length) + ceil32(stor15[arg1][5].length) + 352 len floor32(stor15[arg1][4].length) + stor15[arg1][3].length + -ceil32(stor15[arg1][3].length) + 64], stor15[arg1][5].length, mem[ceil32(stor15[arg1][3].length) + ceil32(stor15[arg1][4].length) + 192 len stor15[arg1][5].length]),
               stor15[arg1][3].length + 160,
               floor32(stor15[arg1][4].length) + stor15[arg1][3].length + 224
    mem[floor32(stor15[arg1][5].length) + floor32(stor15[arg1][4].length) + stor15[arg1][3].length + ceil32(stor15[arg1][3].length) + ceil32(stor15[arg1][4].length) + ceil32(stor15[arg1][5].length) + 448] = mem[floor32(stor15[arg1][5].length) + floor32(stor15[arg1][4].length) + stor15[arg1][3].length + ceil32(stor15[arg1][3].length) + ceil32(stor15[arg1][4].length) + ceil32(stor15[arg1][5].length) + -stor15[arg1][5].length % 32 + 480 len stor15[arg1][5].length % 32]
    return stor15[arg1].field_0, 
           Array(len=stor15[arg1][3].length, data=mem[128 len ceil32(stor15[arg1][3].length)], mem[(2 * ceil32(stor15[arg1][3].length)) + ceil32(stor15[arg1][4].length) + ceil32(stor15[arg1][5].length) + 352 len floor32(stor15[arg1][4].length) + stor15[arg1][3].length + -ceil32(stor15[arg1][3].length) + 64], stor15[arg1][5].length, mem[ceil32(stor15[arg1][3].length) + ceil32(stor15[arg1][4].length) + 192 len ceil32(stor15[arg1][5].length)], mem[ceil32(stor15[arg1][3].length) + ceil32(stor15[arg1][4].length) + (2 * ceil32(stor15[arg1][5].length)) + floor32(stor15[arg1][4].length) + stor15[arg1][3].length + 448 len floor32(stor15[arg1][5].length) + -ceil32(stor15[arg1][5].length) + 32]),
           stor15[arg1][3].length + 160,
           floor32(stor15[arg1][4].length) + stor15[arg1][3].length + 224
}



}
