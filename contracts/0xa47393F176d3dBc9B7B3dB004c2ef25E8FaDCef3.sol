contract main {




// =====================  Runtime code  =====================


const InterfaceId_ERC165 = 0x1ffc9a700000000000000000000000000000000000000000000000000000000


mapping of uint8 stor0;
uint8 stor1; offset 160
address owner;
mapping of address ownerOf;
mapping of address approved;
mapping of uint256 balanceOf;
mapping of uint8 stor5;
array of uint256 name;
array of uint256 symbol;
array of struct stor8;
mapping of uint8 stor9;
mapping of uint256 stor10;
array of struct tokenOfOwnerByIndex;
mapping of uint256 stor12;
array of uint256 tokenByIndex;
mapping of uint256 stor14;
array of uint256 tokenURI;
array of struct stor110349606679412691172957834289542550319383271247755660854362242977991410020068;

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

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require arg1
    require arg2 < balanceOf[address(arg1)]
    require arg2 < tokenOfOwnerByIndex[address(arg1)].field_0
    return tokenOfOwnerByIndex[address(arg1)][arg2].field_0
}

function exists(uint256 arg1) {
    return bool(ownerOf[arg1])
}

function tokenByIndex(uint256 arg1) {
    require arg1 < tokenByIndex.length
    return tokenByIndex[arg1]
}

function paused() {
    return bool(stor1)
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
    return symbol[0 len symbol.length]
}

function tokenURI(uint256 arg1) {
    return tokenURI[arg1][0 len tokenURI[arg1].length]
}

