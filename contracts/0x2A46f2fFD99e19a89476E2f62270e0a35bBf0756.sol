contract main {




// =====================  Runtime code  =====================


#
#  - oboCreateDigitalMediaAndReleasesInNewCollection(address arg1, uint32 arg2, string arg3, string arg4, uint32 arg5)
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3)
#  - oboCreateDigitalMediaAndReleases(address arg1, uint32 arg2, uint256 arg3, string arg4, uint32 arg5)
#  - createDigitalMediaAndReleasesInNewCollection(uint32 arg1, string arg2, string arg3, uint32 arg4)
#  - createDigitalMediaAndReleases(uint32 arg1, uint256 arg2, string arg3, uint32 arg4)
#
uint8 stor0; offset 160
address owner;
address sub_a0f01e08Address;
address sub_1b284e75Address;
uint256 sub_0154788d;
address creatorRegistryStoreAddress;
mapping of address ownerOf;
mapping of address approved;
mapping of uint256 balanceOf;
mapping of uint8 stor8;
array of uint256 name;
array of uint256 symbol;
array of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor12;
array of uint256 tokenByIndex;
mapping of uint256 stor14;
mapping of bool tokenURI;
address singleCreatorAddress;
mapping of struct tokenIdToDigitalMediaRelease;
mapping of address sub_55232467;
uint256 stor19;
mapping of uint8 stor20;
mapping of uint8 stor21;
mapping of uint8 stor22;

function sub_0154788d(?) {
    return sub_0154788d
}

function name() {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) {
    return approved[arg1]
}

function singleCreatorAddress() {
    return singleCreatorAddress
}

function totalSupply() {
    return tokenByIndex.length
}

