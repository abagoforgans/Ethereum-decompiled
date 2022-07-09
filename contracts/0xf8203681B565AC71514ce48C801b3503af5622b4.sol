contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of address ownerOf;
mapping of address approved;
mapping of uint256 balanceOf;
mapping of uint8 stor4;
array of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor6;
array of uint256 tokenByIndex;
mapping of uint256 stor8;
array of uint256 name;
array of uint256 symbol;
array of uint256 tokenURI;
array of uint256 sub_9be61a90;

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

function tokenOfOwnerByIndex(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1
    require arg2 < balanceOf[address(arg1)]
    require arg2 < tokenOfOwnerByIndex[address(arg1)]
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < tokenByIndex.length
    return tokenByIndex[arg1]
}

function sub_5f81d671(?) payable {
    return sub_9be61a90[arg1][0 len sub_9be61a90[arg1].length]
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

function symbol() payable {
    return symbol[0 len symbol.length]
}

function sub_9be61a90(?) payable {
    return sub_9be61a90[arg1][0 len sub_9be61a90[arg1].length]
}

function tokenURI(uint256 arg1) payable {
    return tokenURI[arg1][0 len tokenURI[arg1].length]
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(stor4[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 != msg.sender
    stor4[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ownerOf[arg2]
    require arg1 != ownerOf[arg2]
    if ownerOf[arg2] != msg.sender:
        require stor4[stor1[arg2]][address(msg.sender)]
    approved[arg2] = arg1
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function sub_5e894a16(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if msg.sender == 0xe35b827177398d8d2fba304d9cf53bc8fc1573b7:
        sub_9be61a90[arg1][] = Array(len=arg2.length, data=arg2[all])
    else:
        if msg.sender == 0xe3eee18a530acc43d2f30946a5ff7e6eb9732f10:
            sub_9be61a90[arg1][] = Array(len=arg2.length, data=arg2[all])
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ownerOf[arg3]
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
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
    require 1 <= tokenOfOwnerByIndex[address(arg1)]
    if stor6[arg3] != tokenOfOwnerByIndex[address(arg1)] - 1:
        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
        require stor6[arg3] < tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)][stor6[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
        stor6[stor5[address(arg1)][stor5[address(arg1)]]] = stor6[arg3]
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ownerOf[arg3]
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
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
    require 1 <= tokenOfOwnerByIndex[address(arg1)]
    if stor6[arg3] != tokenOfOwnerByIndex[address(arg1)] - 1:
        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
        require stor6[arg3] < tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)][stor6[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
        stor6[stor5[address(arg1)][stor5[address(arg1)]]] = stor6[arg3]
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
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
    require ownerOf[arg3]
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
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
    require 1 <= tokenOfOwnerByIndex[address(arg1)]
    if stor6[arg3] != tokenOfOwnerByIndex[address(arg1)] - 1:
        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
        require stor6[arg3] < tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)][stor6[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
        stor6[stor5[address(arg1)][stor5[address(arg1)]]] = stor6[arg3]
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
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

function newToken(address arg1) payable {
    require calldata.size - 4 >= 32
    if msg.sender == 0xe35b827177398d8d2fba304d9cf53bc8fc1573b7:
        require not ownerOf[stor7.length + 1]
        ownerOf[stor7.length + 1] = 0xe35b827177398d8d2fba304d9cf53bc8fc1573b7
        balanceOf[0xe35b827177398d8d2fba304d9cf53bc8fc1573b7]++
        emit Transfer(0, 0xe35b827177398d8d2fba304d9cf53bc8fc1573b7, tokenByIndex.length + 1);
        stor6[stor7.length + 1] = tokenOfOwnerByIndex[0xe35b827177398d8d2fba304d9cf53bc8fc1573b7]
        tokenOfOwnerByIndex[0xe35b827177398d8d2fba304d9cf53bc8fc1573b7]++
        tokenOfOwnerByIndex[0xe35b827177398d8d2fba304d9cf53bc8fc1573b7][tokenOfOwnerByIndex[0xe35b827177398d8d2fba304d9cf53bc8fc1573b7]] = tokenByIndex.length + 1
        stor8[stor7.length + 1] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = tokenByIndex.length + 1
        require ownerOf[stor7.length]
        require ownerOf[stor7.length]
        if ownerOf[stor7.length] != msg.sender:
            if approved[stor7.length] != msg.sender:
                require stor4[stor1[stor7.length]][address(msg.sender)]
        require ownerOf[stor7.length] == 0xe35b827177398d8d2fba304d9cf53bc8fc1573b7
        require arg1
        if approved[stor7.length]:
            approved[stor7.length] = 0
        require 1 <= balanceOf[0xe35b827177398d8d2fba304d9cf53bc8fc1573b7]
        balanceOf[0xe35b827177398d8d2fba304d9cf53bc8fc1573b7]--
        balanceOf[address(arg1)]++
        ownerOf[stor7.length] = arg1
        emit Transfer(0xe35b827177398d8d2fba304d9cf53bc8fc1573b7, arg1, tokenByIndex.length);
        require 1 <= tokenOfOwnerByIndex[0xe35b827177398d8d2fba304d9cf53bc8fc1573b7]
        if stor6[stor7.length] != tokenOfOwnerByIndex[0xe35b827177398d8d2fba304d9cf53bc8fc1573b7] - 1:
            require tokenOfOwnerByIndex[0xe35b827177398d8d2fba304d9cf53bc8fc1573b7] - 1 < tokenOfOwnerByIndex[0xe35b827177398d8d2fba304d9cf53bc8fc1573b7]
            require stor6[stor7.length] < tokenOfOwnerByIndex[0xe35b827177398d8d2fba304d9cf53bc8fc1573b7]
            tokenOfOwnerByIndex[0xe35b827177398d8d2fba304d9cf53bc8fc1573b7][stor6[stor7.length]] = tokenOfOwnerByIndex[0xe35b827177398d8d2fba304d9cf53bc8fc1573b7][tokenOfOwnerByIndex[0xe35b827177398d8d2fba304d9cf53bc8fc1573b7]]
            stor6[stor5[0xe35b827177398d8d2fba304d9cf53bc8fc1573b7][stor5[0xe35b827177398d8d2fba304d9cf53bc8fc1573b7]]] = stor6[stor7.length]
        tokenOfOwnerByIndex[0xe35b827177398d8d2fba304d9cf53bc8fc1573b7]--
        if tokenOfOwnerByIndex[0xe35b827177398d8d2fba304d9cf53bc8fc1573b7] > tokenOfOwnerByIndex[0xe35b827177398d8d2fba304d9cf53bc8fc1573b7] - 1:
            idx = tokenOfOwnerByIndex[0xe35b827177398d8d2fba304d9cf53bc8fc1573b7] - 1
            while tokenOfOwnerByIndex[0xe35b827177398d8d2fba304d9cf53bc8fc1573b7] > idx:
                tokenOfOwnerByIndex[0xe35b827177398d8d2fba304d9cf53bc8fc1573b7][idx] = 0
                idx = idx + 1
                continue 
        stor6[stor7.length] = tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)]++
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = tokenByIndex.length
}



}
