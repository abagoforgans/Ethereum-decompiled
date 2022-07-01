contract main {




// =====================  Runtime code  =====================


#
#  - tokenURI(uint256 arg1)
#
mapping of uint8 stor0;
mapping of address ownerOf;
mapping of address approved;
mapping of uint256 balanceOf;
mapping of uint8 stor4;
array of struct tokenOfOwnerByIndex;
mapping of uint256 stor6;
array of uint256 tokenByIndex;
mapping of uint256 stor8;
array of uint256 name;
array of uint256 symbol;
address owner;
address proxyRegistryAddress;
uint256 maxTokenId;
array of uint256 sub_b6c92a7a;
address stor16;
mapping of uint256 sub_e7ff73ca;
mapping of uint8 stor18;
uint8 stor19;
array of uint256 baseTokenURI;

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor0[Mask(32, 224, arg1)])
}

function name() payable {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ownerOf[arg1]
    return approved[arg1]
}

function totalSupply() payable {
    return tokenByIndex.length
}

function isTransferable() payable {
    return bool(stor19)
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1
    require arg2 < balanceOf[address(arg1)]
    require arg2 < tokenOfOwnerByIndex[address(arg1)].field_0
    return tokenOfOwnerByIndex[address(arg1)][arg2].field_0
}

function sub_3e8008eb(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor18[arg1])
}

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < tokenByIndex.length
    return tokenByIndex[arg1]
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ownerOf[arg1]
    return ownerOf[arg1]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1
    return balanceOf[address(arg1)]
}

function sub_7cbbaf1b(?) payable {
    require calldata.size - 4 >= 32
    return sub_e7ff73ca[arg1]
}

function owner() payable {
    return owner
}

function maxTokenId() payable {
    return maxTokenId
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function sub_af0573a8(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor18[arg1])
}

function sub_b6c92a7a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_b6c92a7a.length
    return sub_b6c92a7a[arg1]
}

function proxyRegistryAddress() payable {
    return proxyRegistryAddress
}

function baseTokenURI() payable {
    return baseTokenURI[0 len baseTokenURI.length]
}

function sub_e7ff73ca(?) payable {
    require calldata.size - 4 >= 32
    return sub_e7ff73ca[arg1]
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_5948ab63(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor19 = uint8(arg1)
}

function hasKey(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1
    return (balanceOf[address(arg1)] > 0)
}

function setFactoryAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor16 = arg1
}

function sub_1f0f0403(?) payable {
    require calldata.size - 4 >= 32
    require ownerOf[arg1]
    require ownerOf[arg1] == msg.sender
    stor18[arg1] = 1
}

