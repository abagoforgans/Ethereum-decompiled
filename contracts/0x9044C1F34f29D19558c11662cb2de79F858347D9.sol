contract main {




// =====================  Runtime code  =====================


#
#  - getMetadata(uint256 arg1)
#
const InterfaceId_ERC165 = 0x1ffc9a700000000000000000000000000000000000000000000000000000000


mapping of uint8 stor0;
mapping of address ownerOf;
mapping of address approved;
mapping of uint256 balanceOf;
mapping of uint8 stor4;
array of uint256 name;
array of uint256 symbol;
array of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor8;
array of uint256 tokenByIndex;
mapping of uint256 stor10;
array of uint256 tokenURI;
address owner;
array of struct stor13;
uint256 stor14;
uint256 minPurchase;

function supportsInterface(bytes4 arg1) {
    return bool(stor0[Mask(32, 224, arg1)])
}

function name() {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) {
    return approved[arg1]
}

function getMinPurchase() {
    return minPurchase
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

function symbol() {
    return symbol[0 len symbol.length]
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

function setMinPurchase(uint256 arg1) {
    require msg.sender == owner
    minPurchase = arg1
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

function approve(address arg1, uint256 arg2) {
    require ownerOf[arg2]
    require ownerOf[arg2] != arg1
    if ownerOf[arg2] != msg.sender:
        require stor4[stor1[arg2]][address(msg.sender)]
    approved[arg2] = arg1
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function sub_166fbbf2(?) {
    require msg.sender == owner
    require ownerOf[arg1]
    stor13[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
    stor13[arg1][1][].field_0 = Array(len=arg3.length, data=arg3[all])
    stor13[arg1][2][].field_0 = Array(len=arg4.length, data=arg4[all])
}

function purchaseToken() payable {
    require msg.value >= minPurchase
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require msg.sender
    require not ownerOf[stor14]
    ownerOf[stor14] = msg.sender
    require balanceOf[address(msg.sender)] + 1 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)]++
    tokenOfOwnerByIndex[address(msg.sender)]++
    tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor14
    stor8[stor14] = tokenOfOwnerByIndex[address(msg.sender)]
    emit Transfer(0, msg.sender, stor14);
    stor10[stor14] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = stor14
    stor14++
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
    require 1 <= tokenOfOwnerByIndex[address(arg1)]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    require stor8[arg3] < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][stor8[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor8[arg3] = 0
    stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    stor8[arg3] = tokenOfOwnerByIndex[address(arg2)]
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
    require 1 <= tokenOfOwnerByIndex[address(arg1)]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    require stor8[arg3] < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][stor8[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor8[arg3] = 0
    stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    stor8[arg3] = tokenOfOwnerByIndex[address(arg2)]
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
    require 1 <= tokenOfOwnerByIndex[address(arg1)]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    require stor8[arg3] < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][stor8[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor8[arg3] = 0
    stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    stor8[arg3] = tokenOfOwnerByIndex[address(arg2)]
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

function metadata(uint256 arg1) {
    mem[32] = 13
    mem[96] = stor13[arg1].length
    mem[128] = stor13[arg1].field_0
    idx = 128
    s = 0
    while stor13[arg1].length + 96 > idx:
        mem[idx + 32] = stor13[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor13[arg1].length) + 128] = stor13[arg1][1].length
    mem[ceil32(stor13[arg1].length) + 160] = stor13[arg1][1].field_0
    idx = ceil32(stor13[arg1].length) + 160
    s = 0
    while ceil32(stor13[arg1].length) + stor13[arg1][1].length + 128 > idx:
        mem[idx + 32] = stor13[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor13[arg1].length) + ceil32(stor13[arg1][1].length) + ceil32(stor13[arg1][2].length) + 192
    mem[ceil32(stor13[arg1].length) + ceil32(stor13[arg1][1].length) + 160] = stor13[arg1][2].length
    mem[0] = sha3(arg1, 13) + 2
    mem[ceil32(stor13[arg1].length) + ceil32(stor13[arg1][1].length) + 192] = stor13[arg1][2].field_0
    idx = ceil32(stor13[arg1].length) + ceil32(stor13[arg1][1].length) + 192
    s = 0
    while ceil32(stor13[arg1].length) + ceil32(stor13[arg1][1].length) + stor13[arg1][2].length + 160 > idx:
        mem[idx + 32] = stor13[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor13[arg1].length) + ceil32(stor13[arg1][1].length) + ceil32(stor13[arg1][2].length) + 192] = 96
    mem[ceil32(stor13[arg1].length) + ceil32(stor13[arg1][1].length) + ceil32(stor13[arg1][2].length) + 288] = stor13[arg1].length
    mem[ceil32(stor13[arg1].length) + ceil32(stor13[arg1][1].length) + ceil32(stor13[arg1][2].length) + 320 len ceil32(stor13[arg1].length)] = mem[128 len ceil32(stor13[arg1].length)]
    mem[ceil32(stor13[arg1].length) + ceil32(stor13[arg1][1].length) + ceil32(stor13[arg1][2].length) + 224] = stor13[arg1].length + 128
    mem[stor13[arg1].length + ceil32(stor13[arg1].length) + ceil32(stor13[arg1][1].length) + ceil32(stor13[arg1][2].length) + 320] = stor13[arg1][1].length
    mem[stor13[arg1].length + ceil32(stor13[arg1].length) + ceil32(stor13[arg1][1].length) + ceil32(stor13[arg1][2].length) + 352 len ceil32(stor13[arg1][1].length)] = mem[ceil32(stor13[arg1].length) + 160 len ceil32(stor13[arg1][1].length)]
    if not stor13[arg1][1].length % 32:
        mem[ceil32(stor13[arg1].length) + ceil32(stor13[arg1][1].length) + ceil32(stor13[arg1][2].length) + 256] = stor13[arg1][1].length + stor13[arg1].length + 160
        mem[stor13[arg1][1].length + stor13[arg1].length + ceil32(stor13[arg1].length) + ceil32(stor13[arg1][1].length) + ceil32(stor13[arg1][2].length) + 352] = stor13[arg1][2].length
        mem[stor13[arg1][1].length + stor13[arg1].length + ceil32(stor13[arg1].length) + ceil32(stor13[arg1][1].length) + ceil32(stor13[arg1][2].length) + 384 len ceil32(stor13[arg1][2].length)] = mem[ceil32(stor13[arg1].length) + ceil32(stor13[arg1][1].length) + 192 len ceil32(stor13[arg1][2].length)]
        if not stor13[arg1][2].length % 32:
            return Array(len=stor13[arg1].length, data=mem[128 len ceil32(stor13[arg1].length)], mem[(2 * ceil32(stor13[arg1].length)) + ceil32(stor13[arg1][1].length) + ceil32(stor13[arg1][2].length) + 320 len stor13[arg1][2].length + stor13[arg1][1].length + stor13[arg1].length + -ceil32(stor13[arg1].length) + 64]), 
                   stor13[arg1].length + 128,
                   stor13[arg1][1].length + stor13[arg1].length + 160
        mem[floor32(stor13[arg1][2].length) + stor13[arg1][1].length + stor13[arg1].length + ceil32(stor13[arg1].length) + ceil32(stor13[arg1][1].length) + ceil32(stor13[arg1][2].length) + 384] = mem[floor32(stor13[arg1][2].length) + stor13[arg1][1].length + stor13[arg1].length + ceil32(stor13[arg1].length) + ceil32(stor13[arg1][1].length) + ceil32(stor13[arg1][2].length) + -stor13[arg1][2].length % 32 + 416 len stor13[arg1][2].length % 32]
        return Array(len=stor13[arg1].length, data=mem[128 len ceil32(stor13[arg1].length)], mem[(2 * ceil32(stor13[arg1].length)) + ceil32(stor13[arg1][1].length) + ceil32(stor13[arg1][2].length) + 320 len floor32(stor13[arg1][2].length) + stor13[arg1][1].length + stor13[arg1].length + -ceil32(stor13[arg1].length) + 96]), 
               stor13[arg1].length + 128,
               stor13[arg1][1].length + stor13[arg1].length + 160
    mem[floor32(stor13[arg1][1].length) + stor13[arg1].length + ceil32(stor13[arg1].length) + ceil32(stor13[arg1][1].length) + ceil32(stor13[arg1][2].length) + 352] = mem[floor32(stor13[arg1][1].length) + stor13[arg1].length + ceil32(stor13[arg1].length) + ceil32(stor13[arg1][1].length) + ceil32(stor13[arg1][2].length) + -stor13[arg1][1].length % 32 + 384 len stor13[arg1][1].length % 32]
    mem[ceil32(stor13[arg1].length) + ceil32(stor13[arg1][1].length) + ceil32(stor13[arg1][2].length) + 256] = floor32(stor13[arg1][1].length) + stor13[arg1].length + 192
    mem[floor32(stor13[arg1][1].length) + stor13[arg1].length + ceil32(stor13[arg1].length) + ceil32(stor13[arg1][1].length) + ceil32(stor13[arg1][2].length) + 384] = stor13[arg1][2].length
    mem[floor32(stor13[arg1][1].length) + stor13[arg1].length + ceil32(stor13[arg1].length) + ceil32(stor13[arg1][1].length) + ceil32(stor13[arg1][2].length) + 416 len ceil32(stor13[arg1][2].length)] = mem[ceil32(stor13[arg1].length) + ceil32(stor13[arg1][1].length) + 192 len ceil32(stor13[arg1][2].length)]
    if not stor13[arg1][2].length % 32:
        return Array(len=stor13[arg1].length, data=mem[128 len ceil32(stor13[arg1].length)], mem[(2 * ceil32(stor13[arg1].length)) + ceil32(stor13[arg1][1].length) + ceil32(stor13[arg1][2].length) + 320 len stor13[arg1][2].length + floor32(stor13[arg1][1].length) + stor13[arg1].length + -ceil32(stor13[arg1].length) + 96]), 
               stor13[arg1].length + 128,
               floor32(stor13[arg1][1].length) + stor13[arg1].length + 192
    mem[floor32(stor13[arg1][2].length) + floor32(stor13[arg1][1].length) + stor13[arg1].length + ceil32(stor13[arg1].length) + ceil32(stor13[arg1][1].length) + ceil32(stor13[arg1][2].length) + 416] = mem[floor32(stor13[arg1][2].length) + floor32(stor13[arg1][1].length) + stor13[arg1].length + ceil32(stor13[arg1].length) + ceil32(stor13[arg1][1].length) + ceil32(stor13[arg1][2].length) + -stor13[arg1][2].length % 32 + 448 len stor13[arg1][2].length % 32]
    return Array(len=stor13[arg1].length, data=mem[128 len ceil32(stor13[arg1].length)], mem[(2 * ceil32(stor13[arg1].length)) + ceil32(stor13[arg1][1].length) + ceil32(stor13[arg1][2].length) + 320 len floor32(stor13[arg1][2].length) + floor32(stor13[arg1][1].length) + stor13[arg1].length + -ceil32(stor13[arg1].length) + 128]), 
           stor13[arg1].length + 128,
           floor32(stor13[arg1][1].length) + stor13[arg1].length + 192
}



}
