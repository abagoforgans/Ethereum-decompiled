contract main {




// =====================  Runtime code  =====================


#
#  - viewToken(uint256 arg1)
#
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
address owner;
uint256 currentPrice;
mapping of uint256 stor14;
array of uint256 stor15;
array of uint256 stor16;
array of uint256 stor17;
array of struct baseTokenURI;

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

function symbol() {
    return symbol[0 len symbol.length]
}

function baseTokenURI() {
    return baseTokenURI[0 len baseTokenURI.length].field_0
}

function isApprovedForAll(address arg1, address arg2) {
    return bool(stor4[address(arg1)][address(arg2)])
}

function getCurrentPrice() {
    return currentPrice
}

function kill() {
    if owner != msg.sender:
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function exists(uint256 arg1) {
    return not not ownerOf[arg1]
}

function sub_987a696f(?) {
    return owner, eth.balance(this.address)
}

function Donate() payable {
    if msg.value:
        return 1
    else:
        return 0
}

function setCurrentPrice(uint256 arg1) {
    require msg.sender == owner
    currentPrice = arg1
}

function setBaseURI(string arg1) {
    require msg.sender == owner
    baseTokenURI[].field_0 = Array(len=arg1.length, data=arg1[all])
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setApprovalForAll(address arg1, bool arg2) {
    require arg1 != msg.sender
    stor4[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function withdraw() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function approve(address arg1, uint256 arg2) {
    require ownerOf[arg2]
    require arg1 != ownerOf[arg2]
    if ownerOf[arg2] != msg.sender:
        require stor4[stor1[arg2]][address(msg.sender)]
    approved[arg2] = arg1
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function myTokens() {
    if not tokenOfOwnerByIndex[address(msg.sender)].field_0:
        mem[(32 * tokenOfOwnerByIndex[address(msg.sender)].field_0) + 128] = 32
        mem[(32 * tokenOfOwnerByIndex[address(msg.sender)].field_0) + 160] = tokenOfOwnerByIndex[address(msg.sender)].field_0
        mem[(32 * tokenOfOwnerByIndex[address(msg.sender)].field_0) + 192 len floor32(tokenOfOwnerByIndex[address(msg.sender)].field_0)] = mem[128 len floor32(tokenOfOwnerByIndex[address(msg.sender)].field_0)]
        return memory
          from (32 * tokenOfOwnerByIndex[address(msg.sender)].field_0) + 128
           len (96 * tokenOfOwnerByIndex[address(msg.sender)].field_0) + 64
    mem[128] = tokenOfOwnerByIndex[address(msg.sender)].field_0
    idx = 128
    s = 0
    while (32 * tokenOfOwnerByIndex[address(msg.sender)].field_0) + 96 > idx:
        mem[idx + 32] = tokenOfOwnerByIndex[address(msg.sender)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * tokenOfOwnerByIndex[address(msg.sender)].field_0) + 192 len floor32(tokenOfOwnerByIndex[address(msg.sender)].field_0)] = mem[128 len floor32(tokenOfOwnerByIndex[address(msg.sender)].field_0)]
    return Array(len=tokenOfOwnerByIndex[address(msg.sender)].field_0, data=mem[128 len floor32(tokenOfOwnerByIndex[address(msg.sender)].field_0)], mem[(32 * tokenOfOwnerByIndex[address(msg.sender)].field_0) + floor32(tokenOfOwnerByIndex[address(msg.sender)].field_0) + 192 len (32 * tokenOfOwnerByIndex[address(msg.sender)].field_0) - floor32(tokenOfOwnerByIndex[address(msg.sender)].field_0)]), 
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
    require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0 = 0
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
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    ownerOf[arg3] = 0
    require 1 <= tokenOfOwnerByIndex[address(arg1)].field_0
    require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
    require stor8[arg3] < tokenOfOwnerByIndex[address(arg1)].field_0
    tokenOfOwnerByIndex[address(arg1)][stor8[arg3]].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
    require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0 = 0
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

function sub_1e0fd1f2(?) payable {
    if ('cd', 36).length < 6:
        revert with 0, 'That shit has unknown color'
    if ('cd', 36).length > 6:
        revert with 0, 'That shit has unknown color'
    if ('cd', 68).length < 6:
        revert with 0, 'That shit has unknown color'
    if ('cd', 68).length > 6:
        revert with 0, 'That shit has unknown color'
    if ('cd', 100).length < 6:
        revert with 0, 'That shit has unknown color'
    if ('cd', 100).length > 6:
        revert with 0, 'That shit has unknown color'
    if msg.value < currentPrice:
        revert with 0, 'Real Shit costs more. Add more of your ethers.'
    require msg.sender
    require not ownerOf[stor9.length + 1]
    ownerOf[stor9.length + 1] = msg.sender
    require balanceOf[address(msg.sender)] + 1 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)]++
    tokenOfOwnerByIndex[address(msg.sender)].field_0++
    tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)].field_0].field_0 = tokenByIndex.length + 1
    stor8[stor9.length + 1] = tokenOfOwnerByIndex[address(msg.sender)].field_0
    emit Transfer(0, msg.sender, tokenByIndex.length + 1);
    stor10[stor9.length + 1] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = tokenByIndex.length + 1
    stor14[stor9.length + 1] = cd[4]
    stor15[stor9.length + 1] = (2 * ('cd', 36).length) + 1
    s = 0
    idx = cd[36] + 36
    while cd[36] + ('cd', 36).length + 36 > idx:
        stor15[stor9.length + 1][s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
    while stor15[stor9.length + 1].length + 31 / 32 > idx:
        stor15[stor9.length + 1][idx] = 0
        idx = idx + 1
        continue 
    stor16[stor9.length + 1] = (2 * ('cd', 68).length) + 1
    s = 0
    idx = cd[68] + 36
    while cd[68] + ('cd', 68).length + 36 > idx:
        stor16[stor9.length + 1][s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 68).length + 31) >> 5
    while stor16[stor9.length + 1].length + 31 / 32 > idx:
        stor16[stor9.length + 1][idx] = 0
        idx = idx + 1
        continue 
    stor17[stor9.length + 1] = (2 * ('cd', 100).length) + 1
    s = 0
    idx = cd[100] + 36
    while cd[100] + ('cd', 100).length + 36 > idx:
        stor17[stor9.length + 1][s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 100).length + 31) >> 5
    while stor17[stor9.length + 1].length + 31 / 32 > idx:
        stor17[stor9.length + 1][idx] = 0
        idx = idx + 1
        continue 
    emit BoughtToken((tokenByIndex.length + 1), msg.sender);
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
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    ownerOf[arg3] = 0
    require 1 <= tokenOfOwnerByIndex[address(arg1)].field_0
    require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
    require stor8[arg3] < tokenOfOwnerByIndex[address(arg1)].field_0
    tokenOfOwnerByIndex[address(arg1)][stor8[arg3]].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
    require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0 = 0
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

function tokenURI(uint256 arg1) {
    mem[96] = baseTokenURI.length
    mem[0] = 18
    mem[128] = uint256(baseTokenURI.field_0)
    idx = 128
    s = 0
    while baseTokenURI.length + 96 > idx:
        mem[idx + 32] = baseTokenURI[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if arg1:
        s = 0
        idx = arg1
        while idx:
            s = s + 1
            idx = idx / 10
            continue 
        mem[ceil32(baseTokenURI.length) + 128] = s
        if not s:
            t = s - 1
            idx = arg1
            while idx:
                require t < s
                mem[ceil32(baseTokenURI.length) + t + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(baseTokenURI.length) + ceil32(s) + 160] = 0
            mem[ceil32(baseTokenURI.length) + ceil32(s) + 192] = 0
            mem[ceil32(baseTokenURI.length) + ceil32(s) + 224] = 0
            mem[ceil32(baseTokenURI.length) + ceil32(s) + 256] = baseTokenURI.length + s
            mem[64] = ceil32(baseTokenURI.length) + ceil32(s) + floor32(baseTokenURI.length + s + 31) + 288
            if not baseTokenURI.length + s:
                idx = 0
                t = 0
                while idx < baseTokenURI.length:
                    require idx < baseTokenURI.length
                    require t < baseTokenURI.length + s
                    mem[ceil32(baseTokenURI.length) + ceil32(s) + t + 288 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
                    idx = idx + 1
                    t = t + 1
                    continue 
                idx = 0
                t = baseTokenURI.length
                while idx < mem[ceil32(baseTokenURI.length) + 128]:
                    require idx < mem[ceil32(baseTokenURI.length) + 128]
                    require t < baseTokenURI.length + s
                    mem[ceil32(baseTokenURI.length) + ceil32(s) + t + 288 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 18))))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 18))))), ('var', 0)), 32))), 0) - 256
                    idx = idx + 1
                    t = t + 1
                    continue 
                idx = 0
                t = baseTokenURI.length + s
                while idx < 0:
                    require idx < 0
                    require t < baseTokenURI.length + s
                    mem[ceil32(baseTokenURI.length) + ceil32(s) + t + 288 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 18))))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 18))))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('var', 0)), 32))), 0) - 256
                    idx = idx + 1
                    t = t + 1
                    continue 
                idx = 0
                t = baseTokenURI.length + s
                while idx < 0:
                    require idx < 0
                    require t < baseTokenURI.length + s
                    mem[ceil32(baseTokenURI.length) + ceil32(s) + t + 288 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 18))))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 18))))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('var', 0)), 32))), 0) - 256
                    idx = idx + 1
                    t = t + 1
                    continue 
                idx = 0
                t = baseTokenURI.length + s + mem[ceil32(baseTokenURI.length) + ceil32(s) + 160] + mem[ceil32(baseTokenURI.length) + ceil32(s) + 192]
                while idx < 0:
                    require idx < mem[ceil32(baseTokenURI.length) + ceil32(s) + 224]
                    require t < mem[ceil32(baseTokenURI.length) + ceil32(s) + 256]
                    mem[ceil32(baseTokenURI.length) + ceil32(s) + t + 288 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 18))))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 18))))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('var', 0)), 32))), 0) - 256
                    idx = idx + 1
                    t = t + 1
                    continue 
                _2768 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = mem[ceil32(baseTokenURI.length) + ceil32(s) + 256]
                _2770 = mem[ceil32(baseTokenURI.length) + ceil32(s) + 256]
                mem[mem[64] + 64 len ceil32(mem[ceil32(baseTokenURI.length) + ceil32(s) + 256])] = mem[ceil32(baseTokenURI.length) + ceil32(s) + 288 len ceil32(mem[ceil32(baseTokenURI.length) + ceil32(s) + 256])]
                if not _2770 % 32:
                    return 32, mem[mem[64] + 32 len _2770 + 32]
                mem[floor32(_2770) + mem[64] + 64] = mem[floor32(_2770) + mem[64] + -(_2770 % 32) + 96 len _2770 % 32]
                return memory
                  from mem[64]
                   len floor32(_2770) + _2768 + -mem[64] + 96
            mem[ceil32(baseTokenURI.length) + ceil32(s) + 288 len 32 * baseTokenURI.length + s] = code.data[13673 len 32 * baseTokenURI.length + s]
            idx = 0
            t = 0
            while idx < baseTokenURI.length:
                require idx < baseTokenURI.length
                require t < baseTokenURI.length + s
                mem[ceil32(baseTokenURI.length) + ceil32(s) + t + 288 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
                idx = idx + 1
                t = t + 1
                continue 
            idx = 0
            t = baseTokenURI.length
            while idx < mem[ceil32(baseTokenURI.length) + 128]:
                require idx < mem[ceil32(baseTokenURI.length) + 128]
                require t < baseTokenURI.length + s
                mem[ceil32(baseTokenURI.length) + ceil32(s) + t + 288 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 18))))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 18))))), ('var', 0)), 32))), 0) - 256
                idx = idx + 1
                t = t + 1
                continue 
            idx = 0
            t = baseTokenURI.length + s
            while idx < 0:
                require idx < 0
                require t < baseTokenURI.length + s
                mem[ceil32(baseTokenURI.length) + ceil32(s) + t + 288 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 18))))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 18))))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('var', 0)), 32))), 0) - 256
                idx = idx + 1
                t = t + 1
                continue 
            idx = 0
            t = baseTokenURI.length + s
            while idx < 0:
                require idx < 0
                require t < baseTokenURI.length + s
                mem[ceil32(baseTokenURI.length) + ceil32(s) + t + 288 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 18))))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 18))))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('var', 0)), 32))), 0) - 256
                idx = idx + 1
                t = t + 1
                continue 
            idx = 0
            t = baseTokenURI.length + s + mem[ceil32(baseTokenURI.length) + ceil32(s) + 160] + mem[ceil32(baseTokenURI.length) + ceil32(s) + 192]
            while idx < 0:
                require idx < mem[ceil32(baseTokenURI.length) + ceil32(s) + 224]
                require t < mem[ceil32(baseTokenURI.length) + ceil32(s) + 256]
                mem[ceil32(baseTokenURI.length) + ceil32(s) + t + 288 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 18))))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 18))))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('var', 0)), 32))), 0) - 256
                idx = idx + 1
                t = t + 1
                continue 
            _2771 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[ceil32(baseTokenURI.length) + ceil32(s) + 256]
            _2773 = mem[ceil32(baseTokenURI.length) + ceil32(s) + 256]
            mem[mem[64] + 64 len ceil32(mem[ceil32(baseTokenURI.length) + ceil32(s) + 256])] = mem[ceil32(baseTokenURI.length) + ceil32(s) + 288 len ceil32(mem[ceil32(baseTokenURI.length) + ceil32(s) + 256])]
            if not _2773 % 32:
                return 32, mem[mem[64] + 32 len _2773 + 32]
            mem[floor32(_2773) + mem[64] + 64] = mem[floor32(_2773) + mem[64] + -(_2773 % 32) + 96 len _2773 % 32]
            return memory
              from mem[64]
               len floor32(_2773) + _2771 + -mem[64] + 96
        mem[ceil32(baseTokenURI.length) + 160 len 32 * s] = code.data[13673 len 32 * s]
        t = s - 1
        idx = arg1
        while idx:
            require t < s
            mem[ceil32(baseTokenURI.length) + t + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(baseTokenURI.length) + ceil32(s) + 160] = 0
        mem[ceil32(baseTokenURI.length) + ceil32(s) + 192] = 0
        mem[ceil32(baseTokenURI.length) + ceil32(s) + 224] = 0
        mem[ceil32(baseTokenURI.length) + ceil32(s) + 256] = baseTokenURI.length + s
        mem[64] = ceil32(baseTokenURI.length) + ceil32(s) + floor32(baseTokenURI.length + s + 31) + 288
        if not baseTokenURI.length + s:
            idx = 0
            t = 0
            while idx < baseTokenURI.length:
                require idx < baseTokenURI.length
                require t < baseTokenURI.length + s
                mem[ceil32(baseTokenURI.length) + ceil32(s) + t + 288 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
                idx = idx + 1
                t = t + 1
                continue 
            idx = 0
            t = baseTokenURI.length
            while idx < mem[ceil32(baseTokenURI.length) + 128]:
                require idx < mem[ceil32(baseTokenURI.length) + 128]
                require t < baseTokenURI.length + s
                mem[ceil32(baseTokenURI.length) + ceil32(s) + t + 288 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 18))))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 18))))), ('var', 0)), 32))), 0) - 256
                idx = idx + 1
                t = t + 1
                continue 
            idx = 0
            t = baseTokenURI.length + s
            while idx < 0:
                require idx < 0
                require t < baseTokenURI.length + s
                mem[ceil32(baseTokenURI.length) + ceil32(s) + t + 288 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 18))))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 18))))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('var', 0)), 32))), 0) - 256
                idx = idx + 1
                t = t + 1
                continue 
            idx = 0
            t = baseTokenURI.length + s
            while idx < 0:
                require idx < 0
                require t < baseTokenURI.length + s
                mem[ceil32(baseTokenURI.length) + ceil32(s) + t + 288 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 18))))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 18))))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('var', 0)), 32))), 0) - 256
                idx = idx + 1
                t = t + 1
                continue 
            idx = 0
            t = baseTokenURI.length + s + mem[ceil32(baseTokenURI.length) + ceil32(s) + 160] + mem[ceil32(baseTokenURI.length) + ceil32(s) + 192]
            while idx < 0:
                require idx < mem[ceil32(baseTokenURI.length) + ceil32(s) + 224]
                require t < mem[ceil32(baseTokenURI.length) + ceil32(s) + 256]
                mem[ceil32(baseTokenURI.length) + ceil32(s) + t + 288 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 18))))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 18))))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('var', 0)), 32))), 0) - 256
                idx = idx + 1
                t = t + 1
                continue 
            _2774 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[ceil32(baseTokenURI.length) + ceil32(s) + 256]
            _2776 = mem[ceil32(baseTokenURI.length) + ceil32(s) + 256]
            mem[mem[64] + 64 len ceil32(mem[ceil32(baseTokenURI.length) + ceil32(s) + 256])] = mem[ceil32(baseTokenURI.length) + ceil32(s) + 288 len ceil32(mem[ceil32(baseTokenURI.length) + ceil32(s) + 256])]
            if not _2776 % 32:
                return 32, mem[mem[64] + 32 len _2776 + 32]
            mem[floor32(_2776) + mem[64] + 64] = mem[floor32(_2776) + mem[64] + -(_2776 % 32) + 96 len _2776 % 32]
            return memory
              from mem[64]
               len floor32(_2776) + _2774 + -mem[64] + 96
        mem[ceil32(baseTokenURI.length) + ceil32(s) + 288 len 32 * baseTokenURI.length + s] = code.data[13673 len 32 * baseTokenURI.length + s]
        idx = 0
        t = 0
        while idx < baseTokenURI.length:
            require idx < baseTokenURI.length
            require t < baseTokenURI.length + s
            mem[ceil32(baseTokenURI.length) + ceil32(s) + t + 288 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            t = t + 1
            continue 
        idx = 0
        t = baseTokenURI.length
        while idx < mem[ceil32(baseTokenURI.length) + 128]:
            require idx < mem[ceil32(baseTokenURI.length) + 128]
            require t < baseTokenURI.length + s
            mem[ceil32(baseTokenURI.length) + ceil32(s) + t + 288 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 18))))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 18))))), ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            t = t + 1
            continue 
        idx = 0
        t = baseTokenURI.length + s
        while idx < 0:
            require idx < 0
            require t < baseTokenURI.length + s
            mem[ceil32(baseTokenURI.length) + ceil32(s) + t + 288 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 18))))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 18))))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            t = t + 1
            continue 
        idx = 0
        t = baseTokenURI.length + s
        while idx < 0:
            require idx < 0
            require t < baseTokenURI.length + s
            mem[ceil32(baseTokenURI.length) + ceil32(s) + t + 288 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 18))))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 18))))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            t = t + 1
            continue 
        idx = 0
        t = baseTokenURI.length + s + mem[ceil32(baseTokenURI.length) + ceil32(s) + 160] + mem[ceil32(baseTokenURI.length) + ceil32(s) + 192]
        while idx < 0:
            require idx < mem[ceil32(baseTokenURI.length) + ceil32(s) + 224]
            require t < mem[ceil32(baseTokenURI.length) + ceil32(s) + 256]
            mem[ceil32(baseTokenURI.length) + ceil32(s) + t + 288 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 18))))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 18))))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            t = t + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[ceil32(baseTokenURI.length) + ceil32(s) + 256]
        _2779 = mem[ceil32(baseTokenURI.length) + ceil32(s) + 256]
        mem[mem[64] + 64 len ceil32(mem[ceil32(baseTokenURI.length) + ceil32(s) + 256])] = mem[ceil32(baseTokenURI.length) + ceil32(s) + 288 len ceil32(mem[ceil32(baseTokenURI.length) + ceil32(s) + 256])]
        if not _2779 % 32:
            return 32, mem[mem[64] + 32 len _2779 + 32]
        mem[floor32(_2779) + mem[64] + 64] = mem[floor32(_2779) + mem[64] + -(_2779 % 32) + 96 len _2779 % 32]
        return 32, mem[mem[64] + 32 len floor32(_2779) + 64]
    mem[ceil32(baseTokenURI.length) + 128] = 1
    mem[ceil32(baseTokenURI.length) + 160] = '0'
    mem[ceil32(baseTokenURI.length) + 192] = 0
    mem[ceil32(baseTokenURI.length) + 224] = 0
    mem[ceil32(baseTokenURI.length) + 256] = 0
    mem[ceil32(baseTokenURI.length) + 288] = baseTokenURI.length + 1
    mem[64] = ceil32(baseTokenURI.length) + floor32(baseTokenURI.length + 32) + 320
    if not baseTokenURI.length + 1:
        idx = 0
        s = 0
        while idx < baseTokenURI.length:
            require idx < baseTokenURI.length
            require s < baseTokenURI.length + 1
            mem[ceil32(baseTokenURI.length) + s + 320 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        idx = 0
        s = baseTokenURI.length
        while idx < 1:
            require idx < 1
            require s < baseTokenURI.length + 1
            mem[ceil32(baseTokenURI.length) + s + 320 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 18))))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 18))))), ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        idx = 0
        s = baseTokenURI.length + mem[ceil32(baseTokenURI.length) + 128]
        while idx < mem[ceil32(baseTokenURI.length) + 192]:
            require idx < mem[ceil32(baseTokenURI.length) + 192]
            require s < mem[ceil32(baseTokenURI.length) + 288]
            mem[ceil32(baseTokenURI.length) + s + 320 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 18))))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 18))))), ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        _2022 = mem[ceil32(baseTokenURI.length) + 224]
        idx = 0
        s = baseTokenURI.length + mem[ceil32(baseTokenURI.length) + 128]
        while idx < mem[ceil32(baseTokenURI.length) + 224]:
            require idx < mem[ceil32(baseTokenURI.length) + 224]
            require s < mem[ceil32(baseTokenURI.length) + 288]
            mem[ceil32(baseTokenURI.length) + s + 320 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 18))))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 18))))), ('var', 0)), 32))), 0) - 256
            _2022 = mem[ceil32(baseTokenURI.length) + 224]
            idx = idx + 1
            s = s + 1
            continue 
        idx = 0
        s = baseTokenURI.length + mem[ceil32(baseTokenURI.length) + 128] + _2022
        while idx < mem[ceil32(baseTokenURI.length) + 256]:
            require idx < mem[ceil32(baseTokenURI.length) + 256]
            require s < mem[ceil32(baseTokenURI.length) + 288]
            mem[ceil32(baseTokenURI.length) + s + 320 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 288, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 18))))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 288, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 18))))), ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        _2446 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[ceil32(baseTokenURI.length) + 288]
        _2448 = mem[ceil32(baseTokenURI.length) + 288]
        mem[mem[64] + 64 len ceil32(mem[ceil32(baseTokenURI.length) + 288])] = mem[ceil32(baseTokenURI.length) + 320 len ceil32(mem[ceil32(baseTokenURI.length) + 288])]
        var39001 = ceil32(_2448)
        if not _2448 % 32:
            return 32, mem[mem[64] + 32 len _2448 + 32]
        mem[floor32(_2448) + mem[64] + 64] = mem[floor32(_2448) + mem[64] + -(_2448 % 32) + 96 len _2448 % 32]
        return memory
          from mem[64]
           len floor32(_2448) + _2446 + -mem[64] + 96
    mem[ceil32(baseTokenURI.length) + 320 len 32 * baseTokenURI.length + 1] = code.data[13673 len 32 * baseTokenURI.length + 1]
    idx = 0
    s = 0
    while idx < baseTokenURI.length:
        require idx < baseTokenURI.length
        require s < baseTokenURI.length + 1
        mem[ceil32(baseTokenURI.length) + s + 320 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        s = s + 1
        continue 
    idx = 0
    s = baseTokenURI.length
    while idx < 1:
        require idx < 1
        require s < baseTokenURI.length + 1
        mem[ceil32(baseTokenURI.length) + s + 320 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 18))))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 18))))), ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        s = s + 1
        continue 
    idx = 0
    s = baseTokenURI.length + mem[ceil32(baseTokenURI.length) + 128]
    while idx < mem[ceil32(baseTokenURI.length) + 192]:
        require idx < mem[ceil32(baseTokenURI.length) + 192]
        require s < mem[ceil32(baseTokenURI.length) + 288]
        mem[ceil32(baseTokenURI.length) + s + 320 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 18))))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 18))))), ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        s = s + 1
        continue 
    _2023 = mem[ceil32(baseTokenURI.length) + 224]
    idx = 0
    s = baseTokenURI.length + mem[ceil32(baseTokenURI.length) + 128]
    while idx < mem[ceil32(baseTokenURI.length) + 224]:
        require idx < mem[ceil32(baseTokenURI.length) + 224]
        require s < mem[ceil32(baseTokenURI.length) + 288]
        mem[ceil32(baseTokenURI.length) + s + 320 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 18))))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 18))))), ('var', 0)), 32))), 0) - 256
        _2023 = mem[ceil32(baseTokenURI.length) + 224]
        idx = idx + 1
        s = s + 1
        continue 
    idx = 0
    s = baseTokenURI.length + mem[ceil32(baseTokenURI.length) + 128] + _2023
    while idx < mem[ceil32(baseTokenURI.length) + 256]:
        require idx < mem[ceil32(baseTokenURI.length) + 256]
        require s < mem[ceil32(baseTokenURI.length) + 288]
        mem[ceil32(baseTokenURI.length) + s + 320 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 288, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 18))))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 288, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 18))))), ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        s = s + 1
        continue 
    _2449 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[ceil32(baseTokenURI.length) + 288]
    _2451 = mem[ceil32(baseTokenURI.length) + 288]
    mem[mem[64] + 64 len ceil32(mem[ceil32(baseTokenURI.length) + 288])] = mem[ceil32(baseTokenURI.length) + 320 len ceil32(mem[ceil32(baseTokenURI.length) + 288])]
    var40001 = ceil32(_2451)
    if not _2451 % 32:
        return 32, mem[mem[64] + 32 len _2451 + 32]
    mem[floor32(_2451) + mem[64] + 64] = mem[floor32(_2451) + mem[64] + -(_2451 % 32) + 96 len _2451 % 32]
    return memory
      from mem[64]
       len floor32(_2451) + _2449 + -mem[64] + 96
}



}
