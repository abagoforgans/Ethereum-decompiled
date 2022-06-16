contract main {




// =====================  Runtime code  =====================


#
#  - tokenURI(uint256 arg1)
#
const InterfaceId_ERC165 = 0x1ffc9a700000000000000000000000000000000000000000000000000000000

const CONTRACT_USER_POINTS = 'CONTRACT_USER_POINTS'

const CONTRACT_WATER_ERC20_TOKEN = 'CONTRACT_WATER_ERC20_TOKEN'

const CONTRACT_GOLD_ERC20_TOKEN = 'CONTRACT_GOLD_ERC20_TOKEN'

const CONTRACT_RING_ERC20_TOKEN = 'CONTRACT_RING_ERC20_TOKEN'

const UINT_AUCTION_CUT = 'UINT_AUCTION_CUT'

const CONTRACT_TOKEN_LOCATION = 'CONTRACT_TOKEN_LOCATION'

const CONTRACT_KTON_ERC20_TOKEN = 'CONTRACT_KTON_ERC20_TOKEN'

const CONTRACT_WOOD_ERC20_TOKEN = 'CONTRACT_WOOD_ERC20_TOKEN'

const CONTRACT_FIRE_ERC20_TOKEN = 'CONTRACT_FIRE_ERC20_TOKEN'

const CONTRACT_LAND_BASE = 'CONTRACT_LAND_BASE'

const CONTRACT_INTERSTELLAR_ENCODER = 'CONTRACT_INTERSTELLAR_ENCODER'

const CONTRACT_PET_BASE = 'CONTRACT_PET_BASE'

const CONTRACT_SOIL_ERC20_TOKEN = 'CONTRACT_SOIL_ERC20_TOKEN'

const CONTRACT_OBJECT_OWNERSHIP = 'CONTRACT_OBJECT_OWNERSHIP'

const CONTRACT_TOKEN_USE = 'CONTRACT_TOKEN_USE'

const CONTRACT_ERC721_BRIDGE = 'CONTRACT_ERC721_BRIDGE'

const CONTRACT_REVENUE_POOL = 'CONTRACT_REVENUE_POOL'

const CONTRACT_LAND_RESOURCE = 'CONTRACT_LAND_RESOURCE'

const UINT_REFERER_CUT = 'UINT_REFERER_CUT'

const UINT_TOKEN_OFFER_CUT = 'UINT_TOKEN_OFFER_CUT'

const CONTRACT_DIVIDENDS_POOL = 'CONTRACT_DIVIDENDS_POOL'


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
mapping of bool stor11;
address authorityAddress;
address owner;
uint256 stor13;
uint8 stor14; offset 160
address registryAddress;
array of uint256 baseTokenURI;

function supportsInterface(bytes4 arg1) {
    return bool(stor0[Mask(32, 224, arg1)])
}

function name() {
    return name[0 len name.length].field_0
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

function registry() {
    return registryAddress
}

function owner() {
    return address(owner)
}

function symbol() {
    return symbol[0 len symbol.length].field_0
}

function authority() {
    return authorityAddress
}

function baseTokenURI() {
    return baseTokenURI[0 len baseTokenURI.length]
}

function isApprovedForAll(address arg1, address arg2) {
    return bool(stor4[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
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

function setOwner(address arg1) {
    if address(owner) != msg.sender:
        require authorityAddress
        require ext_code.size(authorityAddress)
        call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
             gas gas_remaining wei
            args msg.sender, this.address, call.func_hash
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    address(owner) = arg1
    emit LogSetOwner(arg1);
}

function setAuthority(address arg1) {
    if address(owner) != msg.sender:
        require authorityAddress
        require ext_code.size(authorityAddress)
        call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
             gas gas_remaining wei
            args msg.sender, this.address, call.func_hash
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    authorityAddress = arg1
    emit LogSetAuthority(arg1);
}

function setBaseTokenURI(string arg1) {
    if address(owner) != msg.sender:
        require authorityAddress
        require ext_code.size(authorityAddress)
        call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
             gas gas_remaining wei
            args msg.sender, this.address, call.func_hash
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    baseTokenURI[] = Array(len=arg1.length, data=arg1[all])
}

function setTokenURI(uint256 arg1, string arg2) {
    if address(owner) != msg.sender:
        require authorityAddress
        require ext_code.size(authorityAddress)
        call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
             gas gas_remaining wei
            args msg.sender, this.address, call.func_hash
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    require ownerOf[arg1]
    uint256(stor11[arg1][]) = Array(len=arg2.length, data=arg2[all])
}

function mint(address arg1, uint256 arg2) {
    if address(owner) != msg.sender:
        require authorityAddress
        require ext_code.size(authorityAddress)
        call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
             gas gas_remaining wei
            args msg.sender, this.address, call.func_hash
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    require arg1
    require not ownerOf[arg2]
    ownerOf[arg2] = arg1
    require balanceOf[address(arg1)] + 1 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)]++
    tokenOfOwnerByIndex[address(arg1)]++
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = arg2
    stor8[arg2] = tokenOfOwnerByIndex[address(arg1)]
    emit Transfer(0, arg1, arg2);
    stor10[arg2] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = arg2
}

function initializeContract(address arg1) {
    if stor14:
        revert with 0, 'Only can call once'
    uint256(stor13) = msg.sender or Mask(96, 160, uint256(stor13))
    emit LogSetOwner(msg.sender);
    stor0[0x1ffc9a700000000000000000000000000000000000000000000000000000000] = 1
    stor0[0x80ac58cd00000000000000000000000000000000000000000000000000000000] = 1
    stor0[0x4f558e7900000000000000000000000000000000000000000000000000000000] = 1
    uint8(name.length) = 44
    name.length.field_8 = 'Evolution Land Objects' / 256
    idx = 0
    while name.length + 31 / 32 > idx:
        name[idx].field_0 = 0
        idx = idx + 1
        continue 
    uint8(symbol.length) = 6
    symbol.length.field_8 = 'EVO' / 256
    idx = 0
    while symbol.length + 31 / 32 > idx:
        symbol[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor0[0x780e9d6300000000000000000000000000000000000000000000000000000000] = 1
    stor0[0x5b5e139f00000000000000000000000000000000000000000000000000000000] = 1
    registryAddress = arg1
    stor14 = 1
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

function mintObject(address arg1, uint128 arg2) {
    if address(owner) != msg.sender:
        require authorityAddress
        require ext_code.size(authorityAddress)
        call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
             gas gas_remaining wei
            args msg.sender, this.address, call.func_hash
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    require ext_code.size(registryAddress)
    call registryAddress.addressOf(bytes32 arg1) with:
         gas gas_remaining wei
        args 'CONTRACT_INTERSTELLAR_ENCODER'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).encodeTokenIdForObjectContract(address arg1, address arg2, uint128 arg3) with:
         gas gas_remaining wei
        args this.address, msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1
    require not ownerOf[ext_call.return_data[0]]
    ownerOf[ext_call.return_data[0]] = arg1
    require balanceOf[address(arg1)] + 1 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)]++
    tokenOfOwnerByIndex[address(arg1)]++
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = ext_call.return_data[0]
    stor8[ext_call.return_data[0]] = tokenOfOwnerByIndex[address(arg1)]
    emit Transfer(0, arg1, ext_call.return_data[0]);
    stor10[ext_call.return_data[0]] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = ext_call.return_data[0]
    return ext_call.return_data[0]
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
        call arg2.0x150b7a02 with:
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
        call arg2.0x150b7a02 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
}

function burn(address arg1, uint256 arg2) {
    if address(owner) != msg.sender:
        require authorityAddress
        require ext_code.size(authorityAddress)
        call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
             gas gas_remaining wei
            args msg.sender, this.address, call.func_hash
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
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
    if Mask(255, 1, uint256(stor11[arg2]) and (256 * not bool(stor11[arg2])) - 1):
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

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    require ownerOf[arg2]
    require ownerOf[arg2] != arg1
    if ownerOf[arg2] != msg.sender:
        require stor4[stor1[arg2]][address(msg.sender)]
    approved[arg2] = arg1
    emit Approval(ownerOf[arg2], arg1, arg2);
    mem[ceil32(arg3.length) + 128] = 'receiveApproval(address,uint256,'
    mem[ceil32(arg3.length) + 160] = msg.sender
    mem[ceil32(arg3.length) + 192] = arg2
    mem[ceil32(arg3.length) + 224] = 96
    mem[ceil32(arg3.length) + 256] = arg3.length
    mem[ceil32(arg3.length) + 288 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        mem[arg3.length + ceil32(arg3.length) + 288] = Mask(32, 224, sha3('receiveApproval(address,uint256,', 'bytes)'))
        if not arg3.length + 128 % 32:
            call arg1 with:
               funct Mask(32, 224, sha3('receiveApproval(address,uint256,', 'bytes)')) >> 224
                 gas gas_remaining wei
                args mem[ceil32(arg3.length) + 160 len ceil32(arg3.length) + 4], mem[arg3.length + ceil32(arg3.length) + ceil32(arg3.length) + 296 len arg3.length + -ceil32(arg3.length) + 124]
        else:
            mem[floor32(arg3.length + 128) + arg3.length + ceil32(arg3.length) + 292] = mem[floor32(arg3.length + 128) + arg3.length + ceil32(arg3.length) + -(arg3.length + 128 % 32) + 324 len arg3.length + 128 % 32]
            call arg1 with:
               funct Mask(32, 224, sha3('receiveApproval(address,uint256,', 'bytes)')) >> 224
                 gas gas_remaining wei
                args mem[ceil32(arg3.length) + 160 len ceil32(arg3.length) + 4], mem[arg3.length + ceil32(arg3.length) + ceil32(arg3.length) + 296 len floor32(arg3.length + 128) + -ceil32(arg3.length) + 28]
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 320] = Mask(32, 224, sha3('receiveApproval(address,uint256,', 'bytes)'))
        if not floor32(arg3.length) + 160 % 32:
            call arg1 with:
               funct Mask(32, 224, sha3('receiveApproval(address,uint256,', 'bytes)')) >> 224
                 gas gas_remaining wei
                args mem[ceil32(arg3.length) + 160 len ceil32(floor32(arg3.length)) + 5], mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(floor32(arg3.length)) + 329 len (3 * floor32(arg3.length)) + -ceil32(floor32(arg3.length)) + 155]
        else:
            mem[floor32(floor32(arg3.length) + 160) + floor32(arg3.length) + ceil32(arg3.length) + 324] = mem[floor32(floor32(arg3.length) + 160) + floor32(arg3.length) + ceil32(arg3.length) + -(floor32(arg3.length) + 160 % 32) + 356 len floor32(arg3.length) + 160 % 32]
            call arg1 with:
               funct Mask(32, 224, sha3('receiveApproval(address,uint256,', 'bytes)')) >> 224
                 gas gas_remaining wei
                args mem[ceil32(arg3.length) + 160 len ceil32(floor32(arg3.length)) + 5], mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(floor32(arg3.length)) + 329 len floor32(floor32(arg3.length) + 160) + -ceil32(floor32(arg3.length)) + 27]
    require ext_call.success
}

