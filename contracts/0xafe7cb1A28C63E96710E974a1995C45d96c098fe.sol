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
array of uint256 name;
array of uint256 symbol;
array of uint256 tokenURI;
array of uint256 sub_bbf6797c;
array of uint256 sub_67487907;
array of uint256 sub_edee9f01;
array of uint256 sub_9fb4f8f1;
array of address sub_fa027eca;
address sub_9ee3c8fdAddress;
array of uint256 sub_fed79f11;
array of uint256 sub_1f5fbd01;

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

function sub_1aa6f00e(?) payable {
    return sub_1f5fbd01[arg1][0 len sub_1f5fbd01[arg1].length]
}

function sub_1f5fbd01(?) payable {
    return sub_1f5fbd01[arg1][0 len sub_1f5fbd01[arg1].length]
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1
    require arg2 < balanceOf[address(arg1)]
    require arg2 < tokenOfOwnerByIndex[address(arg1)]
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function sub_39af217e(?) payable {
    return sub_bbf6797c[0 len sub_bbf6797c.length]
}

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < tokenByIndex.length
    return tokenByIndex[arg1]
}

function sub_4fe6f55f(?) payable {
    return sub_67487907[0 len sub_67487907.length]
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ownerOf[arg1]
    return ownerOf[arg1]
}

function sub_67487907(?) payable {
    return sub_67487907[0 len sub_67487907.length]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1
    return balanceOf[address(arg1)]
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function sub_991ffe33(?) payable {
    return sub_9fb4f8f1[0 len sub_9fb4f8f1.length]
}

function sub_9ee3c8fd(?) payable {
    return sub_9ee3c8fdAddress
}

function sub_9fb4f8f1(?) payable {
    return sub_9fb4f8f1[0 len sub_9fb4f8f1.length]
}

function sub_bbf6797c(?) payable {
    return sub_bbf6797c[0 len sub_bbf6797c.length]
}

function tokenURI(uint256 arg1) payable {
    return tokenURI[arg1][0 len tokenURI[arg1].length]
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(stor4[address(arg1)][address(arg2)])
}

function sub_edee9f01(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_edee9f01.length
    return sub_edee9f01[arg1]
}

function sub_f029bed3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_fa027eca.length
    return sub_fa027eca[arg1]
}

function sub_f7efddca(?) payable {
    return sub_fed79f11[arg1][0 len sub_fed79f11[arg1].length]
}

function sub_fa027eca(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_fa027eca.length
    return sub_fa027eca[arg1]
}

function sub_fed79f11(?) payable {
    return sub_fed79f11[arg1][0 len sub_fed79f11[arg1].length]
}

function _fallback() payable {
    revert
}

function sub_cf359a08(?) payable {
    require calldata.size - 4 >= 32
    return 1
}

function sub_1251f972(?) payable {
    require calldata.size - 4 >= 32
    sub_fa027eca.length++
    sub_fa027eca[sub_fa027eca.length] = arg1
}

function sub_91577e4e(?) payable {
    require calldata.size - 4 >= 32
    if 1 <= arg1:
        if arg1 <= 5:
            sub_edee9f01.length++
            sub_edee9f01[sub_edee9f01.length] = arg1
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 != msg.sender
    stor4[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function sub_4105f558(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    sub_bbf6797c[] = Array(len=arg1.length, data=arg1[all])
}

function sub_90c10632(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    sub_67487907[] = Array(len=arg1.length, data=arg1[all])
}

function sub_d135a355(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    sub_9fb4f8f1[] = Array(len=arg1.length, data=arg1[all])
}

function sub_770b6eb8(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    sub_1f5fbd01[arg1][] = Array(len=arg2.length, data=arg2[all])
}

function sub_dbc2d282(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    sub_fed79f11[arg1][] = Array(len=arg2.length, data=arg2[all])
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

function sub_17fd92d5(?) payable {
    idx = 0
    s = 0
    while idx < sub_edee9f01.length:
        mem[0] = 14
        idx = idx + 1
        s = s + sub_edee9f01[idx]
        continue 
    if sub_edee9f01.length:
        return (s * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length * sub_edee9f01.length / sub_edee9f01.length)
    revert
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



}