function sub_1b284e75(?) {
    return sub_1b284e75Address
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require arg1
    require arg2 < balanceOf[address(arg1)]
    require arg2 < tokenOfOwnerByIndex[address(arg1)]
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function tokenIdToDigitalMediaRelease(uint256 arg1) {
    return uint32(tokenIdToDigitalMediaRelease[arg1].field_0), tokenIdToDigitalMediaRelease[arg1].field_256
}

function exists(uint256 arg1) {
    return bool(ownerOf[arg1])
}

function tokenByIndex(uint256 arg1) {
    require arg1 < tokenByIndex.length
    return tokenByIndex[arg1]
}

function sub_55232467(?) {
    return sub_55232467[arg1]
}

function paused() {
    return bool(stor0)
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

function sub_a0f01e08(?) {
    return sub_a0f01e08Address
}

function creatorRegistryStore() {
    return creatorRegistryStoreAddress
}

function tokenURI(uint256 arg1) {
    return uint256(tokenURI[arg1][0 len tokenURI[arg1].length])
}

function approvedTokenCreators(address arg1) {
    return bool(stor20[arg1])
}

function sub_e158386d(?) {
    return bool(stor22[arg1])
}

function _fallback() payable {
    revert
}

function unpause() {
    require msg.sender == owner
    require stor0
    stor0 = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not stor0
    stor0 = 1
    emit Pause()
}

function removeApprovedTokenCreator(address arg1) {
    require msg.sender == owner
    stor20[address(arg1)] = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setApprovalForAll(address arg1, bool arg2) {
    require arg1 != msg.sender
    stor8[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function getDigitalMediaRelease(uint256 arg1) {
    require ownerOf[arg1]
    return arg1, uint32(tokenIdToDigitalMediaRelease[arg1].field_0), tokenIdToDigitalMediaRelease[arg1].field_256
}

function addApprovedTokenCreator(address arg1) {
    require msg.sender == owner
    if 1 == bool(stor22[address(arg1)]):
        revert with 0, 'Address disabled.'
    stor20[address(arg1)] = 1
}

function resetApproval(uint256 arg1) {
    require ownerOf[arg1]
    require ownerOf[arg1] == msg.sender
    if approved[arg1]:
        approved[arg1] = 0
        emit Approval(arg1, msg.sender, 0);
}

function disableOboAddress(address arg1) {
    require msg.sender == owner
    if not stor20[address(arg1)]:
        revert with 0, 'Unrecognized OBO address.'
    stor22[address(arg1)] = 1
    stor20[address(arg1)] = 0
    emit OboDisabledForAll(arg1);
}

function changeSingleCreator(address arg1) {
    require arg1
    if singleCreatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Not approved to change single creator.'
    singleCreatorAddress = arg1
    emit SingleCreatorChanged(arg1, arg1);
}

function supportsInterface(bytes4 arg1) {
    if Mask(32, 224, sha3('supportsInterface(bytes4)')) == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, sha3('totalSupply()') xor sha3('symbol()') xor sha3('name()') xor sha3('balanceOf(address)') xor sha3('ownerOf(uint256)') xor sha3('approve(address,uint256)') xor sha3('safeTransferFrom(address,address', ',uint256)')) == Mask(32, 224, arg1))
}

function setOboApprovalForAll(address arg1, bool arg2) {
    if msg.sender == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Approval address is same as approver.'
    if not stor20[address(arg1)]:
        revert with 0, 'Unrecognized OBO address.'
    if 1 == bool(stor22[address(arg1)]):
        revert with 0, 'Approval address is disabled.'
    stor21[msg.sender][address(arg1)] = uint8(arg2)
    emit OboApprovalForAll(msg.sender, address(arg1), arg2);
}

function createCollection(string arg1) {
    require not stor0
    require ext_code.size(sub_1b284e75Address)
    call sub_1b284e75Address.0xb577fd73 with:
         gas gas_remaining wei
        args msg.sender, Array(len=arg1.length, data=arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit DigitalMediaCollectionCreateEvent(ext_call.return_data[0], sub_1b284e75Address, msg.sender, Array(len=arg1.length, data=arg1[all]));
}

function isApprovedForAll(address arg1, address arg2) {
    if 1 == bool(stor22[address(arg2)]):
        return 0
    require creatorRegistryStoreAddress
    require ext_code.size(creatorRegistryStoreAddress)
    call creatorRegistryStoreAddress.0x67d6a7dc with:
         gas gas_remaining wei
        args address(arg2), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) != 1:
        if not stor21[address(arg1)][address(arg2)]:
            return bool(stor8[address(arg1)][address(arg2)])
    return 1
}

function setV1DigitalMediaStoreAddress(address arg1) {
    require msg.sender == owner
    if sub_a0f01e08Address:
        revert with 0, 'V1 media store already set.'
    require ext_code.size(arg1)
    call arg1.0x6c669f25 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != 1:
        revert with 0, 'Incorrect version.'
    sub_a0f01e08Address = arg1
    require ext_code.size(arg1)
    call arg1.0xa60800b8 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function changeCreator(address arg1, address arg2) {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Creator must be valid non 0x0 address.'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Creator must be valid non 0x0 address.'
    if arg1 != msg.sender:
        if sub_55232467[address(arg1)] != msg.sender:
            revert with 0, 'Unauthorized caller.'
    if not sub_55232467[address(arg1)]:
        sub_55232467[address(msg.sender)] = arg2
    else:
        if sub_55232467[address(arg1)] != msg.sender:
            revert with 0, 'Unauthorized caller.'
        sub_55232467[address(arg1)] = arg2
    emit ChangedCreator(address(arg1), arg2);
}

function approve(address arg1, uint256 arg2) {
    require ownerOf[arg2]
    require ownerOf[arg2] != arg1
    if ownerOf[arg2] != msg.sender:
        require bool(stor22[address(msg.sender)]) != 1
        require creatorRegistryStoreAddress
        require ext_code.size(creatorRegistryStoreAddress)
        call creatorRegistryStoreAddress.0x67d6a7dc with:
             gas gas_remaining wei
            args msg.sender, ownerOf[arg2]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if bool(ext_call.return_data[0]) != 1:
            if not stor21[stor5[arg2]][address(msg.sender)]:
                require stor8[stor5[arg2]][address(msg.sender)]
    if approved[arg2]:
        approved[arg2] = arg1
        emit Approval(arg2, ownerOf[arg2], arg1);
    else:
        if arg1:
            approved[arg2] = arg1
            emit Approval(arg2, ownerOf[arg2], arg1);
}

function getCollection(uint256 arg1) {
    mem[352] = 96
    require sub_a0f01e08Address
    require sub_1b284e75Address
    mem[384] = 0x5a1f3c2800000000000000000000000000000000000000000000000000000000
    mem[388] = arg1
    require ext_code.size(sub_1b284e75Address)
    call sub_1b284e75Address.0x5a1f3c28 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[384 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    _8 = uint32(arg1), mem[420 len 28]
    _9 = mem[448]
    require mem[448] <= 4294967296
    require mem[448] + 32 <= return_data.size
    require return_data.size >= mem[mem[448] + 384] + mem[448] + 32 and mem[mem[448] + 384] <= 4294967296
    mem[ceil32(return_data.size) + 384] = mem[384 len 4], Mask(224, 32, arg1) >> 32
    mem[ceil32(return_data.size) + 416] = address(_8)
    mem[ceil32(return_data.size) + 448] = _9 + 384
    if not address(_8):
        revert with 0, 'Collection not found.'
    mem[ceil32(return_data.size) + 480] = arg1
    mem[ceil32(return_data.size) + 512] = address(_8)
    mem[ceil32(return_data.size) + 544] = 96
    mem[ceil32(return_data.size) + 576] = mem[_9 + 384]
    _19 = mem[_9 + 384]
    mem[ceil32(return_data.size) + 608 len ceil32(mem[_9 + 384])] = mem[_9 + 416 len ceil32(mem[_9 + 384])]
    if not _19 % 32:
        return arg1, address(_8), 96, mem[ceil32(return_data.size) + 576 len _19 + 32]
    mem[floor32(_19) + ceil32(return_data.size) + 608] = mem[floor32(_19) + ceil32(return_data.size) + -(_19 % 32) + 640 len _19 % 32]
    return arg1, address(_8), 96, mem[ceil32(return_data.size) + 576 len floor32(_19) + 64]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require bool(stor22[address(msg.sender)]) != 1
            require creatorRegistryStoreAddress
            require ext_code.size(creatorRegistryStoreAddress)
            call creatorRegistryStoreAddress.0x67d6a7dc with:
                 gas gas_remaining wei
                args msg.sender, ownerOf[arg3]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if bool(ext_call.return_data[0]) != 1:
                if not stor21[stor5[arg3]][address(msg.sender)]:
                    require stor8[stor5[arg3]][address(msg.sender)]
    require arg1
    require arg2
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    if approved[arg3]:
        approved[arg3] = 0
        emit Approval(arg3, arg1, 0);
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    ownerOf[arg3] = 0
    require 1 <= tokenOfOwnerByIndex[address(arg1)]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    require stor12[arg3] < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][stor12[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor12[arg3] = 0
    stor12[stor11[address(arg1)][stor11[address(arg1)]]] = stor12[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    stor12[arg3] = tokenOfOwnerByIndex[address(arg2)]
    emit Transfer(arg3, arg1, arg2);
}

function burn(uint256 arg1) {
    require ownerOf[arg1]
    if ownerOf[arg1] != msg.sender:
        if approved[arg1] != msg.sender:
            if 1 == bool(stor22[address(msg.sender)]):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Failed token burn.  Caller is not approved.'
            require creatorRegistryStoreAddress
            require ext_code.size(creatorRegistryStoreAddress)
            call creatorRegistryStoreAddress.0x67d6a7dc with:
                 gas gas_remaining wei
                args msg.sender, ownerOf[arg1]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if bool(ext_call.return_data[0]) != 1:
                if not stor21[stor5[arg1]][address(msg.sender)]:
                    if not stor8[stor5[arg1]][address(msg.sender)]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Failed token burn.  Caller is not approved.'
    require ownerOf[arg1]
    require ownerOf[arg1] == ownerOf[arg1]
    if approved[arg1]:
        approved[arg1] = 0
        emit Approval(arg1, ownerOf[arg1], 0);
    require ownerOf[arg1]
    require ownerOf[arg1] == ownerOf[arg1]
    require 1 <= balanceOf[stor5[arg1]]
    balanceOf[stor5[arg1]]--
    ownerOf[arg1] = 0
    require 1 <= tokenOfOwnerByIndex[stor5[arg1]]
    require tokenOfOwnerByIndex[stor5[arg1]] - 1 < tokenOfOwnerByIndex[stor5[arg1]]
    require stor12[arg1] < tokenOfOwnerByIndex[stor5[arg1]]
    tokenOfOwnerByIndex[stor5[arg1]][stor12[arg1]] = tokenOfOwnerByIndex[stor5[arg1]][tokenOfOwnerByIndex[stor5[arg1]]]
    require tokenOfOwnerByIndex[stor5[arg1]] - 1 < tokenOfOwnerByIndex[stor5[arg1]]
    tokenOfOwnerByIndex[stor5[arg1]][tokenOfOwnerByIndex[stor5[arg1]]] = 0
    tokenOfOwnerByIndex[stor5[arg1]]--
    if tokenOfOwnerByIndex[stor5[arg1]] > tokenOfOwnerByIndex[stor5[arg1]] - 1:
        idx = tokenOfOwnerByIndex[stor5[arg1]] - 1
        while tokenOfOwnerByIndex[stor5[arg1]] > idx:
            tokenOfOwnerByIndex[stor5[arg1]][idx] = 0
            idx = idx + 1
            continue 
    stor12[arg1] = 0
    stor12[stor11[stor5[arg1]][stor11[stor5[arg1]]]] = stor12[arg1]
    emit Transfer(arg1, ownerOf[arg1], 0);
    if Mask(255, 1, uint256(tokenURI[arg1]) and (256 * not bool(tokenURI[arg1])) - 1):
        uint256(tokenURI[arg1]) = 0
        if 31 < tokenURI[arg1].length:
            idx = 0
            while tokenURI[arg1].length + 31 / 32 > idx:
                uint256(tokenURI[arg1][idx]) = 0
                idx = idx + 1
                continue 
    require 1 <= tokenByIndex.length
    require tokenByIndex.length - 1 < tokenByIndex.length
    require stor14[arg1] < tokenByIndex.length
    tokenByIndex[stor14[arg1]] = tokenByIndex[tokenByIndex.length]
    require tokenByIndex.length - 1 < tokenByIndex.length
    tokenByIndex[tokenByIndex.length] = 0
    tokenByIndex.length--
    if tokenByIndex.length > tokenByIndex.length - 1:
        idx = tokenByIndex.length - 1
        while tokenByIndex.length > idx:
            tokenByIndex[idx] = 0
            idx = idx + 1
            continue 
    stor14[arg1] = 0
    stor14[stor13[stor13.length]] = stor14[arg1]
    uint32(tokenIdToDigitalMediaRelease[arg1].field_0) = 0
    tokenIdToDigitalMediaRelease[arg1].field_256 = 0
    emit DigitalMediaReleaseBurnEvent(arg1, ownerOf[arg1]);
}

function burnToken(uint256 arg1) {
    require ownerOf[arg1]
    if ownerOf[arg1] != msg.sender:
        if approved[arg1] != msg.sender:
            if 1 == bool(stor22[address(msg.sender)]):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Failed token burn.  Caller is not approved.'
            require creatorRegistryStoreAddress
            require ext_code.size(creatorRegistryStoreAddress)
            call creatorRegistryStoreAddress.0x67d6a7dc with:
                 gas gas_remaining wei
                args msg.sender, ownerOf[arg1]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if bool(ext_call.return_data[0]) != 1:
                if not stor21[stor5[arg1]][address(msg.sender)]:
                    if not stor8[stor5[arg1]][address(msg.sender)]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Failed token burn.  Caller is not approved.'
    require ownerOf[arg1]
    require ownerOf[arg1] == ownerOf[arg1]
    if approved[arg1]:
        approved[arg1] = 0
        emit Approval(arg1, ownerOf[arg1], 0);
    require ownerOf[arg1]
    require ownerOf[arg1] == ownerOf[arg1]
    require 1 <= balanceOf[stor5[arg1]]
    balanceOf[stor5[arg1]]--
    ownerOf[arg1] = 0
    require 1 <= tokenOfOwnerByIndex[stor5[arg1]]
    require tokenOfOwnerByIndex[stor5[arg1]] - 1 < tokenOfOwnerByIndex[stor5[arg1]]
    require stor12[arg1] < tokenOfOwnerByIndex[stor5[arg1]]
    tokenOfOwnerByIndex[stor5[arg1]][stor12[arg1]] = tokenOfOwnerByIndex[stor5[arg1]][tokenOfOwnerByIndex[stor5[arg1]]]
    require tokenOfOwnerByIndex[stor5[arg1]] - 1 < tokenOfOwnerByIndex[stor5[arg1]]
    tokenOfOwnerByIndex[stor5[arg1]][tokenOfOwnerByIndex[stor5[arg1]]] = 0
    tokenOfOwnerByIndex[stor5[arg1]]--
    if tokenOfOwnerByIndex[stor5[arg1]] > tokenOfOwnerByIndex[stor5[arg1]] - 1:
        idx = tokenOfOwnerByIndex[stor5[arg1]] - 1
        while tokenOfOwnerByIndex[stor5[arg1]] > idx:
            tokenOfOwnerByIndex[stor5[arg1]][idx] = 0
            idx = idx + 1
            continue 
    stor12[arg1] = 0
    stor12[stor11[stor5[arg1]][stor11[stor5[arg1]]]] = stor12[arg1]
    emit Transfer(arg1, ownerOf[arg1], 0);
    if Mask(255, 1, uint256(tokenURI[arg1]) and (256 * not bool(tokenURI[arg1])) - 1):
        uint256(tokenURI[arg1]) = 0
        if 31 < tokenURI[arg1].length:
            idx = 0
            while tokenURI[arg1].length + 31 / 32 > idx:
                uint256(tokenURI[arg1][idx]) = 0
                idx = idx + 1
                continue 
    require 1 <= tokenByIndex.length
    require tokenByIndex.length - 1 < tokenByIndex.length
    require stor14[arg1] < tokenByIndex.length
    tokenByIndex[stor14[arg1]] = tokenByIndex[tokenByIndex.length]
    require tokenByIndex.length - 1 < tokenByIndex.length
    tokenByIndex[tokenByIndex.length] = 0
    tokenByIndex.length--
    if tokenByIndex.length > tokenByIndex.length - 1:
        idx = tokenByIndex.length - 1
        while tokenByIndex.length > idx:
            tokenByIndex[idx] = 0
            idx = idx + 1
            continue 
    stor14[arg1] = 0
    stor14[stor13[stor13.length]] = stor14[arg1]
    uint32(tokenIdToDigitalMediaRelease[arg1].field_0) = 0
    tokenIdToDigitalMediaRelease[arg1].field_256 = 0
    emit DigitalMediaReleaseBurnEvent(arg1, ownerOf[arg1]);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require bool(stor22[address(msg.sender)]) != 1
            require creatorRegistryStoreAddress
            require ext_code.size(creatorRegistryStoreAddress)
            call creatorRegistryStoreAddress.0x67d6a7dc with:
                 gas gas_remaining wei
                args msg.sender, ownerOf[arg3]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if bool(ext_call.return_data[0]) != 1:
                if not stor21[stor5[arg3]][address(msg.sender)]:
                    require stor8[stor5[arg3]][address(msg.sender)]
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require bool(stor22[address(msg.sender)]) != 1
            require creatorRegistryStoreAddress
            require ext_code.size(creatorRegistryStoreAddress)
            call creatorRegistryStoreAddress.0x67d6a7dc with:
                 gas gas_remaining wei
                args msg.sender, ownerOf[arg3]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if bool(ext_call.return_data[0]) != 1:
                if not stor21[stor5[arg3]][address(msg.sender)]:
                    require stor8[stor5[arg3]][address(msg.sender)]
    require arg1
    require arg2
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    if approved[arg3]:
        approved[arg3] = 0
        emit Approval(arg3, arg1, 0);
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    ownerOf[arg3] = 0
    require 1 <= tokenOfOwnerByIndex[address(arg1)]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    require stor12[arg3] < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][stor12[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor12[arg3] = 0
    stor12[stor11[address(arg1)][stor11[address(arg1)]]] = stor12[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    stor12[arg3] = tokenOfOwnerByIndex[address(arg2)]
    emit Transfer(arg3, arg1, arg2);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, uint256 arg2, bytes arg3) with:
             gas gas_remaining wei
            args address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
}

function burnDigitalMedia(uint256 arg1) {
    require not stor0
    mem[640] = 96
    require sub_a0f01e08Address
    require sub_1b284e75Address
    require sub_a0f01e08Address
    require sub_1b284e75Address
    mem[672] = 0x55df427500000000000000000000000000000000000000000000000000000000
    mem[676] = arg1
    if arg1 >= sub_0154788d:
        require ext_code.size(sub_1b284e75Address)
        call sub_1b284e75Address.0x55df4275 with:
             gas gas_remaining wei
            args arg1
    else:
        require ext_code.size(sub_a0f01e08Address)
        call sub_a0f01e08Address.0x55df4275 with:
             gas gas_remaining wei
            args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[672 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    require mem[832] <= 4294967296
    require mem[832] + 32 <= return_data.size
    require return_data.size >= mem[mem[832] + 672] + mem[832] + 32 and mem[mem[832] + 672] <= 4294967296
    if not sub_55232467[address(mem[800])]:
        if mem[812 len 20] != msg.sender:
            if 1 == bool(stor22[address(msg.sender)]):
                revert with 0, 'Failed digital media burn.  Caller not approved.'
            require creatorRegistryStoreAddress
            require ext_code.size(creatorRegistryStoreAddress)
            call creatorRegistryStoreAddress.0x67d6a7dc with:
                 gas gas_remaining wei
                args msg.sender, mem[812 len 20]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if bool(ext_call.return_data[0]) != 1:
                if not stor21[address(mem[800])][address(msg.sender)]:
                    if not stor8[address(mem[800])][address(msg.sender)]:
                        revert with 0, 'Failed digital media burn.  Caller not approved.'
    else:
        if sub_55232467[address(mem[800])] != msg.sender:
            if 1 == bool(stor22[address(msg.sender)]):
                revert with 0, 'Failed digital media burn.  Caller not approved.'
            require creatorRegistryStoreAddress
            require ext_code.size(creatorRegistryStoreAddress)
            call creatorRegistryStoreAddress.0x67d6a7dc with:
                 gas gas_remaining wei
                args msg.sender, mem[812 len 20]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if bool(ext_call.return_data[0]) != 1:
                if not stor21[address(mem[800])][address(msg.sender)]:
                    if not stor8[address(mem[800])][address(msg.sender)]:
                        revert with 0, 'Failed digital media burn.  Caller not approved.'
    require sub_a0f01e08Address
    require sub_1b284e75Address
    require sub_a0f01e08Address
    require sub_1b284e75Address
    if mem[672 len 4], Mask(224, 32, arg1) >> 32 >= sub_0154788d:
        require ext_code.size(sub_1b284e75Address)
        call sub_1b284e75Address.0x5160a124 with:
             gas gas_remaining wei
            args mem[672 len 4], Mask(224, 32, arg1) >> 32, uint32(mem[732 len 4] - mem[764 len 4])
    else:
        require ext_code.size(sub_a0f01e08Address)
        call sub_a0f01e08Address.0x5160a124 with:
             gas gas_remaining wei
            args mem[672 len 4], Mask(224, 32, arg1) >> 32, uint32(mem[732 len 4] - mem[764 len 4])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require sub_a0f01e08Address
    require sub_1b284e75Address
    if mem[672 len 4], Mask(224, 32, arg1) >> 32 >= sub_0154788d:
        emit DigitalMediaBurnEvent(arg1, msg.sender, sub_1b284e75Address);
    else:
        emit DigitalMediaBurnEvent(arg1, msg.sender, sub_a0f01e08Address);
}

function getDigitalMedia(uint256 arg1) {
    mem[640] = 96
    require sub_a0f01e08Address
    require sub_1b284e75Address
    require sub_a0f01e08Address
    require sub_1b284e75Address
    mem[672] = 0x55df427500000000000000000000000000000000000000000000000000000000
    mem[676] = arg1
    if arg1 >= sub_0154788d:
        require ext_code.size(sub_1b284e75Address)
        call sub_1b284e75Address.0x55df4275 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[672 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require return_data.size >= 192
        _11 = uint32(arg1), mem[708 len 28]
        _12 = mem[736]
        _13 = mem[768]
        _14 = mem[800]
        _15 = mem[832]
        require mem[832] <= 4294967296
        require mem[832] + 32 <= return_data.size
        require return_data.size >= mem[mem[832] + 672] + mem[832] + 32 and mem[mem[832] + 672] <= 4294967296
        mem[ceil32(return_data.size) + 672] = mem[672 len 4], Mask(224, 32, arg1) >> 32
        mem[ceil32(return_data.size) + 704] = uint32(_11)
        mem[ceil32(return_data.size) + 736] = uint32(_12)
        mem[ceil32(return_data.size) + 768] = _13
        mem[ceil32(return_data.size) + 800] = address(_14)
        mem[ceil32(return_data.size) + 832] = _15 + 672
        if not address(_14):
            revert with 0, 'DigitalMedia not found.'
        mem[ceil32(return_data.size) + 864] = arg1
        mem[ceil32(return_data.size) + 896] = uint32(_11)
        mem[ceil32(return_data.size) + 928] = uint32(_12)
        mem[ceil32(return_data.size) + 960] = _13
        mem[ceil32(return_data.size) + 992] = address(_14)
        mem[ceil32(return_data.size) + 1024] = 192
        mem[ceil32(return_data.size) + 1056] = mem[_15 + 672]
        _44 = mem[_15 + 672]
        mem[ceil32(return_data.size) + 1088 len ceil32(mem[_15 + 672])] = mem[_15 + 704 len ceil32(mem[_15 + 672])]
        if not _44 % 32:
            return arg1, _11 << 224, _12 << 224, _13, address(_14), 192, mem[ceil32(return_data.size) + 1056 len _44 + 32]
        mem[floor32(_44) + ceil32(return_data.size) + 1088] = mem[floor32(_44) + ceil32(return_data.size) + -(_44 % 32) + 1120 len _44 % 32]
        return arg1, _11 << 224, _12 << 224, _13, address(_14), 192, mem[ceil32(return_data.size) + 1056 len floor32(_44) + 64]
    require ext_code.size(sub_a0f01e08Address)
    call sub_a0f01e08Address.0x55df4275 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[672 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    _17 = uint32(arg1), mem[708 len 28]
    _18 = mem[736]
    _19 = mem[768]
    _20 = mem[800]
    _21 = mem[832]
    require mem[832] <= 4294967296
    require mem[832] + 32 <= return_data.size
    require return_data.size >= mem[mem[832] + 672] + mem[832] + 32 and mem[mem[832] + 672] <= 4294967296
    mem[ceil32(return_data.size) + 672] = mem[672 len 4], Mask(224, 32, arg1) >> 32
    mem[ceil32(return_data.size) + 704] = uint32(_17)
    mem[ceil32(return_data.size) + 736] = uint32(_18)
    mem[ceil32(return_data.size) + 768] = _19
    mem[ceil32(return_data.size) + 800] = address(_20)
    mem[ceil32(return_data.size) + 832] = _21 + 672
    if not address(_20):
        revert with 0, 'DigitalMedia not found.'
    mem[ceil32(return_data.size) + 864] = arg1
    mem[ceil32(return_data.size) + 896] = uint32(_17)
    mem[ceil32(return_data.size) + 928] = uint32(_18)
    mem[ceil32(return_data.size) + 960] = _19
    mem[ceil32(return_data.size) + 992] = address(_20)
    mem[ceil32(return_data.size) + 1024] = 192
    mem[ceil32(return_data.size) + 1056] = mem[_21 + 672]
    _47 = mem[_21 + 672]
    mem[ceil32(return_data.size) + 1088 len ceil32(mem[_21 + 672])] = mem[_21 + 704 len ceil32(mem[_21 + 672])]
    if not _47 % 32:
        return arg1, _17 << 224, _18 << 224, _19, address(_20), 192, mem[ceil32(return_data.size) + 1056 len _47 + 32]
    mem[floor32(_47) + ceil32(return_data.size) + 1088] = mem[floor32(_47) + ceil32(return_data.size) + -(_47 % 32) + 1120 len _47 % 32]
    return arg1, _17 << 224, _18 << 224, _19, address(_20), 192, mem[ceil32(return_data.size) + 1056 len floor32(_47) + 64]
}

function createDigitalMedia(uint32 arg1, uint256 arg2, string arg3) {
    require not stor0
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128] = 0
    if not arg2:
        mem[ceil32(arg3.length) + 420 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            require ext_code.size(sub_1b284e75Address)
            call sub_1b284e75Address.createDigitalMedia(address arg1, uint32 arg2, uint32 arg3, uint256 arg4, string arg5) with:
                 gas gas_remaining wei
                args msg.sender, 0, arg1 << 224, arg2, 160, arg3.length, Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + 420] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 452 len arg3.length % 32]
            require ext_code.size(sub_1b284e75Address)
            call sub_1b284e75Address.createDigitalMedia(address arg1, uint32 arg2, uint32 arg3, uint256 arg4, string arg5) with:
                 gas gas_remaining wei
                args msg.sender, 0, arg1 << 224, arg2, 160, arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + 420 len floor32(arg3.length) + -ceil32(arg3.length) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(arg3.length) + 480 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            emit DigitalMediaCreateEvent(uint256 arg1, address arg2, address arg3, uint32 arg4, uint32 arg5, uint256 arg6, string arg7):
                                         ext_call.return_data[0],
                                         sub_1b284e75Address,
                                         msg.sender,
                                         arg1 << 224,
                                         0,
                                         arg2,
                                         224,
                                         arg3.length,
                                         Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256,
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + 480] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 512 len arg3.length % 32]
            emit DigitalMediaCreateEvent(uint256 arg1, address arg2, address arg3, uint32 arg4, uint32 arg5, uint256 arg6, string arg7):
                                         ext_call.return_data[0],
                                         sub_1b284e75Address,
                                         msg.sender,
                                         arg1 << 224,
                                         0,
                                         arg2,
                                         224,
                                         arg3.length,
                                         Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                                         mem[(2 * ceil32(arg3.length)) + 480 len floor32(arg3.length) + -ceil32(arg3.length) + 32],
    else:
        mem[ceil32(arg3.length) + 384] = 96
        require sub_a0f01e08Address
        require sub_1b284e75Address
        mem[ceil32(arg3.length) + 416] = 0x5a1f3c2800000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg3.length) + 420] = arg2
        require ext_code.size(sub_1b284e75Address)
        call sub_1b284e75Address.0x5a1f3c28 with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(arg3.length) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require mem[ceil32(arg3.length) + 480] <= 4294967296
        require mem[ceil32(arg3.length) + 480] + 32 <= return_data.size
        require return_data.size >= mem[ceil32(arg3.length) + mem[ceil32(arg3.length) + 480] + 416] + mem[ceil32(arg3.length) + 480] + 32 and mem[ceil32(arg3.length) + mem[ceil32(arg3.length) + 480] + 416] <= 4294967296
        if not sub_55232467[address(mem[ceil32(arg3.length) + 452 len 28])]:
            if mem[ceil32(arg3.length) + 460 len 20] != msg.sender:
                revert with 0, 'Creator for collection not approved.'
        else:
            if sub_55232467[address(mem[ceil32(arg3.length) + 452 len 28])] != msg.sender:
                revert with 0, 'Creator for collection not approved.'
        mem[ceil32(arg3.length) + ceil32(return_data.size) + 708 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            require ext_code.size(sub_1b284e75Address)
            call sub_1b284e75Address.createDigitalMedia(address arg1, uint32 arg2, uint32 arg3, uint256 arg4, string arg5) with:
                 gas gas_remaining wei
                args msg.sender, 0, arg1 << 224, arg2, 160, arg3.length, Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(return_data.size) + 708] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(return_data.size) + -(arg3.length % 32) + 740 len arg3.length % 32]
            require ext_code.size(sub_1b284e75Address)
            call sub_1b284e75Address.createDigitalMedia(address arg1, uint32 arg2, uint32 arg3, uint256 arg4, string arg5) with:
                 gas gas_remaining wei
                args msg.sender, 0, arg1 << 224, arg2, 160, arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 708 len floor32(arg3.length) + -ceil32(arg3.length) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(arg3.length) + ceil32(return_data.size) + 768 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            emit DigitalMediaCreateEvent(uint256 arg1, address arg2, address arg3, uint32 arg4, uint32 arg5, uint256 arg6, string arg7):
                                         ext_call.return_data[0],
                                         sub_1b284e75Address,
                                         msg.sender,
                                         arg1 << 224,
                                         0,
                                         arg2,
                                         224,
                                         arg3.length,
                                         Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256,
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(return_data.size) + 768] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(return_data.size) + -(arg3.length % 32) + 800 len arg3.length % 32]
            emit DigitalMediaCreateEvent(uint256 arg1, address arg2, address arg3, uint32 arg4, uint32 arg5, uint256 arg6, string arg7):
                                         ext_call.return_data[0],
                                         sub_1b284e75Address,
                                         msg.sender,
                                         arg1 << 224,
                                         0,
                                         arg2,
                                         224,
                                         arg3.length,
                                         Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                                         mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 768 len floor32(arg3.length) + -ceil32(arg3.length) + 32],
}

function oboCreateDigitalMediaReleases(address arg1, uint256 arg2, uint32 arg3) {
    require not stor0
    if bool(stor20[msg.sender]) != 1:
        revert with 0, 'Unapproved OBO address.'
    if 1 == bool(stor22[msg.sender]):
        revert with 0, 'Unapproved OBO address.'
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 96
    mem[288] = 0
    mem[320] = 0
    if 0 >= arg3:
        revert with 0, 'Failed print edition.  Creation count must be > 0.'
    if arg3 >= 10000:
        revert with 0, 'Cannot print more than 10K tokens at once'
    mem[352] = 0
    mem[384] = 0
    mem[416] = 0
    mem[448] = 0
    mem[480] = 0
    mem[512] = 96
    mem[544] = 0
    mem[576] = 0
    mem[608] = 0
    mem[640] = 0
    mem[672] = 0
    mem[704] = 96
    require sub_a0f01e08Address
    require sub_1b284e75Address
    require sub_a0f01e08Address
    require sub_1b284e75Address
    mem[736] = 0x55df427500000000000000000000000000000000000000000000000000000000
    mem[740] = arg2
    if arg2 >= sub_0154788d:
        require ext_code.size(sub_1b284e75Address)
        call sub_1b284e75Address.0x55df4275 with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[736 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require return_data.size >= 192
        _22 = uint32(arg2), mem[772 len 28]
        _23 = mem[800]
        _24 = mem[832]
        _25 = mem[864]
        _26 = mem[896]
        require mem[896] <= 4294967296
        require mem[896] + 32 <= return_data.size
        require return_data.size >= mem[mem[896] + 736] + mem[896] + 32 and mem[mem[896] + 736] <= 4294967296
        mem[ceil32(return_data.size) + 736] = mem[736 len 4], Mask(224, 32, arg2) >> 32
        mem[ceil32(return_data.size) + 768] = uint32(_22)
        mem[ceil32(return_data.size) + 800] = uint32(_23)
        mem[ceil32(return_data.size) + 832] = _24
        mem[ceil32(return_data.size) + 864] = address(_25)
        mem[ceil32(return_data.size) + 896] = _26 + 736
        mem[0] = address(_25)
        mem[32] = 18
        if not sub_55232467[address(_25)]:
            if address(_25) != arg1:
                revert with 0, 'Creator not approved.'
            if not arg1:
                revert with 0, '0x0 creator addresses are not allowed.'
            if not singleCreatorAddress:
                if uint32(arg3 + uint32(_23)) > uint32(_22):
                    revert with 0, 'Total supply exceeded.'
                mem[ceil32(return_data.size) + 928] = 12
                mem[ceil32(return_data.size) + 960] = 'ipfs://ipfs/'
                _119 = mem[_26 + 736]
                mem[ceil32(return_data.size) + 992] = mem[_26 + 736] + 12
                mem[64] = ceil32(return_data.size) + floor32(_119 + 43) + 1024
                if not _119 + 12:
                    idx = 0
                    s = 0
                    while idx < 12:
                        require idx < 12
                        require s < mem[ceil32(return_data.size) + 992]
                        mem[ceil32(return_data.size) + s + 1024 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 960, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 960, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('var', 0)), 32))), 0) - 256
                        idx = idx + 1
                        s = s + 1
                        continue 
                    _2115 = mem[_26 + 736]
                    idx = 0
                    s = 12
                    while idx < _2115:
                        require idx < mem[_26 + 736]
                        require s < mem[ceil32(return_data.size) + 992]
                        mem[ceil32(return_data.size) + s + 1024 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 768, ('var', '_26'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 768, ('var', '_26'), ('var', 0)), 32))), 0) - 256
                        _2115 = mem[_26 + 736]
                        idx = idx + 1
                        s = s + 1
                        continue 
                    s = 0
                    s = 288
                    s = 0
                    idx = 0
                    while uint32(idx) < arg3:
                        _3043 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3043] = uint32(uint32(_23) + idx + 1)
                        mem[_3043 + 32] = arg2
                        require stor19 + 1 >= stor19
                        mem[0] = stor19 + 1
                        mem[32] = 17
                        uint32(tokenIdToDigitalMediaRelease[stor19 + 1].field_0) = uint32(uint32(_23) + idx + 1)
                        tokenIdToDigitalMediaRelease[stor19 + 1].field_256 = arg2
                        _3078 = mem[64]
                        mem[mem[64]] = stor19 + 1
                        mem[mem[64] + 32] = arg1
                        mem[mem[64] + 64] = uint32(uint32(_23) + idx + 1)
                        mem[mem[64] + 128] = arg2
                        mem[mem[64] + 96] = 160
                        mem[mem[64] + 160] = mem[ceil32(return_data.size) + 992]
                        _3080 = mem[ceil32(return_data.size) + 992]
                        s = 0
                        while s < _3080:
                            mem[s + mem[64] + 192] = mem[s + ceil32(return_data.size) + 1024]
                            s = s + 32
                            continue 
                        if not _3080 % 32:
                            emit DigitalMediaReleaseCreateEvent(uint256 arg1, address arg2, uint32 arg3, string arg4, uint256 arg5):
                                                                mem[mem[64] len _3080 + _3078 + -mem[64] + 192],
                        else:
                            mem[floor32(_3080) + _3078 + 192] = mem[floor32(_3080) + _3078 + -(_3080 % 32) + 224 len _3080 % 32]
                            emit DigitalMediaReleaseCreateEvent(uint256 arg1, address arg2, uint32 arg3, string arg4, uint256 arg5):
                                                                mem[mem[64] len floor32(_3080) + _3078 + -mem[64] + 224],
                        require arg1
                        require not ownerOf[stor19 + 1]
                        ownerOf[stor19 + 1] = arg1
                        require balanceOf[address(arg1)] + 1 >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)]++
                        tokenOfOwnerByIndex[address(arg1)]++
                        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = stor19 + 1
                        stor12[stor19 + 1] = tokenOfOwnerByIndex[address(arg1)]
                        mem[mem[64]] = stor19 + 1
                        emit Transfer((stor19 + 1), 0, arg1);
                        stor14[stor19 + 1] = tokenByIndex.length
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length] = stor19 + 1
                        require ownerOf[stor19 + 1]
                        mem[32] = 15
                        mem[0] = sha3(stor19 + 1, 15)
                        uint256(tokenURI[stor19 + 1]) = (2 * mem[ceil32(return_data.size) + 992]) + 1
                        t = sha3(sha3(stor19 + 1, 15))
                        s = ceil32(return_data.size) + 1024
                        while ceil32(return_data.size) + mem[ceil32(return_data.size) + 992] + 1024 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(stor19 + 1, 15)) + (Mask(251, 0, mem[ceil32(return_data.size) + 992] + 31) >> 5)
                        while sha3(sha3(stor19 + 1, 15)) + (tokenURI[stor19 + 1].length + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        require stor19 + 1 >= stor19
                        stor19++
                        s = stor19 + 1
                        s = _3043
                        s = uint32(_23) + idx + 1
                        idx = idx + 1
                        continue 
                else:
                    mem[ceil32(return_data.size) + 1024 len 32 * _119 + 12] = code.data[16989 len 32 * _119 + 12]
                    idx = 0
                    s = 0
                    while idx < 12:
                        require idx < 12
                        require s < mem[ceil32(return_data.size) + 992]
                        mem[ceil32(return_data.size) + s + 1024 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 960, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 960, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('var', 0)), 32))), 0) - 256
                        idx = idx + 1
                        s = s + 1
                        continue 
                    _2116 = mem[_26 + 736]
                    idx = 0
                    s = 12
                    while idx < _2116:
                        require idx < mem[_26 + 736]
                        require s < mem[ceil32(return_data.size) + 992]
                        mem[ceil32(return_data.size) + s + 1024 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 768, ('var', '_26'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 768, ('var', '_26'), ('var', 0)), 32))), 0) - 256
                        _2116 = mem[_26 + 736]
                        idx = idx + 1
                        s = s + 1
                        continue 
                    s = 0
                    s = 288
                    s = 0
                    idx = 0
                    while uint32(idx) < arg3:
                        _3044 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3044] = uint32(uint32(_23) + idx + 1)
                        mem[_3044 + 32] = arg2
                        require stor19 + 1 >= stor19
                        mem[0] = stor19 + 1
                        mem[32] = 17
                        uint32(tokenIdToDigitalMediaRelease[stor19 + 1].field_0) = uint32(uint32(_23) + idx + 1)
                        tokenIdToDigitalMediaRelease[stor19 + 1].field_256 = arg2
                        mem[mem[64]] = stor19 + 1
                        mem[mem[64] + 32] = arg1
                        mem[mem[64] + 64] = uint32(uint32(_23) + idx + 1)
                        mem[mem[64] + 128] = arg2
                        mem[mem[64] + 96] = 160
                        mem[mem[64] + 160] = mem[ceil32(return_data.size) + 992]
                        _3086 = mem[ceil32(return_data.size) + 992]
                        s = 0
                        while s < _3086:
                            mem[s + mem[64] + 192] = mem[s + ceil32(return_data.size) + 1024]
                            s = s + 32
                            continue 
                        if not _3086 % 32:
                            emit DigitalMediaReleaseCreateEvent(uint256 arg1, address arg2, uint32 arg3, string arg4, uint256 arg5):
                                                                stor19 + 1,
                                                                address(arg1),
                                                                uint32(_23) + idx + 1 << 224,
                                                                160,
                                                                arg2,
                                                                mem[mem[64] + 160 len _3086 + 32],
                        else:
                            mem[floor32(_3086) + mem[64] + 192] = mem[floor32(_3086) + mem[64] + -(_3086 % 32) + 224 len _3086 % 32]
                            emit DigitalMediaReleaseCreateEvent(uint256 arg1, address arg2, uint32 arg3, string arg4, uint256 arg5):
                                                                stor19 + 1,
                                                                address(arg1),
                                                                uint32(_23) + idx + 1 << 224,
                                                                160,
                                                                arg2,
                                                                mem[mem[64] + 160 len floor32(_3086) + 64],
                        require arg1
                        require not ownerOf[stor19 + 1]
                        ownerOf[stor19 + 1] = arg1
                        require balanceOf[address(arg1)] + 1 >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)]++
                        tokenOfOwnerByIndex[address(arg1)]++
                        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = stor19 + 1
                        stor12[stor19 + 1] = tokenOfOwnerByIndex[address(arg1)]
                        mem[mem[64]] = stor19 + 1
                        emit Transfer((stor19 + 1), 0, arg1);
                        stor14[stor19 + 1] = tokenByIndex.length
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length] = stor19 + 1
                        require ownerOf[stor19 + 1]
                        mem[32] = 15
                        mem[0] = sha3(stor19 + 1, 15)
                        uint256(tokenURI[stor19 + 1]) = (2 * mem[ceil32(return_data.size) + 992]) + 1
                        t = sha3(sha3(stor19 + 1, 15))
                        s = ceil32(return_data.size) + 1024
                        while ceil32(return_data.size) + mem[ceil32(return_data.size) + 992] + 1024 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(stor19 + 1, 15)) + (Mask(251, 0, mem[ceil32(return_data.size) + 992] + 31) >> 5)
                        while sha3(sha3(stor19 + 1, 15)) + (tokenURI[stor19 + 1].length + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        require stor19 + 1 >= stor19
                        stor19++
                        s = stor19 + 1
                        s = _3044
                        s = uint32(_23) + idx + 1
                        idx = idx + 1
                        continue 
            else:
                if singleCreatorAddress != arg1:
                    revert with 0, 'Creator must match single creator address.'
                if uint32(arg3 + uint32(_23)) > uint32(_22):
                    revert with 0, 'Total supply exceeded.'
                mem[ceil32(return_data.size) + 928] = 12
                mem[ceil32(return_data.size) + 960] = 'ipfs://ipfs/'
                _95 = mem[_26 + 736]
                mem[ceil32(return_data.size) + 992] = mem[_26 + 736] + 12
                mem[64] = ceil32(return_data.size) + floor32(_95 + 43) + 1024
                if not _95 + 12:
                    idx = 0
                    s = 0
                    while idx < 12:
                        require idx < 12
                        require s < mem[ceil32(return_data.size) + 992]
                        mem[ceil32(return_data.size) + s + 1024 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 960, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 960, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('var', 0)), 32))), 0) - 256
                        idx = idx + 1
                        s = s + 1
                        continue 
                    _2117 = mem[_26 + 736]
                    idx = 0
                    s = 12
                    while idx < _2117:
                        require idx < mem[_26 + 736]
                        require s < mem[ceil32(return_data.size) + 992]
                        mem[ceil32(return_data.size) + s + 1024 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 768, ('var', '_26'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 768, ('var', '_26'), ('var', 0)), 32))), 0) - 256
                        _2117 = mem[_26 + 736]
                        idx = idx + 1
                        s = s + 1
                        continue 
                    s = 0
                    s = 288
                    s = 0
                    idx = 0
                    while uint32(idx) < arg3:
                        _3045 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3045] = uint32(uint32(_23) + idx + 1)
                        mem[_3045 + 32] = arg2
                        require stor19 + 1 >= stor19
                        mem[0] = stor19 + 1
                        mem[32] = 17
                        uint32(tokenIdToDigitalMediaRelease[stor19 + 1].field_0) = uint32(uint32(_23) + idx + 1)
                        tokenIdToDigitalMediaRelease[stor19 + 1].field_256 = arg2
                        mem[mem[64]] = stor19 + 1
                        mem[mem[64] + 32] = arg1
                        mem[mem[64] + 64] = uint32(uint32(_23) + idx + 1)
                        mem[mem[64] + 128] = arg2
                        mem[mem[64] + 96] = 160
                        mem[mem[64] + 160] = mem[ceil32(return_data.size) + 992]
                        _3092 = mem[ceil32(return_data.size) + 992]
                        s = 0
                        while s < _3092:
                            mem[s + mem[64] + 192] = mem[s + ceil32(return_data.size) + 1024]
                            s = s + 32
                            continue 
                        if not _3092 % 32:
                            emit DigitalMediaReleaseCreateEvent(uint256 arg1, address arg2, uint32 arg3, string arg4, uint256 arg5):
                                                                stor19 + 1,
                                                                address(arg1),
                                                                uint32(_23) + idx + 1 << 224,
                                                                160,
                                                                arg2,
                                                                mem[mem[64] + 160 len _3092 + 32],
                        else:
                            mem[floor32(_3092) + mem[64] + 192] = mem[floor32(_3092) + mem[64] + -(_3092 % 32) + 224 len _3092 % 32]
                            emit DigitalMediaReleaseCreateEvent(uint256 arg1, address arg2, uint32 arg3, string arg4, uint256 arg5):
                                                                stor19 + 1,
                                                                address(arg1),
                                                                uint32(_23) + idx + 1 << 224,
                                                                160,
                                                                arg2,
                                                                mem[mem[64] + 160 len floor32(_3092) + 64],
                        require arg1
                        require not ownerOf[stor19 + 1]
                        ownerOf[stor19 + 1] = arg1
                        require balanceOf[address(arg1)] + 1 >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)]++
                        tokenOfOwnerByIndex[address(arg1)]++
                        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = stor19 + 1
                        stor12[stor19 + 1] = tokenOfOwnerByIndex[address(arg1)]
                        mem[mem[64]] = stor19 + 1
                        emit Transfer((stor19 + 1), 0, arg1);
                        stor14[stor19 + 1] = tokenByIndex.length
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length] = stor19 + 1
                        require ownerOf[stor19 + 1]
                        mem[32] = 15
                        mem[0] = sha3(stor19 + 1, 15)
                        uint256(tokenURI[stor19 + 1]) = (2 * mem[ceil32(return_data.size) + 992]) + 1
                        t = sha3(sha3(stor19 + 1, 15))
                        s = ceil32(return_data.size) + 1024
                        while ceil32(return_data.size) + mem[ceil32(return_data.size) + 992] + 1024 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(stor19 + 1, 15)) + (Mask(251, 0, mem[ceil32(return_data.size) + 992] + 31) >> 5)
                        while sha3(sha3(stor19 + 1, 15)) + (tokenURI[stor19 + 1].length + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        require stor19 + 1 >= stor19
                        stor19++
                        s = stor19 + 1
                        s = _3045
                        s = uint32(_23) + idx + 1
                        idx = idx + 1
                        continue 
                else:
                    mem[ceil32(return_data.size) + 1024 len 32 * _95 + 12] = code.data[16989 len 32 * _95 + 12]
                    idx = 0
                    s = 0
                    while idx < 12:
                        require idx < 12
                        require s < mem[ceil32(return_data.size) + 992]
                        mem[ceil32(return_data.size) + s + 1024 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 960, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 960, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('var', 0)), 32))), 0) - 256
                        idx = idx + 1
                        s = s + 1
                        continue 
                    _2118 = mem[_26 + 736]
                    idx = 0
                    s = 12
                    while idx < _2118:
                        require idx < mem[_26 + 736]
                        require s < mem[ceil32(return_data.size) + 992]
                        mem[ceil32(return_data.size) + s + 1024 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 768, ('var', '_26'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 768, ('var', '_26'), ('var', 0)), 32))), 0) - 256
                        _2118 = mem[_26 + 736]
                        idx = idx + 1
                        s = s + 1
                        continue 
                    s = 0
                    s = 288
                    s = 0
                    idx = 0
                    while uint32(idx) < arg3:
                        _3046 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3046] = uint32(uint32(_23) + idx + 1)
                        mem[_3046 + 32] = arg2
                        require stor19 + 1 >= stor19
                        mem[0] = stor19 + 1
                        mem[32] = 17
                        uint32(tokenIdToDigitalMediaRelease[stor19 + 1].field_0) = uint32(uint32(_23) + idx + 1)
                        tokenIdToDigitalMediaRelease[stor19 + 1].field_256 = arg2
                        mem[mem[64]] = stor19 + 1
                        mem[mem[64] + 32] = arg1
                        mem[mem[64] + 64] = uint32(uint32(_23) + idx + 1)
                        mem[mem[64] + 128] = arg2
                        mem[mem[64] + 96] = 160
                        mem[mem[64] + 160] = mem[ceil32(return_data.size) + 992]
                        _3098 = mem[ceil32(return_data.size) + 992]
                        s = 0
                        while s < _3098:
                            mem[s + mem[64] + 192] = mem[s + ceil32(return_data.size) + 1024]
                            s = s + 32
                            continue 
                        if not _3098 % 32:
                            emit DigitalMediaReleaseCreateEvent(uint256 arg1, address arg2, uint32 arg3, string arg4, uint256 arg5):
                                                                stor19 + 1,
                                                                address(arg1),
                                                                uint32(_23) + idx + 1 << 224,
                                                                160,
                                                                arg2,
                                                                mem[mem[64] + 160 len _3098 + 32],
                        else:
                            mem[floor32(_3098) + mem[64] + 192] = mem[floor32(_3098) + mem[64] + -(_3098 % 32) + 224 len _3098 % 32]
                            emit DigitalMediaReleaseCreateEvent(uint256 arg1, address arg2, uint32 arg3, string arg4, uint256 arg5):
                                                                stor19 + 1,
                                                                address(arg1),
                                                                uint32(_23) + idx + 1 << 224,
                                                                160,
                                                                arg2,
                                                                mem[mem[64] + 160 len floor32(_3098) + 64],
                        require arg1
                        require not ownerOf[stor19 + 1]
                        ownerOf[stor19 + 1] = arg1
                        require balanceOf[address(arg1)] + 1 >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)]++
                        tokenOfOwnerByIndex[address(arg1)]++
                        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = stor19 + 1
                        stor12[stor19 + 1] = tokenOfOwnerByIndex[address(arg1)]
                        mem[mem[64]] = stor19 + 1
                        emit Transfer((stor19 + 1), 0, arg1);
                        stor14[stor19 + 1] = tokenByIndex.length
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length] = stor19 + 1
                        require ownerOf[stor19 + 1]
                        mem[32] = 15
                        mem[0] = sha3(stor19 + 1, 15)
                        uint256(tokenURI[stor19 + 1]) = (2 * mem[ceil32(return_data.size) + 992]) + 1
                        t = sha3(sha3(stor19 + 1, 15))
                        s = ceil32(return_data.size) + 1024
                        while ceil32(return_data.size) + mem[ceil32(return_data.size) + 992] + 1024 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(stor19 + 1, 15)) + (Mask(251, 0, mem[ceil32(return_data.size) + 992] + 31) >> 5)
                        while sha3(sha3(stor19 + 1, 15)) + (tokenURI[stor19 + 1].length + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        require stor19 + 1 >= stor19
                        stor19++
                        s = stor19 + 1
                        s = _3046
                        s = uint32(_23) + idx + 1
                        idx = idx + 1
                        continue 
        else:
            if sub_55232467[address(_25)] != arg1:
                revert with 0, 'Creator not approved.'
            if not arg1:
                revert with 0, '0x0 creator addresses are not allowed.'
            if not singleCreatorAddress:
                if uint32(arg3 + uint32(_23)) > uint32(_22):
                    revert with 0, 'Total supply exceeded.'
                mem[ceil32(return_data.size) + 928] = 12
                mem[ceil32(return_data.size) + 960] = 'ipfs://ipfs/'
                _122 = mem[_26 + 736]
                mem[ceil32(return_data.size) + 992] = mem[_26 + 736] + 12
                mem[64] = ceil32(return_data.size) + floor32(_122 + 43) + 1024
                if not _122 + 12:
                    idx = 0
                    s = 0
                    while idx < 12:
                        require idx < 12
                        require s < mem[ceil32(return_data.size) + 992]
                        mem[ceil32(return_data.size) + s + 1024 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 960, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 960, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('var', 0)), 32))), 0) - 256
                        idx = idx + 1
                        s = s + 1
                        continue 
                    _2119 = mem[_26 + 736]
                    idx = 0
                    s = 12
                    while idx < _2119:
                        require idx < mem[_26 + 736]
                        require s < mem[ceil32(return_data.size) + 992]
                        mem[ceil32(return_data.size) + s + 1024 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 768, ('var', '_26'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 768, ('var', '_26'), ('var', 0)), 32))), 0) - 256
                        _2119 = mem[_26 + 736]
                        idx = idx + 1
                        s = s + 1
                        continue 
                    s = 0
                    s = 288
                    s = 0
                    idx = 0
                    while uint32(idx) < arg3:
                        _3047 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3047] = uint32(uint32(_23) + idx + 1)
                        mem[_3047 + 32] = arg2
                        require stor19 + 1 >= stor19
                        mem[0] = stor19 + 1
                        mem[32] = 17
                        uint32(tokenIdToDigitalMediaRelease[stor19 + 1].field_0) = uint32(uint32(_23) + idx + 1)
                        tokenIdToDigitalMediaRelease[stor19 + 1].field_256 = arg2
                        _3102 = mem[64]
                        mem[mem[64]] = stor19 + 1
                        mem[mem[64] + 32] = arg1
                        mem[mem[64] + 64] = uint32(uint32(_23) + idx + 1)
                        mem[mem[64] + 128] = arg2
                        mem[mem[64] + 96] = 160
                        mem[mem[64] + 160] = mem[ceil32(return_data.size) + 992]
                        _3104 = mem[ceil32(return_data.size) + 992]
                        s = 0
                        while s < _3104:
                            mem[s + mem[64] + 192] = mem[s + ceil32(return_data.size) + 1024]
                            s = s + 32
                            continue 
                        if not _3104 % 32:
                            emit DigitalMediaReleaseCreateEvent(uint256 arg1, address arg2, uint32 arg3, string arg4, uint256 arg5):
                                                                mem[mem[64] len _3104 + _3102 + -mem[64] + 192],
                        else:
                            mem[floor32(_3104) + _3102 + 192] = mem[floor32(_3104) + _3102 + -(_3104 % 32) + 224 len _3104 % 32]
                            emit DigitalMediaReleaseCreateEvent(uint256 arg1, address arg2, uint32 arg3, string arg4, uint256 arg5):
                                                                mem[mem[64] len floor32(_3104) + _3102 + -mem[64] + 224],
                        require arg1
                        require not ownerOf[stor19 + 1]
                        ownerOf[stor19 + 1] = arg1
                        require balanceOf[address(arg1)] + 1 >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)]++
                        tokenOfOwnerByIndex[address(arg1)]++
                        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = stor19 + 1
                        stor12[stor19 + 1] = tokenOfOwnerByIndex[address(arg1)]
                        mem[mem[64]] = stor19 + 1
                        emit Transfer((stor19 + 1), 0, arg1);
                        stor14[stor19 + 1] = tokenByIndex.length
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length] = stor19 + 1
                        require ownerOf[stor19 + 1]
                        mem[32] = 15
                        mem[0] = sha3(stor19 + 1, 15)
                        uint256(tokenURI[stor19 + 1]) = (2 * mem[ceil32(return_data.size) + 992]) + 1
                        t = sha3(sha3(stor19 + 1, 15))
                        s = ceil32(return_data.size) + 1024
                        while ceil32(return_data.size) + mem[ceil32(return_data.size) + 992] + 1024 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(stor19 + 1, 15)) + (Mask(251, 0, mem[ceil32(return_data.size) + 992] + 31) >> 5)
                        while sha3(sha3(stor19 + 1, 15)) + (tokenURI[stor19 + 1].length + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        require stor19 + 1 >= stor19
                        stor19++
                        s = stor19 + 1
                        s = _3047
                        s = uint32(_23) + idx + 1
                        idx = idx + 1
                        continue 
                else:
                    mem[ceil32(return_data.size) + 1024 len 32 * _122 + 12] = code.data[16989 len 32 * _122 + 12]
                    idx = 0
                    s = 0
                    while idx < 12:
                        require idx < 12
                        require s < mem[ceil32(return_data.size) + 992]
                        mem[ceil32(return_data.size) + s + 1024 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 960, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 960, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('var', 0)), 32))), 0) - 256
                        idx = idx + 1
                        s = s + 1
                        continue 
                    _2120 = mem[_26 + 736]
                    idx = 0
                    s = 12
                    while idx < _2120:
                        require idx < mem[_26 + 736]
                        require s < mem[ceil32(return_data.size) + 992]
                        mem[ceil32(return_data.size) + s + 1024 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 768, ('var', '_26'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 768, ('var', '_26'), ('var', 0)), 32))), 0) - 256
                        _2120 = mem[_26 + 736]
                        idx = idx + 1
                        s = s + 1
                        continue 
                    s = 0
                    s = 288
                    s = 0
                    idx = 0
                    while uint32(idx) < arg3:
                        _3048 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3048] = uint32(uint32(_23) + idx + 1)
                        mem[_3048 + 32] = arg2
                        require stor19 + 1 >= stor19
                        mem[0] = stor19 + 1
                        mem[32] = 17
                        uint32(tokenIdToDigitalMediaRelease[stor19 + 1].field_0) = uint32(uint32(_23) + idx + 1)
                        tokenIdToDigitalMediaRelease[stor19 + 1].field_256 = arg2
                        mem[mem[64]] = stor19 + 1
                        mem[mem[64] + 32] = arg1
                        mem[mem[64] + 64] = uint32(uint32(_23) + idx + 1)
                        mem[mem[64] + 128] = arg2
                        mem[mem[64] + 96] = 160
                        mem[mem[64] + 160] = mem[ceil32(return_data.size) + 992]
                        _3110 = mem[ceil32(return_data.size) + 992]
                        s = 0
                        while s < _3110:
                            mem[s + mem[64] + 192] = mem[s + ceil32(return_data.size) + 1024]
                            s = s + 32
                            continue 
                        if not _3110 % 32:
                            emit DigitalMediaReleaseCreateEvent(uint256 arg1, address arg2, uint32 arg3, string arg4, uint256 arg5):
                                                                stor19 + 1,
                                                                address(arg1),
                                                                uint32(_23) + idx + 1 << 224,
                                                                160,
                                                                arg2,
                                                                mem[mem[64] + 160 len _3110 + 32],
                        else:
                            mem[floor32(_3110) + mem[64] + 192] = mem[floor32(_3110) + mem[64] + -(_3110 % 32) + 224 len _3110 % 32]
                            emit DigitalMediaReleaseCreateEvent(uint256 arg1, address arg2, uint32 arg3, string arg4, uint256 arg5):
                                                                stor19 + 1,
                                                                address(arg1),
                                                                uint32(_23) + idx + 1 << 224,
                                                                160,
                                                                arg2,
                                                                mem[mem[64] + 160 len floor32(_3110) + 64],
                        require arg1
                        require not ownerOf[stor19 + 1]
                        ownerOf[stor19 + 1] = arg1
                        require balanceOf[address(arg1)] + 1 >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)]++
                        tokenOfOwnerByIndex[address(arg1)]++
                        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = stor19 + 1
                        stor12[stor19 + 1] = tokenOfOwnerByIndex[address(arg1)]
                        mem[mem[64]] = stor19 + 1
                        emit Transfer((stor19 + 1), 0, arg1);
                        stor14[stor19 + 1] = tokenByIndex.length
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length] = stor19 + 1
                        require ownerOf[stor19 + 1]
                        mem[32] = 15
                        mem[0] = sha3(stor19 + 1, 15)
                        uint256(tokenURI[stor19 + 1]) = (2 * mem[ceil32(return_data.size) + 992]) + 1
                        t = sha3(sha3(stor19 + 1, 15))
                        s = ceil32(return_data.size) + 1024
                        while ceil32(return_data.size) + mem[ceil32(return_data.size) + 992] + 1024 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(stor19 + 1, 15)) + (Mask(251, 0, mem[ceil32(return_data.size) + 992] + 31) >> 5)
                        while sha3(sha3(stor19 + 1, 15)) + (tokenURI[stor19 + 1].length + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        require stor19 + 1 >= stor19
                        stor19++
                        s = stor19 + 1
                        s = _3048
                        s = uint32(_23) + idx + 1
                        idx = idx + 1
                        continue 
            else:
                if singleCreatorAddress != arg1:
                    revert with 0, 'Creator must match single creator address.'
                if uint32(arg3 + uint32(_23)) > uint32(_22):
                    revert with 0, 'Total supply exceeded.'
                mem[ceil32(return_data.size) + 928] = 12
                mem[ceil32(return_data.size) + 960] = 'ipfs://ipfs/'
                _102 = mem[_26 + 736]
                mem[ceil32(return_data.size) + 992] = mem[_26 + 736] + 12
                mem[64] = ceil32(return_data.size) + floor32(_102 + 43) + 1024
                if not _102 + 12:
                    idx = 0
                    s = 0
                    while idx < 12:
                        require idx < 12
                        require s < mem[ceil32(return_data.size) + 992]
                        mem[ceil32(return_data.size) + s + 1024 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 960, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 960, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('var', 0)), 32))), 0) - 256
                        idx = idx + 1
                        s = s + 1
                        continue 
                    _2121 = mem[_26 + 736]
                    idx = 0
                    s = 12
                    while idx < _2121:
                        require idx < mem[_26 + 736]
                        require s < mem[ceil32(return_data.size) + 992]
                        mem[ceil32(return_data.size) + s + 1024 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 768, ('var', '_26'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 768, ('var', '_26'), ('var', 0)), 32))), 0) - 256
                        _2121 = mem[_26 + 736]
                        idx = idx + 1
                        s = s + 1
                        continue 
                    s = 0
                    s = 288
                    s = 0
                    idx = 0
                    while uint32(idx) < arg3:
                        _3049 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3049] = uint32(uint32(_23) + idx + 1)
                        mem[_3049 + 32] = arg2
                        require stor19 + 1 >= stor19
                        mem[0] = stor19 + 1
                        mem[32] = 17
                        uint32(tokenIdToDigitalMediaRelease[stor19 + 1].field_0) = uint32(uint32(_23) + idx + 1)
                        tokenIdToDigitalMediaRelease[stor19 + 1].field_256 = arg2
                        _3114 = mem[64]
                        mem[mem[64]] = stor19 + 1
                        mem[mem[64] + 32] = arg1
                        mem[mem[64] + 64] = uint32(uint32(_23) + idx + 1)
                        mem[mem[64] + 128] = arg2
                        mem[mem[64] + 96] = 160
                        mem[mem[64] + 160] = mem[ceil32(return_data.size) + 992]
                        _3116 = mem[ceil32(return_data.size) + 992]
                        s = 0
                        while s < _3116:
                            mem[s + mem[64] + 192] = mem[s + ceil32(return_data.size) + 1024]
                            s = s + 32
                            continue 
                        if not _3116 % 32:
                            emit DigitalMediaReleaseCreateEvent(uint256 arg1, address arg2, uint32 arg3, string arg4, uint256 arg5):
                                                                mem[mem[64] len _3116 + _3114 + -mem[64] + 192],
                        else:
                            mem[floor32(_3116) + _3114 + 192] = mem[floor32(_3116) + _3114 + -(_3116 % 32) + 224 len _3116 % 32]
                            emit DigitalMediaReleaseCreateEvent(uint256 arg1, address arg2, uint32 arg3, string arg4, uint256 arg5):
                                                                mem[mem[64] len floor32(_3116) + _3114 + -mem[64] + 224],
                        require arg1
                        require not ownerOf[stor19 + 1]
                        ownerOf[stor19 + 1] = arg1
                        require balanceOf[address(arg1)] + 1 >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)]++
                        tokenOfOwnerByIndex[address(arg1)]++
                        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = stor19 + 1
                        stor12[stor19 + 1] = tokenOfOwnerByIndex[address(arg1)]
                        mem[mem[64]] = stor19 + 1
                        emit Transfer((stor19 + 1), 0, arg1);
                        stor14[stor19 + 1] = tokenByIndex.length
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length] = stor19 + 1
                        require ownerOf[stor19 + 1]
                        mem[32] = 15
                        mem[0] = sha3(stor19 + 1, 15)
                        uint256(tokenURI[stor19 + 1]) = (2 * mem[ceil32(return_data.size) + 992]) + 1
                        t = sha3(sha3(stor19 + 1, 15))
                        s = ceil32(return_data.size) + 1024
                        while ceil32(return_data.size) + mem[ceil32(return_data.size) + 992] + 1024 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(stor19 + 1, 15)) + (Mask(251, 0, mem[ceil32(return_data.size) + 992] + 31) >> 5)
                        while sha3(sha3(stor19 + 1, 15)) + (tokenURI[stor19 + 1].length + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        require stor19 + 1 >= stor19
                        stor19++
                        s = stor19 + 1
                        s = _3049
                        s = uint32(_23) + idx + 1
                        idx = idx + 1
                        continue 
                else:
                    mem[ceil32(return_data.size) + 1024 len 32 * _102 + 12] = code.data[16989 len 32 * _102 + 12]
                    idx = 0
                    s = 0
                    while idx < 12:
                        require idx < 12
                        require s < mem[ceil32(return_data.size) + 992]
                        mem[ceil32(return_data.size) + s + 1024 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 960, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 960, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('var', 0)), 32))), 0) - 256
                        idx = idx + 1
                        s = s + 1
                        continue 
                    _2122 = mem[_26 + 736]
                    idx = 0
                    s = 12
                    while idx < _2122:
                        require idx < mem[_26 + 736]
                        require s < mem[ceil32(return_data.size) + 992]
                        mem[ceil32(return_data.size) + s + 1024 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 768, ('var', '_26'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 768, ('var', '_26'), ('var', 0)), 32))), 0) - 256
                        _2122 = mem[_26 + 736]
                        idx = idx + 1
                        s = s + 1
                        continue 
                    s = 0
                    s = 288
                    s = 0
                    idx = 0
                    while uint32(idx) < arg3:
                        _3050 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3050] = uint32(uint32(_23) + idx + 1)
                        mem[_3050 + 32] = arg2
                        require stor19 + 1 >= stor19
                        mem[0] = stor19 + 1
                        mem[32] = 17
                        uint32(tokenIdToDigitalMediaRelease[stor19 + 1].field_0) = uint32(uint32(_23) + idx + 1)
                        tokenIdToDigitalMediaRelease[stor19 + 1].field_256 = arg2
                        _3120 = mem[64]
                        mem[mem[64]] = stor19 + 1
                        mem[mem[64] + 32] = arg1
                        mem[mem[64] + 64] = uint32(uint32(_23) + idx + 1)
                        mem[mem[64] + 128] = arg2
                        mem[mem[64] + 96] = 160
                        mem[mem[64] + 160] = mem[ceil32(return_data.size) + 992]
                        _3122 = mem[ceil32(return_data.size) + 992]
                        s = 0
                        while s < _3122:
                            mem[s + mem[64] + 192] = mem[s + ceil32(return_data.size) + 1024]
                            s = s + 32
                            continue 
                        if not _3122 % 32:
                            emit DigitalMediaReleaseCreateEvent(uint256 arg1, address arg2, uint32 arg3, string arg4, uint256 arg5):
                                                                mem[mem[64] len _3122 + _3120 + -mem[64] + 192],
                        else:
                            mem[floor32(_3122) + _3120 + 192] = mem[floor32(_3122) + _3120 + -(_3122 % 32) + 224 len _3122 % 32]
                            emit DigitalMediaReleaseCreateEvent(uint256 arg1, address arg2, uint32 arg3, string arg4, uint256 arg5):
                                                                mem[mem[64] len floor32(_3122) + _3120 + -mem[64] + 224],
                        require arg1
                        require not ownerOf[stor19 + 1]
                        ownerOf[stor19 + 1] = arg1
                        require balanceOf[address(arg1)] + 1 >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)]++
                        tokenOfOwnerByIndex[address(arg1)]++
                        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = stor19 + 1
                        stor12[stor19 + 1] = tokenOfOwnerByIndex[address(arg1)]
                        mem[mem[64]] = stor19 + 1
                        emit Transfer((stor19 + 1), 0, arg1);
                        stor14[stor19 + 1] = tokenByIndex.length
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length] = stor19 + 1
                        require ownerOf[stor19 + 1]
                        mem[32] = 15
                        mem[0] = sha3(stor19 + 1, 15)
                        uint256(tokenURI[stor19 + 1]) = (2 * mem[ceil32(return_data.size) + 992]) + 1
                        t = sha3(sha3(stor19 + 1, 15))
                        s = ceil32(return_data.size) + 1024
                        while ceil32(return_data.size) + mem[ceil32(return_data.size) + 992] + 1024 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(stor19 + 1, 15)) + (Mask(251, 0, mem[ceil32(return_data.size) + 992] + 31) >> 5)
                        while sha3(sha3(stor19 + 1, 15)) + (tokenURI[stor19 + 1].length + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        require stor19 + 1 >= stor19
                        stor19++
                        s = stor19 + 1
                        s = _3050
                        s = uint32(_23) + idx + 1
                        idx = idx + 1
                        continue 
        require sub_a0f01e08Address
        require sub_1b284e75Address
        require sub_a0f01e08Address
        require sub_1b284e75Address
        mem[mem[64] + 4] = mem[ceil32(return_data.size) + 736]
        if mem[ceil32(return_data.size) + 736] >= sub_0154788d:
            require ext_code.size(sub_1b284e75Address)
            call sub_1b284e75Address.0x5160a124 with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], arg3 << 224
        else:
            require ext_code.size(sub_a0f01e08Address)
            call sub_a0f01e08Address.0x5160a124 with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], arg3 << 224
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit UpdateDigitalMediaPrintIndexEvent(arg2, uint32(arg3 + uint32(_23)));
    else:
        require ext_code.size(sub_a0f01e08Address)
        call sub_a0f01e08Address.0x55df4275 with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[736 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require return_data.size >= 192
        _28 = uint32(arg2), mem[772 len 28]
        _29 = mem[800]
        _30 = mem[832]
        _31 = mem[864]
        _32 = mem[896]
        require mem[896] <= 4294967296
        require mem[896] + 32 <= return_data.size
        require return_data.size >= mem[mem[896] + 736] + mem[896] + 32 and mem[mem[896] + 736] <= 4294967296
        mem[ceil32(return_data.size) + 736] = mem[736 len 4], Mask(224, 32, arg2) >> 32
        mem[ceil32(return_data.size) + 768] = uint32(_28)
        mem[ceil32(return_data.size) + 800] = uint32(_29)
        mem[ceil32(return_data.size) + 832] = _30
        mem[ceil32(return_data.size) + 864] = address(_31)
        mem[ceil32(return_data.size) + 896] = _32 + 736
        mem[0] = address(_31)
        mem[32] = 18
        if not sub_55232467[address(_31)]:
            if address(_31) != arg1:
                revert with 0, 'Creator not approved.'
            if not arg1:
                revert with 0, '0x0 creator addresses are not allowed.'
            if not singleCreatorAddress:
                if uint32(arg3 + uint32(_29)) > uint32(_28):
                    revert with 0, 'Total supply exceeded.'
                mem[ceil32(return_data.size) + 928] = 12
                mem[ceil32(return_data.size) + 960] = 'ipfs://ipfs/'
                _125 = mem[_32 + 736]
                mem[ceil32(return_data.size) + 992] = mem[_32 + 736] + 12
                mem[64] = ceil32(return_data.size) + floor32(_125 + 43) + 1024
                if not _125 + 12:
                    idx = 0
                    s = 0
                    while idx < 12:
                        require idx < 12
                        require s < mem[ceil32(return_data.size) + 992]
                        mem[ceil32(return_data.size) + s + 1024 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 960, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 960, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('var', 0)), 32))), 0) - 256
                        idx = idx + 1
                        s = s + 1
                        continue 
                    _2123 = mem[_32 + 736]
                    idx = 0
                    s = 12
                    while idx < _2123:
                        require idx < mem[_32 + 736]
                        require s < mem[ceil32(return_data.size) + 992]
                        mem[ceil32(return_data.size) + s + 1024 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 768, ('var', '_32'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 768, ('var', '_32'), ('var', 0)), 32))), 0) - 256
                        _2123 = mem[_32 + 736]
                        idx = idx + 1
                        s = s + 1
                        continue 
                    s = 0
                    s = 288
                    s = 0
                    idx = 0
                    while uint32(idx) < arg3:
                        _3051 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3051] = uint32(uint32(_29) + idx + 1)
                        mem[_3051 + 32] = arg2
                        require stor19 + 1 >= stor19
                        mem[0] = stor19 + 1
                        mem[32] = 17
                        uint32(tokenIdToDigitalMediaRelease[stor19 + 1].field_0) = uint32(uint32(_29) + idx + 1)
                        tokenIdToDigitalMediaRelease[stor19 + 1].field_256 = arg2
                        _3126 = mem[64]
                        mem[mem[64]] = stor19 + 1
                        mem[mem[64] + 32] = arg1
                        mem[mem[64] + 64] = uint32(uint32(_29) + idx + 1)
                        mem[mem[64] + 128] = arg2
                        mem[mem[64] + 96] = 160
                        mem[mem[64] + 160] = mem[ceil32(return_data.size) + 992]
                        _3128 = mem[ceil32(return_data.size) + 992]
                        s = 0
                        while s < _3128:
                            mem[s + mem[64] + 192] = mem[s + ceil32(return_data.size) + 1024]
                            s = s + 32
                            continue 
                        if not _3128 % 32:
                            emit DigitalMediaReleaseCreateEvent(uint256 arg1, address arg2, uint32 arg3, string arg4, uint256 arg5):
                                                                mem[mem[64] len _3128 + _3126 + -mem[64] + 192],
                        else:
                            mem[floor32(_3128) + _3126 + 192] = mem[floor32(_3128) + _3126 + -(_3128 % 32) + 224 len _3128 % 32]
                            emit DigitalMediaReleaseCreateEvent(uint256 arg1, address arg2, uint32 arg3, string arg4, uint256 arg5):
                                                                mem[mem[64] len floor32(_3128) + _3126 + -mem[64] + 224],
                        require arg1
                        require not ownerOf[stor19 + 1]
                        ownerOf[stor19 + 1] = arg1
                        require balanceOf[address(arg1)] + 1 >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)]++
                        tokenOfOwnerByIndex[address(arg1)]++
                        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = stor19 + 1
                        stor12[stor19 + 1] = tokenOfOwnerByIndex[address(arg1)]
                        mem[mem[64]] = stor19 + 1
                        emit Transfer((stor19 + 1), 0, arg1);
                        stor14[stor19 + 1] = tokenByIndex.length
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length] = stor19 + 1
                        require ownerOf[stor19 + 1]
                        mem[32] = 15
                        mem[0] = sha3(stor19 + 1, 15)
                        uint256(tokenURI[stor19 + 1]) = (2 * mem[ceil32(return_data.size) + 992]) + 1
                        t = sha3(sha3(stor19 + 1, 15))
                        s = ceil32(return_data.size) + 1024
                        while ceil32(return_data.size) + mem[ceil32(return_data.size) + 992] + 1024 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(stor19 + 1, 15)) + (Mask(251, 0, mem[ceil32(return_data.size) + 992] + 31) >> 5)
                        while sha3(sha3(stor19 + 1, 15)) + (tokenURI[stor19 + 1].length + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        require stor19 + 1 >= stor19
                        stor19++
                        s = stor19 + 1
                        s = _3051
                        s = uint32(_29) + idx + 1
                        idx = idx + 1
                        continue 
                else:
                    mem[ceil32(return_data.size) + 1024 len 32 * _125 + 12] = code.data[16989 len 32 * _125 + 12]
                    idx = 0
                    s = 0
                    while idx < 12:
                        require idx < 12
                        require s < mem[ceil32(return_data.size) + 992]
                        mem[ceil32(return_data.size) + s + 1024 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 960, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 960, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('var', 0)), 32))), 0) - 256
                        idx = idx + 1
                        s = s + 1
                        continue 
                    _2124 = mem[_32 + 736]
                    idx = 0
                    s = 12
                    while idx < _2124:
                        require idx < mem[_32 + 736]
                        require s < mem[ceil32(return_data.size) + 992]
                        mem[ceil32(return_data.size) + s + 1024 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 768, ('var', '_32'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 768, ('var', '_32'), ('var', 0)), 32))), 0) - 256
                        _2124 = mem[_32 + 736]
                        idx = idx + 1
                        s = s + 1
                        continue 
                    s = 0
                    s = 288
                    s = 0
                    idx = 0
                    while uint32(idx) < arg3:
                        _3052 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3052] = uint32(uint32(_29) + idx + 1)
                        mem[_3052 + 32] = arg2
                        require stor19 + 1 >= stor19
                        mem[0] = stor19 + 1
                        mem[32] = 17
                        uint32(tokenIdToDigitalMediaRelease[stor19 + 1].field_0) = uint32(uint32(_29) + idx + 1)
                        tokenIdToDigitalMediaRelease[stor19 + 1].field_256 = arg2
                        mem[mem[64]] = stor19 + 1
                        mem[mem[64] + 32] = arg1
                        mem[mem[64] + 64] = uint32(uint32(_29) + idx + 1)
                        mem[mem[64] + 128] = arg2
                        mem[mem[64] + 96] = 160
                        mem[mem[64] + 160] = mem[ceil32(return_data.size) + 992]
                        _3134 = mem[ceil32(return_data.size) + 992]
                        s = 0
                        while s < _3134:
                            mem[s + mem[64] + 192] = mem[s + ceil32(return_data.size) + 1024]
                            s = s + 32
                            continue 
                        if not _3134 % 32:
                            emit DigitalMediaReleaseCreateEvent(uint256 arg1, address arg2, uint32 arg3, string arg4, uint256 arg5):
                                                                stor19 + 1,
                                                                address(arg1),
                                                                uint32(_29) + idx + 1 << 224,
                                                                160,
                                                                arg2,
                                                                mem[mem[64] + 160 len _3134 + 32],
                        else:
                            mem[floor32(_3134) + mem[64] + 192] = mem[floor32(_3134) + mem[64] + -(_3134 % 32) + 224 len _3134 % 32]
                            emit DigitalMediaReleaseCreateEvent(uint256 arg1, address arg2, uint32 arg3, string arg4, uint256 arg5):
                                                                stor19 + 1,
                                                                address(arg1),
                                                                uint32(_29) + idx + 1 << 224,
                                                                160,
                                                                arg2,
                                                                mem[mem[64] + 160 len floor32(_3134) + 64],
                        require arg1
                        require not ownerOf[stor19 + 1]
                        ownerOf[stor19 + 1] = arg1
                        require balanceOf[address(arg1)] + 1 >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)]++
                        tokenOfOwnerByIndex[address(arg1)]++
                        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = stor19 + 1
                        stor12[stor19 + 1] = tokenOfOwnerByIndex[address(arg1)]
                        mem[mem[64]] = stor19 + 1
                        emit Transfer((stor19 + 1), 0, arg1);
                        stor14[stor19 + 1] = tokenByIndex.length
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length] = stor19 + 1
                        require ownerOf[stor19 + 1]
                        mem[32] = 15
                        mem[0] = sha3(stor19 + 1, 15)
                        uint256(tokenURI[stor19 + 1]) = (2 * mem[ceil32(return_data.size) + 992]) + 1
                        t = sha3(sha3(stor19 + 1, 15))
                        s = ceil32(return_data.size) + 1024
                        while ceil32(return_data.size) + mem[ceil32(return_data.size) + 992] + 1024 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(stor19 + 1, 15)) + (Mask(251, 0, mem[ceil32(return_data.size) + 992] + 31) >> 5)
                        while sha3(sha3(stor19 + 1, 15)) + (tokenURI[stor19 + 1].length + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        require stor19 + 1 >= stor19
                        stor19++
                        s = stor19 + 1
                        s = _3052
                        s = uint32(_29) + idx + 1
                        idx = idx + 1
                        continue 
            else:
                if singleCreatorAddress != arg1:
                    revert with 0, 'Creator must match single creator address.'
                if uint32(arg3 + uint32(_29)) > uint32(_28):
                    revert with 0, 'Total supply exceeded.'
                mem[ceil32(return_data.size) + 928] = 12
                mem[ceil32(return_data.size) + 960] = 'ipfs://ipfs/'
                _109 = mem[_32 + 736]
                mem[ceil32(return_data.size) + 992] = mem[_32 + 736] + 12
                mem[64] = ceil32(return_data.size) + floor32(_109 + 43) + 1024
                if not _109 + 12:
                    idx = 0
                    s = 0
                    while idx < 12:
                        require idx < 12
                        require s < mem[ceil32(return_data.size) + 992]
                        mem[ceil32(return_data.size) + s + 1024 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 960, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 960, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('var', 0)), 32))), 0) - 256
                        idx = idx + 1
                        s = s + 1
                        continue 
                    _2125 = mem[_32 + 736]
                    idx = 0
                    s = 12
                    while idx < _2125:
                        require idx < mem[_32 + 736]
                        require s < mem[ceil32(return_data.size) + 992]
                        mem[ceil32(return_data.size) + s + 1024 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 768, ('var', '_32'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 768, ('var', '_32'), ('var', 0)), 32))), 0) - 256
                        _2125 = mem[_32 + 736]
                        idx = idx + 1
                        s = s + 1
                        continue 
                    s = 0
                    s = 288
                    s = 0
                    idx = 0
                    while uint32(idx) < arg3:
                        _3053 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3053] = uint32(uint32(_29) + idx + 1)
                        mem[_3053 + 32] = arg2
                        require stor19 + 1 >= stor19
                        mem[0] = stor19 + 1
                        mem[32] = 17
                        uint32(tokenIdToDigitalMediaRelease[stor19 + 1].field_0) = uint32(uint32(_29) + idx + 1)
                        tokenIdToDigitalMediaRelease[stor19 + 1].field_256 = arg2
                        _3138 = mem[64]
                        mem[mem[64]] = stor19 + 1
                        mem[mem[64] + 32] = arg1
                        mem[mem[64] + 64] = uint32(uint32(_29) + idx + 1)
                        mem[mem[64] + 128] = arg2
                        mem[mem[64] + 96] = 160
                        mem[mem[64] + 160] = mem[ceil32(return_data.size) + 992]
                        _3140 = mem[ceil32(return_data.size) + 992]
                        s = 0
                        while s < _3140:
                            mem[s + mem[64] + 192] = mem[s + ceil32(return_data.size) + 1024]
                            s = s + 32
                            continue 
                        if not _3140 % 32:
                            emit DigitalMediaReleaseCreateEvent(uint256 arg1, address arg2, uint32 arg3, string arg4, uint256 arg5):
                                                                mem[mem[64] len _3140 + _3138 + -mem[64] + 192],
                        else:
                            mem[floor32(_3140) + _3138 + 192] = mem[floor32(_3140) + _3138 + -(_3140 % 32) + 224 len _3140 % 32]
                            emit DigitalMediaReleaseCreateEvent(uint256 arg1, address arg2, uint32 arg3, string arg4, uint256 arg5):
                                                                mem[mem[64] len floor32(_3140) + _3138 + -mem[64] + 224],
                        require arg1
                        require not ownerOf[stor19 + 1]
                        ownerOf[stor19 + 1] = arg1
                        require balanceOf[address(arg1)] + 1 >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)]++
                        tokenOfOwnerByIndex[address(arg1)]++
                        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = stor19 + 1
                        stor12[stor19 + 1] = tokenOfOwnerByIndex[address(arg1)]
                        mem[mem[64]] = stor19 + 1
                        emit Transfer((stor19 + 1), 0, arg1);
                        stor14[stor19 + 1] = tokenByIndex.length
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length] = stor19 + 1
                        require ownerOf[stor19 + 1]
                        mem[32] = 15
                        mem[0] = sha3(stor19 + 1, 15)
                        uint256(tokenURI[stor19 + 1]) = (2 * mem[ceil32(return_data.size) + 992]) + 1
                        t = sha3(sha3(stor19 + 1, 15))
                        s = ceil32(return_data.size) + 1024
                        while ceil32(return_data.size) + mem[ceil32(return_data.size) + 992] + 1024 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(stor19 + 1, 15)) + (Mask(251, 0, mem[ceil32(return_data.size) + 992] + 31) >> 5)
                        while sha3(sha3(stor19 + 1, 15)) + (tokenURI[stor19 + 1].length + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        require stor19 + 1 >= stor19
                        stor19++
                        s = stor19 + 1
                        s = _3053
                        s = uint32(_29) + idx + 1
                        idx = idx + 1
                        continue 
                else:
                    mem[ceil32(return_data.size) + 1024 len 32 * _109 + 12] = code.data[16989 len 32 * _109 + 12]
                    idx = 0
                    s = 0
                    while idx < 12:
                        require idx < 12
                        require s < mem[ceil32(return_data.size) + 992]
                        mem[ceil32(return_data.size) + s + 1024 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 960, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 960, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('var', 0)), 32))), 0) - 256
                        idx = idx + 1
                        s = s + 1
                        continue 
                    _2126 = mem[_32 + 736]
                    idx = 0
                    s = 12
                    while idx < _2126:
                        require idx < mem[_32 + 736]
                        require s < mem[ceil32(return_data.size) + 992]
                        mem[ceil32(return_data.size) + s + 1024 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 768, ('var', '_32'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 768, ('var', '_32'), ('var', 0)), 32))), 0) - 256
                        _2126 = mem[_32 + 736]
                        idx = idx + 1
                        s = s + 1
                        continue 
                    s = 0
                    s = 288
                    s = 0
                    idx = 0
                    while uint32(idx) < arg3:
                        _3054 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3054] = uint32(uint32(_29) + idx + 1)
                        mem[_3054 + 32] = arg2
                        require stor19 + 1 >= stor19
                        mem[0] = stor19 + 1
                        mem[32] = 17
                        uint32(tokenIdToDigitalMediaRelease[stor19 + 1].field_0) = uint32(uint32(_29) + idx + 1)
                        tokenIdToDigitalMediaRelease[stor19 + 1].field_256 = arg2
                        mem[mem[64]] = stor19 + 1
                        mem[mem[64] + 32] = arg1
                        mem[mem[64] + 64] = uint32(uint32(_29) + idx + 1)
                        mem[mem[64] + 128] = arg2
                        mem[mem[64] + 96] = 160
                        mem[mem[64] + 160] = mem[ceil32(return_data.size) + 992]
                        _3146 = mem[ceil32(return_data.size) + 992]
                        s = 0
                        while s < _3146:
                            mem[s + mem[64] + 192] = mem[s + ceil32(return_data.size) + 1024]
                            s = s + 32
                            continue 
                        if not _3146 % 32:
                            emit DigitalMediaReleaseCreateEvent(uint256 arg1, address arg2, uint32 arg3, string arg4, uint256 arg5):
                                                                stor19 + 1,
                                                                address(arg1),
                                                                uint32(_29) + idx + 1 << 224,
                                                                160,
                                                                arg2,
                                                                mem[mem[64] + 160 len _3146 + 32],
                        else:
                            mem[floor32(_3146) + mem[64] + 192] = mem[floor32(_3146) + mem[64] + -(_3146 % 32) + 224 len _3146 % 32]
                            emit DigitalMediaReleaseCreateEvent(uint256 arg1, address arg2, uint32 arg3, string arg4, uint256 arg5):
                                                                stor19 + 1,
                                                                address(arg1),
                                                                uint32(_29) + idx + 1 << 224,
                                                                160,
                                                                arg2,
                                                                mem[mem[64] + 160 len floor32(_3146) + 64],
                        require arg1
                        require not ownerOf[stor19 + 1]
                        ownerOf[stor19 + 1] = arg1
                        require balanceOf[address(arg1)] + 1 >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)]++
                        tokenOfOwnerByIndex[address(arg1)]++
                        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = stor19 + 1
                        stor12[stor19 + 1] = tokenOfOwnerByIndex[address(arg1)]
                        mem[mem[64]] = stor19 + 1
                        emit Transfer((stor19 + 1), 0, arg1);
                        stor14[stor19 + 1] = tokenByIndex.length
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length] = stor19 + 1
                        require ownerOf[stor19 + 1]
                        mem[32] = 15
                        mem[0] = sha3(stor19 + 1, 15)
                        uint256(tokenURI[stor19 + 1]) = (2 * mem[ceil32(return_data.size) + 992]) + 1
                        t = sha3(sha3(stor19 + 1, 15))
                        s = ceil32(return_data.size) + 1024
                        while ceil32(return_data.size) + mem[ceil32(return_data.size) + 992] + 1024 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(stor19 + 1, 15)) + (Mask(251, 0, mem[ceil32(return_data.size) + 992] + 31) >> 5)
                        while sha3(sha3(stor19 + 1, 15)) + (tokenURI[stor19 + 1].length + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        require stor19 + 1 >= stor19
                        stor19++
                        s = stor19 + 1
                        s = _3054
                        s = uint32(_29) + idx + 1
                        idx = idx + 1
                        continue 
        else:
            if sub_55232467[address(_31)] != arg1:
                revert with 0, 'Creator not approved.'
            if not arg1:
                revert with 0, '0x0 creator addresses are not allowed.'
            if not singleCreatorAddress:
                if uint32(arg3 + uint32(_29)) > uint32(_28):
                    revert with 0, 'Total supply exceeded.'
                mem[ceil32(return_data.size) + 928] = 12
                mem[ceil32(return_data.size) + 960] = 'ipfs://ipfs/'
                _128 = mem[_32 + 736]
                mem[ceil32(return_data.size) + 992] = mem[_32 + 736] + 12
                mem[64] = ceil32(return_data.size) + floor32(_128 + 43) + 1024
                if not _128 + 12:
                    idx = 0
                    s = 0
                    while idx < 12:
                        require idx < 12
                        require s < mem[ceil32(return_data.size) + 992]
                        mem[ceil32(return_data.size) + s + 1024 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 960, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 960, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('var', 0)), 32))), 0) - 256
                        idx = idx + 1
                        s = s + 1
                        continue 
                    _2127 = mem[_32 + 736]
                    idx = 0
                    s = 12
                    while idx < _2127:
                        require idx < mem[_32 + 736]
                        require s < mem[ceil32(return_data.size) + 992]
                        mem[ceil32(return_data.size) + s + 1024 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 768, ('var', '_32'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 768, ('var', '_32'), ('var', 0)), 32))), 0) - 256
                        _2127 = mem[_32 + 736]
                        idx = idx + 1
                        s = s + 1
                        continue 
                    s = 0
                    s = 288
                    s = 0
                    idx = 0
                    while uint32(idx) < arg3:
                        _3055 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3055] = uint32(uint32(_29) + idx + 1)
                        mem[_3055 + 32] = arg2
                        require stor19 + 1 >= stor19
                        mem[0] = stor19 + 1
                        mem[32] = 17
                        uint32(tokenIdToDigitalMediaRelease[stor19 + 1].field_0) = uint32(uint32(_29) + idx + 1)
                        tokenIdToDigitalMediaRelease[stor19 + 1].field_256 = arg2
                        mem[mem[64]] = stor19 + 1
                        mem[mem[64] + 32] = arg1
                        mem[mem[64] + 64] = uint32(uint32(_29) + idx + 1)
                        mem[mem[64] + 128] = arg2
                        mem[mem[64] + 96] = 160
                        mem[mem[64] + 160] = mem[ceil32(return_data.size) + 992]
                        _3152 = mem[ceil32(return_data.size) + 992]
                        s = 0
                        while s < _3152:
                            mem[s + mem[64] + 192] = mem[s + ceil32(return_data.size) + 1024]
                            s = s + 32
                            continue 
                        if not _3152 % 32:
                            emit DigitalMediaReleaseCreateEvent(uint256 arg1, address arg2, uint32 arg3, string arg4, uint256 arg5):
                                                                stor19 + 1,
                                                                address(arg1),
                                                                uint32(_29) + idx + 1 << 224,
                                                                160,
                                                                arg2,
                                                                mem[mem[64] + 160 len _3152 + 32],
                        else:
                            mem[floor32(_3152) + mem[64] + 192] = mem[floor32(_3152) + mem[64] + -(_3152 % 32) + 224 len _3152 % 32]
                            emit DigitalMediaReleaseCreateEvent(uint256 arg1, address arg2, uint32 arg3, string arg4, uint256 arg5):
                                                                stor19 + 1,
                                                                address(arg1),
                                                                uint32(_29) + idx + 1 << 224,
                                                                160,
                                                                arg2,
                                                                mem[mem[64] + 160 len floor32(_3152) + 64],
                        require arg1
                        require not ownerOf[stor19 + 1]
                        ownerOf[stor19 + 1] = arg1
                        require balanceOf[address(arg1)] + 1 >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)]++
                        tokenOfOwnerByIndex[address(arg1)]++
                        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = stor19 + 1
                        stor12[stor19 + 1] = tokenOfOwnerByIndex[address(arg1)]
                        mem[mem[64]] = stor19 + 1
                        emit Transfer((stor19 + 1), 0, arg1);
                        stor14[stor19 + 1] = tokenByIndex.length
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length] = stor19 + 1
                        require ownerOf[stor19 + 1]
                        mem[32] = 15
                        mem[0] = sha3(stor19 + 1, 15)
                        uint256(tokenURI[stor19 + 1]) = (2 * mem[ceil32(return_data.size) + 992]) + 1
                        t = sha3(sha3(stor19 + 1, 15))
                        s = ceil32(return_data.size) + 1024
                        while ceil32(return_data.size) + mem[ceil32(return_data.size) + 992] + 1024 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(stor19 + 1, 15)) + (Mask(251, 0, mem[ceil32(return_data.size) + 992] + 31) >> 5)
                        while sha3(sha3(stor19 + 1, 15)) + (tokenURI[stor19 + 1].length + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        require stor19 + 1 >= stor19
                        stor19++
                        s = stor19 + 1
                        s = _3055
                        s = uint32(_29) + idx + 1
                        idx = idx + 1
                        continue 
                else:
                    mem[ceil32(return_data.size) + 1024 len 32 * _128 + 12] = code.data[16989 len 32 * _128 + 12]
                    idx = 0
                    s = 0
                    while idx < 12:
                        require idx < 12
                        require s < mem[ceil32(return_data.size) + 992]
                        mem[ceil32(return_data.size) + s + 1024 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 960, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 960, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('var', 0)), 32))), 0) - 256
                        idx = idx + 1
                        s = s + 1
                        continue 
                    _2128 = mem[_32 + 736]
                    idx = 0
                    s = 12
                    while idx < _2128:
                        require idx < mem[_32 + 736]
                        require s < mem[ceil32(return_data.size) + 992]
                        mem[ceil32(return_data.size) + s + 1024 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 768, ('var', '_32'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 768, ('var', '_32'), ('var', 0)), 32))), 0) - 256
                        _2128 = mem[_32 + 736]
                        idx = idx + 1
                        s = s + 1
                        continue 
                    s = 0
                    s = 288
                    s = 0
                    idx = 0
                    while uint32(idx) < arg3:
                        _3056 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3056] = uint32(uint32(_29) + idx + 1)
                        mem[_3056 + 32] = arg2
                        require stor19 + 1 >= stor19
                        mem[0] = stor19 + 1
                        mem[32] = 17
                        uint32(tokenIdToDigitalMediaRelease[stor19 + 1].field_0) = uint32(uint32(_29) + idx + 1)
                        tokenIdToDigitalMediaRelease[stor19 + 1].field_256 = arg2
                        _3156 = mem[64]
                        mem[mem[64]] = stor19 + 1
                        mem[mem[64] + 32] = arg1
                        mem[mem[64] + 64] = uint32(uint32(_29) + idx + 1)
                        mem[mem[64] + 128] = arg2
                        mem[mem[64] + 96] = 160
                        mem[mem[64] + 160] = mem[ceil32(return_data.size) + 992]
                        _3158 = mem[ceil32(return_data.size) + 992]
                        s = 0
                        while s < _3158:
                            mem[s + mem[64] + 192] = mem[s + ceil32(return_data.size) + 1024]
                            s = s + 32
                            continue 
                        if not _3158 % 32:
                            emit DigitalMediaReleaseCreateEvent(uint256 arg1, address arg2, uint32 arg3, string arg4, uint256 arg5):
                                                                mem[mem[64] len _3158 + _3156 + -mem[64] + 192],
                        else:
                            mem[floor32(_3158) + _3156 + 192] = mem[floor32(_3158) + _3156 + -(_3158 % 32) + 224 len _3158 % 32]
                            emit DigitalMediaReleaseCreateEvent(uint256 arg1, address arg2, uint32 arg3, string arg4, uint256 arg5):
                                                                mem[mem[64] len floor32(_3158) + _3156 + -mem[64] + 224],
                        require arg1
                        require not ownerOf[stor19 + 1]
                        ownerOf[stor19 + 1] = arg1
                        require balanceOf[address(arg1)] + 1 >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)]++
                        tokenOfOwnerByIndex[address(arg1)]++
                        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = stor19 + 1
                        stor12[stor19 + 1] = tokenOfOwnerByIndex[address(arg1)]
                        mem[mem[64]] = stor19 + 1
                        emit Transfer((stor19 + 1), 0, arg1);
                        stor14[stor19 + 1] = tokenByIndex.length
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length] = stor19 + 1
                        require ownerOf[stor19 + 1]
                        mem[32] = 15
                        mem[0] = sha3(stor19 + 1, 15)
                        uint256(tokenURI[stor19 + 1]) = (2 * mem[ceil32(return_data.size) + 992]) + 1
                        t = sha3(sha3(stor19 + 1, 15))
                        s = ceil32(return_data.size) + 1024
                        while ceil32(return_data.size) + mem[ceil32(return_data.size) + 992] + 1024 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(stor19 + 1, 15)) + (Mask(251, 0, mem[ceil32(return_data.size) + 992] + 31) >> 5)
                        while sha3(sha3(stor19 + 1, 15)) + (tokenURI[stor19 + 1].length + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        require stor19 + 1 >= stor19
                        stor19++
                        s = stor19 + 1
                        s = _3056
                        s = uint32(_29) + idx + 1
                        idx = idx + 1
                        continue 
            else:
                if singleCreatorAddress != arg1:
                    revert with 0, 'Creator must match single creator address.'
                if uint32(arg3 + uint32(_29)) > uint32(_28):
                    revert with 0, 'Total supply exceeded.'
                mem[ceil32(return_data.size) + 928] = 12
                mem[ceil32(return_data.size) + 960] = 'ipfs://ipfs/'
                _116 = mem[_32 + 736]
                mem[ceil32(return_data.size) + 992] = mem[_32 + 736] + 12
                mem[64] = ceil32(return_data.size) + floor32(_116 + 43) + 1024
                if not _116 + 12:
                    idx = 0
                    s = 0
                    while idx < 12:
                        require idx < 12
                        require s < mem[ceil32(return_data.size) + 992]
                        mem[ceil32(return_data.size) + s + 1024 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 960, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 960, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('var', 0)), 32))), 0) - 256
                        idx = idx + 1
                        s = s + 1
                        continue 
                    _2129 = mem[_32 + 736]
                    idx = 0
                    s = 12
                    while idx < _2129:
                        require idx < mem[_32 + 736]
                        require s < mem[ceil32(return_data.size) + 992]
                        mem[ceil32(return_data.size) + s + 1024 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 768, ('var', '_32'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 768, ('var', '_32'), ('var', 0)), 32))), 0) - 256
                        _2129 = mem[_32 + 736]
                        idx = idx + 1
                        s = s + 1
                        continue 
                    s = 0
                    s = 288
                    s = 0
                    idx = 0
                    while uint32(idx) < arg3:
                        _3057 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3057] = uint32(uint32(_29) + idx + 1)
                        mem[_3057 + 32] = arg2
                        require stor19 + 1 >= stor19
                        mem[0] = stor19 + 1
                        mem[32] = 17
                        uint32(tokenIdToDigitalMediaRelease[stor19 + 1].field_0) = uint32(uint32(_29) + idx + 1)
                        tokenIdToDigitalMediaRelease[stor19 + 1].field_256 = arg2
                        mem[mem[64]] = stor19 + 1
                        mem[mem[64] + 32] = arg1
                        mem[mem[64] + 64] = uint32(uint32(_29) + idx + 1)
                        mem[mem[64] + 128] = arg2
                        mem[mem[64] + 96] = 160
                        mem[mem[64] + 160] = mem[ceil32(return_data.size) + 992]
                        _3164 = mem[ceil32(return_data.size) + 992]
                        s = 0
                        while s < _3164:
                            mem[s + mem[64] + 192] = mem[s + ceil32(return_data.size) + 1024]
                            s = s + 32
                            continue 
                        if not _3164 % 32:
                            emit DigitalMediaReleaseCreateEvent(uint256 arg1, address arg2, uint32 arg3, string arg4, uint256 arg5):
                                                                stor19 + 1,
                                                                address(arg1),
                                                                uint32(_29) + idx + 1 << 224,
                                                                160,
                                                                arg2,
                                                                mem[mem[64] + 160 len _3164 + 32],
                        else:
                            mem[floor32(_3164) + mem[64] + 192] = mem[floor32(_3164) + mem[64] + -(_3164 % 32) + 224 len _3164 % 32]
                            emit DigitalMediaReleaseCreateEvent(uint256 arg1, address arg2, uint32 arg3, string arg4, uint256 arg5):
                                                                stor19 + 1,
                                                                address(arg1),
                                                                uint32(_29) + idx + 1 << 224,
                                                                160,
                                                                arg2,
                                                                mem[mem[64] + 160 len floor32(_3164) + 64],
                        require arg1
                        require not ownerOf[stor19 + 1]
                        ownerOf[stor19 + 1] = arg1
                        require balanceOf[address(arg1)] + 1 >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)]++
                        tokenOfOwnerByIndex[address(arg1)]++
                        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = stor19 + 1
                        stor12[stor19 + 1] = tokenOfOwnerByIndex[address(arg1)]
                        mem[mem[64]] = stor19 + 1
                        emit Transfer((stor19 + 1), 0, arg1);
                        stor14[stor19 + 1] = tokenByIndex.length
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length] = stor19 + 1
                        require ownerOf[stor19 + 1]
                        mem[32] = 15
                        mem[0] = sha3(stor19 + 1, 15)
                        uint256(tokenURI[stor19 + 1]) = (2 * mem[ceil32(return_data.size) + 992]) + 1
                        t = sha3(sha3(stor19 + 1, 15))
                        s = ceil32(return_data.size) + 1024
                        while ceil32(return_data.size) + mem[ceil32(return_data.size) + 992] + 1024 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(stor19 + 1, 15)) + (Mask(251, 0, mem[ceil32(return_data.size) + 992] + 31) >> 5)
                        while sha3(sha3(stor19 + 1, 15)) + (tokenURI[stor19 + 1].length + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        require stor19 + 1 >= stor19
                        stor19++
                        s = stor19 + 1
                        s = _3057
                        s = uint32(_29) + idx + 1
                        idx = idx + 1
                        continue 
                else:
                    mem[ceil32(return_data.size) + 1024 len 32 * _116 + 12] = code.data[16989 len 32 * _116 + 12]
                    idx = 0
                    s = 0
                    while idx < 12:
                        require idx < 12
                        require s < mem[ceil32(return_data.size) + 992]
                        mem[ceil32(return_data.size) + s + 1024 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 960, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 960, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('var', 0)), 32))), 0) - 256
                        idx = idx + 1
                        s = s + 1
                        continue 
                    _2130 = mem[_32 + 736]
                    idx = 0
                    s = 12
                    while idx < _2130:
                        require idx < mem[_32 + 736]
                        require s < mem[ceil32(return_data.size) + 992]
                        mem[ceil32(return_data.size) + s + 1024 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 768, ('var', '_32'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 768, ('var', '_32'), ('var', 0)), 32))), 0) - 256
                        _2130 = mem[_32 + 736]
                        idx = idx + 1
                        s = s + 1
                        continue 
                    s = 0
                    s = 288
                    s = 0
                    idx = 0
                    while uint32(idx) < arg3:
                        _3058 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3058] = uint32(uint32(_29) + idx + 1)
                        mem[_3058 + 32] = arg2
                        require stor19 + 1 >= stor19
                        mem[0] = stor19 + 1
                        mem[32] = 17
                        uint32(tokenIdToDigitalMediaRelease[stor19 + 1].field_0) = uint32(uint32(_29) + idx + 1)
                        tokenIdToDigitalMediaRelease[stor19 + 1].field_256 = arg2
                        mem[mem[64]] = stor19 + 1
                        mem[mem[64] + 32] = arg1
                        mem[mem[64] + 64] = uint32(uint32(_29) + idx + 1)
                        mem[mem[64] + 128] = arg2
                        mem[mem[64] + 96] = 160
                        mem[mem[64] + 160] = mem[ceil32(return_data.size) + 992]
                        _3170 = mem[ceil32(return_data.size) + 992]
                        s = 0
                        while s < _3170:
                            mem[s + mem[64] + 192] = mem[s + ceil32(return_data.size) + 1024]
                            s = s + 32
                            continue 
                        if not _3170 % 32:
                            emit DigitalMediaReleaseCreateEvent(uint256 arg1, address arg2, uint32 arg3, string arg4, uint256 arg5):
                                                                stor19 + 1,
                                                                address(arg1),
                                                                uint32(_29) + idx + 1 << 224,
                                                                160,
                                                                arg2,
                                                                mem[mem[64] + 160 len _3170 + 32],
                        else:
                            mem[floor32(_3170) + mem[64] + 192] = mem[floor32(_3170) + mem[64] + -(_3170 % 32) + 224 len _3170 % 32]
                            emit DigitalMediaReleaseCreateEvent(uint256 arg1, address arg2, uint32 arg3, string arg4, uint256 arg5):
                                                                stor19 + 1,
                                                                address(arg1),
                                                                uint32(_29) + idx + 1 << 224,
                                                                160,
                                                                arg2,
                                                                mem[mem[64] + 160 len floor32(_3170) + 64],
                        require arg1
                        require not ownerOf[stor19 + 1]
                        ownerOf[stor19 + 1] = arg1
                        require balanceOf[address(arg1)] + 1 >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)]++
                        tokenOfOwnerByIndex[address(arg1)]++
                        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = stor19 + 1
                        stor12[stor19 + 1] = tokenOfOwnerByIndex[address(arg1)]
                        mem[mem[64]] = stor19 + 1
                        emit Transfer((stor19 + 1), 0, arg1);
                        stor14[stor19 + 1] = tokenByIndex.length
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length] = stor19 + 1
                        require ownerOf[stor19 + 1]
                        mem[32] = 15
                        mem[0] = sha3(stor19 + 1, 15)
                        uint256(tokenURI[stor19 + 1]) = (2 * mem[ceil32(return_data.size) + 992]) + 1
                        t = sha3(sha3(stor19 + 1, 15))
                        s = ceil32(return_data.size) + 1024
                        while ceil32(return_data.size) + mem[ceil32(return_data.size) + 992] + 1024 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(stor19 + 1, 15)) + (Mask(251, 0, mem[ceil32(return_data.size) + 992] + 31) >> 5)
                        while sha3(sha3(stor19 + 1, 15)) + (tokenURI[stor19 + 1].length + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        require stor19 + 1 >= stor19
                        stor19++
                        s = stor19 + 1
                        s = _3058
                        s = uint32(_29) + idx + 1
                        idx = idx + 1
                        continue 
        require sub_a0f01e08Address
        require sub_1b284e75Address
        require sub_a0f01e08Address
        require sub_1b284e75Address
        mem[mem[64] + 4] = mem[ceil32(return_data.size) + 736]
        if mem[ceil32(return_data.size) + 736] >= sub_0154788d:
            require ext_code.size(sub_1b284e75Address)
            call sub_1b284e75Address.0x5160a124 with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], arg3 << 224
        else:
            require ext_code.size(sub_a0f01e08Address)
            call sub_a0f01e08Address.0x5160a124 with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], arg3 << 224
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit UpdateDigitalMediaPrintIndexEvent(arg2, uint32(arg3 + uint32(_29)));
}

