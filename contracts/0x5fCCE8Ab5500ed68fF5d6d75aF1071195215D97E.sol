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
mapping of bool tokenURI;
mapping of uint8 stor12;
address owner;
uint256 stor14;
uint256 currentPrice;
address stor16;
array of uint256 stor17;
uint256 prefix;

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor0[Mask(32, 224, arg1)])
}

function name() {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    require address(ownerOf[arg1])
    return approved[arg1]
}

function totalSupply() {
    return tokenByIndex.length
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require arg2 < balanceOf[address(arg1)]
    require arg2 < tokenOfOwnerByIndex[address(arg1)]
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < tokenByIndex.length
    return tokenByIndex[arg1]
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    require address(ownerOf[arg1])
    return address(ownerOf[arg1])
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return balanceOf[address(arg1)]
}

function prefix() {
    return prefix
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function isMinter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor12[address(arg1)])
}

function tokenURI(uint256 arg1) {
    return uint256(tokenURI[arg1][0 len tokenURI[arg1].length])
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(stor4[address(arg1)][address(arg2)])
}

function getCurrentPrice() {
    require msg.sender == owner
    return currentPrice
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setCurrentPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1 > 0
    currentPrice = arg1
}

function renounceMinter() {
    require msg.sender
    require stor12[address(msg.sender)]
    stor12[address(msg.sender)] = 0
    emit MinterRemoved(msg.sender);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 != msg.sender
    stor4[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function addMinter(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor12[address(msg.sender)]
    require arg1
    require not stor12[address(arg1)]
    stor12[address(arg1)] = 1
    emit MinterAdded(arg1);
}

function withdraw() {
    require msg.sender == owner
    call stor16 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit EventWithdraw(msg.sender, eth.balance(this.address));
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require address(ownerOf[arg2])
    require arg1 != address(ownerOf[arg2])
    if address(ownerOf[arg2]) != msg.sender:
        require stor4[address(stor1[arg2])][address(msg.sender)]
    approved[arg2] = arg1
    emit Approval(address(ownerOf[arg2]), arg1, arg2);
}

function mint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender
    require stor12[address(msg.sender)]
    require arg1
    require not address(ownerOf[arg2])
    address(ownerOf[arg2]) = arg1
    require balanceOf[address(arg1)] + 1 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)]++
    emit Transfer(0, arg1, arg2);
    stor6[arg2] = tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)]++
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = arg2
    stor8[arg2] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = arg2
    return 1
}

function sub_95335228(?) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require msg.sender == owner
    require arg1
    require not address(ownerOf[arg2])
    address(ownerOf[arg2]) = arg1
    require balanceOf[address(arg1)] + 1 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)]++
    emit Transfer(0, arg1, arg2);
    stor6[arg2] = tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)]++
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = arg2
    stor8[arg2] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = arg2
    require address(ownerOf[arg2])
    uint256(tokenURI[arg2][]) = Array(len=arg3.length, data=arg3[all])
    require stor14 + 1 >= stor14
    stor14++
}

function mintWithTokenURI(address arg1, uint256 arg2, string arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require msg.sender
    require stor12[address(msg.sender)]
    require arg1
    require not address(ownerOf[arg2])
    address(ownerOf[arg2]) = arg1
    require balanceOf[address(arg1)] + 1 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)]++
    emit Transfer(0, arg1, arg2);
    stor6[arg2] = tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)]++
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = arg2
    stor8[arg2] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = arg2
    require address(ownerOf[arg2])
    uint256(tokenURI[arg2][]) = Array(len=arg3.length, data=arg3[all])
    mem[ceil32(arg3.length) + 128] = 1
    return Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require address(ownerOf[arg3])
    require address(ownerOf[arg3])
    if address(ownerOf[arg3]) != msg.sender:
        if approved[arg3] != msg.sender:
            require stor4[address(stor1[arg3])][address(msg.sender)]
    require address(ownerOf[arg3]) == arg1
    require arg2
    if approved[arg3]:
        approved[arg3] = 0
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    address(ownerOf[arg3]) = arg2
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

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require address(ownerOf[arg3])
    require address(ownerOf[arg3])
    if address(ownerOf[arg3]) != msg.sender:
        if approved[arg3] != msg.sender:
            require stor4[address(stor1[arg3])][address(msg.sender)]
    require address(ownerOf[arg3]) == arg1
    require arg2
    if approved[arg3]:
        approved[arg3] = 0
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    address(ownerOf[arg3]) = arg2
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

