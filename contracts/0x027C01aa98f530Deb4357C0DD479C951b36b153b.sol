contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of address ownerOf;
mapping of address approved;
mapping of uint256 balanceOf;
mapping of uint8 stor4;
array of struct tokenOfOwnerByIndex;
mapping of uint256 sub_a2e9b439;
array of uint256 sub_aa5965ae;
mapping of uint256 sub_a7263665;
array of uint256 name;
array of uint256 symbol;
array of uint256 tokenURI;
mapping of uint8 stor12;
address owner;
address stor14;
address stor15;
mapping of struct sub_124d2e7a;
mapping of struct sub_1800660d;
array of struct stor18;
mapping of uint256 stor19;
array of struct sub_7dc304c0;
array of uint256 stor21;

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

function sub_124d2e7a(?) payable {
    require calldata.size - 4 >= 32
    if arg1 > sub_aa5965ae.length:
        revert with 0, 'TokenId doesn't exit'
    return sub_124d2e7a[arg1].field_1536
}

function sub_1800660d(?) payable {
    require calldata.size - 4 >= 64
    if arg1 > sub_aa5965ae.length:
        revert with 0, 'TokenId doesn't exit'
    if arg2 > stor21.length:
        revert with 0, 'TokenId doesn't exit'
    return sub_1800660d[arg1][arg2].field_0, 
           sub_1800660d[arg1][arg2].field_256,
           sub_1800660d[arg1][arg2].field_512,
           sub_1800660d[arg1][arg2].field_768,
           bool(sub_1800660d[arg1][arg2].field_1024),
           bool(sub_1800660d[arg1][arg2].field_1032)
}

function totalSupply() payable {
    return sub_aa5965ae.length
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1
    require arg2 < balanceOf[address(arg1)]
    require arg2 < tokenOfOwnerByIndex[address(arg1)].field_0
    return tokenOfOwnerByIndex[address(arg1)][arg2].field_0
}

function _ownedTokens(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < tokenOfOwnerByIndex[arg1].field_0
    return tokenOfOwnerByIndex[arg1][arg2].field_0
}

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_aa5965ae.length
    return sub_aa5965ae[arg1]
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

function sub_71e8ef06(?) payable {
    require calldata.size - 4 >= 32
    if arg1 > sub_aa5965ae.length:
        revert with 0, 'TokenId doesn't exit'
    mem[832] = sub_124d2e7a[arg1][1].field_0
    idx = 832
    s = 0
    while sub_124d2e7a[arg1][1].length + 800 > idx:
        mem[idx + 32] = sub_124d2e7a[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return sub_124d2e7a[arg1].field_0, 
           Array(len=sub_124d2e7a[arg1][1].length, data=mem[832 len sub_124d2e7a[arg1][1].length]),
           sub_124d2e7a[arg1].field_512,
           sub_124d2e7a[arg1].field_768,
           sub_124d2e7a[arg1].field_1024,
           sub_124d2e7a[arg1].field_1280,
           sub_124d2e7a[arg1].field_1536,
           sub_124d2e7a[arg1].field_2048,
           sub_124d2e7a[arg1].field_2304,
           sub_124d2e7a[arg1].field_2560
}

function sub_7dc304c0(?) payable {
    require calldata.size - 4 >= 64
    require arg2 < sub_7dc304c0[arg1].field_0
    return sub_7dc304c0[arg1][arg2].field_0
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function sub_a2e9b439(?) payable {
    require calldata.size - 4 >= 32
    return sub_a2e9b439[arg1]
}

function sub_a7263665(?) payable {
    require calldata.size - 4 >= 32
    return sub_a7263665[arg1]
}

function isMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor12[address(arg1)])
}

function sub_aa5965ae(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_aa5965ae.length
    return sub_aa5965ae[arg1]
}

function tokenURI(uint256 arg1) payable {
    return tokenURI[arg1][0 len tokenURI[arg1].length]
}

