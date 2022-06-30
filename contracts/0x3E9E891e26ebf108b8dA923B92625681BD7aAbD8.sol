contract main {




// =====================  Runtime code  =====================


#
#  - tokenURI(uint256 arg1)
#
mapping of uint8 stor0;
mapping of address ownerOf;
mapping of address approved;
mapping of uint256 balanceOf;
mapping of uint8 stor4;
array of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor6;
array of uint256 tokenByIndex;
mapping of uint256 stor8;
mapping of uint8 stor10;
array of struct allProductIds;
mapping of struct priceOfActivation;
array of uint256 name;
array of uint256 symbol;
array of uint256 stor15;
address withdrawalWalletAddress;
mapping of struct keyInfo;

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor0[Mask(32, 224, arg1)])
}

function name() {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ownerOf[arg1]
    return approved[arg1]
}

function totalSupply() {
    return tokenByIndex.length
}

function priceOfActivation(uint256 arg1) {
    require calldata.size - 4 >= 32
    return priceOfActivation[arg1].field_512
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require arg2 < balanceOf[address(arg1)]
    require arg2 < tokenOfOwnerByIndex[address(arg1)]
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function withdrawalWallet() {
    return withdrawalWalletAddress
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < tokenByIndex.length
    return tokenByIndex[arg1]
}

function isMinterOnly(uint256 arg1) {
    require calldata.size - 4 >= 32
    return bool(priceOfActivation[arg1].field_1792)
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ownerOf[arg1]
    return ownerOf[arg1]
}

function sub_6b1023dd(?) {
    require calldata.size - 4 >= 32
    return keyInfo[arg1].field_0, keyInfo[arg1].field_256, keyInfo[arg1].field_512, keyInfo[arg1].field_768
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return balanceOf[address(arg1)]
}

function products(uint256 arg1) {
    require calldata.size - 4 >= 32
    return priceOfActivation[arg1].field_0, 
           priceOfActivation[arg1].field_256,
           priceOfActivation[arg1].field_512,
           priceOfActivation[arg1].field_768,
           priceOfActivation[arg1].field_1024,
           priceOfActivation[arg1].field_1280,
           priceOfActivation[arg1].field_1536,
           bool(priceOfActivation[arg1].field_1792)
}

function totalSold(uint256 arg1) {
    require calldata.size - 4 >= 32
    return priceOfActivation[arg1].field_1280
}

function symbol() {
    return symbol[0 len symbol.length]
}

function isMinter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor10[address(arg1)])
}

function priceOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    return priceOfActivation[arg1].field_256
}

function productInfo(uint256 arg1) {
    require calldata.size - 4 >= 32
    return priceOfActivation[arg1].field_256, 
           priceOfActivation[arg1].field_512,
           priceOfActivation[arg1].field_768,
           priceOfActivation[arg1].field_1024,
           priceOfActivation[arg1].field_1536,
           bool(priceOfActivation[arg1].field_1792)
}

function keyInfo(uint256 arg1) {
    require calldata.size - 4 >= 32
    return keyInfo[arg1].field_0, keyInfo[arg1].field_256, keyInfo[arg1].field_512, keyInfo[arg1].field_768
}

