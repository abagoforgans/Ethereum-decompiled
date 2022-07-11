contract main {


// =======================  Init code  ======================


array of uint256 stor4;
array of uint256 stor5;
array of uint256 stor10;
uint32 stor11; offset 128
uint32 stor11; offset 160
uint32 stor11; offset 192
uint32 stor11; offset 224
uint128 stor11;
uint8 stor12; offset 160
address stor12;
address stor13;

function _fallback() payable {
    uint128(stor11.field_0) = uint128('0123456789abcdef')
    uint32(stor11.field_128) = supportsInterface(bytes4 arg1)
    uint32(stor11.field_160) = 2158778573
    uint32(stor11.field_192) = 1532892063
    uint32(stor11.field_224) = 2014223715
    uint8(stor12.field_160) = 1
    stor13 = 0xc351d9acb60dcdfc083eb61466b8ea30fa0f9b7d
    require not msg.value
    address(stor12.field_0) = msg.sender
    mem[128] = 'vatomic.prototyping::Butterfly::'
    mem[160] = 'v1::VariusButterfly04::v1'
    stor4.length = 115
    s = 0
    idx = 128
    while 185 > idx:
        stor4[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 2
    while stor4.length + 31 / 32 > idx:
        stor4[idx] = 0
        idx = idx + 1
        continue 
    bool(stor5.length) = 0
    stor5.length.field_1 = 19
    stor5.length.field_8 = 'vatomic.prototyping' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor10.length) = 0
    stor10.length.field_1 = 29
    stor10.length.field_8 = 'https://api.blockv.io/erc721/' / 256
    idx = 0
    while stor10.length + 31 / 32 > idx:
        stor10[idx].field_0 = 0
        idx = idx + 1
        continue 
    return code.data[770 len 7591]
}



// =====================  Runtime code  =====================


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
array of struct baseTokenURI;
uint32 stor11; offset 224
uint64 stor11; offset 192
uint128 stor11; offset 160
uint128 stor11; offset 128
uint8 stor12; offset 160
address owner;
address accessAddress;

function name() {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) {
    return approved[arg1]
}

function isAdminEnabled() {
    return bool(stor12)
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

function exists(uint256 arg1) {
    return bool(ownerOf[arg1])
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

function access() {
    return accessAddress
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function baseTokenURI() {
    return baseTokenURI[0 len baseTokenURI.length].field_0
}

function isApprovedForAll(address arg1, address arg2) {
    return bool(stor3[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function sub_6e5f5c96(?) {
    require stor12
    require owner == msg.sender
    stor12 = 0
}

function setTokenBaseURI(string arg1) {
    require owner == msg.sender
    baseTokenURI[].field_0 = Array(len=arg1.length, data=arg1[all])
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
    emit OwnershipTransferred(arg1, arg1);
}

function setApprovalForAll(address arg1, bool arg2) {
    require arg1 != msg.sender
    stor3[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function supportsInterface(bytes4 arg1) {
    if Mask(32, 224, arg1) == uint128(stor11.field_128) << 224:
        return True
    if Mask(32, 224, arg1) == Mask(96, 0, stor11.field_160) << 224:
        return True
    if Mask(32, 224, arg1) == uint64(stor11.field_192) << 224:
        return True
    return (uint32(stor11.field_224) << 224 == Mask(32, 224, arg1))
}

function sub_57b375f4(?) {
    require stor12
    require owner == msg.sender
    require ext_code.size(accessAddress)
    call accessAddress.isSet(address arg1) with:
         gas gas_remaining wei
        args arg1
    require ext_call.success
    require not ext_call.return_data[0]
    require arg1 != arg2
    stor3[address(arg1)][address(arg2)] = uint8(arg3)
    emit ApprovalForAll(arg3, arg1, arg2);
}

function approve(address arg1, uint256 arg2) {
    require ownerOf[arg2]
    require ownerOf[arg2] != arg1
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

function approveFrom(address arg1, address arg2, uint256 arg3) {
    require stor12
    require owner == msg.sender
    require ext_code.size(accessAddress)
    call accessAddress.isSet(address arg1) with:
         gas gas_remaining wei
        args arg1
    require ext_call.success
    require not ext_call.return_data[0]
    require ownerOf[arg3]
    require ownerOf[arg3] != arg2
    if arg1 != ownerOf[arg3]:
        require stor3[stor0[arg3]][address(arg1)]
    if approved[arg3]:
        approved[arg3] = arg2
        emit Approval(arg3, ownerOf[arg3], arg2);
    else:
        if arg2:
            approved[arg3] = arg2
            emit Approval(arg3, ownerOf[arg3], arg2);
}

function sub_f1fb05e9(?) {
    require owner == msg.sender
    require arg1
    require not ownerOf[arg2]
    ownerOf[arg2] = arg1
    require balanceOf[address(arg1)] + 1 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)]++
    tokenOfOwnerByIndex[address(arg1)]++
    if not tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] + 1:
        idx = tokenOfOwnerByIndex[address(arg1)] + 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = arg2
    stor7[arg2] = tokenOfOwnerByIndex[address(arg1)]
    emit Transfer(arg2, 0, arg1);
    stor9[arg2] = tokenByIndex.length
    tokenByIndex.length++
    if not tokenByIndex.length <= tokenByIndex.length + 1:
        idx = tokenByIndex.length + 1
        while tokenByIndex.length > idx:
            tokenByIndex[idx] = 0
            idx = idx + 1
            continue 
    tokenByIndex[tokenByIndex.length] = arg2
}

function sub_c50d5ca0(?) {
    require owner == msg.sender
    idx = 0
    while idx < ('cd', 36).length:
        require address(cd[4])
        require not ownerOf[cd[((32 * idx) + cd[36] + 36)]]
        ownerOf[cd[((32 * idx) + cd[36] + 36)]] = address(cd[4])
        require balanceOf[address(cd[4])] + 1 >= balanceOf[address(cd[4])]
        balanceOf[address(cd[4])]++
        tokenOfOwnerByIndex[address(cd[4])]++
        if not tokenOfOwnerByIndex[address(cd[4])] <= tokenOfOwnerByIndex[address(cd[4])] + 1:
            s = tokenOfOwnerByIndex[address(cd[4])] + sha3(sha3(address(cd[4]), 6)) + 1
            while sha3(sha3(address(cd[4]), 6)) + tokenOfOwnerByIndex[address(cd[4])] > s:
                stor[s] = 0
                s = s + 1
                continue 
        tokenOfOwnerByIndex[address(cd[4])][tokenOfOwnerByIndex[address(cd[4])]] = cd[((32 * idx) + cd[36] + 36)]
        stor7[cd[((32 * idx) + cd[36] + 36)]] = tokenOfOwnerByIndex[address(cd[4])]
        mem[96] = cd[((32 * idx) + cd[36] + 36)]
        emit Transfer(cd[((32 * idx) + cd[36] + 36)], 0, address(cd[4]));
        mem[32] = 9
        stor9[cd[((32 * idx) + cd[36] + 36)]] = tokenByIndex.length
        tokenByIndex.length++
        if not tokenByIndex.length <= tokenByIndex.length + 1:
            s = tokenByIndex.length + sha3(8) + 1
            while sha3(8) + tokenByIndex.length > s:
                stor[s] = 0
                s = s + 1
                continue 
        mem[0] = 8
        tokenByIndex[tokenByIndex.length] = cd[((32 * idx) + cd[36] + 36)]
        idx = idx + 1
        continue 
}

function _transferFrom(address arg1, address arg2, uint256 arg3) {
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
    if not tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
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
    if not tokenOfOwnerByIndex[address(arg2)] <= tokenOfOwnerByIndex[address(arg2)] + 1:
        idx = tokenOfOwnerByIndex[address(arg2)] + 1
        while tokenOfOwnerByIndex[address(arg2)] > idx:
            tokenOfOwnerByIndex[address(arg2)][idx] = 0
            idx = idx + 1
            continue 
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
    emit Transfer(arg3, arg1, arg2);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
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
    if not tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
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
    if not tokenOfOwnerByIndex[address(arg2)] <= tokenOfOwnerByIndex[address(arg2)] + 1:
        idx = tokenOfOwnerByIndex[address(arg2)] + 1
        while tokenOfOwnerByIndex[address(arg2)] > idx:
            tokenOfOwnerByIndex[address(arg2)][idx] = 0
            idx = idx + 1
            continue 
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
    emit Transfer(arg3, arg1, arg2);
}

function burn(address arg1, uint256 arg2) {
    require stor12
    require owner == msg.sender
    require ext_code.size(accessAddress)
    call accessAddress.isSet(address arg1) with:
         gas gas_remaining wei
        args arg1
    require ext_call.success
    require not ext_call.return_data[0]
    require ownerOf[arg2]
    require ownerOf[arg2] == arg1
    if approved[arg2]:
        approved[arg2] = 0
        emit Approval(arg2, arg1, 0);
    require ownerOf[arg2]
    require ownerOf[arg2] == arg1
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    ownerOf[arg2] = 0
    require 1 <= tokenOfOwnerByIndex[address(arg1)]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    require stor7[arg2] < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][stor7[arg2]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
    tokenOfOwnerByIndex[address(arg1)]--
    if not tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor7[arg2] = 0
    stor7[stor6[address(arg1)][stor6[address(arg1)]]] = stor7[arg2]
    emit Transfer(arg2, arg1, 0);
    require 1 <= tokenByIndex.length
    require tokenByIndex.length - 1 < tokenByIndex.length
    require stor9[arg2] < tokenByIndex.length
    tokenByIndex[stor9[arg2]] = tokenByIndex[tokenByIndex.length]
    require tokenByIndex.length - 1 < tokenByIndex.length
    tokenByIndex[tokenByIndex.length] = 0
    tokenByIndex.length--
    if not tokenByIndex.length <= tokenByIndex.length - 1:
        idx = tokenByIndex.length - 1
        while tokenByIndex.length > idx:
            tokenByIndex[idx] = 0
            idx = idx + 1
            continue 
    stor9[arg2] = 0
    stor9[stor8[stor8.length]] = stor9[arg2]
}

function transfer(address arg1, address arg2, uint256 arg3) {
    require stor12
    require owner == msg.sender
    require ext_code.size(accessAddress)
    call accessAddress.isSet(address arg1) with:
         gas gas_remaining wei
        args arg1
    require ext_call.success
    require not ext_call.return_data[0]
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
    if not tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
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
    if not tokenOfOwnerByIndex[address(arg2)] <= tokenOfOwnerByIndex[address(arg2)] + 1:
        idx = tokenOfOwnerByIndex[address(arg2)] + 1
        while tokenOfOwnerByIndex[address(arg2)] > idx:
            tokenOfOwnerByIndex[address(arg2)][idx] = 0
            idx = idx + 1
            continue 
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
    emit Transfer(arg3, arg1, arg2);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, uint256 arg2, bytes arg3) with:
             gas gas_remaining wei
            args address(arg1), arg3, 96, 0
        require ext_call.success
        require 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor3[stor0[arg3]][address(msg.sender)]
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
    if not tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
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
    if not tokenOfOwnerByIndex[address(arg2)] <= tokenOfOwnerByIndex[address(arg2)] + 1:
        idx = tokenOfOwnerByIndex[address(arg2)] + 1
        while tokenOfOwnerByIndex[address(arg2)] > idx:
            tokenOfOwnerByIndex[address(arg2)][idx] = 0
            idx = idx + 1
            continue 
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
    emit Transfer(arg3, arg1, arg2);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, uint256 arg2, bytes arg3) with:
             gas gas_remaining wei
            args address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        require ext_call.success
        require 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor3[stor0[arg3]][address(msg.sender)]
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor3[stor0[arg3]][address(msg.sender)]
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
    if not tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
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
    if not tokenOfOwnerByIndex[address(arg2)] <= tokenOfOwnerByIndex[address(arg2)] + 1:
        idx = tokenOfOwnerByIndex[address(arg2)] + 1
        while tokenOfOwnerByIndex[address(arg2)] > idx:
            tokenOfOwnerByIndex[address(arg2)][idx] = 0
            idx = idx + 1
            continue 
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
    emit Transfer(arg3, arg1, arg2);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, uint256 arg2, bytes arg3) with:
             gas gas_remaining wei
            args address(arg1), arg3, 96, 0
        require ext_call.success
        require 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
}

function tokenURI(uint256 arg1) {
    mem[96] = 0
    mem[32] = 0
    require ownerOf[arg1]
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = baseTokenURI.length
    mem[0] = 10
    mem[256] = uint256(baseTokenURI.field_0)
    idx = 256
    s = 0
    while baseTokenURI.length + 224 > idx:
        mem[idx + 32] = baseTokenURI[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if msize < ceil32(baseTokenURI.length) + 256:
        mem[ceil32(baseTokenURI.length) + 256] = baseTokenURI.length + 36
        idx = 0
        while idx < baseTokenURI.length:
            require idx < baseTokenURI.length
            require idx < baseTokenURI.length + 36
            mem[ceil32(baseTokenURI.length) + idx + 288 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            continue 
        idx = 0
        s = baseTokenURI.length
        while idx < 16:
            if idx != 4:
                if idx != 6:
                    if idx != 8:
                        if idx != 10:
                            require idx < 16
                            require Mask(4, -(('mask_shl', 128, 0, 125, ('param', 'arg1')), 0) + 260, idx) << (('mask_shl', 128, 0, 125, ('param', 'arg1')), 0) - 260 < 16
                            require s < baseTokenURI.length + 36
                            mem[ceil32(baseTokenURI.length) + s + 288 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                            require idx < 16
                            require Mask(4, -(('mask_shl', 128, 0, 125, ('param', 'arg1')), 0) + 256, idx) << (('mask_shl', 128, 0, 125, ('param', 'arg1')), 0) - 256 < 16
                            require s + 1 < baseTokenURI.length + 36
                            mem[ceil32(baseTokenURI.length) + s + 289 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                            idx = idx + 1
                            s = s + 2
                            continue 
            require s < baseTokenURI.length + 36
            mem[ceil32(baseTokenURI.length) + s + 288 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'-'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'-'"), 0) - 256
            require idx < 16
            require Mask(4, -(('mask_shl', 128, 0, 125, ('param', 'arg1')), 0) + 260, idx) << (('mask_shl', 128, 0, 125, ('param', 'arg1')), 0) - 260 < 16
            require s + 1 < baseTokenURI.length + 36
            mem[ceil32(baseTokenURI.length) + s + 289 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            require idx < 16
            require Mask(4, -(('mask_shl', 128, 0, 125, ('param', 'arg1')), 0) + 256, idx) << (('mask_shl', 128, 0, 125, ('param', 'arg1')), 0) - 256 < 16
            require s + 2 < baseTokenURI.length + 36
            mem[ceil32(baseTokenURI.length) + s + 290 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            idx = idx + 1
            s = s + 3
            continue 
        return Array(len=baseTokenURI.length + 36, data=mem[ceil32(baseTokenURI.length) + 288 len baseTokenURI.length + 36])
    _msize = max(0, floor32(baseTokenURI.length - 1))
    mem[_msize + 320] = baseTokenURI.length + 36
    mem[64] = (_msize + 320) + floor32(baseTokenURI.length + 67) + 32
    idx = 0
    while idx < baseTokenURI.length:
        require idx < baseTokenURI.length
        require idx < mem[_msize + 320]
        mem[(_msize + 320) + idx + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        continue 
    idx = 0
    s = baseTokenURI.length
    while idx < 16:
        if idx != 4:
            if idx != 6:
                if idx != 8:
                    if idx != 10:
                        require idx < 16
                        require Mask(4, -(('mask_shl', 128, 0, 125, ('param', 'arg1')), 0) + 260, idx) << (('mask_shl', 128, 0, 125, ('param', 'arg1')), 0) - 260 < 16
                        require s < mem[_msize + 320]
                        mem[(_msize + 320) + s + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                        require idx < 16
                        require Mask(4, -(('mask_shl', 128, 0, 125, ('param', 'arg1')), 0) + 256, idx) << (('mask_shl', 128, 0, 125, ('param', 'arg1')), 0) - 256 < 16
                        require s + 1 < mem[_msize + 320]
                        mem[(_msize + 320) + s + 33 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                        idx = idx + 1
                        s = s + 2
                        continue 
        require s < mem[_msize + 320]
        mem[(_msize + 320) + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'-'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'-'"), 0) - 256
        require idx < 16
        require Mask(4, -(('mask_shl', 128, 0, 125, ('param', 'arg1')), 0) + 260, idx) << (('mask_shl', 128, 0, 125, ('param', 'arg1')), 0) - 260 < 16
        require s + 1 < mem[_msize + 320]
        mem[(_msize + 320) + s + 33 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        require idx < 16
        require Mask(4, -(('mask_shl', 128, 0, 125, ('param', 'arg1')), 0) + 256, idx) << (('mask_shl', 128, 0, 125, ('param', 'arg1')), 0) - 256 < 16
        require s + 2 < mem[_msize + 320]
        mem[(_msize + 320) + s + 34 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        idx = idx + 1
        s = s + 3
        continue 
    mem[(_msize + 320) + floor32(baseTokenURI.length + 67) + 32] = 32
    mem[(_msize + 320) + floor32(baseTokenURI.length + 67) + 64] = mem[_msize + 320]
    mem[(_msize + 320) + floor32(baseTokenURI.length + 67) + 96 len ceil32(mem[_msize + 320])] = mem[(_msize + 320) + 32 len ceil32(mem[_msize + 320])]
    if not mem[max(0, floor32(baseTokenURI.length - 1)) + 320] % 32:
        return 32, mem[(_msize + 320) + floor32(baseTokenURI.length + 67) + 64 len mem[_msize + 320] + 32]
    mem[floor32(mem[_msize + 320]) + (_msize + 320) + floor32(baseTokenURI.length + 67) + 96] = mem[floor32(mem[_msize + 320]) + (_msize + 320) + floor32(baseTokenURI.length + 67) + -(mem[_msize + 320] % 32) + 128 len mem[_msize + 320] % 32]
    return Array(len=mem[_msize + 320], data=mem[(_msize + 320) + floor32(baseTokenURI.length + 67) + 96 len floor32(mem[_msize + 320]) + 32]), 
}



}
