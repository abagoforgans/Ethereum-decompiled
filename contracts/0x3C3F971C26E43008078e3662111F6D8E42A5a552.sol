contract main {




// =====================  Runtime code  =====================


#
#  - sub_c0e9b0c2(?)
#
const name = 'MonsterBit'

const sub_3304cbff(?) = 10^17

const symbol = 'MB'

const GEN0_STARTING_PRICE = 10^18

const GEN0_AUCTION_DURATION = (720 * 24 * 3600)

const GEN0_CREATION_LIMIT = 45000

const PROMO_CREATION_LIMIT = 1000


address ceoAddress;
address cfoAddress;
address cooAddress;
uint8 stor3; offset 160
address stor3;
address saleAuctionAddress;
address siringAuctionAddress;
address sub_e4c73abeAddress;
address sub_a6531d34Address;
address sub_d75b855aAddress;
address sub_e06f96e2Address;
address geneScienceAddress;
uint256 autoBirthFee;
uint256 sub_1caa79f9;
uint256 promoCreatedCount;
uint256 gen0CreatedCount;
address newContractAddress;

function cfoAddress() {
    return cfoAddress
}

function promoCreatedCount() {
    return promoCreatedCount
}

function ceoAddress() {
    return ceoAddress
}

function sub_1caa79f9(?) {
    return sub_1caa79f9
}

function siringAuction() {
    return siringAuctionAddress
}

function paused() {
    return bool(uint8(stor3.field_160))
}

function newContractAddress() {
    return newContractAddress
}

function sub_a6531d34(?) {
    return sub_a6531d34Address
}

function cooAddress() {
    return cooAddress
}

function autoBirthFee() {
    return autoBirthFee
}

function sub_d75b855a(?) {
    return sub_d75b855aAddress
}

function sub_e06f96e2(?) {
    return sub_e06f96e2Address
}

function sub_e4c73abe(?) {
    return sub_e4c73abeAddress
}

function saleAuction() {
    return saleAuctionAddress
}

function gen0CreatedCount() {
    return gen0CreatedCount
}

function geneScience() {
    return geneScienceAddress
}

function sub_562340cf(?) {
    require msg.sender == cooAddress
    sub_1caa79f9 = arg1
}

function setAutoBirthFee(uint256 arg1) {
    require msg.sender == cooAddress
    autoBirthFee = arg1
}

function setCEO(address arg1) {
    if ceoAddress != msg.sender:
        require msg.sender == address(stor3.field_0)
    require arg1
    ceoAddress = arg1
}

function setCOO(address arg1) {
    if ceoAddress != msg.sender:
        require msg.sender == address(stor3.field_0)
    require arg1
    cooAddress = arg1
}

function setCFO(address arg1) {
    if ceoAddress != msg.sender:
        require msg.sender == address(stor3.field_0)
    require arg1
    cfoAddress = arg1
}

function setNewAddress(address arg1) {
    if ceoAddress != msg.sender:
        require msg.sender == address(stor3.field_0)
    require uint8(stor3.field_160)
    newContractAddress = arg1
    emit ContractUpgrade(arg1);
}

function _fallback() payable {
    if saleAuctionAddress != msg.sender:
        if siringAuctionAddress != msg.sender:
            if sub_e4c73abeAddress != msg.sender:
                require msg.sender == sub_a6531d34Address
}

function pause() {
    if cooAddress != msg.sender:
        if ceoAddress != msg.sender:
            if cfoAddress != msg.sender:
                require msg.sender == address(stor3.field_0)
    require not uint8(stor3.field_160)
    uint8(stor3.field_160) = 1
}

function totalSupply() {
    require ext_code.size(sub_d75b855aAddress)
    call sub_d75b855aAddress.0xe3364073 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (ext_call.return_data[0] - 1)
}

function isPregnant(uint256 arg1) {
    require arg1 > 0
    require ext_code.size(sub_d75b855aAddress)
    call sub_d75b855aAddress.0x1df256f7 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    return 0
}

function balanceOf(address arg1) {
    require ext_code.size(sub_d75b855aAddress)
    call sub_d75b855aAddress.ownershipTokenCount(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_9c56e5d7(?) {
    require ext_code.size(sub_e4c73abeAddress)
    call sub_e4c73abeAddress.0x8e733951 with:
         gas gas_remaining wei
        args 0, uint32(msg.sender), arg1, arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_96baf2bd(?) {
    if ceoAddress != msg.sender:
        require msg.sender == address(stor3.field_0)
    require ext_code.size(arg1)
    call arg1.0xc61ad4e with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    sub_e4c73abeAddress = arg1
}

function sub_46a89ada(?) {
    if ceoAddress != msg.sender:
        require msg.sender == address(stor3.field_0)
    require ext_code.size(arg1)
    call arg1.0x3ab7f3b6 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    sub_e06f96e2Address = arg1
}

function sub_7a87bb91(?) {
    if ceoAddress != msg.sender:
        require msg.sender == address(stor3.field_0)
    require ext_code.size(arg1)
    call arg1.0xd86e9597 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    sub_d75b855aAddress = arg1
}

function sub_82877bf0(?) {
    if ceoAddress != msg.sender:
        require msg.sender == address(stor3.field_0)
    require ext_code.size(arg1)
    call arg1.0xe3b3f570 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    sub_a6531d34Address = arg1
}

function ownerOf(uint256 arg1) {
    require ext_code.size(sub_d75b855aAddress)
    call sub_d75b855aAddress.monsterIndexToOwner(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function setGeneScienceAddress(address arg1) {
    if ceoAddress != msg.sender:
        require msg.sender == address(stor3.field_0)
    require ext_code.size(arg1)
    call arg1.0xf2a73694 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    geneScienceAddress = arg1
}

function setSaleAuctionAddress(address arg1) {
    if ceoAddress != msg.sender:
        require msg.sender == address(stor3.field_0)
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
    if ceoAddress != msg.sender:
        require msg.sender == address(stor3.field_0)
    require ext_code.size(arg1)
    call arg1.isSiringClockAuction() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    siringAuctionAddress = arg1
}

function isReadyToBreed(uint256 arg1) {
    require arg1 > 0
    require ext_code.size(sub_d75b855aAddress)
    call sub_d75b855aAddress.0x1df256f7 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if Mask(32, 80, ext_call.return_data[64]) >> 80 != 0:
        return not 0
    if uint64(ext_call.return_data[32]) > uint64(block.timestamp):
        return 0 <= uint64(block.timestamp)
    return not 1
}

function unpause() {
    if ceoAddress != msg.sender:
        require msg.sender == address(stor3.field_0)
    require uint8(stor3.field_160)
    require saleAuctionAddress
    require siringAuctionAddress
    require sub_a6531d34Address
    require sub_e4c73abeAddress
    require geneScienceAddress
    require sub_d75b855aAddress
    require sub_e06f96e2Address
    require not newContractAddress
    if ceoAddress != msg.sender:
        require msg.sender == address(stor3.field_0)
    require uint8(stor3.field_160)
    uint8(stor3.field_160) = 0
}

function approveSiring(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    require ext_code.size(sub_d75b855aAddress)
    call sub_d75b855aAddress.monsterIndexToOwner(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == msg.sender
    require ext_code.size(sub_d75b855aAddress)
    call sub_d75b855aAddress.0xf4363bec with:
         gas gas_remaining wei
        args arg2, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawBalance() {
    require msg.sender == cfoAddress
    require ext_code.size(sub_d75b855aAddress)
    call sub_d75b855aAddress.pregnantMonsters() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) > autoBirthFee + (ext_call.return_data[0] * autoBirthFee):
        call cfoAddress with:
           value eth.balance(this.address) - autoBirthFee - (ext_call.return_data[0] * autoBirthFee) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function approve(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    require ext_code.size(sub_d75b855aAddress)
    call sub_d75b855aAddress.monsterIndexToOwner(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == msg.sender
    require ext_code.size(sub_d75b855aAddress)
    call sub_d75b855aAddress.setMonsterIndexToApproved(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args arg2, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Approval(msg.sender, address(arg1), arg2);
}

function sub_9c1cb8bf(?) payable {
    require ext_code.size(sub_d75b855aAddress)
    call sub_d75b855aAddress.0x1df256f7 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(sub_a6531d34Address)
    call sub_a6531d34Address.0xbde25aa0 with:
       value msg.value wei
         gas gas_remaining wei
        args 0, uint32(msg.sender), arg2, ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(sub_d75b855aAddress)
    call sub_d75b855aAddress.0x7ab37399 with:
         gas gas_remaining wei
        args 0, uint32(arg1), ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x9768e586: arg1, 0
}

function sub_53d89094(?) {
    if cooAddress != msg.sender:
        if ceoAddress != msg.sender:
            if cfoAddress != msg.sender:
                require msg.sender == address(stor3.field_0)
    require ext_code.size(saleAuctionAddress)
    call saleAuctionAddress.0x5fd8c710 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(siringAuctionAddress)
    call siringAuctionAddress.0x5fd8c710 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_e4c73abeAddress)
    call sub_e4c73abeAddress.0x5fd8c710 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_a6531d34Address)
    call sub_a6531d34Address.0x5fd8c710 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function createSaleAuction(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require not uint8(stor3.field_160)
    require ext_code.size(sub_d75b855aAddress)
    call sub_d75b855aAddress.monsterIndexToOwner(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == msg.sender
    require ext_code.size(sub_d75b855aAddress)
    call sub_d75b855aAddress.setMonsterIndexToApproved(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args arg1, saleAuctionAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(saleAuctionAddress)
    call saleAuctionAddress.createAuction(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
         gas gas_remaining wei
        args 0, uint32(arg1), arg2, arg3, arg4, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function createSiringAuction(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require not uint8(stor3.field_160)
    require ext_code.size(sub_d75b855aAddress)
    call sub_d75b855aAddress.monsterIndexToOwner(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == msg.sender
    require arg1 > 0
    require ext_code.size(sub_d75b855aAddress)
    call sub_d75b855aAddress.0x1df256f7 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require 0 == Mask(32, 80, ext_call.return_data[64]) >> 80
    require uint64(ext_call.return_data[32]) <= uint64(block.timestamp)
    require Mask(8, 208, ext_call.return_data[64]) >> 208 >= 1
    require ext_code.size(sub_d75b855aAddress)
    call sub_d75b855aAddress.setMonsterIndexToApproved(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args arg1, siringAuctionAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(siringAuctionAddress)
    call siringAuctionAddress.createAuction(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
         gas gas_remaining wei
        args arg1, arg2, arg3, arg4, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_48648a6f(?) payable {
    require arg1 > 0
    require arg2 > 0
    require arg3 > 0
    s = 0
    idx = 0
    while idx < 5:
        mem[164] = 32
        require ext_code.size(0x251fbddf256eadeb377007f15f8536527eae623d)
        delegate 0x251fbddf256eadeb377007f15f8536527eae623d.0x5beb53cd with:
             gas gas_remaining wei
            args arg1, idx << 253, 32
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_d75b855aAddress)
        call sub_d75b855aAddress.monsterIndexToOwner(uint256 arg1) with:
             gas gas_remaining wei
            args delegate.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require address(ext_call.return_data[0]) == msg.sender
        mem[96] = 0x3270896600000000000000000000000000000000000000000000000000000000
        mem[100] = delegate.return_data[0]
        mem[132] = sub_e4c73abeAddress
        require ext_code.size(sub_d75b855aAddress)
        call sub_d75b855aAddress.setMonsterIndexToApproved(uint256 arg1, address arg2) with:
             gas gas_remaining wei
            args delegate.return_data[0], sub_e4c73abeAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        s = delegate.return_data[0]
        idx = idx + 1
        continue 
    require ext_code.size(sub_e4c73abeAddress)
    call sub_e4c73abeAddress.0x5ddd7e41 with:
       value msg.value wei
         gas gas_remaining wei
        args msg.sender, arg1, arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function tokensOfOwner(address arg1) {
    mem[100] = arg1
    require ext_code.size(sub_d75b855aAddress)
    call sub_d75b855aAddress.ownershipTokenCount(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return ''
    mem[128 len 32 * ext_call.return_data[0]] = code.data[19101 len 32 * ext_call.return_data[0]]
    require ext_code.size(sub_d75b855aAddress)
    call sub_d75b855aAddress.0xe3364073 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 1
    s = 0
    while idx <= ext_call.return_data[0] - 1:
        mem[(32 * ext_call.return_data[0]) + 132] = idx
        require ext_code.size(sub_d75b855aAddress)
        call sub_d75b855aAddress.monsterIndexToOwner(uint256 arg1) with:
             gas gas_remaining wei
            args idx
        mem[(32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if address(ext_call.return_data[0]) != arg1:
            idx = idx + 1
            s = s
            continue 
        require s < ext_call.return_data[0]
        mem[(32 * s) + 128] = idx
        idx = idx + 1
        s = s + 1
        continue 
    mem[(32 * ext_call.return_data[0]) + 192 len floor32(ext_call.return_data[0])] = mem[128 len floor32(ext_call.return_data[0])]
    return Array(len=ext_call.return_data[0], data=mem[128 len floor32(ext_call.return_data[0])], mem[(32 * ext_call.return_data[0]) + floor32(ext_call.return_data[0]) + 192 len (32 * ext_call.return_data[0]) - floor32(ext_call.return_data[0])]), 
}

function canBreedWith(uint256 arg1, uint256 arg2) {
    require arg1 > 0
    require arg2 > 0
    require ext_code.size(sub_d75b855aAddress)
    call sub_d75b855aAddress.0x1df256f7 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(sub_d75b855aAddress)
    call sub_d75b855aAddress.0x1df256f7 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if arg1 == arg2:
        return 0
    if Mask(32, 16, ext_call.return_data[64]) >> 16 == arg2:
        return 0
    if Mask(32, 48, ext_call.return_data[64]) >> 48 == arg2:
        return 0
    if Mask(32, 16, ext_call.return_data[64]) >> 16 == arg1:
        return 0
    if Mask(32, 48, ext_call.return_data[64]) >> 48 == arg1:
        return 0
    if Mask(32, 16, ext_call.return_data[64]):
        if Mask(32, 16, ext_call.return_data[64]) >> 16:
            if 0 == Mask(32, 16, ext_call.return_data[64]) >> 16:
                return 0
            if 0 == Mask(32, 48, ext_call.return_data[64]) >> 48:
                return 0
            if 0 == Mask(32, 16, ext_call.return_data[64]) >> 16:
                return 0
            if 0 == Mask(32, 48, ext_call.return_data[64]) >> 48:
                return 0
    require ext_code.size(sub_d75b855aAddress)
    call sub_d75b855aAddress.monsterIndexToOwner(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_d75b855aAddress)
    call sub_d75b855aAddress.monsterIndexToOwner(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != address(ext_call.return_data[0]):
        require ext_code.size(sub_d75b855aAddress)
        call sub_d75b855aAddress.sireAllowedToAddress(uint256 arg1) with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    return (ext_call.return_data[12 len 20] == address(ext_call.return_data[0]))
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    require arg1
    require arg1 != this.address
    require saleAuctionAddress != arg1
    require ext_code.size(sub_d75b855aAddress)
    call sub_d75b855aAddress.monsterIndexToOwner(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == msg.sender
    require ext_code.size(sub_d75b855aAddress)
    call sub_d75b855aAddress.ownershipTokenCount(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_d75b855aAddress)
    call sub_d75b855aAddress.0x638a4e7f with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0] + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_d75b855aAddress)
    call sub_d75b855aAddress.setMonsterIndexToOwner(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args arg2, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if msg.sender:
        require ext_code.size(sub_d75b855aAddress)
        call sub_d75b855aAddress.ownershipTokenCount(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_d75b855aAddress)
        call sub_d75b855aAddress.0x638a4e7f with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0] - 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_d75b855aAddress)
        call sub_d75b855aAddress.setMonsterIndexToApproved(uint256 arg1, address arg2) with:
             gas gas_remaining wei
            args arg2, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if saleAuctionAddress == msg.sender:
        require ext_code.size(sub_d75b855aAddress)
        call sub_d75b855aAddress.0x1df256f7 with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if 0 == Mask(8, 208, ext_call.return_data[64]) >> 208:
            require ext_code.size(sub_e06f96e2Address)
            call sub_e06f96e2Address.0x6989767c with:
                 gas gas_remaining wei
                args (Mask(8, 192, ext_call.return_data[64]) >> 192)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_d75b855aAddress)
            call sub_d75b855aAddress.0x259fb360 with:
                 gas gas_remaining wei
                args arg2, Mask(16, 112, ext_call.return_data[64]) << 128, block.timestamp + uint32(ext_call.return_data[0]) << 192, block.timestamp, Mask(8, 192, ext_call.return_data[64]) << 56, Mask(8, 200, ext_call.return_data[64]) >> 200
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    emit Transfer(msg.sender, address(arg1), arg2);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor3.field_160)
    require arg2
    require arg2 != this.address
    require ext_code.size(sub_d75b855aAddress)
    call sub_d75b855aAddress.monsterIndexToApproved(uint256 arg1) with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == msg.sender
    require ext_code.size(sub_d75b855aAddress)
    call sub_d75b855aAddress.monsterIndexToOwner(uint256 arg1) with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == arg1
    require ext_code.size(sub_d75b855aAddress)
    call sub_d75b855aAddress.ownershipTokenCount(address arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_d75b855aAddress)
    call sub_d75b855aAddress.0x638a4e7f with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0] + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_d75b855aAddress)
    call sub_d75b855aAddress.setMonsterIndexToOwner(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args arg3, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1:
        require ext_code.size(sub_d75b855aAddress)
        call sub_d75b855aAddress.ownershipTokenCount(address arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_d75b855aAddress)
        call sub_d75b855aAddress.0x638a4e7f with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0] - 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_d75b855aAddress)
        call sub_d75b855aAddress.setMonsterIndexToApproved(uint256 arg1, address arg2) with:
             gas gas_remaining wei
            args arg3, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if saleAuctionAddress == arg1:
        require ext_code.size(sub_d75b855aAddress)
        call sub_d75b855aAddress.0x1df256f7 with:
             gas gas_remaining wei
            args arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if 0 == Mask(8, 208, ext_call.return_data[64]) >> 208:
            require ext_code.size(sub_e06f96e2Address)
            call sub_e06f96e2Address.0x6989767c with:
                 gas gas_remaining wei
                args (Mask(8, 192, ext_call.return_data[64]) >> 192)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_d75b855aAddress)
            call sub_d75b855aAddress.0x259fb360 with:
                 gas gas_remaining wei
                args arg3, Mask(16, 112, ext_call.return_data[64]) << 128, block.timestamp + uint32(ext_call.return_data[0]) << 192, block.timestamp, Mask(8, 192, ext_call.return_data[64]) << 56, Mask(8, 200, ext_call.return_data[64]) >> 200
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    emit Transfer(address(arg1), address(arg2), arg3);
}

function sub_e065efbb(?) {
    require msg.sender == cooAddress
    require 45000 > gen0CreatedCount
    if arg3:
        require ext_code.size(sub_d75b855aAddress)
        call sub_d75b855aAddress.0x6b40d190 with:
             gas gas_remaining wei
            args arg1, uint64(block.timestamp), 0, 0, 0, 0, 0, 0, arg3, 0, 0, arg2, 0, 0, 0, 0, 0
    else:
        require ext_code.size(sub_e06f96e2Address)
        call sub_e06f96e2Address.0x5a4eae02 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_e06f96e2Address)
        if 0 <= ext_call.return_data[0]:
            call sub_e06f96e2Address.0xf63e842c with:
                 gas gas_remaining wei
                args 0
        else:
            call sub_e06f96e2Address.0x5a4eae02 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_e06f96e2Address)
            call sub_e06f96e2Address.0xf63e842c with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_e06f96e2Address)
        call sub_e06f96e2Address.0x6989767c with:
             gas gas_remaining wei
            args uint8(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_d75b855aAddress)
        call sub_d75b855aAddress.0x6b40d190 with:
             gas gas_remaining wei
            args arg1, uint64(block.timestamp), uint64(block.timestamp), 0, uint64(block.timestamp + ext_call.return_data[28 len 4]), 0, 0, 0, arg3, 0, uint8(ext_call.return_data[31 len 1]), arg2, 0, 0, 0, 0, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Birth(address(this.address), ext_call.return_data[0], arg1);
    require ext_code.size(sub_d75b855aAddress)
    call sub_d75b855aAddress.ownershipTokenCount(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_d75b855aAddress)
    call sub_d75b855aAddress.0x638a4e7f with:
         gas gas_remaining wei
        args address(this.address), ext_call.return_data[0] + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_d75b855aAddress)
    call sub_d75b855aAddress.setMonsterIndexToOwner(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not saleAuctionAddress:
        require ext_code.size(sub_d75b855aAddress)
        call sub_d75b855aAddress.0x1df256f7 with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if 0 == Mask(8, 208, ext_call.return_data[64]) >> 208:
            require ext_code.size(sub_e06f96e2Address)
            call sub_e06f96e2Address.0x6989767c with:
                 gas gas_remaining wei
                args (Mask(8, 192, ext_call.return_data[64]) >> 192)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_d75b855aAddress)
            call sub_d75b855aAddress.0x259fb360 with:
                 gas gas_remaining wei
                args ext_call.return_data[0], Mask(16, 112, ext_call.return_data[64]) << 128, block.timestamp + uint32(ext_call.return_data[0]) << 192, block.timestamp, Mask(8, 192, ext_call.return_data[64]) << 56, Mask(8, 200, ext_call.return_data[64]) >> 200
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    emit Transfer(0, address(this.address), ext_call.return_data[0]);
    require ext_code.size(sub_d75b855aAddress)
    call sub_d75b855aAddress.setMonsterIndexToApproved(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], saleAuctionAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(saleAuctionAddress)
    call saleAuctionAddress.createAuction(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], arg4, arg5, arg6, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    gen0CreatedCount++
}

function bidOnSiringAuction(uint256 arg1, uint256 arg2) payable {
    require not uint8(stor3.field_160)
    require ext_code.size(sub_d75b855aAddress)
    call sub_d75b855aAddress.monsterIndexToOwner(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == msg.sender
    require arg2 > 0
    require ext_code.size(sub_d75b855aAddress)
    call sub_d75b855aAddress.0x1df256f7 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require 0 == Mask(32, 80, ext_call.return_data[64]) >> 80
    require uint64(ext_call.return_data[32]) <= uint64(block.timestamp)
    require Mask(8, 208, ext_call.return_data[64]) >> 208 >= 1
    require ext_code.size(sub_d75b855aAddress)
    call sub_d75b855aAddress.0x1df256f7 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(sub_d75b855aAddress)
    call sub_d75b855aAddress.0x1df256f7 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require arg2 != arg1
    require Mask(32, 16, ext_call.return_data[64]) >> 16 != arg1
    require Mask(32, 48, ext_call.return_data[64]) >> 48 != arg1
    require Mask(32, 16, ext_call.return_data[64]) >> 16 != arg2
    require Mask(32, 48, ext_call.return_data[64]) >> 48 != arg2
    if Mask(32, 16, ext_call.return_data[64]):
        if Mask(32, 16, ext_call.return_data[64]) >> 16:
            require Mask(32, 16, ext_call.return_data[64]) >> 16 != 0
            require Mask(32, 48, ext_call.return_data[64]) >> 48 != 0
            require Mask(32, 16, ext_call.return_data[64]) >> 16 != 0
            require Mask(32, 48, ext_call.return_data[64]) >> 48 != 0
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
    require ext_code.size(sub_d75b855aAddress)
    call sub_d75b855aAddress.0x1df256f7 with:
         gas gas_remaining wei
        args uint32(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(sub_d75b855aAddress)
    call sub_d75b855aAddress.0x1df256f7 with:
         gas gas_remaining wei
        args uint32(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(sub_d75b855aAddress)
    call sub_d75b855aAddress.0xfaa5bdfb with:
         gas gas_remaining wei
        args arg2 << 224, uint32(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_e06f96e2Address)
    call sub_e06f96e2Address.0xc7030cbc with:
         gas gas_remaining wei
        args (Mask(16, 112, ext_call.return_data[64]) >> 112)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_e06f96e2Address)
    call sub_e06f96e2Address.0x826e8d11 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_d75b855aAddress)
    if Mask(16, 112, ext_call.return_data[64]) >> 112 >= ext_call.return_data[0]:
        call sub_d75b855aAddress.0x259fb360 with:
             gas gas_remaining wei
            args arg1 << 224, Mask(16, 112, ext_call.return_data[64]) << 128, uint32(ext_call.return_data[0]) + block.timestamp << 192, block.timestamp, 0, Mask(16, 112, ext_call.return_data[64]) >> 112
    else:
        call sub_d75b855aAddress.0x259fb360 with:
             gas gas_remaining wei
            args arg1 << 224, (Mask(16, 112, ext_call.return_data[64]) >> 112) + 1, uint32(ext_call.return_data[0]) + block.timestamp << 192, block.timestamp, 0, Mask(16, 112, ext_call.return_data[64]) >> 112
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_e06f96e2Address)
    call sub_e06f96e2Address.0xc7030cbc with:
         gas gas_remaining wei
        args (Mask(16, 112, ext_call.return_data[64]) >> 112)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_e06f96e2Address)
    call sub_e06f96e2Address.0x826e8d11 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_d75b855aAddress)
    if Mask(16, 112, ext_call.return_data[64]) >> 112 >= ext_call.return_data[0]:
        call sub_d75b855aAddress.0x259fb360 with:
             gas gas_remaining wei
            args arg2 << 224, Mask(16, 112, ext_call.return_data[64]) << 128, uint32(ext_call.return_data[0]) + block.timestamp << 192, block.timestamp, 0, Mask(16, 112, ext_call.return_data[64]) >> 112
    else:
        call sub_d75b855aAddress.0x259fb360 with:
             gas gas_remaining wei
            args arg2 << 224, (Mask(16, 112, ext_call.return_data[64]) >> 112) + 1, uint32(ext_call.return_data[0]) + block.timestamp << 192, block.timestamp, 0, Mask(16, 112, ext_call.return_data[64]) >> 112
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_d75b855aAddress)
    call sub_d75b855aAddress.0xf4363bec with:
         gas gas_remaining wei
        args arg2 << 224, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_d75b855aAddress)
    call sub_d75b855aAddress.0xf4363bec with:
         gas gas_remaining wei
        args arg1 << 224, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_d75b855aAddress)
    call sub_d75b855aAddress.pregnantMonsters() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_d75b855aAddress)
    call sub_d75b855aAddress.0x745d8e7c with:
         gas gas_remaining wei
        args (ext_call.return_data[0] + 1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_d75b855aAddress)
    call sub_d75b855aAddress.monsterIndexToOwner(uint256 arg1) with:
         gas gas_remaining wei
        args uint32(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Pregnant(ext_call.return_data[12 len 20], arg2 << 224, arg1 << 224, uint64(ext_call.return_data[32]));
}

function giveBirth(uint256 arg1) {
    require not uint8(stor3.field_160)
    require ext_code.size(sub_d75b855aAddress)
    call sub_d75b855aAddress.0x1df256f7 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require Mask(64, 192, ext_call.return_data[32]) >> 192
    require Mask(32, 80, ext_call.return_data[64]) >> 80 != 0
    require uint64(ext_call.return_data[32]) <= block.timestamp
    require ext_code.size(sub_d75b855aAddress)
    call sub_d75b855aAddress.0x1df256f7 with:
         gas gas_remaining wei
        args (Mask(32, 80, ext_call.return_data[64]) >> 80)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(geneScienceAddress)
    call geneScienceAddress.mixGenes(uint256 arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args ext_call.return_data[0], ext_call.return_data[0], block.number - 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(geneScienceAddress)
    call geneScienceAddress.0x10a624b0 with:
         gas gas_remaining wei
        args Mask(64, 128, ext_call.return_data[64]) << 64, Mask(64, 128, ext_call.return_data[64]) << 64, block.number - 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_d75b855aAddress)
    call sub_d75b855aAddress.monsterIndexToOwner(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 == uint32(arg1)
    require Mask(32, 80, ext_call.return_data[64]) >> 80 == Mask(32, 80, ext_call.return_data[64]) >> 80
    require uint16(uint16(ext_call.return_data[64]) + 1) == uint16(uint16(ext_call.return_data[64]) + 1)
    require ext_code.size(sub_e06f96e2Address)
    call sub_e06f96e2Address.0x5a4eae02 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_e06f96e2Address)
    if uint16(uint16(ext_call.return_data[64]) + 1) <= ext_call.return_data[0]:
        call sub_e06f96e2Address.0xf63e842c with:
             gas gas_remaining wei
            args uint16(uint16(ext_call.return_data[64]) + 1)
    else:
        call sub_e06f96e2Address.0x5a4eae02 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_e06f96e2Address)
        call sub_e06f96e2Address.0xf63e842c with:
             gas gas_remaining wei
            args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_e06f96e2Address)
    call sub_e06f96e2Address.0x6989767c with:
         gas gas_remaining wei
        args uint8(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_d75b855aAddress)
    if uint16(uint16(ext_call.return_data[64]) + 1) / 2 <= 13:
        call sub_d75b855aAddress.0x6b40d190 with:
             gas gas_remaining wei
            args ext_call.return_data[0], uint64(block.timestamp), uint64(block.timestamp), 0, uint64(block.timestamp + ext_call.return_data[28 len 4]), 0, 0, 0, 0, 0, uint8(ext_call.return_data[31 len 1]), uint64(ext_call.return_data[0]), Mask(15, 1, uint16(ext_call.return_data[64]) + 1), 0, Mask(32, 80, ext_call.return_data[64]) >> 80, uint32(arg1), uint16(uint16(ext_call.return_data[64]) + 1)
    else:
        call sub_d75b855aAddress.0x6b40d190 with:
             gas gas_remaining wei
            args ext_call.return_data[0], uint64(block.timestamp), uint64(block.timestamp), 0, uint64(block.timestamp + ext_call.return_data[28 len 4]), 0, 0, 0, 0, 0, uint8(ext_call.return_data[31 len 1]), uint64(ext_call.return_data[0]), 0, 0, Mask(32, 80, ext_call.return_data[64]) >> 80, uint32(arg1), uint16(uint16(ext_call.return_data[64]) + 1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Birth(address(ext_call.return_data[0]), ext_call.return_data[0], ext_call.return_data[0]);
    require ext_code.size(sub_d75b855aAddress)
    call sub_d75b855aAddress.ownershipTokenCount(address arg1) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_d75b855aAddress)
    call sub_d75b855aAddress.0x638a4e7f with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), ext_call.return_data[0] + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_d75b855aAddress)
    call sub_d75b855aAddress.setMonsterIndexToOwner(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not saleAuctionAddress:
        require ext_code.size(sub_d75b855aAddress)
        call sub_d75b855aAddress.0x1df256f7 with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if 0 == Mask(8, 208, ext_call.return_data[64]) >> 208:
            require ext_code.size(sub_e06f96e2Address)
            call sub_e06f96e2Address.0x6989767c with:
                 gas gas_remaining wei
                args (Mask(8, 192, ext_call.return_data[64]) >> 192)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_d75b855aAddress)
            call sub_d75b855aAddress.0x259fb360 with:
                 gas gas_remaining wei
                args ext_call.return_data[0], Mask(16, 112, ext_call.return_data[64]) << 128, block.timestamp + uint32(ext_call.return_data[0]) << 192, block.timestamp, Mask(8, 192, ext_call.return_data[64]) << 56, Mask(8, 200, ext_call.return_data[64]) >> 200
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    emit Transfer(0, address(ext_call.return_data[0]), ext_call.return_data[0]);
    require ext_code.size(sub_d75b855aAddress)
    call sub_d75b855aAddress.0xfaa5bdfb with:
         gas gas_remaining wei
        args arg1, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_d75b855aAddress)
    call sub_d75b855aAddress.pregnantMonsters() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_d75b855aAddress)
    call sub_d75b855aAddress.0x745d8e7c with:
         gas gas_remaining wei
        args (ext_call.return_data[0] - 1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call msg.sender with:
       value autoBirthFee wei
         gas 2300 * is_zero(value) wei
    return ext_call.return_data[0]
}

