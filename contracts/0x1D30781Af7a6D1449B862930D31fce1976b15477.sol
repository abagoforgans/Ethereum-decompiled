contract main {




// =====================  Runtime code  =====================


#
#  - tokenURI(uint256 arg1)
#  - mintOrReleaseFromGateway(address arg1, uint256 arg2, bytes32 arg3, bytes32 arg4, bytes32 arg5, bytes32[] arg6, bytes32[] arg7, bytes32[] arg8, bytes32[] arg9, bytes32[] arg10)
#  - setPlasmaBearMetadata(uint256 arg1, bytes32 arg2, bytes32 arg3, bytes32 arg4, bytes32[] arg5, bytes32[] arg6, bytes32[] arg7, bytes32[] arg8, bytes32[] arg9)
#
const onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) = Mask(32, 224, sha3('onERC721Received(address,address', Mask(120, 136, ',uint256,bytes)') >> 136))

const InterfaceId_ERC165 = 0x1ffc9a700000000000000000000000000000000000000000000000000000000


mapping of uint8 stor0;
mapping of address ownerOf;
mapping of address approved;
mapping of uint256 balanceOf;
mapping of uint8 stor4;
array of uint256 name;
array of uint256 symbol;
array of struct tokenOfOwnerByIndex;
mapping of uint256 stor8;
array of uint256 tokenByIndex;
mapping of uint256 stor10;
mapping of bool stor11;
address owner;
mapping of uint256 meta;
address proxyRegistryAddress;
array of uint256 stor15;

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

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require arg1
    require arg2 < balanceOf[address(arg1)]
    require arg2 < tokenOfOwnerByIndex[address(arg1)].field_0
    return tokenOfOwnerByIndex[address(arg1)][arg2].field_0
}

function getMeta(uint256 arg1, bytes32 arg2) {
    require ownerOf[arg1]
    return meta[arg1][address(this.address)][arg2]
}

function tokenByIndex(uint256 arg1) {
    require arg1 < tokenByIndex.length
    return tokenByIndex[arg1]
}

