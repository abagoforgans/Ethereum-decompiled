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
mapping of uint8 stor9;
address owner;
mapping of uint256 sub_ec6858d7;
array of uint256 name;
array of uint256 symbol;
array of struct baseTokenURI;

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
    require arg2 < tokenOfOwnerByIndex[address(arg1)]
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < tokenByIndex.length
    return tokenByIndex[arg1]
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

function symbol() payable {
    return symbol[0 len symbol.length]
}

function isMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor9[address(arg1)])
}

function baseTokenURI() payable {
    return baseTokenURI[0 len baseTokenURI.length].field_0
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(stor4[address(arg1)][address(arg2)])
}

function sub_ec6858d7(?) payable {
    require calldata.size - 4 >= 32
    return sub_ec6858d7[arg1]
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

function renounceMinter() payable {
    require msg.sender
    require stor9[address(msg.sender)]
    stor9[address(msg.sender)] = 0
    emit MinterRemoved(msg.sender);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function addMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    require not stor9[address(arg1)]
    stor9[address(arg1)] = 1
    emit MinterAdded(arg1);
}

function renounceMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    require stor9[address(arg1)]
    stor9[address(arg1)] = 0
    emit MinterRemoved(arg1);
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

function setBaseTokenURI(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require msg.sender == owner
    baseTokenURI[].field_0 = Array(len=arg1.length, data=arg1[all])
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender
    require stor9[address(msg.sender)]
    require tokenByIndex.length + 1 >= tokenByIndex.length
    require arg1
    require not ownerOf[stor7.length + 1]
    ownerOf[stor7.length + 1] = arg1
    balanceOf[address(arg1)]++
    emit Transfer(0, arg1, tokenByIndex.length + 1);
    stor6[stor7.length + 1] = tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)]++
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = tokenByIndex.length + 1
    stor8[stor7.length + 1] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = tokenByIndex.length + 1
    if not ownerOf[stor7.length + 1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0x6e506565706574684261646765733a2073657420746f6b656e20626164676520666f72206e6f6e6578697374656e7420746f6b65,
                    mem[216 len 12]
    sub_ec6858d7[stor7.length + 1] = arg2
    return 1
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

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[32] = 1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0xfe506565706574684261646765733a206765742055524920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[208 len 20]
    mem[96] = baseTokenURI.length
    mem[0] = 14
    mem[128] = uint256(baseTokenURI.field_0)
    idx = 128
    s = 0
    while baseTokenURI.length + 96 > idx:
        mem[idx + 32] = baseTokenURI[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(baseTokenURI.length) + 128] = 0xa76d54ff00000000000000000000000000000000000000000000000000000000
    mem[ceil32(baseTokenURI.length) + 132] = arg1
    require ext_code.size(0x96423cd7f645401d081cc19bd5ea4a5da2211896)
    delegate 0x96423cd7f645401d081cc19bd5ea4a5da2211896.UintToString(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(baseTokenURI.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(baseTokenURI.length) + ceil32(return_data.size) + 128
    require return_data.size >= 32
    _218 = mem[ceil32(baseTokenURI.length) + 128 len 4], Mask(224, 32, arg1) >> 32
    require mem[ceil32(baseTokenURI.length) + 128 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[ceil32(baseTokenURI.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[ceil32(baseTokenURI.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(baseTokenURI.length) + 128] <= 4294967296 and mem[ceil32(baseTokenURI.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[ceil32(baseTokenURI.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(baseTokenURI.length) + 128] + 32 <= return_data.size
    mem[ceil32(baseTokenURI.length) + ceil32(return_data.size) + 128] = 0xf8dc055800000000000000000000000000000000000000000000000000000000
    mem[ceil32(baseTokenURI.length) + ceil32(return_data.size) + 132] = 64
    mem[ceil32(baseTokenURI.length) + ceil32(return_data.size) + 196] = baseTokenURI.length
    mem[ceil32(baseTokenURI.length) + ceil32(return_data.size) + 228 len ceil32(baseTokenURI.length)] = mem[128 len ceil32(baseTokenURI.length)]
    mem[ceil32(baseTokenURI.length) + ceil32(return_data.size) + 164] = baseTokenURI.length + 96
    mem[baseTokenURI.length + ceil32(baseTokenURI.length) + ceil32(return_data.size) + 228] = mem[_218 + ceil32(baseTokenURI.length) + 128]
    _372 = mem[_218 + ceil32(baseTokenURI.length) + 128]
    mem[baseTokenURI.length + ceil32(baseTokenURI.length) + ceil32(return_data.size) + 260 len ceil32(mem[_218 + ceil32(baseTokenURI.length) + 128])] = mem[_218 + ceil32(baseTokenURI.length) + 160 len ceil32(mem[_218 + ceil32(baseTokenURI.length) + 128])]
    if not _372 % 32:
        require ext_code.size(0x96423cd7f645401d081cc19bd5ea4a5da2211896)
        delegate 0x96423cd7f645401d081cc19bd5ea4a5da2211896.0xf8dc0558 with:
             gas gas_remaining wei
            args Array(len=baseTokenURI.length, data=mem[128 len ceil32(baseTokenURI.length)], mem[(2 * ceil32(baseTokenURI.length)) + ceil32(return_data.size) + 228 len _372 + baseTokenURI.length + -ceil32(baseTokenURI.length) + 32]), baseTokenURI.length + 96
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(baseTokenURI.length) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(baseTokenURI.length) + (2 * ceil32(return_data.size)) + 128
        require return_data.size >= 32
        _554 = mem[ceil32(baseTokenURI.length) + ceil32(return_data.size) + 128 len 4], 0
        require mem[ceil32(baseTokenURI.length) + ceil32(return_data.size) + 128 len 4], 0 <= 4294967296
        require mem[ceil32(baseTokenURI.length) + ceil32(return_data.size) + 128 len 4], 0 + 32 <= return_data.size
        require mem[mem[ceil32(baseTokenURI.length) + ceil32(return_data.size) + 128 len 4], 0 + ceil32(baseTokenURI.length) + ceil32(return_data.size) + 128] <= 4294967296 and mem[ceil32(baseTokenURI.length) + ceil32(return_data.size) + 128 len 4], 0 + mem[mem[ceil32(baseTokenURI.length) + ceil32(return_data.size) + 128 len 4], 0 + ceil32(baseTokenURI.length) + ceil32(return_data.size) + 128] + 32 <= return_data.size
        mem[ceil32(baseTokenURI.length) + (2 * ceil32(return_data.size)) + 128] = 32
        mem[ceil32(baseTokenURI.length) + (2 * ceil32(return_data.size)) + 160] = mem[_554 + ceil32(baseTokenURI.length) + ceil32(return_data.size) + 128]
        _566 = mem[_554 + ceil32(baseTokenURI.length) + ceil32(return_data.size) + 128]
        mem[ceil32(baseTokenURI.length) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[_554 + ceil32(baseTokenURI.length) + ceil32(return_data.size) + 128])] = mem[_554 + ceil32(baseTokenURI.length) + ceil32(return_data.size) + 160 len ceil32(mem[_554 + ceil32(baseTokenURI.length) + ceil32(return_data.size) + 128])]
        if not _566 % 32:
            return 32, mem[ceil32(baseTokenURI.length) + (2 * ceil32(return_data.size)) + 160 len _566 + 32]
        mem[floor32(_566) + ceil32(baseTokenURI.length) + (2 * ceil32(return_data.size)) + 192] = mem[floor32(_566) + ceil32(baseTokenURI.length) + (2 * ceil32(return_data.size)) + -(_566 % 32) + 224 len _566 % 32]
        return 32, mem[ceil32(baseTokenURI.length) + (2 * ceil32(return_data.size)) + 160 len floor32(_566) + 64]
    mem[floor32(_372) + baseTokenURI.length + ceil32(baseTokenURI.length) + ceil32(return_data.size) + 260] = mem[floor32(_372) + baseTokenURI.length + ceil32(baseTokenURI.length) + ceil32(return_data.size) + -(_372 % 32) + 292 len _372 % 32]
    require ext_code.size(0x96423cd7f645401d081cc19bd5ea4a5da2211896)
    delegate 0x96423cd7f645401d081cc19bd5ea4a5da2211896.0xf8dc0558 with:
         gas gas_remaining wei
        args Array(len=baseTokenURI.length, data=mem[128 len ceil32(baseTokenURI.length)], mem[(2 * ceil32(baseTokenURI.length)) + ceil32(return_data.size) + 228 len floor32(_372) + baseTokenURI.length + -ceil32(baseTokenURI.length) + 64]), baseTokenURI.length + 96
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(baseTokenURI.length) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(baseTokenURI.length) + (2 * ceil32(return_data.size)) + 128
    require return_data.size >= 32
    _558 = mem[ceil32(baseTokenURI.length) + ceil32(return_data.size) + 128 len 4], 0
    require mem[ceil32(baseTokenURI.length) + ceil32(return_data.size) + 128 len 4], 0 <= 4294967296
    require mem[ceil32(baseTokenURI.length) + ceil32(return_data.size) + 128 len 4], 0 + 32 <= return_data.size
    require mem[mem[ceil32(baseTokenURI.length) + ceil32(return_data.size) + 128 len 4], 0 + ceil32(baseTokenURI.length) + ceil32(return_data.size) + 128] <= 4294967296 and mem[ceil32(baseTokenURI.length) + ceil32(return_data.size) + 128 len 4], 0 + mem[mem[ceil32(baseTokenURI.length) + ceil32(return_data.size) + 128 len 4], 0 + ceil32(baseTokenURI.length) + ceil32(return_data.size) + 128] + 32 <= return_data.size
    mem[ceil32(baseTokenURI.length) + (2 * ceil32(return_data.size)) + 128] = 32
    mem[ceil32(baseTokenURI.length) + (2 * ceil32(return_data.size)) + 160] = mem[_558 + ceil32(baseTokenURI.length) + ceil32(return_data.size) + 128]
    _572 = mem[_558 + ceil32(baseTokenURI.length) + ceil32(return_data.size) + 128]
    mem[ceil32(baseTokenURI.length) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[_558 + ceil32(baseTokenURI.length) + ceil32(return_data.size) + 128])] = mem[_558 + ceil32(baseTokenURI.length) + ceil32(return_data.size) + 160 len ceil32(mem[_558 + ceil32(baseTokenURI.length) + ceil32(return_data.size) + 128])]
    if not _572 % 32:
        return 32, mem[ceil32(baseTokenURI.length) + (2 * ceil32(return_data.size)) + 160 len _572 + 32]
    mem[floor32(_572) + ceil32(baseTokenURI.length) + (2 * ceil32(return_data.size)) + 192] = mem[floor32(_572) + ceil32(baseTokenURI.length) + (2 * ceil32(return_data.size)) + -(_572 % 32) + 224 len _572 % 32]
    return 32, mem[ceil32(baseTokenURI.length) + (2 * ceil32(return_data.size)) + 160 len floor32(_572) + 64]
}



}