function createDigitalMediaReleases(uint256 arg1, uint32 arg2) {
    require not stor0
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 96
    mem[288] = 0
    mem[320] = 0
    if 0 >= arg2:
        revert with 0, 'Failed print edition.  Creation count must be > 0.'
    if arg2 >= 10000:
        revert with 0, 'Cannot print more than 10K tokens at once'
    mem[352] = 0
    mem[384] = 0
    mem[416] = 0
    mem[448] = 0
    mem[480] = 0
    mem[512] = 96
    mem[544] = 0
    mem[576] = 0
    mem[608] = 0
    mem[640] = 0
    mem[672] = 0
    mem[704] = 96
    require sub_a0f01e08Address
    require sub_1b284e75Address
    require sub_a0f01e08Address
    require sub_1b284e75Address
    mem[736] = 0x55df427500000000000000000000000000000000000000000000000000000000
    mem[740] = arg1
    if arg1 >= sub_0154788d:
        require ext_code.size(sub_1b284e75Address)
        call sub_1b284e75Address.0x55df4275 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[736 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require return_data.size >= 192
        _16 = uint32(arg1), mem[772 len 28]
        _17 = mem[800]
        _18 = mem[832]
        _19 = mem[864]
        _20 = mem[896]
        require mem[896] <= 4294967296
        require mem[896] + 32 <= return_data.size
        require return_data.size >= mem[mem[896] + 736] + mem[896] + 32 and mem[mem[896] + 736] <= 4294967296
        mem[ceil32(return_data.size) + 736] = mem[736 len 4], Mask(224, 32, arg1) >> 32
        mem[ceil32(return_data.size) + 768] = uint32(_16)
        mem[ceil32(return_data.size) + 800] = uint32(_17)
        mem[ceil32(return_data.size) + 832] = _18
        mem[ceil32(return_data.size) + 864] = address(_19)
        mem[ceil32(return_data.size) + 896] = _20 + 736
        mem[0] = address(_19)
        mem[32] = 18
        if not sub_55232467[address(_19)]:
            if address(_19) != msg.sender:
                revert with 0, 'Creator not approved.'
            if not msg.sender:
                revert with 0, '0x0 creator addresses are not allowed.'
            if not singleCreatorAddress:
                if uint32(arg2 + uint32(_17)) > uint32(_16):
                    revert with 0, 'Total supply exceeded.'
                mem[ceil32(return_data.size) + 928] = 12
                mem[ceil32(return_data.size) + 960] = 'ipfs://ipfs/'
                _113 = mem[_20 + 736]
                mem[ceil32(return_data.size) + 992] = mem[_20 + 736] + 12
                mem[64] = ceil32(return_data.size) + floor32(_113 + 43) + 1024
                if not _113 + 12:
                    idx = 0
                    s = 0
                    while idx < 12:
                        require idx < 12
                        require s < mem[ceil32(return_data.size) + 992]
                        mem[ceil32(return_data.size) + s + 1024 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 960, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 960, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('var', 0)), 32))), 0) - 256
                        idx = idx + 1
                        s = s + 1
                        continue 
                    _2109 = mem[_20 + 736]
                    idx = 0
                    s = 12
                    while idx < _2109:
                        require idx < mem[_20 + 736]
                        require s < mem[ceil32(return_data.size) + 992]
                        mem[ceil32(return_data.size) + s + 1024 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 768, ('var', '_20'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 768, ('var', '_20'), ('var', 0)), 32))), 0) - 256
                        _2109 = mem[_20 + 736]
                        idx = idx + 1
                        s = s + 1
                        continue 
                    s = 0
                    s = 288
                    s = 0
                    idx = 0
                    while uint32(idx) < arg2:
                        _3037 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3037] = uint32(uint32(_17) + idx + 1)
                        mem[_3037 + 32] = arg1
                        require stor19 + 1 >= stor19
                        mem[0] = stor19 + 1
                        mem[32] = 17
                        uint32(tokenIdToDigitalMediaRelease[stor19 + 1].field_0) = uint32(uint32(_17) + idx + 1)
                        tokenIdToDigitalMediaRelease[stor19 + 1].field_256 = arg1
                        mem[mem[64]] = stor19 + 1
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = uint32(uint32(_17) + idx + 1)
                        mem[mem[64] + 128] = arg1
                        mem[mem[64] + 96] = 160
                        mem[mem[64] + 160] = mem[ceil32(return_data.size) + 992]
                        _3074 = mem[ceil32(return_data.size) + 992]
                        s = 0
                        while s < _3074:
                            mem[s + mem[64] + 192] = mem[s + ceil32(return_data.size) + 1024]
                            s = s + 32
                            continue 
                        if not _3074 % 32:
                            emit DigitalMediaReleaseCreateEvent(uint256 arg1, address arg2, uint32 arg3, string arg4, uint256 arg5):
                                                                stor19 + 1,
                                                                msg.sender,
                                                                uint32(_17) + idx + 1 << 224,
                                                                160,
                                                                arg1,
                                                                mem[mem[64] + 160 len _3074 + 32],
                        else:
                            mem[floor32(_3074) + mem[64] + 192] = mem[floor32(_3074) + mem[64] + -(_3074 % 32) + 224 len _3074 % 32]
                            emit DigitalMediaReleaseCreateEvent(uint256 arg1, address arg2, uint32 arg3, string arg4, uint256 arg5):
                                                                stor19 + 1,
                                                                msg.sender,
                                                                uint32(_17) + idx + 1 << 224,
                                                                160,
                                                                arg1,
                                                                mem[mem[64] + 160 len floor32(_3074) + 64],
                        require msg.sender
                        require not ownerOf[stor19 + 1]
                        ownerOf[stor19 + 1] = msg.sender
                        require balanceOf[address(msg.sender)] + 1 >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)]++
                        tokenOfOwnerByIndex[address(msg.sender)]++
                        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor19 + 1
                        stor12[stor19 + 1] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[mem[64]] = stor19 + 1
                        emit Transfer((stor19 + 1), 0, msg.sender);
                        stor14[stor19 + 1] = tokenByIndex.length
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length] = stor19 + 1
                        require ownerOf[stor19 + 1]
                        mem[32] = 15
                        mem[0] = sha3(stor19 + 1, 15)
                        uint256(tokenURI[stor19 + 1]) = (2 * mem[ceil32(return_data.size) + 992]) + 1
                        t = sha3(sha3(stor19 + 1, 15))
                        s = ceil32(return_data.size) + 1024
                        while ceil32(return_data.size) + mem[ceil32(return_data.size) + 992] + 1024 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(stor19 + 1, 15)) + (Mask(251, 0, mem[ceil32(return_data.size) + 992] + 31) >> 5)
                        while sha3(sha3(stor19 + 1, 15)) + (tokenURI[stor19 + 1].length + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        require stor19 + 1 >= stor19
                        stor19++
                        s = stor19 + 1
                        s = _3037
                        s = uint32(_17) + idx + 1
                        idx = idx + 1
                        continue 
                else:
                    mem[ceil32(return_data.size) + 1024 len 32 * _113 + 12] = code.data[16989 len 32 * _113 + 12]
                    idx = 0
                    s = 0
                    while idx < 12:
                        require idx < 12
                        require s < mem[ceil32(return_data.size) + 992]
                        mem[ceil32(return_data.size) + s + 1024 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 960, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 960, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('var', 0)), 32))), 0) - 256
                        idx = idx + 1
                        s = s + 1
                        continue 
                    _2110 = mem[_20 + 736]
                    idx = 0
                    s = 12
                    while idx < _2110:
                        require idx < mem[_20 + 736]
                        require s < mem[ceil32(return_data.size) + 992]
                        mem[ceil32(return_data.size) + s + 1024 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 768, ('var', '_20'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 768, ('var', '_20'), ('var', 0)), 32))), 0) - 256
                        _2110 = mem[_20 + 736]
                        idx = idx + 1
                        s = s + 1
                        continue 
                    s = 0
                    s = 288
                    s = 0
                    idx = 0
                    while uint32(idx) < arg2:
                        _3038 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3038] = uint32(uint32(_17) + idx + 1)
                        mem[_3038 + 32] = arg1
                        require stor19 + 1 >= stor19
                        mem[0] = stor19 + 1
                        mem[32] = 17
                        uint32(tokenIdToDigitalMediaRelease[stor19 + 1].field_0) = uint32(uint32(_17) + idx + 1)
                        tokenIdToDigitalMediaRelease[stor19 + 1].field_256 = arg1
                        _3078 = mem[64]
                        mem[mem[64]] = stor19 + 1
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = uint32(uint32(_17) + idx + 1)
                        mem[mem[64] + 128] = arg1
                        mem[mem[64] + 96] = 160
                        mem[mem[64] + 160] = mem[ceil32(return_data.size) + 992]
                        _3080 = mem[ceil32(return_data.size) + 992]
                        s = 0
                        while s < _3080:
                            mem[s + mem[64] + 192] = mem[s + ceil32(return_data.size) + 1024]
                            s = s + 32
                            continue 
                        if not _3080 % 32:
                            emit DigitalMediaReleaseCreateEvent(uint256 arg1, address arg2, uint32 arg3, string arg4, uint256 arg5):
                                                                mem[mem[64] len _3080 + _3078 + -mem[64] + 192],
                        else:
                            mem[floor32(_3080) + _3078 + 192] = mem[floor32(_3080) + _3078 + -(_3080 % 32) + 224 len _3080 % 32]
                            emit DigitalMediaReleaseCreateEvent(uint256 arg1, address arg2, uint32 arg3, string arg4, uint256 arg5):
                                                                mem[mem[64] len floor32(_3080) + _3078 + -mem[64] + 224],
                        require msg.sender
                        require not ownerOf[stor19 + 1]
                        ownerOf[stor19 + 1] = msg.sender
                        require balanceOf[address(msg.sender)] + 1 >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)]++
                        tokenOfOwnerByIndex[address(msg.sender)]++
                        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor19 + 1
                        stor12[stor19 + 1] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[mem[64]] = stor19 + 1
                        emit Transfer((stor19 + 1), 0, msg.sender);
                        stor14[stor19 + 1] = tokenByIndex.length
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length] = stor19 + 1
                        require ownerOf[stor19 + 1]
                        mem[32] = 15
                        mem[0] = sha3(stor19 + 1, 15)
                        uint256(tokenURI[stor19 + 1]) = (2 * mem[ceil32(return_data.size) + 992]) + 1
                        t = sha3(sha3(stor19 + 1, 15))
                        s = ceil32(return_data.size) + 1024
                        while ceil32(return_data.size) + mem[ceil32(return_data.size) + 992] + 1024 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(stor19 + 1, 15)) + (Mask(251, 0, mem[ceil32(return_data.size) + 992] + 31) >> 5)
                        while sha3(sha3(stor19 + 1, 15)) + (tokenURI[stor19 + 1].length + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        require stor19 + 1 >= stor19
                        stor19++
                        s = stor19 + 1
                        s = _3038
                        s = uint32(_17) + idx + 1
                        idx = idx + 1
                        continue 
            else:
                if singleCreatorAddress != msg.sender:
                    revert with 0, 'Creator must match single creator address.'
                if uint32(arg2 + uint32(_17)) > uint32(_16):
                    revert with 0, 'Total supply exceeded.'
                mem[ceil32(return_data.size) + 928] = 12
                mem[ceil32(return_data.size) + 960] = 'ipfs://ipfs/'
                _89 = mem[_20 + 736]
                mem[ceil32(return_data.size) + 992] = mem[_20 + 736] + 12
                mem[64] = ceil32(return_data.size) + floor32(_89 + 43) + 1024
                if not _89 + 12:
                    idx = 0
                    s = 0
                    while idx < 12:
                        require idx < 12
                        require s < mem[ceil32(return_data.size) + 992]
                        mem[ceil32(return_data.size) + s + 1024 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 960, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 960, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('var', 0)), 32))), 0) - 256
                        idx = idx + 1
                        s = s + 1
                        continue 
                    _2111 = mem[_20 + 736]
                    idx = 0
                    s = 12
                    while idx < _2111:
                        require idx < mem[_20 + 736]
                        require s < mem[ceil32(return_data.size) + 992]
                        mem[ceil32(return_data.size) + s + 1024 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 768, ('var', '_20'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 768, ('var', '_20'), ('var', 0)), 32))), 0) - 256
                        _2111 = mem[_20 + 736]
                        idx = idx + 1
                        s = s + 1
                        continue 
                    s = 0
                    s = 288
                    s = 0
                    idx = 0
                    while uint32(idx) < arg2:
                        _3039 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3039] = uint32(uint32(_17) + idx + 1)
                        mem[_3039 + 32] = arg1
                        require stor19 + 1 >= stor19
                        mem[0] = stor19 + 1
                        mem[32] = 17
                        uint32(tokenIdToDigitalMediaRelease[stor19 + 1].field_0) = uint32(uint32(_17) + idx + 1)
                        tokenIdToDigitalMediaRelease[stor19 + 1].field_256 = arg1
                        mem[mem[64]] = stor19 + 1
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = uint32(uint32(_17) + idx + 1)
                        mem[mem[64] + 128] = arg1
                        mem[mem[64] + 96] = 160
                        mem[mem[64] + 160] = mem[ceil32(return_data.size) + 992]
                        _3086 = mem[ceil32(return_data.size) + 992]
                        s = 0
                        while s < _3086:
                            mem[s + mem[64] + 192] = mem[s + ceil32(return_data.size) + 1024]
                            s = s + 32
                            continue 
                        if not _3086 % 32:
                            emit DigitalMediaReleaseCreateEvent(uint256 arg1, address arg2, uint32 arg3, string arg4, uint256 arg5):
                                                                stor19 + 1,
                                                                msg.sender,
                                                                uint32(_17) + idx + 1 << 224,
                                                                160,
                                                                arg1,
                                                                mem[mem[64] + 160 len _3086 + 32],
                        else:
                            mem[floor32(_3086) + mem[64] + 192] = mem[floor32(_3086) + mem[64] + -(_3086 % 32) + 224 len _3086 % 32]
                            emit DigitalMediaReleaseCreateEvent(uint256 arg1, address arg2, uint32 arg3, string arg4, uint256 arg5):
                                                                stor19 + 1,
                                                                msg.sender,
                                                                uint32(_17) + idx + 1 << 224,
                                                                160,
                                                                arg1,
                                                                mem[mem[64] + 160 len floor32(_3086) + 64],
                        require msg.sender
                        require not ownerOf[stor19 + 1]
                        ownerOf[stor19 + 1] = msg.sender
                        require balanceOf[address(msg.sender)] + 1 >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)]++
                        tokenOfOwnerByIndex[address(msg.sender)]++
                        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor19 + 1
                        stor12[stor19 + 1] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[mem[64]] = stor19 + 1
                        emit Transfer((stor19 + 1), 0, msg.sender);
                        stor14[stor19 + 1] = tokenByIndex.length
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length] = stor19 + 1
                        require ownerOf[stor19 + 1]
                        mem[32] = 15
                        mem[0] = sha3(stor19 + 1, 15)
                        uint256(tokenURI[stor19 + 1]) = (2 * mem[ceil32(return_data.size) + 992]) + 1
                        t = sha3(sha3(stor19 + 1, 15))
                        s = ceil32(return_data.size) + 1024
                        while ceil32(return_data.size) + mem[ceil32(return_data.size) + 992] + 1024 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(stor19 + 1, 15)) + (Mask(251, 0, mem[ceil32(return_data.size) + 992] + 31) >> 5)
                        while sha3(sha3(stor19 + 1, 15)) + (tokenURI[stor19 + 1].length + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        require stor19 + 1 >= stor19
                        stor19++
                        s = stor19 + 1
                        s = _3039
                        s = uint32(_17) + idx + 1
                        idx = idx + 1
                        continue 
                else:
                    mem[ceil32(return_data.size) + 1024 len 32 * _89 + 12] = code.data[16989 len 32 * _89 + 12]
                    idx = 0
                    s = 0
                    while idx < 12:
                        require idx < 12
                        require s < mem[ceil32(return_data.size) + 992]
                        mem[ceil32(return_data.size) + s + 1024 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 960, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 960, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('var', 0)), 32))), 0) - 256
                        idx = idx + 1
                        s = s + 1
                        continue 
                    _2112 = mem[_20 + 736]
                    idx = 0
                    s = 12
                    while idx < _2112:
                        require idx < mem[_20 + 736]
                        require s < mem[ceil32(return_data.size) + 992]
                        mem[ceil32(return_data.size) + s + 1024 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 768, ('var', '_20'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 768, ('var', '_20'), ('var', 0)), 32))), 0) - 256
                        _2112 = mem[_20 + 736]
                        idx = idx + 1
                        s = s + 1
                        continue 
                    s = 0
                    s = 288
                    s = 0
                    idx = 0
                    while uint32(idx) < arg2:
                        _3040 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3040] = uint32(uint32(_17) + idx + 1)
                        mem[_3040 + 32] = arg1
                        require stor19 + 1 >= stor19
                        mem[0] = stor19 + 1
                        mem[32] = 17
                        uint32(tokenIdToDigitalMediaRelease[stor19 + 1].field_0) = uint32(uint32(_17) + idx + 1)
                        tokenIdToDigitalMediaRelease[stor19 + 1].field_256 = arg1
                        mem[mem[64]] = stor19 + 1
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = uint32(uint32(_17) + idx + 1)
                        mem[mem[64] + 128] = arg1
                        mem[mem[64] + 96] = 160
                        mem[mem[64] + 160] = mem[ceil32(return_data.size) + 992]
                        _3092 = mem[ceil32(return_data.size) + 992]
                        s = 0
                        while s < _3092:
                            mem[s + mem[64] + 192] = mem[s + ceil32(return_data.size) + 1024]
                            s = s + 32
                            continue 
                        if not _3092 % 32:
                            emit DigitalMediaReleaseCreateEvent(uint256 arg1, address arg2, uint32 arg3, string arg4, uint256 arg5):
                                                                stor19 + 1,
                                                                msg.sender,
                                                                uint32(_17) + idx + 1 << 224,
                                                                160,
                                                                arg1,
                                                                mem[mem[64] + 160 len _3092 + 32],
                        else:
                            mem[floor32(_3092) + mem[64] + 192] = mem[floor32(_3092) + mem[64] + -(_3092 % 32) + 224 len _3092 % 32]
                            emit DigitalMediaReleaseCreateEvent(uint256 arg1, address arg2, uint32 arg3, string arg4, uint256 arg5):
                                                                stor19 + 1,
                                                                msg.sender,
                                                                uint32(_17) + idx + 1 << 224,
                                                                160,
                                                                arg1,
                                                                mem[mem[64] + 160 len floor32(_3092) + 64],
                        require msg.sender
                        require not ownerOf[stor19 + 1]
                        ownerOf[stor19 + 1] = msg.sender
                        require balanceOf[address(msg.sender)] + 1 >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)]++
                        tokenOfOwnerByIndex[address(msg.sender)]++
                        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor19 + 1
                        stor12[stor19 + 1] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[mem[64]] = stor19 + 1
                        emit Transfer((stor19 + 1), 0, msg.sender);
                        stor14[stor19 + 1] = tokenByIndex.length
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length] = stor19 + 1
                        require ownerOf[stor19 + 1]
                        mem[32] = 15
                        mem[0] = sha3(stor19 + 1, 15)
                        uint256(tokenURI[stor19 + 1]) = (2 * mem[ceil32(return_data.size) + 992]) + 1
                        t = sha3(sha3(stor19 + 1, 15))
                        s = ceil32(return_data.size) + 1024
                        while ceil32(return_data.size) + mem[ceil32(return_data.size) + 992] + 1024 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(stor19 + 1, 15)) + (Mask(251, 0, mem[ceil32(return_data.size) + 992] + 31) >> 5)
                        while sha3(sha3(stor19 + 1, 15)) + (tokenURI[stor19 + 1].length + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        require stor19 + 1 >= stor19
                        stor19++
                        s = stor19 + 1
                        s = _3040
                        s = uint32(_17) + idx + 1
                        idx = idx + 1
                        continue 
        else:
            if sub_55232467[address(_19)] != msg.sender:
                revert with 0, 'Creator not approved.'
            if not msg.sender:
                revert with 0, '0x0 creator addresses are not allowed.'
            if not singleCreatorAddress:
                if uint32(arg2 + uint32(_17)) > uint32(_16):
                    revert with 0, 'Total supply exceeded.'
                mem[ceil32(return_data.size) + 928] = 12
                mem[ceil32(return_data.size) + 960] = 'ipfs://ipfs/'
                _116 = mem[_20 + 736]
                mem[ceil32(return_data.size) + 992] = mem[_20 + 736] + 12
                mem[64] = ceil32(return_data.size) + floor32(_116 + 43) + 1024
                if not _116 + 12:
                    idx = 0
                    s = 0
                    while idx < 12:
                        require idx < 12
                        require s < mem[ceil32(return_data.size) + 992]
                        mem[ceil32(return_data.size) + s + 1024 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 960, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 960, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('var', 0)), 32))), 0) - 256
                        idx = idx + 1
                        s = s + 1
                        continue 
                    _2113 = mem[_20 + 736]
                    idx = 0
                    s = 12
                    while idx < _2113:
                        require idx < mem[_20 + 736]
                        require s < mem[ceil32(return_data.size) + 992]
                        mem[ceil32(return_data.size) + s + 1024 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 768, ('var', '_20'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 768, ('var', '_20'), ('var', 0)), 32))), 0) - 256
                        _2113 = mem[_20 + 736]
                        idx = idx + 1
                        s = s + 1
                        continue 
                    s = 0
                    s = 288
                    s = 0
                    idx = 0
                    while uint32(idx) < arg2:
                        _3041 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3041] = uint32(uint32(_17) + idx + 1)
                        mem[_3041 + 32] = arg1
                        require stor19 + 1 >= stor19
                        mem[0] = stor19 + 1
                        mem[32] = 17
                        uint32(tokenIdToDigitalMediaRelease[stor19 + 1].field_0) = uint32(uint32(_17) + idx + 1)
                        tokenIdToDigitalMediaRelease[stor19 + 1].field_256 = arg1
                        mem[mem[64]] = stor19 + 1
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = uint32(uint32(_17) + idx + 1)
                        mem[mem[64] + 128] = arg1
                        mem[mem[64] + 96] = 160
                        mem[mem[64] + 160] = mem[ceil32(return_data.size) + 992]
                        _3098 = mem[ceil32(return_data.size) + 992]
                        s = 0
                        while s < _3098:
                            mem[s + mem[64] + 192] = mem[s + ceil32(return_data.size) + 1024]
                            s = s + 32
                            continue 
                        if not _3098 % 32:
                            emit DigitalMediaReleaseCreateEvent(uint256 arg1, address arg2, uint32 arg3, string arg4, uint256 arg5):
                                                                stor19 + 1,
                                                                msg.sender,
                                                                uint32(_17) + idx + 1 << 224,
                                                                160,
                                                                arg1,
                                                                mem[mem[64] + 160 len _3098 + 32],
                        else:
                            mem[floor32(_3098) + mem[64] + 192] = mem[floor32(_3098) + mem[64] + -(_3098 % 32) + 224 len _3098 % 32]
                            emit DigitalMediaReleaseCreateEvent(uint256 arg1, address arg2, uint32 arg3, string arg4, uint256 arg5):
                                                                stor19 + 1,
                                                                msg.sender,
                                                                uint32(_17) + idx + 1 << 224,
                                                                160,
                                                                arg1,
                                                                mem[mem[64] + 160 len floor32(_3098) + 64],
                        require msg.sender
                        require not ownerOf[stor19 + 1]
                        ownerOf[stor19 + 1] = msg.sender
                        require balanceOf[address(msg.sender)] + 1 >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)]++
                        tokenOfOwnerByIndex[address(msg.sender)]++
                        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor19 + 1
                        stor12[stor19 + 1] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[mem[64]] = stor19 + 1
                        emit Transfer((stor19 + 1), 0, msg.sender);
                        stor14[stor19 + 1] = tokenByIndex.length
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length] = stor19 + 1
                        require ownerOf[stor19 + 1]
                        mem[32] = 15
                        mem[0] = sha3(stor19 + 1, 15)
                        uint256(tokenURI[stor19 + 1]) = (2 * mem[ceil32(return_data.size) + 992]) + 1
                        t = sha3(sha3(stor19 + 1, 15))
                        s = ceil32(return_data.size) + 1024
                        while ceil32(return_data.size) + mem[ceil32(return_data.size) + 992] + 1024 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(stor19 + 1, 15)) + (Mask(251, 0, mem[ceil32(return_data.size) + 992] + 31) >> 5)
                        while sha3(sha3(stor19 + 1, 15)) + (tokenURI[stor19 + 1].length + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        require stor19 + 1 >= stor19
                        stor19++
                        s = stor19 + 1
                        s = _3041
                        s = uint32(_17) + idx + 1
                        idx = idx + 1
                        continue 
                else:
                    mem[ceil32(return_data.size) + 1024 len 32 * _116 + 12] = code.data[16989 len 32 * _116 + 12]
                    idx = 0
                    s = 0
                    while idx < 12:
                        require idx < 12
                        require s < mem[ceil32(return_data.size) + 992]
                        mem[ceil32(return_data.size) + s + 1024 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 960, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 960, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('var', 0)), 32))), 0) - 256
                        idx = idx + 1
                        s = s + 1
                        continue 
                    _2114 = mem[_20 + 736]
                    idx = 0
                    s = 12
                    while idx < _2114:
                        require idx < mem[_20 + 736]
                        require s < mem[ceil32(return_data.size) + 992]
                        mem[ceil32(return_data.size) + s + 1024 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 768, ('var', '_20'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 768, ('var', '_20'), ('var', 0)), 32))), 0) - 256
                        _2114 = mem[_20 + 736]
                        idx = idx + 1
                        s = s + 1
                        continue 
                    s = 0
                    s = 288
                    s = 0
                    idx = 0
                    while uint32(idx) < arg2:
                        _3042 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3042] = uint32(uint32(_17) + idx + 1)
                        mem[_3042 + 32] = arg1
                        require stor19 + 1 >= stor19
                        mem[0] = stor19 + 1
                        mem[32] = 17
                        uint32(tokenIdToDigitalMediaRelease[stor19 + 1].field_0) = uint32(uint32(_17) + idx + 1)
                        tokenIdToDigitalMediaRelease[stor19 + 1].field_256 = arg1
                        _3102 = mem[64]
                        mem[mem[64]] = stor19 + 1
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = uint32(uint32(_17) + idx + 1)
                        mem[mem[64] + 128] = arg1
                        mem[mem[64] + 96] = 160
                        mem[mem[64] + 160] = mem[ceil32(return_data.size) + 992]
                        _3104 = mem[ceil32(return_data.size) + 992]
                        s = 0
                        while s < _3104:
                            mem[s + mem[64] + 192] = mem[s + ceil32(return_data.size) + 1024]
                            s = s + 32
                            continue 
                        if not _3104 % 32:
                            emit DigitalMediaReleaseCreateEvent(uint256 arg1, address arg2, uint32 arg3, string arg4, uint256 arg5):
                                                                mem[mem[64] len _3104 + _3102 + -mem[64] + 192],
                        else:
                            mem[floor32(_3104) + _3102 + 192] = mem[floor32(_3104) + _3102 + -(_3104 % 32) + 224 len _3104 % 32]
                            emit DigitalMediaReleaseCreateEvent(uint256 arg1, address arg2, uint32 arg3, string arg4, uint256 arg5):
                                                                mem[mem[64] len floor32(_3104) + _3102 + -mem[64] + 224],
                        require msg.sender
                        require not ownerOf[stor19 + 1]
                        ownerOf[stor19 + 1] = msg.sender
                        require balanceOf[address(msg.sender)] + 1 >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)]++
                        tokenOfOwnerByIndex[address(msg.sender)]++
                        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor19 + 1
                        stor12[stor19 + 1] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[mem[64]] = stor19 + 1
                        emit Transfer((stor19 + 1), 0, msg.sender);
                        stor14[stor19 + 1] = tokenByIndex.length
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length] = stor19 + 1
                        require ownerOf[stor19 + 1]
                        mem[32] = 15
                        mem[0] = sha3(stor19 + 1, 15)
                        uint256(tokenURI[stor19 + 1]) = (2 * mem[ceil32(return_data.size) + 992]) + 1
                        t = sha3(sha3(stor19 + 1, 15))
                        s = ceil32(return_data.size) + 1024
                        while ceil32(return_data.size) + mem[ceil32(return_data.size) + 992] + 1024 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(stor19 + 1, 15)) + (Mask(251, 0, mem[ceil32(return_data.size) + 992] + 31) >> 5)
                        while sha3(sha3(stor19 + 1, 15)) + (tokenURI[stor19 + 1].length + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        require stor19 + 1 >= stor19
                        stor19++
                        s = stor19 + 1
                        s = _3042
                        s = uint32(_17) + idx + 1
                        idx = idx + 1
                        continue 
            else:
                if singleCreatorAddress != msg.sender:
                    revert with 0, 'Creator must match single creator address.'
                if uint32(arg2 + uint32(_17)) > uint32(_16):
                    revert with 0, 'Total supply exceeded.'
                mem[ceil32(return_data.size) + 928] = 12
                mem[ceil32(return_data.size) + 960] = 'ipfs://ipfs/'
                _96 = mem[_20 + 736]
                mem[ceil32(return_data.size) + 992] = mem[_20 + 736] + 12
                mem[64] = ceil32(return_data.size) + floor32(_96 + 43) + 1024
                if not _96 + 12:
                    idx = 0
                    s = 0
                    while idx < 12:
                        require idx < 12
                        require s < mem[ceil32(return_data.size) + 992]
                        mem[ceil32(return_data.size) + s + 1024 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 960, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 960, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('var', 0)), 32))), 0) - 256
                        idx = idx + 1
                        s = s + 1
                        continue 
                    _2115 = mem[_20 + 736]
                    idx = 0
                    s = 12
                    while idx < _2115:
                        require idx < mem[_20 + 736]
                        require s < mem[ceil32(return_data.size) + 992]
                        mem[ceil32(return_data.size) + s + 1024 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 768, ('var', '_20'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 768, ('var', '_20'), ('var', 0)), 32))), 0) - 256
                        _2115 = mem[_20 + 736]
                        idx = idx + 1
                        s = s + 1
                        continue 
                    s = 0
                    s = 288
                    s = 0
                    idx = 0
                    while uint32(idx) < arg2:
                        _3043 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3043] = uint32(uint32(_17) + idx + 1)
                        mem[_3043 + 32] = arg1
                        require stor19 + 1 >= stor19
                        mem[0] = stor19 + 1
                        mem[32] = 17
                        uint32(tokenIdToDigitalMediaRelease[stor19 + 1].field_0) = uint32(uint32(_17) + idx + 1)
                        tokenIdToDigitalMediaRelease[stor19 + 1].field_256 = arg1
                        mem[mem[64]] = stor19 + 1
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = uint32(uint32(_17) + idx + 1)
                        mem[mem[64] + 128] = arg1
                        mem[mem[64] + 96] = 160
                        mem[mem[64] + 160] = mem[ceil32(return_data.size) + 992]
                        _3110 = mem[ceil32(return_data.size) + 992]
                        s = 0
                        while s < _3110:
                            mem[s + mem[64] + 192] = mem[s + ceil32(return_data.size) + 1024]
                            s = s + 32
                            continue 
                        if not _3110 % 32:
                            emit DigitalMediaReleaseCreateEvent(uint256 arg1, address arg2, uint32 arg3, string arg4, uint256 arg5):
                                                                stor19 + 1,
                                                                msg.sender,
                                                                uint32(_17) + idx + 1 << 224,
                                                                160,
                                                                arg1,
                                                                mem[mem[64] + 160 len _3110 + 32],
                        else:
                            mem[floor32(_3110) + mem[64] + 192] = mem[floor32(_3110) + mem[64] + -(_3110 % 32) + 224 len _3110 % 32]
                            emit DigitalMediaReleaseCreateEvent(uint256 arg1, address arg2, uint32 arg3, string arg4, uint256 arg5):
                                                                stor19 + 1,
                                                                msg.sender,
                                                                uint32(_17) + idx + 1 << 224,
                                                                160,
                                                                arg1,
                                                                mem[mem[64] + 160 len floor32(_3110) + 64],
                        require msg.sender
                        require not ownerOf[stor19 + 1]
                        ownerOf[stor19 + 1] = msg.sender
                        require balanceOf[address(msg.sender)] + 1 >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)]++
                        tokenOfOwnerByIndex[address(msg.sender)]++
                        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor19 + 1
                        stor12[stor19 + 1] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[mem[64]] = stor19 + 1
                        emit Transfer((stor19 + 1), 0, msg.sender);
                        stor14[stor19 + 1] = tokenByIndex.length
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length] = stor19 + 1
                        require ownerOf[stor19 + 1]
                        mem[32] = 15
                        mem[0] = sha3(stor19 + 1, 15)
                        uint256(tokenURI[stor19 + 1]) = (2 * mem[ceil32(return_data.size) + 992]) + 1
                        t = sha3(sha3(stor19 + 1, 15))
                        s = ceil32(return_data.size) + 1024
                        while ceil32(return_data.size) + mem[ceil32(return_data.size) + 992] + 1024 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(stor19 + 1, 15)) + (Mask(251, 0, mem[ceil32(return_data.size) + 992] + 31) >> 5)
                        while sha3(sha3(stor19 + 1, 15)) + (tokenURI[stor19 + 1].length + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        require stor19 + 1 >= stor19
                        stor19++
                        s = stor19 + 1
                        s = _3043
                        s = uint32(_17) + idx + 1
                        idx = idx + 1
                        continue 
                else:
                    mem[ceil32(return_data.size) + 1024 len 32 * _96 + 12] = code.data[16989 len 32 * _96 + 12]
                    idx = 0
                    s = 0
                    while idx < 12:
                        require idx < 12
                        require s < mem[ceil32(return_data.size) + 992]
                        mem[ceil32(return_data.size) + s + 1024 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 960, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 960, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('var', 0)), 32))), 0) - 256
                        idx = idx + 1
                        s = s + 1
                        continue 
                    _2116 = mem[_20 + 736]
                    idx = 0
                    s = 12
                    while idx < _2116:
                        require idx < mem[_20 + 736]
                        require s < mem[ceil32(return_data.size) + 992]
                        mem[ceil32(return_data.size) + s + 1024 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 768, ('var', '_20'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 768, ('var', '_20'), ('var', 0)), 32))), 0) - 256
                        _2116 = mem[_20 + 736]
                        idx = idx + 1
                        s = s + 1
                        continue 
                    s = 0
                    s = 288
                    s = 0
                    idx = 0
                    while uint32(idx) < arg2:
                        _3044 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3044] = uint32(uint32(_17) + idx + 1)
                        mem[_3044 + 32] = arg1
                        require stor19 + 1 >= stor19
                        mem[0] = stor19 + 1
                        mem[32] = 17
                        uint32(tokenIdToDigitalMediaRelease[stor19 + 1].field_0) = uint32(uint32(_17) + idx + 1)
                        tokenIdToDigitalMediaRelease[stor19 + 1].field_256 = arg1
                        _3114 = mem[64]
                        mem[mem[64]] = stor19 + 1
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = uint32(uint32(_17) + idx + 1)
                        mem[mem[64] + 128] = arg1
                        mem[mem[64] + 96] = 160
                        mem[mem[64] + 160] = mem[ceil32(return_data.size) + 992]
                        _3116 = mem[ceil32(return_data.size) + 992]
                        s = 0
                        while s < _3116:
                            mem[s + mem[64] + 192] = mem[s + ceil32(return_data.size) + 1024]
                            s = s + 32
                            continue 
                        if not _3116 % 32:
                            emit DigitalMediaReleaseCreateEvent(uint256 arg1, address arg2, uint32 arg3, string arg4, uint256 arg5):
                                                                mem[mem[64] len _3116 + _3114 + -mem[64] + 192],
                        else:
                            mem[floor32(_3116) + _3114 + 192] = mem[floor32(_3116) + _3114 + -(_3116 % 32) + 224 len _3116 % 32]
                            emit DigitalMediaReleaseCreateEvent(uint256 arg1, address arg2, uint32 arg3, string arg4, uint256 arg5):
                                                                mem[mem[64] len floor32(_3116) + _3114 + -mem[64] + 224],
                        require msg.sender
                        require not ownerOf[stor19 + 1]
                        ownerOf[stor19 + 1] = msg.sender
                        require balanceOf[address(msg.sender)] + 1 >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)]++
                        tokenOfOwnerByIndex[address(msg.sender)]++
                        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor19 + 1
                        stor12[stor19 + 1] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[mem[64]] = stor19 + 1
                        emit Transfer((stor19 + 1), 0, msg.sender);
                        stor14[stor19 + 1] = tokenByIndex.length
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length] = stor19 + 1
                        require ownerOf[stor19 + 1]
                        mem[32] = 15
                        mem[0] = sha3(stor19 + 1, 15)
                        uint256(tokenURI[stor19 + 1]) = (2 * mem[ceil32(return_data.size) + 992]) + 1
                        t = sha3(sha3(stor19 + 1, 15))
                        s = ceil32(return_data.size) + 1024
                        while ceil32(return_data.size) + mem[ceil32(return_data.size) + 992] + 1024 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(stor19 + 1, 15)) + (Mask(251, 0, mem[ceil32(return_data.size) + 992] + 31) >> 5)
                        while sha3(sha3(stor19 + 1, 15)) + (tokenURI[stor19 + 1].length + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        require stor19 + 1 >= stor19
                        stor19++
                        s = stor19 + 1
                        s = _3044
                        s = uint32(_17) + idx + 1
                        idx = idx + 1
                        continue 
        require sub_a0f01e08Address
        require sub_1b284e75Address
        require sub_a0f01e08Address
        require sub_1b284e75Address
        mem[mem[64] + 4] = mem[ceil32(return_data.size) + 736]
        if mem[ceil32(return_data.size) + 736] >= sub_0154788d:
            require ext_code.size(sub_1b284e75Address)
            call sub_1b284e75Address.0x5160a124 with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], arg2 << 224
        else:
            require ext_code.size(sub_a0f01e08Address)
            call sub_a0f01e08Address.0x5160a124 with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], arg2 << 224
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit UpdateDigitalMediaPrintIndexEvent(arg1, uint32(arg2 + uint32(_17)));
    else:
        require ext_code.size(sub_a0f01e08Address)
        call sub_a0f01e08Address.0x55df4275 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[736 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require return_data.size >= 192
        _22 = uint32(arg1), mem[772 len 28]
        _23 = mem[800]
        _24 = mem[832]
        _25 = mem[864]
        _26 = mem[896]
        require mem[896] <= 4294967296
        require mem[896] + 32 <= return_data.size
        require return_data.size >= mem[mem[896] + 736] + mem[896] + 32 and mem[mem[896] + 736] <= 4294967296
        mem[ceil32(return_data.size) + 736] = mem[736 len 4], Mask(224, 32, arg1) >> 32
        mem[ceil32(return_data.size) + 768] = uint32(_22)
        mem[ceil32(return_data.size) + 800] = uint32(_23)
        mem[ceil32(return_data.size) + 832] = _24
        mem[ceil32(return_data.size) + 864] = address(_25)
        mem[ceil32(return_data.size) + 896] = _26 + 736
        mem[0] = address(_25)
        mem[32] = 18
        if not sub_55232467[address(_25)]:
            if address(_25) != msg.sender:
                revert with 0, 'Creator not approved.'
            if not msg.sender:
                revert with 0, '0x0 creator addresses are not allowed.'
            if not singleCreatorAddress:
                if uint32(arg2 + uint32(_23)) > uint32(_22):
                    revert with 0, 'Total supply exceeded.'
                mem[ceil32(return_data.size) + 928] = 12
                mem[ceil32(return_data.size) + 960] = 'ipfs://ipfs/'
                _119 = mem[_26 + 736]
                mem[ceil32(return_data.size) + 992] = mem[_26 + 736] + 12
                mem[64] = ceil32(return_data.size) + floor32(_119 + 43) + 1024
                if not _119 + 12:
                    idx = 0
                    s = 0
                    while idx < 12:
                        require idx < 12
                        require s < mem[ceil32(return_data.size) + 992]
                        mem[ceil32(return_data.size) + s + 1024 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 960, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 960, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('var', 0)), 32))), 0) - 256
                        idx = idx + 1
                        s = s + 1
                        continue 
                    _2117 = mem[_26 + 736]
                    idx = 0
                    s = 12
                    while idx < _2117:
                        require idx < mem[_26 + 736]
                        require s < mem[ceil32(return_data.size) + 992]
                        mem[ceil32(return_data.size) + s + 1024 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 768, ('var', '_26'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 768, ('var', '_26'), ('var', 0)), 32))), 0) - 256
                        _2117 = mem[_26 + 736]
                        idx = idx + 1
                        s = s + 1
                        continue 
                    s = 0
                    s = 288
                    s = 0
                    idx = 0
                    while uint32(idx) < arg2:
                        _3045 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3045] = uint32(uint32(_23) + idx + 1)
                        mem[_3045 + 32] = arg1
                        require stor19 + 1 >= stor19
                        mem[0] = stor19 + 1
                        mem[32] = 17
                        uint32(tokenIdToDigitalMediaRelease[stor19 + 1].field_0) = uint32(uint32(_23) + idx + 1)
                        tokenIdToDigitalMediaRelease[stor19 + 1].field_256 = arg1
                        _3120 = mem[64]
                        mem[mem[64]] = stor19 + 1
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = uint32(uint32(_23) + idx + 1)
                        mem[mem[64] + 128] = arg1
                        mem[mem[64] + 96] = 160
                        mem[mem[64] + 160] = mem[ceil32(return_data.size) + 992]
                        _3122 = mem[ceil32(return_data.size) + 992]
                        s = 0
                        while s < _3122:
                            mem[s + mem[64] + 192] = mem[s + ceil32(return_data.size) + 1024]
                            s = s + 32
                            continue 
                        if not _3122 % 32:
                            emit DigitalMediaReleaseCreateEvent(uint256 arg1, address arg2, uint32 arg3, string arg4, uint256 arg5):
                                                                mem[mem[64] len _3122 + _3120 + -mem[64] + 192],
                        else:
                            mem[floor32(_3122) + _3120 + 192] = mem[floor32(_3122) + _3120 + -(_3122 % 32) + 224 len _3122 % 32]
                            emit DigitalMediaReleaseCreateEvent(uint256 arg1, address arg2, uint32 arg3, string arg4, uint256 arg5):
                                                                mem[mem[64] len floor32(_3122) + _3120 + -mem[64] + 224],
                        require msg.sender
                        require not ownerOf[stor19 + 1]
                        ownerOf[stor19 + 1] = msg.sender
                        require balanceOf[address(msg.sender)] + 1 >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)]++
                        tokenOfOwnerByIndex[address(msg.sender)]++
                        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor19 + 1
                        stor12[stor19 + 1] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[mem[64]] = stor19 + 1
                        emit Transfer((stor19 + 1), 0, msg.sender);
                        stor14[stor19 + 1] = tokenByIndex.length
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length] = stor19 + 1
                        require ownerOf[stor19 + 1]
                        mem[32] = 15
                        mem[0] = sha3(stor19 + 1, 15)
                        uint256(tokenURI[stor19 + 1]) = (2 * mem[ceil32(return_data.size) + 992]) + 1
                        t = sha3(sha3(stor19 + 1, 15))
                        s = ceil32(return_data.size) + 1024
                        while ceil32(return_data.size) + mem[ceil32(return_data.size) + 992] + 1024 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(stor19 + 1, 15)) + (Mask(251, 0, mem[ceil32(return_data.size) + 992] + 31) >> 5)
                        while sha3(sha3(stor19 + 1, 15)) + (tokenURI[stor19 + 1].length + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        require stor19 + 1 >= stor19
                        stor19++
                        s = stor19 + 1
                        s = _3045
                        s = uint32(_23) + idx + 1
                        idx = idx + 1
                        continue 
                else:
                    mem[ceil32(return_data.size) + 1024 len 32 * _119 + 12] = code.data[16989 len 32 * _119 + 12]
                    idx = 0
                    s = 0
                    while idx < 12:
                        require idx < 12
                        require s < mem[ceil32(return_data.size) + 992]
                        mem[ceil32(return_data.size) + s + 1024 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 960, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 960, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('var', 0)), 32))), 0) - 256
                        idx = idx + 1
                        s = s + 1
                        continue 
                    _2118 = mem[_26 + 736]
                    idx = 0
                    s = 12
                    while idx < _2118:
                        require idx < mem[_26 + 736]
                        require s < mem[ceil32(return_data.size) + 992]
                        mem[ceil32(return_data.size) + s + 1024 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 768, ('var', '_26'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 768, ('var', '_26'), ('var', 0)), 32))), 0) - 256
                        _2118 = mem[_26 + 736]
                        idx = idx + 1
                        s = s + 1
                        continue 
                    s = 0
                    s = 288
                    s = 0
                    idx = 0
                    while uint32(idx) < arg2:
                        _3046 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3046] = uint32(uint32(_23) + idx + 1)
                        mem[_3046 + 32] = arg1
                        require stor19 + 1 >= stor19
                        mem[0] = stor19 + 1
                        mem[32] = 17
                        uint32(tokenIdToDigitalMediaRelease[stor19 + 1].field_0) = uint32(uint32(_23) + idx + 1)
                        tokenIdToDigitalMediaRelease[stor19 + 1].field_256 = arg1
                        _3126 = mem[64]
                        mem[mem[64]] = stor19 + 1
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = uint32(uint32(_23) + idx + 1)
                        mem[mem[64] + 128] = arg1
                        mem[mem[64] + 96] = 160
                        mem[mem[64] + 160] = mem[ceil32(return_data.size) + 992]
                        _3128 = mem[ceil32(return_data.size) + 992]
                        s = 0
                        while s < _3128:
                            mem[s + mem[64] + 192] = mem[s + ceil32(return_data.size) + 1024]
                            s = s + 32
                            continue 
                        if not _3128 % 32:
                            emit DigitalMediaReleaseCreateEvent(uint256 arg1, address arg2, uint32 arg3, string arg4, uint256 arg5):
                                                                mem[mem[64] len _3128 + _3126 + -mem[64] + 192],
                        else:
                            mem[floor32(_3128) + _3126 + 192] = mem[floor32(_3128) + _3126 + -(_3128 % 32) + 224 len _3128 % 32]
                            emit DigitalMediaReleaseCreateEvent(uint256 arg1, address arg2, uint32 arg3, string arg4, uint256 arg5):
                                                                mem[mem[64] len floor32(_3128) + _3126 + -mem[64] + 224],
                        require msg.sender
                        require not ownerOf[stor19 + 1]
                        ownerOf[stor19 + 1] = msg.sender
                        require balanceOf[address(msg.sender)] + 1 >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)]++
                        tokenOfOwnerByIndex[address(msg.sender)]++
                        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor19 + 1
                        stor12[stor19 + 1] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[mem[64]] = stor19 + 1
                        emit Transfer((stor19 + 1), 0, msg.sender);
                        stor14[stor19 + 1] = tokenByIndex.length
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length] = stor19 + 1
                        require ownerOf[stor19 + 1]
                        mem[32] = 15
                        mem[0] = sha3(stor19 + 1, 15)
                        uint256(tokenURI[stor19 + 1]) = (2 * mem[ceil32(return_data.size) + 992]) + 1
                        t = sha3(sha3(stor19 + 1, 15))
                        s = ceil32(return_data.size) + 1024
                        while ceil32(return_data.size) + mem[ceil32(return_data.size) + 992] + 1024 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(stor19 + 1, 15)) + (Mask(251, 0, mem[ceil32(return_data.size) + 992] + 31) >> 5)
                        while sha3(sha3(stor19 + 1, 15)) + (tokenURI[stor19 + 1].length + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        require stor19 + 1 >= stor19
                        stor19++
                        s = stor19 + 1
                        s = _3046
                        s = uint32(_23) + idx + 1
                        idx = idx + 1
                        continue 
            else:
                if singleCreatorAddress != msg.sender:
                    revert with 0, 'Creator must match single creator address.'
                if uint32(arg2 + uint32(_23)) > uint32(_22):
                    revert with 0, 'Total supply exceeded.'
                mem[ceil32(return_data.size) + 928] = 12
                mem[ceil32(return_data.size) + 960] = 'ipfs://ipfs/'
                _103 = mem[_26 + 736]
                mem[ceil32(return_data.size) + 992] = mem[_26 + 736] + 12
                mem[64] = ceil32(return_data.size) + floor32(_103 + 43) + 1024
                if not _103 + 12:
                    idx = 0
                    s = 0
                    while idx < 12:
                        require idx < 12
                        require s < mem[ceil32(return_data.size) + 992]
                        mem[ceil32(return_data.size) + s + 1024 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 960, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 960, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('var', 0)), 32))), 0) - 256
                        idx = idx + 1
                        s = s + 1
                        continue 
                    _2119 = mem[_26 + 736]
                    idx = 0
                    s = 12
                    while idx < _2119:
                        require idx < mem[_26 + 736]
                        require s < mem[ceil32(return_data.size) + 992]
                        mem[ceil32(return_data.size) + s + 1024 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 768, ('var', '_26'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 768, ('var', '_26'), ('var', 0)), 32))), 0) - 256
                        _2119 = mem[_26 + 736]
                        idx = idx + 1
                        s = s + 1
                        continue 
                    s = 0
                    s = 288
                    s = 0
                    idx = 0
                    while uint32(idx) < arg2:
                        _3047 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3047] = uint32(uint32(_23) + idx + 1)
                        mem[_3047 + 32] = arg1
                        require stor19 + 1 >= stor19
                        mem[0] = stor19 + 1
                        mem[32] = 17
                        uint32(tokenIdToDigitalMediaRelease[stor19 + 1].field_0) = uint32(uint32(_23) + idx + 1)
                        tokenIdToDigitalMediaRelease[stor19 + 1].field_256 = arg1
                        mem[mem[64]] = stor19 + 1
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = uint32(uint32(_23) + idx + 1)
                        mem[mem[64] + 128] = arg1
                        mem[mem[64] + 96] = 160
                        mem[mem[64] + 160] = mem[ceil32(return_data.size) + 992]
                        _3134 = mem[ceil32(return_data.size) + 992]
                        s = 0
                        while s < _3134:
                            mem[s + mem[64] + 192] = mem[s + ceil32(return_data.size) + 1024]
                            s = s + 32
                            continue 
                        if not _3134 % 32:
                            emit DigitalMediaReleaseCreateEvent(uint256 arg1, address arg2, uint32 arg3, string arg4, uint256 arg5):
                                                                stor19 + 1,
                                                                msg.sender,
                                                                uint32(_23) + idx + 1 << 224,
                                                                160,
                                                                arg1,
                                                                mem[mem[64] + 160 len _3134 + 32],
                        else:
                            mem[floor32(_3134) + mem[64] + 192] = mem[floor32(_3134) + mem[64] + -(_3134 % 32) + 224 len _3134 % 32]
                            emit DigitalMediaReleaseCreateEvent(uint256 arg1, address arg2, uint32 arg3, string arg4, uint256 arg5):
                                                                stor19 + 1,
                                                                msg.sender,
                                                                uint32(_23) + idx + 1 << 224,
                                                                160,
                                                                arg1,
                                                                mem[mem[64] + 160 len floor32(_3134) + 64],
                        require msg.sender
                        require not ownerOf[stor19 + 1]
                        ownerOf[stor19 + 1] = msg.sender
                        require balanceOf[address(msg.sender)] + 1 >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)]++
                        tokenOfOwnerByIndex[address(msg.sender)]++
                        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor19 + 1
                        stor12[stor19 + 1] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[mem[64]] = stor19 + 1
                        emit Transfer((stor19 + 1), 0, msg.sender);
                        stor14[stor19 + 1] = tokenByIndex.length
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length] = stor19 + 1
                        require ownerOf[stor19 + 1]
                        mem[32] = 15
                        mem[0] = sha3(stor19 + 1, 15)
                        uint256(tokenURI[stor19 + 1]) = (2 * mem[ceil32(return_data.size) + 992]) + 1
                        t = sha3(sha3(stor19 + 1, 15))
                        s = ceil32(return_data.size) + 1024
                        while ceil32(return_data.size) + mem[ceil32(return_data.size) + 992] + 1024 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(stor19 + 1, 15)) + (Mask(251, 0, mem[ceil32(return_data.size) + 992] + 31) >> 5)
                        while sha3(sha3(stor19 + 1, 15)) + (tokenURI[stor19 + 1].length + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        require stor19 + 1 >= stor19
                        stor19++
                        s = stor19 + 1
                        s = _3047
                        s = uint32(_23) + idx + 1
                        idx = idx + 1
                        continue 
                else:
                    mem[ceil32(return_data.size) + 1024 len 32 * _103 + 12] = code.data[16989 len 32 * _103 + 12]
                    idx = 0
                    s = 0
                    while idx < 12:
                        require idx < 12
                        require s < mem[ceil32(return_data.size) + 992]
                        mem[ceil32(return_data.size) + s + 1024 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 960, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 960, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('var', 0)), 32))), 0) - 256
                        idx = idx + 1
                        s = s + 1
                        continue 
                    _2120 = mem[_26 + 736]
                    idx = 0
                    s = 12
                    while idx < _2120:
                        require idx < mem[_26 + 736]
                        require s < mem[ceil32(return_data.size) + 992]
                        mem[ceil32(return_data.size) + s + 1024 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 768, ('var', '_26'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 768, ('var', '_26'), ('var', 0)), 32))), 0) - 256
                        _2120 = mem[_26 + 736]
                        idx = idx + 1
                        s = s + 1
                        continue 
                    s = 0
                    s = 288
                    s = 0
                    idx = 0
                    while uint32(idx) < arg2:
                        _3048 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3048] = uint32(uint32(_23) + idx + 1)
                        mem[_3048 + 32] = arg1
                        require stor19 + 1 >= stor19
                        mem[0] = stor19 + 1
                        mem[32] = 17
                        uint32(tokenIdToDigitalMediaRelease[stor19 + 1].field_0) = uint32(uint32(_23) + idx + 1)
                        tokenIdToDigitalMediaRelease[stor19 + 1].field_256 = arg1
                        _3138 = mem[64]
                        mem[mem[64]] = stor19 + 1
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = uint32(uint32(_23) + idx + 1)
                        mem[mem[64] + 128] = arg1
                        mem[mem[64] + 96] = 160
                        mem[mem[64] + 160] = mem[ceil32(return_data.size) + 992]
                        _3140 = mem[ceil32(return_data.size) + 992]
                        s = 0
                        while s < _3140:
                            mem[s + mem[64] + 192] = mem[s + ceil32(return_data.size) + 1024]
                            s = s + 32
                            continue 
                        if not _3140 % 32:
                            emit DigitalMediaReleaseCreateEvent(uint256 arg1, address arg2, uint32 arg3, string arg4, uint256 arg5):
                                                                mem[mem[64] len _3140 + _3138 + -mem[64] + 192],
                        else:
                            mem[floor32(_3140) + _3138 + 192] = mem[floor32(_3140) + _3138 + -(_3140 % 32) + 224 len _3140 % 32]
                            emit DigitalMediaReleaseCreateEvent(uint256 arg1, address arg2, uint32 arg3, string arg4, uint256 arg5):
                                                                mem[mem[64] len floor32(_3140) + _3138 + -mem[64] + 224],
                        require msg.sender
                        require not ownerOf[stor19 + 1]
                        ownerOf[stor19 + 1] = msg.sender
                        require balanceOf[address(msg.sender)] + 1 >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)]++
                        tokenOfOwnerByIndex[address(msg.sender)]++
                        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor19 + 1
                        stor12[stor19 + 1] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[mem[64]] = stor19 + 1
                        emit Transfer((stor19 + 1), 0, msg.sender);
                        stor14[stor19 + 1] = tokenByIndex.length
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length] = stor19 + 1
                        require ownerOf[stor19 + 1]
                        mem[32] = 15
                        mem[0] = sha3(stor19 + 1, 15)
                        uint256(tokenURI[stor19 + 1]) = (2 * mem[ceil32(return_data.size) + 992]) + 1
                        t = sha3(sha3(stor19 + 1, 15))
                        s = ceil32(return_data.size) + 1024
                        while ceil32(return_data.size) + mem[ceil32(return_data.size) + 992] + 1024 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(stor19 + 1, 15)) + (Mask(251, 0, mem[ceil32(return_data.size) + 992] + 31) >> 5)
                        while sha3(sha3(stor19 + 1, 15)) + (tokenURI[stor19 + 1].length + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        require stor19 + 1 >= stor19
                        stor19++
                        s = stor19 + 1
                        s = _3048
                        s = uint32(_23) + idx + 1
                        idx = idx + 1
                        continue 
        else:
            if sub_55232467[address(_25)] != msg.sender:
                revert with 0, 'Creator not approved.'
            if not msg.sender:
                revert with 0, '0x0 creator addresses are not allowed.'
            if not singleCreatorAddress:
                if uint32(arg2 + uint32(_23)) > uint32(_22):
                    revert with 0, 'Total supply exceeded.'
                mem[ceil32(return_data.size) + 928] = 12
                mem[ceil32(return_data.size) + 960] = 'ipfs://ipfs/'
                _122 = mem[_26 + 736]
                mem[ceil32(return_data.size) + 992] = mem[_26 + 736] + 12
                mem[64] = ceil32(return_data.size) + floor32(_122 + 43) + 1024
                if not _122 + 12:
                    idx = 0
                    s = 0
                    while idx < 12:
                        require idx < 12
                        require s < mem[ceil32(return_data.size) + 992]
                        mem[ceil32(return_data.size) + s + 1024 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 960, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 960, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('var', 0)), 32))), 0) - 256
                        idx = idx + 1
                        s = s + 1
                        continue 
                    _2121 = mem[_26 + 736]
                    idx = 0
                    s = 12
                    while idx < _2121:
                        require idx < mem[_26 + 736]
                        require s < mem[ceil32(return_data.size) + 992]
                        mem[ceil32(return_data.size) + s + 1024 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 768, ('var', '_26'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 768, ('var', '_26'), ('var', 0)), 32))), 0) - 256
                        _2121 = mem[_26 + 736]
                        idx = idx + 1
                        s = s + 1
                        continue 
                    s = 0
                    s = 288
                    s = 0
                    idx = 0
                    while uint32(idx) < arg2:
                        _3049 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3049] = uint32(uint32(_23) + idx + 1)
                        mem[_3049 + 32] = arg1
                        require stor19 + 1 >= stor19
                        mem[0] = stor19 + 1
                        mem[32] = 17
                        uint32(tokenIdToDigitalMediaRelease[stor19 + 1].field_0) = uint32(uint32(_23) + idx + 1)
                        tokenIdToDigitalMediaRelease[stor19 + 1].field_256 = arg1
                        mem[mem[64]] = stor19 + 1
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = uint32(uint32(_23) + idx + 1)
                        mem[mem[64] + 128] = arg1
                        mem[mem[64] + 96] = 160
                        mem[mem[64] + 160] = mem[ceil32(return_data.size) + 992]
                        _3146 = mem[ceil32(return_data.size) + 992]
                        s = 0
                        while s < _3146:
                            mem[s + mem[64] + 192] = mem[s + ceil32(return_data.size) + 1024]
                            s = s + 32
                            continue 
                        if not _3146 % 32:
                            emit DigitalMediaReleaseCreateEvent(uint256 arg1, address arg2, uint32 arg3, string arg4, uint256 arg5):
                                                                stor19 + 1,
                                                                msg.sender,
                                                                uint32(_23) + idx + 1 << 224,
                                                                160,
                                                                arg1,
                                                                mem[mem[64] + 160 len _3146 + 32],
                        else:
                            mem[floor32(_3146) + mem[64] + 192] = mem[floor32(_3146) + mem[64] + -(_3146 % 32) + 224 len _3146 % 32]
                            emit DigitalMediaReleaseCreateEvent(uint256 arg1, address arg2, uint32 arg3, string arg4, uint256 arg5):
                                                                stor19 + 1,
                                                                msg.sender,
                                                                uint32(_23) + idx + 1 << 224,
                                                                160,
                                                                arg1,
                                                                mem[mem[64] + 160 len floor32(_3146) + 64],
                        require msg.sender
                        require not ownerOf[stor19 + 1]
                        ownerOf[stor19 + 1] = msg.sender
                        require balanceOf[address(msg.sender)] + 1 >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)]++
                        tokenOfOwnerByIndex[address(msg.sender)]++
                        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor19 + 1
                        stor12[stor19 + 1] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[mem[64]] = stor19 + 1
                        emit Transfer((stor19 + 1), 0, msg.sender);
                        stor14[stor19 + 1] = tokenByIndex.length
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length] = stor19 + 1
                        require ownerOf[stor19 + 1]
                        mem[32] = 15
                        mem[0] = sha3(stor19 + 1, 15)
                        uint256(tokenURI[stor19 + 1]) = (2 * mem[ceil32(return_data.size) + 992]) + 1
                        t = sha3(sha3(stor19 + 1, 15))
                        s = ceil32(return_data.size) + 1024
                        while ceil32(return_data.size) + mem[ceil32(return_data.size) + 992] + 1024 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(stor19 + 1, 15)) + (Mask(251, 0, mem[ceil32(return_data.size) + 992] + 31) >> 5)
                        while sha3(sha3(stor19 + 1, 15)) + (tokenURI[stor19 + 1].length + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        require stor19 + 1 >= stor19
                        stor19++
                        s = stor19 + 1
                        s = _3049
                        s = uint32(_23) + idx + 1
                        idx = idx + 1
                        continue 
                else:
                    mem[ceil32(return_data.size) + 1024 len 32 * _122 + 12] = code.data[16989 len 32 * _122 + 12]
                    idx = 0
                    s = 0
                    while idx < 12:
                        require idx < 12
                        require s < mem[ceil32(return_data.size) + 992]
                        mem[ceil32(return_data.size) + s + 1024 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 960, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 960, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('var', 0)), 32))), 0) - 256
                        idx = idx + 1
                        s = s + 1
                        continue 
                    _2122 = mem[_26 + 736]
                    idx = 0
                    s = 12
                    while idx < _2122:
                        require idx < mem[_26 + 736]
                        require s < mem[ceil32(return_data.size) + 992]
                        mem[ceil32(return_data.size) + s + 1024 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 768, ('var', '_26'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 768, ('var', '_26'), ('var', 0)), 32))), 0) - 256
                        _2122 = mem[_26 + 736]
                        idx = idx + 1
                        s = s + 1
                        continue 
                    s = 0
                    s = 288
                    s = 0
                    idx = 0
                    while uint32(idx) < arg2:
                        _3050 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3050] = uint32(uint32(_23) + idx + 1)
                        mem[_3050 + 32] = arg1
                        require stor19 + 1 >= stor19
                        mem[0] = stor19 + 1
                        mem[32] = 17
                        uint32(tokenIdToDigitalMediaRelease[stor19 + 1].field_0) = uint32(uint32(_23) + idx + 1)
                        tokenIdToDigitalMediaRelease[stor19 + 1].field_256 = arg1
                        mem[mem[64]] = stor19 + 1
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = uint32(uint32(_23) + idx + 1)
                        mem[mem[64] + 128] = arg1
                        mem[mem[64] + 96] = 160
                        mem[mem[64] + 160] = mem[ceil32(return_data.size) + 992]
                        _3152 = mem[ceil32(return_data.size) + 992]
                        s = 0
                        while s < _3152:
                            mem[s + mem[64] + 192] = mem[s + ceil32(return_data.size) + 1024]
                            s = s + 32
                            continue 
                        if not _3152 % 32:
                            emit DigitalMediaReleaseCreateEvent(uint256 arg1, address arg2, uint32 arg3, string arg4, uint256 arg5):
                                                                stor19 + 1,
                                                                msg.sender,
                                                                uint32(_23) + idx + 1 << 224,
                                                                160,
                                                                arg1,
                                                                mem[mem[64] + 160 len _3152 + 32],
                        else:
                            mem[floor32(_3152) + mem[64] + 192] = mem[floor32(_3152) + mem[64] + -(_3152 % 32) + 224 len _3152 % 32]
                            emit DigitalMediaReleaseCreateEvent(uint256 arg1, address arg2, uint32 arg3, string arg4, uint256 arg5):
                                                                stor19 + 1,
                                                                msg.sender,
                                                                uint32(_23) + idx + 1 << 224,
                                                                160,
                                                                arg1,
                                                                mem[mem[64] + 160 len floor32(_3152) + 64],
                        require msg.sender
                        require not ownerOf[stor19 + 1]
                        ownerOf[stor19 + 1] = msg.sender
                        require balanceOf[address(msg.sender)] + 1 >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)]++
                        tokenOfOwnerByIndex[address(msg.sender)]++
                        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor19 + 1
                        stor12[stor19 + 1] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[mem[64]] = stor19 + 1
                        emit Transfer((stor19 + 1), 0, msg.sender);
                        stor14[stor19 + 1] = tokenByIndex.length
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length] = stor19 + 1
                        require ownerOf[stor19 + 1]
                        mem[32] = 15
                        mem[0] = sha3(stor19 + 1, 15)
                        uint256(tokenURI[stor19 + 1]) = (2 * mem[ceil32(return_data.size) + 992]) + 1
                        t = sha3(sha3(stor19 + 1, 15))
                        s = ceil32(return_data.size) + 1024
                        while ceil32(return_data.size) + mem[ceil32(return_data.size) + 992] + 1024 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(stor19 + 1, 15)) + (Mask(251, 0, mem[ceil32(return_data.size) + 992] + 31) >> 5)
                        while sha3(sha3(stor19 + 1, 15)) + (tokenURI[stor19 + 1].length + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        require stor19 + 1 >= stor19
                        stor19++
                        s = stor19 + 1
                        s = _3050
                        s = uint32(_23) + idx + 1
                        idx = idx + 1
                        continue 
            else:
                if singleCreatorAddress != msg.sender:
                    revert with 0, 'Creator must match single creator address.'
                if uint32(arg2 + uint32(_23)) > uint32(_22):
                    revert with 0, 'Total supply exceeded.'
                mem[ceil32(return_data.size) + 928] = 12
                mem[ceil32(return_data.size) + 960] = 'ipfs://ipfs/'
                _110 = mem[_26 + 736]
                mem[ceil32(return_data.size) + 992] = mem[_26 + 736] + 12
                mem[64] = ceil32(return_data.size) + floor32(_110 + 43) + 1024
                if not _110 + 12:
                    idx = 0
                    s = 0
                    while idx < 12:
                        require idx < 12
                        require s < mem[ceil32(return_data.size) + 992]
                        mem[ceil32(return_data.size) + s + 1024 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 960, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 960, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('var', 0)), 32))), 0) - 256
                        idx = idx + 1
                        s = s + 1
                        continue 
                    _2123 = mem[_26 + 736]
                    idx = 0
                    s = 12
                    while idx < _2123:
                        require idx < mem[_26 + 736]
                        require s < mem[ceil32(return_data.size) + 992]
                        mem[ceil32(return_data.size) + s + 1024 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 768, ('var', '_26'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 768, ('var', '_26'), ('var', 0)), 32))), 0) - 256
                        _2123 = mem[_26 + 736]
                        idx = idx + 1
                        s = s + 1
                        continue 
                    s = 0
                    s = 288
                    s = 0
                    idx = 0
                    while uint32(idx) < arg2:
                        _3051 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3051] = uint32(uint32(_23) + idx + 1)
                        mem[_3051 + 32] = arg1
                        require stor19 + 1 >= stor19
                        mem[0] = stor19 + 1
                        mem[32] = 17
                        uint32(tokenIdToDigitalMediaRelease[stor19 + 1].field_0) = uint32(uint32(_23) + idx + 1)
                        tokenIdToDigitalMediaRelease[stor19 + 1].field_256 = arg1
                        _3156 = mem[64]
                        mem[mem[64]] = stor19 + 1
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = uint32(uint32(_23) + idx + 1)
                        mem[mem[64] + 128] = arg1
                        mem[mem[64] + 96] = 160
                        mem[mem[64] + 160] = mem[ceil32(return_data.size) + 992]
                        _3158 = mem[ceil32(return_data.size) + 992]
                        s = 0
                        while s < _3158:
                            mem[s + mem[64] + 192] = mem[s + ceil32(return_data.size) + 1024]
                            s = s + 32
                            continue 
                        if not _3158 % 32:
                            emit DigitalMediaReleaseCreateEvent(uint256 arg1, address arg2, uint32 arg3, string arg4, uint256 arg5):
                                                                mem[mem[64] len _3158 + _3156 + -mem[64] + 192],
                        else:
                            mem[floor32(_3158) + _3156 + 192] = mem[floor32(_3158) + _3156 + -(_3158 % 32) + 224 len _3158 % 32]
                            emit DigitalMediaReleaseCreateEvent(uint256 arg1, address arg2, uint32 arg3, string arg4, uint256 arg5):
                                                                mem[mem[64] len floor32(_3158) + _3156 + -mem[64] + 224],
                        require msg.sender
                        require not ownerOf[stor19 + 1]
                        ownerOf[stor19 + 1] = msg.sender
                        require balanceOf[address(msg.sender)] + 1 >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)]++
                        tokenOfOwnerByIndex[address(msg.sender)]++
                        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor19 + 1
                        stor12[stor19 + 1] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[mem[64]] = stor19 + 1
                        emit Transfer((stor19 + 1), 0, msg.sender);
                        stor14[stor19 + 1] = tokenByIndex.length
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length] = stor19 + 1
                        require ownerOf[stor19 + 1]
                        mem[32] = 15
                        mem[0] = sha3(stor19 + 1, 15)
                        uint256(tokenURI[stor19 + 1]) = (2 * mem[ceil32(return_data.size) + 992]) + 1
                        t = sha3(sha3(stor19 + 1, 15))
                        s = ceil32(return_data.size) + 1024
                        while ceil32(return_data.size) + mem[ceil32(return_data.size) + 992] + 1024 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(stor19 + 1, 15)) + (Mask(251, 0, mem[ceil32(return_data.size) + 992] + 31) >> 5)
                        while sha3(sha3(stor19 + 1, 15)) + (tokenURI[stor19 + 1].length + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        require stor19 + 1 >= stor19
                        stor19++
                        s = stor19 + 1
                        s = _3051
                        s = uint32(_23) + idx + 1
                        idx = idx + 1
                        continue 
                else:
                    mem[ceil32(return_data.size) + 1024 len 32 * _110 + 12] = code.data[16989 len 32 * _110 + 12]
                    idx = 0
                    s = 0
                    while idx < 12:
                        require idx < 12
                        require s < mem[ceil32(return_data.size) + 992]
                        mem[ceil32(return_data.size) + s + 1024 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 960, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 960, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('var', 0)), 32))), 0) - 256
                        idx = idx + 1
                        s = s + 1
                        continue 
                    _2124 = mem[_26 + 736]
                    idx = 0
                    s = 12
                    while idx < _2124:
                        require idx < mem[_26 + 736]
                        require s < mem[ceil32(return_data.size) + 992]
                        mem[ceil32(return_data.size) + s + 1024 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 768, ('var', '_26'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 768, ('var', '_26'), ('var', 0)), 32))), 0) - 256
                        _2124 = mem[_26 + 736]
                        idx = idx + 1
                        s = s + 1
                        continue 
                    s = 0
                    s = 288
                    s = 0
                    idx = 0
                    while uint32(idx) < arg2:
                        _3052 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3052] = uint32(uint32(_23) + idx + 1)
                        mem[_3052 + 32] = arg1
                        require stor19 + 1 >= stor19
                        mem[0] = stor19 + 1
                        mem[32] = 17
                        uint32(tokenIdToDigitalMediaRelease[stor19 + 1].field_0) = uint32(uint32(_23) + idx + 1)
                        tokenIdToDigitalMediaRelease[stor19 + 1].field_256 = arg1
                        mem[mem[64]] = stor19 + 1
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = uint32(uint32(_23) + idx + 1)
                        mem[mem[64] + 128] = arg1
                        mem[mem[64] + 96] = 160
                        mem[mem[64] + 160] = mem[ceil32(return_data.size) + 992]
                        _3164 = mem[ceil32(return_data.size) + 992]
                        s = 0
                        while s < _3164:
                            mem[s + mem[64] + 192] = mem[s + ceil32(return_data.size) + 1024]
                            s = s + 32
                            continue 
                        if not _3164 % 32:
                            emit DigitalMediaReleaseCreateEvent(uint256 arg1, address arg2, uint32 arg3, string arg4, uint256 arg5):
                                                                stor19 + 1,
                                                                msg.sender,
                                                                uint32(_23) + idx + 1 << 224,
                                                                160,
                                                                arg1,
                                                                mem[mem[64] + 160 len _3164 + 32],
                        else:
                            mem[floor32(_3164) + mem[64] + 192] = mem[floor32(_3164) + mem[64] + -(_3164 % 32) + 224 len _3164 % 32]
                            emit DigitalMediaReleaseCreateEvent(uint256 arg1, address arg2, uint32 arg3, string arg4, uint256 arg5):
                                                                stor19 + 1,
                                                                msg.sender,
                                                                uint32(_23) + idx + 1 << 224,
                                                                160,
                                                                arg1,
                                                                mem[mem[64] + 160 len floor32(_3164) + 64],
                        require msg.sender
                        require not ownerOf[stor19 + 1]
                        ownerOf[stor19 + 1] = msg.sender
                        require balanceOf[address(msg.sender)] + 1 >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)]++
                        tokenOfOwnerByIndex[address(msg.sender)]++
                        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor19 + 1
                        stor12[stor19 + 1] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[mem[64]] = stor19 + 1
                        emit Transfer((stor19 + 1), 0, msg.sender);
                        stor14[stor19 + 1] = tokenByIndex.length
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length] = stor19 + 1
                        require ownerOf[stor19 + 1]
                        mem[32] = 15
                        mem[0] = sha3(stor19 + 1, 15)
                        uint256(tokenURI[stor19 + 1]) = (2 * mem[ceil32(return_data.size) + 992]) + 1
                        t = sha3(sha3(stor19 + 1, 15))
                        s = ceil32(return_data.size) + 1024
                        while ceil32(return_data.size) + mem[ceil32(return_data.size) + 992] + 1024 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(stor19 + 1, 15)) + (Mask(251, 0, mem[ceil32(return_data.size) + 992] + 31) >> 5)
                        while sha3(sha3(stor19 + 1, 15)) + (tokenURI[stor19 + 1].length + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        require stor19 + 1 >= stor19
                        stor19++
                        s = stor19 + 1
                        s = _3052
                        s = uint32(_23) + idx + 1
                        idx = idx + 1
                        continue 
        require sub_a0f01e08Address
        require sub_1b284e75Address
        require sub_a0f01e08Address
        require sub_1b284e75Address
        mem[mem[64] + 4] = mem[ceil32(return_data.size) + 736]
        if mem[ceil32(return_data.size) + 736] >= sub_0154788d:
            require ext_code.size(sub_1b284e75Address)
            call sub_1b284e75Address.0x5160a124 with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], arg2 << 224
        else:
            require ext_code.size(sub_a0f01e08Address)
            call sub_a0f01e08Address.0x5160a124 with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], arg2 << 224
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit UpdateDigitalMediaPrintIndexEvent(arg1, uint32(arg2 + uint32(_23)));
}



}
