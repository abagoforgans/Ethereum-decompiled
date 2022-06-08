contract main {




// =====================  Runtime code  =====================


const InterfaceId_ERC165 = 0x1ffc9a700000000000000000000000000000000000000000000000000000000


mapping of uint8 stor0;
mapping of address ownerOf;
mapping of address approved;
mapping of uint256 balanceOf;
mapping of uint8 stor4;
array of uint256 name;
array of uint256 symbol;
array of struct tokenOfOwnerByIndex;
mapping of uint256 stor8;
array of uint256 tokenByIndex;
mapping of uint256 stor10;
mapping of bool stor11;
address owner;
address stor13;
address commissionAddress;
mapping of uint8 stor15;
array of struct parentsForTokenId;
uint256 stor17;
array of struct stor18;

function supportsInterface(bytes4 arg1) {
    return bool(stor0[Mask(32, 224, arg1)])
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

function getParentsForTokenId(uint256 arg1) {
    return parentsForTokenId[arg1].field_256, parentsForTokenId[arg1].field_512
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require arg1
    require arg2 < balanceOf[address(arg1)]
    require arg2 < tokenOfOwnerByIndex[address(arg1)].field_0
    return tokenOfOwnerByIndex[address(arg1)][arg2].field_0
}

function getSeedForTokenId(uint256 arg1) {
    return parentsForTokenId[arg1][0 len parentsForTokenId[arg1].length].field_0
}

function getRemixCount(uint256 arg1) {
    return parentsForTokenId[arg1].field_768
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

function commissionAddress() {
    return commissionAddress
}

function symbol() {
    return symbol[0 len symbol.length]
}

function isApprovedForAll(address arg1, address arg2) {
    return bool(stor4[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function exists(uint256 arg1) {
    return not not ownerOf[arg1]
}

function setMinterAddress(address arg1) {
    require msg.sender == owner
    stor13 = arg1
}

function setCommissionAddress(address arg1) {
    require msg.sender == owner
    commissionAddress = arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function setTokenOwner(address arg1, uint256 arg2) {
    require bool(stor15[address(msg.sender)]) == 1
    ownerOf[arg2] = arg1
}

function setURIToken(string arg1) {
    require msg.sender == owner
    stor18[].field_0 = Array(len=arg1.length, data=arg1[all])
}

function setApprovedContractAddress(address arg1, bool arg2) {
    require msg.sender == owner
    stor15[address(arg1)] = uint8(arg2)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setRemixCount(uint256 arg1, uint256 arg2) {
    require bool(stor15[address(msg.sender)]) == 1
    parentsForTokenId[arg1].field_768 = arg2
    emit remixCountChange(arg1, arg2);
}

function setApprovalForAll(address arg1, bool arg2) {
    require arg1 != msg.sender
    stor4[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function setParents(uint256 arg1, uint256 arg2, uint256 arg3) {
    require bool(stor15[address(msg.sender)]) == 1
    parentsForTokenId[arg1].field_256 = arg2
    parentsForTokenId[arg1].field_512 = arg3
    emit ParentsSets(arg1, arg2, arg3);
}

function setTokenSeed(uint256 arg1, string arg2) {
    require bool(stor15[address(msg.sender)]) == 1
    parentsForTokenId[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
    emit SeedChange(arg1, Array(len=arg2.length, data=arg2[all]));
}

function approve(address arg1, uint256 arg2) {
    require ownerOf[arg2]
    require arg1 != ownerOf[arg2]
    if ownerOf[arg2] != msg.sender:
        require stor4[stor1[arg2]][address(msg.sender)]
    approved[arg2] = arg1
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function getDataForTokenId(uint256 arg1) {
    require ownerOf[arg1]
    mem[128] = parentsForTokenId[arg1].field_0
    idx = 128
    s = 0
    while parentsForTokenId[arg1].length + 96 > idx:
        mem[idx + 32] = parentsForTokenId[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return arg1, 
           Array(len=parentsForTokenId[arg1].length, data=mem[128 len parentsForTokenId[arg1].length]),
           parentsForTokenId[arg1].field_256,
           parentsForTokenId[arg1].field_512,
           ownerOf[arg1],
           approved[arg1],
           parentsForTokenId[arg1].field_768
}

function mintTo(address arg1, string arg2) {
    require stor13 == msg.sender
    require arg1
    require not ownerOf[stor17]
    ownerOf[stor17] = arg1
    require balanceOf[address(arg1)] + 1 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)]++
    tokenOfOwnerByIndex[address(arg1)].field_0++
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0 = stor17
    stor8[stor17] = tokenOfOwnerByIndex[address(arg1)].field_0
    emit Transfer(0, arg1, stor17);
    stor10[stor17] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = stor17
    parentsForTokenId[stor17][].field_0 = Array(len=arg2.length, data=arg2[all])
    emit SeedChange(stor17, Array(len=arg2.length, data=arg2[all]));
    stor17++
    return stor17
}

function mintToPublic(address arg1, string arg2) {
    require bool(stor15[address(msg.sender)]) == 1
    require arg1
    require not ownerOf[stor17]
    ownerOf[stor17] = arg1
    require balanceOf[address(arg1)] + 1 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)]++
    tokenOfOwnerByIndex[address(arg1)].field_0++
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0 = stor17
    stor8[stor17] = tokenOfOwnerByIndex[address(arg1)].field_0
    emit Transfer(0, arg1, stor17);
    stor10[stor17] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = stor17
    parentsForTokenId[stor17][].field_0 = Array(len=arg2.length, data=arg2[all])
    emit SeedChange(stor17, Array(len=arg2.length, data=arg2[all]));
    stor17++
    return stor17
}

function tokenURI(uint256 arg1) {
    mem[128] = uint256(stor18.field_0)
    idx = 128
    s = 0
    while stor18.length + 96 > idx:
        mem[idx + 32] = stor18[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor18.length + 128] = parentsForTokenId[arg1].field_0
    idx = stor18.length + 128
    s = 0
    while stor18.length + parentsForTokenId[arg1].length + 96 > idx:
        mem[idx + 32] = parentsForTokenId[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor18.length + parentsForTokenId[arg1].length + 128] = ';'
    mem[stor18.length + parentsForTokenId[arg1].length + 129] = arg1
    mem[stor18.length + parentsForTokenId[arg1].length + 161] = 32
    mem[stor18.length + parentsForTokenId[arg1].length + 193] = mem[96]
    mem[stor18.length + parentsForTokenId[arg1].length + 225 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if not mem[96] % 32:
        return 32, mem[stor18.length + parentsForTokenId[arg1].length + 193 len mem[96] + 32]
    mem[floor32(mem[96]) + stor18.length + parentsForTokenId[arg1].length + 225] = mem[floor32(mem[96]) + stor18.length + parentsForTokenId[arg1].length + -(mem[96] % 32) + 257 len mem[96] % 32]
    return Array(len=mem[96], data=mem[stor18.length + parentsForTokenId[arg1].length + 225 len floor32(mem[96]) + 32])
}

function getTokensForOwner(address arg1) {
    if not tokenOfOwnerByIndex[address(arg1)].field_0:
        mem[(32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 128] = 32
        mem[(32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 160] = tokenOfOwnerByIndex[address(arg1)].field_0
        mem[(32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 192 len floor32(tokenOfOwnerByIndex[address(arg1)].field_0)] = mem[128 len floor32(tokenOfOwnerByIndex[address(arg1)].field_0)]
        return memory
          from (32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 128
           len (96 * tokenOfOwnerByIndex[address(arg1)].field_0) + 64
    mem[128] = tokenOfOwnerByIndex[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = tokenOfOwnerByIndex[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 192 len floor32(tokenOfOwnerByIndex[address(arg1)].field_0)] = mem[128 len floor32(tokenOfOwnerByIndex[address(arg1)].field_0)]
    return Array(len=tokenOfOwnerByIndex[address(arg1)].field_0, data=mem[128 len floor32(tokenOfOwnerByIndex[address(arg1)].field_0)], mem[(32 * tokenOfOwnerByIndex[address(arg1)].field_0) + floor32(tokenOfOwnerByIndex[address(arg1)].field_0) + 192 len (32 * tokenOfOwnerByIndex[address(arg1)].field_0) - floor32(tokenOfOwnerByIndex[address(arg1)].field_0)]), 
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
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    ownerOf[arg3] = 0
    require 1 <= tokenOfOwnerByIndex[address(arg1)].field_0
    require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
    require stor8[arg3] < tokenOfOwnerByIndex[address(arg1)].field_0
    tokenOfOwnerByIndex[address(arg1)][stor8[arg3]].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
    tokenOfOwnerByIndex[address(arg1)].field_0--
    if tokenOfOwnerByIndex[address(arg1)].field_0 > tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
        idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
        while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
            tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor8[arg3] = 0
    stor8[stor7[address(arg1)][stor7[address(arg1)].field_0].field_0] = stor8[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)].field_0++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
    stor8[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
    emit Transfer(arg1, arg2, arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
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
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    ownerOf[arg3] = 0
    require 1 <= tokenOfOwnerByIndex[address(arg1)].field_0
    require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
    require stor8[arg3] < tokenOfOwnerByIndex[address(arg1)].field_0
    tokenOfOwnerByIndex[address(arg1)][stor8[arg3]].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
    tokenOfOwnerByIndex[address(arg1)].field_0--
    if tokenOfOwnerByIndex[address(arg1)].field_0 > tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
        idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
        while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
            tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor8[arg3] = 0
    stor8[stor7[address(arg1)][stor7[address(arg1)].field_0].field_0] = stor8[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)].field_0++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
    stor8[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
    emit Transfer(arg1, arg2, arg3);
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

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
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
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    ownerOf[arg3] = 0
    require 1 <= tokenOfOwnerByIndex[address(arg1)].field_0
    require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
    require stor8[arg3] < tokenOfOwnerByIndex[address(arg1)].field_0
    tokenOfOwnerByIndex[address(arg1)][stor8[arg3]].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
    tokenOfOwnerByIndex[address(arg1)].field_0--
    if tokenOfOwnerByIndex[address(arg1)].field_0 > tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
        idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
        while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
            tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor8[arg3] = 0
    stor8[stor7[address(arg1)][stor7[address(arg1)].field_0].field_0] = stor8[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)].field_0++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
    stor8[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function adminBurnToken(uint256 arg1) {
    require msg.sender == owner
    parentsForTokenId[arg1].field_0 = 0
    if 31 < parentsForTokenId[arg1].length:
        idx = 0
        while parentsForTokenId[arg1].length + 31 / 32 > idx:
            parentsForTokenId[arg1][idx].field_0 = 0
            idx = idx + 1
            continue 
    parentsForTokenId[arg1].field_256 = 0
    parentsForTokenId[arg1].field_512 = 0
    parentsForTokenId[arg1].field_768 = 0
    require ownerOf[arg1]
    require ownerOf[arg1]
    require ownerOf[arg1] == ownerOf[arg1]
    if approved[arg1]:
        approved[arg1] = 0
    require ownerOf[arg1]
    require ownerOf[arg1] == ownerOf[arg1]
    require 1 <= balanceOf[stor1[arg1]]
    balanceOf[stor1[arg1]]--
    ownerOf[arg1] = 0
    require 1 <= tokenOfOwnerByIndex[stor1[arg1]].field_0
    require tokenOfOwnerByIndex[stor1[arg1]].field_0 - 1 < tokenOfOwnerByIndex[stor1[arg1]].field_0
    require stor8[arg1] < tokenOfOwnerByIndex[stor1[arg1]].field_0
    tokenOfOwnerByIndex[stor1[arg1]][stor8[arg1]].field_0 = tokenOfOwnerByIndex[stor1[arg1]][tokenOfOwnerByIndex[stor1[arg1]].field_0].field_0
    tokenOfOwnerByIndex[stor1[arg1]].field_0--
    if tokenOfOwnerByIndex[stor1[arg1]].field_0 > tokenOfOwnerByIndex[stor1[arg1]].field_0 - 1:
        idx = tokenOfOwnerByIndex[stor1[arg1]].field_0 - 1
        while tokenOfOwnerByIndex[stor1[arg1]].field_0 > idx:
            tokenOfOwnerByIndex[stor1[arg1]][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor8[arg1] = 0
    stor8[stor7[stor1[arg1]][stor7[stor1[arg1]].field_0].field_0] = stor8[arg1]
    emit Transfer(ownerOf[arg1], 0, arg1);
    if Mask(255, 1, (256 * not bool(stor11[arg1])) - 1 and uint256(stor11[arg1])):
        uint256(stor11[arg1]) = 0
        if 31 < stor11[arg1].length:
            idx = 0
            while stor11[arg1].length + 31 / 32 > idx:
                uint256(stor11[arg1][idx]) = 0
                idx = idx + 1
                continue 
    require 1 <= tokenByIndex.length
    require tokenByIndex.length - 1 < tokenByIndex.length
    require stor10[arg1] < tokenByIndex.length
    tokenByIndex[stor10[arg1]] = tokenByIndex[tokenByIndex.length]
    require tokenByIndex.length - 1 < tokenByIndex.length
    tokenByIndex[tokenByIndex.length] = 0
    tokenByIndex.length--
    if tokenByIndex.length > tokenByIndex.length - 1:
        idx = tokenByIndex.length - 1
        while tokenByIndex.length > idx:
            tokenByIndex[idx] = 0
            idx = idx + 1
            continue 
    stor10[arg1] = 0
    stor10[stor9[stor9.length]] = stor10[arg1]
}

function burnToken(uint256 arg1) {
    require bool(stor15[address(msg.sender)]) == 1
    parentsForTokenId[arg1].field_0 = 0
    if 31 < parentsForTokenId[arg1].length:
        idx = 0
        while parentsForTokenId[arg1].length + 31 / 32 > idx:
            parentsForTokenId[arg1][idx].field_0 = 0
            idx = idx + 1
            continue 
    parentsForTokenId[arg1].field_256 = 0
    parentsForTokenId[arg1].field_512 = 0
    parentsForTokenId[arg1].field_768 = 0
    require ownerOf[arg1]
    require ownerOf[arg1]
    require ownerOf[arg1] == ownerOf[arg1]
    if approved[arg1]:
        approved[arg1] = 0
    require ownerOf[arg1]
    require ownerOf[arg1] == ownerOf[arg1]
    require 1 <= balanceOf[stor1[arg1]]
    balanceOf[stor1[arg1]]--
    ownerOf[arg1] = 0
    require 1 <= tokenOfOwnerByIndex[stor1[arg1]].field_0
    require tokenOfOwnerByIndex[stor1[arg1]].field_0 - 1 < tokenOfOwnerByIndex[stor1[arg1]].field_0
    require stor8[arg1] < tokenOfOwnerByIndex[stor1[arg1]].field_0
    tokenOfOwnerByIndex[stor1[arg1]][stor8[arg1]].field_0 = tokenOfOwnerByIndex[stor1[arg1]][tokenOfOwnerByIndex[stor1[arg1]].field_0].field_0
    tokenOfOwnerByIndex[stor1[arg1]].field_0--
    if tokenOfOwnerByIndex[stor1[arg1]].field_0 > tokenOfOwnerByIndex[stor1[arg1]].field_0 - 1:
        idx = tokenOfOwnerByIndex[stor1[arg1]].field_0 - 1
        while tokenOfOwnerByIndex[stor1[arg1]].field_0 > idx:
            tokenOfOwnerByIndex[stor1[arg1]][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor8[arg1] = 0
    stor8[stor7[stor1[arg1]][stor7[stor1[arg1]].field_0].field_0] = stor8[arg1]
    emit Transfer(ownerOf[arg1], 0, arg1);
    if Mask(255, 1, (256 * not bool(stor11[arg1])) - 1 and uint256(stor11[arg1])):
        uint256(stor11[arg1]) = 0
        if 31 < stor11[arg1].length:
            idx = 0
            while stor11[arg1].length + 31 / 32 > idx:
                uint256(stor11[arg1][idx]) = 0
                idx = idx + 1
                continue 
    require 1 <= tokenByIndex.length
    require tokenByIndex.length - 1 < tokenByIndex.length
    require stor10[arg1] < tokenByIndex.length
    tokenByIndex[stor10[arg1]] = tokenByIndex[tokenByIndex.length]
    require tokenByIndex.length - 1 < tokenByIndex.length
    tokenByIndex[tokenByIndex.length] = 0
    tokenByIndex.length--
    if tokenByIndex.length > tokenByIndex.length - 1:
        idx = tokenByIndex.length - 1
        while tokenByIndex.length > idx:
            tokenByIndex[idx] = 0
            idx = idx + 1
            continue 
    stor10[arg1] = 0
    stor10[stor9[stor9.length]] = stor10[arg1]
}



}
