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
array of uint256 name;
array of uint256 symbol;
array of struct stor7;
array of uint256 tokenByIndex;
mapping of uint256 stor9;
array of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor11;

function supportsInterface(bytes4 arg1) {
    return bool(stor0[Mask(32, 224, arg1)])
}

function name() {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) {
    require ownerOf[arg1]
    return approved[arg1]
}

function totalSupply() {
    return tokenByIndex.length
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require arg2 < tokenOfOwnerByIndex[address(arg1)]
    require arg2 < tokenOfOwnerByIndex[address(arg1)]
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function tokenByIndex(uint256 arg1) {
    require arg1 < tokenByIndex.length
    require stor9[stor8[arg1]] == arg1
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

function symbol() {
    return symbol[0 len symbol.length]
}

function isApprovedForAll(address arg1, address arg2) {
    require arg1
    require arg2
    return bool(stor4[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function setApprovalForAll(address arg1, bool arg2) {
    require arg1
    stor4[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function approve(address arg1, uint256 arg2) {
    if ownerOf[arg2] != msg.sender:
        require stor4[stor1[arg2]][address(msg.sender)]
    require ownerOf[arg2]
    require arg1 != ownerOf[arg2]
    approved[arg2] = arg1
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function sub_e546b6c0(?) {
    require ownerOf[arg1]
    stor7[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
    stor7[arg1][1][].field_0 = Array(len=arg3.length, data=arg3[all])
    stor7[arg1][2][].field_0 = Array(len=arg4.length, data=arg4[all])
    stor7[arg1].field_768 = arg5
    stor7[arg1].field_1024 = arg6
}

function addNFBTNY(address arg1, uint256 arg2) {
    require not ownerOf[arg2]
    ownerOf[arg2] = arg1
    require balanceOf[address(arg1)] + 1 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)]++
    tokenOfOwnerByIndex[address(arg1)]++
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = arg2
    stor11[arg2] = tokenOfOwnerByIndex[address(arg1)]
}

function mint(address arg1, uint256 arg2) {
    require arg1
    require arg2
    require not ownerOf[arg2]
    require not ownerOf[arg2]
    ownerOf[arg2] = arg1
    require balanceOf[address(arg1)] + 1 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)]++
    emit Transfer(0, arg1, arg2);
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = arg2
    stor9[arg2] = tokenByIndex.length
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor4[stor1[arg3]][address(msg.sender)]
    require ownerOf[arg3] == arg1
    require arg2
    if approved[arg3]:
        approved[arg3] = 0
    require ownerOf[arg3] == ownerOf[arg3]
    require balanceOf[stor1[arg3]] > 0
    balanceOf[stor1[arg3]]--
    ownerOf[arg3] = 0
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    emit Transfer(ownerOf[arg3], arg2, arg3);
}

function burn(address arg1, uint256 arg2) {
    require ownerOf[arg2]
    if approved[arg2]:
        approved[arg2] = 0
    require ownerOf[arg2] == arg1
    require balanceOf[address(arg1)] > 0
    balanceOf[address(arg1)]--
    ownerOf[arg2] = 0
    emit Transfer(arg1, 0, arg2);
    require tokenByIndex.length > 0
    require stor9[arg2] < tokenByIndex.length
    require tokenByIndex[stor9[arg2]] == arg2
    require tokenByIndex.length - 1 < tokenByIndex.length
    require stor9[arg2] < tokenByIndex.length
    tokenByIndex[stor9[arg2]] = tokenByIndex[tokenByIndex.length]
    tokenByIndex.length--
    if tokenByIndex.length > tokenByIndex.length - 1:
        idx = tokenByIndex.length - 1
        while tokenByIndex.length > idx:
            tokenByIndex[idx] = 0
            idx = idx + 1
            continue 
    stor9[stor8[stor8.length]] = stor9[arg2]
    stor9[arg2] = 0
}

function removeNFBTNY(address arg1, uint256 arg2) {
    require ownerOf[arg2] == arg1
    require balanceOf[address(arg1)] > 0
    balanceOf[address(arg1)]--
    ownerOf[arg2] = 0
    require tokenOfOwnerByIndex[address(arg1)] > 0
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    require stor11[arg2] < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][stor11[arg2]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor11[stor10[address(arg1)][stor10[address(arg1)]]] = stor11[arg2]
    stor11[arg2] = 0
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor4[stor1[arg3]][address(msg.sender)]
    require ownerOf[arg3] == arg1
    require arg2
    if approved[arg3]:
        approved[arg3] = 0
    require ownerOf[arg3] == ownerOf[arg3]
    require balanceOf[stor1[arg3]] > 0
    balanceOf[stor1[arg3]]--
    ownerOf[arg3] = 0
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    emit Transfer(ownerOf[arg3], arg2, arg3);
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

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor4[stor1[arg3]][address(msg.sender)]
    require ownerOf[arg3] == arg1
    require arg2
    if approved[arg3]:
        approved[arg3] = 0
    require ownerOf[arg3] == ownerOf[arg3]
    require balanceOf[stor1[arg3]] > 0
    balanceOf[stor1[arg3]]--
    ownerOf[arg3] = 0
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    emit Transfer(ownerOf[arg3], arg2, arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.0x150b7a02 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
}



}
