contract main {




// =====================  Runtime code  =====================


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
mapping of bool tokenURI;
address owner;
address stor13;
mapping of struct tradeExpiry;
array of uint256 tokenOfLeasorByIndex;
mapping of uint256 stor16;
mapping of address leasorOf;
mapping of uint256 balanceOfLeasor;
uint256 newId;
uint256 stor20;

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

function balanceOfLeasor(address arg1) {
    require arg1
    return balanceOfLeasor[address(arg1)]
}

function getTradeExpiry(uint256 arg1) {
    require ownerOf[arg1]
    return tradeExpiry[arg1].field_768
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require arg1
    require arg2 < balanceOf[address(arg1)]
    require arg2 < tokenOfOwnerByIndex[address(arg1)]
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function leasorOf(uint256 arg1) {
    require leasorOf[arg1]
    return leasorOf[arg1]
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

function getNewId() {
    return newId
}

function balanceOf(address arg1) {
    require arg1
    return balanceOf[address(arg1)]
}

function getDuration(uint256 arg1) {
    require ownerOf[arg1]
    return tradeExpiry[arg1].field_512
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function tokenOfLeasorByIndex(address arg1, uint256 arg2) {
    require arg1
    require arg2 < balanceOfLeasor[address(arg1)]
    require arg2 < tokenOfLeasorByIndex[address(arg1)]
    return tokenOfLeasorByIndex[address(arg1)][arg2]
}

function getAmount(uint256 arg1) {
    require ownerOf[arg1]
    return tradeExpiry[arg1].field_0
}

function getMetadata(uint256 arg1) {
    require ownerOf[arg1]
    return tradeExpiry[arg1].field_0, 
           address(tradeExpiry[arg1].field_256),
           tradeExpiry[arg1].field_512,
           tradeExpiry[arg1].field_768,
           tradeExpiry[arg1].field_1024,
           bool(uint8(tradeExpiry[arg1].field_1280))
}

function tokenURI(uint256 arg1) {
    return uint256(tokenURI[arg1][0 len tokenURI[arg1].length])
}

function getIsMining(uint256 arg1) {
    require ownerOf[arg1]
    return bool(uint8(tradeExpiry[arg1].field_1280))
}

function metadata(uint256 arg1) {
    return tradeExpiry[arg1].field_0, 
           address(tradeExpiry[arg1].field_256),
           tradeExpiry[arg1].field_512,
           tradeExpiry[arg1].field_768,
           tradeExpiry[arg1].field_1024,
           bool(uint8(tradeExpiry[arg1].field_1280))
}

function isApprovedForAll(address arg1, address arg2) {
    return bool(stor4[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function setLeaseExchange(address arg1) {
    require msg.sender == owner
    stor13 = arg1
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

function totalAmount() {
    idx = 0
    s = 0
    while idx < tokenByIndex.length:
        mem[0] = tokenByIndex[idx]
        mem[32] = 14
        idx = idx + 1
        s = tradeExpiry[stor9[idx]].field_0 + s
        continue 
    return (stor[_8] * tokenByIndex.length)
}

function canRetrieveEMB(address arg1, uint256 arg2) {
    require ownerOf[arg2]
    require address(tradeExpiry[arg2].field_256) == arg1
    if uint8(tradeExpiry[arg2].field_1280):
        return (block.timestamp > tradeExpiry[arg2].field_768)
    return (block.timestamp > tradeExpiry[arg2].field_1024)
}

function startMining(address arg1, uint256 arg2) {
    require msg.sender == stor13
    require ownerOf[arg2]
    require ownerOf[arg2]
    require ownerOf[arg2] == arg1
    require block.timestamp < tradeExpiry[arg2].field_768
    require not uint8(tradeExpiry[arg2].field_1280)
    uint8(tradeExpiry[arg2].field_1280) = 1
    tradeExpiry[arg2].field_1024 = block.timestamp + tradeExpiry[arg2].field_512
    return 1
}

function getAmountForUser(address arg1) {
    require arg1
    idx = 0
    s = 0
    while idx < balanceOf[address(arg1)]:
        require arg1
        require idx < balanceOf[address(arg1)]
        require idx < tokenOfOwnerByIndex[address(arg1)]
        mem[0] = tokenOfOwnerByIndex[address(arg1)][idx]
        mem[32] = 14
        idx = idx + 1
        s = tradeExpiry[stor7[address(arg1)][idx]].field_0 + s
        continue 
    return (stor[_13] * balanceOf[address(arg1)])
}

function getAmountForUserMining(address arg1) {
    require arg1
    idx = 0
    s = 0
    while idx < balanceOf[address(arg1)]:
        require arg1
        require idx < balanceOf[address(arg1)]
        require idx < tokenOfOwnerByIndex[address(arg1)]
        mem[0] = tokenOfOwnerByIndex[address(arg1)][idx]
        mem[32] = 14
        if not uint8(tradeExpiry[stor7[address(arg1)][idx]].field_1280):
            idx = idx + 1
            s = s
            continue 
        require arg1
        require idx < balanceOf[address(arg1)]
        require idx < tokenOfOwnerByIndex[address(arg1)]
        mem[0] = tokenOfOwnerByIndex[address(arg1)][idx]
        mem[32] = 14
        idx = idx + 1
        s = s + tradeExpiry[stor7[address(arg1)][idx]].field_0
        continue 
    return s
}

function mintUniqueTokenTo(address arg1, uint256 arg2, address arg3, uint256 arg4) {
    require msg.sender == stor13
    require arg1
    require not ownerOf[stor19]
    ownerOf[stor19] = arg1
    require balanceOf[address(arg1)] + 1 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)]++
    tokenOfOwnerByIndex[address(arg1)]++
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = newId
    stor8[stor19] = tokenOfOwnerByIndex[address(arg1)]
    emit Transfer(0, arg1, newId);
    stor10[stor19] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = newId
    require not leasorOf[stor19]
    leasorOf[stor19] = arg3
    require balanceOfLeasor[address(arg3)] + 1 >= balanceOfLeasor[address(arg3)]
    balanceOfLeasor[address(arg3)]++
    tokenOfLeasorByIndex[address(arg3)]++
    tokenOfLeasorByIndex[address(arg3)][tokenOfLeasorByIndex[address(arg3)]] = newId
    stor16[stor19] = tokenOfLeasorByIndex[address(arg3)]
    require ownerOf[stor19]
    tradeExpiry[stor19].field_0 = arg2
    address(tradeExpiry[stor19].field_256) = arg3
    tradeExpiry[stor19].field_512 = arg4
    tradeExpiry[stor19].field_768 = block.timestamp + stor20
    tradeExpiry[stor19].field_1024 = 0
    uint8(tradeExpiry[stor19].field_1280) = 0
    newId++
}

function splitLEMB(uint256 arg1, uint256 arg2) {
    require ownerOf[arg1]
    require ownerOf[arg1]
    require ownerOf[arg1] == msg.sender
    require not uint8(tradeExpiry[arg1].field_1280)
    require block.timestamp < tradeExpiry[arg1].field_768
    require ownerOf[arg1]
    require arg2 < tradeExpiry[arg1].field_0
    tradeExpiry[arg1].field_0 -= arg2
    require msg.sender
    require not ownerOf[stor19]
    ownerOf[stor19] = msg.sender
    require balanceOf[address(msg.sender)] + 1 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)]++
    tokenOfOwnerByIndex[address(msg.sender)]++
    tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = newId
    stor8[stor19] = tokenOfOwnerByIndex[address(msg.sender)]
    emit Transfer(0, msg.sender, newId);
    stor10[stor19] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = newId
    require not leasorOf[stor19]
    leasorOf[stor19] = address(tradeExpiry[arg1].field_256)
    require balanceOfLeasor[address(stor14[arg1].field_256)] + 1 >= balanceOfLeasor[address(stor14[arg1].field_256)]
    balanceOfLeasor[address(stor14[arg1].field_256)]++
    tokenOfLeasorByIndex[address(stor14[arg1].field_256)]++
    tokenOfLeasorByIndex[address(stor14[arg1].field_256)][tokenOfLeasorByIndex[address(stor14[arg1].field_256)]] = newId
    stor16[stor19] = tokenOfLeasorByIndex[address(stor14[arg1].field_256)]
    require ownerOf[stor19]
    tradeExpiry[stor19].field_0 = arg2
    address(tradeExpiry[stor19].field_256) = address(tradeExpiry[arg1].field_256)
    tradeExpiry[stor19].field_512 = tradeExpiry[arg1].field_512
    tradeExpiry[stor19].field_768 = tradeExpiry[arg1].field_768
    tradeExpiry[stor19].field_1024 = 0
    uint8(tradeExpiry[stor19].field_1280) = 0
    newId++
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor4[stor1[arg3]][address(msg.sender)]
    require not uint8(tradeExpiry[arg3].field_1280)
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
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
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

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor4[stor1[arg3]][address(msg.sender)]
    require not uint8(tradeExpiry[arg3].field_1280)
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor4[stor1[arg3]][address(msg.sender)]
    require not uint8(tradeExpiry[arg3].field_1280)
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
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
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

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor4[stor1[arg3]][address(msg.sender)]
    require not uint8(tradeExpiry[arg3].field_1280)
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor4[stor1[arg3]][address(msg.sender)]
    require not uint8(tradeExpiry[arg3].field_1280)
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor4[stor1[arg3]][address(msg.sender)]
    require not uint8(tradeExpiry[arg3].field_1280)
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
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
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

function endLease(address arg1, uint256 arg2) {
    require msg.sender == stor13
    require ownerOf[arg2]
    require ownerOf[arg2]
    require ownerOf[arg2] == arg1
    require block.timestamp > tradeExpiry[arg2].field_1024
    require leasorOf[arg2]
    require leasorOf[arg2] == address(tradeExpiry[arg2].field_256)
    require 1 <= balanceOfLeasor[address(stor14[arg2].field_256)]
    balanceOfLeasor[address(stor14[arg2].field_256)]--
    leasorOf[arg2] = 0
    require 1 <= tokenOfLeasorByIndex[address(stor14[arg2].field_256)]
    require tokenOfLeasorByIndex[address(stor14[arg2].field_256)] - 1 < tokenOfLeasorByIndex[address(stor14[arg2].field_256)]
    require stor16[arg2] < tokenOfLeasorByIndex[address(stor14[arg2].field_256)]
    tokenOfLeasorByIndex[address(stor14[arg2].field_256)][stor16[arg2]] = tokenOfLeasorByIndex[address(stor14[arg2].field_256)][tokenOfLeasorByIndex[address(stor14[arg2].field_256)]]
    require tokenOfLeasorByIndex[address(stor14[arg2].field_256)] - 1 < tokenOfLeasorByIndex[address(stor14[arg2].field_256)]
    tokenOfLeasorByIndex[address(stor14[arg2].field_256)][tokenOfLeasorByIndex[address(stor14[arg2].field_256)]] = 0
    tokenOfLeasorByIndex[address(stor14[arg2].field_256)]--
    if tokenOfLeasorByIndex[address(stor14[arg2].field_256)] > tokenOfLeasorByIndex[address(stor14[arg2].field_256)] - 1:
        idx = tokenOfLeasorByIndex[address(stor14[arg2].field_256)] - 1
        while tokenOfLeasorByIndex[address(stor14[arg2].field_256)] > idx:
            tokenOfLeasorByIndex[address(stor14[arg2].field_256)][idx] = 0
            idx = idx + 1
            continue 
    stor16[arg2] = 0
    stor16[stor15[address(stor14[arg2].field_256)][stor15[address(stor14[arg2].field_256)]]] = stor16[arg2]
    require ownerOf[arg2]
    require ownerOf[arg2] == arg1
    if approved[arg2]:
        approved[arg2] = 0
    require ownerOf[arg2]
    require ownerOf[arg2] == arg1
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    ownerOf[arg2] = 0
    require 1 <= tokenOfOwnerByIndex[address(arg1)]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    require stor8[arg2] < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][stor8[arg2]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor8[arg2] = 0
    stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[arg2]
    emit Transfer(arg1, 0, arg2);
    if Mask(255, 1, uint256(tokenURI[arg2]) and (256 * not bool(tokenURI[arg2])) - 1):
        uint256(tokenURI[arg2]) = 0
        if 31 < tokenURI[arg2].length:
            idx = 0
            while tokenURI[arg2].length + 31 / 32 > idx:
                uint256(tokenURI[arg2][idx]) = 0
                idx = idx + 1
                continue 
    require 1 <= tokenByIndex.length
    require tokenByIndex.length - 1 < tokenByIndex.length
    require stor10[arg2] < tokenByIndex.length
    tokenByIndex[stor10[arg2]] = tokenByIndex[tokenByIndex.length]
    require tokenByIndex.length - 1 < tokenByIndex.length
    tokenByIndex[tokenByIndex.length] = 0
    tokenByIndex.length--
    if tokenByIndex.length > tokenByIndex.length - 1:
        idx = tokenByIndex.length - 1
        while tokenByIndex.length > idx:
            tokenByIndex[idx] = 0
            idx = idx + 1
            continue 
    stor10[arg2] = 0
    stor10[stor9[stor9.length]] = stor10[arg2]
    tradeExpiry[arg2].field_0 = 0
    address(tradeExpiry[arg2].field_256) = 0
    tradeExpiry[arg2].field_512 = 0
    tradeExpiry[arg2].field_768 = 0
    tradeExpiry[arg2].field_1024 = 0
    uint8(tradeExpiry[arg2].field_1280) = 0
}



}
