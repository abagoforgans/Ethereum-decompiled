contract main {




// =====================  Runtime code  =====================


const baseTokenURI = Array(len=38, data=0xfe68747470733a2f2f666f6f74626174746c652e6f6f677a792e636f6d2f6170692f63617264, mem[166 len 26], mem[218 len 6])


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
mapping of bool stor11;
address owner;
address stor13;
mapping of uint8 stor14;
mapping of uint8 stor15;
uint8 paused;
address treasuryAddress; offset 8
mapping of struct cards;

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
    require arg2 < tokenOfOwnerByIndex[address(arg1)].field_0
    return tokenOfOwnerByIndex[address(arg1)][arg2].field_0
}

function isPauser(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor15[address(arg1)])
}

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < tokenByIndex.length
    return tokenByIndex[arg1]
}

function paused() payable {
    return bool(paused)
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

function owner() payable {
    return owner
}

function cards(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return cards[arg1].field_0, 
           cards[arg1].field_256,
           cards[arg1].field_512,
           cards[arg1].field_768,
           cards[arg1].field_1024,
           cards[arg1].field_1280,
           cards[arg1].field_1536,
           cards[arg1].field_1792
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function isMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor14[address(arg1)])
}

function treasuryAddress() payable {
    return treasuryAddress
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

function unpause() payable {
    require msg.sender
    require stor15[address(msg.sender)]
    require paused
    paused = 0
    emit Unpaused(msg.sender);
}

function pause() payable {
    require msg.sender
    require stor15[address(msg.sender)]
    require not paused
    paused = 1
    emit Paused(msg.sender);
}

function renouncePauser() payable {
    require msg.sender
    require stor15[address(msg.sender)]
    stor15[address(msg.sender)] = 0
    emit PauserRemoved(msg.sender);
}

function renounceMinter() payable {
    require msg.sender
    require stor14[address(msg.sender)]
    stor14[address(msg.sender)] = 0
    emit MinterRemoved(msg.sender);
}

function setTreasuryAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    require arg1 != this.address
    treasuryAddress = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function addPauser(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor15[address(msg.sender)]
    require arg1
    require not stor15[address(arg1)]
    stor15[address(arg1)] = 1
    emit PauserAdded(arg1);
}

function addMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor14[address(msg.sender)]
    require arg1
    require not stor14[address(arg1)]
    stor14[address(arg1)] = 1
    emit MinterAdded(arg1);
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require not paused
    require arg1 != msg.sender
    stor4[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function withdrawBalance() payable {
    require msg.sender == owner
    call treasuryAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(stor13)
    staticcall stor13.proxies(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != arg2:
        return bool(stor4[address(arg1)][address(arg2)])
    return 1
}

function sub_c4620db0(?) payable {
    require calldata.size - 4 >= 224
    require msg.sender
    require stor14[address(msg.sender)]
    require not paused
    cards[arg1].field_256 = arg2
    cards[arg1].field_512 = arg3
    cards[arg1].field_1024 = arg4
    cards[arg1].field_1280 = arg5
    cards[arg1].field_1536 = arg6
    cards[arg1].field_1792 = arg7
    emit 0x79e4c307: arg1, cards[arg1].field_256, cards[arg1].field_512, cards[arg1].field_1024, cards[arg1].field_1280, cards[arg1].field_1536, cards[arg1].field_1792
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not paused
    require ownerOf[arg2]
    require arg1 != ownerOf[arg2]
    if ownerOf[arg2] != msg.sender:
        require ext_code.size(stor13)
        staticcall stor13.proxies(address arg1) with:
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

function sub_8a99f2a7(?) payable {
    require calldata.size - 4 >= 256
    require msg.sender
    require stor14[address(msg.sender)]
    require not paused
    require not cards[arg1].field_0
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
    cards[arg1].field_0 = arg2
    cards[arg1].field_256 = arg3
    cards[arg1].field_512 = arg4
    cards[arg1].field_768 = block.timestamp
    cards[arg1].field_1024 = arg5
    cards[arg1].field_1280 = arg6
    cards[arg1].field_1536 = arg7
    cards[arg1].field_1792 = arg8
    emit 0x249bcf52: address(arg2), arg1, arg3, arg4, block.timestamp, arg5, arg6, arg7, arg8
}

function tokensOfOwner(address arg1) payable {
    require calldata.size - 4 >= 32
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

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require not paused
    require ownerOf[arg3]
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require ext_code.size(stor13)
            staticcall stor13.proxies(address arg1) with:
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

function burnCard(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor14[address(msg.sender)]
    require not paused
    emit 0x67779222: arg1, cards[arg1].field_256, cards[arg1].field_512, cards[arg1].field_768, cards[arg1].field_1024, cards[arg1].field_1280, cards[arg1].field_1536, cards[arg1].field_1792
    require ownerOf[arg1]
    require ownerOf[arg1]
    require ownerOf[arg1] == ownerOf[arg1]
    if approved[arg1]:
        approved[arg1] = 0
    require 1 <= balanceOf[stor1[arg1]]
    balanceOf[stor1[arg1]]--
    ownerOf[arg1] = 0
    emit Transfer(ownerOf[arg1], 0, arg1);
    require 1 <= tokenOfOwnerByIndex[stor1[arg1]].field_0
    if stor6[arg1] != tokenOfOwnerByIndex[stor1[arg1]].field_0 - 1:
        require tokenOfOwnerByIndex[stor1[arg1]].field_0 - 1 < tokenOfOwnerByIndex[stor1[arg1]].field_0
        require stor6[arg1] < tokenOfOwnerByIndex[stor1[arg1]].field_0
        tokenOfOwnerByIndex[stor1[arg1]][stor6[arg1]].field_0 = tokenOfOwnerByIndex[stor1[arg1]][tokenOfOwnerByIndex[stor1[arg1]].field_0].field_0
        stor6[stor5[stor1[arg1]][stor5[stor1[arg1]].field_0].field_0] = stor6[arg1]
    tokenOfOwnerByIndex[stor1[arg1]].field_0--
    if tokenOfOwnerByIndex[stor1[arg1]].field_0 > tokenOfOwnerByIndex[stor1[arg1]].field_0 - 1:
        idx = tokenOfOwnerByIndex[stor1[arg1]].field_0 - 1
        while tokenOfOwnerByIndex[stor1[arg1]].field_0 > idx:
            tokenOfOwnerByIndex[stor1[arg1]][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor6[arg1] = 0
    require 1 <= tokenByIndex.length
    require tokenByIndex.length - 1 < tokenByIndex.length
    require stor8[arg1] < tokenByIndex.length
    tokenByIndex[stor8[arg1]] = tokenByIndex[tokenByIndex.length]
    stor8[stor7[stor7.length]] = stor8[arg1]
    tokenByIndex.length--
    if tokenByIndex.length > tokenByIndex.length - 1:
        idx = tokenByIndex.length - 1
        while tokenByIndex.length > idx:
            tokenByIndex[idx] = 0
            idx = idx + 1
            continue 
    stor8[arg1] = 0
    if Mask(255, 1, (256 * not bool(stor11[arg1])) - 1 and uint256(stor11[arg1])):
        uint256(stor11[arg1]) = 0
        if 31 < stor11[arg1].length:
            idx = 0
            while stor11[arg1].length + 31 / 32 > idx:
                uint256(stor11[arg1][idx]) = 0
                idx = idx + 1
                continue 
    cards[arg1].field_0 = 0
    cards[arg1].field_256 = 0
    cards[arg1].field_512 = 0
    cards[arg1].field_768 = 0
    cards[arg1].field_1024 = 0
    cards[arg1].field_1280 = 0
    cards[arg1].field_1536 = 0
    cards[arg1].field_1792 = 0
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require not paused
    require ownerOf[arg3]
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require ext_code.size(stor13)
            staticcall stor13.proxies(address arg1) with:
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
    require not paused
    require ownerOf[arg3]
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require ext_code.size(stor13)
            staticcall stor13.proxies(address arg1) with:
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

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[96] = 38
    mem[128 len 38] = 0xfe68747470733a2f2f666f6f74626174746c652e6f6f677a792e636f6d2f6170692f63617264
    if not arg1:
        mem[192] = 1
        mem[224] = '0'
        mem[256] = 0
        mem[288] = 0
        mem[320] = 0
        mem[352] = 39
        mem[384 len 39] = code.data[15177 len 39]
        idx = 0
        s = 0
        while idx < 38:
            require idx < 38
            require s < 39
            mem[s + 384 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        idx = 0
        s = 38
        while idx < 1:
            require idx < 1
            require s < 39
            mem[s + 384 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        idx = 0
        s = 39
        while idx < 0:
            require idx < 0
            require s < 39
            mem[s + 384 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 288, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 288, ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        idx = 0
        s = 39
        while idx < 0:
            require idx < 0
            require s < 39
            mem[s + 384 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 320, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 320, ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        idx = 0
        s = 39
        while idx < 0:
            require idx < 0
            require s < 39
            mem[s + 384 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 352, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 352, ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        return Array(len=39, data=mem[384], mem[441 len 7])
    s = 0
    idx = arg1
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    mem[192] = s
    mem[64] = ceil32(s) + 224
    if not s:
        t = s - 1
        idx = arg1
        while idx:
            require t < mem[192]
            mem[t + 224 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _263 = mem[64]
        mem[64] = mem[64] + 32
        mem[_263] = 0
        _264 = mem[64]
        mem[64] = mem[64] + 32
        mem[_264] = 0
        _265 = mem[64]
        mem[64] = mem[64] + 32
        mem[_265] = 0
        _278 = mem[192]
        _279 = mem[96]
        _280 = mem[64]
        mem[mem[64]] = mem[96] + mem[192]
        mem[64] = mem[64] + floor32(_279 + _278 + 31) + 32
        if not _279 + _278:
            _423 = mem[96]
            idx = 0
            s = 0
            while idx < _423:
                require idx < mem[96]
                require s < mem[_280]
                mem[s + _280 + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
                idx = idx + 1
                s = s + 1
                continue 
            _569 = mem[192]
            idx = 0
            s = _423
            while idx < _569:
                require idx < mem[192]
                require s < mem[_280]
                mem[s + _280 + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 0)), 32))), 0) - 256
                _569 = mem[192]
                idx = idx + 1
                s = s + 1
                continue 
            _691 = mem[_263]
            idx = 0
            s = _423 + _569
            while idx < _691:
                require idx < mem[_263]
                require s < mem[_280]
                mem[s + _280 + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 0), ('var', '_263')), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 0), ('var', '_263')), 32))), 0) - 256
                _691 = mem[_263]
                idx = idx + 1
                s = s + 1
                continue 
            _789 = mem[_264]
            idx = 0
            s = _423 + _569 + _691
            while idx < _789:
                require idx < mem[_264]
                require s < mem[_280]
                mem[s + _280 + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 0), ('var', '_264')), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 0), ('var', '_264')), 32))), 0) - 256
                _789 = mem[_264]
                idx = idx + 1
                s = s + 1
                continue 
            _857 = mem[_265]
            idx = 0
            s = _423 + _569 + _691 + _789
            while idx < _857:
                require idx < mem[_265]
                require s < mem[_280]
                mem[s + _280 + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 0), ('var', '_265')), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 0), ('var', '_265')), 32))), 0) - 256
                _857 = mem[_265]
                idx = idx + 1
                s = s + 1
                continue 
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[_280]
            _875 = mem[_280]
            mem[mem[64] + 64 len ceil32(mem[_280])] = mem[_280 + 32 len ceil32(mem[_280])]
            if not _875 % 32:
                return 32, mem[mem[64] + 32 len _875 + 32]
            mem[floor32(_875) + mem[64] + 64] = mem[floor32(_875) + mem[64] + -(_875 % 32) + 96 len _875 % 32]
            return 32, mem[mem[64] + 32 len floor32(_875) + 64]
        mem[_280 + 32 len _279 + _278] = code.data[15177 len _279 + _278]
        _424 = mem[96]
        idx = 0
        s = 0
        while idx < _424:
            require idx < mem[96]
            require s < mem[_280]
            mem[s + _280 + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        _570 = mem[192]
        idx = 0
        s = _424
        while idx < _570:
            require idx < mem[192]
            require s < mem[_280]
            mem[s + _280 + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 0)), 32))), 0) - 256
            _570 = mem[192]
            idx = idx + 1
            s = s + 1
            continue 
        _692 = mem[_263]
        idx = 0
        s = _424 + _570
        while idx < _692:
            require idx < mem[_263]
            require s < mem[_280]
            mem[s + _280 + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 0), ('var', '_263')), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 0), ('var', '_263')), 32))), 0) - 256
            _692 = mem[_263]
            idx = idx + 1
            s = s + 1
            continue 
        _790 = mem[_264]
        idx = 0
        s = _424 + _570 + _692
        while idx < _790:
            require idx < mem[_264]
            require s < mem[_280]
            mem[s + _280 + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 0), ('var', '_264')), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 0), ('var', '_264')), 32))), 0) - 256
            _790 = mem[_264]
            idx = idx + 1
            s = s + 1
            continue 
        _858 = mem[_265]
        idx = 0
        s = _424 + _570 + _692 + _790
        while idx < _858:
            require idx < mem[_265]
            require s < mem[_280]
            mem[s + _280 + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 0), ('var', '_265')), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 0), ('var', '_265')), 32))), 0) - 256
            _858 = mem[_265]
            idx = idx + 1
            s = s + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[_280]
        _878 = mem[_280]
        mem[mem[64] + 64 len ceil32(mem[_280])] = mem[_280 + 32 len ceil32(mem[_280])]
        if not _878 % 32:
            return 32, mem[mem[64] + 32 len _878 + 32]
        mem[floor32(_878) + mem[64] + 64] = mem[floor32(_878) + mem[64] + -(_878 % 32) + 96 len _878 % 32]
        return 32, mem[mem[64] + 32 len floor32(_878) + 64]
    mem[224 len s] = code.data[15177 len s]
    t = s - 1
    idx = arg1
    while idx:
        require t < mem[192]
        mem[t + 224 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _266 = mem[64]
    mem[64] = mem[64] + 32
    mem[_266] = 0
    _267 = mem[64]
    mem[64] = mem[64] + 32
    mem[_267] = 0
    _268 = mem[64]
    mem[64] = mem[64] + 32
    mem[_268] = 0
    _284 = mem[192]
    _285 = mem[96]
    _286 = mem[64]
    mem[mem[64]] = mem[96] + mem[192]
    mem[64] = mem[64] + floor32(_285 + _284 + 31) + 32
    if not _285 + _284:
        _425 = mem[96]
        idx = 0
        s = 0
        while idx < _425:
            require idx < mem[96]
            require s < mem[_286]
            mem[s + _286 + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        _571 = mem[192]
        idx = 0
        s = _425
        while idx < _571:
            require idx < mem[192]
            require s < mem[_286]
            mem[s + _286 + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 0)), 32))), 0) - 256
            _571 = mem[192]
            idx = idx + 1
            s = s + 1
            continue 
        _693 = mem[_266]
        idx = 0
        s = _425 + _571
        while idx < _693:
            require idx < mem[_266]
            require s < mem[_286]
            mem[s + _286 + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 0), ('var', '_266')), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 0), ('var', '_266')), 32))), 0) - 256
            _693 = mem[_266]
            idx = idx + 1
            s = s + 1
            continue 
        _791 = mem[_267]
        idx = 0
        s = _425 + _571 + _693
        while idx < _791:
            require idx < mem[_267]
            require s < mem[_286]
            mem[s + _286 + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 0), ('var', '_267')), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 0), ('var', '_267')), 32))), 0) - 256
            _791 = mem[_267]
            idx = idx + 1
            s = s + 1
            continue 
        _859 = mem[_268]
        idx = 0
        s = _425 + _571 + _693 + _791
        while idx < _859:
            require idx < mem[_268]
            require s < mem[_286]
            mem[s + _286 + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 0), ('var', '_268')), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 0), ('var', '_268')), 32))), 0) - 256
            _859 = mem[_268]
            idx = idx + 1
            s = s + 1
            continue 
        _879 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[_286]
        _881 = mem[_286]
        mem[mem[64] + 64 len ceil32(mem[_286])] = mem[_286 + 32 len ceil32(mem[_286])]
        if not _881 % 32:
            return 32, mem[mem[64] + 32 len _881 + 32]
        mem[floor32(_881) + mem[64] + 64] = mem[floor32(_881) + mem[64] + -(_881 % 32) + 96 len _881 % 32]
        return memory
          from mem[64]
           len floor32(_881) + _879 + -mem[64] + 96
    mem[_286 + 32 len _285 + _284] = code.data[15177 len _285 + _284]
    _426 = mem[96]
    idx = 0
    s = 0
    while idx < _426:
        require idx < mem[96]
        require s < mem[_286]
        mem[s + _286 + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        s = s + 1
        continue 
    _572 = mem[192]
    idx = 0
    s = _426
    while idx < _572:
        require idx < mem[192]
        require s < mem[_286]
        mem[s + _286 + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 0)), 32))), 0) - 256
        _572 = mem[192]
        idx = idx + 1
        s = s + 1
        continue 
    _694 = mem[_266]
    idx = 0
    s = _426 + _572
    while idx < _694:
        require idx < mem[_266]
        require s < mem[_286]
        mem[s + _286 + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 0), ('var', '_266')), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 0), ('var', '_266')), 32))), 0) - 256
        _694 = mem[_266]
        idx = idx + 1
        s = s + 1
        continue 
    _792 = mem[_267]
    idx = 0
    s = _426 + _572 + _694
    while idx < _792:
        require idx < mem[_267]
        require s < mem[_286]
        mem[s + _286 + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 0), ('var', '_267')), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 0), ('var', '_267')), 32))), 0) - 256
        _792 = mem[_267]
        idx = idx + 1
        s = s + 1
        continue 
    _860 = mem[_268]
    idx = 0
    s = _426 + _572 + _694 + _792
    while idx < _860:
        require idx < mem[_268]
        require s < mem[_286]
        mem[s + _286 + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 0), ('var', '_268')), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', 0), ('var', '_268')), 32))), 0) - 256
        _860 = mem[_268]
        idx = idx + 1
        s = s + 1
        continue 
    _882 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_286]
    _884 = mem[_286]
    mem[mem[64] + 64 len ceil32(mem[_286])] = mem[_286 + 32 len ceil32(mem[_286])]
    if not _884 % 32:
        return 32, mem[mem[64] + 32 len _884 + 32]
    mem[floor32(_884) + mem[64] + 64] = mem[floor32(_884) + mem[64] + -(_884 % 32) + 96 len _884 % 32]
    return memory
      from mem[64]
       len floor32(_884) + _882 + -mem[64] + 96
}



}
