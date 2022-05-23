contract main {




// =====================  Runtime code  =====================


#
#  - openPack(uint256 arg1)
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
mapping of bool tokenURI;
uint8 stor12;
uint256 stor13;
address sub_4e736e0cAddress;
address sub_f917c9c6Address;
mapping of uint8 stor16;
mapping of struct packPrice;
mapping of struct packs;

function sub_04c7c07f(?) {
    return bool(stor12)
}

function name() {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) {
    return approved[arg1]
}

function totalSupply() {
    return tokenByIndex.length
}

function getPackPrice(uint256 arg1) {
    require packPrice[arg1].field_1536
    return packPrice[arg1].field_1280
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require arg1
    require arg2 < balanceOf[address(arg1)]
    require arg2 < tokenOfOwnerByIndex[address(arg1)]
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function sub_4e736e0c(?) {
    return sub_4e736e0cAddress
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

function sub_7e4a0fe4(?) {
    return bool(packPrice[arg1].field_1536)
}

function packTypes(uint256 arg1) {
    mem[128] = packPrice[arg1][1].field_0
    idx = 128
    s = 0
    while packPrice[arg1][1].length + 96 > idx:
        mem[idx + 32] = packPrice[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return packPrice[arg1].field_0, 
           Array(len=packPrice[arg1][1].length, data=mem[128 len packPrice[arg1][1].length]),
           packPrice[arg1].field_1024,
           packPrice[arg1].field_1280,
           bool(packPrice[arg1].field_1536),
           bool(packPrice[arg1].field_1544)
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function packs(uint256 arg1) {
    return packs[arg1].field_0, packs[arg1].field_256, bool(packs[arg1].field_512)
}

function tokenURI(uint256 arg1) {
    return uint256(tokenURI[arg1][0 len tokenURI[arg1].length])
}

function isApprovedForAll(address arg1, address arg2) {
    return bool(stor4[address(arg1)][address(arg2)])
}

function sub_f917c9c6(?) {
    return sub_f917c9c6Address
}

function managers(address arg1) {
    return bool(stor16[arg1])
}

function _fallback() payable {
    revert
}

function exists(uint256 arg1) {
    return not not ownerOf[arg1]
}

function addManager(address arg1) {
    require msg.sender == owner
    stor16[address(arg1)] = 1
}

function deleteManager(address arg1) {
    require msg.sender == owner
    stor16[address(arg1)] = 0
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function sub_9b70e937(?) {
    if owner != msg.sender:
        require stor16[address(msg.sender)]
    sub_4e736e0cAddress = arg1
}

function sub_ccc40087(?) {
    if owner != msg.sender:
        require stor16[address(msg.sender)]
    sub_f917c9c6Address = arg1
}

function sub_8ae3a188(?) {
    if owner != msg.sender:
        require stor16[address(msg.sender)]
    packPrice[arg1].field_1280 = arg2
}

function sub_a572d752(?) {
    if owner != msg.sender:
        require stor16[address(msg.sender)]
    packPrice[arg1].field_1544 = Mask(248, 0, arg2)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_727a30a2(?) {
    if owner != msg.sender:
        require stor16[address(msg.sender)]
    require bool(stor12) != arg1
    stor12 = uint8(arg1)
}

function sub_e662bc7e(?) {
    if owner != msg.sender:
        require stor16[address(msg.sender)]
    packPrice[arg1][1][].field_0 = Array(len=arg2.length, data=arg2[all])
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

function sub_1ab6452c(?) {
    require msg.sender == sub_f917c9c6Address
    require packPrice[arg2].field_1544
    stor13++
    packs[stor13].field_0 = stor13
    packs[stor13].field_256 = arg2
    packs[stor13].field_512 = 1
    require arg1
    require not ownerOf[stor13]
    ownerOf[stor13] = arg1
    require balanceOf[address(arg1)] + 1 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)]++
    tokenOfOwnerByIndex[address(arg1)]++
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = stor13
    stor8[stor13] = tokenOfOwnerByIndex[address(arg1)]
    emit Transfer(stor13, 0, arg1);
    stor10[stor13] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = stor13
    emit 0xb68ebd37: address(arg1), arg2, stor13
    return 1
}

function mint(address arg1, uint256 arg2) {
    if owner != msg.sender:
        require stor16[address(msg.sender)]
    require packPrice[arg2].field_1544
    stor13++
    packs[stor13].field_0 = stor13
    packs[stor13].field_256 = arg2
    packs[stor13].field_512 = 1
    require arg1
    require not ownerOf[stor13]
    ownerOf[stor13] = arg1
    require balanceOf[address(arg1)] + 1 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)]++
    tokenOfOwnerByIndex[address(arg1)]++
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = stor13
    stor8[stor13] = tokenOfOwnerByIndex[address(arg1)]
    emit Transfer(stor13, 0, arg1);
    stor10[stor13] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = stor13
    emit 0xb68ebd37: address(arg1), arg2, stor13
    return 1
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

function sub_b09e60b2(?) {
    mem[ceil32(arg2.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[ceil32(arg2.length) + (32 * arg4.length) + 160] = arg5.length
    mem[ceil32(arg2.length) + (32 * arg4.length) + 192 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    if owner != msg.sender:
        require stor16[address(msg.sender)]
    require not packPrice[arg1].field_1536
    require arg4.length == arg5.length
    mem[ceil32(arg2.length) + (32 * arg4.length) + (32 * arg5.length) + 192] = arg1
    packPrice[arg1].field_0 = arg1
    packPrice[arg1][1][].field_0 = Array(len=arg2.length, data=arg2[all])
    packPrice[arg1].field_512 = arg4.length
    if not arg4.length:
        idx = 0
        while packPrice[arg1].field_512 > idx:
            packPrice[arg1][idx + 2].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = ceil32(arg2.length) + 160
        while ceil32(arg2.length) + (32 * arg4.length) + 160 > idx:
            packPrice[arg1][s + 2].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg4.length) + 31) >> 5
        while packPrice[arg1].field_512 > idx:
            packPrice[arg1][idx + 2].field_0 = 0
            idx = idx + 1
            continue 
    packPrice[arg1].field_768 = arg5.length
    if not arg5.length:
        idx = 0
        while packPrice[arg1].field_768 > idx:
            packPrice[arg1][idx + 3].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = ceil32(arg2.length) + (32 * arg4.length) + 192
        while ceil32(arg2.length) + (32 * arg4.length) + (32 * arg5.length) + 192 > idx:
            packPrice[arg1][s + 3].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg5.length) + 31) >> 5
        while packPrice[arg1].field_768 > idx:
            packPrice[arg1][idx + 3].field_0 = 0
            idx = idx + 1
            continue 
    packPrice[arg1].field_1024 = arg6
    packPrice[arg1].field_1280 = arg3
    packPrice[arg1].field_1536 = 1
    packPrice[arg1].field_1544 = 1
}

function burn(address arg1, uint256 arg2) {
    if owner != msg.sender:
        require stor16[address(msg.sender)]
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
    require stor8[arg2] < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][stor8[arg2]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor8[arg2] = 0
    stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[arg2]
    emit Transfer(arg2, arg1, 0);
    if Mask(255, 1, (256 * not bool(tokenURI[arg2])) - 1 and uint256(tokenURI[arg2])):
        uint256(tokenURI[arg2]) = 0
        if 31 < tokenURI[arg2].length:
            idx = 0
            while tokenURI[arg2].length + 31 / 32 > idx:
                uint256(tokenURI[arg2][idx]) = 0
                idx = idx + 1
                continue 
    require 1 <= tokenByIndex.length
    require tokenByIndex.length - 1 < tokenByIndex.length
    require stor10[arg2] < tokenByIndex.length
    tokenByIndex[stor10[arg2]] = tokenByIndex[tokenByIndex.length]
    require tokenByIndex.length - 1 < tokenByIndex.length
    tokenByIndex[tokenByIndex.length] = 0
    tokenByIndex.length--
    if tokenByIndex.length > tokenByIndex.length - 1:
        idx = tokenByIndex.length - 1
        while tokenByIndex.length > idx:
            tokenByIndex[idx] = 0
            idx = idx + 1
            continue 
    stor10[arg2] = 0
    stor10[stor9[stor9.length]] = stor10[arg2]
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



}
