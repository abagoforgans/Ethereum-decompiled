contract main {




// =====================  Runtime code  =====================


const name = 'CryptoKitties'

const symbol = 'CK'


address ceoAddress;
address cfoAddress;
uint8 stor2; offset 160
uint128 stor2; offset 160
address cooAddress;
array of uint32 cooldowns;
uint256 secondsPerBlock;
array of struct stor6;
mapping of address kittyIndexToOwner;
mapping of uint256 balanceOf;
mapping of address kittyIndexToApproved;
mapping of address sireAllowedTo;
address saleAuctionAddress;
address siringAuctionAddress;
address erc721MetadataAddress;
uint256 autoBirthFee;
uint256 pregnantKitties;
address geneScienceAddress;

function cfoAddress() {
    return cfoAddress
}

function ceoAddress() {
    return ceoAddress
}

function pregnantKitties() {
    return pregnantKitties
}

function siringAuction() {
    return siringAuctionAddress
}

function sireAllowedToAddress(uint256 arg1) {
    return sireAllowedTo[arg1]
}

function kittyIndexToApproved(uint256 arg1) {
    return kittyIndexToApproved[arg1]
}

function paused() {
    return bool(uint8(stor2.field_160))
}

function ownerOf(uint256 arg1) {
    require kittyIndexToOwner[arg1]
    return kittyIndexToOwner[arg1]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function secondsPerBlock() {
    return secondsPerBlock
}

function cooldowns(uint256 arg1) {
    require arg1 < 14
    return cooldowns[uint8(arg1)]
}

function kittyIndexToOwner(uint256 arg1) {
    return kittyIndexToOwner[arg1]
}

function cooAddress() {
    return cooAddress
}

function autoBirthFee() {
    return autoBirthFee
}

function erc721Metadata() {
    return erc721MetadataAddress
}

function saleAuction() {
    return saleAuctionAddress
}

function geneScience() {
    return geneScienceAddress
}

function _fallback() payable {
    revert
}

function totalSupply() {
    return (stor6.length - 1)
}

function setAutoBirthFee(uint256 arg1) {
    require msg.sender == cooAddress
    autoBirthFee = arg1
}

function setCEO(address arg1) {
    require msg.sender == ceoAddress
    require arg1
    ceoAddress = arg1
}

function setCOO(address arg1) {
    require msg.sender == ceoAddress
    require arg1
    cooAddress = arg1
}

function setCFO(address arg1) {
    require msg.sender == ceoAddress
    require arg1
    cfoAddress = arg1
}

function setMetadataAddress(address arg1) {
    require msg.sender == ceoAddress
    erc721MetadataAddress = arg1
}

function isPregnant(uint256 arg1) {
    require arg1 > 0
    require arg1 < stor6.length
    return not not stor6[arg1].field_448
}

function unpause() {
    require msg.sender == ceoAddress
    require uint8(stor2.field_160)
    Mask(96, 0, stor2.field_160) = 0
}

function approveSiring(address arg1, uint256 arg2) {
    require not uint8(stor2.field_160)
    require kittyIndexToOwner[arg2] == msg.sender
    sireAllowedTo[arg2] = arg1
}

function pause() {
    if cooAddress != msg.sender:
        if ceoAddress != msg.sender:
            require msg.sender == cfoAddress
    require not uint8(stor2.field_160)
    Mask(96, 0, stor2.field_160) = 1
}

function isReadyToBreed(uint256 arg1) {
    require arg1 > 0
    require arg1 < stor6.length
    if stor6[arg1].field_448:
        return not stor6[arg1].field_256
    return stor6[arg1].field_256 <= uint64(block.number)
}

function setSecondsPerBlock(uint256 arg1) {
    if cooAddress != msg.sender:
        if ceoAddress != msg.sender:
            require msg.sender == cfoAddress
    require arg1 < cooldowns.length
    secondsPerBlock = arg1
}

function approve(address arg1, uint256 arg2) {
    require not uint8(stor2.field_160)
    require kittyIndexToOwner[arg2] == msg.sender
    kittyIndexToApproved[arg2] = arg1
    emit Approval(msg.sender, address(arg1), arg2);
}

function setGeneScienceAddress(address arg1) {
    require msg.sender == ceoAddress
    require ext_code.size(arg1)
    call arg1.isGeneScience() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    geneScienceAddress = arg1
}

function setSaleAuctionAddress(address arg1) {
    require msg.sender == ceoAddress
    require ext_code.size(arg1)
    call arg1.isSaleClockAuction() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    saleAuctionAddress = arg1
}

function setSiringAuctionAddress(address arg1) {
    require msg.sender == ceoAddress
    require ext_code.size(arg1)
    call arg1.isSiringClockAuction() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    siringAuctionAddress = arg1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor2.field_160)
    require arg2
    require arg2 != this.address
    require kittyIndexToApproved[arg3] == msg.sender
    require kittyIndexToOwner[arg3] == arg1
    balanceOf[address(arg2)]++
    kittyIndexToOwner[arg3] = arg2
    if arg1:
        balanceOf[address(arg1)]--
        sireAllowedTo[arg3] = 0
        kittyIndexToApproved[arg3] = 0
    emit Transfer(address(arg1), address(arg2), arg3);
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor2.field_160)
    require arg1
    require arg1 != this.address
    require arg1 != saleAuctionAddress
    require arg1 != siringAuctionAddress
    require kittyIndexToOwner[arg2] == msg.sender
    balanceOf[address(arg1)]++
    kittyIndexToOwner[arg2] = arg1
    if msg.sender:
        balanceOf[address(msg.sender)]--
        sireAllowedTo[arg2] = 0
        kittyIndexToApproved[arg2] = 0
    emit Transfer(msg.sender, address(arg1), arg2);
}

