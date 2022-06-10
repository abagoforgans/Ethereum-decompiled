contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
mapping of address ownerOf;
mapping of address approved;
mapping of uint256 balanceOf;
mapping of uint8 stor5;
array of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor7;
array of uint256 tokenByIndex;
mapping of uint256 stor9;
array of uint256 name;
array of uint256 symbol;
array of uint256 tokenURI;
array of struct stor13;
mapping of uint256 stor14;
array of struct stor15;
uint256 sub_7e58686a;

function supportsInterface(bytes4 arg1) {
    return bool(stor1[Mask(32, 224, arg1)])
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

function sub_7e58686a(?) {
    return sub_7e58686a
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

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function balanceOf(address arg1, uint256 arg2) {
    return stor14[arg2][address(arg1)], stor13[address(arg1)].field_768
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

function sub_33ac459b(?) {
    require msg.sender == owner
    stor13[address(arg1)][].field_0 = Array(len=arg4.length, data=arg4[all])
    stor13[address(arg1)][1][].field_0 = Array(len=arg5.length, data=arg5[all])
    stor13[address(arg1)][2][].field_0 = Array(len=arg6.length, data=arg6[all])
    stor13[address(arg1)].field_768 = arg3
    idx = 0
    while idx < sub_7e58686a:
        stor14[idx][address(arg1)] = arg2
        mem[32] = 15
        stor15[idx].field_0++
        mem[0] = sha3(idx, 15)
        stor15[idx][stor15[idx].field_0].field_0 = arg1
        idx = idx + 1
        continue 
}

function sub_c365d97a(?) {
    require msg.sender == owner
    idx = 0
    while idx < arg1:
        require msg.sender
        require not ownerOf[stor17]
        ownerOf[stor17] = msg.sender
        require balanceOf[address(msg.sender)] + 1 >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)]++
        tokenOfOwnerByIndex[address(msg.sender)]++
        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = sub_7e58686a
        stor7[stor17] = tokenOfOwnerByIndex[address(msg.sender)]
        emit Transfer(0, msg.sender, sub_7e58686a);
        mem[32] = 9
        stor9[stor17] = tokenByIndex.length
        tokenByIndex.length++
        mem[0] = 8
        tokenByIndex[tokenByIndex.length] = sub_7e58686a
        sub_7e58686a++
        idx = idx + 1
        continue 
}

function sub_283a6e29(?) {
    if not stor15[arg1].field_0:
        mem[(32 * stor15[arg1].field_0) + 128] = 32
        mem[(32 * stor15[arg1].field_0) + 160] = stor15[arg1].field_0
        mem[(32 * stor15[arg1].field_0) + 192 len floor32(stor15[arg1].field_0)] = mem[128 len floor32(stor15[arg1].field_0)]
        return memory
          from (32 * stor15[arg1].field_0) + 128
           len (96 * stor15[arg1].field_0) + 64
    mem[128] = stor15[arg1].field_0
    idx = 128
    s = 0
    while (32 * stor15[arg1].field_0) + 96 > idx:
        mem[idx + 32] = stor15[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor15[arg1].field_0) + 192 len floor32(stor15[arg1].field_0)] = mem[128 len floor32(stor15[arg1].field_0)]
    return Array(len=stor15[arg1].field_0, data=mem[128 len floor32(stor15[arg1].field_0)], mem[(32 * stor15[arg1].field_0) + floor32(stor15[arg1].field_0) + 192 len (32 * stor15[arg1].field_0) - floor32(stor15[arg1].field_0)]), 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        require ownerOf[arg3]
        if approved[arg3] != msg.sender:
            require stor5[stor2[arg3]][address(msg.sender)]
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
    require 1 <= tokenOfOwnerByIndex[address(arg1)]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    require stor7[arg3] < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
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
    emit Transfer(arg1, arg2, arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        require ownerOf[arg3]
        if approved[arg3] != msg.sender:
            require stor5[stor2[arg3]][address(msg.sender)]
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
    require 1 <= tokenOfOwnerByIndex[address(arg1)]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    require stor7[arg3] < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
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

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        require ownerOf[arg3]
        if approved[arg3] != msg.sender:
            require stor5[stor2[arg3]][address(msg.sender)]
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
    require 1 <= tokenOfOwnerByIndex[address(arg1)]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    require stor7[arg3] < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
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



}