function _fallback() payable {
    mem[64] = 96
    require msg.sender
    require this.address != msg.sender
    require currentPrice
    require currentPrice
    require not msg.value % currentPrice
    require currentPrice > 0
    require currentPrice
    idx = 0
    s = 0
    while idx < msg.value / currentPrice:
        _75 = mem[64]
        mem[64] = mem[64] + ceil32(stor17.length) + 32
        mem[_75] = stor17.length
        mem[_75 + 32] = stor17
        s = _75 + 32
        t = sha3(17)
        while _75 + stor17.length > s:
            mem[s + 32] = uint256(ownerOf[t])
            s = s + 32
            t = t + 1
            continue 
        require msg.sender
        require not address(ownerOf[stor18 + stor14])
        address(ownerOf[stor18 + stor14]) = msg.sender
        require balanceOf[address(msg.sender)] + 1 >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)]++
        emit Transfer(0, msg.sender, prefix + stor14);
        stor6[stor18 + stor14] = tokenOfOwnerByIndex[address(msg.sender)]
        tokenOfOwnerByIndex[address(msg.sender)]++
        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = prefix + stor14
        stor8[stor18 + stor14] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = prefix + stor14
        require address(ownerOf[stor18 + stor14])
        mem[32] = 11
        mem[0] = sha3(prefix + stor14, 11)
        uint256(tokenURI[stor18 + stor14]) = (2 * stor17.length) + 1
        t = sha3(sha3(prefix + stor14, 11))
        s = _75 + 32
        while _75 + stor17.length + 32 > s:
            stor[t] = mem[s]
            t = t + 1
            s = s + 32
            continue 
        s = sha3(sha3(prefix + stor14, 11)) + (Mask(251, 0, stor17.length + 31) >> 5)
        while sha3(sha3(prefix + stor14, 11)) + (tokenURI[stor18 + stor14].length + 31 / 32) > s:
            stor[s] = 0
            s = s + 1
            continue 
        require stor14 + 1 >= stor14
        stor14++
        mem[mem[64]] = msg.sender
        mem[mem[64] + 32] = prefix + stor14
        emit 0xdb5bbe7d: msg.sender, prefix + stor14
        s = sha3(sha3(prefix + stor14, 11)) + (tokenURI[stor18 + stor14].length + 31 / 32) + 1
        s = prefix + stor14
        continue 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require address(ownerOf[arg3])
    require address(ownerOf[arg3])
    if address(ownerOf[arg3]) != msg.sender:
        if approved[arg3] != msg.sender:
            require stor4[address(stor1[arg3])][address(msg.sender)]
    require address(ownerOf[arg3]) == arg1
    require arg2
    if approved[arg3]:
        approved[arg3] = 0
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    address(ownerOf[arg3]) = arg2
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

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    require address(ownerOf[arg1])
    require address(ownerOf[arg1])
    if address(ownerOf[arg1]) != msg.sender:
        if approved[arg1] != msg.sender:
            require stor4[address(stor1[arg1])][address(msg.sender)]
    require address(ownerOf[arg1])
    require address(ownerOf[arg1]) == address(ownerOf[arg1])
    if approved[arg1]:
        approved[arg1] = 0
    require 1 <= balanceOf[address(stor1[arg1])]
    balanceOf[address(stor1[arg1])]--
    address(ownerOf[arg1]) = 0
    emit Transfer(address(ownerOf[arg1]), 0, arg1);
    require 1 <= tokenOfOwnerByIndex[address(stor1[arg1])]
    if stor6[arg1] != tokenOfOwnerByIndex[address(stor1[arg1])] - 1:
        require tokenOfOwnerByIndex[address(stor1[arg1])] - 1 < tokenOfOwnerByIndex[address(stor1[arg1])]
        require stor6[arg1] < tokenOfOwnerByIndex[address(stor1[arg1])]
        tokenOfOwnerByIndex[address(stor1[arg1])][stor6[arg1]] = tokenOfOwnerByIndex[address(stor1[arg1])][tokenOfOwnerByIndex[address(stor1[arg1])]]
        stor6[stor5[address(stor1[arg1])][stor5[address(stor1[arg1])]]] = stor6[arg1]
    tokenOfOwnerByIndex[address(stor1[arg1])]--
    if tokenOfOwnerByIndex[address(stor1[arg1])] > tokenOfOwnerByIndex[address(stor1[arg1])] - 1:
        idx = tokenOfOwnerByIndex[address(stor1[arg1])] - 1
        while tokenOfOwnerByIndex[address(stor1[arg1])] > idx:
            tokenOfOwnerByIndex[address(stor1[arg1])][idx] = 0
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
    if Mask(255, 1, (256 * not bool(tokenURI[arg1])) - 1 and uint256(tokenURI[arg1])):
        uint256(tokenURI[arg1]) = 0
        if 31 < tokenURI[arg1].length:
            idx = 0
            while tokenURI[arg1].length + 31 / 32 > idx:
                uint256(tokenURI[arg1][idx]) = 0
                idx = idx + 1
                continue 
}