function getMetaForProvider(uint256 arg1, address arg2, bytes32 arg3) {
    require ownerOf[arg1]
    return meta[arg1][address(arg2)][arg3]
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

function proxyRegistryAddress() {
    return proxyRegistryAddress
}

function tokenMeta(uint256 arg1, address arg2, bytes32 arg3) {
    return meta[arg1][arg2][arg3]
}

function getMeta(uint256 arg1, address arg2, bytes32 arg3) {
    require ownerOf[arg1]
    return meta[arg1][address(arg2)][arg3]
}

function _fallback() payable {
    revert
}

function exists(uint256 arg1) {
    return not not ownerOf[arg1]
}

function typeIdFor(uint256 arg1) {
    return Mask(128, 128, arg1)
}

function setProxyAddress(address arg1) {
    require msg.sender == owner
    proxyRegistryAddress = arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function setBaseTokenURI(string arg1) {
    require msg.sender == owner
    stor15[] = Array(len=arg1.length, data=arg1[all])
}

function depositCredit(string arg1) payable {
    emit DepositCredit(Array(len=arg1.length, data=arg1[all]), msg.value, msg.sender);
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setApprovalForAll(address arg1, bool arg2) {
    require arg1 != msg.sender
    stor4[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function setContractApprovalForAll(address arg1, bool arg2) {
    require msg.sender == owner
    stor4[address(this.address)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, this.address, arg1);
}

function setMeta(uint256 arg1, bytes32 arg2, bytes32 arg3) {
    require ownerOf[arg1]
    require ownerOf[arg1]
    if msg.sender == ownerOf[arg1]:
        if owner != msg.sender:
            meta[arg1][address(msg.sender)][arg2] = arg3
        else:
            meta[arg1][address(this.address)][arg2] = arg3
    else:
        require msg.sender == owner
        meta[arg1][address(this.address)][arg2] = arg3
}

function isApprovedForAll(address arg1, address arg2) {
    if not proxyRegistryAddress:
        return bool(stor4[address(arg1)][address(arg2)])
    require ext_code.size(proxyRegistryAddress)
    call proxyRegistryAddress.proxies(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != arg2:
        return bool(stor4[address(arg1)][address(arg2)])
    return 1
}

function approve(address arg1, uint256 arg2) {
    require ownerOf[arg2]
    require arg1 != ownerOf[arg2]
    if ownerOf[arg2] != msg.sender:
        if not proxyRegistryAddress:
            require stor4[stor1[arg2]][address(msg.sender)]
        else:
            require ext_code.size(proxyRegistryAddress)
            call proxyRegistryAddress.proxies(address arg1) with:
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

function tokensOfOwner(address arg1) {
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

function setMeta(uint256 arg1, bytes32[] arg2, bytes32[] arg3) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require ownerOf[arg1]
    require arg2.length == arg3.length
    require ownerOf[arg1]
    if msg.sender == ownerOf[arg1]:
        if owner != msg.sender:
            idx = 0
            while idx < arg2.length:
                require idx < arg3.length
                require idx < arg2.length
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = sha3(address(msg.sender), sha3(arg1, 13))
                meta[arg1][address(msg.sender)][mem[(32 * idx) + 128]] = mem[(32 * idx) + (32 * arg2.length) + 160]
                idx = idx + 1
                continue 
        else:
            idx = 0
            while idx < arg2.length:
                require idx < arg3.length
                require idx < arg2.length
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = sha3(address(this.address), sha3(arg1, 13))
                meta[arg1][address(this.address)][mem[(32 * idx) + 128]] = mem[(32 * idx) + (32 * arg2.length) + 160]
                idx = idx + 1
                continue 
    else:
        require msg.sender == owner
        idx = 0
        while idx < arg2.length:
            require idx < arg3.length
            require idx < arg2.length
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = sha3(address(this.address), sha3(arg1, 13))
            meta[arg1][address(this.address)][mem[(32 * idx) + 128]] = mem[(32 * idx) + (32 * arg2.length) + 160]
            idx = idx + 1
            continue 
}

function burn(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ownerOf[arg2]
    require ownerOf[arg2] == arg1
    if approved[arg2]:
        approved[arg2] = 0
    require ownerOf[arg2]
    require ownerOf[arg2] == arg1
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    ownerOf[arg2] = 0
    require 1 <= tokenOfOwnerByIndex[address(arg1)].field_0
    require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
    require stor8[arg2] < tokenOfOwnerByIndex[address(arg1)].field_0
    tokenOfOwnerByIndex[address(arg1)][stor8[arg2]].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
    tokenOfOwnerByIndex[address(arg1)].field_0--
    if tokenOfOwnerByIndex[address(arg1)].field_0 > tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
        idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
        while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
            tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor8[arg2] = 0
    stor8[stor7[address(arg1)][stor7[address(arg1)].field_0].field_0] = stor8[arg2]
    emit Transfer(arg1, 0, arg2);
    if Mask(255, 1, (256 * not bool(stor11[arg2])) - 1 and uint256(stor11[arg2])):
        uint256(stor11[arg2]) = 0
        if 31 < stor11[arg2].length:
            idx = 0
            while stor11[arg2].length + 31 / 32 > idx:
                uint256(stor11[arg2][idx]) = 0
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
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            if not proxyRegistryAddress:
                require stor4[stor1[arg3]][address(msg.sender)]
            else:
                require ext_code.size(proxyRegistryAddress)
                call proxyRegistryAddress.proxies(address arg1) with:
                     gas gas_remaining wei
                    args ownerOf[arg3]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != msg.sender:
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
    require 1 <= tokenOfOwnerByIndex[address(arg1)].field_0
    require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
    require stor8[arg3] < tokenOfOwnerByIndex[address(arg1)].field_0
    tokenOfOwnerByIndex[address(arg1)][stor8[arg3]].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
    tokenOfOwnerByIndex[address(arg1)].field_0--
    if tokenOfOwnerByIndex[address(arg1)].field_0 > tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
        idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
        while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
            tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor8[arg3] = 0
    stor8[stor7[address(arg1)][stor7[address(arg1)].field_0].field_0] = stor8[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)].field_0++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
    stor8[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
    emit Transfer(arg1, arg2, arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            if not proxyRegistryAddress:
                require stor4[stor1[arg3]][address(msg.sender)]
            else:
                require ext_code.size(proxyRegistryAddress)
                call proxyRegistryAddress.proxies(address arg1) with:
                     gas gas_remaining wei
                    args ownerOf[arg3]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != msg.sender:
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
    require 1 <= tokenOfOwnerByIndex[address(arg1)].field_0
    require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
    require stor8[arg3] < tokenOfOwnerByIndex[address(arg1)].field_0
    tokenOfOwnerByIndex[address(arg1)][stor8[arg3]].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
    tokenOfOwnerByIndex[address(arg1)].field_0--
    if tokenOfOwnerByIndex[address(arg1)].field_0 > tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
        idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
        while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
            tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor8[arg3] = 0
    stor8[stor7[address(arg1)][stor7[address(arg1)].field_0].field_0] = stor8[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)].field_0++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
    stor8[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
    emit Transfer(arg1, arg2, arg3);
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

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            if not proxyRegistryAddress:
                require stor4[stor1[arg3]][address(msg.sender)]
            else:
                require ext_code.size(proxyRegistryAddress)
                call proxyRegistryAddress.proxies(address arg1) with:
                     gas gas_remaining wei
                    args ownerOf[arg3]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != msg.sender:
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
    require 1 <= tokenOfOwnerByIndex[address(arg1)].field_0
    require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
    require stor8[arg3] < tokenOfOwnerByIndex[address(arg1)].field_0
    tokenOfOwnerByIndex[address(arg1)][stor8[arg3]].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
    tokenOfOwnerByIndex[address(arg1)].field_0--
    if tokenOfOwnerByIndex[address(arg1)].field_0 > tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
        idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
        while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
            tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor8[arg3] = 0
    stor8[stor7[address(arg1)][stor7[address(arg1)].field_0].field_0] = stor8[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)].field_0++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
    stor8[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.0x150b7a02 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function depositToGateway(uint256 arg1, string arg2) {
    require ownerOf[arg1]
    if ownerOf[arg1] != msg.sender:
        if approved[arg1] != msg.sender:
            if not proxyRegistryAddress:
                require stor4[stor1[arg1]][address(msg.sender)]
            else:
                require ext_code.size(proxyRegistryAddress)
                call proxyRegistryAddress.proxies(address arg1) with:
                     gas gas_remaining wei
                    args ownerOf[arg1]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != msg.sender:
                    require stor4[stor1[arg1]][address(msg.sender)]
    require msg.sender
    require this.address
    require ownerOf[arg1]
    require ownerOf[arg1] == msg.sender
    if approved[arg1]:
        approved[arg1] = 0
    require ownerOf[arg1]
    require ownerOf[arg1] == msg.sender
    require 1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)]--
    ownerOf[arg1] = 0
    require 1 <= tokenOfOwnerByIndex[address(msg.sender)].field_0
    require tokenOfOwnerByIndex[address(msg.sender)].field_0 - 1 < tokenOfOwnerByIndex[address(msg.sender)].field_0
    require stor8[arg1] < tokenOfOwnerByIndex[address(msg.sender)].field_0
    tokenOfOwnerByIndex[address(msg.sender)][stor8[arg1]].field_0 = tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)].field_0].field_0
    tokenOfOwnerByIndex[address(msg.sender)].field_0--
    if tokenOfOwnerByIndex[address(msg.sender)].field_0 > tokenOfOwnerByIndex[address(msg.sender)].field_0 - 1:
        idx = tokenOfOwnerByIndex[address(msg.sender)].field_0 - 1
        while tokenOfOwnerByIndex[address(msg.sender)].field_0 > idx:
            tokenOfOwnerByIndex[address(msg.sender)][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor8[arg1] = 0
    stor8[stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_0] = stor8[arg1]
    require not ownerOf[arg1]
    ownerOf[arg1] = this.address
    require balanceOf[address(this.address)] + 1 >= balanceOf[address(this.address)]
    balanceOf[address(this.address)]++
    tokenOfOwnerByIndex[address(this.address)].field_0++
    tokenOfOwnerByIndex[address(this.address)][tokenOfOwnerByIndex[address(this.address)].field_0].field_0 = arg1
    stor8[arg1] = tokenOfOwnerByIndex[address(this.address)].field_0
    emit Transfer(msg.sender, this.address, arg1);
    if ext_code.size(this.address) > 0:
        require ext_code.size(this.address)
        call this.address.0x150b7a02 with:
             gas gas_remaining wei
            args msg.sender, msg.sender, arg1, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
    emit GatewayTransfer(Array(len=arg2.length, data=arg2[all]), msg.sender, arg1);
}

function mintOrReleaseFromGatewayLight(address arg1, uint256 arg2) {
    require msg.sender == owner
    require msg.sender == owner
    if not ownerOf[arg2]:
        require not ownerOf[arg2]
        require arg1
        require not ownerOf[arg2]
        ownerOf[arg2] = arg1
        require balanceOf[address(arg1)] + 1 >= balanceOf[address(arg1)]
        balanceOf[address(arg1)]++
        tokenOfOwnerByIndex[address(arg1)].field_0++
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0 = arg2
        stor8[arg2] = tokenOfOwnerByIndex[address(arg1)].field_0
        emit Transfer(0, arg1, arg2);
        stor10[arg2] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg2
        emit Mint(arg1, arg2);
    else:
        require ownerOf[arg2]
        if ownerOf[arg2] != msg.sender:
            if approved[arg2] != msg.sender:
                if not proxyRegistryAddress:
                    require stor4[stor1[arg2]][address(msg.sender)]
                else:
                    require ext_code.size(proxyRegistryAddress)
                    call proxyRegistryAddress.proxies(address arg1) with:
                         gas gas_remaining wei
                        args ownerOf[arg2]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[12 len 20] != msg.sender:
                        require stor4[stor1[arg2]][address(msg.sender)]
        require this.address
        require arg1
        require ownerOf[arg2]
        require ownerOf[arg2] == this.address
        if approved[arg2]:
            approved[arg2] = 0
        require ownerOf[arg2]
        require ownerOf[arg2] == this.address
        require 1 <= balanceOf[address(this.address)]
        balanceOf[address(this.address)]--
        ownerOf[arg2] = 0
        require 1 <= tokenOfOwnerByIndex[address(this.address)].field_0
        require tokenOfOwnerByIndex[address(this.address)].field_0 - 1 < tokenOfOwnerByIndex[address(this.address)].field_0
        require stor8[arg2] < tokenOfOwnerByIndex[address(this.address)].field_0
        tokenOfOwnerByIndex[address(this.address)][stor8[arg2]].field_0 = tokenOfOwnerByIndex[address(this.address)][tokenOfOwnerByIndex[address(this.address)].field_0].field_0
        tokenOfOwnerByIndex[address(this.address)].field_0--
        if tokenOfOwnerByIndex[address(this.address)].field_0 > tokenOfOwnerByIndex[address(this.address)].field_0 - 1:
            idx = tokenOfOwnerByIndex[address(this.address)].field_0 - 1
            while tokenOfOwnerByIndex[address(this.address)].field_0 > idx:
                tokenOfOwnerByIndex[address(this.address)][idx].field_0 = 0
                idx = idx + 1
                continue 
        stor8[arg2] = 0
        stor8[stor7[address(this.address)][stor7[address(this.address)].field_0].field_0] = stor8[arg2]
        require not ownerOf[arg2]
        ownerOf[arg2] = arg1
        require balanceOf[address(arg1)] + 1 >= balanceOf[address(arg1)]
        balanceOf[address(arg1)]++
        tokenOfOwnerByIndex[address(arg1)].field_0++
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0 = arg2
        stor8[arg2] = tokenOfOwnerByIndex[address(arg1)].field_0
        emit Transfer(this.address, arg1, arg2);
        if ext_code.size(arg1) > 0:
            require ext_code.size(arg1)
            call arg1.0x150b7a02 with:
                 gas gas_remaining wei
                args 0, uint32(msg.sender), address(this.address), arg2, 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
        emit GatewayRelease(arg1, arg2);
}



}
