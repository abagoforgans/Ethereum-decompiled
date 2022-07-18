contract main {




// =====================  Runtime code  =====================


#
#  - sub_a432e4ba(?)
#
const name = 'Fabrica Land'

const InterfaceId_ERC165 = 0x1ffc9a700000000000000000000000000000000000000000000000000000000

const symbol = 'FAB'

const _symbol = 'FAB'

const _name = 'Fabrica Land'


mapping of uint8 stor0;
mapping of address ownerOf;
mapping of address approved;
mapping of uint256 balanceOf;
mapping of uint8 stor4;
array of struct tokenOfOwnerByIndex;
mapping of uint256 stor6;
array of uint256 tokenByIndex;
mapping of uint256 stor8;
mapping of struct tokenURI;
array of struct stor10;
array of struct stor11;
uint8 stor12;
uint8 stor12; offset 8
uint256 stor12; offset 8
uint8 stor63; offset 160
uint128 stor63; offset 168
address owner;

function supportsInterface(bytes4 arg1) {
    return bool(stor0[Mask(32, 224, arg1)])
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

function tokenURI(uint256 arg1) {
    return tokenURI[arg1][0 len tokenURI[arg1].length].field_0
}

function isApprovedForAll(address arg1, address arg2) {
    return bool(stor4[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setApprovalForAll(address arg1, bool arg2) {
    require arg1 != msg.sender
    stor4[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function sub_84d9d7db(?) {
    require not uint8(stor63.field_160)
    owner = msg.sender
    uint8(stor63.field_160) = 1
    Mask(88, 0, stor63.field_168) = Mask(88, 168, msg.sender) >> 168
    emit OwnershipTransferred(0, 0 or msg.sender);
}

function approve(address arg1, uint256 arg2) {
    require ownerOf[arg2]
    require ownerOf[arg2] != arg1
    if ownerOf[arg2] != msg.sender:
        require stor4[stor1[arg2]][address(msg.sender)]
    approved[arg2] = arg1
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function setTokenURI(uint256 arg1, string arg2) {
    require ownerOf[arg1]
    require ownerOf[arg1] == msg.sender
    tokenURI[arg1].field_0 = (2 * arg2.length) + 1
    s = 0
    idx = arg2 + 36
    while arg2 + arg2.length + 36 > idx:
        tokenURI[arg1][s].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg2.length + 31) >> 5
    while tokenURI[arg1].length + 31 / 32 > idx:
        tokenURI[arg1][idx].field_0 = 0
        idx = idx + 1
        continue 
    emit 0x248b343e: address(msg.sender), arg1, Array(len=arg2.length, data=arg2[all])
}

function initialize() {
    if not uint8(stor12.field_8):
        if ext_code.size(this.address):
            if uint8(stor12.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
    uint8(stor12.field_0) = 1
    uint8(stor12.field_8) = 1
    Mask(248, 0, stor12.field_8) = 0
    stor0[0x1ffc9a700000000000000000000000000000000000000000000000000000000] = 1
    stor0[0x780e9d6300000000000000000000000000000000000000000000000000000000] = 1
    stor0[0x5b5e139f00000000000000000000000000000000000000000000000000000000] = 1
    stor0[0x80ac58cd00000000000000000000000000000000000000000000000000000000] = 1
    stor0[0x4f558e7900000000000000000000000000000000000000000000000000000000] = 1
    Mask(248, 0, stor12.field_8) = Mask(248, 0, bool(uint8(stor12.field_8)))
}

function tokensOf(address arg1) {
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

function sub_452b8d1e(?) {
    require ownerOf[cd[4]]
    require ownerOf[cd[4]] == msg.sender
    tokenURI[cd[4]].field_0 = (2 * ('cd', 100).length) + 1
    s = 0
    idx = cd[100] + 36
    while cd[100] + ('cd', 100).length + 36 > idx:
        tokenURI[cd[4]][s].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 100).length + 31) >> 5
    while tokenURI[cd[4]].length + 31 / 32 > idx:
        tokenURI[cd[4]][idx].field_0 = 0
        idx = idx + 1
        continue 
    stor11[cd[4]].field_0 = (2 * ('cd', 68).length) + 1
    s = 0
    idx = cd[68] + 36
    while cd[68] + ('cd', 68).length + 36 > idx:
        stor11[cd[4]][s].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 68).length + 31) >> 5
    while stor11[cd[4]].length + 31 / 32 > idx:
        stor11[cd[4]][idx].field_0 = 0
        idx = idx + 1
        continue 
    stor10[cd[4]].field_0 = (2 * ('cd', 36).length) + 1
    s = 0
    idx = cd[36] + 36
    while cd[36] + ('cd', 36).length + 36 > idx:
        stor10[cd[4]][s].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
    while stor10[cd[4]].length + 31 / 32 > idx:
        stor10[cd[4]][idx].field_0 = 0
        idx = idx + 1
        continue 
    emit 0x64c1a02b: address(msg.sender), cd[4], Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len ('cd', 68).length]), ('cd', 68).length + 192, ('cd', 68).length + ('cd', 100).length + 224
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
    require stor6[arg3] < tokenOfOwnerByIndex[address(arg1)].field_0
    tokenOfOwnerByIndex[address(arg1)][stor6[arg3]].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
    require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0 = 0
    tokenOfOwnerByIndex[address(arg1)].field_0--
    if tokenOfOwnerByIndex[address(arg1)].field_0 > tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
        idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
        while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
            tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor6[arg3] = 0
    stor6[stor5[address(arg1)][stor5[address(arg1)].field_0].field_0] = stor6[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)].field_0++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
    stor6[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
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
    require stor6[arg3] < tokenOfOwnerByIndex[address(arg1)].field_0
    tokenOfOwnerByIndex[address(arg1)][stor6[arg3]].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
    require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0 = 0
    tokenOfOwnerByIndex[address(arg1)].field_0--
    if tokenOfOwnerByIndex[address(arg1)].field_0 > tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
        idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
        while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
            tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor6[arg3] = 0
    stor6[stor5[address(arg1)][stor5[address(arg1)].field_0].field_0] = stor6[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)].field_0++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
    stor6[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
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
    require stor6[arg3] < tokenOfOwnerByIndex[address(arg1)].field_0
    tokenOfOwnerByIndex[address(arg1)][stor6[arg3]].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
    require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0 = 0
    tokenOfOwnerByIndex[address(arg1)].field_0--
    if tokenOfOwnerByIndex[address(arg1)].field_0 > tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
        idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
        while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
            tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor6[arg3] = 0
    stor6[stor5[address(arg1)][stor5[address(arg1)].field_0].field_0] = stor6[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)].field_0++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
    stor6[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
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

function burn(uint256 arg1) {
    require ownerOf[arg1]
    require ownerOf[arg1] == msg.sender
    require ownerOf[arg1]
    require ownerOf[arg1] == msg.sender
    if approved[arg1]:
        approved[arg1] = 0
    require ownerOf[arg1]
    require ownerOf[arg1] == msg.sender
    require 1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)]--
    ownerOf[arg1] = 0
    require 1 <= tokenOfOwnerByIndex[address(msg.sender)].field_0
    require tokenOfOwnerByIndex[address(msg.sender)].field_0 - 1 < tokenOfOwnerByIndex[address(msg.sender)].field_0
    require stor6[arg1] < tokenOfOwnerByIndex[address(msg.sender)].field_0
    tokenOfOwnerByIndex[address(msg.sender)][stor6[arg1]].field_0 = tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)].field_0].field_0
    require tokenOfOwnerByIndex[address(msg.sender)].field_0 - 1 < tokenOfOwnerByIndex[address(msg.sender)].field_0
    tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)].field_0].field_0 = 0
    tokenOfOwnerByIndex[address(msg.sender)].field_0--
    if tokenOfOwnerByIndex[address(msg.sender)].field_0 > tokenOfOwnerByIndex[address(msg.sender)].field_0 - 1:
        idx = tokenOfOwnerByIndex[address(msg.sender)].field_0 - 1
        while tokenOfOwnerByIndex[address(msg.sender)].field_0 > idx:
            tokenOfOwnerByIndex[address(msg.sender)][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor6[arg1] = 0
    stor6[stor5[address(msg.sender)][stor5[address(msg.sender)].field_0].field_0] = stor6[arg1]
    emit Transfer(msg.sender, 0, arg1);
    if Mask(255, 1, tokenURI[arg1].field_0 and (256 * not tokenURI[arg1].field_0) - 1):
        tokenURI[arg1].field_0 = 0
        if 31 < tokenURI[arg1].length:
            idx = 0
            while tokenURI[arg1].length + 31 / 32 > idx:
                tokenURI[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
        stor10[arg1].field_0 = 0
        if 31 < stor10[arg1].length:
            idx = 0
            while stor10[arg1].length + 31 / 32 > idx:
                stor10[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
        stor11[arg1].field_0 = 0
        if 31 < stor11[arg1].length:
            idx = 0
            while stor11[arg1].length + 31 / 32 > idx:
                stor11[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    require 1 <= tokenByIndex.length
    require tokenByIndex.length - 1 < tokenByIndex.length
    require stor8[arg1] < tokenByIndex.length
    tokenByIndex[stor8[arg1]] = tokenByIndex[tokenByIndex.length]
    require tokenByIndex.length - 1 < tokenByIndex.length
    tokenByIndex[tokenByIndex.length] = 0
    tokenByIndex.length--
    if tokenByIndex.length > tokenByIndex.length - 1:
        idx = tokenByIndex.length - 1
        while tokenByIndex.length > idx:
            tokenByIndex[idx] = 0
            idx = idx + 1
            continue 
    stor8[arg1] = 0
    stor8[stor7[stor7.length]] = stor8[arg1]
}

function mint(uint256 arg1, string arg2, string arg3, string arg4) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = arg4.length
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 192 len arg4.length] = arg4[all]
    require msg.sender
    require not ownerOf[arg1]
    ownerOf[arg1] = msg.sender
    require balanceOf[address(msg.sender)] + 1 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)]++
    tokenOfOwnerByIndex[address(msg.sender)].field_0++
    tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)].field_0].field_0 = arg1
    stor6[arg1] = tokenOfOwnerByIndex[address(msg.sender)].field_0
    emit Transfer(0, msg.sender, arg1);
    stor10[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
    stor11[arg1][].field_0 = Array(len=arg3.length, data=arg3[all])
    tokenURI[arg1][].field_0 = Array(len=arg4.length, data=arg4[all])
    stor8[arg1] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = arg1
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192] = msg.sender
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 384 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
    mem[arg4.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 384] = arg2.length
    mem[arg4.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 416 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        mem[arg2.length + arg4.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 416] = arg3.length
        mem[arg2.length + arg4.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 448 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            emit 0x3008cd1b: msg.sender, arg1, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 384 len arg3.length + arg2.length + arg4.length + -ceil32(arg4.length) + 64]), arg4.length + 192, arg2.length + arg4.length + 224
        else:
            mem[floor32(arg3.length) + arg2.length + arg4.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 448] = mem[floor32(arg3.length) + arg2.length + arg4.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 480 len arg3.length % 32]
            emit 0x3008cd1b: msg.sender, arg1, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 384 len floor32(arg3.length) + arg2.length + arg4.length + -ceil32(arg4.length) + 96]), arg4.length + 192, arg2.length + arg4.length + 224
    else:
        mem[floor32(arg2.length) + arg4.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 416] = mem[floor32(arg2.length) + arg4.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg2.length % 32) + 448 len arg2.length % 32]
        mem[floor32(arg2.length) + arg4.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 448] = arg3.length
        mem[floor32(arg2.length) + arg4.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 480 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            emit 0x3008cd1b: msg.sender, arg1, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 384 len arg3.length + floor32(arg2.length) + arg4.length + -ceil32(arg4.length) + 96]), arg4.length + 192, floor32(arg2.length) + arg4.length + 256
        else:
            mem[floor32(arg3.length) + floor32(arg2.length) + arg4.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 480] = mem[floor32(arg3.length) + floor32(arg2.length) + arg4.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 512 len arg3.length % 32]
            emit 0x3008cd1b: msg.sender, arg1, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 384 len floor32(arg3.length) + floor32(arg2.length) + arg4.length + -ceil32(arg4.length) + 128]), arg4.length + 192, floor32(arg2.length) + arg4.length + 256
}

