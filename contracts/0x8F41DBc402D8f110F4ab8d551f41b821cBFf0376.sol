contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of address ownerOf;
mapping of address approved;
mapping of uint256 balanceOf;
mapping of uint8 stor4;
address owner;
uint256 fee;
array of uint256 name;
array of uint256 symbol;
array of uint256 tokenURI;

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor0[Mask(32, 224, arg1)])
}

function name() {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0, 'Invalid token id'
    return approved[arg1]
}

function totalSupply() {
    return stor7.length
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0, 'Invalid address'
    return ownerOf[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0, 'Invalid address'
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

function fee() {
    return fee
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(stor4[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if arg1 == msg.sender:
        revert with 0, 'Cannot be owner'
    stor4[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f6e6c7920746865206f776e65722063616e20706572666f726d207468697320616374696f,
                    mem[202 len 26]
    emit OwnershipRenounced(owner);
    owner = 0
}

function setFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f6e6c7920746865206f776e65722063616e20706572666f726d207468697320616374696f,
                    mem[202 len 26]
    fee = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not ownerOf[arg2]:
        revert with 0, 'Invalid address'
    if arg1 == ownerOf[arg2]:
        revert with 0, 'Cannot be owner'
    if ownerOf[arg2] != msg.sender:
        require stor4[stor1[arg2]][address(msg.sender)]
    approved[arg2] = arg1
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f6e6c7920746865206f776e65722063616e20706572666f726d207468697320616374696f,
                    mem[202 len 26]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0xfe596f752063616e6e6f74207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[203 len 25]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not ownerOf[arg3]:
        revert with 0, 'Invalid address'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'Invalid token id'
        if approved[arg3] != msg.sender:
            if not stor4[stor1[arg3]][address(msg.sender)]:
                revert with 0, 'Address not approved'
    if not ownerOf[arg3]:
        revert with 0, 'Invalid address'
    if ownerOf[arg3] != arg1:
        revert with 0, 'Not the correct owner'
    if not arg2:
        revert with 0, 'Invalid address'
    if approved[arg3]:
        approved[arg3] = 0
    require 1 <= balanceOf[address(arg1)]
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
}

function updateTitle(uint256 arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f6e6c7920746865206f776e65722063616e20706572666f726d207468697320616374696f,
                    mem[202 len 26]
    require arg1 < stor7.length
    stor7[arg1].field_0 = (2 * arg2.length) + 1
    s = 0
    idx = arg2 + 36
    while arg2 + arg2.length + 36 > idx:
        stor7[(7 * arg1) + s].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg2.length + 31) >> 5
    while stor7[arg1].length + 31 / 32 > idx:
        stor7[(7 * arg1) + idx].field_0 = 0
        idx = idx + 1
        continue 
}

function removePuppy(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f6e6c7920746865206f776e65722063616e20706572666f726d207468697320616374696f,
                    mem[202 len 26]
    require arg1 < stor7.length
    stor7[arg1].field_0 = 0
    if 31 < stor7[arg1].length:
        idx = 0
        while stor7[arg1].length + 31 / 32 > idx:
            stor7[(7 * arg1) + idx].field_0 = 0
            idx = idx + 1
            continue 
    stor7[arg1].field_256 = 0
    stor7[arg1].field_512 = 0
    if 31 < stor[(7 * arg1) + ('name', 'stor7', 7) + 2].length:
        idx = 0
        while stor[(7 * arg1) + ('name', 'stor7', 7) + 2].length + 31 / 32 > idx:
            stor[idx + sha3((7 * arg1) + ('name', 'stor7', 7) + 2)].field_0 = 0
            idx = idx + 1
            continue 
    stor7[arg1].field_768 = 0
    stor7[arg1].field_1024 = 0
    stor7[arg1].field_1280 = 0
    stor7[arg1].field_1536 = 0
    emit PuppyRemoved(arg1);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not ownerOf[arg3]:
        revert with 0, 'Invalid address'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'Invalid token id'
        if approved[arg3] != msg.sender:
            if not stor4[stor1[arg3]][address(msg.sender)]:
                revert with 0, 'Address not approved'
    if not ownerOf[arg3]:
        revert with 0, 'Invalid address'
    if ownerOf[arg3] != arg1:
        revert with 0, 'Not the correct owner'
    if not arg2:
        revert with 0, 'Invalid address'
    if approved[arg3]:
        approved[arg3] = 0
    require 1 <= balanceOf[address(arg1)]
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721 check not passed'
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if not ownerOf[arg3]:
        revert with 0, 'Invalid address'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'Invalid token id'
        if approved[arg3] != msg.sender:
            if not stor4[stor1[arg3]][address(msg.sender)]:
                revert with 0, 'Address not approved'
    if not ownerOf[arg3]:
        revert with 0, 'Invalid address'
    if ownerOf[arg3] != arg1:
        revert with 0, 'Not the correct owner'
    if not arg2:
        revert with 0, 'Invalid address'
    if approved[arg3]:
        approved[arg3] = 0
    require 1 <= balanceOf[address(arg1)]
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721 check not passed'
}

function getPuppy(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < stor7.length
    mem[96] = stor7[arg1].length
    mem[0] = (7 * arg1) + sha3(7)
    mem[128] = stor7[arg1].field_0
    idx = 128
    s = 0
    while stor7[arg1].length + 96 > idx:
        mem[idx + 32] = stor7[(7 * arg1) + s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor7[arg1].length) + 160] = stor7[arg1].field_256
    require stor7[arg1].field_1280 <= 1
    mem[ceil32(stor7[arg1].length) + 192] = stor7[arg1].field_1280
    mem[ceil32(stor7[arg1].length) + 224] = stor7[arg1].field_768
    mem[ceil32(stor7[arg1].length) + 256] = stor7[arg1].field_1024
    mem[ceil32(stor7[arg1].length) + 288] = 0
    mem[ceil32(stor7[arg1].length) + 128] = 192
    mem[ceil32(stor7[arg1].length) + 320] = stor7[arg1].length
    mem[ceil32(stor7[arg1].length) + 352 len ceil32(stor7[arg1].length)] = mem[128 len ceil32(stor7[arg1].length)]
    if not stor7[arg1].length % 32:
        return 192, 
               stor7[arg1].field_256,
               stor7[arg1].field_1280,
               stor7[arg1].field_768,
               stor7[arg1].field_1024,
               0,
               stor7[arg1].length,
               mem[128 len stor7[arg1].length]
    mem[floor32(stor7[arg1].length) + ceil32(stor7[arg1].length) + 352] = mem[floor32(stor7[arg1].length) + ceil32(stor7[arg1].length) + -stor7[arg1].length % 32 + 384 len stor7[arg1].length % 32]
    return 192, 
           stor7[arg1].field_256,
           stor7[arg1].field_1280,
           stor7[arg1].field_768,
           stor7[arg1].field_1024,
           0,
           stor7[arg1].length,
           mem[128 len ceil32(stor7[arg1].length)],
           mem[(2 * ceil32(stor7[arg1].length)) + 352 len floor32(stor7[arg1].length) + -ceil32(stor7[arg1].length) + 32]
}

function sub_517fa8bf(?) payable {
    require calldata.size - 4 >= 224
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f6e6c7920746865206f776e65722063616e20706572666f726d207468697320616374696f,
                    mem[202 len 26]
    if msg.value < fee:
        revert with 0, 'Fee too small'
    mem[ceil32(arg1.length) + 352] = arg3.length
    mem[ceil32(arg1.length) + 384 len arg3.length] = arg3[all]
    mem[ceil32(arg1.length) + arg3.length + 384] = 0
    require arg4 <= 1
    stor7.length++
    stor7[stor7.length][].field_0 = Array(len=arg1.length, data=arg1[all])
    stor7[stor7.length].field_256 = arg2
    stor[sha3((7 * stor7.length) + ('name', 'stor7', 7) + 2)][].field_0 = Array(len=Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 384 len -arg1.length + ceil32(arg1.length)], data=mem[ceil32(arg1.length) + 384 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 384 len -arg1.length + ceil32(arg1.length)]])
    stor7[stor7.length].field_768 = arg5
    stor7[stor7.length].field_1024 = arg6
    require arg4 <= 1
    stor7[stor7.length].field_1280 = arg4
    stor7[stor7.length].field_1536 = block.timestamp
    ownerOf[stor7.length] = arg7
    require balanceOf[address(arg7)] + 1 >= balanceOf[address(arg7)]
    balanceOf[address(arg7)]++
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 384] = stor7.length
    emit PuppyAdded(uint256 arg1):
                    Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0),
                    mem[ceil32(arg1.length) + arg3.length + 416 len -arg3.length + ceil32(arg3.length)],
}