function isApprovedForAll(address arg1, address arg2) {
    return bool(stor5[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function unpause() {
    require msg.sender == owner
    require stor1
    stor1 = 0
}

function pause() {
    require msg.sender == owner
    require not stor1
    stor1 = 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setApprovalForAll(address arg1, bool arg2) {
    require arg1 != msg.sender
    stor5[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function approve(address arg1, uint256 arg2) {
    require ownerOf[arg2]
    require ownerOf[arg2] != arg1
    if ownerOf[arg2] != msg.sender:
        require stor5[stor2[arg2]][address(msg.sender)]
    approved[arg2] = arg1
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function getNFTbyTokenId(uint256 arg1) {
    require ownerOf[arg1]
    require stor10[arg1] < stor8.length
    mem[256] = stor8[stor10[arg1]].field_0
    idx = 256
    s = 0
    while stor8[stor10[arg1]].length + 256 > idx + 32:
        mem[idx + 32] = stor8[(2 * stor10[arg1]) + s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor8[stor10[arg1]].length, data=mem[256 len stor8[stor10[arg1]].length]), 
           stor8[stor10[arg1]].field_256,
           bool(stor9[arg1])
}

function setNFTbyTokenId(uint256 arg1, string arg2, bool arg3) {
    require not stor1
    require msg.sender == owner
    require ownerOf[arg1]
    require 1 == bool(stor9[arg1])
    require stor10[arg1] < stor8.length
    stor8[stor10[arg1]].field_0 = (2 * arg2.length) + 1
    s = 0
    idx = arg2 + 36
    while arg2 + arg2.length + 36 > idx:
        stor8[(2 * stor10[arg1]) + s].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg2.length + 31) >> 5
    while stor8[stor10[arg1]].length + 31 / 32 > idx:
        stor8[(2 * stor10[arg1]) + idx].field_0 = 0
        idx = idx + 1
        continue 
    stor9[arg1] = uint8(arg3)
    emit SetNFTbyTokenId(arg1, arg3);
}

function tokensOfOwner(address arg1) {
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
            require stor5[stor2[arg3]][address(msg.sender)]
    require not stor1
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
    require stor12[arg3] < tokenOfOwnerByIndex[address(arg1)].field_0
    tokenOfOwnerByIndex[address(arg1)][stor12[arg3]].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
    require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0 = 0
    tokenOfOwnerByIndex[address(arg1)].field_0--
    if tokenOfOwnerByIndex[address(arg1)].field_0 > tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
        idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
        while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
            tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor12[arg3] = 0
    stor12[stor11[address(arg1)][stor11[address(arg1)].field_0].field_0] = stor12[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)].field_0++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
    stor12[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
    emit Transfer(arg1, arg2, arg3);
}

function createToken(uint256[] arg1, address arg2) payable {
    mem[64] = 160
    mem[96] = 96
    mem[128] = 0
    require not stor1
    require msg.sender == owner
    s = 96
    idx = 0
    s = 0
    while arg1.length > uint8(idx):
        require uint8(idx) < arg1.length
        _42 = mem[64]
        mem[64] = mem[64] + 96
        mem[_42 + 64] = 0
        mem[_42] = _42 + 64
        mem[_42 + 32] = uint64(block.timestamp)
        stor9[cd[((32 * uint8(idx)) + arg1 + 36)]] = 1
        stor8.length++
        bool(stor8[stor8.length].field_0) = 0
        uint255(stor8[stor8.length].field_1) = 0
        Mask(248, 0, stor8[stor8.length].field_8) = mem[_42 + 96 len 31]
        s = sha3((2 * stor8.length) - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911d)
        while sha3((2 * stor8.length) - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911d) + (stor8[stor8.length].length + 31 / 32) > s:
            stor[s] = 0
            s = s + 1
            continue 
        uint64(storF3F7[stor8.length].field_0) = uint64(block.timestamp)
        Mask(192, 0, storF3F7[stor8.length].field_64) = 0
        stor10[cd[((32 * uint8(idx)) + arg1 + 36)]] = stor8.length
        require arg2
        require not ownerOf[cd[((32 * uint8(idx)) + arg1 + 36)]]
        ownerOf[cd[((32 * uint8(idx)) + arg1 + 36)]] = arg2
        require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
        balanceOf[address(arg2)]++
        tokenOfOwnerByIndex[address(arg2)].field_0++
        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = cd[((32 * uint8(idx)) + arg1 + 36)]
        stor12[cd[((32 * uint8(idx)) + arg1 + 36)]] = tokenOfOwnerByIndex[address(arg2)].field_0
        emit Transfer(0, arg2, cd[((32 * uint8(idx)) + arg1 + 36)]);
        mem[32] = 14
        stor14[cd[((32 * uint8(idx)) + arg1 + 36)]] = tokenByIndex.length
        tokenByIndex.length++
        mem[0] = 13
        tokenByIndex[tokenByIndex.length] = cd[((32 * uint8(idx)) + arg1 + 36)]
        s = _42
        idx = idx + 1
        s = cd[((32 * uint8(idx)) + arg1 + 36)]
        continue 
}

function transfer(address arg1, uint256 arg2) {
    require ownerOf[arg2]
    if ownerOf[arg2] != msg.sender:
        if approved[arg2] != msg.sender:
            require stor5[stor2[arg2]][address(msg.sender)]
    require not stor1
    require arg1
    require arg1 != this.address
    require ownerOf[arg2]
    require ownerOf[arg2] == msg.sender
    if approved[arg2]:
        approved[arg2] = 0
    require ownerOf[arg2]
    require ownerOf[arg2] == msg.sender
    require 1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)]--
    ownerOf[arg2] = 0
    require 1 <= tokenOfOwnerByIndex[address(msg.sender)].field_0
    require tokenOfOwnerByIndex[address(msg.sender)].field_0 - 1 < tokenOfOwnerByIndex[address(msg.sender)].field_0
    require stor12[arg2] < tokenOfOwnerByIndex[address(msg.sender)].field_0
    tokenOfOwnerByIndex[address(msg.sender)][stor12[arg2]].field_0 = tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)].field_0].field_0
    require tokenOfOwnerByIndex[address(msg.sender)].field_0 - 1 < tokenOfOwnerByIndex[address(msg.sender)].field_0
    tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)].field_0].field_0 = 0
    tokenOfOwnerByIndex[address(msg.sender)].field_0--
    if tokenOfOwnerByIndex[address(msg.sender)].field_0 > tokenOfOwnerByIndex[address(msg.sender)].field_0 - 1:
        idx = tokenOfOwnerByIndex[address(msg.sender)].field_0 - 1
        while tokenOfOwnerByIndex[address(msg.sender)].field_0 > idx:
            tokenOfOwnerByIndex[address(msg.sender)][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor12[arg2] = 0
    stor12[stor11[address(msg.sender)][stor11[address(msg.sender)].field_0].field_0] = stor12[arg2]
    require not ownerOf[arg2]
    ownerOf[arg2] = arg1
    require balanceOf[address(arg1)] + 1 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)]++
    tokenOfOwnerByIndex[address(arg1)].field_0++
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0 = arg2
    stor12[arg2] = tokenOfOwnerByIndex[address(arg1)].field_0
    emit Transfer(msg.sender, arg1, arg2);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor5[stor2[arg3]][address(msg.sender)]
    require not stor1
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor5[stor2[arg3]][address(msg.sender)]
    require not stor1
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
    require stor12[arg3] < tokenOfOwnerByIndex[address(arg1)].field_0
    tokenOfOwnerByIndex[address(arg1)][stor12[arg3]].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
    require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0 = 0
    tokenOfOwnerByIndex[address(arg1)].field_0--
    if tokenOfOwnerByIndex[address(arg1)].field_0 > tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
        idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
        while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
            tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor12[arg3] = 0
    stor12[stor11[address(arg1)][stor11[address(arg1)].field_0].field_0] = stor12[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)].field_0++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
    stor12[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor5[stor2[arg3]][address(msg.sender)]
    require not stor1
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor5[stor2[arg3]][address(msg.sender)]
    require not stor1
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor5[stor2[arg3]][address(msg.sender)]
    require not stor1
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
    require stor12[arg3] < tokenOfOwnerByIndex[address(arg1)].field_0
    tokenOfOwnerByIndex[address(arg1)][stor12[arg3]].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
    require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0 = 0
    tokenOfOwnerByIndex[address(arg1)].field_0--
    if tokenOfOwnerByIndex[address(arg1)].field_0 > tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
        idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
        while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
            tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor12[arg3] = 0
    stor12[stor11[address(arg1)][stor11[address(arg1)].field_0].field_0] = stor12[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)].field_0++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
    stor12[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
}



}