function sub_a132ee20(?) {
    require calldata.size - 4 >= 32
    require address(ownerOf[arg1])
    require address(ownerOf[arg1])
    if address(ownerOf[arg1]) != msg.sender:
        if approved[arg1] != msg.sender:
            require stor4[address(stor1[arg1])][address(msg.sender)]
    require address(ownerOf[arg1])
    require address(ownerOf[arg1]) == address(ownerOf[arg1])
    if approved[arg1]:
        approved[arg1] = 0
    require 1 <= balanceOf[address(stor1[arg1])]
    balanceOf[address(stor1[arg1])]--
    address(ownerOf[arg1]) = 0
    emit Transfer(address(ownerOf[arg1]), 0, arg1);
    require 1 <= tokenOfOwnerByIndex[address(stor1[arg1])]
    if stor6[arg1] != tokenOfOwnerByIndex[address(stor1[arg1])] - 1:
        require tokenOfOwnerByIndex[address(stor1[arg1])] - 1 < tokenOfOwnerByIndex[address(stor1[arg1])]
        require stor6[arg1] < tokenOfOwnerByIndex[address(stor1[arg1])]
        tokenOfOwnerByIndex[address(stor1[arg1])][stor6[arg1]] = tokenOfOwnerByIndex[address(stor1[arg1])][tokenOfOwnerByIndex[address(stor1[arg1])]]
        stor6[stor5[address(stor1[arg1])][stor5[address(stor1[arg1])]]] = stor6[arg1]
    tokenOfOwnerByIndex[address(stor1[arg1])]--
    if tokenOfOwnerByIndex[address(stor1[arg1])] > tokenOfOwnerByIndex[address(stor1[arg1])] - 1:
        idx = tokenOfOwnerByIndex[address(stor1[arg1])] - 1
        while tokenOfOwnerByIndex[address(stor1[arg1])] > idx:
            tokenOfOwnerByIndex[address(stor1[arg1])][idx] = 0
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
    if Mask(255, 1, (256 * not bool(tokenURI[arg1])) - 1 and uint256(tokenURI[arg1])):
        uint256(tokenURI[arg1]) = 0
        if 31 < tokenURI[arg1].length:
            idx = 0
            while tokenURI[arg1].length + 31 / 32 > idx:
                uint256(tokenURI[arg1][idx]) = 0
                idx = idx + 1
                continue 
    emit 0x12d75b3a: msg.sender, arg1
}