function breedWithAuto(uint256 arg1, uint256 arg2) payable {
    require not uint8(stor3.field_160)
    require msg.value >= autoBirthFee + sub_1caa79f9
    require ext_code.size(sub_d75b855aAddress)
    call sub_d75b855aAddress.monsterIndexToOwner(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == msg.sender
    require ext_code.size(sub_d75b855aAddress)
    call sub_d75b855aAddress.monsterIndexToOwner(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_d75b855aAddress)
    call sub_d75b855aAddress.monsterIndexToOwner(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_d75b855aAddress)
    if ext_call.return_data[12 len 20] != address(ext_call.return_data[0]):
        call sub_d75b855aAddress.sireAllowedToAddress(uint256 arg1) with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[12 len 20] == address(ext_call.return_data[0])
    call sub_d75b855aAddress.0x1df256f7 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require 0 == Mask(32, 80, ext_call.return_data[64]) >> 80
    require uint64(ext_call.return_data[32]) <= uint64(block.timestamp)
    require Mask(8, 208, ext_call.return_data[64]) >> 208 >= 1
    require ext_code.size(sub_d75b855aAddress)
    call sub_d75b855aAddress.0x1df256f7 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require 0 == Mask(32, 80, ext_call.return_data[64]) >> 80
    require uint64(ext_call.return_data[32]) <= uint64(block.timestamp)
    require Mask(8, 208, ext_call.return_data[64]) >> 208 >= 1
    require arg1 != arg2
    require Mask(32, 16, ext_call.return_data[64]) >> 16 != arg2
    require Mask(32, 48, ext_call.return_data[64]) >> 48 != arg2
    require Mask(32, 16, ext_call.return_data[64]) >> 16 != arg1
    require Mask(32, 48, ext_call.return_data[64]) >> 48 != arg1
    if Mask(32, 16, ext_call.return_data[64]):
        if Mask(32, 16, ext_call.return_data[64]) >> 16:
            require Mask(32, 16, ext_call.return_data[64]) >> 16 != 0
            require Mask(32, 48, ext_call.return_data[64]) >> 48 != 0
            require Mask(32, 16, ext_call.return_data[64]) >> 16 != 0
            require Mask(32, 48, ext_call.return_data[64]) >> 48 != 0
    require ext_code.size(sub_d75b855aAddress)
    call sub_d75b855aAddress.0x1df256f7 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(sub_d75b855aAddress)
    call sub_d75b855aAddress.0x1df256f7 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(sub_d75b855aAddress)
    call sub_d75b855aAddress.0xfaa5bdfb with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_e06f96e2Address)
    call sub_e06f96e2Address.0xc7030cbc with:
         gas gas_remaining wei
        args (Mask(16, 112, ext_call.return_data[64]) >> 112)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_e06f96e2Address)
    call sub_e06f96e2Address.0x826e8d11 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_d75b855aAddress)
    if Mask(16, 112, ext_call.return_data[64]) >> 112 >= ext_call.return_data[0]:
        call sub_d75b855aAddress.0x259fb360 with:
             gas gas_remaining wei
            args arg2, Mask(16, 112, ext_call.return_data[64]) << 128, uint32(ext_call.return_data[0]) + block.timestamp << 192, block.timestamp, 0, Mask(16, 112, ext_call.return_data[64]) >> 112
    else:
        call sub_d75b855aAddress.0x259fb360 with:
             gas gas_remaining wei
            args arg2, (Mask(16, 112, ext_call.return_data[64]) >> 112) + 1, uint32(ext_call.return_data[0]) + block.timestamp << 192, block.timestamp, 0, Mask(16, 112, ext_call.return_data[64]) >> 112
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_e06f96e2Address)
    call sub_e06f96e2Address.0xc7030cbc with:
         gas gas_remaining wei
        args (Mask(16, 112, ext_call.return_data[64]) >> 112)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_e06f96e2Address)
    call sub_e06f96e2Address.0x826e8d11 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_d75b855aAddress)
    if Mask(16, 112, ext_call.return_data[64]) >> 112 >= ext_call.return_data[0]:
        call sub_d75b855aAddress.0x259fb360 with:
             gas gas_remaining wei
            args arg1, Mask(16, 112, ext_call.return_data[64]) << 128, uint32(ext_call.return_data[0]) + block.timestamp << 192, block.timestamp, 0, Mask(16, 112, ext_call.return_data[64]) >> 112
    else:
        call sub_d75b855aAddress.0x259fb360 with:
             gas gas_remaining wei
            args arg1, (Mask(16, 112, ext_call.return_data[64]) >> 112) + 1, uint32(ext_call.return_data[0]) + block.timestamp << 192, block.timestamp, 0, Mask(16, 112, ext_call.return_data[64]) >> 112
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_d75b855aAddress)
    call sub_d75b855aAddress.0xf4363bec with:
         gas gas_remaining wei
        args arg1, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_d75b855aAddress)
    call sub_d75b855aAddress.0xf4363bec with:
         gas gas_remaining wei
        args arg2, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_d75b855aAddress)
    call sub_d75b855aAddress.pregnantMonsters() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_d75b855aAddress)
    call sub_d75b855aAddress.0x745d8e7c with:
         gas gas_remaining wei
        args (ext_call.return_data[0] + 1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_d75b855aAddress)
    call sub_d75b855aAddress.monsterIndexToOwner(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Pregnant(ext_call.return_data[12 len 20], arg1, arg2, uint64(ext_call.return_data[32]));
}

