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
address owner;
array of uint256 metadataURI;
uint256 latestTokenId;
array of struct stor15;
mapping of struct stor16;
mapping of uint32 sub_8c508ab9;

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor0[Mask(32, 224, arg1)])
}

function metadataURI() payable {
    return metadataURI[0 len metadataURI.length]
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

function latestTokenId() payable {
    return latestTokenId
}

function sub_8c508ab9(?) payable {
    require calldata.size - 4 >= 32
    return sub_8c508ab9[arg1]
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function tokenURI(uint256 arg1) payable {
    return tokenURI[arg1][0 len tokenURI[arg1].length]
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

function renounceOwnership() payable {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
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

function sub_4895c460(?) payable {
    if not stor15.length:
        mem[(32 * stor15.length) + 128] = 32
        mem[(32 * stor15.length) + 160] = stor15.length
        mem[(32 * stor15.length) + 192 len floor32(stor15.length)] = mem[128 len floor32(stor15.length)]
        return memory
          from (32 * stor15.length) + 128
           len (96 * stor15.length) + 64
    mem[128] = uint256(stor15.field_0)
    idx = 128
    s = 0
    while (32 * stor15.length) + 96 > idx:
        mem[idx + 32] = stor15[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor15.length) + 192 len floor32(stor15.length)] = mem[128 len floor32(stor15.length)]
    return Array(len=stor15.length, data=mem[128 len floor32(stor15.length)], mem[(32 * stor15.length) + floor32(stor15.length) + 192 len (32 * stor15.length) - floor32(stor15.length)]), 
}

function sub_34f752b5(?) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require msg.sender == owner
    if not stor16[arg1].field_576:
        require block.timestamp >= stor16[arg1].field_512
    require sub_8c508ab9[arg1] < stor16[arg1].field_544
    require stor16[arg1].field_584
    if not stor16[arg1].field_576:
        require block.timestamp >= stor16[arg1].field_512
    require sub_8c508ab9[arg1] < stor16[arg1].field_544
    require arg3 == latestTokenId + 1
    require arg2
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    balanceOf[address(arg2)]++
    emit Transfer(0, arg2, arg3);
    stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    stor8[arg3] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = arg3
    require ownerOf[arg3]
    tokenURI[arg3][] = Array(len=arg4.length, data=arg4[all])
    latestTokenId++
    mem[ceil32(arg4.length) + 128] = 0
    return Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
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
        call arg2.0x150b7a02 with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function sub_152a6af7(?) payable {
    require calldata.size - 4 >= 160
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    require block.timestamp < arg3
    require msg.sender == owner
    require not stor16[arg1[all]].field_584
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 96
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = 96
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 256] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 288] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 320] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 352] = 96
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 384] = ceil32(arg1.length) + 128
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 416] = arg3
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 448] = arg4
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 480] = arg5
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 512] = 1
    stor16[arg1[all]][].field_0 = Array(len=arg1.length, data=arg1[all])
    stor16[arg1[all]][1][].field_0 = Array(len=Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)], data=mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
    stor16[arg1[all]].field_512 = arg3
    stor16[arg1[all]].field_544 = arg4
    stor16[arg1[all]].field_576 = Mask(192, 0, arg5)
    stor16[arg1[all]].field_584 = 1
    stor15.length++
    stor15[stor15.length].field_0 = sha3(arg1[all])
    sub_8c508ab9[arg1[all]] = 0
    return sha3(arg1[all])
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

function sub_af2cff31(?) payable {
    require calldata.size - 4 >= 32
    mem[32] = 16
    mem[96] = stor16[arg1].length
    mem[0] = sha3(arg1, 16)
    mem[128] = stor16[arg1].field_0
    idx = 128
    s = 0
    while stor16[arg1].length + 96 > idx:
        mem[idx + 32] = stor16[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor16[arg1].length) + ceil32(stor16[arg1][1].length) + 160
    mem[ceil32(stor16[arg1].length) + 128] = stor16[arg1][1].length
    mem[ceil32(stor16[arg1].length) + 160] = stor16[arg1][1].field_0
    idx = ceil32(stor16[arg1].length) + 160
    s = 0
    while ceil32(stor16[arg1].length) + stor16[arg1][1].length + 128 > idx:
        mem[idx + 32] = stor16[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor16[arg1].length) + ceil32(stor16[arg1][1].length) + 224] = stor16[arg1].field_512
    mem[ceil32(stor16[arg1].length) + ceil32(stor16[arg1][1].length) + 256] = stor16[arg1].field_544
    mem[ceil32(stor16[arg1].length) + ceil32(stor16[arg1][1].length) + 288] = bool(stor16[arg1].field_576)
    mem[ceil32(stor16[arg1].length) + ceil32(stor16[arg1][1].length) + 320] = bool(stor16[arg1].field_584)
    mem[ceil32(stor16[arg1].length) + ceil32(stor16[arg1][1].length) + 160] = 192
    mem[ceil32(stor16[arg1].length) + ceil32(stor16[arg1][1].length) + 352] = stor16[arg1].length
    mem[ceil32(stor16[arg1].length) + ceil32(stor16[arg1][1].length) + 384 len ceil32(stor16[arg1].length)] = mem[128 len ceil32(stor16[arg1].length)]
    mem[ceil32(stor16[arg1].length) + ceil32(stor16[arg1][1].length) + 192] = stor16[arg1].length + 224
    mem[stor16[arg1].length + ceil32(stor16[arg1].length) + ceil32(stor16[arg1][1].length) + 384] = stor16[arg1][1].length
    mem[stor16[arg1].length + ceil32(stor16[arg1].length) + ceil32(stor16[arg1][1].length) + 416 len ceil32(stor16[arg1][1].length)] = mem[ceil32(stor16[arg1].length) + 160 len ceil32(stor16[arg1][1].length)]
    if not stor16[arg1][1].length % 32:
        return Array(len=stor16[arg1].length, data=mem[128 len ceil32(stor16[arg1].length)], mem[(2 * ceil32(stor16[arg1].length)) + ceil32(stor16[arg1][1].length) + 384 len stor16[arg1][1].length + stor16[arg1].length + -ceil32(stor16[arg1].length) + 32]), 
               stor16[arg1].length + 224,
               stor16[arg1].field_512,
               stor16[arg1].field_512,
               bool(stor16[arg1].field_576),
               bool(stor16[arg1].field_584)
    mem[floor32(stor16[arg1][1].length) + stor16[arg1].length + ceil32(stor16[arg1].length) + ceil32(stor16[arg1][1].length) + 416] = mem[floor32(stor16[arg1][1].length) + stor16[arg1].length + ceil32(stor16[arg1].length) + ceil32(stor16[arg1][1].length) + -stor16[arg1][1].length % 32 + 448 len stor16[arg1][1].length % 32]
    return Array(len=stor16[arg1].length, data=mem[128 len ceil32(stor16[arg1].length)], mem[(2 * ceil32(stor16[arg1].length)) + ceil32(stor16[arg1][1].length) + 384 len floor32(stor16[arg1][1].length) + stor16[arg1].length + -ceil32(stor16[arg1].length) + 64]), 
           stor16[arg1].length + 224,
           stor16[arg1].field_512,
           stor16[arg1].field_512,
           bool(stor16[arg1].field_576),
           bool(stor16[arg1].field_584)
}



}