function sub_88bd6783(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _744 = mem[(32 * idx) + 128]
        require address(ownerOf[mem[(32 * idx) + 128]])
        require address(ownerOf[mem[(32 * idx) + 128]])
        if address(ownerOf[mem[(32 * idx) + 128]]) != msg.sender:
            if approved[mem[(32 * idx) + 128]] != msg.sender:
                require stor4[address(stor1[mem[(32 * idx) + 128]])][address(msg.sender)]
        require address(ownerOf[mem[(32 * idx) + 128]])
        require address(ownerOf[mem[(32 * idx) + 128]]) == address(ownerOf[mem[(32 * idx) + 128]])
        if approved[mem[(32 * idx) + 128]]:
            approved[mem[(32 * idx) + 128]] = 0
        require 1 <= balanceOf[address(stor1[mem[(32 * idx) + 128]])]
        balanceOf[address(stor1[mem[(32 * idx) + 128]])]--
        address(ownerOf[mem[(32 * idx) + 128]]) = 0
        emit Transfer(address(ownerOf[mem[(32 * idx) + 128]]), 0, mem[(32 * idx) + 128]);
        require 1 <= tokenOfOwnerByIndex[address(stor1[mem[(32 * idx) + 128]])]
        if stor6[mem[(32 * idx) + 128]] != tokenOfOwnerByIndex[address(stor1[mem[(32 * idx) + 128]])] - 1:
            require tokenOfOwnerByIndex[address(stor1[mem[(32 * idx) + 128]])] - 1 < tokenOfOwnerByIndex[address(stor1[mem[(32 * idx) + 128]])]
            require stor6[mem[(32 * idx) + 128]] < tokenOfOwnerByIndex[address(stor1[mem[(32 * idx) + 128]])]
            tokenOfOwnerByIndex[address(stor1[mem[(32 * idx) + 128]])][stor6[mem[(32 * idx) + 128]]] = tokenOfOwnerByIndex[address(stor1[mem[(32 * idx) + 128]])][tokenOfOwnerByIndex[address(stor1[mem[(32 * idx) + 128]])]]
            stor6[stor5[address(stor1[mem[(32 * idx) + 128]])][stor5[address(stor1[mem[(32 * idx) + 128]])]]] = stor6[mem[(32 * idx) + 128]]
        tokenOfOwnerByIndex[address(stor1[mem[(32 * idx) + 128]])]--
        if tokenOfOwnerByIndex[address(stor1[mem[(32 * idx) + 128]])] > tokenOfOwnerByIndex[address(stor1[mem[(32 * idx) + 128]])] - 1:
            s = sha3(sha3(address(ownerOf[mem[(32 * idx) + 128]]), 5)) + tokenOfOwnerByIndex[address(stor1[mem[(32 * idx) + 128]])] - 1
            while sha3(sha3(address(ownerOf[mem[(32 * idx) + 128]]), 5)) + tokenOfOwnerByIndex[address(stor1[mem[(32 * idx) + 128]])] > s:
                stor[s] = 0
                s = s + 1
                continue 
        stor6[mem[(32 * idx) + 128]] = 0
        require 1 <= tokenByIndex.length
        require tokenByIndex.length - 1 < tokenByIndex.length
        require stor8[mem[(32 * idx) + 128]] < tokenByIndex.length
        tokenByIndex[stor8[mem[(32 * idx) + 128]]] = tokenByIndex[tokenByIndex.length]
        stor8[stor7[stor7.length]] = stor8[mem[(32 * idx) + 128]]
        tokenByIndex.length--
        if tokenByIndex.length > tokenByIndex.length - 1:
            s = sha3(7) + tokenByIndex.length - 1
            while sha3(7) + tokenByIndex.length > s:
                stor[s] = 0
                s = s + 1
                continue 
        stor8[mem[(32 * idx) + 128]] = 0
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 11
        if Mask(255, 1, (256 * not bool(tokenURI[mem[(32 * idx) + 128]])) - 1 and uint256(tokenURI[mem[(32 * idx) + 128]])):
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 11
            uint256(tokenURI[mem[(32 * idx) + 128]]) = 0
            if 31 < tokenURI[mem[(32 * idx) + 128]].length:
                mem[0] = sha3(mem[(32 * idx) + 128], 11)
                s = sha3(sha3(mem[(32 * idx) + 128], 11))
                while sha3(sha3(mem[(32 * idx) + 128], 11)) + (tokenURI[mem[(32 * idx) + 128]].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
        mem[(32 * arg1.length) + 128] = msg.sender
        mem[(32 * arg1.length) + 160] = _744
        emit 0x12d75b3a: msg.sender, _744
        idx = idx + 1
        continue 
}



}
