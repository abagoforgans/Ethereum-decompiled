contract main {




// =====================  Runtime code  =====================


#
#  - putInStud(uint256 arg1, uint256 arg2, uint256 arg3)
#  - createGOP(address arg1, string arg2, uint256 arg3)
#  - initialize(address arg1)
#  - initialize(string arg1, string arg2, address[] arg3, address[] arg4)
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
mapping of uint8 stor51;
mapping of address ownerOf;
mapping of address approved;
mapping of uint256 balanceOf;
mapping of uint8 stor105;
array of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor157;
array of uint256 tokenByIndex;
mapping of uint256 stor159;
array of uint256 name;
array of uint256 symbol;
array of uint256 tokenURI;
mapping of uint8 stor263;
mapping of uint8 stor364;
uint8 paused;
address owner;
uint256 stor567;
uint256 lastHorseSex;
uint256 stor569;
uint256 stor570;
uint256 stor571;
address stor572;
address horseDataContractAddress;
mapping of struct baseValue;
address stor575;
address stor578;
address stor579;
address stor580;
uint256 stor580;
array of uint256 stor581;
array of struct stor587;
mapping of struct matingPrice;
mapping of uint256 stor589;
mapping of uint8 stor590;
array of uint256 stor94029185606696244996515478518301360031312099976060629666899178486830056775142;

function supportsInterface(bytes4 arg1) {
    return bool(stor51[Mask(32, 224, arg1)])
}

function name() {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) {
    require ownerOf[arg1]
    return approved[arg1]
}

function matingPrice(uint256 arg1) {
    return matingPrice[arg1].field_256
}

function totalSupply() {
    return tokenByIndex.length
}

function isHorseInStud(uint256 arg1) {
    return bool(matingPrice[arg1].field_0)
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require arg1
    require arg2 < balanceOf[address(arg1)]
    require arg2 < tokenOfOwnerByIndex[address(arg1)]
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function studInfo(uint256 arg1) {
    return bool(matingPrice[arg1].field_0), matingPrice[arg1].field_256, matingPrice[arg1].field_512
}

function getBaseValue(uint256 arg1) {
    return baseValue[arg1].field_512
}

function isPauser(address arg1) {
    require arg1
    return bool(stor364[address(arg1)])
}

function tokenByIndex(uint256 arg1) {
    require arg1 < tokenByIndex.length
    return tokenByIndex[arg1]
}

function horseDataContract() {
    return horseDataContractAddress
}

function paused() {
    return bool(paused)
}

function ownerOf(uint256 arg1) {
    require ownerOf[arg1]
    return ownerOf[arg1]
}

function balanceOf(address arg1) {
    require arg1
    return balanceOf[address(arg1)]
}

function getHorseSex(uint256 arg1) {
    return baseValue[arg1].field_2048
}

function gender() {
    return lastHorseSex
}

function owner() {
    return owner
}

function horses(uint256 arg1) {
    mem[128] = baseValue[arg1][6].field_0
    idx = 128
    s = 0
    while baseValue[arg1][6].length + 96 > idx:
        mem[idx + 32] = baseValue[arg1][s + 6].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return baseValue[arg1].field_0, 
           baseValue[arg1].field_256,
           baseValue[arg1].field_512,
           baseValue[arg1].field_768,
           baseValue[arg1].field_1024,
           baseValue[arg1].field_1280,
           Array(len=baseValue[arg1][6].length, data=mem[128 len baseValue[arg1][6].length]),
           baseValue[arg1].field_1792,
           baseValue[arg1].field_2048,
           baseValue[arg1].field_2304
}

function symbol() {
    return symbol[0 len symbol.length]
}

function isMinter(address arg1) {
    require arg1
    return bool(stor263[address(arg1)])
}

function getTimestamp(uint256 arg1) {
    return baseValue[arg1].field_768
}

function tokenURI(uint256 arg1) {
    return tokenURI[arg1][0 len tokenURI[arg1].length]
}

function isApprovedForAll(address arg1, address arg2) {
    return bool(stor105[address(arg1)][address(arg2)])
}

function getHorseData(uint256 arg1) {
    mem[768] = baseValue[arg1][6].field_0
    idx = 768
    s = 0
    while baseValue[arg1][6].length + 736 > idx:
        mem[idx + 32] = baseValue[arg1][s + 6].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=baseValue[arg1][6].length, data=mem[768 len baseValue[arg1][6].length]), 
           baseValue[arg1].field_2048,
           baseValue[arg1].field_512,
           baseValue[arg1].field_768,
           baseValue[arg1].field_1280,
           baseValue[arg1].field_256,
           baseValue[arg1].field_1792,
           baseValue[arg1].field_2304
}

function lastHorseSex() {
    return lastHorseSex
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function __callback(bytes32 arg1, string arg2, bytes arg3) {
  stop
}

function exists(uint256 arg1) {
    return (arg1 < tokenByIndex.length)
}

function setGOPCreator(address arg1) {
    require msg.sender == owner
    stor575 = arg1
}

function setBreedingAddr(address arg1) {
    require msg.sender == owner
    stor572 = arg1
}

function setSaleAuctionAddress(address arg1) {
    require msg.sender == owner
    stor578 = arg1
}

function makeAvailableForStud(uint256 arg1) {
    require msg.sender == owner
    stor590[arg1] = 0
}

function setHorseDataAddr(address arg1) {
    require msg.sender == owner
    horseDataContractAddress = arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function renouncePauser() {
    require msg.sender
    stor364[address(msg.sender)] = 0
    emit PauserRemoved(msg.sender);
}

function renounceMinter() {
    require msg.sender
    stor263[address(msg.sender)] = 0
    emit MinterRemoved(msg.sender);
}

function unpause() {
    require msg.sender
    require stor364[address(msg.sender)]
    require paused
    paused = 0
    emit Unpaused()
}

function pause() {
    require msg.sender
    require stor364[address(msg.sender)]
    require not paused
    paused = 1
    emit Paused()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setHorseHash(uint256 arg1, string arg2) {
    require msg.sender == owner
    baseValue[arg1][6][].field_0 = Array(len=arg2.length, data=arg2[all])
}

function setBaseValue(uint256 arg1, uint256 arg2) {
    if stor572 != msg.sender:
        revert with 0, 'Not authorized'
    baseValue[arg1].field_512 = arg2
}

function addPauser(address arg1) {
    require msg.sender
    require stor364[address(msg.sender)]
    require arg1
    stor364[address(arg1)] = 1
    emit PauserAdded(arg1);
}

function addMinter(address arg1) {
    require msg.sender
    require stor263[address(msg.sender)]
    require arg1
    stor263[address(arg1)] = 1
    emit MinterAdded(arg1);
}

function setApprovalForAll(address arg1, bool arg2) {
    require not paused
    require arg1 != msg.sender
    stor105[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function isTokenApproved(address arg1, uint256 arg2) {
    require ownerOf[arg2]
    if arg1 == ownerOf[arg2]:
        return True
    require ownerOf[arg2]
    if approved[arg2] == arg1:
        return True
    return bool(stor105[stor102[arg2]][address(arg1)])
}

function approve(address arg1, uint256 arg2) {
    require not paused
    require ownerOf[arg2]
    require ownerOf[arg2] != arg1
    if ownerOf[arg2] != msg.sender:
        require stor105[stor102[arg2]][address(msg.sender)]
    approved[arg2] = arg1
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function tokenSold(uint256 arg1) {
    require ownerOf[arg1]
    if ownerOf[arg1] != msg.sender:
        require ownerOf[arg1]
        if approved[arg1] != msg.sender:
            if not stor105[stor102[arg1]][address(msg.sender)]:
                revert with 0, 'Not owner or approved'
    baseValue[arg1].field_1280++
    baseValue[arg1].field_1024 = block.timestamp
    emit LogHorseSell(arg1, baseValue[arg1].field_1280 + 1);
}

function initialize() {
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
    uint8(stor0.field_0) = 1
    uint8(stor0.field_8) = 1
    Mask(248, 0, stor0.field_8) = 0
    require stor51[0x80ac58cd00000000000000000000000000000000000000000000000000000000]
    stor51[0x780e9d6300000000000000000000000000000000000000000000000000000000] = 1
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
}

function initialize(string arg1, string arg2) {
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0, 'Contract instance has already been initialized'
    uint8(stor0.field_0) = 1
    uint8(stor0.field_8) = 1
    Mask(248, 0, stor0.field_8) = 0
    require stor51[0x80ac58cd00000000000000000000000000000000000000000000000000000000]
    name[] = Array(len=arg1.length, data=arg1[all])
    symbol[] = Array(len=arg2.length, data=arg2[all])
    stor51[0x5b5e139f00000000000000000000000000000000000000000000000000000000] = 1
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
}

function sub_d7a348d0(?) {
    require msg.sender == owner
    matingPrice[arg1].field_0 = 0
    matingPrice[arg1].field_256 = 0
    matingPrice[arg1].field_512 = 0
    require stor587.length - 1 < stor587.length
    require stor589[arg1] < stor587.length
    stor587[stor589[arg1]].field_0 = stor587[stor587.length].field_0
    stor589[stor587[stor587.length].field_0] = stor589[arg1]
    require stor587.length - 1 < stor587.length
    stor587[stor587.length].field_0 = 0
    stor587.length--
    if stor587.length > stor587.length - 1:
        idx = stor587.length - 1
        while stor587.length > idx:
            stor587[idx].field_0 = 0
            idx = idx + 1
            continue 
    stor590[arg1] = 0
}

function mintWithTokenURI(address arg1, uint256 arg2, string arg3) {
    require msg.sender
    require stor263[address(msg.sender)]
    require arg1
    require not ownerOf[arg2]
    ownerOf[arg2] = arg1
    require balanceOf[address(arg1)] + 1 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)]++
    tokenOfOwnerByIndex[address(arg1)]++
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = arg2
    stor157[arg2] = tokenOfOwnerByIndex[address(arg1)]
    emit Transfer(0, arg1, arg2);
    stor159[arg2] = tokenByIndex.length
    tokenByIndex.length++
    storCFE2[stor158.length] = arg2
    require ownerOf[arg2]
    tokenURI[arg2][] = Array(len=arg3.length, data=arg3[all])
    return 1
}

function removeFromStud(uint256 arg1) {
    require ownerOf[arg1]
    if ownerOf[arg1] != msg.sender:
        revert with 0, 'Not owner of horse'
    if not matingPrice[arg1].field_0:
        revert with 0, 'Horse is not in Stud'
    matingPrice[arg1].field_0 = 0
    matingPrice[arg1].field_256 = 0
    matingPrice[arg1].field_512 = 0
    require stor587.length - 1 < stor587.length
    require stor589[arg1] < stor587.length
    stor587[stor589[arg1]].field_0 = stor587[stor587.length].field_0
    stor589[stor587[stor587.length].field_0] = stor589[arg1]
    require stor587.length - 1 < stor587.length
    stor587[stor587.length].field_0 = 0
    stor587.length--
    if stor587.length > stor587.length - 1:
        idx = stor587.length - 1
        while stor587.length > idx:
            stor587[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function getHorsesInStud() {
    if not stor587.length:
        mem[(32 * stor587.length) + 128] = 32
        mem[(32 * stor587.length) + 160] = stor587.length
        mem[(32 * stor587.length) + 192 len floor32(stor587.length)] = mem[128 len floor32(stor587.length)]
        return memory
          from (32 * stor587.length) + 128
           len (96 * stor587.length) + 64
    mem[128] = uint256(stor587.field_0)
    idx = 128
    s = 0
    while (32 * stor587.length) + 96 > idx:
        mem[idx + 32] = stor587[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor587.length) + 192 len floor32(stor587.length)] = mem[128 len floor32(stor587.length)]
    return Array(len=stor587.length, data=mem[128 len floor32(stor587.length)], mem[(32 * stor587.length) + floor32(stor587.length) + 192 len (32 * stor587.length) - floor32(stor587.length)]), 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not paused
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        require ownerOf[arg3]
        if approved[arg3] != msg.sender:
            require stor105[stor102[arg3]][address(msg.sender)]
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
    require stor157[arg3] < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][stor157[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor157[arg3] = 0
    stor157[stor156[address(arg1)][stor156[address(arg1)]]] = stor157[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    stor157[arg3] = tokenOfOwnerByIndex[address(arg2)]
    emit Transfer(arg1, arg2, arg3);
}

function createOffspring(address arg1, string arg2, uint256 arg3, uint256 arg4) payable {
    if stor572 != msg.sender:
        revert with 0, 'Not authorized'
    require arg1
    require not ownerOf[stor158.length]
    ownerOf[stor158.length] = arg1
    require balanceOf[address(arg1)] + 1 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)]++
    tokenOfOwnerByIndex[address(arg1)]++
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = tokenByIndex.length
    stor157[stor158.length] = tokenOfOwnerByIndex[address(arg1)]
    emit Transfer(0, arg1, tokenByIndex.length);
    stor159[stor158.length] = tokenByIndex.length
    tokenByIndex.length++
    storCFE2[stor158.length] = tokenByIndex.length
    if lastHorseSex != stor569:
        lastHorseSex = stor569
        stor567 = 'Colt'
    else:
        lastHorseSex = stor570
        stor567 = 'Filly'
    baseValue[arg3].field_2304 = 'Stallion'
    baseValue[arg4].field_2304 = 'Mare'
    require ext_code.size(horseDataContractAddress)
    call horseDataContractAddress.getBloodlineFromParents(bytes32 arg1, bytes32 arg2) with:
         gas gas_remaining wei
        args baseValue[arg3].field_1792, baseValue[arg4].field_1792
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    baseValue[stor158.length].field_0 = arg1
    if baseValue[arg4].field_256 + baseValue[arg3].field_256 <= 268:
        baseValue[stor158.length].field_256 = baseValue[arg4].field_256 + baseValue[arg3].field_256
    else:
        baseValue[stor158.length].field_256 = 268
    baseValue[stor158.length].field_512 = 0
    baseValue[stor158.length].field_768 = block.timestamp
    baseValue[stor158.length].field_1024 = 0
    baseValue[stor158.length].field_1280 = 0
    baseValue[stor158.length][6][].field_0 = Array(len=arg2.length, data=arg2[all])
    baseValue[stor158.length].field_1792 = ext_call.return_data[0]
    baseValue[stor158.length].field_2048 = lastHorseSex
    baseValue[stor158.length].field_2304 = stor567
    emit LogOffspringBuy(address(arg1), block.timestamp, tokenByIndex.length);
    return tokenByIndex.length
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require not paused
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        require ownerOf[arg3]
        if approved[arg3] != msg.sender:
            require stor105[stor102[arg3]][address(msg.sender)]
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
    require stor157[arg3] < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][stor157[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor157[arg3] = 0
    stor157[stor156[address(arg1)][stor156[address(arg1)]]] = stor157[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    stor157[arg3] = tokenOfOwnerByIndex[address(arg2)]
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
    require not paused
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        require ownerOf[arg3]
        if approved[arg3] != msg.sender:
            require stor105[stor102[arg3]][address(msg.sender)]
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
    require stor157[arg3] < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][stor157[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor157[arg3] = 0
    stor157[stor156[address(arg1)][stor156[address(arg1)]]] = stor157[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    stor157[arg3] = tokenOfOwnerByIndex[address(arg2)]
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

function createAuction(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require ownerOf[arg2]
    if ownerOf[arg2] != msg.sender:
        revert with 0, 'notTokenOwner'
    require not paused
    require ownerOf[arg2]
    if ownerOf[arg2] != msg.sender:
        require ownerOf[arg2]
        if approved[arg2] != msg.sender:
            require stor105[stor102[arg2]][address(msg.sender)]
    require stor578
    require ownerOf[arg2]
    require ownerOf[arg2] == msg.sender
    if approved[arg2]:
        approved[arg2] = 0
    require ownerOf[arg2]
    require ownerOf[arg2] == msg.sender
    require 1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)]--
    ownerOf[arg2] = 0
    require 1 <= tokenOfOwnerByIndex[address(msg.sender)]
    require tokenOfOwnerByIndex[address(msg.sender)] - 1 < tokenOfOwnerByIndex[address(msg.sender)]
    require stor157[arg2] < tokenOfOwnerByIndex[address(msg.sender)]
    tokenOfOwnerByIndex[address(msg.sender)][stor157[arg2]] = tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]]
    tokenOfOwnerByIndex[address(msg.sender)]--
    if tokenOfOwnerByIndex[address(msg.sender)] > tokenOfOwnerByIndex[address(msg.sender)] - 1:
        idx = tokenOfOwnerByIndex[address(msg.sender)] - 1
        while tokenOfOwnerByIndex[address(msg.sender)] > idx:
            tokenOfOwnerByIndex[address(msg.sender)][idx] = 0
            idx = idx + 1
            continue 
    stor157[arg2] = 0
    stor157[stor156[address(msg.sender)][stor156[address(msg.sender)]]] = stor157[arg2]
    require not ownerOf[arg2]
    ownerOf[arg2] = stor578
    require balanceOf[stor578] + 1 >= balanceOf[stor578]
    balanceOf[stor578]++
    tokenOfOwnerByIndex[stor578]++
    tokenOfOwnerByIndex[stor578][tokenOfOwnerByIndex[stor578]] = arg2
    stor157[arg2] = tokenOfOwnerByIndex[stor578]
    emit Transfer(msg.sender, stor578, arg2);
    require ext_code.size(stor578)
    if ext_code.size(stor578) > 0:
        call stor578.0x150b7a02 with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), msg.sender, arg2, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
    call stor578.createAuction(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
       value msg.value wei
         gas gas_remaining wei
        args msg.sender, arg1, arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit LogAuctionCreated(ext_call.return_data[0]);
}

function createCustomHorse(address arg1, string arg2, uint256 arg3, bytes32 arg4) {
    if stor575 != msg.sender:
        revert with 0, 'Not authorized'
    require ext_code.size(horseDataContractAddress)
    call horseDataContractAddress.0x3ef5d325 with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not tokenByIndex.length:
        mem[ceil32(arg2.length) + 320] = 'https://api.zed.run/api/v1/horse'
        mem[ceil32(arg2.length) + 352 len 6] = 's/get/'
        mem[ceil32(arg2.length) + 358 len 0] = None
        mem[ceil32(arg2.length) + 389 len 1] = uint8('0')
        require arg1
        require not ownerOf[stor158.length]
        ownerOf[stor158.length] = arg1
        require balanceOf[address(arg1)] + 1 >= balanceOf[address(arg1)]
        balanceOf[address(arg1)]++
        tokenOfOwnerByIndex[address(arg1)]++
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = tokenByIndex.length
        stor157[stor158.length] = tokenOfOwnerByIndex[address(arg1)]
        emit Transfer(0, arg1, tokenByIndex.length);
        stor159[stor158.length] = tokenByIndex.length
        tokenByIndex.length++
        storCFE2[stor158.length] = tokenByIndex.length
        require ownerOf[stor158.length]
        tokenURI[stor158.length] = 79
        s = 0
        idx = ceil32(arg2.length) + 320
        while ceil32(arg2.length) + 359 > idx:
            tokenURI[stor158.length][s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 2
        while tokenURI[stor158.length].length + 31 / 32 > idx:
            tokenURI[stor158.length][idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = tokenByIndex.length
        while idx:
            s = s + 1
            idx = idx / 10
            continue 
        if s:
            mem[ceil32(arg2.length) + 256 len 32 * s] = code.data[24369 len 32 * s]
        t = s - 1
        idx = tokenByIndex.length
        while idx:
            require t < s
            mem[ceil32(arg2.length) + t + 256 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(arg2.length) + ceil32(s) + 288] = 'https://api.zed.run/api/v1/horse'
        mem[ceil32(arg2.length) + ceil32(s) + 326 len floor32(s)] = mem[ceil32(arg2.length) + 256 len floor32(s)]
        mem[ceil32(arg2.length) + ceil32(s) + floor32(s) + -(s % 32) + 358 len s % 32] = mem[ceil32(arg2.length) + floor32(s) + -(s % 32) + 288 len s % 32]
        require arg1
        require not ownerOf[stor158.length]
        ownerOf[stor158.length] = arg1
        require balanceOf[address(arg1)] + 1 >= balanceOf[address(arg1)]
        balanceOf[address(arg1)]++
        tokenOfOwnerByIndex[address(arg1)]++
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = tokenByIndex.length
        stor157[stor158.length] = tokenOfOwnerByIndex[address(arg1)]
        emit Transfer(0, arg1, tokenByIndex.length);
        stor159[stor158.length] = tokenByIndex.length
        tokenByIndex.length++
        storCFE2[stor158.length] = tokenByIndex.length
        require ownerOf[stor158.length]
        tokenURI[stor158.length][] = Array(len=s + 38, data='https://api.zed.run/api/v1/horse', 's/get/', mem[ceil32(arg2.length) + 256 len floor32(s)], mem[ceil32(arg2.length) + ceil32(s) + floor32(s) + 326 len s % 32])
    if arg3 < 1:
        revert with 0, 'Gen out of bounds'
    if arg3 > 10:
        revert with 0, 'Gen out of bounds'
    if 38000 < stor571:
        revert with 0, 'GOP cap met'
    require ext_code.size(horseDataContractAddress)
    call horseDataContractAddress.getBloodline(uint256 arg1) with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    baseValue[stor158.length].field_0 = arg1
    baseValue[stor158.length].field_256 = arg3
    baseValue[stor158.length].field_512 = ext_call.return_data[0]
    baseValue[stor158.length].field_768 = block.timestamp
    baseValue[stor158.length].field_1024 = 0
    baseValue[stor158.length].field_1280 = 0
    baseValue[stor158.length][6][].field_0 = Array(len=arg2.length, data=arg2[all])
    baseValue[stor158.length].field_1792 = ext_call.return_data[0]
    if arg4 != 'Male':
        baseValue[stor158.length].field_2048 = stor570
        baseValue[stor158.length].field_2304 = 'Filly'
    else:
        baseValue[stor158.length].field_2048 = stor569
        baseValue[stor158.length].field_2304 = 'Colt'
    stor571++
    emit LogGOPCreated(address(arg1), block.timestamp, tokenByIndex.length);
    return tokenByIndex.length
}

function getQueryPrice() {
    if not stor579:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor579 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
            bool(stor581.length) = 0
            stor581.length.field_1 = 11
            stor581.length.field_8 = 'eth_mainnet' / 256
            idx = 0
            while stor581.length + 31 / 32 > idx:
                stor581[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor579 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                bool(stor581.length) = 0
                stor581.length.field_1 = 12
                stor581.length.field_8 = 'eth_ropsten3' / 256
                idx = 0
                while stor581.length + 31 / 32 > idx:
                    stor581[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                    stor579 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                    bool(stor581.length) = 0
                    stor581.length.field_1 = 9
                    stor581.length.field_8 = 'eth_kovan' / 256
                    idx = 0
                    while stor581.length + 31 / 32 > idx:
                        stor581[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                        if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                            stor579 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                        else:
                            if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                stor579 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                            else:
                                if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                    stor579 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                    else:
                        stor579 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                        bool(stor581.length) = 0
                        stor581.length.field_1 = 11
                        stor581.length.field_8 = 'eth_rinkeby' / 256
                        idx = 0
                        while stor581.length + 31 / 32 > idx:
                            stor581[idx].field_0 = 0
                            idx = idx + 1
                            continue 
        require ext_code.size(stor579)
    else:
        if not ext_code.size(stor579):
            if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                stor579 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                bool(stor581.length) = 0
                stor581.length.field_1 = 11
                stor581.length.field_8 = 'eth_mainnet' / 256
                idx = 0
                while stor581.length + 31 / 32 > idx:
                    stor581[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                    stor579 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                    bool(stor581.length) = 0
                    stor581.length.field_1 = 12
                    stor581.length.field_8 = 'eth_ropsten3' / 256
                    idx = 0
                    while stor581.length + 31 / 32 > idx:
                        stor581[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                        stor579 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                        bool(stor581.length) = 0
                        stor581.length.field_1 = 9
                        stor581.length.field_8 = 'eth_kovan' / 256
                        idx = 0
                        while stor581.length + 31 / 32 > idx:
                            stor581[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    else:
                        if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                            if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                                stor579 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                            else:
                                if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                    stor579 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                                else:
                                    if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                        stor579 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                        else:
                            stor579 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                            bool(stor581.length) = 0
                            stor581.length.field_1 = 11
                            stor581.length.field_8 = 'eth_rinkeby' / 256
                            idx = 0
                            while stor581.length + 31 / 32 > idx:
                                stor581[idx].field_0 = 0
                                idx = idx + 1
                                continue 
            require ext_code.size(stor579)
    call stor579.getAddress() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != address(stor580):
        require ext_code.size(stor579)
        call stor579.getAddress() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        uint256(stor580) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor580))
    require ext_code.size(address(stor580))
    call address(stor580).getPrice(string arg1) with:
         gas gas_remaining wei
        args 'URL'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function __callback(bytes32 arg1, string arg2) {
    mem[64] = ceil32(arg2.length) + 128
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    if not stor579:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor579 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
            mem[64] = ceil32(arg2.length) + 192
            mem[ceil32(arg2.length) + 128] = 11
            mem[ceil32(arg2.length) + 160] = 'eth_mainnet'
            mem[0] = 581
            bool(stor581.length) = 0
            stor581.length.field_1 = 11
            stor581.length.field_8 = 'eth_mainnet' / 256
            idx = 0
            while stor581.length + 31 / 32 > idx:
                stor581[idx].field_0 = 0
                idx = idx + 1
                continue 
            require ext_code.size(stor579)
            call stor579.getAddress() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != address(stor580):
                require ext_code.size(stor579)
                call stor579.getAddress() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor580) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor580))
            require ext_code.size(address(stor580))
            call address(stor580).cbAddress() with:
                 gas gas_remaining wei
            mem[ceil32(arg2.length) + 192] = ext_call.return_data[0]
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor579 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                mem[64] = ceil32(arg2.length) + 192
                mem[ceil32(arg2.length) + 128] = 12
                mem[ceil32(arg2.length) + 160] = 'eth_ropsten3'
                mem[0] = 581
                bool(stor581.length) = 0
                stor581.length.field_1 = 12
                stor581.length.field_8 = 'eth_ropsten3' / 256
                idx = 0
                while stor581.length + 31 / 32 > idx:
                    stor581[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                require ext_code.size(stor579)
                call stor579.getAddress() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != address(stor580):
                    require ext_code.size(stor579)
                    call stor579.getAddress() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    uint256(stor580) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor580))
                require ext_code.size(address(stor580))
                call address(stor580).cbAddress() with:
                     gas gas_remaining wei
                mem[ceil32(arg2.length) + 192] = ext_call.return_data[0]
            else:
                if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                    stor579 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                    mem[64] = ceil32(arg2.length) + 192
                    mem[ceil32(arg2.length) + 128] = 9
                    mem[ceil32(arg2.length) + 160] = 'eth_kovan'
                    mem[0] = 581
                    bool(stor581.length) = 0
                    stor581.length.field_1 = 9
                    stor581.length.field_8 = 'eth_kovan' / 256
                    idx = 0
                    while stor581.length + 31 / 32 > idx:
                        stor581[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    require ext_code.size(stor579)
                    call stor579.getAddress() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[12 len 20] != address(stor580):
                        require ext_code.size(stor579)
                        call stor579.getAddress() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        uint256(stor580) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor580))
                    require ext_code.size(address(stor580))
                    call address(stor580).cbAddress() with:
                         gas gas_remaining wei
                    mem[ceil32(arg2.length) + 192] = ext_call.return_data[0]
                else:
                    if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                        if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                            stor579 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                        else:
                            if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                stor579 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                            else:
                                if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                    stor579 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                        require ext_code.size(stor579)
                        call stor579.getAddress() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[12 len 20] != address(stor580):
                            require ext_code.size(stor579)
                            call stor579.getAddress() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            uint256(stor580) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor580))
                        require ext_code.size(address(stor580))
                        call address(stor580).cbAddress() with:
                             gas gas_remaining wei
                        mem[ceil32(arg2.length) + 128] = ext_call.return_data[0]
                    else:
                        stor579 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                        mem[64] = ceil32(arg2.length) + 192
                        mem[ceil32(arg2.length) + 128] = 11
                        mem[ceil32(arg2.length) + 160] = 'eth_rinkeby'
                        mem[0] = 581
                        bool(stor581.length) = 0
                        stor581.length.field_1 = 11
                        stor581.length.field_8 = 'eth_rinkeby' / 256
                        idx = 0
                        while stor581.length + 31 / 32 > idx:
                            stor581[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(stor579)
                        call stor579.getAddress() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[12 len 20] != address(stor580):
                            require ext_code.size(stor579)
                            call stor579.getAddress() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            uint256(stor580) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor580))
                        require ext_code.size(address(stor580))
                        call address(stor580).cbAddress() with:
                             gas gas_remaining wei
                        mem[ceil32(arg2.length) + 192] = ext_call.return_data[0]
    else:
        if ext_code.size(stor579):
            call stor579.getAddress() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != address(stor580):
                require ext_code.size(stor579)
                call stor579.getAddress() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor580) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor580))
            require ext_code.size(address(stor580))
            call address(stor580).cbAddress() with:
                 gas gas_remaining wei
            mem[ceil32(arg2.length) + 128] = ext_call.return_data[0]
        else:
            if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                stor579 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                mem[64] = ceil32(arg2.length) + 192
                mem[ceil32(arg2.length) + 128] = 11
                mem[ceil32(arg2.length) + 160] = 'eth_mainnet'
                mem[0] = 581
                bool(stor581.length) = 0
                stor581.length.field_1 = 11
                stor581.length.field_8 = 'eth_mainnet' / 256
                idx = 0
                while stor581.length + 31 / 32 > idx:
                    stor581[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                require ext_code.size(stor579)
                call stor579.getAddress() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != address(stor580):
                    require ext_code.size(stor579)
                    call stor579.getAddress() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    uint256(stor580) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor580))
                require ext_code.size(address(stor580))
                call address(stor580).cbAddress() with:
                     gas gas_remaining wei
                mem[ceil32(arg2.length) + 192] = ext_call.return_data[0]
            else:
                if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                    stor579 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                    mem[64] = ceil32(arg2.length) + 192
                    mem[ceil32(arg2.length) + 128] = 12
                    mem[ceil32(arg2.length) + 160] = 'eth_ropsten3'
                    mem[0] = 581
                    bool(stor581.length) = 0
                    stor581.length.field_1 = 12
                    stor581.length.field_8 = 'eth_ropsten3' / 256
                    idx = 0
                    while stor581.length + 31 / 32 > idx:
                        stor581[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    require ext_code.size(stor579)
                    call stor579.getAddress() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[12 len 20] != address(stor580):
                        require ext_code.size(stor579)
                        call stor579.getAddress() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        uint256(stor580) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor580))
                    require ext_code.size(address(stor580))
                    call address(stor580).cbAddress() with:
                         gas gas_remaining wei
                    mem[ceil32(arg2.length) + 192] = ext_call.return_data[0]
                else:
                    if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                        stor579 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                        mem[64] = ceil32(arg2.length) + 192
                        mem[ceil32(arg2.length) + 128] = 9
                        mem[ceil32(arg2.length) + 160] = 'eth_kovan'
                        mem[0] = 581
                        bool(stor581.length) = 0
                        stor581.length.field_1 = 9
                        stor581.length.field_8 = 'eth_kovan' / 256
                        idx = 0
                        while stor581.length + 31 / 32 > idx:
                            stor581[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(stor579)
                        call stor579.getAddress() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[12 len 20] != address(stor580):
                            require ext_code.size(stor579)
                            call stor579.getAddress() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            uint256(stor580) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor580))
                        require ext_code.size(address(stor580))
                        call address(stor580).cbAddress() with:
                             gas gas_remaining wei
                        mem[ceil32(arg2.length) + 192] = ext_call.return_data[0]
                    else:
                        if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                            if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                                stor579 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                            else:
                                if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                    stor579 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                                else:
                                    if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                        stor579 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                            require ext_code.size(stor579)
                            call stor579.getAddress() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[12 len 20] != address(stor580):
                                require ext_code.size(stor579)
                                call stor579.getAddress() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                uint256(stor580) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor580))
                            require ext_code.size(address(stor580))
                            call address(stor580).cbAddress() with:
                                 gas gas_remaining wei
                            mem[ceil32(arg2.length) + 128] = ext_call.return_data[0]
                        else:
                            stor579 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                            mem[64] = ceil32(arg2.length) + 192
                            mem[ceil32(arg2.length) + 128] = 11
                            mem[ceil32(arg2.length) + 160] = 'eth_rinkeby'
                            mem[0] = 581
                            bool(stor581.length) = 0
                            stor581.length.field_1 = 11
                            stor581.length.field_8 = 'eth_rinkeby' / 256
                            idx = 0
                            while stor581.length + 31 / 32 > idx:
                                stor581[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor579)
                            call stor579.getAddress() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[12 len 20] != address(stor580):
                                require ext_code.size(stor579)
                                call stor579.getAddress() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                uint256(stor580) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor580))
                            require ext_code.size(address(stor580))
                            call address(stor580).cbAddress() with:
                                 gas gas_remaining wei
                            mem[ceil32(arg2.length) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Not oraclize'
    idx = 0
    s = 0
    while idx < arg2.length:
        require idx < arg2.length
        require idx < arg2.length
        if Mask(8, 248, mem[idx + 128]) >= '0':
            if Mask(8, 248, mem[idx + 128]) <= '9':
                require idx < arg2.length
                idx = idx + 1
                s = (10 * s) + mem[idx + 128 len 1] - 48
                continue 
        idx = idx + 1
        s = s
        continue 
    matingPrice[s].field_0 = 0
    matingPrice[s].field_256 = 0
    matingPrice[s].field_512 = 0
    require stor587.length - 1 < stor587.length
    require stor589[s] < stor587.length
    stor587[stor589[s]].field_0 = stor587[stor587.length].field_0
    stor589[stor587[stor587.length].field_0] = stor589[s]
    require stor587.length - 1 < stor587.length
    stor587[stor587.length].field_0 = 0
    stor587.length--
    if stor587.length > stor587.length - 1:
        idx = stor587.length - 1
        while stor587.length > idx:
            stor587[idx].field_0 = 0
            idx = idx + 1
            continue 
    stor590[s] = 0
}



}
