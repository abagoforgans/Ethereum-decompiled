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
mapping of uint8 stor12;
array of struct stor13;

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

function symbol() {
    return symbol[0 len symbol.length]
}

function isMinter(address arg1) {
    require arg1
    return bool(stor12[address(arg1)])
}

function tokenURI(uint256 arg1) {
    return tokenURI[arg1][0 len tokenURI[arg1].length]
}

function isApprovedForAll(address arg1, address arg2) {
    return bool(stor4[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function renounceMinter() {
    require msg.sender
    require stor12[address(msg.sender)]
    stor12[address(msg.sender)] = 0
    emit MinterRemoved(msg.sender);
}

function setApprovalForAll(address arg1, bool arg2) {
    require arg1 != msg.sender
    stor4[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function addMinter(address arg1) {
    require msg.sender
    require stor12[address(msg.sender)]
    require arg1
    require not stor12[address(arg1)]
    stor12[address(arg1)] = 1
    emit MinterAdded(arg1);
}

function approve(address arg1, uint256 arg2) {
    require ownerOf[arg2]
    require arg1 != ownerOf[arg2]
    if ownerOf[arg2] != msg.sender:
        require stor4[stor1[arg2]][address(msg.sender)]
    approved[arg2] = arg1
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function mint(string arg1, string arg2) {
    require msg.sender
    require stor12[address(msg.sender)]
    stor13.length++
    stor13[stor13.length][].field_0 = Array(len=arg1.length, data=arg1[all])
    stor[sha3((2 * stor13.length) + ('name', 'stor13', 13) + 1)][].field_0 = Array(len=arg2.length, data=arg2[all])
    require msg.sender
    require not ownerOf[stor13.length]
    ownerOf[stor13.length] = msg.sender
    require balanceOf[address(msg.sender)] + 1 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)]++
    tokenOfOwnerByIndex[address(msg.sender)]++
    tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor13.length
    stor6[stor13.length] = tokenOfOwnerByIndex[address(msg.sender)]
    emit Transfer(0, msg.sender, stor13.length);
    stor8[stor13.length] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = stor13.length
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        require ownerOf[arg3]
        if approved[arg3] != msg.sender:
            require stor4[stor1[arg3]][address(msg.sender)]
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
    require stor6[arg3] < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][stor6[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor6[arg3] = 0
    stor6[stor5[address(arg1)][stor5[address(arg1)]]] = stor6[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
    emit Transfer(arg1, arg2, arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        require ownerOf[arg3]
        if approved[arg3] != msg.sender:
            require stor4[stor1[arg3]][address(msg.sender)]
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
    require stor6[arg3] < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][stor6[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor6[arg3] = 0
    stor6[stor5[address(arg1)][stor5[address(arg1)]]] = stor6[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
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
        require ownerOf[arg3]
        if approved[arg3] != msg.sender:
            require stor4[stor1[arg3]][address(msg.sender)]
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
    require stor6[arg3] < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][stor6[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor6[arg3] = 0
    stor6[stor5[address(arg1)][stor5[address(arg1)]]] = stor6[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
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

function tokenInfos(uint256 arg1) {
    require arg1 < stor13.length
    mem[96] = stor13[arg1].length
    mem[128] = stor13[arg1].field_0
    idx = 128
    s = 0
    while stor13[arg1].length + 96 > idx:
        mem[idx + 32] = stor13[(2 * arg1) + s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor13[arg1].length) + ceil32(stor[(2 * arg1) + ('name', 'stor13', 13) + 1].length) + 160
    mem[ceil32(stor13[arg1].length) + 128] = stor[(2 * arg1) + ('name', 'stor13', 13) + 1].length
    mem[0] = (2 * arg1) + sha3(13) + 1
    mem[ceil32(stor13[arg1].length) + 160] = stor[sha3((2 * arg1) + ('name', 'stor13', 13) + 1)].field_0
    idx = ceil32(stor13[arg1].length) + 160
    s = 0
    while ceil32(stor13[arg1].length) + stor[(2 * arg1) + ('name', 'stor13', 13) + 1].length + 128 > idx:
        mem[idx + 32] = stor[s + sha3((2 * arg1) + ('name', 'stor13', 13) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor13[arg1].length) + ceil32(stor[(2 * arg1) + ('name', 'stor13', 13) + 1].length) + 160] = 64
    mem[ceil32(stor13[arg1].length) + ceil32(stor[(2 * arg1) + ('name', 'stor13', 13) + 1].length) + 224] = stor13[arg1].length
    mem[ceil32(stor13[arg1].length) + ceil32(stor[(2 * arg1) + ('name', 'stor13', 13) + 1].length) + 256 len ceil32(stor13[arg1].length)] = mem[128 len ceil32(stor13[arg1].length)]
    mem[ceil32(stor13[arg1].length) + ceil32(stor[(2 * arg1) + ('name', 'stor13', 13) + 1].length) + 192] = stor13[arg1].length + 96
    mem[stor13[arg1].length + ceil32(stor13[arg1].length) + ceil32(stor[(2 * arg1) + ('name', 'stor13', 13) + 1].length) + 256] = stor[(2 * arg1) + ('name', 'stor13', 13) + 1].length
    mem[stor13[arg1].length + ceil32(stor13[arg1].length) + ceil32(stor[(2 * arg1) + ('name', 'stor13', 13) + 1].length) + 288 len ceil32(stor[(2 * arg1) + ('name', 'stor13', 13) + 1].length)] = mem[ceil32(stor13[arg1].length) + 160 len ceil32(stor[(2 * arg1) + ('name', 'stor13', 13) + 1].length)]
    if not stor[(2 * arg1) + ('name', 'stor13', 13) + 1].length % 32:
        return Array(len=stor13[arg1].length, data=mem[128 len ceil32(stor13[arg1].length)], mem[(2 * ceil32(stor13[arg1].length)) + ceil32(stor[(2 * arg1) + ('name', 'stor13', 13) + 1].length) + 256 len stor[(2 * arg1) + ('name', 'stor13', 13) + 1].length + stor13[arg1].length + -ceil32(stor13[arg1].length) + 32]), 
               stor13[arg1].length + 96
    mem[floor32(stor[(2 * arg1) + ('name', 'stor13', 13) + 1].length) + stor13[arg1].length + ceil32(stor13[arg1].length) + ceil32(stor[(2 * arg1) + ('name', 'stor13', 13) + 1].length) + 288] = mem[floor32(stor[(2 * arg1) + ('name', 'stor13', 13) + 1].length) + stor13[arg1].length + ceil32(stor13[arg1].length) + ceil32(stor[(2 * arg1) + ('name', 'stor13', 13) + 1].length) + -stor[(2 * arg1) + ('name', 'stor13', 13) + 1].length % 32 + 320 len stor[(2 * arg1) + ('name', 'stor13', 13) + 1].length % 32]
    return Array(len=stor13[arg1].length, data=mem[128 len ceil32(stor13[arg1].length)], mem[(2 * ceil32(stor13[arg1].length)) + ceil32(stor[(2 * arg1) + ('name', 'stor13', 13) + 1].length) + 256 len floor32(stor[(2 * arg1) + ('name', 'stor13', 13) + 1].length) + stor13[arg1].length + -ceil32(stor13[arg1].length) + 64]), 
           stor13[arg1].length + 96
}

function getTokenMetadata(uint256 arg1) {
    mem[96] = 96
    mem[128] = 96
    require arg1 < stor13.length
    mem[224] = stor13[arg1].length
    mem[256] = stor13[arg1].field_0
    idx = 256
    s = 0
    while stor13[arg1].length + 224 > idx:
        mem[idx + 32] = stor13[(2 * arg1) + s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[160] = 224
    mem[64] = ceil32(stor13[arg1].length) + ceil32(stor[(2 * arg1) + ('name', 'stor13', 13) + 1].length) + 288
    mem[ceil32(stor13[arg1].length) + 256] = stor[(2 * arg1) + ('name', 'stor13', 13) + 1].length
    mem[0] = (2 * arg1) + sha3(13) + 1
    mem[ceil32(stor13[arg1].length) + 288] = stor[sha3((2 * arg1) + ('name', 'stor13', 13) + 1)].field_0
    idx = ceil32(stor13[arg1].length) + 288
    s = 0
    while ceil32(stor13[arg1].length) + stor[(2 * arg1) + ('name', 'stor13', 13) + 1].length + 256 > idx:
        mem[idx + 32] = stor[s + sha3((2 * arg1) + ('name', 'stor13', 13) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[192] = ceil32(stor13[arg1].length) + 256
    mem[ceil32(stor13[arg1].length) + ceil32(stor[(2 * arg1) + ('name', 'stor13', 13) + 1].length) + 288] = 64
    mem[ceil32(stor13[arg1].length) + ceil32(stor[(2 * arg1) + ('name', 'stor13', 13) + 1].length) + 352] = stor13[arg1].length
    mem[ceil32(stor13[arg1].length) + ceil32(stor[(2 * arg1) + ('name', 'stor13', 13) + 1].length) + 384 len ceil32(stor13[arg1].length)] = mem[256 len ceil32(stor13[arg1].length)]
    mem[ceil32(stor13[arg1].length) + ceil32(stor[(2 * arg1) + ('name', 'stor13', 13) + 1].length) + 320] = stor13[arg1].length + 96
    mem[stor13[arg1].length + ceil32(stor13[arg1].length) + ceil32(stor[(2 * arg1) + ('name', 'stor13', 13) + 1].length) + 384] = stor[(2 * arg1) + ('name', 'stor13', 13) + 1].length
    mem[stor13[arg1].length + ceil32(stor13[arg1].length) + ceil32(stor[(2 * arg1) + ('name', 'stor13', 13) + 1].length) + 416 len ceil32(stor[(2 * arg1) + ('name', 'stor13', 13) + 1].length)] = mem[ceil32(stor13[arg1].length) + 288 len ceil32(stor[(2 * arg1) + ('name', 'stor13', 13) + 1].length)]
    if not stor[(2 * arg1) + ('name', 'stor13', 13) + 1].length % 32:
        return Array(len=stor13[arg1].length, data=mem[256 len ceil32(stor13[arg1].length)], mem[(2 * ceil32(stor13[arg1].length)) + ceil32(stor[(2 * arg1) + ('name', 'stor13', 13) + 1].length) + 384 len stor[(2 * arg1) + ('name', 'stor13', 13) + 1].length + stor13[arg1].length + -ceil32(stor13[arg1].length) + 32]), 
               stor13[arg1].length + 96
    mem[floor32(stor[(2 * arg1) + ('name', 'stor13', 13) + 1].length) + stor13[arg1].length + ceil32(stor13[arg1].length) + ceil32(stor[(2 * arg1) + ('name', 'stor13', 13) + 1].length) + 416] = mem[floor32(stor[(2 * arg1) + ('name', 'stor13', 13) + 1].length) + stor13[arg1].length + ceil32(stor13[arg1].length) + ceil32(stor[(2 * arg1) + ('name', 'stor13', 13) + 1].length) + -stor[(2 * arg1) + ('name', 'stor13', 13) + 1].length % 32 + 448 len stor[(2 * arg1) + ('name', 'stor13', 13) + 1].length % 32]
    return Array(len=stor13[arg1].length, data=mem[256 len ceil32(stor13[arg1].length)], mem[(2 * ceil32(stor13[arg1].length)) + ceil32(stor[(2 * arg1) + ('name', 'stor13', 13) + 1].length) + 384 len floor32(stor[(2 * arg1) + ('name', 'stor13', 13) + 1].length) + stor13[arg1].length + -ceil32(stor13[arg1].length) + 64]), 
           stor13[arg1].length + 96
}



}