function sub_deb07512(?) payable {
    require calldata.size - 4 >= 32
    if arg1 > sub_aa5965ae.length:
        revert with 0, 'TokenId doesn't exit'
    return sub_124d2e7a[arg1].field_1792
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(stor4[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function sub_44fad0f6(?) payable {
    require calldata.size - 4 >= 32
    return (msg.sender == sub_124d2e7a[arg1].field_0)
}

function renounceOwnership() payable {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_49876500(?) payable {
    require calldata.size - 4 >= 32
    return 2629743 * stor19[arg1] <= sub_124d2e7a[arg1].field_1280
}

function sub_c448a85a(?) payable {
    require calldata.size - 4 >= 32
    require ownerOf[arg1]
    return (msg.sender == ownerOf[arg1])
}

function addMinter() payable {
    require msg.sender
    require not stor12[address(msg.sender)]
    stor12[address(msg.sender)] = 1
    emit MinterAdded(msg.sender);
}

function renounceMinter() payable {
    require msg.sender
    require stor12[address(msg.sender)]
    stor12[address(msg.sender)] = 0
    emit MinterRemoved(msg.sender);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
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

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender
    require stor12[address(msg.sender)]
    require arg1
    require not ownerOf[arg2]
    ownerOf[arg2] = arg1
    balanceOf[address(arg1)]++
    emit Transfer(0, arg1, arg2);
    sub_a2e9b439[arg2] = tokenOfOwnerByIndex[address(arg1)].field_0
    tokenOfOwnerByIndex[address(arg1)].field_0++
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0 = arg2
    sub_a7263665[arg2] = sub_aa5965ae.length
    sub_aa5965ae.length++
    sub_aa5965ae[sub_aa5965ae.length] = arg2
    return 1
}

function sub_6af808da(?) payable {
    require calldata.size - 4 >= 32
    if sub_124d2e7a[arg1].field_0 != msg.sender:
        revert with 0, 'User is not subscriber'
    if sub_124d2e7a[arg1].field_1792 < sub_124d2e7a[arg1].field_512:
        return 0
    require ext_code.size(stor15)
    call stor15.0xa9059cbb with:
         gas gas_remaining wei
        args sub_124d2e7a[arg1].field_0, sub_124d2e7a[arg1].field_2560
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_124d2e7a[arg1].field_2560 = 0
    emit 0x902dca31: arg1, block.timestamp, sub_124d2e7a[arg1].field_0
    return 1
}

function sub_c2478c06(?) payable {
    require calldata.size - 4 >= 64
    require ownerOf[arg1]
    if ownerOf[arg1] != msg.sender:
        revert with 0, 'User is not owner'
    if sub_124d2e7a[arg1].field_1536 < arg2:
        revert with 0, 'Balance is less than amount'
    require ownerOf[arg1]
    require ext_code.size(stor14)
    call stor14.0xa9059cbb with:
         gas gas_remaining wei
        args ownerOf[arg1], arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg2 <= sub_124d2e7a[arg1].field_1536
    sub_124d2e7a[arg1].field_1536 -= arg2
    emit 0x3dc1158a: arg1, arg2, block.timestamp, ownerOf[arg1]
    return 1
}

function cancelOrder(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        if sub_124d2e7a[arg1].field_0 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0xfe55736572206973206e6f742073756273637269626572206f72207075626c69736865,
                        mem[199 len 29]
    if sub_1800660d[arg1][arg2].field_1024:
        revert with 0, 'Order is payed'
    require ownerOf[arg1]
    sub_1800660d[arg1][arg2].field_1032 = 1
    emit 0x8c4dd036: arg1, stor14, sub_1800660d[arg1][arg2].field_768, sub_1800660d[arg1][arg2].field_512, sub_1800660d[arg1][arg2].field_0, ownerOf[arg1]
    return 1
}

function sub_c76630a9(?) payable {
    require calldata.size - 4 >= 32
    if not stor18[arg1].field_0:
        mem[(32 * stor18[arg1].field_0) + 128] = 32
        mem[(32 * stor18[arg1].field_0) + 160] = stor18[arg1].field_0
        mem[(32 * stor18[arg1].field_0) + 192 len floor32(stor18[arg1].field_0)] = mem[128 len floor32(stor18[arg1].field_0)]
        return memory
          from (32 * stor18[arg1].field_0) + 128
           len (96 * stor18[arg1].field_0) + 64
    mem[128] = stor18[arg1].field_0
    idx = 128
    s = 0
    while (32 * stor18[arg1].field_0) + 96 > idx:
        mem[idx + 32] = stor18[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor18[arg1].field_0) + 192 len floor32(stor18[arg1].field_0)] = mem[128 len floor32(stor18[arg1].field_0)]
    return Array(len=stor18[arg1].field_0, data=mem[128 len floor32(stor18[arg1].field_0)], mem[(32 * stor18[arg1].field_0) + floor32(stor18[arg1].field_0) + 192 len (32 * stor18[arg1].field_0) - floor32(stor18[arg1].field_0)]), 
}

function sub_f372422f(?) payable {
    require calldata.size - 4 >= 32
    if not sub_7dc304c0[address(arg1)].field_0:
        mem[(32 * sub_7dc304c0[address(arg1)].field_0) + 128] = 32
        mem[(32 * sub_7dc304c0[address(arg1)].field_0) + 160] = sub_7dc304c0[address(arg1)].field_0
        mem[(32 * sub_7dc304c0[address(arg1)].field_0) + 192 len floor32(sub_7dc304c0[address(arg1)].field_0)] = mem[128 len floor32(sub_7dc304c0[address(arg1)].field_0)]
        return memory
          from (32 * sub_7dc304c0[address(arg1)].field_0) + 128
           len (96 * sub_7dc304c0[address(arg1)].field_0) + 64
    mem[128] = sub_7dc304c0[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * sub_7dc304c0[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = sub_7dc304c0[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_7dc304c0[address(arg1)].field_0) + 192 len floor32(sub_7dc304c0[address(arg1)].field_0)] = mem[128 len floor32(sub_7dc304c0[address(arg1)].field_0)]
    return Array(len=sub_7dc304c0[address(arg1)].field_0, data=mem[128 len floor32(sub_7dc304c0[address(arg1)].field_0)], mem[(32 * sub_7dc304c0[address(arg1)].field_0) + floor32(sub_7dc304c0[address(arg1)].field_0) + 192 len (32 * sub_7dc304c0[address(arg1)].field_0) - floor32(sub_7dc304c0[address(arg1)].field_0)]), 
}

function sub_e27b5e10(?) payable {
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
    require 1 <= tokenOfOwnerByIndex[address(arg1)].field_0
    if sub_a2e9b439[arg3] != tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
        require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
        require sub_a2e9b439[arg3] < tokenOfOwnerByIndex[address(arg1)].field_0
        tokenOfOwnerByIndex[address(arg1)][stor6[arg3]].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
        sub_a2e9b439[stor5[address(arg1)][stor5[address(arg1)].field_0].field_0] = sub_a2e9b439[arg3]
    tokenOfOwnerByIndex[address(arg1)].field_0--
    if tokenOfOwnerByIndex[address(arg1)].field_0 > tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
        idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
        while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
            tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
    sub_a2e9b439[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
    tokenOfOwnerByIndex[address(arg2)].field_0++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
}

function executeOrder(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        if sub_124d2e7a[arg1].field_0 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0xfe55736572206973206e6f742073756273637269626572206f72207075626c69736865,
                        mem[199 len 29]
    require ownerOf[arg1]
    require ext_code.size(stor14)
    staticcall stor14.0xdd62ed3e with:
            gas gas_remaining wei
           args sub_1800660d[arg1][arg2].field_0, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_1800660d[arg1][arg2].field_768 > ext_call.return_data[0]:
        return 0
    require ext_code.size(stor14)
    call stor14.0x23b872dd with:
         gas gas_remaining wei
        args sub_1800660d[arg1][arg2].field_0, address(this.address), sub_1800660d[arg1][arg2].field_768
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_124d2e7a[arg1].field_1536 + sub_1800660d[arg1][arg2].field_768 >= sub_124d2e7a[arg1].field_1536
    sub_124d2e7a[arg1].field_1536 += sub_1800660d[arg1][arg2].field_768
    require sub_124d2e7a[arg1].field_1792 + sub_1800660d[arg1][arg2].field_768 >= sub_124d2e7a[arg1].field_1792
    sub_124d2e7a[arg1].field_1792 += sub_1800660d[arg1][arg2].field_768
    sub_1800660d[arg1][arg2].field_1024 = 1
    emit 0xbe729021: arg1, stor14, sub_1800660d[arg1][arg2].field_768, block.timestamp, sub_1800660d[arg1][arg2].field_0, ownerOf[arg1]
    require stor19[arg1] + 1 >= stor19[arg1]
    return 1
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
    require 1 <= tokenOfOwnerByIndex[address(arg1)].field_0
    if sub_a2e9b439[arg3] != tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
        require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
        require sub_a2e9b439[arg3] < tokenOfOwnerByIndex[address(arg1)].field_0
        tokenOfOwnerByIndex[address(arg1)][stor6[arg3]].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
        sub_a2e9b439[stor5[address(arg1)][stor5[address(arg1)].field_0].field_0] = sub_a2e9b439[arg3]
    tokenOfOwnerByIndex[address(arg1)].field_0--
    if tokenOfOwnerByIndex[address(arg1)].field_0 > tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
        idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
        while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
            tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
    sub_a2e9b439[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
    tokenOfOwnerByIndex[address(arg2)].field_0++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
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

function createOrder(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        if sub_124d2e7a[arg1].field_0 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0xfe55736572206973206e6f742073756273637269626572206f72207075626c69736865,
                        mem[199 len 29]
    require stor21.length + 1 >= stor21.length
    require ownerOf[arg1]
    if sub_124d2e7a[arg1].field_2304 <= 0:
        if 2629743 <= sub_124d2e7a[arg1].field_1280:
            sub_1800660d[arg1][stor21.length + 1].field_0 = sub_124d2e7a[arg1].field_0
            sub_1800660d[arg1][stor21.length + 1].field_256 = sub_124d2e7a[arg1].field_2048 + 2629743
            sub_1800660d[arg1][stor21.length + 1].field_512 = 0
            sub_1800660d[arg1][stor21.length + 1].field_768 = arg2
            sub_1800660d[arg1][stor21.length + 1].field_1024 = 0
            sub_1800660d[arg1][stor21.length + 1].field_1032 = 0
            stor21.length++
            stor21[stor21.length] = stor21.length + 1
            stor18[arg1].field_0++
            stor18[arg1][stor18[arg1].field_0].field_0 = stor21.length + 1
            emit 0x73a6e2f4: arg1, stor14, arg2, sub_124d2e7a[arg1].field_2048 + 2629743, sub_124d2e7a[arg1].field_0, ownerOf[arg1]
    else:
        if 2629743 * stor19[arg1] <= sub_124d2e7a[arg1].field_1280:
            sub_1800660d[arg1][stor21.length + 1].field_0 = sub_124d2e7a[arg1].field_0
            sub_1800660d[arg1][stor21.length + 1].field_256 = sub_124d2e7a[arg1].field_2048 + (2629743 * stor19[arg1])
            sub_1800660d[arg1][stor21.length + 1].field_512 = 0
            sub_1800660d[arg1][stor21.length + 1].field_768 = arg2
            sub_1800660d[arg1][stor21.length + 1].field_1024 = 0
            sub_1800660d[arg1][stor21.length + 1].field_1032 = 0
            stor21.length++
            stor21[stor21.length] = stor21.length + 1
            stor18[arg1].field_0++
            stor18[arg1][stor18[arg1].field_0].field_0 = stor21.length + 1
            emit 0x73a6e2f4: arg1, stor14, arg2, sub_124d2e7a[arg1].field_2048 + (2629743 * stor19[arg1]), sub_124d2e7a[arg1].field_0, ownerOf[arg1]
    return 1
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
    require 1 <= tokenOfOwnerByIndex[address(arg1)].field_0
    if sub_a2e9b439[arg3] != tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
        require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
        require sub_a2e9b439[arg3] < tokenOfOwnerByIndex[address(arg1)].field_0
        tokenOfOwnerByIndex[address(arg1)][stor6[arg3]].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
        sub_a2e9b439[stor5[address(arg1)][stor5[address(arg1)].field_0].field_0] = sub_a2e9b439[arg3]
    tokenOfOwnerByIndex[address(arg1)].field_0--
    if tokenOfOwnerByIndex[address(arg1)].field_0 > tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
        idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
        while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
            tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
    sub_a2e9b439[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
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

function sub_b7148f2e(?) payable {
    require calldata.size - 4 >= 192
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require ext_code.size(stor15)
    staticcall stor15.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg6 > ext_call.return_data[0]:
        return 0, 1
    require sub_aa5965ae.length + 1 >= sub_aa5965ae.length
    require msg.sender
    require stor12[address(msg.sender)]
    require msg.sender
    require not ownerOf[stor7.length + 1]
    ownerOf[stor7.length + 1] = msg.sender
    balanceOf[address(msg.sender)]++
    emit Transfer(0, msg.sender, sub_aa5965ae.length + 1);
    sub_a2e9b439[stor7.length + 1] = tokenOfOwnerByIndex[address(msg.sender)].field_0
    tokenOfOwnerByIndex[address(msg.sender)].field_0++
    tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)].field_0].field_0 = sub_aa5965ae.length + 1
    sub_a7263665[stor7.length + 1] = sub_aa5965ae.length
    sub_aa5965ae.length++
    sub_aa5965ae[sub_aa5965ae.length] = sub_aa5965ae.length + 1
    require ext_code.size(stor15)
    call stor15.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_124d2e7a[stor7.length + 1].field_0 = msg.sender
    sub_124d2e7a[stor7.length + 1][1][].field_0 = Array(len=arg1.length, data=arg1[all])
    sub_124d2e7a[stor7.length + 1].field_512 = arg2
    sub_124d2e7a[stor7.length + 1].field_768 = arg3
    sub_124d2e7a[stor7.length + 1].field_1024 = arg4
    sub_124d2e7a[stor7.length + 1].field_1280 = arg5
    sub_124d2e7a[stor7.length + 1].field_1536 = 0
    sub_124d2e7a[stor7.length + 1].field_1792 = 0
    sub_124d2e7a[stor7.length + 1].field_2048 = block.timestamp
    sub_124d2e7a[stor7.length + 1].field_2304 = 0
    sub_124d2e7a[stor7.length + 1].field_2560 = arg6
    sub_7dc304c0[address(msg.sender)].field_0++
    sub_7dc304c0[address(msg.sender)][sub_7dc304c0[address(msg.sender)].field_0].field_0 = sub_aa5965ae.length + 1
    emit 0xfa046708: msg.sender, Array(len=arg1.length, data=arg1[all]), arg2, arg3, arg4, arg5, block.timestamp, arg6, sub_aa5965ae.length + 1
    return 1
}

function sub_02e17c6a(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        if sub_124d2e7a[arg1].field_0 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0xfe55736572206973206e6f742073756273637269626572206f72207075626c69736865,
                        mem[199 len 29]
    require stor21.length + 1 >= stor21.length
    require ownerOf[arg1]
    sub_1800660d[arg1][stor21.length + 1].field_0 = sub_124d2e7a[arg1].field_0
    sub_1800660d[arg1][stor21.length + 1].field_256 = block.timestamp
    sub_1800660d[arg1][stor21.length + 1].field_512 = 0
    sub_1800660d[arg1][stor21.length + 1].field_768 = arg2
    sub_1800660d[arg1][stor21.length + 1].field_1024 = 0
    sub_1800660d[arg1][stor21.length + 1].field_1032 = 0
    stor21.length++
    stor21[stor21.length] = stor21.length + 1
    stor18[arg1].field_0++
    stor18[arg1][stor18[arg1].field_0].field_0 = stor21.length + 1
    emit 0x73a6e2f4: arg1, stor14, arg2, block.timestamp, sub_124d2e7a[arg1].field_0, ownerOf[arg1]
    require ownerOf[arg1]
    require ext_code.size(stor14)
    staticcall stor14.0xdd62ed3e with:
            gas gas_remaining wei
           args sub_1800660d[arg1][stor21.length + 1].field_0, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_1800660d[arg1][stor21.length + 1].field_768 <= ext_call.return_data[0]:
        require ext_code.size(stor14)
        call stor14.0x23b872dd with:
             gas gas_remaining wei
            args sub_1800660d[arg1][stor21.length + 1].field_0, address(this.address), sub_1800660d[arg1][stor21.length + 1].field_768
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require sub_124d2e7a[arg1].field_1536 + sub_1800660d[arg1][stor21.length + 1].field_768 >= sub_124d2e7a[arg1].field_1536
        sub_124d2e7a[arg1].field_1536 += sub_1800660d[arg1][stor21.length + 1].field_768
        require sub_124d2e7a[arg1].field_1792 + sub_1800660d[arg1][stor21.length + 1].field_768 >= sub_124d2e7a[arg1].field_1792
        sub_124d2e7a[arg1].field_1792 += sub_1800660d[arg1][stor21.length + 1].field_768
        sub_1800660d[arg1][stor21.length + 1].field_1024 = 1
        emit 0xbe729021: arg1, stor14, sub_1800660d[arg1][stor21.length + 1].field_768, block.timestamp, sub_1800660d[arg1][stor21.length + 1].field_0, ownerOf[arg1]
    return 1
}



}