function allProductIds(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < allProductIds.length
    return allProductIds[arg1].field_0
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(stor4[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function renounceMinter() {
    require msg.sender
    require stor10[address(msg.sender)]
    stor10[address(msg.sender)] = 0
    emit MinterRemoved(msg.sender);
}

function setKeyAttributes(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender
    require stor10[address(msg.sender)]
    keyInfo[arg1].field_256 = arg2
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 != msg.sender
    stor4[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function sub_9f36bea2(?) {
    require calldata.size - 4 >= 64
    require msg.sender
    require stor10[address(msg.sender)]
    require priceOfActivation[arg1].field_0
    priceOfActivation[arg1].field_1792 = uint8(arg2)
}

function addMinter(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor10[address(msg.sender)]
    require arg1
    require not stor10[address(arg1)]
    stor10[address(arg1)] = 1
    emit MinterAdded(arg1);
}

function isKeyActive(uint256 arg1) {
    require calldata.size - 4 >= 32
    if block.timestamp < keyInfo[arg1].field_768:
        return (block.timestamp < keyInfo[arg1].field_768)
    return not bool(priceOfActivation[stor17[arg1].field_0].field_1536)
}

function setPrice(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender
    require stor10[address(msg.sender)]
    require priceOfActivation[arg1].field_0
    priceOfActivation[arg1].field_256 = arg2
    emit ProductPriceChanged(arg1, arg2);
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ownerOf[arg2]
    require arg1 != ownerOf[arg2]
    if ownerOf[arg2] != msg.sender:
        require stor4[stor1[arg2]][address(msg.sender)]
    approved[arg2] = arg1
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function withdrawBalance() {
    require msg.sender
    require stor10[address(msg.sender)]
    call withdrawalWalletAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setAvailability(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender
    require stor10[address(msg.sender)]
    require priceOfActivation[arg1].field_0
    priceOfActivation[arg1].field_768 = arg2
    emit ProductAvailabilityChanged(arg1, priceOfActivation[arg1].field_768);
}

function setTokenMetadataBaseURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require msg.sender
    require stor10[address(msg.sender)]
    stor15.length = (2 * arg1.length) + 1
    s = 0
    idx = arg1 + 36
    while arg1 + arg1.length + 36 > idx:
        stor15[s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg1.length + 31) >> 5
    while stor15.length + 31 / 32 > idx:
        stor15[idx] = 0
        idx = idx + 1
        continue 
}

function incrementAvailability(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender
    require stor10[address(msg.sender)]
    require priceOfActivation[arg1].field_0
    require arg2 + priceOfActivation[arg1].field_768 >= priceOfActivation[arg1].field_768
    if priceOfActivation[arg1].field_1024:
        require arg2 + priceOfActivation[arg1].field_768 + priceOfActivation[arg1].field_1280 >= priceOfActivation[arg1].field_1280
        require arg2 + priceOfActivation[arg1].field_768 + priceOfActivation[arg1].field_1280 <= priceOfActivation[arg1].field_1024
    priceOfActivation[arg1].field_768 += arg2
    emit ProductAvailabilityChanged(arg1, priceOfActivation[arg1].field_768);
}

function createProduct(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, bool arg7) {
    require calldata.size - 4 >= 224
    require msg.sender
    require stor10[address(msg.sender)]
    require arg1
    require not priceOfActivation[arg1].field_0
    require arg4 <= arg5
    priceOfActivation[arg1].field_0 = arg1
    priceOfActivation[arg1].field_256 = arg2
    priceOfActivation[arg1].field_512 = arg3
    priceOfActivation[arg1].field_768 = arg4
    priceOfActivation[arg1].field_1024 = arg5
    priceOfActivation[arg1].field_1280 = 0
    priceOfActivation[arg1].field_1536 = arg6
    priceOfActivation[arg1].field_1792 = uint8(arg7)
    allProductIds.length++
    allProductIds[allProductIds.length].field_0 = arg1
    emit ProductCreated(arg1, arg2, arg3, arg4, arg5, arg6, arg7);
}

function activate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ownerOf[arg1]
    require ownerOf[arg1]
    require msg.value == priceOfActivation[arg1].field_512
    require ownerOf[arg1]
    if ownerOf[arg1] != msg.sender:
        require ownerOf[arg1]
        if approved[arg1] != msg.sender:
            require stor4[stor1[arg1]][address(msg.sender)]
    require block.timestamp >= keyInfo[arg1].field_768
    require priceOfActivation[stor17[arg1].field_0].field_1536
    require not keyInfo[arg1].field_768
    require priceOfActivation[stor17[arg1].field_0].field_1536 + block.timestamp >= block.timestamp
    keyInfo[arg1].field_768 = priceOfActivation[stor17[arg1].field_0].field_1536 + block.timestamp
    require ownerOf[arg1]
    emit KeyActivated(arg1, keyInfo[arg1].field_0, keyInfo[arg1].field_256, keyInfo[arg1].field_512, keyInfo[arg1].field_768, ownerOf[arg1], msg.sender);
}

function getAllProductIds() {
    if not allProductIds.length:
        mem[(32 * allProductIds.length) + 128] = 32
        mem[(32 * allProductIds.length) + 160] = allProductIds.length
        mem[(32 * allProductIds.length) + 192 len floor32(allProductIds.length)] = mem[128 len floor32(allProductIds.length)]
        return memory
          from (32 * allProductIds.length) + 128
           len (96 * allProductIds.length) + 64
    mem[128] = uint256(allProductIds.field_0)
    idx = 128
    s = 0
    while (32 * allProductIds.length) + 96 > idx:
        mem[idx + 32] = allProductIds[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * allProductIds.length) + 192 len floor32(allProductIds.length)] = mem[128 len floor32(allProductIds.length)]
    return Array(len=allProductIds.length, data=mem[128 len floor32(allProductIds.length)], mem[(32 * allProductIds.length) + floor32(allProductIds.length) + 192 len (32 * allProductIds.length) - floor32(allProductIds.length)]), 
}

function minterOnlyPurchase(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require msg.sender
    require stor10[address(msg.sender)]
    require priceOfActivation[arg1].field_0
    require priceOfActivation[arg1].field_768
    require 1 <= priceOfActivation[arg1].field_768
    require priceOfActivation[arg1].field_768 - 1 >= 0
    require 1 <= priceOfActivation[arg1].field_768
    priceOfActivation[arg1].field_768--
    require priceOfActivation[arg1].field_1280 + 1 >= priceOfActivation[arg1].field_1280
    priceOfActivation[arg1].field_1280++
    keyInfo[stor7.length].field_0 = arg1
    keyInfo[stor7.length].field_256 = 0
    keyInfo[stor7.length].field_512 = block.timestamp
    keyInfo[stor7.length].field_768 = 0
    emit KeyIssued(tokenByIndex.length, arg1, 0, block.timestamp, 0, arg2, msg.sender);
    require arg2
    require not ownerOf[stor7.length]
    ownerOf[stor7.length] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    emit Transfer(0, arg2, tokenByIndex.length);
    stor6[stor7.length] = tokenOfOwnerByIndex[address(arg2)]
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = tokenByIndex.length
    stor8[stor7.length] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = tokenByIndex.length
    return tokenByIndex.length
}

function purchase(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1
    require arg2
    require msg.value == priceOfActivation[arg1].field_256
    require not priceOfActivation[arg1].field_1792
    require priceOfActivation[arg1].field_0
    require priceOfActivation[arg1].field_768
    require 1 <= priceOfActivation[arg1].field_768
    require priceOfActivation[arg1].field_768 - 1 >= 0
    require 1 <= priceOfActivation[arg1].field_768
    priceOfActivation[arg1].field_768--
    require priceOfActivation[arg1].field_1280 + 1 >= priceOfActivation[arg1].field_1280
    priceOfActivation[arg1].field_1280++
    keyInfo[stor7.length].field_0 = arg1
    keyInfo[stor7.length].field_256 = 0
    keyInfo[stor7.length].field_512 = block.timestamp
    keyInfo[stor7.length].field_768 = 0
    emit KeyIssued(tokenByIndex.length, arg1, 0, block.timestamp, 0, arg2, msg.sender);
    require arg2
    require not ownerOf[stor7.length]
    ownerOf[stor7.length] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    emit Transfer(0, arg2, tokenByIndex.length);
    stor6[stor7.length] = tokenOfOwnerByIndex[address(arg2)]
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = tokenByIndex.length
    stor8[stor7.length] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = tokenByIndex.length
    return tokenByIndex.length
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
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
    require balanceOf[arg2] + 1 >= balanceOf[arg2]
    balanceOf[address(arg2)] = balanceOf[arg2] + 1
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    require 1 <= tokenOfOwnerByIndex[address(arg1)]
    if tokenOfOwnerByIndex[address(arg1)] - 1 != stor6[arg3]:
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
    require balanceOf[arg2] + 1 >= balanceOf[arg2]
    balanceOf[address(arg2)] = balanceOf[arg2] + 1
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    require 1 <= tokenOfOwnerByIndex[address(arg1)]
    if tokenOfOwnerByIndex[address(arg1)] - 1 != stor6[arg3]:
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
    if ext_code.size(arg2):
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
    require balanceOf[arg2] + 1 >= balanceOf[arg2]
    balanceOf[address(arg2)] = balanceOf[arg2] + 1
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    require 1 <= tokenOfOwnerByIndex[address(arg1)]
    if tokenOfOwnerByIndex[address(arg1)] - 1 != stor6[arg3]:
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
    if ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
}



}