function sub_e23d5314(?) {
    mem[96 len 320] = code.data[19101 len 320]
    mem[64] = 928
    mem[416] = 0
    mem[448] = 0
    mem[480] = 0
    mem[512] = 0
    mem[544] = 0
    mem[576] = 0
    mem[608] = 0
    mem[640] = 0
    mem[672] = 0
    mem[704] = 0
    mem[736] = 0
    mem[768] = 0
    mem[800] = 0
    mem[832] = 0
    mem[864] = 0
    mem[896] = 0
    mem[996] = arg2
    mem[1028] = arg3
    require ext_code.size(sub_e4c73abeAddress)
    call sub_e4c73abeAddress.0xb0b39ee with:
         gas gas_remaining wei
        args msg.sender, arg1, arg2, arg3
    mem[928 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[64] >= 0
    s = 0
    idx = 0
    while idx < 8:
        mem[932] = ext_call.return_data[0]
        mem[964] = 32 * idx % 8
        mem[996] = 32
        require ext_code.size(0x251fbddf256eadeb377007f15f8536527eae623d)
        delegate 0x251fbddf256eadeb377007f15f8536527eae623d.0x5beb53cd with:
             gas gas_remaining wei
            args ext_call.return_data[0], idx << 253, 32
        mem[928] = delegate.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < 10
        mem[(32 * idx) + 96] = delegate.return_data[0]
        s = delegate.return_data[0]
        idx = idx + 1
        continue 
    s = 8 * _18
    idx = 0
    while idx < 2:
        mem[932] = ext_call.return_data[32]
        mem[964] = 32 * idx % 8
        mem[996] = 32
        require ext_code.size(0x251fbddf256eadeb377007f15f8536527eae623d)
        delegate 0x251fbddf256eadeb377007f15f8536527eae623d.0x5beb53cd with:
             gas gas_remaining wei
            args ext_call.return_data[32], idx << 253, 32
        mem[928] = delegate.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx + 8 < 10
        mem[(32 * idx + 8) + 96] = delegate.return_data[0]
        s = delegate.return_data[0]
        idx = idx + 1
        continue 
    s = 0
    s = 416
    s = (8 * _18) + (2 * _25)
    idx = 0
    while idx < 10:
        _61 = mem[(32 * idx) + 96]
        _62 = mem[64]
        mem[64] = mem[64] + 512
        mem[_62] = 0
        mem[_62 + 32] = 0
        mem[_62 + 64] = 0
        mem[_62 + 96] = 0
        mem[_62 + 128] = 0
        mem[_62 + 160] = 0
        mem[_62 + 192] = 0
        mem[_62 + 224] = 0
        mem[_62 + 256] = 0
        mem[_62 + 288] = 0
        mem[_62 + 320] = 0
        mem[_62 + 352] = 0
        mem[_62 + 384] = 0
        mem[_62 + 416] = 0
        mem[_62 + 448] = 0
        mem[_62 + 480] = 0
        _63 = mem[64]
        mem[64] = mem[64] + 512
        mem[_63] = 0
        mem[_63 + 32] = 0
        mem[_63 + 64] = 0
        mem[_63 + 96] = 0
        mem[_63 + 128] = 0
        mem[_63 + 160] = 0
        mem[_63 + 192] = 0
        mem[_63 + 224] = 0
        mem[_63 + 256] = 0
        mem[_63 + 288] = 0
        mem[_63 + 320] = 0
        mem[_63 + 352] = 0
        mem[_63 + 384] = 0
        mem[_63 + 416] = 0
        mem[_63 + 448] = 0
        mem[_63 + 480] = 0
        require ext_code.size(sub_d75b855aAddress)
        call sub_d75b855aAddress.0x1df256f7 with:
             gas gas_remaining wei
            args _61
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        _70 = mem[64]
        mem[64] = mem[64] + 512
        mem[_70] = 0
        mem[_70 + 32] = 0
        mem[_70 + 64] = 0
        mem[_70 + 96] = 0
        mem[_70 + 128] = 0
        mem[_70 + 160] = 0
        mem[_70 + 192] = 0
        mem[_70 + 224] = 0
        mem[_70 + 256] = 0
        mem[_70 + 288] = 0
        mem[_70 + 320] = 0
        mem[_70 + 352] = 0
        mem[_70 + 384] = 0
        mem[_70 + 416] = 0
        mem[_70 + 448] = 0
        mem[_70 + 480] = 0
        _71 = mem[64]
        mem[64] = mem[64] + 512
        mem[_71] = ext_call.return_data[0]
        mem[_71 + 96] = uint64(ext_call.return_data[32])
        mem[_71 + 416] = Mask(64, 64, ext_call.return_data[32]) >> 64
        mem[_71 + 448] = Mask(64, 128, ext_call.return_data[32]) >> 128
        mem[_71 + 32] = Mask(64, 192, ext_call.return_data[32]) >> 192
        mem[_71 + 64] = uint16(ext_call.return_data[64])
        mem[_71 + 128] = Mask(32, 16, ext_call.return_data[64]) >> 16
        mem[_71 + 160] = Mask(32, 48, ext_call.return_data[64]) >> 48
        mem[_71 + 192] = Mask(32, 80, ext_call.return_data[64]) >> 80
        mem[_71 + 224] = Mask(16, 112, ext_call.return_data[64]) >> 112
        mem[_71 + 256] = Mask(64, 128, ext_call.return_data[64]) >> 128
        mem[_71 + 288] = Mask(8, 192, ext_call.return_data[64]) >> 192
        mem[_71 + 320] = Mask(8, 200, ext_call.return_data[64]) >> 200
        mem[_71 + 352] = Mask(8, 208, ext_call.return_data[64]) >> 208
        mem[_71 + 384] = Mask(8, 216, ext_call.return_data[64]) >> 216
        if uint8((Mask(8, 224, ext_call.return_data[64]) >> 224) + 1) < 10:
            mem[_71 + 480] = uint8((Mask(8, 224, ext_call.return_data[64]) >> 224) + 1)
            require ext_code.size(sub_e06f96e2Address)
            call sub_e06f96e2Address.0xc7030cbc with:
                 gas gas_remaining wei
                args (Mask(16, 112, ext_call.return_data[64]) << 128)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64]] = 0x259fb36000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _61
            mem[mem[64] + 36] = Mask(16, 112, ext_call.return_data[64]) >> 112
            mem[mem[64] + 68] = uint64(uint32(ext_call.return_data[0]) + block.timestamp)
            mem[mem[64] + 100] = block.timestamp
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = Mask(16, 112, ext_call.return_data[64]) >> 112
            require ext_code.size(sub_d75b855aAddress)
            call sub_d75b855aAddress.0x259fb360 with:
                 gas gas_remaining wei
                args _61, Mask(16, 112, ext_call.return_data[64]) << 128, uint32(ext_call.return_data[0]) + block.timestamp << 192, block.timestamp, 0, Mask(16, 112, ext_call.return_data[64]) >> 112
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            s = 0
            s = _71
            s = _61
            idx = idx + 1
            continue 
        mem[_71 + 480] = 0
        require ext_code.size(sub_e06f96e2Address)
        call sub_e06f96e2Address.0xc7030cbc with:
             gas gas_remaining wei
            args (Mask(16, 112, ext_call.return_data[64]) << 128)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_e06f96e2Address)
        call sub_e06f96e2Address.0x826e8d11 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[mem[64]] = 0x259fb36000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _61
        if Mask(16, 112, ext_call.return_data[64]) >> 112 >= ext_call.return_data[0]:
            mem[mem[64] + 36] = Mask(16, 112, ext_call.return_data[64]) >> 112
            mem[mem[64] + 68] = uint64(uint32(ext_call.return_data[0]) + block.timestamp)
            mem[mem[64] + 100] = block.timestamp
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = Mask(16, 112, ext_call.return_data[64]) >> 112
            require ext_code.size(sub_d75b855aAddress)
            call sub_d75b855aAddress.0x259fb360 with:
                 gas gas_remaining wei
                args _61, Mask(16, 112, ext_call.return_data[64]) << 128, uint32(ext_call.return_data[0]) + block.timestamp << 192, block.timestamp, 0, Mask(16, 112, ext_call.return_data[64]) >> 112
        else:
            mem[mem[64] + 36] = (Mask(16, 112, ext_call.return_data[64]) >> 112) + 1
            mem[mem[64] + 68] = uint64(uint32(ext_call.return_data[0]) + block.timestamp)
            mem[mem[64] + 100] = block.timestamp
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = Mask(16, 112, ext_call.return_data[64]) >> 112
            require ext_code.size(sub_d75b855aAddress)
            call sub_d75b855aAddress.0x259fb360 with:
                 gas gas_remaining wei
                args _61, (Mask(16, 112, ext_call.return_data[64]) >> 112) + 1, uint32(ext_call.return_data[0]) + block.timestamp << 192, block.timestamp, 0, Mask(16, 112, ext_call.return_data[64]) >> 112
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        s = 1
        s = _71
        s = _61
        idx = idx + 1
        continue 
    return 0
}



}