function sub_29e9e337(?) payable {
    require calldata.size - 4 >= 32
    require not ownerOf[arg1]
    require arg1 >= 1
    require arg1 <= maxTokenId
    return 1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 != msg.sender
    stor4[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function sub_90c2c617(?) payable {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    require arg2 < 256
    if not arg3:
        sub_e7ff73ca[arg1] = sub_e7ff73ca[arg1] and -1 xor 2^arg2
    else:
        sub_e7ff73ca[arg1] += 2^arg2
}

function sub_5a018127(?) payable {
    require calldata.size - 4 >= 32
    require arg1 >= 1
    require arg1 <= maxTokenId
    idx = 0
    while idx < sub_b6c92a7a.length:
        mem[0] = 15
        if arg1 > sub_b6c92a7a[idx]:
            idx = idx + 1
            continue 
        return idx
    return 0
}

function sub_7fb67360(?) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        if 0 < sub_b6c92a7a.length:
            return sub_b6c92a7a
    else:
        if arg1 - 1 < sub_b6c92a7a.length:
            if arg1 < sub_b6c92a7a.length:
                return (sub_b6c92a7a[arg1] - sub_b6c92a7a[arg1])
    revert
}

function setBaseTokenURI(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require msg.sender == owner
    baseTokenURI[] = Array(len=arg1.length, data=arg1[all])
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(proxyRegistryAddress)
    staticcall proxyRegistryAddress.proxies(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != arg2:
        return bool(stor4[address(arg1)][address(arg2)])
    return 1
}

function mintTo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        require msg.sender == stor16
    require not ownerOf[arg1]
    require arg1 >= 1
    require arg1 <= maxTokenId
    require arg2
    require not ownerOf[arg1]
    ownerOf[arg1] = arg2
    balanceOf[address(arg2)]++
    emit Transfer(0, arg2, arg1);
    stor6[arg1] = tokenOfOwnerByIndex[address(arg2)].field_0
    tokenOfOwnerByIndex[address(arg2)].field_0++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg1
    stor8[arg1] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = arg1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ownerOf[arg2]
    require arg1 != ownerOf[arg2]
    if ownerOf[arg2] != msg.sender:
        require ext_code.size(proxyRegistryAddress)
        staticcall proxyRegistryAddress.proxies(address arg1) with:
                gas gas_remaining wei
               args ownerOf[arg2]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != msg.sender:
            require stor4[stor1[arg2]][address(msg.sender)]
    approved[arg2] = arg1
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function sub_0de53ee8(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    require msg.sender == owner
    require arg2 < 256
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if arg3:
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 17
            sub_e7ff73ca[mem[(32 * idx) + 128]] += 2^arg2
        else:
            require idx < arg1.length
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 17
            sub_e7ff73ca[mem[(32 * idx) + 128]] = sub_e7ff73ca[mem[(32 * idx) + 128]] and -1 xor 2^arg2
        idx = idx + 1
        continue 
}

function sub_dcf6a41b(?) payable {
    require calldata.size - 4 >= 32
    require arg1
    if balanceOf[address(arg1)] <= 0:
        return 0
    if tokenOfOwnerByIndex[address(arg1)].field_0:
        mem[128] = tokenOfOwnerByIndex[address(arg1)].field_0
        idx = 128
        s = 0
        while (32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 96 > idx:
            mem[idx + 32] = tokenOfOwnerByIndex[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    idx = 0
    s = maxTokenId
    while idx < tokenOfOwnerByIndex[address(arg1)].field_0:
        require idx < tokenOfOwnerByIndex[address(arg1)].field_0
        if mem[(32 * idx) + 128] >= s:
            idx = idx + 1
            s = s
            continue 
        require idx < tokenOfOwnerByIndex[address(arg1)].field_0
        idx = idx + 1
        s = mem[(32 * idx) + 128]
        continue 
    return s
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not stor19:
        require not stor18[arg3]
    require ownerOf[arg3]
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require ext_code.size(proxyRegistryAddress)
            staticcall proxyRegistryAddress.proxies(address arg1) with:
                    gas gas_remaining wei
                   args ownerOf[arg3]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != msg.sender:
                require stor4[stor1[arg3]][address(msg.sender)]
    require ownerOf[arg3] == arg1
    require arg2
    if approved[arg3]:
        approved[arg3] = 0
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    require 1 <= tokenOfOwnerByIndex[address(arg1)].field_0
    if stor6[arg3] != tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
        require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
        require stor6[arg3] < tokenOfOwnerByIndex[address(arg1)].field_0
        tokenOfOwnerByIndex[address(arg1)][stor6[arg3]].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
        stor6[stor5[address(arg1)][stor5[address(arg1)].field_0].field_0] = stor6[arg3]
    tokenOfOwnerByIndex[address(arg1)].field_0--
    if tokenOfOwnerByIndex[address(arg1)].field_0 > tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
        idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
        while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
            tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor6[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
    tokenOfOwnerByIndex[address(arg2)].field_0++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not stor19:
        require not stor18[arg3]
    require ownerOf[arg3]
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require ext_code.size(proxyRegistryAddress)
            staticcall proxyRegistryAddress.proxies(address arg1) with:
                    gas gas_remaining wei
                   args ownerOf[arg3]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != msg.sender:
                require stor4[stor1[arg3]][address(msg.sender)]
    require ownerOf[arg3] == arg1
    require arg2
    if approved[arg3]:
        approved[arg3] = 0
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    require 1 <= tokenOfOwnerByIndex[address(arg1)].field_0
    if stor6[arg3] != tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
        require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
        require stor6[arg3] < tokenOfOwnerByIndex[address(arg1)].field_0
        tokenOfOwnerByIndex[address(arg1)][stor6[arg3]].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
        stor6[stor5[address(arg1)][stor5[address(arg1)].field_0].field_0] = stor6[arg3]
    tokenOfOwnerByIndex[address(arg1)].field_0--
    if tokenOfOwnerByIndex[address(arg1)].field_0 > tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
        idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
        while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
            tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor6[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
    tokenOfOwnerByIndex[address(arg2)].field_0++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.0x150b7a02 with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if not stor19:
        require not stor18[arg3]
    require ownerOf[arg3]
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require ext_code.size(proxyRegistryAddress)
            staticcall proxyRegistryAddress.proxies(address arg1) with:
                    gas gas_remaining wei
                   args ownerOf[arg3]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != msg.sender:
                require stor4[stor1[arg3]][address(msg.sender)]
    require ownerOf[arg3] == arg1
    require arg2
    if approved[arg3]:
        approved[arg3] = 0
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    require 1 <= tokenOfOwnerByIndex[address(arg1)].field_0
    if stor6[arg3] != tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
        require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
        require stor6[arg3] < tokenOfOwnerByIndex[address(arg1)].field_0
        tokenOfOwnerByIndex[address(arg1)][stor6[arg3]].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
        stor6[stor5[address(arg1)][stor5[address(arg1)].field_0].field_0] = stor6[arg3]
    tokenOfOwnerByIndex[address(arg1)].field_0--
    if tokenOfOwnerByIndex[address(arg1)].field_0 > tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
        idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
        while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
            tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor6[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
    tokenOfOwnerByIndex[address(arg2)].field_0++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
}



}