function supportsInterface(bytes4 arg1) {
    if Mask(32, 224, arg1) == Mask(32, 224, sha3('supportsInterface(bytes4)')):
        return True
    return (Mask(32, 224, arg1) == Mask(32, 224, sha3('name()') xor sha3('symbol()') xor sha3('totalSupply()') xor sha3('balanceOf(address)') xor sha3('ownerOf(uint256)') xor sha3('approve(address,uint256)') xor sha3('transfer(address,uint256)') xor sha3('transferFrom(address,address,uin', 't256)') xor sha3('tokensOfOwner(address)') xor sha3('tokenMetadata(uint256,string)')))
}

function withdrawAuctionBalances() {
    if cooAddress != msg.sender:
        if ceoAddress != msg.sender:
            require msg.sender == cfoAddress
    require ext_code.size(saleAuctionAddress)
    call saleAuctionAddress.withdrawBalance() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(siringAuctionAddress)
    call siringAuctionAddress.withdrawBalance() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function createSaleAuction(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require not uint8(stor2.field_160)
    require kittyIndexToOwner[arg1] == msg.sender
    require arg1 > 0
    require arg1 < stor6.length
    require not stor6[arg1].field_448
    kittyIndexToApproved[arg1] = saleAuctionAddress
    require ext_code.size(saleAuctionAddress)
    call saleAuctionAddress.createAuction(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
         gas gas_remaining wei
        args 0, uint32(arg1), arg2, arg3, arg4, address(msg.sender)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function createSiringAuction(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require not uint8(stor2.field_160)
    require kittyIndexToOwner[arg1] == msg.sender
    require arg1 > 0
    require arg1 < stor6.length
    require not stor6[arg1].field_448
    require stor6[arg1].field_320 <= uint64(block.number)
    kittyIndexToApproved[arg1] = siringAuctionAddress
    require ext_code.size(siringAuctionAddress)
    call siringAuctionAddress.createAuction(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
         gas gas_remaining wei
        args arg1, arg2, arg3, arg4, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function tokensOfOwner(address arg1) {
    if not balanceOf[address(arg1)]:
        return ''
    if balanceOf[address(arg1)]:
        mem[128 len 32 * balanceOf[address(arg1)]] = code.data[18225 len 32 * balanceOf[address(arg1)]]
    idx = 1
    s = 0
    while idx <= stor6.length - 1:
        mem[0] = idx
        mem[32] = 7
        if kittyIndexToOwner[idx] != arg1:
            idx = idx + 1
            s = s
            continue 
        require s < balanceOf[address(arg1)]
        mem[(32 * s) + 128] = idx
        idx = idx + 1
        s = s + 1
        continue 
    mem[(32 * balanceOf[address(arg1)]) + 192 len floor32(balanceOf[address(arg1)])] = mem[128 len floor32(balanceOf[address(arg1)])]
    return Array(len=balanceOf[address(arg1)], data=mem[128 len floor32(balanceOf[address(arg1)])], mem[(32 * balanceOf[address(arg1)]) + floor32(balanceOf[address(arg1)]) + 192 len (32 * balanceOf[address(arg1)]) - floor32(balanceOf[address(arg1)])]), 
}

function canBreedWith(uint256 arg1, uint256 arg2) {
    require arg1 > 0
    require arg2 > 0
    require arg1 < stor6.length
    require arg2 < stor6.length
    if arg1 == arg2:
        return 0
    if stor6[arg1].field_384 == arg2:
        return 0
    if stor6[arg1].field_416 == arg2:
        return 0
    if stor6[arg2].field_384 == arg1:
        return 0
    if stor6[arg2].field_416 == arg1:
        return 0
    if stor6[arg2].field_384:
        if stor6[arg1].field_384:
            if stor6[arg2].field_384 == stor6[arg1].field_384:
                return 0
            if stor6[arg2].field_384 == stor6[arg1].field_416:
                return 0
            if stor6[arg2].field_416 == stor6[arg1].field_384:
                return 0
            if stor6[arg2].field_416 == stor6[arg1].field_416:
                return 0
    if kittyIndexToOwner[arg1] == kittyIndexToOwner[arg2]:
        return True
    return (sireAllowedTo[arg2] == kittyIndexToOwner[arg1])
}

function tokenMetadata(uint256 arg1, string arg2) {
    require erc721MetadataAddress
    mem[324 len arg2.length] = arg2[all]
    require ext_code.size(erc721MetadataAddress)
    call erc721MetadataAddress.getMetadata(uint256 arg1, string arg2) with:
         gas gas_remaining wei
        args arg1, Array(len=arg2.length, data=arg2[all])
    mem[224 len 160] = ext_call.return_data[0 len 160]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    mem[ceil32(return_data.size) + 224] = ext_call.return_data[128]
    if ext_call.return_data[128]:
        mem[ceil32(return_data.size) + 256 len 32 * ext_call.return_data[128]] = code.data[18225 len 32 * ext_call.return_data[128]]
    mem[ceil32(return_data.size) + 256 len floor32(ext_call.return_data[128])] = mem[224 len floor32(ext_call.return_data[128])]
    mem[ceil32(return_data.size) + floor32(ext_call.return_data[128]) + -(ext_call.return_data[128] % 32) + 288 len ext_call.return_data[128] % 32] = mem[floor32(ext_call.return_data[128]) + -(ext_call.return_data[128] % 32) + 256 len ext_call.return_data[128] % 32]
    return Array(len=ext_call.return_data[128], data=mem[ceil32(return_data.size) + 256 len ext_call.return_data[128]])
}

function breedWithAuto(uint256 arg1, uint256 arg2) payable {
    require not uint8(stor2.field_160)
    require msg.value >= autoBirthFee
    require kittyIndexToOwner[arg1] == msg.sender
    if kittyIndexToOwner[arg1] != kittyIndexToOwner[arg2]:
        require sireAllowedTo[arg2] == kittyIndexToOwner[arg1]
    require arg1 < stor6.length
    require not stor6[arg1].field_448
    require stor6[arg1].field_320 <= uint64(block.number)
    require arg2 < stor6.length
    require not stor6[arg2].field_448
    require stor6[arg2].field_320 <= uint64(block.number)
    require arg1 != arg2
    require stor6[arg1].field_384 != arg2
    require stor6[arg1].field_416 != arg2
    require stor6[arg2].field_384 != arg1
    require stor6[arg2].field_416 != arg1
    if stor6[arg2].field_384:
        if stor6[arg1].field_384:
            require stor6[arg2].field_384 != stor6[arg1].field_384
            require stor6[arg2].field_384 != stor6[arg1].field_416
            require stor6[arg2].field_416 != stor6[arg1].field_384
            require stor6[arg2].field_416 != stor6[arg1].field_416
    require arg2 < stor6.length
    require arg1 < stor6.length
    stor6[arg1].field_448 = uint32(arg2)
    require stor6[arg2].field_480 < 14
    require secondsPerBlock
    stor6[arg2].field_320 = uint64((cooldowns[stor6[arg2].field_480] / secondsPerBlock) + block.number)
    if stor6[arg2].field_480 < 13:
        stor6[arg2].field_480 = uint16(stor6[arg2].field_480 + 1)
    require stor6[arg1].field_480 < 14
    require secondsPerBlock
    stor6[arg1].field_320 = uint64((cooldowns[stor6[arg1].field_480] / secondsPerBlock) + block.number)
    if stor6[arg1].field_480 < 13:
        stor6[arg1].field_480 = uint16(stor6[arg1].field_480 + 1)
    sireAllowedTo[arg1] = 0
    sireAllowedTo[arg2] = 0
    pregnantKitties++
    emit Pregnant(kittyIndexToOwner[arg1], arg1, arg2, stor6[arg1].field_320);
}

function bidOnSiringAuction(uint256 arg1, uint256 arg2) payable {
    require not uint8(stor2.field_160)
    require kittyIndexToOwner[arg2] == msg.sender
    require arg2 > 0
    require arg2 < stor6.length
    require not stor6[arg2].field_448
    require stor6[arg2].field_320 <= uint64(block.number)
    require arg2 < stor6.length
    require arg1 < stor6.length
    require arg2 != arg1
    require stor6[arg2].field_384 != arg1
    require stor6[arg2].field_416 != arg1
    require stor6[arg1].field_384 != arg2
    require stor6[arg1].field_416 != arg2
    if stor6[arg1].field_384:
        if stor6[arg2].field_384:
            require stor6[arg1].field_384 != stor6[arg2].field_384
            require stor6[arg1].field_384 != stor6[arg2].field_416
            require stor6[arg1].field_416 != stor6[arg2].field_384
            require stor6[arg1].field_416 != stor6[arg2].field_416
    require ext_code.size(siringAuctionAddress)
    call siringAuctionAddress.getCurrentPrice(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.value >= ext_call.return_data[0] + autoBirthFee
    require ext_code.size(siringAuctionAddress)
    call siringAuctionAddress.bid(uint256 arg1) with:
       value msg.value - autoBirthFee wei
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require uint32(arg1) < stor6.length
    require uint32(arg2) < stor6.length
    stor6[2 * uint32(arg2)].field_448 = uint32(arg1)
    require stor6[2 * uint32(arg1)].field_480 < 14
    require secondsPerBlock
    stor6[2 * uint32(arg1)].field_320 = uint64((cooldowns[stor6[2 * uint32(arg1)].field_480] / secondsPerBlock) + block.number)
    if stor6[2 * uint32(arg1)].field_480 < 13:
        stor6[2 * uint32(arg1)].field_480 = uint16(stor6[2 * uint32(arg1)].field_480 + 1)
    require stor6[2 * uint32(arg2)].field_480 < 14
    require secondsPerBlock
    stor6[2 * uint32(arg2)].field_320 = uint64((cooldowns[stor6[2 * uint32(arg2)].field_480] / secondsPerBlock) + block.number)
    if stor6[2 * uint32(arg2)].field_480 < 13:
        stor6[2 * uint32(arg2)].field_480 = uint16(stor6[2 * uint32(arg2)].field_480 + 1)
    sireAllowedTo[arg2 << 224] = 0
    sireAllowedTo[arg1 << 224] = 0
    pregnantKitties++
    emit Pregnant(kittyIndexToOwner[arg2 << 224], arg2 << 224, arg1 << 224, stor6[2 * uint32(arg2)].field_320);
}

function giveBirth(uint256 arg1) {
    require not uint8(stor2.field_160)
    require arg1 < stor6.length
    require stor6[arg1].field_256
    require stor6[arg1].field_448
    require stor6[arg1].field_320 <= uint64(block.number)
    require stor6[arg1].field_448 < stor6.length
    require ext_code.size(geneScienceAddress)
    call geneScienceAddress.mixGenes(uint256 arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args stor6[arg1].field_0, stor6[stor6[arg1].field_448].field_0, uint64(stor6[arg1].field_320 - 1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 == uint32(arg1)
    require stor6[arg1].field_448 == stor6[arg1].field_448
    if stor6[stor6[arg1].field_448].field_496 <= stor6[arg1].field_496:
        require uint16(stor6[arg1].field_496 + 1) == uint16(stor6[arg1].field_496 + 1)
        stor6.length++
        stor6[stor6.length].field_0 = ext_call.return_data[0]
        stor6[stor6.length].field_256 = uint64(block.timestamp)
        stor6[stor6.length].field_320 = 0
        stor6[stor6.length].field_512 = 0
        stor6[stor6.length].field_384 = uint32(arg1)
        stor6[stor6.length].field_416 = stor6[arg1].field_448
        stor6[stor6.length].field_448 = 0
        stor6[stor6.length].field_512 = 0
        if uint16(stor6[arg1].field_496 + 1) / 2 <= 13:
            stor6[stor6.length].field_480 = uint16(stor6[arg1].field_496 + 1) / 2
            stor6[stor6.length].field_495 = 0
        else:
            stor6[stor6.length].field_480 = 13
            stor6[stor6.length].field_488 = 0
        stor6[stor6.length].field_496 = uint16(stor6[arg1].field_496 + 1)
    else:
        require uint16(stor6[stor6[arg1].field_448].field_496 + 1) == uint16(stor6[stor6[arg1].field_448].field_496 + 1)
        stor6.length++
        stor6[stor6.length].field_0 = ext_call.return_data[0]
        stor6[stor6.length].field_256 = uint64(block.timestamp)
        stor6[stor6.length].field_320 = 0
        stor6[stor6.length].field_512 = 0
        stor6[stor6.length].field_384 = uint32(arg1)
        stor6[stor6.length].field_416 = stor6[arg1].field_448
        stor6[stor6.length].field_448 = 0
        stor6[stor6.length].field_512 = 0
        if uint16(stor6[stor6[arg1].field_448].field_496 + 1) / 2 <= 13:
            stor6[stor6.length].field_480 = uint16(stor6[stor6[arg1].field_448].field_496 + 1) / 2
            stor6[stor6.length].field_495 = 0
        else:
            stor6[stor6.length].field_480 = 13
            stor6[stor6.length].field_488 = 0
        stor6[stor6.length].field_496 = uint16(stor6[stor6[arg1].field_448].field_496 + 1)
    require stor6.length == uint32(stor6.length)
    emit Birth(kittyIndexToOwner[arg1], stor6.length, arg1 << 224, stor6[arg1].field_256, ext_call.return_data[0]);
    balanceOf[stor7[arg1]]++
    kittyIndexToOwner[stor6.length] = kittyIndexToOwner[arg1]
    emit Transfer(0, kittyIndexToOwner[arg1], stor6.length);
    stor6[arg1].field_448 = 0
    pregnantKitties--
    call msg.sender with:
       value autoBirthFee wei
         gas 2300 * is_zero(value) wei
    return stor6.length
}



}