function burnObject(address arg1, uint128 arg2) {
    if address(owner) != msg.sender:
        require authorityAddress
        require ext_code.size(authorityAddress)
        call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
             gas gas_remaining wei
            args msg.sender, this.address, call.func_hash
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    require ext_code.size(registryAddress)
    call registryAddress.addressOf(bytes32 arg1) with:
         gas gas_remaining wei
        args 'CONTRACT_INTERSTELLAR_ENCODER'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).encodeTokenIdForObjectContract(address arg1, address arg2, uint128 arg3) with:
         gas gas_remaining wei
        args this.address, msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ownerOf[ext_call.return_data[0]]
    require ownerOf[ext_call.return_data[0]] == arg1
    if approved[ext_call.return_data[0]]:
        approved[ext_call.return_data[0]] = 0
    require ownerOf[ext_call.return_data[0]]
    require ownerOf[ext_call.return_data[0]] == arg1
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    ownerOf[ext_call.return_data[0]] = 0
    require 1 <= tokenOfOwnerByIndex[address(arg1)]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    require stor8[ext_call.return_data[0]] < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][stor8[ext_call.return_data[0]]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor8[ext_call.return_data[0]] = 0
    stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[ext_call.return_data[0]]
    emit Transfer(arg1, 0, ext_call.return_data[0]);
    if Mask(255, 1, uint256(stor11[ext_call.return_data[0]]) and (256 * not bool(stor11[ext_call.return_data[0]])) - 1):
        uint256(stor11[ext_call.return_data[0]]) = 0
        if 31 < stor11[ext_call.return_data[0]].length:
            idx = 0
            while stor11[ext_call.return_data[0]].length + 31 / 32 > idx:
                uint256(stor11[ext_call.return_data[0]][idx]) = 0
                idx = idx + 1
                continue 
    require 1 <= tokenByIndex.length
    require tokenByIndex.length - 1 < tokenByIndex.length
    require stor10[ext_call.return_data[0]] < tokenByIndex.length
    tokenByIndex[stor10[ext_call.return_data[0]]] = tokenByIndex[tokenByIndex.length]
    require tokenByIndex.length - 1 < tokenByIndex.length
    tokenByIndex[tokenByIndex.length] = 0
    tokenByIndex.length--
    if tokenByIndex.length > tokenByIndex.length - 1:
        idx = tokenByIndex.length - 1
        while tokenByIndex.length > idx:
            tokenByIndex[idx] = 0
            idx = idx + 1
            continue 
    stor10[ext_call.return_data[0]] = 0
    stor10[stor9[stor9.length]] = stor10[ext_call.return_data[0]]
    return ext_call.return_data[0]
}



}