function getToken(uint256 arg1) {
    mem[96] = stor10[arg1].length
    mem[128] = stor10[arg1].field_0
    idx = 128
    s = 0
    while stor10[arg1].length + 96 > idx:
        mem[idx + 32] = stor10[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor10[arg1].length) + 128] = stor11[arg1].length
    mem[ceil32(stor10[arg1].length) + 160] = stor11[arg1].field_0
    idx = ceil32(stor10[arg1].length) + 160
    s = 0
    while ceil32(stor10[arg1].length) + stor11[arg1].length + 128 > idx:
        mem[idx + 32] = stor11[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[32] = 9
    mem[64] = ceil32(stor10[arg1].length) + ceil32(stor11[arg1].length) + ceil32(tokenURI[arg1].length) + 192
    mem[ceil32(stor10[arg1].length) + ceil32(stor11[arg1].length) + 160] = tokenURI[arg1].length
    mem[0] = sha3(arg1, 9)
    mem[ceil32(stor10[arg1].length) + ceil32(stor11[arg1].length) + 192] = tokenURI[arg1].field_0
    idx = ceil32(stor10[arg1].length) + ceil32(stor11[arg1].length) + 192
    s = 0
    while ceil32(stor10[arg1].length) + ceil32(stor11[arg1].length) + tokenURI[arg1].length + 160 > idx:
        mem[idx + 32] = tokenURI[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor10[arg1].length) + ceil32(stor11[arg1].length) + ceil32(tokenURI[arg1].length) + 192] = arg1
    mem[ceil32(stor10[arg1].length) + ceil32(stor11[arg1].length) + ceil32(tokenURI[arg1].length) + 224] = 128
    mem[ceil32(stor10[arg1].length) + ceil32(stor11[arg1].length) + ceil32(tokenURI[arg1].length) + 320] = stor10[arg1].length
    mem[ceil32(stor10[arg1].length) + ceil32(stor11[arg1].length) + ceil32(tokenURI[arg1].length) + 352 len ceil32(stor10[arg1].length)] = mem[128 len ceil32(stor10[arg1].length)]
    mem[ceil32(stor10[arg1].length) + ceil32(stor11[arg1].length) + ceil32(tokenURI[arg1].length) + 256] = stor10[arg1].length + 160
    mem[stor10[arg1].length + ceil32(stor10[arg1].length) + ceil32(stor11[arg1].length) + ceil32(tokenURI[arg1].length) + 352] = stor11[arg1].length
    mem[stor10[arg1].length + ceil32(stor10[arg1].length) + ceil32(stor11[arg1].length) + ceil32(tokenURI[arg1].length) + 384 len ceil32(stor11[arg1].length)] = mem[ceil32(stor10[arg1].length) + 160 len ceil32(stor11[arg1].length)]
    if not stor11[arg1].length % 32:
        mem[ceil32(stor10[arg1].length) + ceil32(stor11[arg1].length) + ceil32(tokenURI[arg1].length) + 288] = stor11[arg1].length + stor10[arg1].length + 192
        mem[stor11[arg1].length + stor10[arg1].length + ceil32(stor10[arg1].length) + ceil32(stor11[arg1].length) + ceil32(tokenURI[arg1].length) + 384] = tokenURI[arg1].length
        mem[stor11[arg1].length + stor10[arg1].length + ceil32(stor10[arg1].length) + ceil32(stor11[arg1].length) + ceil32(tokenURI[arg1].length) + 416 len ceil32(tokenURI[arg1].length)] = mem[ceil32(stor10[arg1].length) + ceil32(stor11[arg1].length) + 192 len ceil32(tokenURI[arg1].length)]
        if not tokenURI[arg1].length % 32:
            return arg1, 
                   Array(len=stor10[arg1].length, data=mem[128 len ceil32(stor10[arg1].length)], mem[(2 * ceil32(stor10[arg1].length)) + ceil32(stor11[arg1].length) + ceil32(tokenURI[arg1].length) + 352 len stor11[arg1].length + stor10[arg1].length + -ceil32(stor10[arg1].length) + 32], tokenURI[arg1].length, mem[ceil32(stor10[arg1].length) + ceil32(stor11[arg1].length) + 192 len tokenURI[arg1].length]),
                   stor10[arg1].length + 160,
                   stor11[arg1].length + stor10[arg1].length + 192
        mem[floor32(tokenURI[arg1].length) + stor11[arg1].length + stor10[arg1].length + ceil32(stor10[arg1].length) + ceil32(stor11[arg1].length) + ceil32(tokenURI[arg1].length) + 416] = mem[floor32(tokenURI[arg1].length) + stor11[arg1].length + stor10[arg1].length + ceil32(stor10[arg1].length) + ceil32(stor11[arg1].length) + ceil32(tokenURI[arg1].length) + -tokenURI[arg1].length % 32 + 448 len tokenURI[arg1].length % 32]
        return arg1, 
               Array(len=stor10[arg1].length, data=mem[128 len ceil32(stor10[arg1].length)], mem[(2 * ceil32(stor10[arg1].length)) + ceil32(stor11[arg1].length) + ceil32(tokenURI[arg1].length) + 352 len stor11[arg1].length + stor10[arg1].length + -ceil32(stor10[arg1].length) + 32], tokenURI[arg1].length, mem[ceil32(stor10[arg1].length) + ceil32(stor11[arg1].length) + 192 len ceil32(tokenURI[arg1].length)], mem[ceil32(stor10[arg1].length) + ceil32(stor11[arg1].length) + (2 * ceil32(tokenURI[arg1].length)) + stor11[arg1].length + stor10[arg1].length + 416 len floor32(tokenURI[arg1].length) + -ceil32(tokenURI[arg1].length) + 32]),
               stor10[arg1].length + 160,
               stor11[arg1].length + stor10[arg1].length + 192
    mem[floor32(stor11[arg1].length) + stor10[arg1].length + ceil32(stor10[arg1].length) + ceil32(stor11[arg1].length) + ceil32(tokenURI[arg1].length) + 384] = mem[floor32(stor11[arg1].length) + stor10[arg1].length + ceil32(stor10[arg1].length) + ceil32(stor11[arg1].length) + ceil32(tokenURI[arg1].length) + -stor11[arg1].length % 32 + 416 len stor11[arg1].length % 32]
    mem[ceil32(stor10[arg1].length) + ceil32(stor11[arg1].length) + ceil32(tokenURI[arg1].length) + 288] = floor32(stor11[arg1].length) + stor10[arg1].length + 224
    mem[floor32(stor11[arg1].length) + stor10[arg1].length + ceil32(stor10[arg1].length) + ceil32(stor11[arg1].length) + ceil32(tokenURI[arg1].length) + 416] = tokenURI[arg1].length
    mem[floor32(stor11[arg1].length) + stor10[arg1].length + ceil32(stor10[arg1].length) + ceil32(stor11[arg1].length) + ceil32(tokenURI[arg1].length) + 448 len ceil32(tokenURI[arg1].length)] = mem[ceil32(stor10[arg1].length) + ceil32(stor11[arg1].length) + 192 len ceil32(tokenURI[arg1].length)]
    if not tokenURI[arg1].length % 32:
        return arg1, 
               Array(len=stor10[arg1].length, data=mem[128 len ceil32(stor10[arg1].length)], mem[(2 * ceil32(stor10[arg1].length)) + ceil32(stor11[arg1].length) + ceil32(tokenURI[arg1].length) + 352 len floor32(stor11[arg1].length) + stor10[arg1].length + -ceil32(stor10[arg1].length) + 64], tokenURI[arg1].length, mem[ceil32(stor10[arg1].length) + ceil32(stor11[arg1].length) + 192 len tokenURI[arg1].length]),
               stor10[arg1].length + 160,
               floor32(stor11[arg1].length) + stor10[arg1].length + 224
    mem[floor32(tokenURI[arg1].length) + floor32(stor11[arg1].length) + stor10[arg1].length + ceil32(stor10[arg1].length) + ceil32(stor11[arg1].length) + ceil32(tokenURI[arg1].length) + 448] = mem[floor32(tokenURI[arg1].length) + floor32(stor11[arg1].length) + stor10[arg1].length + ceil32(stor10[arg1].length) + ceil32(stor11[arg1].length) + ceil32(tokenURI[arg1].length) + -tokenURI[arg1].length % 32 + 480 len tokenURI[arg1].length % 32]
    return arg1, 
           Array(len=stor10[arg1].length, data=mem[128 len ceil32(stor10[arg1].length)], mem[(2 * ceil32(stor10[arg1].length)) + ceil32(stor11[arg1].length) + ceil32(tokenURI[arg1].length) + 352 len floor32(stor11[arg1].length) + stor10[arg1].length + -ceil32(stor10[arg1].length) + 64], tokenURI[arg1].length, mem[ceil32(stor10[arg1].length) + ceil32(stor11[arg1].length) + 192 len ceil32(tokenURI[arg1].length)], mem[ceil32(stor10[arg1].length) + ceil32(stor11[arg1].length) + (2 * ceil32(tokenURI[arg1].length)) + floor32(stor11[arg1].length) + stor10[arg1].length + 448 len floor32(tokenURI[arg1].length) + -ceil32(tokenURI[arg1].length) + 32]),
           stor10[arg1].length + 160,
           floor32(stor11[arg1].length) + stor10[arg1].length + 224
}



}
