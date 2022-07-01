contract main {




// =====================  Runtime code  =====================


#
#  - sub_106f9695(?)
#
const name = 'The Lexiconomy'

const InterfaceId_ERC165 = 0x1ffc9a700000000000000000000000000000000000000000000000000000000

const symbol = 'LEX'


address ceoAddress;
array of uint256 stor1;
mapping of uint256 escrow;
uint256 stor3;
uint256 stor4;
uint256 secondsPerBlock;
array of uint256 tokenByIndex;
mapping of struct sub_9b8ae3a8;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address sub_3ac19351;
mapping of uint8 stor11;
mapping of uint256 stor12;
array of uint256 sub_1f8879bd;
mapping of uint256 stor14;
mapping of uint256 sub_3cd6d89a;
mapping of uint256 sub_2283e668;
uint8 sub_052695c1;
uint8 stor17; offset 8
uint256 stor17; offset 8
uint256 sub_86dbef02;
address saleAuctionAddress;
array of uint8 sub_5d673bb9;
mapping of uint8 stor33;
uint8 sub_4e8ffc5d; offset 32
uint32 sub_bbc1fdf6;
uint256 minBid;
uint8 sub_f41bd481;
uint8 sub_73bad966; offset 8
uint32 releaseInterval; offset 16
uint64 sub_674657bd; offset 48
array of uint256 sub_c1e96206;
mapping of struct bids;
mapping of struct offers;
address newContractAddress;

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor33[Mask(32, 224, arg1)])
}

function owners(uint256 arg1) {
    require calldata.size - 4 >= 32
    return ownerOf[arg1]
}

function sub_0293aa7c(?) {
    require calldata.size - 4 >= 32
    require arg1 < tokenByIndex.length
    return tokenByIndex[arg1]
}

function cfoAddress() {
    return address(stor1.length)
}

function sub_052695c1(?) {
    return sub_052695c1
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ownerOf[arg1]
    return sub_3ac19351[arg1]
}

function ceoAddress() {
    return ceoAddress
}

function totalSupply() {
    return tokenByIndex.length
}

function sub_1f8879bd(?) {
    require calldata.size - 4 >= 64
    require arg2 < sub_1f8879bd[arg1]
    return sub_1f8879bd[arg1][arg2]
}

function releaseInterval() {
    return releaseInterval
}

function sub_2283e668(?) {
    require calldata.size - 4 >= 32
    return sub_2283e668[arg1]
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 < sub_1f8879bd[address(arg1)]
    require arg2 < sub_1f8879bd[address(arg1)]
    return sub_1f8879bd[address(arg1)][arg2]
}

function sub_3ac19351(?) {
    require calldata.size - 4 >= 32
    return sub_3ac19351[arg1]
}

function sub_3cd6d89a(?) {
    require calldata.size - 4 >= 32
    return sub_3cd6d89a[arg1]
}

function minBid() {
    return minBid
}

function bids(uint256 arg1) {
    require calldata.size - 4 >= 32
    return address(bids[arg1].field_0), bids[arg1].field_256
}

function sub_4e8ffc5d(?) {
    return sub_4e8ffc5d
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < tokenByIndex.length
    return tokenByIndex[arg1]
}

function escrow(address arg1) {
    require calldata.size - 4 >= 32
    return escrow[arg1]
}

function paused() {
    return bool(uint8(stor1.length.field_160))
}

function sub_5d673bb9(?) {
    require calldata.size - 4 >= 32
    require arg1 < 364
    return uint8(sub_5d673bb9[uint8(arg1)])
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ownerOf[arg1]
    return ownerOf[arg1]
}

function sub_674657bd(?) {
    return sub_674657bd
}

function newContractAddress() {
    return newContractAddress
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return balanceOf[address(arg1)]
}

function sub_73bad966(?) {
    return sub_73bad966
}

function secondsPerBlock() {
    return secondsPerBlock
}

function sub_86dbef02(?) {
    return sub_86dbef02
}

function offers(uint256 arg1) {
    require calldata.size - 4 >= 32
    return address(offers[arg1].field_0), offers[arg1].field_256
}

function sub_9b8ae3a8(?) {
    require calldata.size - 4 >= 32
    require uint8(sub_9b8ae3a8[arg1].field_0) <= 5
    return uint8(sub_9b8ae3a8[arg1].field_0), uint32(sub_9b8ae3a8[arg1].field_8)
}

function sub_bbc1fdf6(?) {
    return sub_bbc1fdf6
}

function sub_c1e96206(?) {
    require calldata.size - 4 >= 32
    require arg1 < 25
    return sub_c1e96206[arg1]
}

function saleAuction() {
    return saleAuctionAddress
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require arg2
    return bool(stor11[address(arg1)][address(arg2)])
}

function sub_f41bd481(?) {
    return sub_f41bd481
}

function _fallback() payable {
    require msg.sender == saleAuctionAddress
}

function donate() payable {
    require msg.value > 0
    emit Donation(msg.sender);
}

function sub_9da69d0c(?) {
    require calldata.size - 4 >= 32
    require msg.sender == ceoAddress
    releaseInterval = arg1
}

function setCEO(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == ceoAddress
    require arg1
    ceoAddress = arg1
}

function setCFO(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == ceoAddress
    require arg1
    address(stor1.length) = arg1
}

function exists(uint256 arg1) {
    require calldata.size - 4 >= 32
    require uint8(sub_9b8ae3a8[arg1].field_0) <= 5
    return not not uint8(sub_9b8ae3a8[arg1].field_0)
}

function sub_7a760a6f(?) {
    require calldata.size - 4 >= 32
    if ceoAddress != msg.sender:
        require msg.sender == address(stor1.length)
    sub_86dbef02 = arg1
}

function sub_846043cc(?) {
    require calldata.size - 4 >= 32
    if ceoAddress != msg.sender:
        require msg.sender == address(stor1.length)
    sub_052695c1 = arg1
}

function pause() {
    if ceoAddress != msg.sender:
        require msg.sender == address(stor1.length)
    require not uint8(stor1.length.field_160)
    uint8(stor1.length.field_160) = 1
}

function setSecondsPerBlock(uint256 arg1) {
    require calldata.size - 4 >= 32
    if ceoAddress != msg.sender:
        require msg.sender == address(stor1.length)
    secondsPerBlock = arg1
}

function sub_03472257(?) {
    require calldata.size - 4 >= 32
    if ceoAddress != msg.sender:
        require msg.sender == address(stor1.length)
    Mask(248, 0, stor17.field_8) = Mask(248, 0, arg1)
}

function setTransactionFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if ceoAddress != msg.sender:
        require msg.sender == address(stor1.length)
    require arg1 <= 10000
    stor4 = arg1
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1
    stor11[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function setNewAddress(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == ceoAddress
    require uint8(stor1.length.field_160)
    newContractAddress = arg1
    emit ContractUpgrade(arg1);
}

function unpause() {
    require msg.sender == ceoAddress
    require uint8(stor1.length.field_160)
    require not newContractAddress
    require msg.sender == ceoAddress
    require uint8(stor1.length.field_160)
    uint8(stor1.length.field_160) = 0
}

function withdrawBalance() {
    require msg.sender == address(stor1.length)
    call address(stor1.length) with:
       value eth.balance(this.address) - stor3 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_27b9c6f8(?) {
    require calldata.size - 4 >= 64
    if ownerOf[arg1]:
        if arg2:
            if ownerOf[arg1] == arg2:
                return 0
            if stor11[stor8[arg1]][address(arg2)]:
                return 0
    if sub_3cd6d89a[arg1]:
        return sub_3cd6d89a[arg1]
    return sub_86dbef02
}

function withdrawAuctionBalances() {
    if ceoAddress != msg.sender:
        require msg.sender == address(stor1.length)
    require ext_code.size(saleAuctionAddress)
    call saleAuctionAddress.0x5fd8c710 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setSaleAuctionAddress(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == ceoAddress
    require ext_code.size(arg1)
    staticcall arg1.isSaleClockAuction() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    saleAuctionAddress = arg1
}

function withdrawFunds() {
    require not uint8(stor1.length.field_160)
    if not sub_2283e668[msg.sender]:
        revert with 0, 'No funds to withdraw.'
    stor3 -= sub_2283e668[msg.sender]
    sub_2283e668[msg.sender] = 0
    call msg.sender with:
       value sub_2283e668[msg.sender] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_f3e53166(?) {
    require calldata.size - 4 >= 64
    require not uint8(stor1.length.field_160)
    if ownerOf[arg1] != msg.sender:
        if not stor11[stor8[arg1]][msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0x2e53656e6465722063616e6e6f74206f706572617465206f6e20746865206c656d6d61,
                        mem[199 len 29]
    sub_3cd6d89a[arg1] = arg2
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if ownerOf[arg2] != msg.sender:
        if not stor11[stor8[arg2]][msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0x2e53656e6465722063616e6e6f74206f706572617465206f6e20746865206c656d6d61,
                        mem[199 len 29]
    require ownerOf[arg2]
    require ownerOf[arg2] != arg1
    sub_3ac19351[arg2] = arg1
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function sub_20a802e4(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if ceoAddress != msg.sender:
        require msg.sender == address(stor1.length)
    idx = 0
    while ('cd', 4).length > uint8(idx):
        require uint8(idx) < ('cd', 4).length
        if ownerOf[cd[((32 * uint8(idx)) + cd[4] + 36)]]:
            require msg.sender == ownerOf[cd[((32 * uint8(idx)) + cd[4] + 36)]]
        require uint8(cd[36]) <= 5
        mem[0] = cd[((32 * uint8(idx)) + cd[4] + 36)]
        mem[32] = 7
        uint8(sub_9b8ae3a8[cd[((32 * uint8(idx)) + cd[4] + 36)]].field_0) = uint8(cd[36])
        idx = idx + 1
        continue 
}

function sub_814dcc3d(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if ceoAddress != msg.sender:
        require msg.sender == address(stor1.length)
    idx = 0
    while ('cd', 4).length > uint8(idx):
        require uint8(idx) < ('cd', 4).length
        require uint16(cd[((32 * uint8(idx)) + cd[4] + 36)]) < 364
        uint256(sub_5d673bb9[uint16(cd[((32 * uint8(idx)) + cd[4] + 36)]) / 32]) = uint8(cd[36]) * 256^(cd[((32 * uint8(idx)) + cd[4] + 36)] % 32) or !(255 * 256^(cd[((32 * uint8(idx)) + cd[4] + 36)] % 32)) and uint256(sub_5d673bb9[uint16(cd[((32 * uint8(idx)) + cd[4] + 36)]) / 32])
        idx = idx + 1
        continue 
}

function createSaleAuction(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require not uint8(stor1.length.field_160)
    if ownerOf[arg1] != msg.sender:
        if not stor11[stor8[arg1]][msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0x2e53656e6465722063616e6e6f74206f706572617465206f6e20746865206c656d6d61,
                        mem[199 len 29]
    sub_3ac19351[arg1] = saleAuctionAddress
    require ext_code.size(saleAuctionAddress)
    call saleAuctionAddress.createAuction(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
         gas gas_remaining wei
        args 0, uint32(arg1), arg2, arg3, arg4, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function cancelOffer(uint256 arg1) {
    require calldata.size - 4 >= 32
    require not uint8(stor1.length.field_160)
    if not offers[arg1].field_256:
        revert with 0, 'No offer exists.'
    if address(offers[arg1].field_0) != msg.sender:
        revert with 0, 32, 35, 0x2e596f752063616e206f6e6c792063616e63656c20796f7572206f776e206f66666572, mem[327 len 29]
    address(offers[arg1].field_0) = 0
    offers[arg1].field_256 = 0
    emit 0x30134a1b: address(offers[arg1].field_0), arg1
    if offers[arg1].field_256 * stor4 / 10000 > escrow[address(stor63[arg1].field_0)]:
        revert with 0, 32, 41, 0x2e4e6f7420656e6f7567682066756e647320696e20657363726f7720746f207769746864726177616c, mem[333 len 23]
    escrow[address(stor63[arg1].field_0)] -= offers[arg1].field_256 * stor4 / 10000
    stor3 -= offers[arg1].field_256 * stor4 / 10000
    call msg.sender with:
       value offers[arg1].field_256 * stor4 / 10000 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if sub_3ac19351[arg3] != msg.sender:
            require stor11[stor8[arg3]][msg.sender]
    require ownerOf[arg3] == arg1
    require arg2
    if sub_3ac19351[arg3]:
        sub_3ac19351[arg3] = 0
    if arg1:
        balanceOf[address(arg1)]--
        sub_3ac19351[arg3] = 0
        require sub_1f8879bd[address(arg1)]
        require sub_1f8879bd[address(arg1)] - 1 < sub_1f8879bd[address(arg1)]
        if stor14[arg3] != sub_1f8879bd[address(arg1)] - 1:
            require stor14[arg3] < sub_1f8879bd[address(arg1)]
            sub_1f8879bd[address(arg1)][stor14[arg3]] = sub_1f8879bd[address(arg1)][sub_1f8879bd[address(arg1)]]
        sub_1f8879bd[address(arg1)]--
        if sub_1f8879bd[address(arg1)] > sub_1f8879bd[address(arg1)] - 1:
            idx = sub_1f8879bd[address(arg1)] - 1
            while sub_1f8879bd[address(arg1)] > idx:
                sub_1f8879bd[address(arg1)][idx] = 0
                idx = idx + 1
                continue 
        if stor14[arg3] != sub_1f8879bd[address(arg1)] - 1:
            stor14[stor13[address(arg1)][stor13[address(arg1)]]] = stor14[arg3]
        stor14[arg3] = 0
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    sub_1f8879bd[address(arg2)]++
    sub_1f8879bd[address(arg2)][sub_1f8879bd[address(arg2)]] = arg3
    stor14[arg3] = sub_1f8879bd[address(arg2)]
    emit Transfer(arg1, arg2, arg3);
}

function sub_6f3c1021(?) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require not uint8(stor1.length.field_160)
    if ownerOf[arg1] != msg.sender:
        if not stor11[stor8[arg1]][msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0x2e53656e6465722063616e6e6f74206f706572617465206f6e20746865206c656d6d61,
                        mem[199 len 29]
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    mem[ceil32(arg2.length) + 128] = 32
    mem[ceil32(arg2.length) + 160] = arg2.length
    mem[ceil32(arg2.length) + 192 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        emit 0xe74d9d8b: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len ceil32(arg2.length) + -arg2.length + 32], Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256, ownerOf[arg1], arg1
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 192] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 224 len arg2.length % 32]
        emit 0xe74d9d8b: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len ceil32(arg2.length) + -arg2.length + 32], Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + 192 len floor32(arg2.length) + -ceil32(arg2.length) + 32], ownerOf[arg1], arg1
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if sub_3ac19351[arg3] != msg.sender:
            require stor11[stor8[arg3]][msg.sender]
    require ownerOf[arg3] == arg1
    require arg2
    if sub_3ac19351[arg3]:
        sub_3ac19351[arg3] = 0
    if arg1:
        balanceOf[address(arg1)]--
        sub_3ac19351[arg3] = 0
        require sub_1f8879bd[address(arg1)]
        require sub_1f8879bd[address(arg1)] - 1 < sub_1f8879bd[address(arg1)]
        if stor14[arg3] != sub_1f8879bd[address(arg1)] - 1:
            require stor14[arg3] < sub_1f8879bd[address(arg1)]
            sub_1f8879bd[address(arg1)][stor14[arg3]] = sub_1f8879bd[address(arg1)][sub_1f8879bd[address(arg1)]]
        sub_1f8879bd[address(arg1)]--
        if sub_1f8879bd[address(arg1)] > sub_1f8879bd[address(arg1)] - 1:
            idx = sub_1f8879bd[address(arg1)] - 1
            while sub_1f8879bd[address(arg1)] > idx:
                sub_1f8879bd[address(arg1)][idx] = 0
                idx = idx + 1
                continue 
        if stor14[arg3] != sub_1f8879bd[address(arg1)] - 1:
            stor14[stor13[address(arg1)][stor13[address(arg1)]]] = stor14[arg3]
        stor14[arg3] = 0
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    sub_1f8879bd[address(arg2)]++
    sub_1f8879bd[address(arg2)][sub_1f8879bd[address(arg2)]] = arg3
    stor14[arg3] = sub_1f8879bd[address(arg2)]
    emit Transfer(arg1, arg2, arg3);
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
    if ownerOf[arg3] != msg.sender:
        if sub_3ac19351[arg3] != msg.sender:
            require stor11[stor8[arg3]][msg.sender]
    require ownerOf[arg3] == arg1
    require arg2
    if sub_3ac19351[arg3]:
        sub_3ac19351[arg3] = 0
    if arg1:
        balanceOf[address(arg1)]--
        sub_3ac19351[arg3] = 0
        require sub_1f8879bd[address(arg1)]
        require sub_1f8879bd[address(arg1)] - 1 < sub_1f8879bd[address(arg1)]
        if stor14[arg3] != sub_1f8879bd[address(arg1)] - 1:
            require stor14[arg3] < sub_1f8879bd[address(arg1)]
            sub_1f8879bd[address(arg1)][stor14[arg3]] = sub_1f8879bd[address(arg1)][sub_1f8879bd[address(arg1)]]
        sub_1f8879bd[address(arg1)]--
        if sub_1f8879bd[address(arg1)] > sub_1f8879bd[address(arg1)] - 1:
            idx = sub_1f8879bd[address(arg1)] - 1
            while sub_1f8879bd[address(arg1)] > idx:
                sub_1f8879bd[address(arg1)][idx] = 0
                idx = idx + 1
                continue 
        if stor14[arg3] != sub_1f8879bd[address(arg1)] - 1:
            stor14[stor13[address(arg1)][stor13[address(arg1)]]] = stor14[arg3]
        stor14[arg3] = 0
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    sub_1f8879bd[address(arg2)]++
    sub_1f8879bd[address(arg2)][sub_1f8879bd[address(arg2)]] = arg3
    stor14[arg3] = sub_1f8879bd[address(arg2)]
    emit Transfer(arg1, arg2, arg3);
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

function makeOffer(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require not uint8(stor1.length.field_160)
    if msg.value <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x2e4f666665722076616c7565206d7573742062652067726561746572207468616e207a65726f,
                    mem[202 len 26]
    require uint8(sub_9b8ae3a8[arg1].field_0) <= 5
    if uint8(sub_9b8ae3a8[arg1].field_0) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    49,
                    0xfe4c656d6d61206d75737420657869737420616e64206e6f6e2d7075626c696320746f206d616b6520616e206f66666572,
                    mem[213 len 15]
    if not offers[arg1].field_256:
        address(offers[arg1].field_0) = msg.sender
        offers[arg1].field_256 = msg.value
        emit 0xe686eba5: msg.value, msg.sender, arg1
        escrow[address(msg.sender)] += msg.value * stor4 / 10000
        stor3 += msg.value * stor4 / 10000
    else:
        if msg.value <= offers[arg1].field_256:
            revert with 0, 
                        32,
                        59,
                        0x2e426964206d75737420626520686967686572207468616e20616e206578697374696e672062696420666f72207468652073616d65206c656d6d61,
                        mem[479 len 5]
        address(offers[arg1].field_0) = msg.sender
        offers[arg1].field_256 = msg.value
        emit 0xe686eba5: msg.value, msg.sender, arg1
        emit 0x4d72f5c8: offers[arg1].field_256, address(offers[arg1].field_0), arg1
        escrow[address(msg.sender)] += msg.value * stor4 / 10000
        stor3 += msg.value * stor4 / 10000
        if address(offers[arg1].field_0):
            if offers[arg1].field_256 * stor4 / 10000 > escrow[address(stor63[arg1].field_0)]:
                revert with 0, 32, 41, 0x2e4e6f7420656e6f7567682066756e647320696e20657363726f7720746f207769746864726177616c, mem[461 len 23]
            escrow[address(stor63[arg1].field_0)] -= offers[arg1].field_256 * stor4 / 10000
            stor3 -= offers[arg1].field_256 * stor4 / 10000
            call address(offers[arg1].field_0) with:
               value offers[arg1].field_256 * stor4 / 10000 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}

function acceptOffer(uint256 arg1) {
    require calldata.size - 4 >= 32
    require not uint8(stor1.length.field_160)
    if ownerOf[arg1] != msg.sender:
        if not stor11[stor8[arg1]][msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0x2e53656e6465722063616e6e6f74206f706572617465206f6e20746865206c656d6d61,
                        mem[199 len 29]
    if not offers[arg1].field_256:
        revert with 0, 'No offer exists.'
    address(offers[arg1].field_0) = 0
    offers[arg1].field_256 = 0
    emit 0xb9e33a1c: offers[arg1].field_256, ownerOf[arg1], address(offers[arg1].field_0), arg1
    if sub_3ac19351[arg1]:
        sub_3ac19351[arg1] = 0
    if ownerOf[arg1]:
        balanceOf[stor8[arg1]]--
        sub_3ac19351[arg1] = 0
        require sub_1f8879bd[stor8[arg1]]
        require sub_1f8879bd[stor8[arg1]] - 1 < sub_1f8879bd[stor8[arg1]]
        if stor14[arg1] != sub_1f8879bd[stor8[arg1]] - 1:
            require stor14[arg1] < sub_1f8879bd[stor8[arg1]]
            sub_1f8879bd[stor8[arg1]][stor14[arg1]] = sub_1f8879bd[stor8[arg1]][sub_1f8879bd[stor8[arg1]]]
        sub_1f8879bd[stor8[arg1]]--
        if sub_1f8879bd[stor8[arg1]] > sub_1f8879bd[stor8[arg1]] - 1:
            idx = sub_1f8879bd[stor8[arg1]] - 1
            while sub_1f8879bd[stor8[arg1]] > idx:
                sub_1f8879bd[stor8[arg1]][idx] = 0
                idx = idx + 1
                continue 
        if stor14[arg1] != sub_1f8879bd[stor8[arg1]] - 1:
            stor14[stor13[stor8[arg1]][stor13[stor8[arg1]]]] = stor14[arg1]
        stor14[arg1] = 0
    balanceOf[address(stor63[arg1].field_0)]++
    ownerOf[arg1] = address(offers[arg1].field_0)
    sub_1f8879bd[address(stor63[arg1].field_0)]++
    sub_1f8879bd[address(stor63[arg1].field_0)][sub_1f8879bd[address(stor63[arg1].field_0)]] = arg1
    stor14[arg1] = sub_1f8879bd[address(stor63[arg1].field_0)]
    emit Transfer(ownerOf[arg1], address(offers[arg1].field_0), arg1);
    if offers[arg1].field_256 * stor4 / 10000 > escrow[address(stor63[arg1].field_0)]:
        revert with 0, 32, 41, 0x2e4e6f7420656e6f7567682066756e647320696e20657363726f7720746f207769746864726177616c, mem[333 len 23]
    escrow[address(stor63[arg1].field_0)] -= offers[arg1].field_256 * stor4 / 10000
    stor3 -= offers[arg1].field_256 * stor4 / 10000
    call ownerOf[arg1] with:
       value offers[arg1].field_256 * stor4 / 10000 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 8
    require ownerOf[arg1]
    if not arg1:
        mem[192] = 'https://lexiconomy.org/lemma-id/'
        mem[224 len 0] = None
        mem[225] = 32
        mem[257] = mem[160]
        mem[289 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        if not mem[160] % 32:
            return 32, mem[257 len mem[160] + 32]
        mem[floor32(mem[160]) + 289] = mem[floor32(mem[160]) + -(mem[160] % 32) + 321 len mem[160] % 32]
        return Array(len=mem[160], data=mem[289 len floor32(mem[160]) + 32])
    s = 0
    idx = arg1
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    mem[96] = s
    mem[64] = ceil32(s) + 128
    if not s:
        t = s - 1
        idx = arg1
        while idx:
            require t < mem[96]
            mem[t + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _59 = mem[64]
        mem[mem[64] + 32] = 'https://lexiconomy.org/lemma-id/'
        _60 = mem[96]
        mem[mem[64] + 64 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 96 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
        _90 = mem[64]
        mem[64] = _60 + _59 + 64
        mem[_60 + _59 + 64] = 32
        mem[_60 + _59 + 96] = mem[_90]
        _98 = mem[_90]
        mem[_60 + _59 + 128 len ceil32(mem[_90])] = mem[_90 + 32 len ceil32(mem[_90])]
        if not _98 % 32:
            return 32, mem[_60 + _59 + 96 len _98 + 32]
        mem[floor32(_98) + _60 + _59 + 128] = mem[floor32(_98) + _60 + _59 + -(_98 % 32) + 160 len _98 % 32]
        return 32, mem[_60 + _59 + 96 len floor32(_98) + 64]
    mem[128 len s] = code.data[19410 len s]
    t = s - 1
    idx = arg1
    while idx:
        require t < mem[96]
        mem[t + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _61 = mem[64]
    mem[mem[64] + 32] = 'https://lexiconomy.org/lemma-id/'
    _62 = mem[96]
    mem[mem[64] + 64 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 96 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
    _94 = mem[64]
    mem[64] = _62 + _61 + 64
    mem[_62 + _61 + 64] = 32
    mem[_62 + _61 + 96] = mem[_94]
    _101 = mem[_94]
    mem[_62 + _61 + 128 len ceil32(mem[_94])] = mem[_94 + 32 len ceil32(mem[_94])]
    if not _101 % 32:
        return 32, mem[_62 + _61 + 96 len _101 + 32]
    mem[floor32(_101) + _62 + _61 + 128] = mem[floor32(_101) + _62 + _61 + -(_101 % 32) + 160 len _101 % 32]
    return 32, mem[_62 + _61 + 96 len floor32(_101) + 64]
}

function sub_ffcdb5be(?) {
    require not uint8(stor1.length.field_160)
    if sub_73bad966:
        if block.number > sub_674657bd:
            mem[64] = 160
            idx = 0
            s = 96
            s = 0
            s = 0
            while uint8(idx) < sub_73bad966:
                require uint8(idx) < 25
                mem[0] = sub_c1e96206[uint8(idx)]
                mem[32] = 62
                _22 = sha3(sub_c1e96206[uint8(idx)], 62)
                _23 = mem[64]
                mem[64] = mem[64] + 64
                mem[_23] = address(bids[stor37[uint8(idx)]].field_0)
                mem[_23 + 32] = bids[stor37[uint8(idx)]].field_256
                if bids[stor37[uint8(idx)]].field_256 * stor4 / 10000 > escrow[address(stor62[stor37[uint8(idx)]].field_0)]:
                    revert with 0, 
                                32,
                                41,
                                0x2e4e6f7420656e6f7567682066756e647320696e20657363726f7720746f207769746864726177616c,
                                mem[mem[64] + 109 len 23]
                escrow[address(stor62[stor37[uint8(idx)]].field_0)] -= bids[stor37[uint8(idx)]].field_256 * stor4 / 10000
                stor3 -= bids[stor37[uint8(idx)]].field_256 * stor4 / 10000
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length] = sub_c1e96206[uint8(idx)]
                stor12[stor37[uint8(idx)]] = tokenByIndex.length
                balanceOf[address(stor62[stor37[uint8(idx)]].field_0)]++
                ownerOf[stor37[uint8(idx)]] = address(bids[stor37[uint8(idx)]].field_0)
                sub_1f8879bd[address(stor62[stor37[uint8(idx)]].field_0)]++
                sub_1f8879bd[address(stor62[stor37[uint8(idx)]].field_0)][sub_1f8879bd[address(stor62[stor37[uint8(idx)]].field_0)]] = sub_c1e96206[uint8(idx)]
                stor14[stor37[uint8(idx)]] = sub_1f8879bd[address(stor62[stor37[uint8(idx)]].field_0)]
                mem[0] = sub_c1e96206[uint8(idx)]
                mem[32] = 7
                uint8(sub_9b8ae3a8[stor37[uint8(idx)]].field_0) = 1
                Mask(248, 0, sub_9b8ae3a8[stor37[uint8(idx)]].field_8) = sub_bbc1fdf6
                sub_9b8ae3a8[stor37[uint8(idx)]].field_256 % 1 = 0
                mem[mem[64]] = bids[stor37[uint8(idx)]].field_256
                emit 0x91458cb6: bids[stor37[uint8(idx)]].field_256, address(bids[stor37[uint8(idx)]].field_0), sub_c1e96206[uint8(idx)], sub_bbc1fdf6
                emit Transfer(0, address(bids[stor37[uint8(idx)]].field_0), sub_c1e96206[uint8(idx)]);
                idx = idx + 1
                s = _23
                s = sub_c1e96206[uint8(idx)]
                s = bids[stor37[uint8(idx)]].field_256 + s
                continue 
            if not uint8(stor17.field_8):
                require sub_052695c1
                sub_86dbef02 = stor1[_22].field_0 * None / sub_052695c1
            minBid = 0
            sub_f41bd481 = 0
            idx = 0
            while uint8(idx) < sub_73bad966:
                require uint8(idx) < 25
                mem[0] = sub_c1e96206[uint8(idx)]
                mem[32] = 62
                address(bids[stor37[uint8(idx)]].field_0) = 0
                bids[stor37[uint8(idx)]].field_256 = 0
                idx = idx + 1
                continue 
            sub_73bad966 = 0
            idx = 37
            while 62 > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
            sub_bbc1fdf6 = uint32(sub_bbc1fdf6 + 1)
}

function sub_55e1ef0b(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + ('cd', 4).length + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require not uint8(stor1.length.field_160)
    if not ('cd', 36).length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x2e4d75737420636f6d706f7365206174206c656173742074776f206c656d6d6173,
                    mem[197 len 31]
    mem[96 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
    require uint8(sub_9b8ae3a8[call.data[cd[4] + 36 len ('cd', 4).length]].field_0) <= 5
    if uint8(sub_9b8ae3a8[call.data[cd[4] + 36 len ('cd', 4).length]].field_0):
        revert with 0, 'Lemma already exists.'
    mem[0] = sha3(call.data[cd[4] + 36 len ('cd', 4).length])
    mem[32] = 62
    if bids[call.data[cd[4] + 36 len ('cd', 4).length]].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x654c656d6d612068617320612062696420696e207468652063757272656e742072656c656173652061756374696f6e,
                    mem[211 len 17]
    require ('cd', 36).length
    mem[96] = 0
    mem[64] = 128
    idx = 0
    s = 96
    while idx < ('cd', 4).length:
        if idx < ('cd', 36)[0]:
            require idx < ('cd', 4).length
            _356 = mem[64]
            _357 = mem[s]
            u = s + 32
            v = mem[64] + 32
            t = mem[s]
            while t >= 32:
                mem[v] = mem[u]
                u = u + 32
                v = v + 32
                t = t - 32
                continue 
            mem[mem[64] + floor32(mem[s]) + 32] = mem[s + floor32(mem[s]) + -(mem[s] % 32) + 64 len mem[s] % 32] or Mask(8 * -(mem[s] % 32) + 32, -(8 * -(mem[s] % 32) + 32) + 256, mem[mem[64] + floor32(mem[s]) + 32])
            mem[_357 + _356 + 32] = Mask(8, 248, cd[(u + cd[4] + 36)])
            _741 = mem[64]
            mem[mem[64]] = _357 + _356 + -mem[64] + 1
            mem[64] = _357 + _356 + 33
            u = u + 1
            s = _741
            continue 
        _354 = sha3(mem[s + 32 len mem[s]])
        mem[0] = sha3(mem[s + 32 len mem[s]])
        mem[32] = 7
        require uint8(sub_9b8ae3a8[mem[0]].field_0) <= 5
        if not uint8(sub_9b8ae3a8[mem[0]].field_0):
            revert with 0, 'Sub lemma cannot be composed.'
        require uint8(sub_9b8ae3a8[mem[0]].field_0) <= 5
        if uint8(sub_9b8ae3a8[mem[0]].field_0) == 2:
            revert with 0, 'Sub lemma cannot be composed.'
        require uint8(sub_9b8ae3a8[mem[0]].field_0) <= 5
        if uint8(sub_9b8ae3a8[mem[0]].field_0) == 4:
            revert with 0, 
                        32,
                        73,
                        0x2e436f6d706f736974696f6e2063616e6e6f7420737461727420776974682077686974657370616365206f72206861766520636f6e7365637574697665207768697465737061636573,
                        mem[mem[64] + 141 len 23]
        require uint8(sub_9b8ae3a8[mem[0]].field_0) <= 5
        if uint8(sub_9b8ae3a8[mem[0]].field_0) == 4:
            _378 = mem[64]
            mem[mem[64]] = 0
            mem[64] = mem[64] + 32
            if idx < ('cd', 4).length:
                t = _378 + 32
                u = _378 + 64
                s = mem[_378]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_378 + floor32(mem[_378]) + 64] = !(256^(-(mem[_378] % 32) + 32) - 1) and mem[_378 + floor32(mem[_378]) + 32] or 256^(-(mem[_378] % 32) + 32) - 1 and mem[_378 + floor32(mem[_378]) + 64]
                mem[_378 + mem[_378] + 64] = Mask(8, 248, cd[(idx + cd[4] + 36)])
                mem[_378 + 32] = mem[_378] + 1
                mem[64] = _378 + mem[_378] + 65
                if 0 >= ('cd', 36).length - 1:
                    idx = idx + 1
                    s = _378 + 32
                    continue 
                if 1 < ('cd', 36).length:
                    idx = idx + 1
                    s = _378 + 32
                    continue 
        else:
            if uint8(sub_9b8ae3a8[mem[0]].field_0) <= 5:
                if uint8(sub_9b8ae3a8[mem[0]].field_0) == 3:
                    _395 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    if idx < ('cd', 4).length:
                        t = _395 + 32
                        u = _395 + 64
                        s = mem[_395]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_395 + floor32(mem[_395]) + 64] = !(256^(-(mem[_395] % 32) + 32) - 1) and mem[_395 + floor32(mem[_395]) + 32] or 256^(-(mem[_395] % 32) + 32) - 1 and mem[_395 + floor32(mem[_395]) + 64]
                        mem[_395 + mem[_395] + 64] = Mask(8, 248, cd[(idx + cd[4] + 36)])
                        mem[_395 + 32] = mem[_395] + 1
                        mem[64] = _395 + mem[_395] + 65
                        if 0 >= ('cd', 36).length - 1:
                            idx = idx + 1
                            s = _395 + 32
                            continue 
                        if 1 < ('cd', 36).length:
                            idx = idx + 1
                            s = _395 + 32
                            continue 
                else:
                    if not ownerOf[_354]:
                        if sub_3cd6d89a[_354]:
                            stor3 += sub_3cd6d89a[_354] * stor4 / 10000
                            mem[0] = ownerOf[_354]
                            mem[32] = 16
                            sub_2283e668[stor8[_354]] += sub_3cd6d89a[_354] * stor4 / 10000
                            _543 = mem[64]
                            mem[mem[64]] = 0
                            mem[64] = mem[64] + 32
                            if idx < ('cd', 4).length:
                                _576 = mem[_543]
                                t = _543 + 32
                                u = mem[64] + 32
                                s = mem[_543]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_543]) + 32] = !(256^(-(mem[_543] % 32) + 32) - 1) and mem[_543 + floor32(mem[_543]) + 32] or 256^(-(mem[_543] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_543]) + 32]
                                mem[_543 + _576 + 64] = Mask(8, 248, cd[(idx + cd[4] + 36)])
                                _693 = mem[64]
                                mem[mem[64]] = _543 + _576 + -mem[64] + 33
                                mem[64] = _543 + _576 + 65
                                if 0 >= ('cd', 36).length - 1:
                                    idx = idx + 1
                                    s = _693
                                    continue 
                                if 1 < ('cd', 36).length:
                                    idx = idx + 1
                                    s = _693
                                    continue 
                        else:
                            mem[0] = _354
                            mem[32] = 8
                            if not sub_86dbef02:
                                _455 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                if idx < ('cd', 4).length:
                                    _468 = mem[_455]
                                    t = _455 + 32
                                    u = mem[64] + 32
                                    s = mem[_455]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[mem[64] + floor32(mem[_455]) + 32] = !(256^(-(mem[_455] % 32) + 32) - 1) and mem[_455 + floor32(mem[_455]) + 32] or 256^(-(mem[_455] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_455]) + 32]
                                    mem[_455 + _468 + 64] = Mask(8, 248, cd[(idx + cd[4] + 36)])
                                    _701 = mem[64]
                                    mem[mem[64]] = _455 + _468 + -mem[64] + 33
                                    mem[64] = _455 + _468 + 65
                                    if 0 >= ('cd', 36).length - 1:
                                        idx = idx + 1
                                        s = _701
                                        continue 
                                    if 1 < ('cd', 36).length:
                                        idx = idx + 1
                                        s = _701
                                        continue 
                            else:
                                stor3 += sub_86dbef02 * stor4 / 10000
                                mem[0] = ownerOf[_354]
                                mem[32] = 16
                                sub_2283e668[stor8[_354]] += sub_86dbef02 * stor4 / 10000
                                _544 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                if idx < ('cd', 4).length:
                                    t = _544 + 32
                                    u = _544 + 64
                                    s = mem[_544]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_544 + floor32(mem[_544]) + 64] = !(256^(-(mem[_544] % 32) + 32) - 1) and mem[_544 + floor32(mem[_544]) + 32] or 256^(-(mem[_544] % 32) + 32) - 1 and mem[_544 + floor32(mem[_544]) + 64]
                                    mem[_544 + mem[_544] + 64] = Mask(8, 248, cd[(idx + cd[4] + 36)])
                                    mem[_544 + 32] = mem[_544] + 1
                                    mem[64] = _544 + mem[_544] + 65
                                    if 0 >= ('cd', 36).length - 1:
                                        idx = idx + 1
                                        s = _544 + 32
                                        continue 
                                    if 1 < ('cd', 36).length:
                                        idx = idx + 1
                                        s = _544 + 32
                                        continue 
                    else:
                        if not msg.sender:
                            if sub_3cd6d89a[_354]:
                                stor3 += sub_3cd6d89a[_354] * stor4 / 10000
                                mem[0] = ownerOf[_354]
                                mem[32] = 16
                                sub_2283e668[stor8[_354]] += sub_3cd6d89a[_354] * stor4 / 10000
                                _579 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                if idx < ('cd', 4).length:
                                    _610 = mem[_579]
                                    t = _579 + 32
                                    u = mem[64] + 32
                                    s = mem[_579]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[mem[64] + floor32(mem[_579]) + 32] = !(256^(-(mem[_579] % 32) + 32) - 1) and mem[_579 + floor32(mem[_579]) + 32] or 256^(-(mem[_579] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_579]) + 32]
                                    mem[_579 + _610 + 64] = Mask(8, 248, cd[(idx + cd[4] + 36)])
                                    _705 = mem[64]
                                    mem[mem[64]] = _579 + _610 + -mem[64] + 33
                                    mem[64] = _579 + _610 + 65
                                    if 0 >= ('cd', 36).length - 1:
                                        idx = idx + 1
                                        s = _705
                                        continue 
                                    if 1 < ('cd', 36).length:
                                        idx = idx + 1
                                        s = _705
                                        continue 
                            else:
                                mem[0] = _354
                                mem[32] = 8
                                if not sub_86dbef02:
                                    _469 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    if idx < ('cd', 4).length:
                                        _493 = mem[_469]
                                        t = _469 + 32
                                        u = mem[64] + 32
                                        s = mem[_469]
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_469]) + 32] = !(256^(-(mem[_469] % 32) + 32) - 1) and mem[_469 + floor32(mem[_469]) + 32] or 256^(-(mem[_469] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_469]) + 32]
                                        mem[_469 + _493 + 64] = Mask(8, 248, cd[(idx + cd[4] + 36)])
                                        _713 = mem[64]
                                        mem[mem[64]] = _469 + _493 + -mem[64] + 33
                                        mem[64] = _469 + _493 + 65
                                        if 0 >= ('cd', 36).length - 1:
                                            idx = idx + 1
                                            s = _713
                                            continue 
                                        if 1 < ('cd', 36).length:
                                            idx = idx + 1
                                            s = _713
                                            continue 
                                else:
                                    stor3 += sub_86dbef02 * stor4 / 10000
                                    mem[0] = ownerOf[_354]
                                    mem[32] = 16
                                    sub_2283e668[stor8[_354]] += sub_86dbef02 * stor4 / 10000
                                    _580 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    if idx < ('cd', 4).length:
                                        _612 = mem[_580]
                                        t = _580 + 32
                                        u = mem[64] + 32
                                        s = mem[_580]
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_580]) + 32] = !(256^(-(mem[_580] % 32) + 32) - 1) and mem[_580 + floor32(mem[_580]) + 32] or 256^(-(mem[_580] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_580]) + 32]
                                        mem[_580 + _612 + 64] = Mask(8, 248, cd[(idx + cd[4] + 36)])
                                        _709 = mem[64]
                                        mem[mem[64]] = _580 + _612 + -mem[64] + 33
                                        mem[64] = _580 + _612 + 65
                                        if 0 >= ('cd', 36).length - 1:
                                            idx = idx + 1
                                            s = _709
                                            continue 
                                        if 1 < ('cd', 36).length:
                                            idx = idx + 1
                                            s = _709
                                            continue 
                        else:
                            if ownerOf[_354] == msg.sender:
                                mem[0] = _354
                                mem[32] = 8
                                _470 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                if idx < ('cd', 4).length:
                                    _495 = mem[_470]
                                    t = _470 + 32
                                    u = mem[64] + 32
                                    s = mem[_470]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[mem[64] + floor32(mem[_470]) + 32] = !(256^(-(mem[_470] % 32) + 32) - 1) and mem[_470 + floor32(mem[_470]) + 32] or 256^(-(mem[_470] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_470]) + 32]
                                    mem[_470 + _495 + 64] = Mask(8, 248, cd[(idx + cd[4] + 36)])
                                    _717 = mem[64]
                                    mem[mem[64]] = _470 + _495 + -mem[64] + 33
                                    mem[64] = _470 + _495 + 65
                                    if 0 >= ('cd', 36).length - 1:
                                        idx = idx + 1
                                        s = _717
                                        continue 
                                    if 1 < ('cd', 36).length:
                                        idx = idx + 1
                                        s = _717
                                        continue 
                            else:
                                if stor11[stor8[_354]][address(msg.sender)]:
                                    mem[0] = _354
                                    mem[32] = 8
                                    _496 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    if idx < ('cd', 4).length:
                                        _523 = mem[_496]
                                        t = _496 + 32
                                        u = mem[64] + 32
                                        s = mem[_496]
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_496]) + 32] = !(256^(-(mem[_496] % 32) + 32) - 1) and mem[_496 + floor32(mem[_496]) + 32] or 256^(-(mem[_496] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_496]) + 32]
                                        mem[_496 + _523 + 64] = Mask(8, 248, cd[(idx + cd[4] + 36)])
                                        _733 = mem[64]
                                        mem[mem[64]] = _496 + _523 + -mem[64] + 33
                                        mem[64] = _496 + _523 + 65
                                        if 0 >= ('cd', 36).length - 1:
                                            idx = idx + 1
                                            s = _733
                                            continue 
                                        if 1 < ('cd', 36).length:
                                            idx = idx + 1
                                            s = _733
                                            continue 
                                else:
                                    if sub_3cd6d89a[_354]:
                                        stor3 += sub_3cd6d89a[_354] * stor4 / 10000
                                        mem[0] = ownerOf[_354]
                                        mem[32] = 16
                                        sub_2283e668[stor8[_354]] += sub_3cd6d89a[_354] * stor4 / 10000
                                        _639 = mem[64]
                                        mem[mem[64]] = 0
                                        mem[64] = mem[64] + 32
                                        if idx < ('cd', 4).length:
                                            _664 = mem[_639]
                                            t = _639 + 32
                                            u = mem[64] + 32
                                            s = mem[_639]
                                            while s >= 32:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s - 32
                                                continue 
                                            mem[mem[64] + floor32(mem[_639]) + 32] = !(256^(-(mem[_639] % 32) + 32) - 1) and mem[_639 + floor32(mem[_639]) + 32] or 256^(-(mem[_639] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_639]) + 32]
                                            mem[_639 + _664 + 64] = Mask(8, 248, cd[(idx + cd[4] + 36)])
                                            _721 = mem[64]
                                            mem[mem[64]] = _639 + _664 + -mem[64] + 33
                                            mem[64] = _639 + _664 + 65
                                            if 0 >= ('cd', 36).length - 1:
                                                idx = idx + 1
                                                s = _721
                                                continue 
                                            if 1 < ('cd', 36).length:
                                                idx = idx + 1
                                                s = _721
                                                continue 
                                    else:
                                        mem[0] = _354
                                        mem[32] = 8
                                        if not sub_86dbef02:
                                            _521 = mem[64]
                                            mem[mem[64]] = 0
                                            mem[64] = mem[64] + 32
                                            if idx < ('cd', 4).length:
                                                _556 = mem[_521]
                                                t = _521 + 32
                                                u = mem[64] + 32
                                                s = mem[_521]
                                                while s >= 32:
                                                    mem[u] = mem[t]
                                                    t = t + 32
                                                    u = u + 32
                                                    s = s - 32
                                                    continue 
                                                mem[mem[64] + floor32(mem[_521]) + 32] = !(256^(-(mem[_521] % 32) + 32) - 1) and mem[_521 + floor32(mem[_521]) + 32] or 256^(-(mem[_521] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_521]) + 32]
                                                mem[_521 + _556 + 64] = Mask(8, 248, cd[(idx + cd[4] + 36)])
                                                _729 = mem[64]
                                                mem[mem[64]] = _521 + _556 + -mem[64] + 33
                                                mem[64] = _521 + _556 + 65
                                                if 0 >= ('cd', 36).length - 1:
                                                    idx = idx + 1
                                                    s = _729
                                                    continue 
                                                if 1 < ('cd', 36).length:
                                                    idx = idx + 1
                                                    s = _729
                                                    continue 
                                        else:
                                            stor3 += sub_86dbef02 * stor4 / 10000
                                            mem[0] = ownerOf[_354]
                                            mem[32] = 16
                                            sub_2283e668[stor8[_354]] += sub_86dbef02 * stor4 / 10000
                                            _640 = mem[64]
                                            mem[mem[64]] = 0
                                            mem[64] = mem[64] + 32
                                            if idx < ('cd', 4).length:
                                                _666 = mem[_640]
                                                t = _640 + 32
                                                u = mem[64] + 32
                                                s = mem[_640]
                                                while s >= 32:
                                                    mem[u] = mem[t]
                                                    t = t + 32
                                                    u = u + 32
                                                    s = s - 32
                                                    continue 
                                                mem[mem[64] + floor32(mem[_640]) + 32] = !(256^(-(mem[_640] % 32) + 32) - 1) and mem[_640 + floor32(mem[_640]) + 32] or 256^(-(mem[_640] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_640]) + 32]
                                                mem[_640 + _666 + 64] = Mask(8, 248, cd[(idx + cd[4] + 36)])
                                                _725 = mem[64]
                                                mem[mem[64]] = _640 + _666 + -mem[64] + 33
                                                mem[64] = _640 + _666 + 65
                                                if 0 >= ('cd', 36).length - 1:
                                                    idx = idx + 1
                                                    s = _725
                                                    continue 
                                                if 1 < ('cd', 36).length:
                                                    idx = idx + 1
                                                    s = _725
                                                    continue 
        revert
    _351 = sha3(mem[s + 32 len mem[s]])
    mem[0] = sha3(mem[s + 32 len mem[s]])
    require uint8(sub_9b8ae3a8[mem[0]].field_0) <= 5
    if not uint8(sub_9b8ae3a8[mem[0]].field_0):
        revert with 0, 
                    32,
                    52,
                    0x2e537562206c656d6d612063616e6e6f7420626520636f6d706f736564206f722073656e646572206c61636b7320726967687473,
                    mem[mem[64] + 120 len 12]
    require uint8(sub_9b8ae3a8[mem[0]].field_0) <= 5
    if uint8(sub_9b8ae3a8[mem[0]].field_0) == 2:
        revert with 0, 
                    32,
                    52,
                    0x2e537562206c656d6d612063616e6e6f7420626520636f6d706f736564206f722073656e646572206c61636b7320726967687473,
                    mem[mem[64] + 120 len 12]
    require uint8(sub_9b8ae3a8[mem[0]].field_0) <= 5
    if uint8(sub_9b8ae3a8[mem[0]].field_0) == 4:
        revert with 0, 32, 38, 0x2e436f6d706f736974696f6e2063616e6e6f7420656e64207769746820776869746573706163, mem[mem[64] + 106 len 26]
    require uint8(sub_9b8ae3a8[mem[0]].field_0) <= 5
    if uint8(sub_9b8ae3a8[mem[0]].field_0) == 4:
        if msg.value < sub_86dbef02:
            revert with 0, 32, 34, 0x2e436f6d706f736974696f6e20726571756972657320612068696768657220666565, mem[mem[64] + 102 len 30]
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = sha3(call.data[cd[4] + 36 len ('cd', 4).length])
        stor12[call.data[cd[4] + 36 len ('cd', 4).length]] = tokenByIndex.length
        balanceOf[address(msg.sender)]++
        ownerOf[call.data[cd[4] + 36 len ('cd', 4).length]] = msg.sender
        sub_1f8879bd[address(msg.sender)]++
        sub_1f8879bd[address(msg.sender)][sub_1f8879bd[address(msg.sender)]] = sha3(call.data[cd[4] + 36 len ('cd', 4).length])
        stor14[call.data[cd[4] + 36 len ('cd', 4).length]] = sub_1f8879bd[address(msg.sender)]
        mem[32] = 7
        uint8(sub_9b8ae3a8[call.data[cd[4] + 36 len ('cd', 4).length]].field_0) = 1
        Mask(248, 0, sub_9b8ae3a8[call.data[cd[4] + 36 len ('cd', 4).length]].field_8) = sub_bbc1fdf6
        sub_9b8ae3a8[call.data[cd[4] + 36 len ('cd', 4).length]].field_256 % 1 = 0
        emit 0x91458cb6: 0, msg.sender, sha3(call.data[cd[4] + 36 len ('cd', 4).length]), sub_bbc1fdf6
        emit Transfer(0, msg.sender, sha3(call.data[cd[4] + 36 len ('cd', 4).length]));
        _396 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = ('cd', 4).length
        mem[mem[64] + 96 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
        mem[('cd', 4).length + mem[64] + 96] = 0
        mem[mem[64] + 32] = ceil32(('cd', 4).length) + 96
        mem[_396 + ceil32(('cd', 4).length) + 96] = ('cd', 36).length
        mem[_396 + ceil32(('cd', 4).length) + 128 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
        mem[(32 * ('cd', 36).length) + _396 + ceil32(('cd', 4).length) + 128] = 0
        emit 0x612434bc: mem[mem[64] len _396 + ceil32(('cd', 4).length) + floor32(('cd', 36).length) + -mem[64] + 128], msg.sender
    else:
        require uint8(sub_9b8ae3a8[mem[0]].field_0) <= 5
        if uint8(sub_9b8ae3a8[mem[0]].field_0) == 3:
            if msg.value < sub_86dbef02:
                revert with 0, 32, 34, 0x2e436f6d706f736974696f6e20726571756972657320612068696768657220666565, mem[mem[64] + 102 len 30]
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = sha3(call.data[cd[4] + 36 len ('cd', 4).length])
            stor12[call.data[cd[4] + 36 len ('cd', 4).length]] = tokenByIndex.length
            balanceOf[address(msg.sender)]++
            ownerOf[call.data[cd[4] + 36 len ('cd', 4).length]] = msg.sender
            sub_1f8879bd[address(msg.sender)]++
            sub_1f8879bd[address(msg.sender)][sub_1f8879bd[address(msg.sender)]] = sha3(call.data[cd[4] + 36 len ('cd', 4).length])
            stor14[call.data[cd[4] + 36 len ('cd', 4).length]] = sub_1f8879bd[address(msg.sender)]
            mem[32] = 7
            uint8(sub_9b8ae3a8[call.data[cd[4] + 36 len ('cd', 4).length]].field_0) = 1
            Mask(248, 0, sub_9b8ae3a8[call.data[cd[4] + 36 len ('cd', 4).length]].field_8) = sub_bbc1fdf6
            sub_9b8ae3a8[call.data[cd[4] + 36 len ('cd', 4).length]].field_256 % 1 = 0
            emit 0x91458cb6: 0, msg.sender, sha3(call.data[cd[4] + 36 len ('cd', 4).length]), sub_bbc1fdf6
            emit Transfer(0, msg.sender, sha3(call.data[cd[4] + 36 len ('cd', 4).length]));
            _420 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = ('cd', 4).length
            mem[mem[64] + 96 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
            mem[('cd', 4).length + mem[64] + 96] = 0
            mem[mem[64] + 32] = ceil32(('cd', 4).length) + 96
            mem[_420 + ceil32(('cd', 4).length) + 96] = ('cd', 36).length
            mem[_420 + ceil32(('cd', 4).length) + 128 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
            mem[(32 * ('cd', 36).length) + _420 + ceil32(('cd', 4).length) + 128] = 0
            emit 0x612434bc: mem[mem[64] len _420 + ceil32(('cd', 4).length) + floor32(('cd', 36).length) + -mem[64] + 128], msg.sender
        else:
            if not ownerOf[_351]:
                if sub_3cd6d89a[_351]:
                    stor3 += sub_3cd6d89a[_351] * stor4 / 10000
                    mem[0] = ownerOf[_351]
                    sub_2283e668[stor8[_351]] += sub_3cd6d89a[_351] * stor4 / 10000
                    if msg.value < sub_3cd6d89a[_351]:
                        revert with 0, 32, 34, 0x2e436f6d706f736974696f6e20726571756972657320612068696768657220666565, mem[mem[64] + 102 len 30]
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length] = sha3(call.data[cd[4] + 36 len ('cd', 4).length])
                    stor12[call.data[cd[4] + 36 len ('cd', 4).length]] = tokenByIndex.length
                    balanceOf[address(msg.sender)]++
                    ownerOf[call.data[cd[4] + 36 len ('cd', 4).length]] = msg.sender
                    sub_1f8879bd[address(msg.sender)]++
                    sub_1f8879bd[address(msg.sender)][sub_1f8879bd[address(msg.sender)]] = sha3(call.data[cd[4] + 36 len ('cd', 4).length])
                    stor14[call.data[cd[4] + 36 len ('cd', 4).length]] = sub_1f8879bd[address(msg.sender)]
                    mem[32] = 7
                    uint8(sub_9b8ae3a8[call.data[cd[4] + 36 len ('cd', 4).length]].field_0) = 1
                    Mask(248, 0, sub_9b8ae3a8[call.data[cd[4] + 36 len ('cd', 4).length]].field_8) = sub_bbc1fdf6
                    sub_9b8ae3a8[call.data[cd[4] + 36 len ('cd', 4).length]].field_256 % 1 = 0
                    emit 0x91458cb6: 0, msg.sender, sha3(call.data[cd[4] + 36 len ('cd', 4).length]), sub_bbc1fdf6
                    emit Transfer(0, msg.sender, sha3(call.data[cd[4] + 36 len ('cd', 4).length]));
                    _617 = mem[64]
                    mem[mem[64]] = 64
                    mem[mem[64] + 64] = ('cd', 4).length
                    mem[mem[64] + 96 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
                    mem[('cd', 4).length + mem[64] + 96] = 0
                    mem[mem[64] + 32] = ceil32(('cd', 4).length) + 96
                    mem[_617 + ceil32(('cd', 4).length) + 96] = ('cd', 36).length
                    mem[_617 + ceil32(('cd', 4).length) + 128 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                    mem[(32 * ('cd', 36).length) + _617 + ceil32(('cd', 4).length) + 128] = 0
                    emit 0x612434bc: mem[mem[64] len _617 + ceil32(('cd', 4).length) + floor32(('cd', 36).length) + -mem[64] + 128], msg.sender
                else:
                    mem[0] = _351
                    if not sub_86dbef02:
                        if msg.value < sub_86dbef02:
                            revert with 0, 32, 34, 0x2e436f6d706f736974696f6e20726571756972657320612068696768657220666565, mem[mem[64] + 102 len 30]
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length] = sha3(call.data[cd[4] + 36 len ('cd', 4).length])
                        stor12[call.data[cd[4] + 36 len ('cd', 4).length]] = tokenByIndex.length
                        balanceOf[address(msg.sender)]++
                        ownerOf[call.data[cd[4] + 36 len ('cd', 4).length]] = msg.sender
                        sub_1f8879bd[address(msg.sender)]++
                        sub_1f8879bd[address(msg.sender)][sub_1f8879bd[address(msg.sender)]] = sha3(call.data[cd[4] + 36 len ('cd', 4).length])
                        stor14[call.data[cd[4] + 36 len ('cd', 4).length]] = sub_1f8879bd[address(msg.sender)]
                        mem[32] = 7
                        uint8(sub_9b8ae3a8[call.data[cd[4] + 36 len ('cd', 4).length]].field_0) = 1
                        Mask(248, 0, sub_9b8ae3a8[call.data[cd[4] + 36 len ('cd', 4).length]].field_8) = sub_bbc1fdf6
                        sub_9b8ae3a8[call.data[cd[4] + 36 len ('cd', 4).length]].field_256 % 1 = 0
                        emit 0x91458cb6: 0, msg.sender, sha3(call.data[cd[4] + 36 len ('cd', 4).length]), sub_bbc1fdf6
                        emit Transfer(0, msg.sender, sha3(call.data[cd[4] + 36 len ('cd', 4).length]));
                        _501 = mem[64]
                        mem[mem[64]] = 64
                        mem[mem[64] + 64] = ('cd', 4).length
                        mem[mem[64] + 96 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
                        mem[('cd', 4).length + mem[64] + 96] = 0
                        mem[mem[64] + 32] = ceil32(('cd', 4).length) + 96
                        mem[_501 + ceil32(('cd', 4).length) + 96] = ('cd', 36).length
                        mem[_501 + ceil32(('cd', 4).length) + 128 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                        mem[(32 * ('cd', 36).length) + _501 + ceil32(('cd', 4).length) + 128] = 0
                        emit 0x612434bc: mem[mem[64] len _501 + ceil32(('cd', 4).length) + floor32(('cd', 36).length) + -mem[64] + 128], msg.sender
                    else:
                        stor3 += sub_86dbef02 * stor4 / 10000
                        mem[0] = ownerOf[_351]
                        sub_2283e668[stor8[_351]] += sub_86dbef02 * stor4 / 10000
                        if msg.value < sub_86dbef02:
                            revert with 0, 32, 34, 0x2e436f6d706f736974696f6e20726571756972657320612068696768657220666565, mem[mem[64] + 102 len 30]
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length] = sha3(call.data[cd[4] + 36 len ('cd', 4).length])
                        stor12[call.data[cd[4] + 36 len ('cd', 4).length]] = tokenByIndex.length
                        balanceOf[address(msg.sender)]++
                        ownerOf[call.data[cd[4] + 36 len ('cd', 4).length]] = msg.sender
                        sub_1f8879bd[address(msg.sender)]++
                        sub_1f8879bd[address(msg.sender)][sub_1f8879bd[address(msg.sender)]] = sha3(call.data[cd[4] + 36 len ('cd', 4).length])
                        stor14[call.data[cd[4] + 36 len ('cd', 4).length]] = sub_1f8879bd[address(msg.sender)]
                        mem[32] = 7
                        uint8(sub_9b8ae3a8[call.data[cd[4] + 36 len ('cd', 4).length]].field_0) = 1
                        Mask(248, 0, sub_9b8ae3a8[call.data[cd[4] + 36 len ('cd', 4).length]].field_8) = sub_bbc1fdf6
                        sub_9b8ae3a8[call.data[cd[4] + 36 len ('cd', 4).length]].field_256 % 1 = 0
                        emit 0x91458cb6: 0, msg.sender, sha3(call.data[cd[4] + 36 len ('cd', 4).length]), sub_bbc1fdf6
                        emit Transfer(0, msg.sender, sha3(call.data[cd[4] + 36 len ('cd', 4).length]));
                        _619 = mem[64]
                        mem[mem[64]] = 64
                        mem[mem[64] + 64] = ('cd', 4).length
                        mem[mem[64] + 96 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
                        mem[('cd', 4).length + mem[64] + 96] = 0
                        mem[mem[64] + 32] = ceil32(('cd', 4).length) + 96
                        mem[_619 + ceil32(('cd', 4).length) + 96] = ('cd', 36).length
                        mem[_619 + ceil32(('cd', 4).length) + 128 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                        mem[(32 * ('cd', 36).length) + _619 + ceil32(('cd', 4).length) + 128] = 0
                        emit 0x612434bc: mem[mem[64] len _619 + ceil32(('cd', 4).length) + floor32(('cd', 36).length) + -mem[64] + 128], msg.sender
            else:
                if not msg.sender:
                    if sub_3cd6d89a[_351]:
                        stor3 += sub_3cd6d89a[_351] * stor4 / 10000
                        mem[0] = ownerOf[_351]
                        sub_2283e668[stor8[_351]] += sub_3cd6d89a[_351] * stor4 / 10000
                        if msg.value < sub_3cd6d89a[_351]:
                            revert with 0, 32, 34, 0x2e436f6d706f736974696f6e20726571756972657320612068696768657220666565, mem[mem[64] + 102 len 30]
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length] = sha3(call.data[cd[4] + 36 len ('cd', 4).length])
                        stor12[call.data[cd[4] + 36 len ('cd', 4).length]] = tokenByIndex.length
                        balanceOf[address(msg.sender)]++
                        ownerOf[call.data[cd[4] + 36 len ('cd', 4).length]] = msg.sender
                        sub_1f8879bd[address(msg.sender)]++
                        sub_1f8879bd[address(msg.sender)][sub_1f8879bd[address(msg.sender)]] = sha3(call.data[cd[4] + 36 len ('cd', 4).length])
                        stor14[call.data[cd[4] + 36 len ('cd', 4).length]] = sub_1f8879bd[address(msg.sender)]
                        mem[32] = 7
                        uint8(sub_9b8ae3a8[call.data[cd[4] + 36 len ('cd', 4).length]].field_0) = 1
                        Mask(248, 0, sub_9b8ae3a8[call.data[cd[4] + 36 len ('cd', 4).length]].field_8) = sub_bbc1fdf6
                        sub_9b8ae3a8[call.data[cd[4] + 36 len ('cd', 4).length]].field_256 % 1 = 0
                        emit 0x91458cb6: 0, msg.sender, sha3(call.data[cd[4] + 36 len ('cd', 4).length]), sub_bbc1fdf6
                        emit Transfer(0, msg.sender, sha3(call.data[cd[4] + 36 len ('cd', 4).length]));
                        _641 = mem[64]
                        mem[mem[64]] = 64
                        mem[mem[64] + 64] = ('cd', 4).length
                        mem[mem[64] + 96 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
                        mem[('cd', 4).length + mem[64] + 96] = 0
                        mem[mem[64] + 32] = ceil32(('cd', 4).length) + 96
                        mem[_641 + ceil32(('cd', 4).length) + 96] = ('cd', 36).length
                        mem[_641 + ceil32(('cd', 4).length) + 128 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                        mem[(32 * ('cd', 36).length) + _641 + ceil32(('cd', 4).length) + 128] = 0
                        emit 0x612434bc: mem[mem[64] len _641 + ceil32(('cd', 4).length) + floor32(('cd', 36).length) + -mem[64] + 128], msg.sender
                    else:
                        mem[0] = _351
                        if not sub_86dbef02:
                            if msg.value < sub_86dbef02:
                                revert with 0, 32, 34, 0x2e436f6d706f736974696f6e20726571756972657320612068696768657220666565, mem[mem[64] + 102 len 30]
                            tokenByIndex.length++
                            tokenByIndex[tokenByIndex.length] = sha3(call.data[cd[4] + 36 len ('cd', 4).length])
                            stor12[call.data[cd[4] + 36 len ('cd', 4).length]] = tokenByIndex.length
                            balanceOf[address(msg.sender)]++
                            ownerOf[call.data[cd[4] + 36 len ('cd', 4).length]] = msg.sender
                            sub_1f8879bd[address(msg.sender)]++
                            sub_1f8879bd[address(msg.sender)][sub_1f8879bd[address(msg.sender)]] = sha3(call.data[cd[4] + 36 len ('cd', 4).length])
                            stor14[call.data[cd[4] + 36 len ('cd', 4).length]] = sub_1f8879bd[address(msg.sender)]
                            mem[32] = 7
                            uint8(sub_9b8ae3a8[call.data[cd[4] + 36 len ('cd', 4).length]].field_0) = 1
                            Mask(248, 0, sub_9b8ae3a8[call.data[cd[4] + 36 len ('cd', 4).length]].field_8) = sub_bbc1fdf6
                            sub_9b8ae3a8[call.data[cd[4] + 36 len ('cd', 4).length]].field_256 % 1 = 0
                            emit 0x91458cb6: 0, msg.sender, sha3(call.data[cd[4] + 36 len ('cd', 4).length]), sub_bbc1fdf6
                            emit Transfer(0, msg.sender, sha3(call.data[cd[4] + 36 len ('cd', 4).length]));
                            _530 = mem[64]
                            mem[mem[64]] = 64
                            mem[mem[64] + 64] = ('cd', 4).length
                            mem[mem[64] + 96 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
                            mem[('cd', 4).length + mem[64] + 96] = 0
                            mem[mem[64] + 32] = ceil32(('cd', 4).length) + 96
                            mem[_530 + ceil32(('cd', 4).length) + 96] = ('cd', 36).length
                            mem[_530 + ceil32(('cd', 4).length) + 128 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                            mem[(32 * ('cd', 36).length) + _530 + ceil32(('cd', 4).length) + 128] = 0
                            emit 0x612434bc: mem[mem[64] len _530 + ceil32(('cd', 4).length) + floor32(('cd', 36).length) + -mem[64] + 128], msg.sender
                        else:
                            stor3 += sub_86dbef02 * stor4 / 10000
                            mem[0] = ownerOf[_351]
                            sub_2283e668[stor8[_351]] += sub_86dbef02 * stor4 / 10000
                            if msg.value < sub_86dbef02:
                                revert with 0, 32, 34, 0x2e436f6d706f736974696f6e20726571756972657320612068696768657220666565, mem[mem[64] + 102 len 30]
                            tokenByIndex.length++
                            tokenByIndex[tokenByIndex.length] = sha3(call.data[cd[4] + 36 len ('cd', 4).length])
                            stor12[call.data[cd[4] + 36 len ('cd', 4).length]] = tokenByIndex.length
                            balanceOf[address(msg.sender)]++
                            ownerOf[call.data[cd[4] + 36 len ('cd', 4).length]] = msg.sender
                            sub_1f8879bd[address(msg.sender)]++
                            sub_1f8879bd[address(msg.sender)][sub_1f8879bd[address(msg.sender)]] = sha3(call.data[cd[4] + 36 len ('cd', 4).length])
                            stor14[call.data[cd[4] + 36 len ('cd', 4).length]] = sub_1f8879bd[address(msg.sender)]
                            mem[32] = 7
                            uint8(sub_9b8ae3a8[call.data[cd[4] + 36 len ('cd', 4).length]].field_0) = 1
                            Mask(248, 0, sub_9b8ae3a8[call.data[cd[4] + 36 len ('cd', 4).length]].field_8) = sub_bbc1fdf6
                            sub_9b8ae3a8[call.data[cd[4] + 36 len ('cd', 4).length]].field_256 % 1 = 0
                            emit 0x91458cb6: 0, msg.sender, sha3(call.data[cd[4] + 36 len ('cd', 4).length]), sub_bbc1fdf6
                            emit Transfer(0, msg.sender, sha3(call.data[cd[4] + 36 len ('cd', 4).length]));
                            _643 = mem[64]
                            mem[mem[64]] = 64
                            mem[mem[64] + 64] = ('cd', 4).length
                            mem[mem[64] + 96 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
                            mem[('cd', 4).length + mem[64] + 96] = 0
                            mem[mem[64] + 32] = ceil32(('cd', 4).length) + 96
                            mem[_643 + ceil32(('cd', 4).length) + 96] = ('cd', 36).length
                            mem[_643 + ceil32(('cd', 4).length) + 128 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                            mem[(32 * ('cd', 36).length) + _643 + ceil32(('cd', 4).length) + 128] = 0
                            emit 0x612434bc: mem[mem[64] len _643 + ceil32(('cd', 4).length) + floor32(('cd', 36).length) + -mem[64] + 128], msg.sender
                else:
                    if ownerOf[_351] == msg.sender:
                        mem[0] = _351
                        if msg.value < 0:
                            revert with 0, 32, 34, 0x2e436f6d706f736974696f6e20726571756972657320612068696768657220666565, mem[mem[64] + 102 len 30]
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length] = sha3(call.data[cd[4] + 36 len ('cd', 4).length])
                        stor12[call.data[cd[4] + 36 len ('cd', 4).length]] = tokenByIndex.length
                        balanceOf[address(msg.sender)]++
                        ownerOf[call.data[cd[4] + 36 len ('cd', 4).length]] = msg.sender
                        sub_1f8879bd[address(msg.sender)]++
                        sub_1f8879bd[address(msg.sender)][sub_1f8879bd[address(msg.sender)]] = sha3(call.data[cd[4] + 36 len ('cd', 4).length])
                        stor14[call.data[cd[4] + 36 len ('cd', 4).length]] = sub_1f8879bd[address(msg.sender)]
                        mem[32] = 7
                        uint8(sub_9b8ae3a8[call.data[cd[4] + 36 len ('cd', 4).length]].field_0) = 1
                        Mask(248, 0, sub_9b8ae3a8[call.data[cd[4] + 36 len ('cd', 4).length]].field_8) = sub_bbc1fdf6
                        sub_9b8ae3a8[call.data[cd[4] + 36 len ('cd', 4).length]].field_256 % 1 = 0
                        emit 0x91458cb6: 0, msg.sender, sha3(call.data[cd[4] + 36 len ('cd', 4).length]), sub_bbc1fdf6
                        emit Transfer(0, msg.sender, sha3(call.data[cd[4] + 36 len ('cd', 4).length]));
                        _532 = mem[64]
                        mem[mem[64]] = 64
                        mem[mem[64] + 64] = ('cd', 4).length
                        mem[mem[64] + 96 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
                        mem[('cd', 4).length + mem[64] + 96] = 0
                        mem[mem[64] + 32] = ceil32(('cd', 4).length) + 96
                        mem[_532 + ceil32(('cd', 4).length) + 96] = ('cd', 36).length
                        mem[_532 + ceil32(('cd', 4).length) + 128 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                        mem[(32 * ('cd', 36).length) + _532 + ceil32(('cd', 4).length) + 128] = 0
                        emit 0x612434bc: mem[mem[64] len _532 + ceil32(('cd', 4).length) + floor32(('cd', 36).length) + -mem[64] + 128], msg.sender
                    else:
                        if stor11[stor8[_351]][address(msg.sender)]:
                            mem[0] = _351
                            if msg.value < 0:
                                revert with 0, 32, 34, 0x2e436f6d706f736974696f6e20726571756972657320612068696768657220666565, mem[mem[64] + 102 len 30]
                            tokenByIndex.length++
                            tokenByIndex[tokenByIndex.length] = sha3(call.data[cd[4] + 36 len ('cd', 4).length])
                            stor12[call.data[cd[4] + 36 len ('cd', 4).length]] = tokenByIndex.length
                            balanceOf[address(msg.sender)]++
                            ownerOf[call.data[cd[4] + 36 len ('cd', 4).length]] = msg.sender
                            sub_1f8879bd[address(msg.sender)]++
                            sub_1f8879bd[address(msg.sender)][sub_1f8879bd[address(msg.sender)]] = sha3(call.data[cd[4] + 36 len ('cd', 4).length])
                            stor14[call.data[cd[4] + 36 len ('cd', 4).length]] = sub_1f8879bd[address(msg.sender)]
                            mem[32] = 7
                            uint8(sub_9b8ae3a8[call.data[cd[4] + 36 len ('cd', 4).length]].field_0) = 1
                            Mask(248, 0, sub_9b8ae3a8[call.data[cd[4] + 36 len ('cd', 4).length]].field_8) = sub_bbc1fdf6
                            sub_9b8ae3a8[call.data[cd[4] + 36 len ('cd', 4).length]].field_256 % 1 = 0
                            emit 0x91458cb6: 0, msg.sender, sha3(call.data[cd[4] + 36 len ('cd', 4).length]), sub_bbc1fdf6
                            emit Transfer(0, msg.sender, sha3(call.data[cd[4] + 36 len ('cd', 4).length]));
                            _573 = mem[64]
                            mem[mem[64]] = 64
                            mem[mem[64] + 64] = ('cd', 4).length
                            mem[mem[64] + 96 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
                            mem[('cd', 4).length + mem[64] + 96] = 0
                            mem[mem[64] + 32] = ceil32(('cd', 4).length) + 96
                            mem[_573 + ceil32(('cd', 4).length) + 96] = ('cd', 36).length
                            mem[_573 + ceil32(('cd', 4).length) + 128 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                            mem[(32 * ('cd', 36).length) + _573 + ceil32(('cd', 4).length) + 128] = 0
                            emit 0x612434bc: mem[mem[64] len _573 + ceil32(('cd', 4).length) + floor32(('cd', 36).length) + -mem[64] + 128], msg.sender
                        else:
                            if sub_3cd6d89a[_351]:
                                stor3 += sub_3cd6d89a[_351] * stor4 / 10000
                                mem[0] = ownerOf[_351]
                                sub_2283e668[stor8[_351]] += sub_3cd6d89a[_351] * stor4 / 10000
                                if msg.value < sub_3cd6d89a[_351]:
                                    revert with 0, 32, 34, 0x2e436f6d706f736974696f6e20726571756972657320612068696768657220666565, mem[mem[64] + 102 len 30]
                                tokenByIndex.length++
                                tokenByIndex[tokenByIndex.length] = sha3(call.data[cd[4] + 36 len ('cd', 4).length])
                                stor12[call.data[cd[4] + 36 len ('cd', 4).length]] = tokenByIndex.length
                                balanceOf[address(msg.sender)]++
                                ownerOf[call.data[cd[4] + 36 len ('cd', 4).length]] = msg.sender
                                sub_1f8879bd[address(msg.sender)]++
                                sub_1f8879bd[address(msg.sender)][sub_1f8879bd[address(msg.sender)]] = sha3(call.data[cd[4] + 36 len ('cd', 4).length])
                                stor14[call.data[cd[4] + 36 len ('cd', 4).length]] = sub_1f8879bd[address(msg.sender)]
                                mem[32] = 7
                                uint8(sub_9b8ae3a8[call.data[cd[4] + 36 len ('cd', 4).length]].field_0) = 1
                                Mask(248, 0, sub_9b8ae3a8[call.data[cd[4] + 36 len ('cd', 4).length]].field_8) = sub_bbc1fdf6
                                sub_9b8ae3a8[call.data[cd[4] + 36 len ('cd', 4).length]].field_256 % 1 = 0
                                emit 0x91458cb6: 0, msg.sender, sha3(call.data[cd[4] + 36 len ('cd', 4).length]), sub_bbc1fdf6
                                emit Transfer(0, msg.sender, sha3(call.data[cd[4] + 36 len ('cd', 4).length]));
                                _675 = mem[64]
                                mem[mem[64]] = 64
                                mem[mem[64] + 64] = ('cd', 4).length
                                mem[mem[64] + 96 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
                                mem[('cd', 4).length + mem[64] + 96] = 0
                                mem[mem[64] + 32] = ceil32(('cd', 4).length) + 96
                                mem[_675 + ceil32(('cd', 4).length) + 96] = ('cd', 36).length
                                mem[_675 + ceil32(('cd', 4).length) + 128 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                                mem[(32 * ('cd', 36).length) + _675 + ceil32(('cd', 4).length) + 128] = 0
                                emit 0x612434bc: mem[mem[64] len _675 + ceil32(('cd', 4).length) + floor32(('cd', 36).length) + -mem[64] + 128], msg.sender
                            else:
                                mem[0] = _351
                                if not sub_86dbef02:
                                    if msg.value < sub_86dbef02:
                                        revert with 0, 32, 34, 0x2e436f6d706f736974696f6e20726571756972657320612068696768657220666565, mem[mem[64] + 102 len 30]
                                    tokenByIndex.length++
                                    tokenByIndex[tokenByIndex.length] = sha3(call.data[cd[4] + 36 len ('cd', 4).length])
                                    stor12[call.data[cd[4] + 36 len ('cd', 4).length]] = tokenByIndex.length
                                    balanceOf[address(msg.sender)]++
                                    ownerOf[call.data[cd[4] + 36 len ('cd', 4).length]] = msg.sender
                                    sub_1f8879bd[address(msg.sender)]++
                                    sub_1f8879bd[address(msg.sender)][sub_1f8879bd[address(msg.sender)]] = sha3(call.data[cd[4] + 36 len ('cd', 4).length])
                                    stor14[call.data[cd[4] + 36 len ('cd', 4).length]] = sub_1f8879bd[address(msg.sender)]
                                    mem[32] = 7
                                    uint8(sub_9b8ae3a8[call.data[cd[4] + 36 len ('cd', 4).length]].field_0) = 1
                                    Mask(248, 0, sub_9b8ae3a8[call.data[cd[4] + 36 len ('cd', 4).length]].field_8) = sub_bbc1fdf6
                                    sub_9b8ae3a8[call.data[cd[4] + 36 len ('cd', 4).length]].field_256 % 1 = 0
                                    emit 0x91458cb6: 0, msg.sender, sha3(call.data[cd[4] + 36 len ('cd', 4).length]), sub_bbc1fdf6
                                    emit Transfer(0, msg.sender, sha3(call.data[cd[4] + 36 len ('cd', 4).length]));
                                    _607 = mem[64]
                                    mem[mem[64]] = 64
                                    mem[mem[64] + 64] = ('cd', 4).length
                                    mem[mem[64] + 96 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
                                    mem[('cd', 4).length + mem[64] + 96] = 0
                                    mem[mem[64] + 32] = ceil32(('cd', 4).length) + 96
                                    mem[_607 + ceil32(('cd', 4).length) + 96] = ('cd', 36).length
                                    mem[_607 + ceil32(('cd', 4).length) + 128 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                                    mem[(32 * ('cd', 36).length) + _607 + ceil32(('cd', 4).length) + 128] = 0
                                    emit 0x612434bc: mem[mem[64] len _607 + ceil32(('cd', 4).length) + floor32(('cd', 36).length) + -mem[64] + 128], msg.sender
                                else:
                                    stor3 += sub_86dbef02 * stor4 / 10000
                                    mem[0] = ownerOf[_351]
                                    sub_2283e668[stor8[_351]] += sub_86dbef02 * stor4 / 10000
                                    if msg.value < sub_86dbef02:
                                        revert with 0, 32, 34, 0x2e436f6d706f736974696f6e20726571756972657320612068696768657220666565, mem[mem[64] + 102 len 30]
                                    tokenByIndex.length++
                                    tokenByIndex[tokenByIndex.length] = sha3(call.data[cd[4] + 36 len ('cd', 4).length])
                                    stor12[call.data[cd[4] + 36 len ('cd', 4).length]] = tokenByIndex.length
                                    balanceOf[address(msg.sender)]++
                                    ownerOf[call.data[cd[4] + 36 len ('cd', 4).length]] = msg.sender
                                    sub_1f8879bd[address(msg.sender)]++
                                    sub_1f8879bd[address(msg.sender)][sub_1f8879bd[address(msg.sender)]] = sha3(call.data[cd[4] + 36 len ('cd', 4).length])
                                    stor14[call.data[cd[4] + 36 len ('cd', 4).length]] = sub_1f8879bd[address(msg.sender)]
                                    mem[32] = 7
                                    uint8(sub_9b8ae3a8[call.data[cd[4] + 36 len ('cd', 4).length]].field_0) = 1
                                    Mask(248, 0, sub_9b8ae3a8[call.data[cd[4] + 36 len ('cd', 4).length]].field_8) = sub_bbc1fdf6
                                    sub_9b8ae3a8[call.data[cd[4] + 36 len ('cd', 4).length]].field_256 % 1 = 0
                                    emit 0x91458cb6: 0, msg.sender, sha3(call.data[cd[4] + 36 len ('cd', 4).length]), sub_bbc1fdf6
                                    emit Transfer(0, msg.sender, sha3(call.data[cd[4] + 36 len ('cd', 4).length]));
                                    _677 = mem[64]
                                    mem[mem[64]] = 64
                                    mem[mem[64] + 64] = ('cd', 4).length
                                    mem[mem[64] + 96 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
                                    mem[('cd', 4).length + mem[64] + 96] = 0
                                    mem[mem[64] + 32] = ceil32(('cd', 4).length) + 96
                                    mem[_677 + ceil32(('cd', 4).length) + 96] = ('cd', 36).length
                                    mem[_677 + ceil32(('cd', 4).length) + 128 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                                    mem[(32 * ('cd', 36).length) + _677 + ceil32(('cd', 4).length) + 128] = 0
                                    emit 0x612434bc: mem[mem[64] len _677 + ceil32(('cd', 4).length) + floor32(('cd', 36).length) + -mem[64] + 128], msg.sender
}



}