function pack(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < stor7.length
    mem[96] = stor7[arg1].length
    mem[128] = stor7[arg1].field_0
    idx = 128
    s = 0
    while stor7[arg1].length + 96 > idx:
        mem[idx + 32] = stor7[(7 * arg1) + s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor7[arg1].length) + ceil32(stor[(7 * arg1) + ('name', 'stor7', 7) + 2].length) + 160
    mem[ceil32(stor7[arg1].length) + 128] = stor[(7 * arg1) + ('name', 'stor7', 7) + 2].length
    mem[0] = (7 * arg1) + sha3(7) + 2
    mem[ceil32(stor7[arg1].length) + 160] = stor[sha3((7 * arg1) + ('name', 'stor7', 7) + 2)].field_0
    idx = ceil32(stor7[arg1].length) + 160
    s = 0
    while ceil32(stor7[arg1].length) + stor[(7 * arg1) + ('name', 'stor7', 7) + 2].length + 128 > idx:
        mem[idx + 32] = stor[s + sha3((7 * arg1) + ('name', 'stor7', 7) + 2)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor7[arg1].length) + ceil32(stor[(7 * arg1) + ('name', 'stor7', 7) + 2].length) + 192] = stor7[arg1].field_256
    mem[ceil32(stor7[arg1].length) + ceil32(stor[(7 * arg1) + ('name', 'stor7', 7) + 2].length) + 256] = stor7[arg1].field_768
    mem[ceil32(stor7[arg1].length) + ceil32(stor[(7 * arg1) + ('name', 'stor7', 7) + 2].length) + 288] = stor7[arg1].field_1024
    require stor7[arg1].field_1280 <= 1
    mem[ceil32(stor7[arg1].length) + ceil32(stor[(7 * arg1) + ('name', 'stor7', 7) + 2].length) + 320] = stor7[arg1].field_1280
    mem[ceil32(stor7[arg1].length) + ceil32(stor[(7 * arg1) + ('name', 'stor7', 7) + 2].length) + 352] = stor7[arg1].field_1536
    mem[ceil32(stor7[arg1].length) + ceil32(stor[(7 * arg1) + ('name', 'stor7', 7) + 2].length) + 160] = 224
    mem[ceil32(stor7[arg1].length) + ceil32(stor[(7 * arg1) + ('name', 'stor7', 7) + 2].length) + 384] = stor7[arg1].length
    mem[ceil32(stor7[arg1].length) + ceil32(stor[(7 * arg1) + ('name', 'stor7', 7) + 2].length) + 416 len ceil32(stor7[arg1].length)] = mem[128 len ceil32(stor7[arg1].length)]
    mem[ceil32(stor7[arg1].length) + ceil32(stor[(7 * arg1) + ('name', 'stor7', 7) + 2].length) + 224] = stor7[arg1].length + 256
    mem[stor7[arg1].length + ceil32(stor7[arg1].length) + ceil32(stor[(7 * arg1) + ('name', 'stor7', 7) + 2].length) + 416] = stor[(7 * arg1) + ('name', 'stor7', 7) + 2].length
    mem[stor7[arg1].length + ceil32(stor7[arg1].length) + ceil32(stor[(7 * arg1) + ('name', 'stor7', 7) + 2].length) + 448 len ceil32(stor[(7 * arg1) + ('name', 'stor7', 7) + 2].length)] = mem[ceil32(stor7[arg1].length) + 160 len ceil32(stor[(7 * arg1) + ('name', 'stor7', 7) + 2].length)]
    if not stor[(7 * arg1) + ('name', 'stor7', 7) + 2].length % 32:
        return Array(len=stor7[arg1].length, data=mem[128 len ceil32(stor7[arg1].length)], mem[(2 * ceil32(stor7[arg1].length)) + ceil32(stor[(7 * arg1) + ('name', 'stor7', 7) + 2].length) + 416 len stor[(7 * arg1) + ('name', 'stor7', 7) + 2].length + stor7[arg1].length + -ceil32(stor7[arg1].length) + 32]), 
               stor7[arg1].field_256,
               stor7[arg1].length + 256,
               stor7[arg1].field_768,
               stor7[arg1].field_1024,
               stor7[arg1].field_1280,
               stor7[arg1].field_1536
    mem[floor32(stor[(7 * arg1) + ('name', 'stor7', 7) + 2].length) + stor7[arg1].length + ceil32(stor7[arg1].length) + ceil32(stor[(7 * arg1) + ('name', 'stor7', 7) + 2].length) + 448] = mem[floor32(stor[(7 * arg1) + ('name', 'stor7', 7) + 2].length) + stor7[arg1].length + ceil32(stor7[arg1].length) + ceil32(stor[(7 * arg1) + ('name', 'stor7', 7) + 2].length) + -stor[(7 * arg1) + ('name', 'stor7', 7) + 2].length % 32 + 480 len stor[(7 * arg1) + ('name', 'stor7', 7) + 2].length % 32]
    return Array(len=stor7[arg1].length, data=mem[128 len ceil32(stor7[arg1].length)], mem[(2 * ceil32(stor7[arg1].length)) + ceil32(stor[(7 * arg1) + ('name', 'stor7', 7) + 2].length) + 416 len floor32(stor[(7 * arg1) + ('name', 'stor7', 7) + 2].length) + stor7[arg1].length + -ceil32(stor7[arg1].length) + 64]), 
           stor7[arg1].field_256,
           stor7[arg1].length + 256,
           stor7[arg1].field_768,
           stor7[arg1].field_1024,
           stor7[arg1].field_1280,
           stor7[arg1].field_1536
}



}
