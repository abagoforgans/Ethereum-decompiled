contract main {




// =====================  Runtime code  =====================


#
#  - bidTransfer(uint256 arg1, address arg2, uint256 arg3)
#
const onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) = 0x150b7a0200000000000000000000000000000000000000000000000000000000

const TEAM_SALE_MULTIPLIER = 12

const SINGLE_SALE_MULTIPLIER = 35

const STARTING_PRICE = 10^16

const ERC721_RECEIVED = 0x150b7a0200000000000000000000000000000000000000000000000000000000

const SALES_DURATION = (24 * 3600)


mapping of uint8 stor0;
array of uint256 stor1;
address gameManagerSecondaryAddress;
array of uint256 stor3;
address nonFungibleContractAddress;
address lSEscrowContractAddress;
uint256 BID_DELAY_TIME;
uint256 ownerCut;
mapping of struct stor8;
array of uint256 lastTeamSalePrices;
mapping of uint256 lastSingleSalePrices;
mapping of uint256 seedTeamSaleCount;
uint256 seedSingleSaleCount;
uint8 stor13;
uint8 stor13; offset 8

function gameManagerSecondary() {
    return gameManagerSecondaryAddress
}

function LSEscrowContract() {
    return lSEscrowContractAddress
}

function paused() {
    return bool(uint8(stor3.length.field_160))
}

function isSalesManager() {
    return bool(uint8(stor13.field_8))
}

function gameManagerPrimary() {
    return address(stor1.length)
}

function ownerCut() {
    return ownerCut
}

function seedSingleSaleCount() {
    return seedSingleSaleCount
}

function lastTeamSalePrices(uint256 arg1, uint256 arg2) {
    require arg2 < 3
    return lastTeamSalePrices[arg1][arg2]
}

function isBatchSupported() {
    return bool(uint8(stor13.field_0))
}

function lastSingleSalePrices(uint256 arg1) {
    return lastSingleSalePrices[arg1]
}

function nonFungibleContract() {
    return nonFungibleContractAddress
}

function bankManager() {
    return address(stor3.length)
}

function BID_DELAY_TIME() {
    return BID_DELAY_TIME
}

function seedTeamSaleCount(uint256 arg1) {
    return seedTeamSaleCount[arg1]
}

function setOwnerCut(uint256 arg1) {
    require msg.sender == address(stor3.length)
    require arg1 <= 10000
    ownerCut = arg1
}

function setBanker(address arg1) {
    require msg.sender == address(stor3.length)
    require arg1
    address(stor3.length) = arg1
}

function updateBatchSupport(bool arg1) {
    if address(stor1.length) != msg.sender:
        require msg.sender == gameManagerSecondaryAddress
    uint8(stor13.field_0) = uint8(arg1)
}

function setPrimaryGameManager(address arg1) {
    if address(stor1.length) != msg.sender:
        require msg.sender == gameManagerSecondaryAddress
    require arg1
    address(stor1.length) = arg1
}

function setNFTContractAddress(address arg1) {
    if address(stor1.length) != msg.sender:
        require msg.sender == gameManagerSecondaryAddress
    require arg1
    nonFungibleContractAddress = arg1
}

function pause() {
    if address(stor1.length) != msg.sender:
        require msg.sender == gameManagerSecondaryAddress
    require not uint8(stor3.length.field_160)
    uint8(stor3.length.field_160) = 1
}

function setLSEscrowContractAddress(address arg1) {
    if address(stor1.length) != msg.sender:
        require msg.sender == gameManagerSecondaryAddress
    require arg1
    lSEscrowContractAddress = arg1
}

function setSecondaryGameManager(address arg1) {
    if address(stor1.length) != msg.sender:
        require msg.sender == gameManagerSecondaryAddress
    require arg1
    gameManagerSecondaryAddress = arg1
}

function updateDelayTime(uint256 arg1) {
    if address(stor1.length) != msg.sender:
        require msg.sender == gameManagerSecondaryAddress
    require not uint8(stor3.length.field_160)
    BID_DELAY_TIME = arg1
}

function updateAllowedAddressesList(address arg1, bool arg2) {
    if address(stor1.length) != msg.sender:
        require msg.sender == gameManagerSecondaryAddress
    require arg1
    stor0[address(arg1)] = uint8(arg2)
}

function withdrawSaleManagerBalances() {
    require msg.sender == address(stor3.length)
    call address(stor3.length) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    if msg.sender != this.address:
        if address(stor1.length) != msg.sender:
            if gameManagerSecondaryAddress != msg.sender:
                if address(stor3.length) != msg.sender:
                    if nonFungibleContractAddress != msg.sender:
                        require msg.sender == lSEscrowContractAddress
}

function unpause() {
    if address(stor1.length) != msg.sender:
        require msg.sender == gameManagerSecondaryAddress
    require uint8(stor3.length.field_160)
    require nonFungibleContractAddress
    if address(stor1.length) != msg.sender:
        require msg.sender == gameManagerSecondaryAddress
    require uint8(stor3.length.field_160)
    uint8(stor3.length.field_160) = 0
}

function assetTransfer(address arg1, uint256 arg2) {
    if address(stor1.length) != msg.sender:
        require msg.sender == gameManagerSecondaryAddress
    require arg2
    require ext_code.size(nonFungibleContractAddress)
    call nonFungibleContractAddress.0x23b872dd with:
         gas gas_remaining wei
        args this.address, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getSale(uint256 arg1) {
    idx = 1312
    s = 5
    while 1600 > idx + 32:
        mem[idx + 32] = stor8[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require 0 < stor8[arg1].field_1024
    return address(stor8[arg1].field_0), 
           stor8[arg1].field_256,
           stor8[arg1].field_512,
           stor8[arg1].field_768,
           stor8[arg1].field_1024,
           stor8[arg1].field_1280,
           mem[1344 len 256]
}

function getCurrentPrice(uint256 arg1) {
    idx = 1024
    s = 5
    while 1312 > idx + 32:
        mem[idx + 32] = stor8[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require 0 < stor8[arg1].field_1024
    require BID_DELAY_TIME + stor8[arg1].field_1024 >= stor8[arg1].field_1024
    if block.timestamp <= BID_DELAY_TIME + stor8[arg1].field_1024:
        if 0 >= stor8[arg1].field_768:
            return stor8[arg1].field_512
        if stor8[arg1].field_768:
            return (stor8[arg1].field_256 + (0 / stor8[arg1].field_768))
    else:
        require BID_DELAY_TIME + stor8[arg1].field_1024 >= stor8[arg1].field_1024
        require BID_DELAY_TIME + stor8[arg1].field_1024 <= block.timestamp
        if block.timestamp - BID_DELAY_TIME - stor8[arg1].field_1024 >= stor8[arg1].field_768:
            return stor8[arg1].field_512
        if stor8[arg1].field_768:
            return (stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768))
    ('iszero', ('field', 768, ('stor', ('map', ('param', 'arg1'), ('name', 'stor8', 8)))))
    revert
}

function createSale(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) {
    require not uint8(stor3.length.field_160)
    require msg.sender == nonFungibleContractAddress
    require ext_code.size(nonFungibleContractAddress)
    call nonFungibleContractAddress.'ReD' with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    require ext_code.size(nonFungibleContractAddress)
    call nonFungibleContractAddress.0x42842e0e with:
         gas gas_remaining wei
        args address(arg5), this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[1024] = arg1
    mem[1056] = 0
    mem[1088] = 0
    mem[1120] = 0
    mem[1152] = 0
    mem[1184] = 0
    mem[1216] = 0
    mem[1248] = 0
    mem[1280] = 0
    require 60 <= arg4
    address(stor8[arg1].field_0) = arg5
    stor8[arg1].field_256 = arg2
    stor8[arg1].field_512 = arg3
    stor8[arg1].field_768 = arg4
    stor8[arg1].field_1024 = block.timestamp
    s = 5
    idx = 1024
    while 1312 > idx:
        stor8[arg1][s].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 14
    while 14 > idx:
        stor8[arg1][idx].field_0 = 0
        idx = idx + 1
        continue 
    emit SaleCreated(arg1, arg2, arg3, arg4, block.timestamp);
}

function batchAssetTransfer(address arg1, uint256[] arg2) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if msg.sender == address(stor1.length):
        require uint8(stor13.field_0)
        require 0 < arg2.length
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            require mem[(32 * idx) + 128]
            require idx < arg2.length
            _26 = mem[(32 * idx) + 128]
            mem[(32 * arg2.length) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
            mem[(32 * arg2.length) + 132] = this.address
            mem[(32 * arg2.length) + 164] = arg1
            mem[(32 * arg2.length) + 196] = _26
            require ext_code.size(nonFungibleContractAddress)
            call nonFungibleContractAddress.0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), address(arg1), _26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    else:
        require msg.sender == gameManagerSecondaryAddress
        require uint8(stor13.field_0)
        require 0 < arg2.length
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            require mem[(32 * idx) + 128]
            require idx < arg2.length
            _29 = mem[(32 * idx) + 128]
            mem[(32 * arg2.length) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
            mem[(32 * arg2.length) + 132] = this.address
            mem[(32 * arg2.length) + 164] = arg1
            mem[(32 * arg2.length) + 196] = _29
            require ext_code.size(nonFungibleContractAddress)
            call nonFungibleContractAddress.0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), address(arg1), _29
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
}

function userCreateSaleIfApproved(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require not uint8(stor3.length.field_160)
    require ext_code.size(nonFungibleContractAddress)
    call nonFungibleContractAddress.getApproved(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(nonFungibleContractAddress)
    if ext_call.return_data[12 len 20] != this.address:
        call nonFungibleContractAddress.0xe985e9c5 with:
             gas gas_remaining wei
            args msg.sender, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    call nonFungibleContractAddress.'ReD' with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    require ext_code.size(nonFungibleContractAddress)
    call nonFungibleContractAddress.0x42842e0e with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[1024] = arg1
    mem[1056] = 0
    mem[1088] = 0
    mem[1120] = 0
    mem[1152] = 0
    mem[1184] = 0
    mem[1216] = 0
    mem[1248] = 0
    mem[1280] = 0
    require 60 <= arg4
    address(stor8[arg1].field_0) = msg.sender
    stor8[arg1].field_256 = arg2
    stor8[arg1].field_512 = arg3
    stor8[arg1].field_768 = arg4
    stor8[arg1].field_1024 = block.timestamp
    s = 5
    idx = 1024
    while 1312 > idx:
        stor8[arg1][s].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 14
    while 14 > idx:
        stor8[arg1][idx].field_0 = 0
        idx = idx + 1
        continue 
    emit SaleCreated(arg1, arg2, arg3, arg4, block.timestamp);
}

function createSeedTeam(uint8 arg1, uint256[9] arg2, uint256[9] arg3) {
    mem[96 len 288] = call.data[36 len 288]
    mem[384 len 288] = call.data[324 len 288]
    if msg.sender == address(stor1.length):
        require not uint8(stor3.length.field_160)
        require arg1
        idx = 0
        while idx < 9:
            require idx + 1 >= idx
            require idx < 9
            _13 = mem[(32 * idx) + 96]
            _15 = mem[(32 * idx) + 384]
            mem[676] = arg1
            mem[708] = uint8(idx + 1)
            mem[740] = _13
            mem[772] = this.address
            mem[804] = 0
            mem[836] = 0
            mem[868] = _15
            require ext_code.size(nonFungibleContractAddress)
            call nonFungibleContractAddress.createSeedCollectible(uint8 arg1, uint8 arg2, uint256 arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7) with:
                 gas gas_remaining wei
                args arg1 << 248, idx + 1 << 248, _13, address(this.address), 0, 0, _15
            mem[672] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = idx + 1
            continue 
    else:
        require msg.sender == gameManagerSecondaryAddress
        require not uint8(stor3.length.field_160)
        require arg1
        idx = 0
        while idx < 9:
            require idx + 1 >= idx
            require idx < 9
            _14 = mem[(32 * idx) + 96]
            _18 = mem[(32 * idx) + 384]
            mem[676] = arg1
            mem[708] = uint8(idx + 1)
            mem[740] = _14
            mem[772] = this.address
            mem[804] = 0
            mem[836] = 0
            mem[868] = _18
            require ext_code.size(nonFungibleContractAddress)
            call nonFungibleContractAddress.createSeedCollectible(uint8 arg1, uint8 arg2, uint256 arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7) with:
                 gas gas_remaining wei
                args arg1 << 248, idx + 1 << 248, _14, address(this.address), 0, 0, _18
            mem[672] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = idx + 1
            continue 
}

function cancelSale(uint256 arg1) {
    require not uint8(stor3.length.field_160)
    idx = 1024
    s = 5
    while 1312 > idx + 32:
        mem[idx + 32] = stor8[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require 0 < stor8[arg1].field_1024
    require address(stor8[arg1].field_0) == msg.sender
    mem[2240] = stor8[arg1].field_1280
    idx = 2240
    s = 5
    while 2528 > idx + 32:
        mem[idx + 32] = stor8[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if mem[2272]:
        idx = 0
        while idx < 9:
            mem[0] = mem[(32 * idx) + 2240]
            mem[32] = 8
            address(stor8[mem[(32 * idx) + 2240]].field_0) = 0
            stor8[mem[(32 * idx) + 2240]].field_256 = 0
            stor8[mem[(32 * idx) + 2240]].field_512 = 0
            stor8[mem[(32 * idx) + 2240]].field_768 = 0
            stor8[mem[(32 * idx) + 2240]].field_1024 = 0
            s = sha3(mem[(32 * idx) + 2240], 8) + 5
            while sha3(mem[(32 * idx) + 2240], 8) + 14 > s:
                stor[s] = 0
                s = s + 1
                continue 
            require idx < 9
            _76 = mem[(32 * idx) + 2240]
            mem[2528] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
            mem[2532] = this.address
            mem[2564] = address(stor8[arg1].field_0)
            mem[2596] = _76
            require ext_code.size(nonFungibleContractAddress)
            call nonFungibleContractAddress.0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), address(stor8[arg1].field_0), _76
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    else:
        address(stor8[arg1].field_0) = 0
        stor8[arg1].field_256 = 0
        stor8[arg1].field_512 = 0
        stor8[arg1].field_768 = 0
        stor8[arg1].field_1024 = 0
        idx = 5
        while 14 > idx:
            stor8[arg1][idx].field_0 = 0
            idx = idx + 1
            continue 
        require ext_code.size(nonFungibleContractAddress)
        call nonFungibleContractAddress.0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), address(stor8[arg1].field_0), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit SaleCancelled(arg1, address(stor8[arg1].field_0));
}

function batchCancelSale(uint256[] arg1) {
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[64] = 832
    mem[544 len 288] = code.data[14197 len 288]
    mem[256] = 544
    require not uint8(stor3.length.field_160)
    require uint8(stor13.field_0)
    require arg1.length > 0
    s = 0
    s = 96
    idx = 0
    while idx < arg1.length:
        mem[0] = cd[((32 * idx) + arg1 + 36)]
        mem[32] = 8
        _28 = mem[64]
        mem[64] = mem[64] + 192
        mem[_28] = address(stor8[cd[((32 * idx) + arg1 + 36)]].field_0)
        mem[_28 + 32] = stor8[cd[((32 * idx) + arg1 + 36)]].field_256
        mem[_28 + 64] = stor8[cd[((32 * idx) + arg1 + 36)]].field_512
        mem[_28 + 96] = stor8[cd[((32 * idx) + arg1 + 36)]].field_768
        mem[_28 + 128] = stor8[cd[((32 * idx) + arg1 + 36)]].field_1024
        _29 = mem[64]
        mem[64] = mem[64] + 288
        mem[_29] = stor8[cd[((32 * idx) + arg1 + 36)]].field_1280
        s = _29
        t = sha3(cd[((32 * idx) + arg1 + 36)], 8) + 5
        while _29 + 288 > s + 32:
            mem[s + 32] = uint256(stor1[t])
            s = s + 32
            t = t + 1
            continue 
        mem[_28 + 160] = _29
        require 0 < mem[_28 + 128]
        _52 = mem[_28]
        require mem[_28 + 12 len 20] == msg.sender
        require idx < arg1.length
        _53 = mem[64]
        mem[64] = mem[64] + 448
        mem[_53] = 0
        mem[_53 + 32] = 0
        mem[_53 + 64] = 0
        mem[_53 + 96] = 0
        mem[_53 + 128] = 0
        _54 = mem[64]
        mem[64] = mem[64] + 288
        mem[_54 len 288] = code.data[14197 len 288]
        mem[_53 + 160] = _54
        mem[0] = cd[((32 * idx) + arg1 + 36)]
        mem[32] = 8
        _56 = mem[64]
        mem[64] = mem[64] + 192
        mem[_56] = address(stor8[cd[((32 * idx) + arg1 + 36)]].field_0)
        mem[_56 + 32] = stor8[cd[((32 * idx) + arg1 + 36)]].field_256
        mem[_56 + 64] = stor8[cd[((32 * idx) + arg1 + 36)]].field_512
        mem[_56 + 96] = stor8[cd[((32 * idx) + arg1 + 36)]].field_768
        mem[_56 + 128] = stor8[cd[((32 * idx) + arg1 + 36)]].field_1024
        _57 = mem[64]
        mem[64] = mem[64] + 288
        mem[_57] = stor8[cd[((32 * idx) + arg1 + 36)]].field_1280
        s = _57
        t = sha3(cd[((32 * idx) + arg1 + 36)], 8) + 5
        while _57 + 288 > s + 32:
            mem[s + 32] = uint256(stor1[t])
            s = s + 32
            t = t + 1
            continue 
        mem[_56 + 160] = _57
        if mem[_57 + 32]:
            s = 0
            while s < 9:
                mem[0] = mem[(32 * s) + mem[_56 + 160]]
                mem[32] = 8
                address(stor8[mem[0]].field_0) = 0
                stor8[mem[0]].field_256 = 0
                stor8[mem[0]].field_512 = 0
                stor8[mem[0]].field_768 = 0
                stor8[mem[0]].field_1024 = 0
                idx = sha3(mem[0], 8) + 5
                while sha3(mem[0], 8) + 14 > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
                require s < 9
                _100 = mem[(32 * s) + mem[_56 + 160]]
                mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = address(_52)
                mem[mem[64] + 68] = _100
                require ext_code.size(nonFungibleContractAddress)
                call nonFungibleContractAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args address(this.address), address(_52), _100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                s = s + 1
                continue 
        else:
            mem[0] = cd[((32 * idx) + arg1 + 36)]
            mem[32] = 8
            address(stor8[cd[((32 * idx) + arg1 + 36)]].field_0) = 0
            stor8[cd[((32 * idx) + arg1 + 36)]].field_256 = 0
            stor8[cd[((32 * idx) + arg1 + 36)]].field_512 = 0
            stor8[cd[((32 * idx) + arg1 + 36)]].field_768 = 0
            stor8[cd[((32 * idx) + arg1 + 36)]].field_1024 = 0
            s = sha3(cd[((32 * idx) + arg1 + 36)], 8) + 5
            while sha3(cd[((32 * idx) + arg1 + 36)], 8) + 14 > s:
                stor[s] = 0
                s = s + 1
                continue 
            mem[mem[64] + 36] = address(_52)
            mem[mem[64] + 68] = cd[((32 * idx) + arg1 + 36)]
            require ext_code.size(nonFungibleContractAddress)
            call nonFungibleContractAddress.0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), address(_52), cd[((32 * idx) + arg1 + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = cd[((32 * idx) + arg1 + 36)]
        mem[mem[64] + 32] = address(_52)
        emit SaleCancelled(cd[((32 * idx) + arg1 + 36)], address(_52));
        s = _52
        s = _28
        idx = idx + 1
        continue 
}

function cancelSaleWhenPaused(uint256 arg1) {
    require uint8(stor3.length.field_160)
    if msg.sender == address(stor1.length):
        idx = 1024
        s = 5
        while 1312 > idx + 32:
            mem[idx + 32] = stor8[arg1][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require 0 < stor8[arg1].field_1024
        mem[2240] = stor8[arg1].field_1280
        idx = 2240
        s = 5
        while 2528 > idx + 32:
            mem[idx + 32] = stor8[arg1][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if mem[2272]:
            idx = 0
            while idx < 9:
                mem[0] = mem[(32 * idx) + 2240]
                mem[32] = 8
                address(stor8[mem[(32 * idx) + 2240]].field_0) = 0
                stor8[mem[(32 * idx) + 2240]].field_256 = 0
                stor8[mem[(32 * idx) + 2240]].field_512 = 0
                stor8[mem[(32 * idx) + 2240]].field_768 = 0
                stor8[mem[(32 * idx) + 2240]].field_1024 = 0
                s = sha3(mem[(32 * idx) + 2240], 8) + 5
                while sha3(mem[(32 * idx) + 2240], 8) + 14 > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                require idx < 9
                _149 = mem[(32 * idx) + 2240]
                mem[2528] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                mem[2532] = this.address
                mem[2564] = address(stor8[arg1].field_0)
                mem[2596] = _149
                require ext_code.size(nonFungibleContractAddress)
                call nonFungibleContractAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args address(this.address), address(stor8[arg1].field_0), _149
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        else:
            address(stor8[arg1].field_0) = 0
            stor8[arg1].field_256 = 0
            stor8[arg1].field_512 = 0
            stor8[arg1].field_768 = 0
            stor8[arg1].field_1024 = 0
            idx = 5
            while 14 > idx:
                stor8[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
            require ext_code.size(nonFungibleContractAddress)
            call nonFungibleContractAddress.0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), address(stor8[arg1].field_0), arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        require msg.sender == gameManagerSecondaryAddress
        idx = 1024
        s = 5
        while 1312 > idx + 32:
            mem[idx + 32] = stor8[arg1][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require 0 < stor8[arg1].field_1024
        mem[2240] = stor8[arg1].field_1280
        idx = 2240
        s = 5
        while 2528 > idx + 32:
            mem[idx + 32] = stor8[arg1][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if mem[2272]:
            idx = 0
            while idx < 9:
                mem[0] = mem[(32 * idx) + 2240]
                mem[32] = 8
                address(stor8[mem[(32 * idx) + 2240]].field_0) = 0
                stor8[mem[(32 * idx) + 2240]].field_256 = 0
                stor8[mem[(32 * idx) + 2240]].field_512 = 0
                stor8[mem[(32 * idx) + 2240]].field_768 = 0
                stor8[mem[(32 * idx) + 2240]].field_1024 = 0
                s = sha3(mem[(32 * idx) + 2240], 8) + 5
                while sha3(mem[(32 * idx) + 2240], 8) + 14 > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                require idx < 9
                _150 = mem[(32 * idx) + 2240]
                mem[2528] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                mem[2532] = this.address
                mem[2564] = address(stor8[arg1].field_0)
                mem[2596] = _150
                require ext_code.size(nonFungibleContractAddress)
                call nonFungibleContractAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args address(this.address), address(stor8[arg1].field_0), _150
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        else:
            address(stor8[arg1].field_0) = 0
            stor8[arg1].field_256 = 0
            stor8[arg1].field_512 = 0
            stor8[arg1].field_768 = 0
            stor8[arg1].field_1024 = 0
            idx = 5
            while 14 > idx:
                stor8[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
            require ext_code.size(nonFungibleContractAddress)
            call nonFungibleContractAddress.0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), address(stor8[arg1].field_0), arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    emit SaleCancelled(arg1, address(stor8[arg1].field_0));
}

function batchCreateSingleSeedAuction(uint8[] arg1, uint8[] arg2, uint256[] arg3, uint256[] arg4, uint256[] arg5, uint256 arg6) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = arg3.length
    mem[(32 * arg2.length) + (32 * arg1.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 192] = arg4.length
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[64] = (32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 256
    mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224] = arg5.length
    mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 256 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    if msg.sender == address(stor1.length):
        require not uint8(stor3.length.field_160)
        require uint8(stor13.field_0)
        require arg1.length > 0
        require arg2.length > 0
        require arg3.length > 0
        require arg4.length > 0
        require arg5.length > 0
        require nonFungibleContractAddress
        require arg6
        idx = 0
        s = 0
        while idx < arg5.length:
            require idx < mem[96]
            require mem[(32 * idx) + 159 len 1]
            require idx < mem[96]
            require idx < mem[(32 * arg1.length) + 128]
            _100 = mem[(32 * idx) + (32 * arg1.length) + 160]
            require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
            _104 = mem[(32 * idx) + (32 * arg2.length) + (32 * arg1.length) + 192]
            require idx < mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 192]
            _108 = mem[(32 * idx) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224]
            require idx < mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224]
            _112 = mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 256]
            mem[mem[64] + 4] = mem[(32 * idx) + 159 len 1]
            mem[mem[64] + 36] = uint8(_100)
            mem[mem[64] + 68] = _104
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = _108
            mem[mem[64] + 196] = _112
            require ext_code.size(nonFungibleContractAddress)
            call nonFungibleContractAddress.createSeedCollectible(uint8 arg1, uint8 arg2, uint256 arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], _100 << 248, _104, address(this.address), 0, _108, _112
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _122 = mem[64]
            mem[64] = mem[64] + 448
            mem[_122] = 0
            mem[_122 + 32] = 0
            mem[_122 + 64] = 0
            mem[_122 + 96] = 0
            mem[_122 + 128] = 0
            _124 = mem[64]
            mem[64] = mem[64] + 288
            mem[_124 len 288] = code.data[14197 len 288]
            mem[_122 + 160] = _124
            _126 = mem[64]
            mem[64] = mem[64] + 192
            mem[_126] = this.address
            mem[_126 + 32] = arg6
            mem[_126 + 64] = 0
            mem[_126 + 96] = 24 * 3600
            mem[_126 + 128] = block.timestamp
            _127 = mem[64]
            mem[64] = mem[64] + 288
            mem[_127] = ext_call.return_data[0]
            mem[_127 + 32] = 0
            mem[_127 + 64] = 0
            mem[_127 + 96] = 0
            mem[_127 + 128] = 0
            mem[_127 + 160] = 0
            mem[_127 + 192] = 0
            mem[_127 + 224] = 0
            mem[_127 + 256] = 0
            mem[_126 + 160] = _127
            mem[0] = ext_call.return_data[0]
            mem[32] = 8
            address(stor8[ext_call.return_data[0]].field_0) = this.address
            stor8[ext_call.return_data[0]].field_256 = arg6
            stor8[ext_call.return_data[0]].field_512 = 0
            stor8[ext_call.return_data[0]].field_768 = 24 * 3600
            stor8[ext_call.return_data[0]].field_1024 = block.timestamp
            t = sha3(ext_call.return_data[0], 8) + 5
            s = _127
            while _127 + 288 > s:
                stor[t] = mem[s]
                t = t + 1
                s = s + 32
                continue 
            s = sha3(ext_call.return_data[0], 8) + 14
            while sha3(ext_call.return_data[0], 8) + 14 > s:
                stor[s] = 0
                s = s + 1
                continue 
            mem[mem[64]] = ext_call.return_data[0]
            mem[mem[64] + 32] = arg6
            mem[mem[64] + 64] = 0
            mem[mem[64] + 96] = 24 * 3600
            mem[mem[64] + 128] = block.timestamp
            emit SaleCreated(ext_call.return_data[0], arg6, 0, 24 * 3600, block.timestamp);
            idx = idx + 1
            s = ext_call.return_data[0]
            continue 
    else:
        require msg.sender == gameManagerSecondaryAddress
        require not uint8(stor3.length.field_160)
        require uint8(stor13.field_0)
        require arg1.length > 0
        require arg2.length > 0
        require arg3.length > 0
        require arg4.length > 0
        require arg5.length > 0
        require nonFungibleContractAddress
        require arg6
        idx = 0
        s = 0
        while idx < arg5.length:
            require idx < mem[96]
            require mem[(32 * idx) + 159 len 1]
            require idx < mem[96]
            require idx < mem[(32 * arg1.length) + 128]
            _102 = mem[(32 * idx) + (32 * arg1.length) + 160]
            require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
            _106 = mem[(32 * idx) + (32 * arg2.length) + (32 * arg1.length) + 192]
            require idx < mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 192]
            _110 = mem[(32 * idx) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224]
            require idx < mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224]
            _115 = mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 256]
            mem[mem[64] + 4] = mem[(32 * idx) + 159 len 1]
            mem[mem[64] + 36] = uint8(_102)
            mem[mem[64] + 68] = _106
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = _110
            mem[mem[64] + 196] = _115
            require ext_code.size(nonFungibleContractAddress)
            call nonFungibleContractAddress.createSeedCollectible(uint8 arg1, uint8 arg2, uint256 arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], _102 << 248, _106, address(this.address), 0, _110, _115
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _123 = mem[64]
            mem[64] = mem[64] + 448
            mem[_123] = 0
            mem[_123 + 32] = 0
            mem[_123 + 64] = 0
            mem[_123 + 96] = 0
            mem[_123 + 128] = 0
            _125 = mem[64]
            mem[64] = mem[64] + 288
            mem[_125 len 288] = code.data[14197 len 288]
            mem[_123 + 160] = _125
            _128 = mem[64]
            mem[64] = mem[64] + 192
            mem[_128] = this.address
            mem[_128 + 32] = arg6
            mem[_128 + 64] = 0
            mem[_128 + 96] = 24 * 3600
            mem[_128 + 128] = block.timestamp
            _129 = mem[64]
            mem[64] = mem[64] + 288
            mem[_129] = ext_call.return_data[0]
            mem[_129 + 32] = 0
            mem[_129 + 64] = 0
            mem[_129 + 96] = 0
            mem[_129 + 128] = 0
            mem[_129 + 160] = 0
            mem[_129 + 192] = 0
            mem[_129 + 224] = 0
            mem[_129 + 256] = 0
            mem[_128 + 160] = _129
            mem[0] = ext_call.return_data[0]
            mem[32] = 8
            address(stor8[ext_call.return_data[0]].field_0) = this.address
            stor8[ext_call.return_data[0]].field_256 = arg6
            stor8[ext_call.return_data[0]].field_512 = 0
            stor8[ext_call.return_data[0]].field_768 = 24 * 3600
            stor8[ext_call.return_data[0]].field_1024 = block.timestamp
            t = sha3(ext_call.return_data[0], 8) + 5
            s = _129
            while _129 + 288 > s:
                stor[t] = mem[s]
                t = t + 1
                s = s + 32
                continue 
            s = sha3(ext_call.return_data[0], 8) + 14
            while sha3(ext_call.return_data[0], 8) + 14 > s:
                stor[s] = 0
                s = s + 1
                continue 
            mem[mem[64]] = ext_call.return_data[0]
            mem[mem[64] + 32] = arg6
            mem[mem[64] + 64] = 0
            mem[mem[64] + 96] = 24 * 3600
            mem[mem[64] + 128] = block.timestamp
            emit SaleCreated(ext_call.return_data[0], arg6, 0, 24 * 3600, block.timestamp);
            idx = idx + 1
            s = ext_call.return_data[0]
            continue 
}

function createSingleSeedAuction(uint8 arg1, uint8 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8) {
    if msg.sender == address(stor1.length):
        require not uint8(stor3.length.field_160)
        require nonFungibleContractAddress
        require arg1
        require ext_code.size(nonFungibleContractAddress)
        call nonFungibleContractAddress.createSeedCollectible(uint8 arg1, uint8 arg2, uint256 arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7) with:
             gas gas_remaining wei
            args 0, 0, arg2 << 248, arg3, this.address, 0, arg4, arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg6:
            mem[1024] = ext_call.return_data[0]
            mem[1056] = 0
            mem[1088] = 0
            mem[1120] = 0
            mem[1152] = 0
            mem[1184] = 0
            mem[1216] = 0
            mem[1248] = 0
            mem[1280] = 0
            if not arg7:
                if not arg8:
                    address(stor8[ext_call.return_data[0]].field_0) = this.address
                    stor8[ext_call.return_data[0]].field_256 = arg6
                    stor8[ext_call.return_data[0]].field_512 = 0
                    stor8[ext_call.return_data[0]].field_768 = 24 * 3600
                    stor8[ext_call.return_data[0]].field_1024 = block.timestamp
                    s = 5
                    idx = 1024
                    while 1312 > idx:
                        stor8[ext_call.return_data[0]][s].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 14
                    while 14 > idx:
                        stor8[ext_call.return_data[0]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    emit SaleCreated(ext_call.return_data[0], arg6, 0, 24 * 3600, block.timestamp);
                else:
                    require 60 <= arg8
                    address(stor8[ext_call.return_data[0]].field_0) = this.address
                    stor8[ext_call.return_data[0]].field_256 = arg6
                    stor8[ext_call.return_data[0]].field_512 = 0
                    stor8[ext_call.return_data[0]].field_768 = arg8
                    stor8[ext_call.return_data[0]].field_1024 = block.timestamp
                    s = 5
                    idx = 1024
                    while 1312 > idx:
                        stor8[ext_call.return_data[0]][s].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 14
                    while 14 > idx:
                        stor8[ext_call.return_data[0]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    emit SaleCreated(ext_call.return_data[0], arg6, 0, arg8, block.timestamp);
            else:
                if not arg8:
                    address(stor8[ext_call.return_data[0]].field_0) = this.address
                    stor8[ext_call.return_data[0]].field_256 = arg6
                    stor8[ext_call.return_data[0]].field_512 = arg7
                    stor8[ext_call.return_data[0]].field_768 = 24 * 3600
                    stor8[ext_call.return_data[0]].field_1024 = block.timestamp
                    s = 5
                    idx = 1024
                    while 1312 > idx:
                        stor8[ext_call.return_data[0]][s].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 14
                    while 14 > idx:
                        stor8[ext_call.return_data[0]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    emit SaleCreated(ext_call.return_data[0], arg6, arg7, 24 * 3600, block.timestamp);
                else:
                    require 60 <= arg8
                    address(stor8[ext_call.return_data[0]].field_0) = this.address
                    stor8[ext_call.return_data[0]].field_256 = arg6
                    stor8[ext_call.return_data[0]].field_512 = arg7
                    stor8[ext_call.return_data[0]].field_768 = arg8
                    stor8[ext_call.return_data[0]].field_1024 = block.timestamp
                    s = 5
                    idx = 1024
                    while 1312 > idx:
                        stor8[ext_call.return_data[0]][s].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 14
                    while 14 > idx:
                        stor8[ext_call.return_data[0]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    emit SaleCreated(ext_call.return_data[0], arg6, arg7, arg8, block.timestamp);
        else:
            idx = 0
            s = 0
            while idx < 10:
                mem[0] = idx
                mem[32] = 10
                require lastSingleSalePrices[idx] + s >= s
                idx = idx + 1
                s = lastSingleSalePrices[idx] + s
                continue 
            if not 10 * stor[_167]:
                mem[1024] = ext_call.return_data[0]
                mem[1056] = 0
                mem[1088] = 0
                mem[1120] = 0
                mem[1152] = 0
                mem[1184] = 0
                mem[1216] = 0
                mem[1248] = 0
                mem[1280] = 0
                if not arg7:
                    if not arg8:
                        address(stor8[ext_call.return_data[0]].field_0) = this.address
                        stor8[ext_call.return_data[0]].field_256 = 10^16
                        stor8[ext_call.return_data[0]].field_512 = 0
                        stor8[ext_call.return_data[0]].field_768 = 24 * 3600
                        stor8[ext_call.return_data[0]].field_1024 = block.timestamp
                        s = 5
                        idx = 1024
                        while 1312 > idx:
                            stor8[ext_call.return_data[0]][s].field_0 = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = 14
                        while 14 > idx:
                            stor8[ext_call.return_data[0]][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        emit SaleCreated(ext_call.return_data[0], 10^16, 0, 24 * 3600, block.timestamp);
                    else:
                        require 60 <= arg8
                        address(stor8[ext_call.return_data[0]].field_0) = this.address
                        stor8[ext_call.return_data[0]].field_256 = 10^16
                        stor8[ext_call.return_data[0]].field_512 = 0
                        stor8[ext_call.return_data[0]].field_768 = arg8
                        stor8[ext_call.return_data[0]].field_1024 = block.timestamp
                        s = 5
                        idx = 1024
                        while 1312 > idx:
                            stor8[ext_call.return_data[0]][s].field_0 = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = 14
                        while 14 > idx:
                            stor8[ext_call.return_data[0]][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        emit SaleCreated(ext_call.return_data[0], 10^16, 0, arg8, block.timestamp);
                else:
                    if not arg8:
                        address(stor8[ext_call.return_data[0]].field_0) = this.address
                        stor8[ext_call.return_data[0]].field_256 = 10^16
                        stor8[ext_call.return_data[0]].field_512 = arg7
                        stor8[ext_call.return_data[0]].field_768 = 24 * 3600
                        stor8[ext_call.return_data[0]].field_1024 = block.timestamp
                        s = 5
                        idx = 1024
                        while 1312 > idx:
                            stor8[ext_call.return_data[0]][s].field_0 = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = 14
                        while 14 > idx:
                            stor8[ext_call.return_data[0]][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        emit SaleCreated(ext_call.return_data[0], 10^16, arg7, 24 * 3600, block.timestamp);
                    else:
                        require 60 <= arg8
                        address(stor8[ext_call.return_data[0]].field_0) = this.address
                        stor8[ext_call.return_data[0]].field_256 = 10^16
                        stor8[ext_call.return_data[0]].field_512 = arg7
                        stor8[ext_call.return_data[0]].field_768 = arg8
                        stor8[ext_call.return_data[0]].field_1024 = block.timestamp
                        s = 5
                        idx = 1024
                        while 1312 > idx:
                            stor8[ext_call.return_data[0]][s].field_0 = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = 14
                        while 14 > idx:
                            stor8[ext_call.return_data[0]][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        emit SaleCreated(ext_call.return_data[0], 10^16, arg7, arg8, block.timestamp);
            else:
                require 350 * stor[_167] / 10 * stor[_167] == 35
                mem[1024] = ext_call.return_data[0]
                mem[1056] = 0
                mem[1088] = 0
                mem[1120] = 0
                mem[1152] = 0
                mem[1184] = 0
                mem[1216] = 0
                mem[1248] = 0
                mem[1280] = 0
                if 350 * stor[_167] / 100 >= 10^16:
                    if not arg7:
                        if not arg8:
                            address(stor8[ext_call.return_data[0]].field_0) = this.address
                            stor8[ext_call.return_data[0]].field_256 = 350 * stor[_167] / 100
                            stor8[ext_call.return_data[0]].field_512 = 0
                            stor8[ext_call.return_data[0]].field_768 = 24 * 3600
                            stor8[ext_call.return_data[0]].field_1024 = block.timestamp
                            s = 5
                            idx = 1024
                            while 1312 > idx:
                                stor8[ext_call.return_data[0]][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 14
                            while 14 > idx:
                                stor8[ext_call.return_data[0]][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            emit SaleCreated(ext_call.return_data[0], 350 * stor[_167] / 100, 0, 24 * 3600, block.timestamp);
                        else:
                            require 60 <= arg8
                            address(stor8[ext_call.return_data[0]].field_0) = this.address
                            stor8[ext_call.return_data[0]].field_256 = 350 * stor[_167] / 100
                            stor8[ext_call.return_data[0]].field_512 = 0
                            stor8[ext_call.return_data[0]].field_768 = arg8
                            stor8[ext_call.return_data[0]].field_1024 = block.timestamp
                            s = 5
                            idx = 1024
                            while 1312 > idx:
                                stor8[ext_call.return_data[0]][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 14
                            while 14 > idx:
                                stor8[ext_call.return_data[0]][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            emit SaleCreated(ext_call.return_data[0], 350 * stor[_167] / 100, 0, arg8, block.timestamp);
                    else:
                        if not arg8:
                            address(stor8[ext_call.return_data[0]].field_0) = this.address
                            stor8[ext_call.return_data[0]].field_256 = 350 * stor[_167] / 100
                            stor8[ext_call.return_data[0]].field_512 = arg7
                            stor8[ext_call.return_data[0]].field_768 = 24 * 3600
                            stor8[ext_call.return_data[0]].field_1024 = block.timestamp
                            s = 5
                            idx = 1024
                            while 1312 > idx:
                                stor8[ext_call.return_data[0]][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 14
                            while 14 > idx:
                                stor8[ext_call.return_data[0]][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            emit SaleCreated(ext_call.return_data[0], 350 * stor[_167] / 100, arg7, 24 * 3600, block.timestamp);
                        else:
                            require 60 <= arg8
                            address(stor8[ext_call.return_data[0]].field_0) = this.address
                            stor8[ext_call.return_data[0]].field_256 = 350 * stor[_167] / 100
                            stor8[ext_call.return_data[0]].field_512 = arg7
                            stor8[ext_call.return_data[0]].field_768 = arg8
                            stor8[ext_call.return_data[0]].field_1024 = block.timestamp
                            s = 5
                            idx = 1024
                            while 1312 > idx:
                                stor8[ext_call.return_data[0]][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 14
                            while 14 > idx:
                                stor8[ext_call.return_data[0]][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            emit SaleCreated(ext_call.return_data[0], 350 * stor[_167] / 100, arg7, arg8, block.timestamp);
                else:
                    if not arg7:
                        if not arg8:
                            address(stor8[ext_call.return_data[0]].field_0) = this.address
                            stor8[ext_call.return_data[0]].field_256 = 10^16
                            stor8[ext_call.return_data[0]].field_512 = 0
                            stor8[ext_call.return_data[0]].field_768 = 24 * 3600
                            stor8[ext_call.return_data[0]].field_1024 = block.timestamp
                            s = 5
                            idx = 1024
                            while 1312 > idx:
                                stor8[ext_call.return_data[0]][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 14
                            while 14 > idx:
                                stor8[ext_call.return_data[0]][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            emit SaleCreated(ext_call.return_data[0], 10^16, 0, 24 * 3600, block.timestamp);
                        else:
                            require 60 <= arg8
                            address(stor8[ext_call.return_data[0]].field_0) = this.address
                            stor8[ext_call.return_data[0]].field_256 = 10^16
                            stor8[ext_call.return_data[0]].field_512 = 0
                            stor8[ext_call.return_data[0]].field_768 = arg8
                            stor8[ext_call.return_data[0]].field_1024 = block.timestamp
                            s = 5
                            idx = 1024
                            while 1312 > idx:
                                stor8[ext_call.return_data[0]][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 14
                            while 14 > idx:
                                stor8[ext_call.return_data[0]][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            emit SaleCreated(ext_call.return_data[0], 10^16, 0, arg8, block.timestamp);
                    else:
                        if not arg8:
                            address(stor8[ext_call.return_data[0]].field_0) = this.address
                            stor8[ext_call.return_data[0]].field_256 = 10^16
                            stor8[ext_call.return_data[0]].field_512 = arg7
                            stor8[ext_call.return_data[0]].field_768 = 24 * 3600
                            stor8[ext_call.return_data[0]].field_1024 = block.timestamp
                            s = 5
                            idx = 1024
                            while 1312 > idx:
                                stor8[ext_call.return_data[0]][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 14
                            while 14 > idx:
                                stor8[ext_call.return_data[0]][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            emit SaleCreated(ext_call.return_data[0], 10^16, arg7, 24 * 3600, block.timestamp);
                        else:
                            require 60 <= arg8
                            address(stor8[ext_call.return_data[0]].field_0) = this.address
                            stor8[ext_call.return_data[0]].field_256 = 10^16
                            stor8[ext_call.return_data[0]].field_512 = arg7
                            stor8[ext_call.return_data[0]].field_768 = arg8
                            stor8[ext_call.return_data[0]].field_1024 = block.timestamp
                            s = 5
                            idx = 1024
                            while 1312 > idx:
                                stor8[ext_call.return_data[0]][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 14
                            while 14 > idx:
                                stor8[ext_call.return_data[0]][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            emit SaleCreated(ext_call.return_data[0], 10^16, arg7, arg8, block.timestamp);
    else:
        require msg.sender == gameManagerSecondaryAddress
        require not uint8(stor3.length.field_160)
        require nonFungibleContractAddress
        require arg1
        require ext_code.size(nonFungibleContractAddress)
        call nonFungibleContractAddress.createSeedCollectible(uint8 arg1, uint8 arg2, uint256 arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7) with:
             gas gas_remaining wei
            args 0, 0, arg2 << 248, arg3, this.address, 0, arg4, arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg6:
            mem[1024] = ext_call.return_data[0]
            mem[1056] = 0
            mem[1088] = 0
            mem[1120] = 0
            mem[1152] = 0
            mem[1184] = 0
            mem[1216] = 0
            mem[1248] = 0
            mem[1280] = 0
            if not arg7:
                if not arg8:
                    address(stor8[ext_call.return_data[0]].field_0) = this.address
                    stor8[ext_call.return_data[0]].field_256 = arg6
                    stor8[ext_call.return_data[0]].field_512 = 0
                    stor8[ext_call.return_data[0]].field_768 = 24 * 3600
                    stor8[ext_call.return_data[0]].field_1024 = block.timestamp
                    s = 5
                    idx = 1024
                    while 1312 > idx:
                        stor8[ext_call.return_data[0]][s].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 14
                    while 14 > idx:
                        stor8[ext_call.return_data[0]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    emit SaleCreated(ext_call.return_data[0], arg6, 0, 24 * 3600, block.timestamp);
                else:
                    require 60 <= arg8
                    address(stor8[ext_call.return_data[0]].field_0) = this.address
                    stor8[ext_call.return_data[0]].field_256 = arg6
                    stor8[ext_call.return_data[0]].field_512 = 0
                    stor8[ext_call.return_data[0]].field_768 = arg8
                    stor8[ext_call.return_data[0]].field_1024 = block.timestamp
                    s = 5
                    idx = 1024
                    while 1312 > idx:
                        stor8[ext_call.return_data[0]][s].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 14
                    while 14 > idx:
                        stor8[ext_call.return_data[0]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    emit SaleCreated(ext_call.return_data[0], arg6, 0, arg8, block.timestamp);
            else:
                if not arg8:
                    address(stor8[ext_call.return_data[0]].field_0) = this.address
                    stor8[ext_call.return_data[0]].field_256 = arg6
                    stor8[ext_call.return_data[0]].field_512 = arg7
                    stor8[ext_call.return_data[0]].field_768 = 24 * 3600
                    stor8[ext_call.return_data[0]].field_1024 = block.timestamp
                    s = 5
                    idx = 1024
                    while 1312 > idx:
                        stor8[ext_call.return_data[0]][s].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 14
                    while 14 > idx:
                        stor8[ext_call.return_data[0]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    emit SaleCreated(ext_call.return_data[0], arg6, arg7, 24 * 3600, block.timestamp);
                else:
                    require 60 <= arg8
                    address(stor8[ext_call.return_data[0]].field_0) = this.address
                    stor8[ext_call.return_data[0]].field_256 = arg6
                    stor8[ext_call.return_data[0]].field_512 = arg7
                    stor8[ext_call.return_data[0]].field_768 = arg8
                    stor8[ext_call.return_data[0]].field_1024 = block.timestamp
                    s = 5
                    idx = 1024
                    while 1312 > idx:
                        stor8[ext_call.return_data[0]][s].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 14
                    while 14 > idx:
                        stor8[ext_call.return_data[0]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    emit SaleCreated(ext_call.return_data[0], arg6, arg7, arg8, block.timestamp);
        else:
            idx = 0
            s = 0
            while idx < 10:
                mem[0] = idx
                mem[32] = 10
                require lastSingleSalePrices[idx] + s >= s
                idx = idx + 1
                s = lastSingleSalePrices[idx] + s
                continue 
            if not 10 * stor[_172]:
                mem[1024] = ext_call.return_data[0]
                mem[1056] = 0
                mem[1088] = 0
                mem[1120] = 0
                mem[1152] = 0
                mem[1184] = 0
                mem[1216] = 0
                mem[1248] = 0
                mem[1280] = 0
                if not arg7:
                    if not arg8:
                        address(stor8[ext_call.return_data[0]].field_0) = this.address
                        stor8[ext_call.return_data[0]].field_256 = 10^16
                        stor8[ext_call.return_data[0]].field_512 = 0
                        stor8[ext_call.return_data[0]].field_768 = 24 * 3600
                        stor8[ext_call.return_data[0]].field_1024 = block.timestamp
                        s = 5
                        idx = 1024
                        while 1312 > idx:
                            stor8[ext_call.return_data[0]][s].field_0 = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = 14
                        while 14 > idx:
                            stor8[ext_call.return_data[0]][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        emit SaleCreated(ext_call.return_data[0], 10^16, 0, 24 * 3600, block.timestamp);
                    else:
                        require 60 <= arg8
                        address(stor8[ext_call.return_data[0]].field_0) = this.address
                        stor8[ext_call.return_data[0]].field_256 = 10^16
                        stor8[ext_call.return_data[0]].field_512 = 0
                        stor8[ext_call.return_data[0]].field_768 = arg8
                        stor8[ext_call.return_data[0]].field_1024 = block.timestamp
                        s = 5
                        idx = 1024
                        while 1312 > idx:
                            stor8[ext_call.return_data[0]][s].field_0 = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = 14
                        while 14 > idx:
                            stor8[ext_call.return_data[0]][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        emit SaleCreated(ext_call.return_data[0], 10^16, 0, arg8, block.timestamp);
                else:
                    if not arg8:
                        address(stor8[ext_call.return_data[0]].field_0) = this.address
                        stor8[ext_call.return_data[0]].field_256 = 10^16
                        stor8[ext_call.return_data[0]].field_512 = arg7
                        stor8[ext_call.return_data[0]].field_768 = 24 * 3600
                        stor8[ext_call.return_data[0]].field_1024 = block.timestamp
                        s = 5
                        idx = 1024
                        while 1312 > idx:
                            stor8[ext_call.return_data[0]][s].field_0 = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = 14
                        while 14 > idx:
                            stor8[ext_call.return_data[0]][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        emit SaleCreated(ext_call.return_data[0], 10^16, arg7, 24 * 3600, block.timestamp);
                    else:
                        require 60 <= arg8
                        address(stor8[ext_call.return_data[0]].field_0) = this.address
                        stor8[ext_call.return_data[0]].field_256 = 10^16
                        stor8[ext_call.return_data[0]].field_512 = arg7
                        stor8[ext_call.return_data[0]].field_768 = arg8
                        stor8[ext_call.return_data[0]].field_1024 = block.timestamp
                        s = 5
                        idx = 1024
                        while 1312 > idx:
                            stor8[ext_call.return_data[0]][s].field_0 = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = 14
                        while 14 > idx:
                            stor8[ext_call.return_data[0]][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        emit SaleCreated(ext_call.return_data[0], 10^16, arg7, arg8, block.timestamp);
            else:
                require 350 * stor[_172] / 10 * stor[_172] == 35
                mem[1024] = ext_call.return_data[0]
                mem[1056] = 0
                mem[1088] = 0
                mem[1120] = 0
                mem[1152] = 0
                mem[1184] = 0
                mem[1216] = 0
                mem[1248] = 0
                mem[1280] = 0
                if 350 * stor[_172] / 100 >= 10^16:
                    if not arg7:
                        if not arg8:
                            address(stor8[ext_call.return_data[0]].field_0) = this.address
                            stor8[ext_call.return_data[0]].field_256 = 350 * stor[_172] / 100
                            stor8[ext_call.return_data[0]].field_512 = 0
                            stor8[ext_call.return_data[0]].field_768 = 24 * 3600
                            stor8[ext_call.return_data[0]].field_1024 = block.timestamp
                            s = 5
                            idx = 1024
                            while 1312 > idx:
                                stor8[ext_call.return_data[0]][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 14
                            while 14 > idx:
                                stor8[ext_call.return_data[0]][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            emit SaleCreated(ext_call.return_data[0], 350 * stor[_172] / 100, 0, 24 * 3600, block.timestamp);
                        else:
                            require 60 <= arg8
                            address(stor8[ext_call.return_data[0]].field_0) = this.address
                            stor8[ext_call.return_data[0]].field_256 = 350 * stor[_172] / 100
                            stor8[ext_call.return_data[0]].field_512 = 0
                            stor8[ext_call.return_data[0]].field_768 = arg8
                            stor8[ext_call.return_data[0]].field_1024 = block.timestamp
                            s = 5
                            idx = 1024
                            while 1312 > idx:
                                stor8[ext_call.return_data[0]][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 14
                            while 14 > idx:
                                stor8[ext_call.return_data[0]][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            emit SaleCreated(ext_call.return_data[0], 350 * stor[_172] / 100, 0, arg8, block.timestamp);
                    else:
                        if not arg8:
                            address(stor8[ext_call.return_data[0]].field_0) = this.address
                            stor8[ext_call.return_data[0]].field_256 = 350 * stor[_172] / 100
                            stor8[ext_call.return_data[0]].field_512 = arg7
                            stor8[ext_call.return_data[0]].field_768 = 24 * 3600
                            stor8[ext_call.return_data[0]].field_1024 = block.timestamp
                            s = 5
                            idx = 1024
                            while 1312 > idx:
                                stor8[ext_call.return_data[0]][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 14
                            while 14 > idx:
                                stor8[ext_call.return_data[0]][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            emit SaleCreated(ext_call.return_data[0], 350 * stor[_172] / 100, arg7, 24 * 3600, block.timestamp);
                        else:
                            require 60 <= arg8
                            address(stor8[ext_call.return_data[0]].field_0) = this.address
                            stor8[ext_call.return_data[0]].field_256 = 350 * stor[_172] / 100
                            stor8[ext_call.return_data[0]].field_512 = arg7
                            stor8[ext_call.return_data[0]].field_768 = arg8
                            stor8[ext_call.return_data[0]].field_1024 = block.timestamp
                            s = 5
                            idx = 1024
                            while 1312 > idx:
                                stor8[ext_call.return_data[0]][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 14
                            while 14 > idx:
                                stor8[ext_call.return_data[0]][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            emit SaleCreated(ext_call.return_data[0], 350 * stor[_172] / 100, arg7, arg8, block.timestamp);
                else:
                    if not arg7:
                        if not arg8:
                            address(stor8[ext_call.return_data[0]].field_0) = this.address
                            stor8[ext_call.return_data[0]].field_256 = 10^16
                            stor8[ext_call.return_data[0]].field_512 = 0
                            stor8[ext_call.return_data[0]].field_768 = 24 * 3600
                            stor8[ext_call.return_data[0]].field_1024 = block.timestamp
                            s = 5
                            idx = 1024
                            while 1312 > idx:
                                stor8[ext_call.return_data[0]][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 14
                            while 14 > idx:
                                stor8[ext_call.return_data[0]][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            emit SaleCreated(ext_call.return_data[0], 10^16, 0, 24 * 3600, block.timestamp);
                        else:
                            require 60 <= arg8
                            address(stor8[ext_call.return_data[0]].field_0) = this.address
                            stor8[ext_call.return_data[0]].field_256 = 10^16
                            stor8[ext_call.return_data[0]].field_512 = 0
                            stor8[ext_call.return_data[0]].field_768 = arg8
                            stor8[ext_call.return_data[0]].field_1024 = block.timestamp
                            s = 5
                            idx = 1024
                            while 1312 > idx:
                                stor8[ext_call.return_data[0]][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 14
                            while 14 > idx:
                                stor8[ext_call.return_data[0]][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            emit SaleCreated(ext_call.return_data[0], 10^16, 0, arg8, block.timestamp);
                    else:
                        if not arg8:
                            address(stor8[ext_call.return_data[0]].field_0) = this.address
                            stor8[ext_call.return_data[0]].field_256 = 10^16
                            stor8[ext_call.return_data[0]].field_512 = arg7
                            stor8[ext_call.return_data[0]].field_768 = 24 * 3600
                            stor8[ext_call.return_data[0]].field_1024 = block.timestamp
                            s = 5
                            idx = 1024
                            while 1312 > idx:
                                stor8[ext_call.return_data[0]][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 14
                            while 14 > idx:
                                stor8[ext_call.return_data[0]][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            emit SaleCreated(ext_call.return_data[0], 10^16, arg7, 24 * 3600, block.timestamp);
                        else:
                            require 60 <= arg8
                            address(stor8[ext_call.return_data[0]].field_0) = this.address
                            stor8[ext_call.return_data[0]].field_256 = 10^16
                            stor8[ext_call.return_data[0]].field_512 = arg7
                            stor8[ext_call.return_data[0]].field_768 = arg8
                            stor8[ext_call.return_data[0]].field_1024 = block.timestamp
                            s = 5
                            idx = 1024
                            while 1312 > idx:
                                stor8[ext_call.return_data[0]][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 14
                            while 14 > idx:
                                stor8[ext_call.return_data[0]][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            emit SaleCreated(ext_call.return_data[0], 10^16, arg7, arg8, block.timestamp);
}

function createPromoSeedAuction(uint8 arg1, uint8 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8) {
    if msg.sender == address(stor1.length):
        require not uint8(stor3.length.field_160)
        require nonFungibleContractAddress
        require arg1
        require ext_code.size(nonFungibleContractAddress)
        call nonFungibleContractAddress.createPromoCollectible(uint8 arg1, uint8 arg2, uint256 arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7) with:
             gas gas_remaining wei
            args 0, 0, arg2 << 248, arg3, this.address, 0, arg4, arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg6:
            mem[1024] = ext_call.return_data[0]
            mem[1056] = 0
            mem[1088] = 0
            mem[1120] = 0
            mem[1152] = 0
            mem[1184] = 0
            mem[1216] = 0
            mem[1248] = 0
            mem[1280] = 0
            if not arg7:
                if not arg8:
                    address(stor8[ext_call.return_data[0]].field_0) = this.address
                    stor8[ext_call.return_data[0]].field_256 = arg6
                    stor8[ext_call.return_data[0]].field_512 = 0
                    stor8[ext_call.return_data[0]].field_768 = 24 * 3600
                    stor8[ext_call.return_data[0]].field_1024 = block.timestamp
                    s = 5
                    idx = 1024
                    while 1312 > idx:
                        stor8[ext_call.return_data[0]][s].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 14
                    while 14 > idx:
                        stor8[ext_call.return_data[0]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    emit SaleCreated(ext_call.return_data[0], arg6, 0, 24 * 3600, block.timestamp);
                else:
                    require 60 <= arg8
                    address(stor8[ext_call.return_data[0]].field_0) = this.address
                    stor8[ext_call.return_data[0]].field_256 = arg6
                    stor8[ext_call.return_data[0]].field_512 = 0
                    stor8[ext_call.return_data[0]].field_768 = arg8
                    stor8[ext_call.return_data[0]].field_1024 = block.timestamp
                    s = 5
                    idx = 1024
                    while 1312 > idx:
                        stor8[ext_call.return_data[0]][s].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 14
                    while 14 > idx:
                        stor8[ext_call.return_data[0]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    emit SaleCreated(ext_call.return_data[0], arg6, 0, arg8, block.timestamp);
            else:
                if not arg8:
                    address(stor8[ext_call.return_data[0]].field_0) = this.address
                    stor8[ext_call.return_data[0]].field_256 = arg6
                    stor8[ext_call.return_data[0]].field_512 = arg7
                    stor8[ext_call.return_data[0]].field_768 = 24 * 3600
                    stor8[ext_call.return_data[0]].field_1024 = block.timestamp
                    s = 5
                    idx = 1024
                    while 1312 > idx:
                        stor8[ext_call.return_data[0]][s].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 14
                    while 14 > idx:
                        stor8[ext_call.return_data[0]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    emit SaleCreated(ext_call.return_data[0], arg6, arg7, 24 * 3600, block.timestamp);
                else:
                    require 60 <= arg8
                    address(stor8[ext_call.return_data[0]].field_0) = this.address
                    stor8[ext_call.return_data[0]].field_256 = arg6
                    stor8[ext_call.return_data[0]].field_512 = arg7
                    stor8[ext_call.return_data[0]].field_768 = arg8
                    stor8[ext_call.return_data[0]].field_1024 = block.timestamp
                    s = 5
                    idx = 1024
                    while 1312 > idx:
                        stor8[ext_call.return_data[0]][s].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 14
                    while 14 > idx:
                        stor8[ext_call.return_data[0]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    emit SaleCreated(ext_call.return_data[0], arg6, arg7, arg8, block.timestamp);
        else:
            idx = 0
            s = 0
            while idx < 10:
                mem[0] = idx
                mem[32] = 10
                require lastSingleSalePrices[idx] + s >= s
                idx = idx + 1
                s = lastSingleSalePrices[idx] + s
                continue 
            if not 10 * stor[_167]:
                mem[1024] = ext_call.return_data[0]
                mem[1056] = 0
                mem[1088] = 0
                mem[1120] = 0
                mem[1152] = 0
                mem[1184] = 0
                mem[1216] = 0
                mem[1248] = 0
                mem[1280] = 0
                if not arg7:
                    if not arg8:
                        address(stor8[ext_call.return_data[0]].field_0) = this.address
                        stor8[ext_call.return_data[0]].field_256 = 10^16
                        stor8[ext_call.return_data[0]].field_512 = 0
                        stor8[ext_call.return_data[0]].field_768 = 24 * 3600
                        stor8[ext_call.return_data[0]].field_1024 = block.timestamp
                        s = 5
                        idx = 1024
                        while 1312 > idx:
                            stor8[ext_call.return_data[0]][s].field_0 = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = 14
                        while 14 > idx:
                            stor8[ext_call.return_data[0]][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        emit SaleCreated(ext_call.return_data[0], 10^16, 0, 24 * 3600, block.timestamp);
                    else:
                        require 60 <= arg8
                        address(stor8[ext_call.return_data[0]].field_0) = this.address
                        stor8[ext_call.return_data[0]].field_256 = 10^16
                        stor8[ext_call.return_data[0]].field_512 = 0
                        stor8[ext_call.return_data[0]].field_768 = arg8
                        stor8[ext_call.return_data[0]].field_1024 = block.timestamp
                        s = 5
                        idx = 1024
                        while 1312 > idx:
                            stor8[ext_call.return_data[0]][s].field_0 = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = 14
                        while 14 > idx:
                            stor8[ext_call.return_data[0]][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        emit SaleCreated(ext_call.return_data[0], 10^16, 0, arg8, block.timestamp);
                else:
                    if not arg8:
                        address(stor8[ext_call.return_data[0]].field_0) = this.address
                        stor8[ext_call.return_data[0]].field_256 = 10^16
                        stor8[ext_call.return_data[0]].field_512 = arg7
                        stor8[ext_call.return_data[0]].field_768 = 24 * 3600
                        stor8[ext_call.return_data[0]].field_1024 = block.timestamp
                        s = 5
                        idx = 1024
                        while 1312 > idx:
                            stor8[ext_call.return_data[0]][s].field_0 = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = 14
                        while 14 > idx:
                            stor8[ext_call.return_data[0]][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        emit SaleCreated(ext_call.return_data[0], 10^16, arg7, 24 * 3600, block.timestamp);
                    else:
                        require 60 <= arg8
                        address(stor8[ext_call.return_data[0]].field_0) = this.address
                        stor8[ext_call.return_data[0]].field_256 = 10^16
                        stor8[ext_call.return_data[0]].field_512 = arg7
                        stor8[ext_call.return_data[0]].field_768 = arg8
                        stor8[ext_call.return_data[0]].field_1024 = block.timestamp
                        s = 5
                        idx = 1024
                        while 1312 > idx:
                            stor8[ext_call.return_data[0]][s].field_0 = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = 14
                        while 14 > idx:
                            stor8[ext_call.return_data[0]][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        emit SaleCreated(ext_call.return_data[0], 10^16, arg7, arg8, block.timestamp);
            else:
                require 350 * stor[_167] / 10 * stor[_167] == 35
                mem[1024] = ext_call.return_data[0]
                mem[1056] = 0
                mem[1088] = 0
                mem[1120] = 0
                mem[1152] = 0
                mem[1184] = 0
                mem[1216] = 0
                mem[1248] = 0
                mem[1280] = 0
                if 350 * stor[_167] / 100 >= 10^16:
                    if not arg7:
                        if not arg8:
                            address(stor8[ext_call.return_data[0]].field_0) = this.address
                            stor8[ext_call.return_data[0]].field_256 = 350 * stor[_167] / 100
                            stor8[ext_call.return_data[0]].field_512 = 0
                            stor8[ext_call.return_data[0]].field_768 = 24 * 3600
                            stor8[ext_call.return_data[0]].field_1024 = block.timestamp
                            s = 5
                            idx = 1024
                            while 1312 > idx:
                                stor8[ext_call.return_data[0]][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 14
                            while 14 > idx:
                                stor8[ext_call.return_data[0]][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            emit SaleCreated(ext_call.return_data[0], 350 * stor[_167] / 100, 0, 24 * 3600, block.timestamp);
                        else:
                            require 60 <= arg8
                            address(stor8[ext_call.return_data[0]].field_0) = this.address
                            stor8[ext_call.return_data[0]].field_256 = 350 * stor[_167] / 100
                            stor8[ext_call.return_data[0]].field_512 = 0
                            stor8[ext_call.return_data[0]].field_768 = arg8
                            stor8[ext_call.return_data[0]].field_1024 = block.timestamp
                            s = 5
                            idx = 1024
                            while 1312 > idx:
                                stor8[ext_call.return_data[0]][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 14
                            while 14 > idx:
                                stor8[ext_call.return_data[0]][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            emit SaleCreated(ext_call.return_data[0], 350 * stor[_167] / 100, 0, arg8, block.timestamp);
                    else:
                        if not arg8:
                            address(stor8[ext_call.return_data[0]].field_0) = this.address
                            stor8[ext_call.return_data[0]].field_256 = 350 * stor[_167] / 100
                            stor8[ext_call.return_data[0]].field_512 = arg7
                            stor8[ext_call.return_data[0]].field_768 = 24 * 3600
                            stor8[ext_call.return_data[0]].field_1024 = block.timestamp
                            s = 5
                            idx = 1024
                            while 1312 > idx:
                                stor8[ext_call.return_data[0]][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 14
                            while 14 > idx:
                                stor8[ext_call.return_data[0]][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            emit SaleCreated(ext_call.return_data[0], 350 * stor[_167] / 100, arg7, 24 * 3600, block.timestamp);
                        else:
                            require 60 <= arg8
                            address(stor8[ext_call.return_data[0]].field_0) = this.address
                            stor8[ext_call.return_data[0]].field_256 = 350 * stor[_167] / 100
                            stor8[ext_call.return_data[0]].field_512 = arg7
                            stor8[ext_call.return_data[0]].field_768 = arg8
                            stor8[ext_call.return_data[0]].field_1024 = block.timestamp
                            s = 5
                            idx = 1024
                            while 1312 > idx:
                                stor8[ext_call.return_data[0]][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 14
                            while 14 > idx:
                                stor8[ext_call.return_data[0]][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            emit SaleCreated(ext_call.return_data[0], 350 * stor[_167] / 100, arg7, arg8, block.timestamp);
                else:
                    if not arg7:
                        if not arg8:
                            address(stor8[ext_call.return_data[0]].field_0) = this.address
                            stor8[ext_call.return_data[0]].field_256 = 10^16
                            stor8[ext_call.return_data[0]].field_512 = 0
                            stor8[ext_call.return_data[0]].field_768 = 24 * 3600
                            stor8[ext_call.return_data[0]].field_1024 = block.timestamp
                            s = 5
                            idx = 1024
                            while 1312 > idx:
                                stor8[ext_call.return_data[0]][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 14
                            while 14 > idx:
                                stor8[ext_call.return_data[0]][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            emit SaleCreated(ext_call.return_data[0], 10^16, 0, 24 * 3600, block.timestamp);
                        else:
                            require 60 <= arg8
                            address(stor8[ext_call.return_data[0]].field_0) = this.address
                            stor8[ext_call.return_data[0]].field_256 = 10^16
                            stor8[ext_call.return_data[0]].field_512 = 0
                            stor8[ext_call.return_data[0]].field_768 = arg8
                            stor8[ext_call.return_data[0]].field_1024 = block.timestamp
                            s = 5
                            idx = 1024
                            while 1312 > idx:
                                stor8[ext_call.return_data[0]][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 14
                            while 14 > idx:
                                stor8[ext_call.return_data[0]][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            emit SaleCreated(ext_call.return_data[0], 10^16, 0, arg8, block.timestamp);
                    else:
                        if not arg8:
                            address(stor8[ext_call.return_data[0]].field_0) = this.address
                            stor8[ext_call.return_data[0]].field_256 = 10^16
                            stor8[ext_call.return_data[0]].field_512 = arg7
                            stor8[ext_call.return_data[0]].field_768 = 24 * 3600
                            stor8[ext_call.return_data[0]].field_1024 = block.timestamp
                            s = 5
                            idx = 1024
                            while 1312 > idx:
                                stor8[ext_call.return_data[0]][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 14
                            while 14 > idx:
                                stor8[ext_call.return_data[0]][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            emit SaleCreated(ext_call.return_data[0], 10^16, arg7, 24 * 3600, block.timestamp);
                        else:
                            require 60 <= arg8
                            address(stor8[ext_call.return_data[0]].field_0) = this.address
                            stor8[ext_call.return_data[0]].field_256 = 10^16
                            stor8[ext_call.return_data[0]].field_512 = arg7
                            stor8[ext_call.return_data[0]].field_768 = arg8
                            stor8[ext_call.return_data[0]].field_1024 = block.timestamp
                            s = 5
                            idx = 1024
                            while 1312 > idx:
                                stor8[ext_call.return_data[0]][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 14
                            while 14 > idx:
                                stor8[ext_call.return_data[0]][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            emit SaleCreated(ext_call.return_data[0], 10^16, arg7, arg8, block.timestamp);
    else:
        require msg.sender == gameManagerSecondaryAddress
        require not uint8(stor3.length.field_160)
        require nonFungibleContractAddress
        require arg1
        require ext_code.size(nonFungibleContractAddress)
        call nonFungibleContractAddress.createPromoCollectible(uint8 arg1, uint8 arg2, uint256 arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7) with:
             gas gas_remaining wei
            args 0, 0, arg2 << 248, arg3, this.address, 0, arg4, arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg6:
            mem[1024] = ext_call.return_data[0]
            mem[1056] = 0
            mem[1088] = 0
            mem[1120] = 0
            mem[1152] = 0
            mem[1184] = 0
            mem[1216] = 0
            mem[1248] = 0
            mem[1280] = 0
            if not arg7:
                if not arg8:
                    address(stor8[ext_call.return_data[0]].field_0) = this.address
                    stor8[ext_call.return_data[0]].field_256 = arg6
                    stor8[ext_call.return_data[0]].field_512 = 0
                    stor8[ext_call.return_data[0]].field_768 = 24 * 3600
                    stor8[ext_call.return_data[0]].field_1024 = block.timestamp
                    s = 5
                    idx = 1024
                    while 1312 > idx:
                        stor8[ext_call.return_data[0]][s].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 14
                    while 14 > idx:
                        stor8[ext_call.return_data[0]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    emit SaleCreated(ext_call.return_data[0], arg6, 0, 24 * 3600, block.timestamp);
                else:
                    require 60 <= arg8
                    address(stor8[ext_call.return_data[0]].field_0) = this.address
                    stor8[ext_call.return_data[0]].field_256 = arg6
                    stor8[ext_call.return_data[0]].field_512 = 0
                    stor8[ext_call.return_data[0]].field_768 = arg8
                    stor8[ext_call.return_data[0]].field_1024 = block.timestamp
                    s = 5
                    idx = 1024
                    while 1312 > idx:
                        stor8[ext_call.return_data[0]][s].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 14
                    while 14 > idx:
                        stor8[ext_call.return_data[0]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    emit SaleCreated(ext_call.return_data[0], arg6, 0, arg8, block.timestamp);
            else:
                if not arg8:
                    address(stor8[ext_call.return_data[0]].field_0) = this.address
                    stor8[ext_call.return_data[0]].field_256 = arg6
                    stor8[ext_call.return_data[0]].field_512 = arg7
                    stor8[ext_call.return_data[0]].field_768 = 24 * 3600
                    stor8[ext_call.return_data[0]].field_1024 = block.timestamp
                    s = 5
                    idx = 1024
                    while 1312 > idx:
                        stor8[ext_call.return_data[0]][s].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 14
                    while 14 > idx:
                        stor8[ext_call.return_data[0]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    emit SaleCreated(ext_call.return_data[0], arg6, arg7, 24 * 3600, block.timestamp);
                else:
                    require 60 <= arg8
                    address(stor8[ext_call.return_data[0]].field_0) = this.address
                    stor8[ext_call.return_data[0]].field_256 = arg6
                    stor8[ext_call.return_data[0]].field_512 = arg7
                    stor8[ext_call.return_data[0]].field_768 = arg8
                    stor8[ext_call.return_data[0]].field_1024 = block.timestamp
                    s = 5
                    idx = 1024
                    while 1312 > idx:
                        stor8[ext_call.return_data[0]][s].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 14
                    while 14 > idx:
                        stor8[ext_call.return_data[0]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    emit SaleCreated(ext_call.return_data[0], arg6, arg7, arg8, block.timestamp);
        else:
            idx = 0
            s = 0
            while idx < 10:
                mem[0] = idx
                mem[32] = 10
                require lastSingleSalePrices[idx] + s >= s
                idx = idx + 1
                s = lastSingleSalePrices[idx] + s
                continue 
            if not 10 * stor[_172]:
                mem[1024] = ext_call.return_data[0]
                mem[1056] = 0
                mem[1088] = 0
                mem[1120] = 0
                mem[1152] = 0
                mem[1184] = 0
                mem[1216] = 0
                mem[1248] = 0
                mem[1280] = 0
                if not arg7:
                    if not arg8:
                        address(stor8[ext_call.return_data[0]].field_0) = this.address
                        stor8[ext_call.return_data[0]].field_256 = 10^16
                        stor8[ext_call.return_data[0]].field_512 = 0
                        stor8[ext_call.return_data[0]].field_768 = 24 * 3600
                        stor8[ext_call.return_data[0]].field_1024 = block.timestamp
                        s = 5
                        idx = 1024
                        while 1312 > idx:
                            stor8[ext_call.return_data[0]][s].field_0 = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = 14
                        while 14 > idx:
                            stor8[ext_call.return_data[0]][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        emit SaleCreated(ext_call.return_data[0], 10^16, 0, 24 * 3600, block.timestamp);
                    else:
                        require 60 <= arg8
                        address(stor8[ext_call.return_data[0]].field_0) = this.address
                        stor8[ext_call.return_data[0]].field_256 = 10^16
                        stor8[ext_call.return_data[0]].field_512 = 0
                        stor8[ext_call.return_data[0]].field_768 = arg8
                        stor8[ext_call.return_data[0]].field_1024 = block.timestamp
                        s = 5
                        idx = 1024
                        while 1312 > idx:
                            stor8[ext_call.return_data[0]][s].field_0 = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = 14
                        while 14 > idx:
                            stor8[ext_call.return_data[0]][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        emit SaleCreated(ext_call.return_data[0], 10^16, 0, arg8, block.timestamp);
                else:
                    if not arg8:
                        address(stor8[ext_call.return_data[0]].field_0) = this.address
                        stor8[ext_call.return_data[0]].field_256 = 10^16
                        stor8[ext_call.return_data[0]].field_512 = arg7
                        stor8[ext_call.return_data[0]].field_768 = 24 * 3600
                        stor8[ext_call.return_data[0]].field_1024 = block.timestamp
                        s = 5
                        idx = 1024
                        while 1312 > idx:
                            stor8[ext_call.return_data[0]][s].field_0 = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = 14
                        while 14 > idx:
                            stor8[ext_call.return_data[0]][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        emit SaleCreated(ext_call.return_data[0], 10^16, arg7, 24 * 3600, block.timestamp);
                    else:
                        require 60 <= arg8
                        address(stor8[ext_call.return_data[0]].field_0) = this.address
                        stor8[ext_call.return_data[0]].field_256 = 10^16
                        stor8[ext_call.return_data[0]].field_512 = arg7
                        stor8[ext_call.return_data[0]].field_768 = arg8
                        stor8[ext_call.return_data[0]].field_1024 = block.timestamp
                        s = 5
                        idx = 1024
                        while 1312 > idx:
                            stor8[ext_call.return_data[0]][s].field_0 = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = 14
                        while 14 > idx:
                            stor8[ext_call.return_data[0]][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        emit SaleCreated(ext_call.return_data[0], 10^16, arg7, arg8, block.timestamp);
            else:
                require 350 * stor[_172] / 10 * stor[_172] == 35
                mem[1024] = ext_call.return_data[0]
                mem[1056] = 0
                mem[1088] = 0
                mem[1120] = 0
                mem[1152] = 0
                mem[1184] = 0
                mem[1216] = 0
                mem[1248] = 0
                mem[1280] = 0
                if 350 * stor[_172] / 100 >= 10^16:
                    if not arg7:
                        if not arg8:
                            address(stor8[ext_call.return_data[0]].field_0) = this.address
                            stor8[ext_call.return_data[0]].field_256 = 350 * stor[_172] / 100
                            stor8[ext_call.return_data[0]].field_512 = 0
                            stor8[ext_call.return_data[0]].field_768 = 24 * 3600
                            stor8[ext_call.return_data[0]].field_1024 = block.timestamp
                            s = 5
                            idx = 1024
                            while 1312 > idx:
                                stor8[ext_call.return_data[0]][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 14
                            while 14 > idx:
                                stor8[ext_call.return_data[0]][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            emit SaleCreated(ext_call.return_data[0], 350 * stor[_172] / 100, 0, 24 * 3600, block.timestamp);
                        else:
                            require 60 <= arg8
                            address(stor8[ext_call.return_data[0]].field_0) = this.address
                            stor8[ext_call.return_data[0]].field_256 = 350 * stor[_172] / 100
                            stor8[ext_call.return_data[0]].field_512 = 0
                            stor8[ext_call.return_data[0]].field_768 = arg8
                            stor8[ext_call.return_data[0]].field_1024 = block.timestamp
                            s = 5
                            idx = 1024
                            while 1312 > idx:
                                stor8[ext_call.return_data[0]][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 14
                            while 14 > idx:
                                stor8[ext_call.return_data[0]][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            emit SaleCreated(ext_call.return_data[0], 350 * stor[_172] / 100, 0, arg8, block.timestamp);
                    else:
                        if not arg8:
                            address(stor8[ext_call.return_data[0]].field_0) = this.address
                            stor8[ext_call.return_data[0]].field_256 = 350 * stor[_172] / 100
                            stor8[ext_call.return_data[0]].field_512 = arg7
                            stor8[ext_call.return_data[0]].field_768 = 24 * 3600
                            stor8[ext_call.return_data[0]].field_1024 = block.timestamp
                            s = 5
                            idx = 1024
                            while 1312 > idx:
                                stor8[ext_call.return_data[0]][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 14
                            while 14 > idx:
                                stor8[ext_call.return_data[0]][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            emit SaleCreated(ext_call.return_data[0], 350 * stor[_172] / 100, arg7, 24 * 3600, block.timestamp);
                        else:
                            require 60 <= arg8
                            address(stor8[ext_call.return_data[0]].field_0) = this.address
                            stor8[ext_call.return_data[0]].field_256 = 350 * stor[_172] / 100
                            stor8[ext_call.return_data[0]].field_512 = arg7
                            stor8[ext_call.return_data[0]].field_768 = arg8
                            stor8[ext_call.return_data[0]].field_1024 = block.timestamp
                            s = 5
                            idx = 1024
                            while 1312 > idx:
                                stor8[ext_call.return_data[0]][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 14
                            while 14 > idx:
                                stor8[ext_call.return_data[0]][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            emit SaleCreated(ext_call.return_data[0], 350 * stor[_172] / 100, arg7, arg8, block.timestamp);
                else:
                    if not arg7:
                        if not arg8:
                            address(stor8[ext_call.return_data[0]].field_0) = this.address
                            stor8[ext_call.return_data[0]].field_256 = 10^16
                            stor8[ext_call.return_data[0]].field_512 = 0
                            stor8[ext_call.return_data[0]].field_768 = 24 * 3600
                            stor8[ext_call.return_data[0]].field_1024 = block.timestamp
                            s = 5
                            idx = 1024
                            while 1312 > idx:
                                stor8[ext_call.return_data[0]][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 14
                            while 14 > idx:
                                stor8[ext_call.return_data[0]][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            emit SaleCreated(ext_call.return_data[0], 10^16, 0, 24 * 3600, block.timestamp);
                        else:
                            require 60 <= arg8
                            address(stor8[ext_call.return_data[0]].field_0) = this.address
                            stor8[ext_call.return_data[0]].field_256 = 10^16
                            stor8[ext_call.return_data[0]].field_512 = 0
                            stor8[ext_call.return_data[0]].field_768 = arg8
                            stor8[ext_call.return_data[0]].field_1024 = block.timestamp
                            s = 5
                            idx = 1024
                            while 1312 > idx:
                                stor8[ext_call.return_data[0]][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 14
                            while 14 > idx:
                                stor8[ext_call.return_data[0]][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            emit SaleCreated(ext_call.return_data[0], 10^16, 0, arg8, block.timestamp);
                    else:
                        if not arg8:
                            address(stor8[ext_call.return_data[0]].field_0) = this.address
                            stor8[ext_call.return_data[0]].field_256 = 10^16
                            stor8[ext_call.return_data[0]].field_512 = arg7
                            stor8[ext_call.return_data[0]].field_768 = 24 * 3600
                            stor8[ext_call.return_data[0]].field_1024 = block.timestamp
                            s = 5
                            idx = 1024
                            while 1312 > idx:
                                stor8[ext_call.return_data[0]][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 14
                            while 14 > idx:
                                stor8[ext_call.return_data[0]][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            emit SaleCreated(ext_call.return_data[0], 10^16, arg7, 24 * 3600, block.timestamp);
                        else:
                            require 60 <= arg8
                            address(stor8[ext_call.return_data[0]].field_0) = this.address
                            stor8[ext_call.return_data[0]].field_256 = 10^16
                            stor8[ext_call.return_data[0]].field_512 = arg7
                            stor8[ext_call.return_data[0]].field_768 = arg8
                            stor8[ext_call.return_data[0]].field_1024 = block.timestamp
                            s = 5
                            idx = 1024
                            while 1312 > idx:
                                stor8[ext_call.return_data[0]][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 14
                            while 14 > idx:
                                stor8[ext_call.return_data[0]][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            emit SaleCreated(ext_call.return_data[0], 10^16, arg7, arg8, block.timestamp);
}

function createTeamSaleAuction(uint8 arg1, uint256[9] arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    mem[96 len 288] = call.data[36 len 288]
    if msg.sender == address(stor1.length):
        require not uint8(stor3.length.field_160)
        require arg1
        idx = 0
        while idx < 9:
            _12 = mem[(32 * idx) + 96]
            mem[388] = mem[(32 * idx) + 96]
            require ext_code.size(nonFungibleContractAddress)
            call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                 gas gas_remaining wei
                args _12
            mem[384] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == arg1
            idx = idx + 1
            continue 
        if cd[324]:
            mem[384] = 0
            mem[416] = 0
            mem[448] = 0
            mem[480] = 0
            mem[512] = 0
            mem[832 len 288] = code.data[14197 len 288]
            mem[544] = 832
            mem[64] = 1312
            mem[1120] = this.address
            mem[1152] = cd[324]
            if not cd[356]:
                mem[1184] = 0
                if not cd[388]:
                    mem[1216] = 24 * 3600
                    mem[1248] = block.timestamp
                    mem[1280] = 96
                    idx = 0
                    while idx < 9:
                        require mem[(32 * idx) + 96]
                        require idx < 9
                        _237 = mem[(32 * idx) + 96]
                        mem[1316] = mem[(32 * idx) + 96]
                        require ext_code.size(nonFungibleContractAddress)
                        call nonFungibleContractAddress.exists(uint256 arg1) with:
                             gas gas_remaining wei
                            args _237
                        mem[1312] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        require idx < 9
                        mem[0] = mem[(32 * idx) + 96]
                        mem[32] = 8
                        address(stor8[mem[(32 * idx) + 96]].field_0) = uint64(this.address) << 96
                        stor8[mem[(32 * idx) + 96]].field_256 = cd[324]
                        stor8[mem[(32 * idx) + 96]].field_512 = 0
                        stor8[mem[(32 * idx) + 96]].field_768 = 24 * 3600
                        stor8[mem[(32 * idx) + 96]].field_1024 = block.timestamp
                        t = sha3(mem[(32 * idx) + 96], 8) + 5
                        s = 96
                        while 384 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(mem[(32 * idx) + 96], 8) + 14
                        while sha3(mem[(32 * idx) + 96], 8) + 14 > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        idx = idx + 1
                        continue 
                    emit TeamSaleCreated(call.data[36 len 288], cd[324], 0, 24 * 3600, block.timestamp);
                else:
                    mem[1216] = cd[388]
                    mem[1248] = block.timestamp
                    mem[1280] = 96
                    require cd[388] >= 60
                    idx = 0
                    while idx < 9:
                        require mem[(32 * idx) + 96]
                        require idx < 9
                        _234 = mem[(32 * idx) + 96]
                        mem[1316] = mem[(32 * idx) + 96]
                        require ext_code.size(nonFungibleContractAddress)
                        call nonFungibleContractAddress.exists(uint256 arg1) with:
                             gas gas_remaining wei
                            args _234
                        mem[1312] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        require idx < 9
                        mem[0] = mem[(32 * idx) + 96]
                        mem[32] = 8
                        address(stor8[mem[(32 * idx) + 96]].field_0) = uint64(this.address) << 96
                        stor8[mem[(32 * idx) + 96]].field_256 = cd[324]
                        stor8[mem[(32 * idx) + 96]].field_512 = 0
                        stor8[mem[(32 * idx) + 96]].field_768 = cd[388]
                        stor8[mem[(32 * idx) + 96]].field_1024 = block.timestamp
                        t = sha3(mem[(32 * idx) + 96], 8) + 5
                        s = 96
                        while 384 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(mem[(32 * idx) + 96], 8) + 14
                        while sha3(mem[(32 * idx) + 96], 8) + 14 > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        idx = idx + 1
                        continue 
                    emit TeamSaleCreated(call.data[36 len 288], cd[324], 0, cd[388], block.timestamp);
            else:
                mem[1184] = cd[356]
                if not cd[388]:
                    mem[1216] = 24 * 3600
                    mem[1248] = block.timestamp
                    mem[1280] = 96
                    idx = 0
                    while idx < 9:
                        require mem[(32 * idx) + 96]
                        require idx < 9
                        _243 = mem[(32 * idx) + 96]
                        mem[1316] = mem[(32 * idx) + 96]
                        require ext_code.size(nonFungibleContractAddress)
                        call nonFungibleContractAddress.exists(uint256 arg1) with:
                             gas gas_remaining wei
                            args _243
                        mem[1312] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        require idx < 9
                        mem[0] = mem[(32 * idx) + 96]
                        mem[32] = 8
                        address(stor8[mem[(32 * idx) + 96]].field_0) = uint64(this.address) << 96
                        stor8[mem[(32 * idx) + 96]].field_256 = cd[324]
                        stor8[mem[(32 * idx) + 96]].field_512 = cd[356]
                        stor8[mem[(32 * idx) + 96]].field_768 = 24 * 3600
                        stor8[mem[(32 * idx) + 96]].field_1024 = block.timestamp
                        t = sha3(mem[(32 * idx) + 96], 8) + 5
                        s = 96
                        while 384 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(mem[(32 * idx) + 96], 8) + 14
                        while sha3(mem[(32 * idx) + 96], 8) + 14 > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        idx = idx + 1
                        continue 
                    emit TeamSaleCreated(call.data[36 len 288], cd[324], cd[356], 24 * 3600, block.timestamp);
                else:
                    mem[1216] = cd[388]
                    mem[1248] = block.timestamp
                    mem[1280] = 96
                    require cd[388] >= 60
                    idx = 0
                    while idx < 9:
                        require mem[(32 * idx) + 96]
                        require idx < 9
                        _240 = mem[(32 * idx) + 96]
                        mem[1316] = mem[(32 * idx) + 96]
                        require ext_code.size(nonFungibleContractAddress)
                        call nonFungibleContractAddress.exists(uint256 arg1) with:
                             gas gas_remaining wei
                            args _240
                        mem[1312] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        require idx < 9
                        mem[0] = mem[(32 * idx) + 96]
                        mem[32] = 8
                        address(stor8[mem[(32 * idx) + 96]].field_0) = uint64(this.address) << 96
                        stor8[mem[(32 * idx) + 96]].field_256 = cd[324]
                        stor8[mem[(32 * idx) + 96]].field_512 = cd[356]
                        stor8[mem[(32 * idx) + 96]].field_768 = cd[388]
                        stor8[mem[(32 * idx) + 96]].field_1024 = block.timestamp
                        t = sha3(mem[(32 * idx) + 96], 8) + 5
                        s = 96
                        while 384 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(mem[(32 * idx) + 96], 8) + 14
                        while sha3(mem[(32 * idx) + 96], 8) + 14 > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        idx = idx + 1
                        continue 
                    emit TeamSaleCreated(call.data[36 len 288], cd[324], cd[356], cd[388], block.timestamp);
        else:
            idx = 0
            s = 0
            while idx < 3:
                mem[0] = arg1
                mem[32] = 9
                _196 = sha3(arg1 << 248, 9)
                require lastTeamSalePrices[arg1 << 248][idx] + s >= s
                idx = idx + 1
                s = lastTeamSalePrices[arg1 << 248][idx] + s
                continue 
            if not 3 * stor3[_196].field_0:
                mem[384] = 0
                mem[416] = 0
                mem[448] = 0
                mem[480] = 0
                mem[512] = 0
                mem[832 len 288] = code.data[14197 len 288]
                mem[544] = 832
                mem[64] = 1312
                mem[1120] = this.address
                mem[1152] = 25 * 10^12 * 3600
                if not cd[356]:
                    mem[1184] = 0
                    if not cd[388]:
                        mem[1216] = 24 * 3600
                        mem[1248] = block.timestamp
                        mem[1280] = 96
                        idx = 0
                        while idx < 9:
                            require mem[(32 * idx) + 96]
                            require idx < 9
                            _1461 = mem[(32 * idx) + 96]
                            mem[1316] = mem[(32 * idx) + 96]
                            require ext_code.size(nonFungibleContractAddress)
                            call nonFungibleContractAddress.exists(uint256 arg1) with:
                                 gas gas_remaining wei
                                args _1461
                            mem[1312] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            require idx < 9
                            mem[0] = mem[(32 * idx) + 96]
                            mem[32] = 8
                            address(stor8[mem[(32 * idx) + 96]].field_0) = uint64(this.address) << 96
                            stor8[mem[(32 * idx) + 96]].field_256 = 25 * 10^12 * 3600
                            stor8[mem[(32 * idx) + 96]].field_512 = 0
                            stor8[mem[(32 * idx) + 96]].field_768 = 24 * 3600
                            stor8[mem[(32 * idx) + 96]].field_1024 = block.timestamp
                            t = sha3(mem[(32 * idx) + 96], 8) + 5
                            s = 96
                            while 384 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(mem[(32 * idx) + 96], 8) + 14
                            while sha3(mem[(32 * idx) + 96], 8) + 14 > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            idx = idx + 1
                            continue 
                        emit TeamSaleCreated(call.data[36 len 288], 25 * 10^12 * 3600, 0, 24 * 3600, block.timestamp);
                    else:
                        mem[1216] = cd[388]
                        mem[1248] = block.timestamp
                        mem[1280] = 96
                        require cd[388] >= 60
                        idx = 0
                        while idx < 9:
                            require mem[(32 * idx) + 96]
                            require idx < 9
                            _1458 = mem[(32 * idx) + 96]
                            mem[1316] = mem[(32 * idx) + 96]
                            require ext_code.size(nonFungibleContractAddress)
                            call nonFungibleContractAddress.exists(uint256 arg1) with:
                                 gas gas_remaining wei
                                args _1458
                            mem[1312] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            require idx < 9
                            mem[0] = mem[(32 * idx) + 96]
                            mem[32] = 8
                            address(stor8[mem[(32 * idx) + 96]].field_0) = uint64(this.address) << 96
                            stor8[mem[(32 * idx) + 96]].field_256 = 25 * 10^12 * 3600
                            stor8[mem[(32 * idx) + 96]].field_512 = 0
                            stor8[mem[(32 * idx) + 96]].field_768 = cd[388]
                            stor8[mem[(32 * idx) + 96]].field_1024 = block.timestamp
                            t = sha3(mem[(32 * idx) + 96], 8) + 5
                            s = 96
                            while 384 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(mem[(32 * idx) + 96], 8) + 14
                            while sha3(mem[(32 * idx) + 96], 8) + 14 > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            idx = idx + 1
                            continue 
                        emit TeamSaleCreated(call.data[36 len 288], 25 * 10^12 * 3600, 0, cd[388], block.timestamp);
                else:
                    mem[1184] = cd[356]
                    if not cd[388]:
                        mem[1216] = 24 * 3600
                        mem[1248] = block.timestamp
                        mem[1280] = 96
                        idx = 0
                        while idx < 9:
                            require mem[(32 * idx) + 96]
                            require idx < 9
                            _1467 = mem[(32 * idx) + 96]
                            mem[1316] = mem[(32 * idx) + 96]
                            require ext_code.size(nonFungibleContractAddress)
                            call nonFungibleContractAddress.exists(uint256 arg1) with:
                                 gas gas_remaining wei
                                args _1467
                            mem[1312] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            require idx < 9
                            mem[0] = mem[(32 * idx) + 96]
                            mem[32] = 8
                            address(stor8[mem[(32 * idx) + 96]].field_0) = uint64(this.address) << 96
                            stor8[mem[(32 * idx) + 96]].field_256 = 25 * 10^12 * 3600
                            stor8[mem[(32 * idx) + 96]].field_512 = cd[356]
                            stor8[mem[(32 * idx) + 96]].field_768 = 24 * 3600
                            stor8[mem[(32 * idx) + 96]].field_1024 = block.timestamp
                            t = sha3(mem[(32 * idx) + 96], 8) + 5
                            s = 96
                            while 384 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(mem[(32 * idx) + 96], 8) + 14
                            while sha3(mem[(32 * idx) + 96], 8) + 14 > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            idx = idx + 1
                            continue 
                        emit TeamSaleCreated(call.data[36 len 288], 25 * 10^12 * 3600, cd[356], 24 * 3600, block.timestamp);
                    else:
                        mem[1216] = cd[388]
                        mem[1248] = block.timestamp
                        mem[1280] = 96
                        require cd[388] >= 60
                        idx = 0
                        while idx < 9:
                            require mem[(32 * idx) + 96]
                            require idx < 9
                            _1464 = mem[(32 * idx) + 96]
                            mem[1316] = mem[(32 * idx) + 96]
                            require ext_code.size(nonFungibleContractAddress)
                            call nonFungibleContractAddress.exists(uint256 arg1) with:
                                 gas gas_remaining wei
                                args _1464
                            mem[1312] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            require idx < 9
                            mem[0] = mem[(32 * idx) + 96]
                            mem[32] = 8
                            address(stor8[mem[(32 * idx) + 96]].field_0) = uint64(this.address) << 96
                            stor8[mem[(32 * idx) + 96]].field_256 = 25 * 10^12 * 3600
                            stor8[mem[(32 * idx) + 96]].field_512 = cd[356]
                            stor8[mem[(32 * idx) + 96]].field_768 = cd[388]
                            stor8[mem[(32 * idx) + 96]].field_1024 = block.timestamp
                            t = sha3(mem[(32 * idx) + 96], 8) + 5
                            s = 96
                            while 384 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(mem[(32 * idx) + 96], 8) + 14
                            while sha3(mem[(32 * idx) + 96], 8) + 14 > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            idx = idx + 1
                            continue 
                        emit TeamSaleCreated(call.data[36 len 288], 25 * 10^12 * 3600, cd[356], cd[388], block.timestamp);
            else:
                require 36 * stor3[_196].field_0 / 3 * stor3[_196].field_0 == 12
                if not 36 * stor3[_196].field_0 / 30:
                    mem[384] = 0
                    mem[416] = 0
                    mem[448] = 0
                    mem[480] = 0
                    mem[512] = 0
                    mem[832 len 288] = code.data[14197 len 288]
                    mem[544] = 832
                    mem[64] = 1312
                    mem[1120] = this.address
                    mem[1152] = 25 * 10^12 * 3600
                    if not cd[356]:
                        mem[1184] = 0
                        if not cd[388]:
                            mem[1216] = 24 * 3600
                            mem[1248] = block.timestamp
                            mem[1280] = 96
                            idx = 0
                            while idx < 9:
                                require mem[(32 * idx) + 96]
                                require idx < 9
                                _1449 = mem[(32 * idx) + 96]
                                mem[1316] = mem[(32 * idx) + 96]
                                require ext_code.size(nonFungibleContractAddress)
                                call nonFungibleContractAddress.exists(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args _1449
                                mem[1312] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                require idx < 9
                                mem[0] = mem[(32 * idx) + 96]
                                mem[32] = 8
                                address(stor8[mem[(32 * idx) + 96]].field_0) = uint64(this.address) << 96
                                stor8[mem[(32 * idx) + 96]].field_256 = 25 * 10^12 * 3600
                                stor8[mem[(32 * idx) + 96]].field_512 = 0
                                stor8[mem[(32 * idx) + 96]].field_768 = 24 * 3600
                                stor8[mem[(32 * idx) + 96]].field_1024 = block.timestamp
                                t = sha3(mem[(32 * idx) + 96], 8) + 5
                                s = 96
                                while 384 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(mem[(32 * idx) + 96], 8) + 14
                                while sha3(mem[(32 * idx) + 96], 8) + 14 > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                idx = idx + 1
                                continue 
                            emit TeamSaleCreated(call.data[36 len 288], 25 * 10^12 * 3600, 0, 24 * 3600, block.timestamp);
                        else:
                            mem[1216] = cd[388]
                            mem[1248] = block.timestamp
                            mem[1280] = 96
                            require cd[388] >= 60
                            idx = 0
                            while idx < 9:
                                require mem[(32 * idx) + 96]
                                require idx < 9
                                _1446 = mem[(32 * idx) + 96]
                                mem[1316] = mem[(32 * idx) + 96]
                                require ext_code.size(nonFungibleContractAddress)
                                call nonFungibleContractAddress.exists(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args _1446
                                mem[1312] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                require idx < 9
                                mem[0] = mem[(32 * idx) + 96]
                                mem[32] = 8
                                address(stor8[mem[(32 * idx) + 96]].field_0) = uint64(this.address) << 96
                                stor8[mem[(32 * idx) + 96]].field_256 = 25 * 10^12 * 3600
                                stor8[mem[(32 * idx) + 96]].field_512 = 0
                                stor8[mem[(32 * idx) + 96]].field_768 = cd[388]
                                stor8[mem[(32 * idx) + 96]].field_1024 = block.timestamp
                                t = sha3(mem[(32 * idx) + 96], 8) + 5
                                s = 96
                                while 384 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(mem[(32 * idx) + 96], 8) + 14
                                while sha3(mem[(32 * idx) + 96], 8) + 14 > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                idx = idx + 1
                                continue 
                            emit TeamSaleCreated(call.data[36 len 288], 25 * 10^12 * 3600, 0, cd[388], block.timestamp);
                    else:
                        mem[1184] = cd[356]
                        if not cd[388]:
                            mem[1216] = 24 * 3600
                            mem[1248] = block.timestamp
                            mem[1280] = 96
                            idx = 0
                            while idx < 9:
                                require mem[(32 * idx) + 96]
                                require idx < 9
                                _1455 = mem[(32 * idx) + 96]
                                mem[1316] = mem[(32 * idx) + 96]
                                require ext_code.size(nonFungibleContractAddress)
                                call nonFungibleContractAddress.exists(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args _1455
                                mem[1312] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                require idx < 9
                                mem[0] = mem[(32 * idx) + 96]
                                mem[32] = 8
                                address(stor8[mem[(32 * idx) + 96]].field_0) = uint64(this.address) << 96
                                stor8[mem[(32 * idx) + 96]].field_256 = 25 * 10^12 * 3600
                                stor8[mem[(32 * idx) + 96]].field_512 = cd[356]
                                stor8[mem[(32 * idx) + 96]].field_768 = 24 * 3600
                                stor8[mem[(32 * idx) + 96]].field_1024 = block.timestamp
                                t = sha3(mem[(32 * idx) + 96], 8) + 5
                                s = 96
                                while 384 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(mem[(32 * idx) + 96], 8) + 14
                                while sha3(mem[(32 * idx) + 96], 8) + 14 > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                idx = idx + 1
                                continue 
                            emit TeamSaleCreated(call.data[36 len 288], 25 * 10^12 * 3600, cd[356], 24 * 3600, block.timestamp);
                        else:
                            mem[1216] = cd[388]
                            mem[1248] = block.timestamp
                            mem[1280] = 96
                            require cd[388] >= 60
                            idx = 0
                            while idx < 9:
                                require mem[(32 * idx) + 96]
                                require idx < 9
                                _1452 = mem[(32 * idx) + 96]
                                mem[1316] = mem[(32 * idx) + 96]
                                require ext_code.size(nonFungibleContractAddress)
                                call nonFungibleContractAddress.exists(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args _1452
                                mem[1312] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                require idx < 9
                                mem[0] = mem[(32 * idx) + 96]
                                mem[32] = 8
                                address(stor8[mem[(32 * idx) + 96]].field_0) = uint64(this.address) << 96
                                stor8[mem[(32 * idx) + 96]].field_256 = 25 * 10^12 * 3600
                                stor8[mem[(32 * idx) + 96]].field_512 = cd[356]
                                stor8[mem[(32 * idx) + 96]].field_768 = cd[388]
                                stor8[mem[(32 * idx) + 96]].field_1024 = block.timestamp
                                t = sha3(mem[(32 * idx) + 96], 8) + 5
                                s = 96
                                while 384 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(mem[(32 * idx) + 96], 8) + 14
                                while sha3(mem[(32 * idx) + 96], 8) + 14 > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                idx = idx + 1
                                continue 
                            emit TeamSaleCreated(call.data[36 len 288], 25 * 10^12 * 3600, cd[356], cd[388], block.timestamp);
                else:
                    require 9 * 36 * stor3[_196].field_0 / 30 / 36 * stor3[_196].field_0 / 30 == 9
                    if 9 * 36 * stor3[_196].field_0 / 30 < 10^16:
                        mem[384] = 0
                        mem[416] = 0
                        mem[448] = 0
                        mem[480] = 0
                        mem[512] = 0
                        mem[832 len 288] = code.data[14197 len 288]
                        mem[544] = 832
                        mem[64] = 1312
                        mem[1120] = this.address
                        mem[1152] = 25 * 10^12 * 3600
                        if not cd[356]:
                            mem[1184] = 0
                            if not cd[388]:
                                mem[1216] = 24 * 3600
                                mem[1248] = block.timestamp
                                mem[1280] = 96
                                idx = 0
                                while idx < 9:
                                    require mem[(32 * idx) + 96]
                                    require idx < 9
                                    _1437 = mem[(32 * idx) + 96]
                                    mem[1316] = mem[(32 * idx) + 96]
                                    require ext_code.size(nonFungibleContractAddress)
                                    call nonFungibleContractAddress.exists(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args _1437
                                    mem[1312] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    require idx < 9
                                    mem[0] = mem[(32 * idx) + 96]
                                    mem[32] = 8
                                    address(stor8[mem[(32 * idx) + 96]].field_0) = uint64(this.address) << 96
                                    stor8[mem[(32 * idx) + 96]].field_256 = 25 * 10^12 * 3600
                                    stor8[mem[(32 * idx) + 96]].field_512 = 0
                                    stor8[mem[(32 * idx) + 96]].field_768 = 24 * 3600
                                    stor8[mem[(32 * idx) + 96]].field_1024 = block.timestamp
                                    t = sha3(mem[(32 * idx) + 96], 8) + 5
                                    s = 96
                                    while 384 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(mem[(32 * idx) + 96], 8) + 14
                                    while sha3(mem[(32 * idx) + 96], 8) + 14 > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    idx = idx + 1
                                    continue 
                                emit TeamSaleCreated(call.data[36 len 288], 25 * 10^12 * 3600, 0, 24 * 3600, block.timestamp);
                            else:
                                mem[1216] = cd[388]
                                mem[1248] = block.timestamp
                                mem[1280] = 96
                                require cd[388] >= 60
                                idx = 0
                                while idx < 9:
                                    require mem[(32 * idx) + 96]
                                    require idx < 9
                                    _1434 = mem[(32 * idx) + 96]
                                    mem[1316] = mem[(32 * idx) + 96]
                                    require ext_code.size(nonFungibleContractAddress)
                                    call nonFungibleContractAddress.exists(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args _1434
                                    mem[1312] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    require idx < 9
                                    mem[0] = mem[(32 * idx) + 96]
                                    mem[32] = 8
                                    address(stor8[mem[(32 * idx) + 96]].field_0) = uint64(this.address) << 96
                                    stor8[mem[(32 * idx) + 96]].field_256 = 25 * 10^12 * 3600
                                    stor8[mem[(32 * idx) + 96]].field_512 = 0
                                    stor8[mem[(32 * idx) + 96]].field_768 = cd[388]
                                    stor8[mem[(32 * idx) + 96]].field_1024 = block.timestamp
                                    t = sha3(mem[(32 * idx) + 96], 8) + 5
                                    s = 96
                                    while 384 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(mem[(32 * idx) + 96], 8) + 14
                                    while sha3(mem[(32 * idx) + 96], 8) + 14 > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    idx = idx + 1
                                    continue 
                                emit TeamSaleCreated(call.data[36 len 288], 25 * 10^12 * 3600, 0, cd[388], block.timestamp);
                        else:
                            mem[1184] = cd[356]
                            if not cd[388]:
                                mem[1216] = 24 * 3600
                                mem[1248] = block.timestamp
                                mem[1280] = 96
                                idx = 0
                                while idx < 9:
                                    require mem[(32 * idx) + 96]
                                    require idx < 9
                                    _1443 = mem[(32 * idx) + 96]
                                    mem[1316] = mem[(32 * idx) + 96]
                                    require ext_code.size(nonFungibleContractAddress)
                                    call nonFungibleContractAddress.exists(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args _1443
                                    mem[1312] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    require idx < 9
                                    mem[0] = mem[(32 * idx) + 96]
                                    mem[32] = 8
                                    address(stor8[mem[(32 * idx) + 96]].field_0) = uint64(this.address) << 96
                                    stor8[mem[(32 * idx) + 96]].field_256 = 25 * 10^12 * 3600
                                    stor8[mem[(32 * idx) + 96]].field_512 = cd[356]
                                    stor8[mem[(32 * idx) + 96]].field_768 = 24 * 3600
                                    stor8[mem[(32 * idx) + 96]].field_1024 = block.timestamp
                                    t = sha3(mem[(32 * idx) + 96], 8) + 5
                                    s = 96
                                    while 384 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(mem[(32 * idx) + 96], 8) + 14
                                    while sha3(mem[(32 * idx) + 96], 8) + 14 > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    idx = idx + 1
                                    continue 
                                emit TeamSaleCreated(call.data[36 len 288], 25 * 10^12 * 3600, cd[356], 24 * 3600, block.timestamp);
                            else:
                                mem[1216] = cd[388]
                                mem[1248] = block.timestamp
                                mem[1280] = 96
                                require cd[388] >= 60
                                idx = 0
                                while idx < 9:
                                    require mem[(32 * idx) + 96]
                                    require idx < 9
                                    _1440 = mem[(32 * idx) + 96]
                                    mem[1316] = mem[(32 * idx) + 96]
                                    require ext_code.size(nonFungibleContractAddress)
                                    call nonFungibleContractAddress.exists(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args _1440
                                    mem[1312] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    require idx < 9
                                    mem[0] = mem[(32 * idx) + 96]
                                    mem[32] = 8
                                    address(stor8[mem[(32 * idx) + 96]].field_0) = uint64(this.address) << 96
                                    stor8[mem[(32 * idx) + 96]].field_256 = 25 * 10^12 * 3600
                                    stor8[mem[(32 * idx) + 96]].field_512 = cd[356]
                                    stor8[mem[(32 * idx) + 96]].field_768 = cd[388]
                                    stor8[mem[(32 * idx) + 96]].field_1024 = block.timestamp
                                    t = sha3(mem[(32 * idx) + 96], 8) + 5
                                    s = 96
                                    while 384 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(mem[(32 * idx) + 96], 8) + 14
                                    while sha3(mem[(32 * idx) + 96], 8) + 14 > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    idx = idx + 1
                                    continue 
                                emit TeamSaleCreated(call.data[36 len 288], 25 * 10^12 * 3600, cd[356], cd[388], block.timestamp);
                    else:
                        if not 9 * 36 * stor3[_196].field_0 / 30:
                            mem[384] = 0
                            mem[416] = 0
                            mem[448] = 0
                            mem[480] = 0
                            mem[512] = 0
                            mem[832 len 288] = code.data[14197 len 288]
                            mem[544] = 832
                            mem[64] = 1312
                            mem[1120] = this.address
                            mem[1152] = 0
                            if not cd[356]:
                                mem[1184] = 0
                                if not cd[388]:
                                    mem[1216] = 24 * 3600
                                    mem[1248] = block.timestamp
                                    mem[1280] = 96
                                    idx = 0
                                    while idx < 9:
                                        require mem[(32 * idx) + 96]
                                        require idx < 9
                                        _1425 = mem[(32 * idx) + 96]
                                        mem[1316] = mem[(32 * idx) + 96]
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.exists(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args _1425
                                        mem[1312] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        require idx < 9
                                        mem[0] = mem[(32 * idx) + 96]
                                        mem[32] = 8
                                        address(stor8[mem[(32 * idx) + 96]].field_0) = uint64(this.address) << 96
                                        stor8[mem[(32 * idx) + 96]].field_256 = 0
                                        stor8[mem[(32 * idx) + 96]].field_512 = 0
                                        stor8[mem[(32 * idx) + 96]].field_768 = 24 * 3600
                                        stor8[mem[(32 * idx) + 96]].field_1024 = block.timestamp
                                        t = sha3(mem[(32 * idx) + 96], 8) + 5
                                        s = 96
                                        while 384 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(mem[(32 * idx) + 96], 8) + 14
                                        while sha3(mem[(32 * idx) + 96], 8) + 14 > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                        idx = idx + 1
                                        continue 
                                    emit TeamSaleCreated(call.data[36 len 288], 0, 0, 24 * 3600, block.timestamp);
                                else:
                                    mem[1216] = cd[388]
                                    mem[1248] = block.timestamp
                                    mem[1280] = 96
                                    require cd[388] >= 60
                                    idx = 0
                                    while idx < 9:
                                        require mem[(32 * idx) + 96]
                                        require idx < 9
                                        _1422 = mem[(32 * idx) + 96]
                                        mem[1316] = mem[(32 * idx) + 96]
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.exists(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args _1422
                                        mem[1312] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        require idx < 9
                                        mem[0] = mem[(32 * idx) + 96]
                                        mem[32] = 8
                                        address(stor8[mem[(32 * idx) + 96]].field_0) = uint64(this.address) << 96
                                        stor8[mem[(32 * idx) + 96]].field_256 = 0
                                        stor8[mem[(32 * idx) + 96]].field_512 = 0
                                        stor8[mem[(32 * idx) + 96]].field_768 = cd[388]
                                        stor8[mem[(32 * idx) + 96]].field_1024 = block.timestamp
                                        t = sha3(mem[(32 * idx) + 96], 8) + 5
                                        s = 96
                                        while 384 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(mem[(32 * idx) + 96], 8) + 14
                                        while sha3(mem[(32 * idx) + 96], 8) + 14 > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                        idx = idx + 1
                                        continue 
                                    emit TeamSaleCreated(call.data[36 len 288], 0, 0, cd[388], block.timestamp);
                            else:
                                mem[1184] = cd[356]
                                if not cd[388]:
                                    mem[1216] = 24 * 3600
                                    mem[1248] = block.timestamp
                                    mem[1280] = 96
                                    idx = 0
                                    while idx < 9:
                                        require mem[(32 * idx) + 96]
                                        require idx < 9
                                        _1431 = mem[(32 * idx) + 96]
                                        mem[1316] = mem[(32 * idx) + 96]
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.exists(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args _1431
                                        mem[1312] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        require idx < 9
                                        mem[0] = mem[(32 * idx) + 96]
                                        mem[32] = 8
                                        address(stor8[mem[(32 * idx) + 96]].field_0) = uint64(this.address) << 96
                                        stor8[mem[(32 * idx) + 96]].field_256 = 0
                                        stor8[mem[(32 * idx) + 96]].field_512 = cd[356]
                                        stor8[mem[(32 * idx) + 96]].field_768 = 24 * 3600
                                        stor8[mem[(32 * idx) + 96]].field_1024 = block.timestamp
                                        t = sha3(mem[(32 * idx) + 96], 8) + 5
                                        s = 96
                                        while 384 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(mem[(32 * idx) + 96], 8) + 14
                                        while sha3(mem[(32 * idx) + 96], 8) + 14 > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                        idx = idx + 1
                                        continue 
                                    emit TeamSaleCreated(call.data[36 len 288], 0, cd[356], 24 * 3600, block.timestamp);
                                else:
                                    mem[1216] = cd[388]
                                    mem[1248] = block.timestamp
                                    mem[1280] = 96
                                    require cd[388] >= 60
                                    idx = 0
                                    while idx < 9:
                                        require mem[(32 * idx) + 96]
                                        require idx < 9
                                        _1428 = mem[(32 * idx) + 96]
                                        mem[1316] = mem[(32 * idx) + 96]
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.exists(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args _1428
                                        mem[1312] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        require idx < 9
                                        mem[0] = mem[(32 * idx) + 96]
                                        mem[32] = 8
                                        address(stor8[mem[(32 * idx) + 96]].field_0) = uint64(this.address) << 96
                                        stor8[mem[(32 * idx) + 96]].field_256 = 0
                                        stor8[mem[(32 * idx) + 96]].field_512 = cd[356]
                                        stor8[mem[(32 * idx) + 96]].field_768 = cd[388]
                                        stor8[mem[(32 * idx) + 96]].field_1024 = block.timestamp
                                        t = sha3(mem[(32 * idx) + 96], 8) + 5
                                        s = 96
                                        while 384 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(mem[(32 * idx) + 96], 8) + 14
                                        while sha3(mem[(32 * idx) + 96], 8) + 14 > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                        idx = idx + 1
                                        continue 
                                    emit TeamSaleCreated(call.data[36 len 288], 0, cd[356], cd[388], block.timestamp);
                        else:
                            require 81 * 36 * stor3[_196].field_0 / 30 / 9 * 36 * stor3[_196].field_0 / 30 == 9
                            mem[384] = 0
                            mem[416] = 0
                            mem[448] = 0
                            mem[480] = 0
                            mem[512] = 0
                            mem[832 len 288] = code.data[14197 len 288]
                            mem[544] = 832
                            mem[64] = 1312
                            mem[1120] = this.address
                            mem[1152] = 81 * 36 * stor3[_196].field_0 / 30
                            if not cd[356]:
                                mem[1184] = 0
                                if not cd[388]:
                                    mem[1216] = 24 * 3600
                                    mem[1248] = block.timestamp
                                    mem[1280] = 96
                                    idx = 0
                                    while idx < 9:
                                        require mem[(32 * idx) + 96]
                                        require idx < 9
                                        _1413 = mem[(32 * idx) + 96]
                                        mem[1316] = mem[(32 * idx) + 96]
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.exists(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args _1413
                                        mem[1312] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        require idx < 9
                                        mem[0] = mem[(32 * idx) + 96]
                                        mem[32] = 8
                                        address(stor8[mem[(32 * idx) + 96]].field_0) = uint64(this.address) << 96
                                        stor8[mem[(32 * idx) + 96]].field_256 = 81 * 36 * stor3[_196].field_0 / 30
                                        stor8[mem[(32 * idx) + 96]].field_512 = 0
                                        stor8[mem[(32 * idx) + 96]].field_768 = 24 * 3600
                                        stor8[mem[(32 * idx) + 96]].field_1024 = block.timestamp
                                        t = sha3(mem[(32 * idx) + 96], 8) + 5
                                        s = 96
                                        while 384 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(mem[(32 * idx) + 96], 8) + 14
                                        while sha3(mem[(32 * idx) + 96], 8) + 14 > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                        idx = idx + 1
                                        continue 
                                    emit TeamSaleCreated(call.data[36 len 288], 81 * 36 * stor3[_196].field_0 / 30, 0, 24 * 3600, block.timestamp);
                                else:
                                    mem[1216] = cd[388]
                                    mem[1248] = block.timestamp
                                    mem[1280] = 96
                                    require cd[388] >= 60
                                    idx = 0
                                    while idx < 9:
                                        require mem[(32 * idx) + 96]
                                        require idx < 9
                                        _1410 = mem[(32 * idx) + 96]
                                        mem[1316] = mem[(32 * idx) + 96]
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.exists(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args _1410
                                        mem[1312] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        require idx < 9
                                        mem[0] = mem[(32 * idx) + 96]
                                        mem[32] = 8
                                        address(stor8[mem[(32 * idx) + 96]].field_0) = uint64(this.address) << 96
                                        stor8[mem[(32 * idx) + 96]].field_256 = 81 * 36 * stor3[_196].field_0 / 30
                                        stor8[mem[(32 * idx) + 96]].field_512 = 0
                                        stor8[mem[(32 * idx) + 96]].field_768 = cd[388]
                                        stor8[mem[(32 * idx) + 96]].field_1024 = block.timestamp
                                        t = sha3(mem[(32 * idx) + 96], 8) + 5
                                        s = 96
                                        while 384 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(mem[(32 * idx) + 96], 8) + 14
                                        while sha3(mem[(32 * idx) + 96], 8) + 14 > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                        idx = idx + 1
                                        continue 
                                    emit TeamSaleCreated(call.data[36 len 288], 81 * 36 * stor3[_196].field_0 / 30, 0, cd[388], block.timestamp);
                            else:
                                mem[1184] = cd[356]
                                if not cd[388]:
                                    mem[1216] = 24 * 3600
                                    mem[1248] = block.timestamp
                                    mem[1280] = 96
                                    idx = 0
                                    while idx < 9:
                                        require mem[(32 * idx) + 96]
                                        require idx < 9
                                        _1419 = mem[(32 * idx) + 96]
                                        mem[1316] = mem[(32 * idx) + 96]
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.exists(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args _1419
                                        mem[1312] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        require idx < 9
                                        mem[0] = mem[(32 * idx) + 96]
                                        mem[32] = 8
                                        address(stor8[mem[(32 * idx) + 96]].field_0) = uint64(this.address) << 96
                                        stor8[mem[(32 * idx) + 96]].field_256 = 81 * 36 * stor3[_196].field_0 / 30
                                        stor8[mem[(32 * idx) + 96]].field_512 = cd[356]
                                        stor8[mem[(32 * idx) + 96]].field_768 = 24 * 3600
                                        stor8[mem[(32 * idx) + 96]].field_1024 = block.timestamp
                                        t = sha3(mem[(32 * idx) + 96], 8) + 5
                                        s = 96
                                        while 384 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(mem[(32 * idx) + 96], 8) + 14
                                        while sha3(mem[(32 * idx) + 96], 8) + 14 > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                        idx = idx + 1
                                        continue 
                                    emit TeamSaleCreated(call.data[36 len 288], 81 * 36 * stor3[_196].field_0 / 30, cd[356], 24 * 3600, block.timestamp);
                                else:
                                    mem[1216] = cd[388]
                                    mem[1248] = block.timestamp
                                    mem[1280] = 96
                                    require cd[388] >= 60
                                    idx = 0
                                    while idx < 9:
                                        require mem[(32 * idx) + 96]
                                        require idx < 9
                                        _1416 = mem[(32 * idx) + 96]
                                        mem[1316] = mem[(32 * idx) + 96]
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.exists(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args _1416
                                        mem[1312] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        require idx < 9
                                        mem[0] = mem[(32 * idx) + 96]
                                        mem[32] = 8
                                        address(stor8[mem[(32 * idx) + 96]].field_0) = uint64(this.address) << 96
                                        stor8[mem[(32 * idx) + 96]].field_256 = 81 * 36 * stor3[_196].field_0 / 30
                                        stor8[mem[(32 * idx) + 96]].field_512 = cd[356]
                                        stor8[mem[(32 * idx) + 96]].field_768 = cd[388]
                                        stor8[mem[(32 * idx) + 96]].field_1024 = block.timestamp
                                        t = sha3(mem[(32 * idx) + 96], 8) + 5
                                        s = 96
                                        while 384 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(mem[(32 * idx) + 96], 8) + 14
                                        while sha3(mem[(32 * idx) + 96], 8) + 14 > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                        idx = idx + 1
                                        continue 
                                    emit TeamSaleCreated(call.data[36 len 288], 81 * 36 * stor3[_196].field_0 / 30, cd[356], cd[388], block.timestamp);
    else:
        require msg.sender == gameManagerSecondaryAddress
        require not uint8(stor3.length.field_160)
        require arg1
        idx = 0
        while idx < 9:
            _15 = mem[(32 * idx) + 96]
            mem[388] = mem[(32 * idx) + 96]
            require ext_code.size(nonFungibleContractAddress)
            call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                 gas gas_remaining wei
                args _15
            mem[384] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == arg1
            idx = idx + 1
            continue 
        if cd[324]:
            mem[384] = 0
            mem[416] = 0
            mem[448] = 0
            mem[480] = 0
            mem[512] = 0
            mem[832 len 288] = code.data[14197 len 288]
            mem[544] = 832
            mem[64] = 1312
            mem[1120] = this.address
            mem[1152] = cd[324]
            if not cd[356]:
                mem[1184] = 0
                if not cd[388]:
                    mem[1216] = 24 * 3600
                    mem[1248] = block.timestamp
                    mem[1280] = 96
                    idx = 0
                    while idx < 9:
                        require mem[(32 * idx) + 96]
                        require idx < 9
                        _249 = mem[(32 * idx) + 96]
                        mem[1316] = mem[(32 * idx) + 96]
                        require ext_code.size(nonFungibleContractAddress)
                        call nonFungibleContractAddress.exists(uint256 arg1) with:
                             gas gas_remaining wei
                            args _249
                        mem[1312] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        require idx < 9
                        mem[0] = mem[(32 * idx) + 96]
                        mem[32] = 8
                        address(stor8[mem[(32 * idx) + 96]].field_0) = uint64(this.address) << 96
                        stor8[mem[(32 * idx) + 96]].field_256 = cd[324]
                        stor8[mem[(32 * idx) + 96]].field_512 = 0
                        stor8[mem[(32 * idx) + 96]].field_768 = 24 * 3600
                        stor8[mem[(32 * idx) + 96]].field_1024 = block.timestamp
                        t = sha3(mem[(32 * idx) + 96], 8) + 5
                        s = 96
                        while 384 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(mem[(32 * idx) + 96], 8) + 14
                        while sha3(mem[(32 * idx) + 96], 8) + 14 > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        idx = idx + 1
                        continue 
                    emit TeamSaleCreated(call.data[36 len 288], cd[324], 0, 24 * 3600, block.timestamp);
                else:
                    mem[1216] = cd[388]
                    mem[1248] = block.timestamp
                    mem[1280] = 96
                    require cd[388] >= 60
                    idx = 0
                    while idx < 9:
                        require mem[(32 * idx) + 96]
                        require idx < 9
                        _246 = mem[(32 * idx) + 96]
                        mem[1316] = mem[(32 * idx) + 96]
                        require ext_code.size(nonFungibleContractAddress)
                        call nonFungibleContractAddress.exists(uint256 arg1) with:
                             gas gas_remaining wei
                            args _246
                        mem[1312] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        require idx < 9
                        mem[0] = mem[(32 * idx) + 96]
                        mem[32] = 8
                        address(stor8[mem[(32 * idx) + 96]].field_0) = uint64(this.address) << 96
                        stor8[mem[(32 * idx) + 96]].field_256 = cd[324]
                        stor8[mem[(32 * idx) + 96]].field_512 = 0
                        stor8[mem[(32 * idx) + 96]].field_768 = cd[388]
                        stor8[mem[(32 * idx) + 96]].field_1024 = block.timestamp
                        t = sha3(mem[(32 * idx) + 96], 8) + 5
                        s = 96
                        while 384 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(mem[(32 * idx) + 96], 8) + 14
                        while sha3(mem[(32 * idx) + 96], 8) + 14 > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        idx = idx + 1
                        continue 
                    emit TeamSaleCreated(call.data[36 len 288], cd[324], 0, cd[388], block.timestamp);
            else:
                mem[1184] = cd[356]
                if not cd[388]:
                    mem[1216] = 24 * 3600
                    mem[1248] = block.timestamp
                    mem[1280] = 96
                    idx = 0
                    while idx < 9:
                        require mem[(32 * idx) + 96]
                        require idx < 9
                        _255 = mem[(32 * idx) + 96]
                        mem[1316] = mem[(32 * idx) + 96]
                        require ext_code.size(nonFungibleContractAddress)
                        call nonFungibleContractAddress.exists(uint256 arg1) with:
                             gas gas_remaining wei
                            args _255
                        mem[1312] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        require idx < 9
                        mem[0] = mem[(32 * idx) + 96]
                        mem[32] = 8
                        address(stor8[mem[(32 * idx) + 96]].field_0) = uint64(this.address) << 96
                        stor8[mem[(32 * idx) + 96]].field_256 = cd[324]
                        stor8[mem[(32 * idx) + 96]].field_512 = cd[356]
                        stor8[mem[(32 * idx) + 96]].field_768 = 24 * 3600
                        stor8[mem[(32 * idx) + 96]].field_1024 = block.timestamp
                        t = sha3(mem[(32 * idx) + 96], 8) + 5
                        s = 96
                        while 384 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(mem[(32 * idx) + 96], 8) + 14
                        while sha3(mem[(32 * idx) + 96], 8) + 14 > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        idx = idx + 1
                        continue 
                    emit TeamSaleCreated(call.data[36 len 288], cd[324], cd[356], 24 * 3600, block.timestamp);
                else:
                    mem[1216] = cd[388]
                    mem[1248] = block.timestamp
                    mem[1280] = 96
                    require cd[388] >= 60
                    idx = 0
                    while idx < 9:
                        require mem[(32 * idx) + 96]
                        require idx < 9
                        _252 = mem[(32 * idx) + 96]
                        mem[1316] = mem[(32 * idx) + 96]
                        require ext_code.size(nonFungibleContractAddress)
                        call nonFungibleContractAddress.exists(uint256 arg1) with:
                             gas gas_remaining wei
                            args _252
                        mem[1312] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        require idx < 9
                        mem[0] = mem[(32 * idx) + 96]
                        mem[32] = 8
                        address(stor8[mem[(32 * idx) + 96]].field_0) = uint64(this.address) << 96
                        stor8[mem[(32 * idx) + 96]].field_256 = cd[324]
                        stor8[mem[(32 * idx) + 96]].field_512 = cd[356]
                        stor8[mem[(32 * idx) + 96]].field_768 = cd[388]
                        stor8[mem[(32 * idx) + 96]].field_1024 = block.timestamp
                        t = sha3(mem[(32 * idx) + 96], 8) + 5
                        s = 96
                        while 384 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(mem[(32 * idx) + 96], 8) + 14
                        while sha3(mem[(32 * idx) + 96], 8) + 14 > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        idx = idx + 1
                        continue 
                    emit TeamSaleCreated(call.data[36 len 288], cd[324], cd[356], cd[388], block.timestamp);
        else:
            idx = 0
            s = 0
            while idx < 3:
                mem[0] = arg1
                mem[32] = 9
                _217 = sha3(arg1 << 248, 9)
                require lastTeamSalePrices[arg1 << 248][idx] + s >= s
                idx = idx + 1
                s = lastTeamSalePrices[arg1 << 248][idx] + s
                continue 
            if not 3 * stor3[_217].field_0:
                mem[384] = 0
                mem[416] = 0
                mem[448] = 0
                mem[480] = 0
                mem[512] = 0
                mem[832 len 288] = code.data[14197 len 288]
                mem[544] = 832
                mem[64] = 1312
                mem[1120] = this.address
                mem[1152] = 25 * 10^12 * 3600
                if not cd[356]:
                    mem[1184] = 0
                    if not cd[388]:
                        mem[1216] = 24 * 3600
                        mem[1248] = block.timestamp
                        mem[1280] = 96
                        idx = 0
                        while idx < 9:
                            require mem[(32 * idx) + 96]
                            require idx < 9
                            _1521 = mem[(32 * idx) + 96]
                            mem[1316] = mem[(32 * idx) + 96]
                            require ext_code.size(nonFungibleContractAddress)
                            call nonFungibleContractAddress.exists(uint256 arg1) with:
                                 gas gas_remaining wei
                                args _1521
                            mem[1312] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            require idx < 9
                            mem[0] = mem[(32 * idx) + 96]
                            mem[32] = 8
                            address(stor8[mem[(32 * idx) + 96]].field_0) = uint64(this.address) << 96
                            stor8[mem[(32 * idx) + 96]].field_256 = 25 * 10^12 * 3600
                            stor8[mem[(32 * idx) + 96]].field_512 = 0
                            stor8[mem[(32 * idx) + 96]].field_768 = 24 * 3600
                            stor8[mem[(32 * idx) + 96]].field_1024 = block.timestamp
                            t = sha3(mem[(32 * idx) + 96], 8) + 5
                            s = 96
                            while 384 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(mem[(32 * idx) + 96], 8) + 14
                            while sha3(mem[(32 * idx) + 96], 8) + 14 > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            idx = idx + 1
                            continue 
                        emit TeamSaleCreated(call.data[36 len 288], 25 * 10^12 * 3600, 0, 24 * 3600, block.timestamp);
                    else:
                        mem[1216] = cd[388]
                        mem[1248] = block.timestamp
                        mem[1280] = 96
                        require cd[388] >= 60
                        idx = 0
                        while idx < 9:
                            require mem[(32 * idx) + 96]
                            require idx < 9
                            _1518 = mem[(32 * idx) + 96]
                            mem[1316] = mem[(32 * idx) + 96]
                            require ext_code.size(nonFungibleContractAddress)
                            call nonFungibleContractAddress.exists(uint256 arg1) with:
                                 gas gas_remaining wei
                                args _1518
                            mem[1312] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            require idx < 9
                            mem[0] = mem[(32 * idx) + 96]
                            mem[32] = 8
                            address(stor8[mem[(32 * idx) + 96]].field_0) = uint64(this.address) << 96
                            stor8[mem[(32 * idx) + 96]].field_256 = 25 * 10^12 * 3600
                            stor8[mem[(32 * idx) + 96]].field_512 = 0
                            stor8[mem[(32 * idx) + 96]].field_768 = cd[388]
                            stor8[mem[(32 * idx) + 96]].field_1024 = block.timestamp
                            t = sha3(mem[(32 * idx) + 96], 8) + 5
                            s = 96
                            while 384 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(mem[(32 * idx) + 96], 8) + 14
                            while sha3(mem[(32 * idx) + 96], 8) + 14 > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            idx = idx + 1
                            continue 
                        emit TeamSaleCreated(call.data[36 len 288], 25 * 10^12 * 3600, 0, cd[388], block.timestamp);
                else:
                    mem[1184] = cd[356]
                    if not cd[388]:
                        mem[1216] = 24 * 3600
                        mem[1248] = block.timestamp
                        mem[1280] = 96
                        idx = 0
                        while idx < 9:
                            require mem[(32 * idx) + 96]
                            require idx < 9
                            _1527 = mem[(32 * idx) + 96]
                            mem[1316] = mem[(32 * idx) + 96]
                            require ext_code.size(nonFungibleContractAddress)
                            call nonFungibleContractAddress.exists(uint256 arg1) with:
                                 gas gas_remaining wei
                                args _1527
                            mem[1312] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            require idx < 9
                            mem[0] = mem[(32 * idx) + 96]
                            mem[32] = 8
                            address(stor8[mem[(32 * idx) + 96]].field_0) = uint64(this.address) << 96
                            stor8[mem[(32 * idx) + 96]].field_256 = 25 * 10^12 * 3600
                            stor8[mem[(32 * idx) + 96]].field_512 = cd[356]
                            stor8[mem[(32 * idx) + 96]].field_768 = 24 * 3600
                            stor8[mem[(32 * idx) + 96]].field_1024 = block.timestamp
                            t = sha3(mem[(32 * idx) + 96], 8) + 5
                            s = 96
                            while 384 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(mem[(32 * idx) + 96], 8) + 14
                            while sha3(mem[(32 * idx) + 96], 8) + 14 > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            idx = idx + 1
                            continue 
                        emit TeamSaleCreated(call.data[36 len 288], 25 * 10^12 * 3600, cd[356], 24 * 3600, block.timestamp);
                    else:
                        mem[1216] = cd[388]
                        mem[1248] = block.timestamp
                        mem[1280] = 96
                        require cd[388] >= 60
                        idx = 0
                        while idx < 9:
                            require mem[(32 * idx) + 96]
                            require idx < 9
                            _1524 = mem[(32 * idx) + 96]
                            mem[1316] = mem[(32 * idx) + 96]
                            require ext_code.size(nonFungibleContractAddress)
                            call nonFungibleContractAddress.exists(uint256 arg1) with:
                                 gas gas_remaining wei
                                args _1524
                            mem[1312] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            require idx < 9
                            mem[0] = mem[(32 * idx) + 96]
                            mem[32] = 8
                            address(stor8[mem[(32 * idx) + 96]].field_0) = uint64(this.address) << 96
                            stor8[mem[(32 * idx) + 96]].field_256 = 25 * 10^12 * 3600
                            stor8[mem[(32 * idx) + 96]].field_512 = cd[356]
                            stor8[mem[(32 * idx) + 96]].field_768 = cd[388]
                            stor8[mem[(32 * idx) + 96]].field_1024 = block.timestamp
                            t = sha3(mem[(32 * idx) + 96], 8) + 5
                            s = 96
                            while 384 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(mem[(32 * idx) + 96], 8) + 14
                            while sha3(mem[(32 * idx) + 96], 8) + 14 > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            idx = idx + 1
                            continue 
                        emit TeamSaleCreated(call.data[36 len 288], 25 * 10^12 * 3600, cd[356], cd[388], block.timestamp);
            else:
                require 36 * stor3[_217].field_0 / 3 * stor3[_217].field_0 == 12
                if not 36 * stor3[_217].field_0 / 30:
                    mem[384] = 0
                    mem[416] = 0
                    mem[448] = 0
                    mem[480] = 0
                    mem[512] = 0
                    mem[832 len 288] = code.data[14197 len 288]
                    mem[544] = 832
                    mem[64] = 1312
                    mem[1120] = this.address
                    mem[1152] = 25 * 10^12 * 3600
                    if not cd[356]:
                        mem[1184] = 0
                        if not cd[388]:
                            mem[1216] = 24 * 3600
                            mem[1248] = block.timestamp
                            mem[1280] = 96
                            idx = 0
                            while idx < 9:
                                require mem[(32 * idx) + 96]
                                require idx < 9
                                _1509 = mem[(32 * idx) + 96]
                                mem[1316] = mem[(32 * idx) + 96]
                                require ext_code.size(nonFungibleContractAddress)
                                call nonFungibleContractAddress.exists(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args _1509
                                mem[1312] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                require idx < 9
                                mem[0] = mem[(32 * idx) + 96]
                                mem[32] = 8
                                address(stor8[mem[(32 * idx) + 96]].field_0) = uint64(this.address) << 96
                                stor8[mem[(32 * idx) + 96]].field_256 = 25 * 10^12 * 3600
                                stor8[mem[(32 * idx) + 96]].field_512 = 0
                                stor8[mem[(32 * idx) + 96]].field_768 = 24 * 3600
                                stor8[mem[(32 * idx) + 96]].field_1024 = block.timestamp
                                t = sha3(mem[(32 * idx) + 96], 8) + 5
                                s = 96
                                while 384 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(mem[(32 * idx) + 96], 8) + 14
                                while sha3(mem[(32 * idx) + 96], 8) + 14 > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                idx = idx + 1
                                continue 
                            emit TeamSaleCreated(call.data[36 len 288], 25 * 10^12 * 3600, 0, 24 * 3600, block.timestamp);
                        else:
                            mem[1216] = cd[388]
                            mem[1248] = block.timestamp
                            mem[1280] = 96
                            require cd[388] >= 60
                            idx = 0
                            while idx < 9:
                                require mem[(32 * idx) + 96]
                                require idx < 9
                                _1506 = mem[(32 * idx) + 96]
                                mem[1316] = mem[(32 * idx) + 96]
                                require ext_code.size(nonFungibleContractAddress)
                                call nonFungibleContractAddress.exists(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args _1506
                                mem[1312] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                require idx < 9
                                mem[0] = mem[(32 * idx) + 96]
                                mem[32] = 8
                                address(stor8[mem[(32 * idx) + 96]].field_0) = uint64(this.address) << 96
                                stor8[mem[(32 * idx) + 96]].field_256 = 25 * 10^12 * 3600
                                stor8[mem[(32 * idx) + 96]].field_512 = 0
                                stor8[mem[(32 * idx) + 96]].field_768 = cd[388]
                                stor8[mem[(32 * idx) + 96]].field_1024 = block.timestamp
                                t = sha3(mem[(32 * idx) + 96], 8) + 5
                                s = 96
                                while 384 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(mem[(32 * idx) + 96], 8) + 14
                                while sha3(mem[(32 * idx) + 96], 8) + 14 > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                idx = idx + 1
                                continue 
                            emit TeamSaleCreated(call.data[36 len 288], 25 * 10^12 * 3600, 0, cd[388], block.timestamp);
                    else:
                        mem[1184] = cd[356]
                        if not cd[388]:
                            mem[1216] = 24 * 3600
                            mem[1248] = block.timestamp
                            mem[1280] = 96
                            idx = 0
                            while idx < 9:
                                require mem[(32 * idx) + 96]
                                require idx < 9
                                _1515 = mem[(32 * idx) + 96]
                                mem[1316] = mem[(32 * idx) + 96]
                                require ext_code.size(nonFungibleContractAddress)
                                call nonFungibleContractAddress.exists(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args _1515
                                mem[1312] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                require idx < 9
                                mem[0] = mem[(32 * idx) + 96]
                                mem[32] = 8
                                address(stor8[mem[(32 * idx) + 96]].field_0) = uint64(this.address) << 96
                                stor8[mem[(32 * idx) + 96]].field_256 = 25 * 10^12 * 3600
                                stor8[mem[(32 * idx) + 96]].field_512 = cd[356]
                                stor8[mem[(32 * idx) + 96]].field_768 = 24 * 3600
                                stor8[mem[(32 * idx) + 96]].field_1024 = block.timestamp
                                t = sha3(mem[(32 * idx) + 96], 8) + 5
                                s = 96
                                while 384 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(mem[(32 * idx) + 96], 8) + 14
                                while sha3(mem[(32 * idx) + 96], 8) + 14 > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                idx = idx + 1
                                continue 
                            emit TeamSaleCreated(call.data[36 len 288], 25 * 10^12 * 3600, cd[356], 24 * 3600, block.timestamp);
                        else:
                            mem[1216] = cd[388]
                            mem[1248] = block.timestamp
                            mem[1280] = 96
                            require cd[388] >= 60
                            idx = 0
                            while idx < 9:
                                require mem[(32 * idx) + 96]
                                require idx < 9
                                _1512 = mem[(32 * idx) + 96]
                                mem[1316] = mem[(32 * idx) + 96]
                                require ext_code.size(nonFungibleContractAddress)
                                call nonFungibleContractAddress.exists(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args _1512
                                mem[1312] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                require idx < 9
                                mem[0] = mem[(32 * idx) + 96]
                                mem[32] = 8
                                address(stor8[mem[(32 * idx) + 96]].field_0) = uint64(this.address) << 96
                                stor8[mem[(32 * idx) + 96]].field_256 = 25 * 10^12 * 3600
                                stor8[mem[(32 * idx) + 96]].field_512 = cd[356]
                                stor8[mem[(32 * idx) + 96]].field_768 = cd[388]
                                stor8[mem[(32 * idx) + 96]].field_1024 = block.timestamp
                                t = sha3(mem[(32 * idx) + 96], 8) + 5
                                s = 96
                                while 384 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(mem[(32 * idx) + 96], 8) + 14
                                while sha3(mem[(32 * idx) + 96], 8) + 14 > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                idx = idx + 1
                                continue 
                            emit TeamSaleCreated(call.data[36 len 288], 25 * 10^12 * 3600, cd[356], cd[388], block.timestamp);
                else:
                    require 9 * 36 * stor3[_217].field_0 / 30 / 36 * stor3[_217].field_0 / 30 == 9
                    if 9 * 36 * stor3[_217].field_0 / 30 < 10^16:
                        mem[384] = 0
                        mem[416] = 0
                        mem[448] = 0
                        mem[480] = 0
                        mem[512] = 0
                        mem[832 len 288] = code.data[14197 len 288]
                        mem[544] = 832
                        mem[64] = 1312
                        mem[1120] = this.address
                        mem[1152] = 25 * 10^12 * 3600
                        if not cd[356]:
                            mem[1184] = 0
                            if not cd[388]:
                                mem[1216] = 24 * 3600
                                mem[1248] = block.timestamp
                                mem[1280] = 96
                                idx = 0
                                while idx < 9:
                                    require mem[(32 * idx) + 96]
                                    require idx < 9
                                    _1497 = mem[(32 * idx) + 96]
                                    mem[1316] = mem[(32 * idx) + 96]
                                    require ext_code.size(nonFungibleContractAddress)
                                    call nonFungibleContractAddress.exists(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args _1497
                                    mem[1312] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    require idx < 9
                                    mem[0] = mem[(32 * idx) + 96]
                                    mem[32] = 8
                                    address(stor8[mem[(32 * idx) + 96]].field_0) = uint64(this.address) << 96
                                    stor8[mem[(32 * idx) + 96]].field_256 = 25 * 10^12 * 3600
                                    stor8[mem[(32 * idx) + 96]].field_512 = 0
                                    stor8[mem[(32 * idx) + 96]].field_768 = 24 * 3600
                                    stor8[mem[(32 * idx) + 96]].field_1024 = block.timestamp
                                    t = sha3(mem[(32 * idx) + 96], 8) + 5
                                    s = 96
                                    while 384 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(mem[(32 * idx) + 96], 8) + 14
                                    while sha3(mem[(32 * idx) + 96], 8) + 14 > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    idx = idx + 1
                                    continue 
                                emit TeamSaleCreated(call.data[36 len 288], 25 * 10^12 * 3600, 0, 24 * 3600, block.timestamp);
                            else:
                                mem[1216] = cd[388]
                                mem[1248] = block.timestamp
                                mem[1280] = 96
                                require cd[388] >= 60
                                idx = 0
                                while idx < 9:
                                    require mem[(32 * idx) + 96]
                                    require idx < 9
                                    _1494 = mem[(32 * idx) + 96]
                                    mem[1316] = mem[(32 * idx) + 96]
                                    require ext_code.size(nonFungibleContractAddress)
                                    call nonFungibleContractAddress.exists(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args _1494
                                    mem[1312] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    require idx < 9
                                    mem[0] = mem[(32 * idx) + 96]
                                    mem[32] = 8
                                    address(stor8[mem[(32 * idx) + 96]].field_0) = uint64(this.address) << 96
                                    stor8[mem[(32 * idx) + 96]].field_256 = 25 * 10^12 * 3600
                                    stor8[mem[(32 * idx) + 96]].field_512 = 0
                                    stor8[mem[(32 * idx) + 96]].field_768 = cd[388]
                                    stor8[mem[(32 * idx) + 96]].field_1024 = block.timestamp
                                    t = sha3(mem[(32 * idx) + 96], 8) + 5
                                    s = 96
                                    while 384 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(mem[(32 * idx) + 96], 8) + 14
                                    while sha3(mem[(32 * idx) + 96], 8) + 14 > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    idx = idx + 1
                                    continue 
                                emit TeamSaleCreated(call.data[36 len 288], 25 * 10^12 * 3600, 0, cd[388], block.timestamp);
                        else:
                            mem[1184] = cd[356]
                            if not cd[388]:
                                mem[1216] = 24 * 3600
                                mem[1248] = block.timestamp
                                mem[1280] = 96
                                idx = 0
                                while idx < 9:
                                    require mem[(32 * idx) + 96]
                                    require idx < 9
                                    _1503 = mem[(32 * idx) + 96]
                                    mem[1316] = mem[(32 * idx) + 96]
                                    require ext_code.size(nonFungibleContractAddress)
                                    call nonFungibleContractAddress.exists(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args _1503
                                    mem[1312] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    require idx < 9
                                    mem[0] = mem[(32 * idx) + 96]
                                    mem[32] = 8
                                    address(stor8[mem[(32 * idx) + 96]].field_0) = uint64(this.address) << 96
                                    stor8[mem[(32 * idx) + 96]].field_256 = 25 * 10^12 * 3600
                                    stor8[mem[(32 * idx) + 96]].field_512 = cd[356]
                                    stor8[mem[(32 * idx) + 96]].field_768 = 24 * 3600
                                    stor8[mem[(32 * idx) + 96]].field_1024 = block.timestamp
                                    t = sha3(mem[(32 * idx) + 96], 8) + 5
                                    s = 96
                                    while 384 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(mem[(32 * idx) + 96], 8) + 14
                                    while sha3(mem[(32 * idx) + 96], 8) + 14 > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    idx = idx + 1
                                    continue 
                                emit TeamSaleCreated(call.data[36 len 288], 25 * 10^12 * 3600, cd[356], 24 * 3600, block.timestamp);
                            else:
                                mem[1216] = cd[388]
                                mem[1248] = block.timestamp
                                mem[1280] = 96
                                require cd[388] >= 60
                                idx = 0
                                while idx < 9:
                                    require mem[(32 * idx) + 96]
                                    require idx < 9
                                    _1500 = mem[(32 * idx) + 96]
                                    mem[1316] = mem[(32 * idx) + 96]
                                    require ext_code.size(nonFungibleContractAddress)
                                    call nonFungibleContractAddress.exists(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args _1500
                                    mem[1312] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    require idx < 9
                                    mem[0] = mem[(32 * idx) + 96]
                                    mem[32] = 8
                                    address(stor8[mem[(32 * idx) + 96]].field_0) = uint64(this.address) << 96
                                    stor8[mem[(32 * idx) + 96]].field_256 = 25 * 10^12 * 3600
                                    stor8[mem[(32 * idx) + 96]].field_512 = cd[356]
                                    stor8[mem[(32 * idx) + 96]].field_768 = cd[388]
                                    stor8[mem[(32 * idx) + 96]].field_1024 = block.timestamp
                                    t = sha3(mem[(32 * idx) + 96], 8) + 5
                                    s = 96
                                    while 384 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(mem[(32 * idx) + 96], 8) + 14
                                    while sha3(mem[(32 * idx) + 96], 8) + 14 > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    idx = idx + 1
                                    continue 
                                emit TeamSaleCreated(call.data[36 len 288], 25 * 10^12 * 3600, cd[356], cd[388], block.timestamp);
                    else:
                        if not 9 * 36 * stor3[_217].field_0 / 30:
                            mem[384] = 0
                            mem[416] = 0
                            mem[448] = 0
                            mem[480] = 0
                            mem[512] = 0
                            mem[832 len 288] = code.data[14197 len 288]
                            mem[544] = 832
                            mem[64] = 1312
                            mem[1120] = this.address
                            mem[1152] = 0
                            if not cd[356]:
                                mem[1184] = 0
                                if not cd[388]:
                                    mem[1216] = 24 * 3600
                                    mem[1248] = block.timestamp
                                    mem[1280] = 96
                                    idx = 0
                                    while idx < 9:
                                        require mem[(32 * idx) + 96]
                                        require idx < 9
                                        _1485 = mem[(32 * idx) + 96]
                                        mem[1316] = mem[(32 * idx) + 96]
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.exists(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args _1485
                                        mem[1312] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        require idx < 9
                                        mem[0] = mem[(32 * idx) + 96]
                                        mem[32] = 8
                                        address(stor8[mem[(32 * idx) + 96]].field_0) = uint64(this.address) << 96
                                        stor8[mem[(32 * idx) + 96]].field_256 = 0
                                        stor8[mem[(32 * idx) + 96]].field_512 = 0
                                        stor8[mem[(32 * idx) + 96]].field_768 = 24 * 3600
                                        stor8[mem[(32 * idx) + 96]].field_1024 = block.timestamp
                                        t = sha3(mem[(32 * idx) + 96], 8) + 5
                                        s = 96
                                        while 384 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(mem[(32 * idx) + 96], 8) + 14
                                        while sha3(mem[(32 * idx) + 96], 8) + 14 > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                        idx = idx + 1
                                        continue 
                                    emit TeamSaleCreated(call.data[36 len 288], 0, 0, 24 * 3600, block.timestamp);
                                else:
                                    mem[1216] = cd[388]
                                    mem[1248] = block.timestamp
                                    mem[1280] = 96
                                    require cd[388] >= 60
                                    idx = 0
                                    while idx < 9:
                                        require mem[(32 * idx) + 96]
                                        require idx < 9
                                        _1482 = mem[(32 * idx) + 96]
                                        mem[1316] = mem[(32 * idx) + 96]
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.exists(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args _1482
                                        mem[1312] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        require idx < 9
                                        mem[0] = mem[(32 * idx) + 96]
                                        mem[32] = 8
                                        address(stor8[mem[(32 * idx) + 96]].field_0) = uint64(this.address) << 96
                                        stor8[mem[(32 * idx) + 96]].field_256 = 0
                                        stor8[mem[(32 * idx) + 96]].field_512 = 0
                                        stor8[mem[(32 * idx) + 96]].field_768 = cd[388]
                                        stor8[mem[(32 * idx) + 96]].field_1024 = block.timestamp
                                        t = sha3(mem[(32 * idx) + 96], 8) + 5
                                        s = 96
                                        while 384 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(mem[(32 * idx) + 96], 8) + 14
                                        while sha3(mem[(32 * idx) + 96], 8) + 14 > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                        idx = idx + 1
                                        continue 
                                    emit TeamSaleCreated(call.data[36 len 288], 0, 0, cd[388], block.timestamp);
                            else:
                                mem[1184] = cd[356]
                                if not cd[388]:
                                    mem[1216] = 24 * 3600
                                    mem[1248] = block.timestamp
                                    mem[1280] = 96
                                    idx = 0
                                    while idx < 9:
                                        require mem[(32 * idx) + 96]
                                        require idx < 9
                                        _1491 = mem[(32 * idx) + 96]
                                        mem[1316] = mem[(32 * idx) + 96]
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.exists(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args _1491
                                        mem[1312] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        require idx < 9
                                        mem[0] = mem[(32 * idx) + 96]
                                        mem[32] = 8
                                        address(stor8[mem[(32 * idx) + 96]].field_0) = uint64(this.address) << 96
                                        stor8[mem[(32 * idx) + 96]].field_256 = 0
                                        stor8[mem[(32 * idx) + 96]].field_512 = cd[356]
                                        stor8[mem[(32 * idx) + 96]].field_768 = 24 * 3600
                                        stor8[mem[(32 * idx) + 96]].field_1024 = block.timestamp
                                        t = sha3(mem[(32 * idx) + 96], 8) + 5
                                        s = 96
                                        while 384 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(mem[(32 * idx) + 96], 8) + 14
                                        while sha3(mem[(32 * idx) + 96], 8) + 14 > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                        idx = idx + 1
                                        continue 
                                    emit TeamSaleCreated(call.data[36 len 288], 0, cd[356], 24 * 3600, block.timestamp);
                                else:
                                    mem[1216] = cd[388]
                                    mem[1248] = block.timestamp
                                    mem[1280] = 96
                                    require cd[388] >= 60
                                    idx = 0
                                    while idx < 9:
                                        require mem[(32 * idx) + 96]
                                        require idx < 9
                                        _1488 = mem[(32 * idx) + 96]
                                        mem[1316] = mem[(32 * idx) + 96]
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.exists(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args _1488
                                        mem[1312] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        require idx < 9
                                        mem[0] = mem[(32 * idx) + 96]
                                        mem[32] = 8
                                        address(stor8[mem[(32 * idx) + 96]].field_0) = uint64(this.address) << 96
                                        stor8[mem[(32 * idx) + 96]].field_256 = 0
                                        stor8[mem[(32 * idx) + 96]].field_512 = cd[356]
                                        stor8[mem[(32 * idx) + 96]].field_768 = cd[388]
                                        stor8[mem[(32 * idx) + 96]].field_1024 = block.timestamp
                                        t = sha3(mem[(32 * idx) + 96], 8) + 5
                                        s = 96
                                        while 384 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(mem[(32 * idx) + 96], 8) + 14
                                        while sha3(mem[(32 * idx) + 96], 8) + 14 > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                        idx = idx + 1
                                        continue 
                                    emit TeamSaleCreated(call.data[36 len 288], 0, cd[356], cd[388], block.timestamp);
                        else:
                            require 81 * 36 * stor3[_217].field_0 / 30 / 9 * 36 * stor3[_217].field_0 / 30 == 9
                            mem[384] = 0
                            mem[416] = 0
                            mem[448] = 0
                            mem[480] = 0
                            mem[512] = 0
                            mem[832 len 288] = code.data[14197 len 288]
                            mem[544] = 832
                            mem[64] = 1312
                            mem[1120] = this.address
                            mem[1152] = 81 * 36 * stor3[_217].field_0 / 30
                            if not cd[356]:
                                mem[1184] = 0
                                if not cd[388]:
                                    mem[1216] = 24 * 3600
                                    mem[1248] = block.timestamp
                                    mem[1280] = 96
                                    idx = 0
                                    while idx < 9:
                                        require mem[(32 * idx) + 96]
                                        require idx < 9
                                        _1473 = mem[(32 * idx) + 96]
                                        mem[1316] = mem[(32 * idx) + 96]
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.exists(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args _1473
                                        mem[1312] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        require idx < 9
                                        mem[0] = mem[(32 * idx) + 96]
                                        mem[32] = 8
                                        address(stor8[mem[(32 * idx) + 96]].field_0) = uint64(this.address) << 96
                                        stor8[mem[(32 * idx) + 96]].field_256 = 81 * 36 * stor3[_217].field_0 / 30
                                        stor8[mem[(32 * idx) + 96]].field_512 = 0
                                        stor8[mem[(32 * idx) + 96]].field_768 = 24 * 3600
                                        stor8[mem[(32 * idx) + 96]].field_1024 = block.timestamp
                                        t = sha3(mem[(32 * idx) + 96], 8) + 5
                                        s = 96
                                        while 384 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(mem[(32 * idx) + 96], 8) + 14
                                        while sha3(mem[(32 * idx) + 96], 8) + 14 > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                        idx = idx + 1
                                        continue 
                                    emit TeamSaleCreated(call.data[36 len 288], 81 * 36 * stor3[_217].field_0 / 30, 0, 24 * 3600, block.timestamp);
                                else:
                                    mem[1216] = cd[388]
                                    mem[1248] = block.timestamp
                                    mem[1280] = 96
                                    require cd[388] >= 60
                                    idx = 0
                                    while idx < 9:
                                        require mem[(32 * idx) + 96]
                                        require idx < 9
                                        _1470 = mem[(32 * idx) + 96]
                                        mem[1316] = mem[(32 * idx) + 96]
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.exists(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args _1470
                                        mem[1312] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        require idx < 9
                                        mem[0] = mem[(32 * idx) + 96]
                                        mem[32] = 8
                                        address(stor8[mem[(32 * idx) + 96]].field_0) = uint64(this.address) << 96
                                        stor8[mem[(32 * idx) + 96]].field_256 = 81 * 36 * stor3[_217].field_0 / 30
                                        stor8[mem[(32 * idx) + 96]].field_512 = 0
                                        stor8[mem[(32 * idx) + 96]].field_768 = cd[388]
                                        stor8[mem[(32 * idx) + 96]].field_1024 = block.timestamp
                                        t = sha3(mem[(32 * idx) + 96], 8) + 5
                                        s = 96
                                        while 384 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(mem[(32 * idx) + 96], 8) + 14
                                        while sha3(mem[(32 * idx) + 96], 8) + 14 > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                        idx = idx + 1
                                        continue 
                                    emit TeamSaleCreated(call.data[36 len 288], 81 * 36 * stor3[_217].field_0 / 30, 0, cd[388], block.timestamp);
                            else:
                                mem[1184] = cd[356]
                                if not cd[388]:
                                    mem[1216] = 24 * 3600
                                    mem[1248] = block.timestamp
                                    mem[1280] = 96
                                    idx = 0
                                    while idx < 9:
                                        require mem[(32 * idx) + 96]
                                        require idx < 9
                                        _1479 = mem[(32 * idx) + 96]
                                        mem[1316] = mem[(32 * idx) + 96]
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.exists(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args _1479
                                        mem[1312] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        require idx < 9
                                        mem[0] = mem[(32 * idx) + 96]
                                        mem[32] = 8
                                        address(stor8[mem[(32 * idx) + 96]].field_0) = uint64(this.address) << 96
                                        stor8[mem[(32 * idx) + 96]].field_256 = 81 * 36 * stor3[_217].field_0 / 30
                                        stor8[mem[(32 * idx) + 96]].field_512 = cd[356]
                                        stor8[mem[(32 * idx) + 96]].field_768 = 24 * 3600
                                        stor8[mem[(32 * idx) + 96]].field_1024 = block.timestamp
                                        t = sha3(mem[(32 * idx) + 96], 8) + 5
                                        s = 96
                                        while 384 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(mem[(32 * idx) + 96], 8) + 14
                                        while sha3(mem[(32 * idx) + 96], 8) + 14 > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                        idx = idx + 1
                                        continue 
                                    emit TeamSaleCreated(call.data[36 len 288], 81 * 36 * stor3[_217].field_0 / 30, cd[356], 24 * 3600, block.timestamp);
                                else:
                                    mem[1216] = cd[388]
                                    mem[1248] = block.timestamp
                                    mem[1280] = 96
                                    require cd[388] >= 60
                                    idx = 0
                                    while idx < 9:
                                        require mem[(32 * idx) + 96]
                                        require idx < 9
                                        _1476 = mem[(32 * idx) + 96]
                                        mem[1316] = mem[(32 * idx) + 96]
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.exists(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args _1476
                                        mem[1312] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        require idx < 9
                                        mem[0] = mem[(32 * idx) + 96]
                                        mem[32] = 8
                                        address(stor8[mem[(32 * idx) + 96]].field_0) = uint64(this.address) << 96
                                        stor8[mem[(32 * idx) + 96]].field_256 = 81 * 36 * stor3[_217].field_0 / 30
                                        stor8[mem[(32 * idx) + 96]].field_512 = cd[356]
                                        stor8[mem[(32 * idx) + 96]].field_768 = cd[388]
                                        stor8[mem[(32 * idx) + 96]].field_1024 = block.timestamp
                                        t = sha3(mem[(32 * idx) + 96], 8) + 5
                                        s = 96
                                        while 384 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(mem[(32 * idx) + 96], 8) + 14
                                        while sha3(mem[(32 * idx) + 96], 8) + 14 > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                        idx = idx + 1
                                        continue 
                                    emit TeamSaleCreated(call.data[36 len 288], 81 * 36 * stor3[_217].field_0 / 30, cd[356], cd[388], block.timestamp);
}

function bid(uint256 arg1) payable {
    require not uint8(stor3.length.field_160)
    mem[1024] = stor8[arg1].field_1280
    idx = 1024
    s = 5
    while 1312 > idx + 32:
        mem[idx + 32] = stor8[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require BID_DELAY_TIME + stor8[arg1].field_1024 >= stor8[arg1].field_1024
    require block.timestamp > BID_DELAY_TIME + stor8[arg1].field_1024
    mem[1312 len 288] = code.data[14197 len 288]
    mem[1600] = stor8[arg1].field_1280
    idx = 1600
    s = 5
    while 1888 > idx + 32:
        mem[idx + 32] = stor8[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[1888] = address(stor8[arg1].field_0)
    mem[1920] = stor8[arg1].field_256
    mem[1952] = stor8[arg1].field_512
    mem[1984] = stor8[arg1].field_768
    mem[2016] = stor8[arg1].field_1024
    mem[2080] = stor8[arg1].field_1280
    idx = 2080
    s = 5
    while 2368 > idx + 32:
        mem[idx + 32] = stor8[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[2048] = 2080
    require 0 < stor8[arg1].field_1024
    mem[2368] = address(stor8[arg1].field_0)
    mem[2400] = stor8[arg1].field_256
    mem[2432] = stor8[arg1].field_512
    mem[2464] = stor8[arg1].field_768
    mem[2496] = stor8[arg1].field_1024
    mem[2560] = stor8[arg1].field_1280
    idx = 2560
    s = 5
    while 2848 > idx + 32:
        mem[idx + 32] = stor8[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[2528] = 2560
    require BID_DELAY_TIME + stor8[arg1].field_1024 >= stor8[arg1].field_1024
    if block.timestamp <= BID_DELAY_TIME + stor8[arg1].field_1024:
        if 0 >= stor8[arg1].field_768:
            require msg.value >= stor8[arg1].field_512
            if mem[1632] > 0:
                idx = 0
                while idx < 9:
                    mem[0] = mem[(32 * idx) + 1600]
                    mem[32] = 8
                    address(stor8[mem[(32 * idx) + 1600]].field_0) = 0
                    stor8[mem[(32 * idx) + 1600]].field_256 = 0
                    stor8[mem[(32 * idx) + 1600]].field_512 = 0
                    stor8[mem[(32 * idx) + 1600]].field_768 = 0
                    stor8[mem[(32 * idx) + 1600]].field_1024 = 0
                    s = sha3(mem[(32 * idx) + 1600], 8) + 5
                    while sha3(mem[(32 * idx) + 1600], 8) + 14 > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                    idx = idx + 1
                    continue 
                if stor8[arg1].field_512 <= 0:
                    call msg.sender with:
                       value msg.value - stor8[arg1].field_512 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 >= mem[1632]:
                        emit SaleWinner(arg1, stor8[arg1].field_512, msg.sender);
                        if 0 < mem[1056]:
                            idx = 0
                            while idx < 9:
                                _2315 = mem[(32 * idx) + 1024]
                                mem[2848] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                mem[2852] = this.address
                                mem[2884] = msg.sender
                                mem[2916] = _2315
                                require ext_code.size(nonFungibleContractAddress)
                                call nonFungibleContractAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _2315
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            if this.address == address(stor8[arg1].field_0):
                                if 0 >= mem[1056]:
                                    lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_512 / 9
                                    seedSingleSaleCount++
                                else:
                                    require ext_code.size(nonFungibleContractAddress)
                                    call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                    lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_512 / 9
                                    seedTeamSaleCount[ext_call.return_data[0]]++
                        else:
                            require ext_code.size(nonFungibleContractAddress)
                            call nonFungibleContractAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if this.address == address(stor8[arg1].field_0):
                                if 0 >= mem[1056]:
                                    lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_512
                                    seedSingleSaleCount++
                                else:
                                    require ext_code.size(nonFungibleContractAddress)
                                    call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                    lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_512
                                    seedTeamSaleCount[ext_call.return_data[0]]++
                    else:
                        emit TeamSaleWinner(uint256[9] arg1, uint256 arg2, address arg3):
                                            stor8[arg1].field_1280,
                                            mem[1632 len 256],
                                            stor8[arg1].field_512,
                                            msg.sender,
                        if 0 < mem[1056]:
                            idx = 0
                            while idx < 9:
                                _3083 = mem[(32 * idx) + 1024]
                                mem[2848] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                mem[2852] = this.address
                                mem[2884] = msg.sender
                                mem[2916] = _3083
                                require ext_code.size(nonFungibleContractAddress)
                                call nonFungibleContractAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _3083
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            if this.address == address(stor8[arg1].field_0):
                                if 0 >= mem[1056]:
                                    lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_512 / 9
                                    seedSingleSaleCount++
                                else:
                                    require ext_code.size(nonFungibleContractAddress)
                                    call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                    lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_512 / 9
                                    seedTeamSaleCount[ext_call.return_data[0]]++
                        else:
                            require ext_code.size(nonFungibleContractAddress)
                            call nonFungibleContractAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if this.address == address(stor8[arg1].field_0):
                                if 0 >= mem[1056]:
                                    lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_512
                                    seedSingleSaleCount++
                                else:
                                    require ext_code.size(nonFungibleContractAddress)
                                    call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                    lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_512
                                    seedTeamSaleCount[ext_call.return_data[0]]++
                else:
                    if not stor8[arg1].field_512:
                        require 0 <= stor8[arg1].field_512
                        call address(stor8[arg1].field_0) with:
                           value stor8[arg1].field_512 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require stor8[arg1].field_512 <= msg.value
                        call msg.sender with:
                           value msg.value - stor8[arg1].field_512 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 >= mem[1632]:
                            emit SaleWinner(arg1, stor8[arg1].field_512, msg.sender);
                            if 0 < mem[1056]:
                                idx = 0
                                while idx < 9:
                                    _2317 = mem[(32 * idx) + 1024]
                                    mem[2848] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                    mem[2852] = this.address
                                    mem[2884] = msg.sender
                                    mem[2916] = _2317
                                    require ext_code.size(nonFungibleContractAddress)
                                    call nonFungibleContractAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _2317
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                                if this.address == address(stor8[arg1].field_0):
                                    if 0 >= mem[1056]:
                                        lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_512 / 9
                                        seedSingleSaleCount++
                                    else:
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                        lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_512 / 9
                                        seedTeamSaleCount[ext_call.return_data[0]]++
                            else:
                                require ext_code.size(nonFungibleContractAddress)
                                call nonFungibleContractAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if this.address == address(stor8[arg1].field_0):
                                    if 0 >= mem[1056]:
                                        lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_512
                                        seedSingleSaleCount++
                                    else:
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                        lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_512
                                        seedTeamSaleCount[ext_call.return_data[0]]++
                        else:
                            emit TeamSaleWinner(uint256[9] arg1, uint256 arg2, address arg3):
                                                stor8[arg1].field_1280,
                                                mem[1632 len 256],
                                                stor8[arg1].field_512,
                                                msg.sender,
                            if 0 < mem[1056]:
                                idx = 0
                                while idx < 9:
                                    _3085 = mem[(32 * idx) + 1024]
                                    mem[2848] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                    mem[2852] = this.address
                                    mem[2884] = msg.sender
                                    mem[2916] = _3085
                                    require ext_code.size(nonFungibleContractAddress)
                                    call nonFungibleContractAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _3085
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                                if this.address == address(stor8[arg1].field_0):
                                    if 0 >= mem[1056]:
                                        lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_512 / 9
                                        seedSingleSaleCount++
                                    else:
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                        lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_512 / 9
                                        seedTeamSaleCount[ext_call.return_data[0]]++
                            else:
                                require ext_code.size(nonFungibleContractAddress)
                                call nonFungibleContractAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if this.address == address(stor8[arg1].field_0):
                                    if 0 >= mem[1056]:
                                        lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_512
                                        seedSingleSaleCount++
                                    else:
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                        lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_512
                                        seedTeamSaleCount[ext_call.return_data[0]]++
                    else:
                        require ownerCut * stor8[arg1].field_512 / stor8[arg1].field_512 == ownerCut
                        require ownerCut * stor8[arg1].field_512 / 10000 <= stor8[arg1].field_512
                        call address(stor8[arg1].field_0) with:
                           value stor8[arg1].field_512 - (ownerCut * stor8[arg1].field_512 / 10000) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require stor8[arg1].field_512 <= msg.value
                        call msg.sender with:
                           value msg.value - stor8[arg1].field_512 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 >= mem[1632]:
                            emit SaleWinner(arg1, stor8[arg1].field_512, msg.sender);
                            if 0 < mem[1056]:
                                idx = 0
                                while idx < 9:
                                    _2316 = mem[(32 * idx) + 1024]
                                    mem[2848] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                    mem[2852] = this.address
                                    mem[2884] = msg.sender
                                    mem[2916] = _2316
                                    require ext_code.size(nonFungibleContractAddress)
                                    call nonFungibleContractAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _2316
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                                if this.address == address(stor8[arg1].field_0):
                                    if 0 >= mem[1056]:
                                        lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_512 / 9
                                        seedSingleSaleCount++
                                    else:
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                        lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_512 / 9
                                        seedTeamSaleCount[ext_call.return_data[0]]++
                            else:
                                require ext_code.size(nonFungibleContractAddress)
                                call nonFungibleContractAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if this.address == address(stor8[arg1].field_0):
                                    if 0 >= mem[1056]:
                                        lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_512
                                        seedSingleSaleCount++
                                    else:
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                        lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_512
                                        seedTeamSaleCount[ext_call.return_data[0]]++
                        else:
                            emit TeamSaleWinner(uint256[9] arg1, uint256 arg2, address arg3):
                                                stor8[arg1].field_1280,
                                                mem[1632 len 256],
                                                stor8[arg1].field_512,
                                                msg.sender,
                            if 0 < mem[1056]:
                                idx = 0
                                while idx < 9:
                                    _3084 = mem[(32 * idx) + 1024]
                                    mem[2848] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                    mem[2852] = this.address
                                    mem[2884] = msg.sender
                                    mem[2916] = _3084
                                    require ext_code.size(nonFungibleContractAddress)
                                    call nonFungibleContractAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _3084
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                                if this.address == address(stor8[arg1].field_0):
                                    if 0 >= mem[1056]:
                                        lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_512 / 9
                                        seedSingleSaleCount++
                                    else:
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                        lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_512 / 9
                                        seedTeamSaleCount[ext_call.return_data[0]]++
                            else:
                                require ext_code.size(nonFungibleContractAddress)
                                call nonFungibleContractAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if this.address == address(stor8[arg1].field_0):
                                    if 0 >= mem[1056]:
                                        lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_512
                                        seedSingleSaleCount++
                                    else:
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                        lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_512
                                        seedTeamSaleCount[ext_call.return_data[0]]++
            else:
                address(stor8[arg1].field_0) = 0
                stor8[arg1].field_256 = 0
                stor8[arg1].field_512 = 0
                stor8[arg1].field_768 = 0
                stor8[arg1].field_1024 = 0
                idx = 5
                while 14 > idx:
                    stor8[arg1][idx].field_0 = 0
                    idx = idx + 1
                    continue 
                if stor8[arg1].field_512 <= 0:
                    call msg.sender with:
                       value msg.value - stor8[arg1].field_512 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 >= mem[1632]:
                        emit SaleWinner(arg1, stor8[arg1].field_512, msg.sender);
                        if 0 < mem[1056]:
                            idx = 0
                            while idx < 9:
                                _2312 = mem[(32 * idx) + 1024]
                                mem[2848] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                mem[2852] = this.address
                                mem[2884] = msg.sender
                                mem[2916] = _2312
                                require ext_code.size(nonFungibleContractAddress)
                                call nonFungibleContractAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _2312
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            if this.address == address(stor8[arg1].field_0):
                                if 0 >= mem[1056]:
                                    lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_512 / 9
                                    seedSingleSaleCount++
                                else:
                                    require ext_code.size(nonFungibleContractAddress)
                                    call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                    lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_512 / 9
                                    seedTeamSaleCount[ext_call.return_data[0]]++
                        else:
                            require ext_code.size(nonFungibleContractAddress)
                            call nonFungibleContractAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if this.address == address(stor8[arg1].field_0):
                                if 0 >= mem[1056]:
                                    lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_512
                                    seedSingleSaleCount++
                                else:
                                    require ext_code.size(nonFungibleContractAddress)
                                    call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                    lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_512
                                    seedTeamSaleCount[ext_call.return_data[0]]++
                    else:
                        var62001 = 288
                        emit TeamSaleWinner(uint256[9] arg1, uint256 arg2, address arg3):
                                            stor8[arg1].field_1280,
                                            mem[1632 len 256],
                                            stor8[arg1].field_512,
                                            msg.sender,
                        if 0 < mem[1056]:
                            idx = 0
                            while idx < 9:
                                _3080 = mem[(32 * idx) + 1024]
                                mem[2848] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                mem[2852] = this.address
                                mem[2884] = msg.sender
                                mem[2916] = _3080
                                require ext_code.size(nonFungibleContractAddress)
                                call nonFungibleContractAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _3080
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            if this.address == address(stor8[arg1].field_0):
                                if 0 >= mem[1056]:
                                    lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_512 / 9
                                    seedSingleSaleCount++
                                else:
                                    require ext_code.size(nonFungibleContractAddress)
                                    call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                    lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_512 / 9
                                    seedTeamSaleCount[ext_call.return_data[0]]++
                        else:
                            require ext_code.size(nonFungibleContractAddress)
                            call nonFungibleContractAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if this.address == address(stor8[arg1].field_0):
                                if 0 >= mem[1056]:
                                    lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_512
                                    seedSingleSaleCount++
                                else:
                                    require ext_code.size(nonFungibleContractAddress)
                                    call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                    lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_512
                                    seedTeamSaleCount[ext_call.return_data[0]]++
                else:
                    if not stor8[arg1].field_512:
                        require 0 <= stor8[arg1].field_512
                        call address(stor8[arg1].field_0) with:
                           value stor8[arg1].field_512 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require stor8[arg1].field_512 <= msg.value
                        call msg.sender with:
                           value msg.value - stor8[arg1].field_512 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 >= mem[1632]:
                            emit SaleWinner(arg1, stor8[arg1].field_512, msg.sender);
                            if 0 < mem[1056]:
                                idx = 0
                                while idx < 9:
                                    _2314 = mem[(32 * idx) + 1024]
                                    mem[2848] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                    mem[2852] = this.address
                                    mem[2884] = msg.sender
                                    mem[2916] = _2314
                                    require ext_code.size(nonFungibleContractAddress)
                                    call nonFungibleContractAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _2314
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                                if this.address == address(stor8[arg1].field_0):
                                    if 0 >= mem[1056]:
                                        lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_512 / 9
                                        seedSingleSaleCount++
                                    else:
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                        lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_512 / 9
                                        seedTeamSaleCount[ext_call.return_data[0]]++
                            else:
                                require ext_code.size(nonFungibleContractAddress)
                                call nonFungibleContractAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if this.address == address(stor8[arg1].field_0):
                                    if 0 >= mem[1056]:
                                        lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_512
                                        seedSingleSaleCount++
                                    else:
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                        lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_512
                                        seedTeamSaleCount[ext_call.return_data[0]]++
                        else:
                            emit TeamSaleWinner(uint256[9] arg1, uint256 arg2, address arg3):
                                                stor8[arg1].field_1280,
                                                mem[1632 len 256],
                                                stor8[arg1].field_512,
                                                msg.sender,
                            if 0 < mem[1056]:
                                idx = 0
                                while idx < 9:
                                    _3082 = mem[(32 * idx) + 1024]
                                    mem[2848] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                    mem[2852] = this.address
                                    mem[2884] = msg.sender
                                    mem[2916] = _3082
                                    require ext_code.size(nonFungibleContractAddress)
                                    call nonFungibleContractAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _3082
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                                if this.address == address(stor8[arg1].field_0):
                                    if 0 >= mem[1056]:
                                        lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_512 / 9
                                        seedSingleSaleCount++
                                    else:
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                        lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_512 / 9
                                        seedTeamSaleCount[ext_call.return_data[0]]++
                            else:
                                require ext_code.size(nonFungibleContractAddress)
                                call nonFungibleContractAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if this.address == address(stor8[arg1].field_0):
                                    if 0 >= mem[1056]:
                                        lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_512
                                        seedSingleSaleCount++
                                    else:
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                        lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_512
                                        seedTeamSaleCount[ext_call.return_data[0]]++
                    else:
                        require ownerCut * stor8[arg1].field_512 / stor8[arg1].field_512 == ownerCut
                        require ownerCut * stor8[arg1].field_512 / 10000 <= stor8[arg1].field_512
                        call address(stor8[arg1].field_0) with:
                           value stor8[arg1].field_512 - (ownerCut * stor8[arg1].field_512 / 10000) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require stor8[arg1].field_512 <= msg.value
                        call msg.sender with:
                           value msg.value - stor8[arg1].field_512 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 >= mem[1632]:
                            emit SaleWinner(arg1, stor8[arg1].field_512, msg.sender);
                            if 0 < mem[1056]:
                                idx = 0
                                while idx < 9:
                                    _2313 = mem[(32 * idx) + 1024]
                                    mem[2848] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                    mem[2852] = this.address
                                    mem[2884] = msg.sender
                                    mem[2916] = _2313
                                    require ext_code.size(nonFungibleContractAddress)
                                    call nonFungibleContractAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _2313
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                                if this.address == address(stor8[arg1].field_0):
                                    if 0 >= mem[1056]:
                                        lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_512 / 9
                                        seedSingleSaleCount++
                                    else:
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                        lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_512 / 9
                                        seedTeamSaleCount[ext_call.return_data[0]]++
                            else:
                                require ext_code.size(nonFungibleContractAddress)
                                call nonFungibleContractAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if this.address == address(stor8[arg1].field_0):
                                    if 0 >= mem[1056]:
                                        lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_512
                                        seedSingleSaleCount++
                                    else:
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                        lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_512
                                        seedTeamSaleCount[ext_call.return_data[0]]++
                        else:
                            emit TeamSaleWinner(uint256[9] arg1, uint256 arg2, address arg3):
                                                stor8[arg1].field_1280,
                                                mem[1632 len 256],
                                                stor8[arg1].field_512,
                                                msg.sender,
                            if 0 < mem[1056]:
                                idx = 0
                                while idx < 9:
                                    _3081 = mem[(32 * idx) + 1024]
                                    mem[2848] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                    mem[2852] = this.address
                                    mem[2884] = msg.sender
                                    mem[2916] = _3081
                                    require ext_code.size(nonFungibleContractAddress)
                                    call nonFungibleContractAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _3081
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                                if this.address == address(stor8[arg1].field_0):
                                    if 0 >= mem[1056]:
                                        lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_512 / 9
                                        seedSingleSaleCount++
                                    else:
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                        lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_512 / 9
                                        seedTeamSaleCount[ext_call.return_data[0]]++
                            else:
                                require ext_code.size(nonFungibleContractAddress)
                                call nonFungibleContractAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if this.address == address(stor8[arg1].field_0):
                                    if 0 >= mem[1056]:
                                        lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_512
                                        seedSingleSaleCount++
                                    else:
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                        lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_512
                                        seedTeamSaleCount[ext_call.return_data[0]]++
        else:
            require stor8[arg1].field_768
            require msg.value >= stor8[arg1].field_256 + (0 / stor8[arg1].field_768)
            if mem[1632] > 0:
                idx = 0
                while idx < 9:
                    mem[0] = mem[(32 * idx) + 1600]
                    mem[32] = 8
                    address(stor8[mem[(32 * idx) + 1600]].field_0) = 0
                    stor8[mem[(32 * idx) + 1600]].field_256 = 0
                    stor8[mem[(32 * idx) + 1600]].field_512 = 0
                    stor8[mem[(32 * idx) + 1600]].field_768 = 0
                    stor8[mem[(32 * idx) + 1600]].field_1024 = 0
                    s = sha3(mem[(32 * idx) + 1600], 8) + 5
                    while sha3(mem[(32 * idx) + 1600], 8) + 14 > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                    idx = idx + 1
                    continue 
                if stor8[arg1].field_256 + (0 / stor8[arg1].field_768) <= 0:
                    call msg.sender with:
                       value msg.value - stor8[arg1].field_256 - (0 / stor8[arg1].field_768) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 >= mem[1632]:
                        emit SaleWinner(arg1, stor8[arg1].field_256 + (0 / stor8[arg1].field_768), msg.sender);
                        if 0 < mem[1056]:
                            idx = 0
                            while idx < 9:
                                _2309 = mem[(32 * idx) + 1024]
                                mem[2848] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                mem[2852] = this.address
                                mem[2884] = msg.sender
                                mem[2916] = _2309
                                require ext_code.size(nonFungibleContractAddress)
                                call nonFungibleContractAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _2309
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            if this.address == address(stor8[arg1].field_0):
                                if 0 >= mem[1056]:
                                    lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_256 + (0 / stor8[arg1].field_768) / 9
                                    seedSingleSaleCount++
                                else:
                                    require ext_code.size(nonFungibleContractAddress)
                                    call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                    lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_256 + (0 / stor8[arg1].field_768) / 9
                                    seedTeamSaleCount[ext_call.return_data[0]]++
                        else:
                            require ext_code.size(nonFungibleContractAddress)
                            call nonFungibleContractAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if this.address == address(stor8[arg1].field_0):
                                if 0 >= mem[1056]:
                                    lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_256 + (0 / stor8[arg1].field_768)
                                    seedSingleSaleCount++
                                else:
                                    require ext_code.size(nonFungibleContractAddress)
                                    call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                    lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_256 + (0 / stor8[arg1].field_768)
                                    seedTeamSaleCount[ext_call.return_data[0]]++
                    else:
                        var57001 = 288
                        emit TeamSaleWinner(uint256[9] arg1, uint256 arg2, address arg3):
                                            stor8[arg1].field_1280,
                                            mem[1632 len 256],
                                            stor8[arg1].field_256 + (0 / stor8[arg1].field_768),
                                            msg.sender,
                        if 0 < mem[1056]:
                            idx = 0
                            while idx < 9:
                                _3077 = mem[(32 * idx) + 1024]
                                mem[2848] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                mem[2852] = this.address
                                mem[2884] = msg.sender
                                mem[2916] = _3077
                                require ext_code.size(nonFungibleContractAddress)
                                call nonFungibleContractAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _3077
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            if this.address == address(stor8[arg1].field_0):
                                if 0 >= mem[1056]:
                                    lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_256 + (0 / stor8[arg1].field_768) / 9
                                    seedSingleSaleCount++
                                else:
                                    require ext_code.size(nonFungibleContractAddress)
                                    call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                    lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_256 + (0 / stor8[arg1].field_768) / 9
                                    seedTeamSaleCount[ext_call.return_data[0]]++
                        else:
                            require ext_code.size(nonFungibleContractAddress)
                            call nonFungibleContractAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if this.address == address(stor8[arg1].field_0):
                                if 0 >= mem[1056]:
                                    lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_256 + (0 / stor8[arg1].field_768)
                                    seedSingleSaleCount++
                                else:
                                    require ext_code.size(nonFungibleContractAddress)
                                    call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                    lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_256 + (0 / stor8[arg1].field_768)
                                    seedTeamSaleCount[ext_call.return_data[0]]++
                else:
                    if not stor8[arg1].field_256 + (0 / stor8[arg1].field_768):
                        require 0 <= stor8[arg1].field_256 + (0 / stor8[arg1].field_768)
                        call address(stor8[arg1].field_0) with:
                           value stor8[arg1].field_256 + (0 / stor8[arg1].field_768) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require stor8[arg1].field_256 + (0 / stor8[arg1].field_768) <= msg.value
                        call msg.sender with:
                           value msg.value - stor8[arg1].field_256 - (0 / stor8[arg1].field_768) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 >= mem[1632]:
                            emit SaleWinner(arg1, stor8[arg1].field_256 + (0 / stor8[arg1].field_768), msg.sender);
                            if 0 < mem[1056]:
                                idx = 0
                                while idx < 9:
                                    _2311 = mem[(32 * idx) + 1024]
                                    mem[2848] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                    mem[2852] = this.address
                                    mem[2884] = msg.sender
                                    mem[2916] = _2311
                                    require ext_code.size(nonFungibleContractAddress)
                                    call nonFungibleContractAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _2311
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                                if this.address == address(stor8[arg1].field_0):
                                    if 0 >= mem[1056]:
                                        lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_256 + (0 / stor8[arg1].field_768) / 9
                                        seedSingleSaleCount++
                                    else:
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                        lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_256 + (0 / stor8[arg1].field_768) / 9
                                        seedTeamSaleCount[ext_call.return_data[0]]++
                            else:
                                require ext_code.size(nonFungibleContractAddress)
                                call nonFungibleContractAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if this.address == address(stor8[arg1].field_0):
                                    if 0 >= mem[1056]:
                                        lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_256 + (0 / stor8[arg1].field_768)
                                        seedSingleSaleCount++
                                    else:
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                        lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_256 + (0 / stor8[arg1].field_768)
                                        seedTeamSaleCount[ext_call.return_data[0]]++
                        else:
                            emit TeamSaleWinner(uint256[9] arg1, uint256 arg2, address arg3):
                                                stor8[arg1].field_1280,
                                                mem[1632 len 256],
                                                stor8[arg1].field_256 + (0 / stor8[arg1].field_768),
                                                msg.sender,
                            if 0 < mem[1056]:
                                idx = 0
                                while idx < 9:
                                    _3079 = mem[(32 * idx) + 1024]
                                    mem[2848] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                    mem[2852] = this.address
                                    mem[2884] = msg.sender
                                    mem[2916] = _3079
                                    require ext_code.size(nonFungibleContractAddress)
                                    call nonFungibleContractAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _3079
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                                if this.address == address(stor8[arg1].field_0):
                                    if 0 >= mem[1056]:
                                        lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_256 + (0 / stor8[arg1].field_768) / 9
                                        seedSingleSaleCount++
                                    else:
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                        lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_256 + (0 / stor8[arg1].field_768) / 9
                                        seedTeamSaleCount[ext_call.return_data[0]]++
                            else:
                                require ext_code.size(nonFungibleContractAddress)
                                call nonFungibleContractAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if this.address == address(stor8[arg1].field_0):
                                    if 0 >= mem[1056]:
                                        lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_256 + (0 / stor8[arg1].field_768)
                                        seedSingleSaleCount++
                                    else:
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                        lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_256 + (0 / stor8[arg1].field_768)
                                        seedTeamSaleCount[ext_call.return_data[0]]++
                    else:
                        require (stor8[arg1].field_256 * ownerCut) + (0 / stor8[arg1].field_768 * ownerCut) / stor8[arg1].field_256 + (0 / stor8[arg1].field_768) == ownerCut
                        require (stor8[arg1].field_256 * ownerCut) + (0 / stor8[arg1].field_768 * ownerCut) / 10000 <= stor8[arg1].field_256 + (0 / stor8[arg1].field_768)
                        call address(stor8[arg1].field_0) with:
                           value stor8[arg1].field_256 + (0 / stor8[arg1].field_768) - ((stor8[arg1].field_256 * ownerCut) + (0 / stor8[arg1].field_768 * ownerCut) / 10000) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require stor8[arg1].field_256 + (0 / stor8[arg1].field_768) <= msg.value
                        call msg.sender with:
                           value msg.value - stor8[arg1].field_256 - (0 / stor8[arg1].field_768) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 >= mem[1632]:
                            emit SaleWinner(arg1, stor8[arg1].field_256 + (0 / stor8[arg1].field_768), msg.sender);
                            if 0 < mem[1056]:
                                idx = 0
                                while idx < 9:
                                    _2310 = mem[(32 * idx) + 1024]
                                    mem[2848] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                    mem[2852] = this.address
                                    mem[2884] = msg.sender
                                    mem[2916] = _2310
                                    require ext_code.size(nonFungibleContractAddress)
                                    call nonFungibleContractAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _2310
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                                if this.address == address(stor8[arg1].field_0):
                                    if 0 >= mem[1056]:
                                        lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_256 + (0 / stor8[arg1].field_768) / 9
                                        seedSingleSaleCount++
                                    else:
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                        lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_256 + (0 / stor8[arg1].field_768) / 9
                                        seedTeamSaleCount[ext_call.return_data[0]]++
                            else:
                                require ext_code.size(nonFungibleContractAddress)
                                call nonFungibleContractAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if this.address == address(stor8[arg1].field_0):
                                    if 0 >= mem[1056]:
                                        lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_256 + (0 / stor8[arg1].field_768)
                                        seedSingleSaleCount++
                                    else:
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                        lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_256 + (0 / stor8[arg1].field_768)
                                        seedTeamSaleCount[ext_call.return_data[0]]++
                        else:
                            emit TeamSaleWinner(uint256[9] arg1, uint256 arg2, address arg3):
                                                stor8[arg1].field_1280,
                                                mem[1632 len 256],
                                                stor8[arg1].field_256 + (0 / stor8[arg1].field_768),
                                                msg.sender,
                            if 0 < mem[1056]:
                                idx = 0
                                while idx < 9:
                                    _3078 = mem[(32 * idx) + 1024]
                                    mem[2848] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                    mem[2852] = this.address
                                    mem[2884] = msg.sender
                                    mem[2916] = _3078
                                    require ext_code.size(nonFungibleContractAddress)
                                    call nonFungibleContractAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _3078
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                                if this.address == address(stor8[arg1].field_0):
                                    if 0 >= mem[1056]:
                                        lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_256 + (0 / stor8[arg1].field_768) / 9
                                        seedSingleSaleCount++
                                    else:
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                        lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_256 + (0 / stor8[arg1].field_768) / 9
                                        seedTeamSaleCount[ext_call.return_data[0]]++
                            else:
                                require ext_code.size(nonFungibleContractAddress)
                                call nonFungibleContractAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if this.address == address(stor8[arg1].field_0):
                                    if 0 >= mem[1056]:
                                        lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_256 + (0 / stor8[arg1].field_768)
                                        seedSingleSaleCount++
                                    else:
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                        lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_256 + (0 / stor8[arg1].field_768)
                                        seedTeamSaleCount[ext_call.return_data[0]]++
            else:
                address(stor8[arg1].field_0) = 0
                stor8[arg1].field_256 = 0
                stor8[arg1].field_512 = 0
                stor8[arg1].field_768 = 0
                stor8[arg1].field_1024 = 0
                idx = 5
                while 14 > idx:
                    stor8[arg1][idx].field_0 = 0
                    idx = idx + 1
                    continue 
                if stor8[arg1].field_256 + (0 / stor8[arg1].field_768) <= 0:
                    call msg.sender with:
                       value msg.value - stor8[arg1].field_256 - (0 / stor8[arg1].field_768) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 >= mem[1632]:
                        emit SaleWinner(arg1, stor8[arg1].field_256 + (0 / stor8[arg1].field_768), msg.sender);
                        if 0 < mem[1056]:
                            idx = 0
                            while idx < 9:
                                _2306 = mem[(32 * idx) + 1024]
                                mem[2848] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                mem[2852] = this.address
                                mem[2884] = msg.sender
                                mem[2916] = _2306
                                require ext_code.size(nonFungibleContractAddress)
                                call nonFungibleContractAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _2306
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            if this.address == address(stor8[arg1].field_0):
                                if 0 >= mem[1056]:
                                    lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_256 + (0 / stor8[arg1].field_768) / 9
                                    seedSingleSaleCount++
                                else:
                                    require ext_code.size(nonFungibleContractAddress)
                                    call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                    lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_256 + (0 / stor8[arg1].field_768) / 9
                                    seedTeamSaleCount[ext_call.return_data[0]]++
                        else:
                            require ext_code.size(nonFungibleContractAddress)
                            call nonFungibleContractAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if this.address == address(stor8[arg1].field_0):
                                if 0 >= mem[1056]:
                                    lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_256 + (0 / stor8[arg1].field_768)
                                    seedSingleSaleCount++
                                else:
                                    require ext_code.size(nonFungibleContractAddress)
                                    call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                    lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_256 + (0 / stor8[arg1].field_768)
                                    seedTeamSaleCount[ext_call.return_data[0]]++
                    else:
                        emit TeamSaleWinner(uint256[9] arg1, uint256 arg2, address arg3):
                                            stor8[arg1].field_1280,
                                            mem[1632 len 256],
                                            stor8[arg1].field_256 + (0 / stor8[arg1].field_768),
                                            msg.sender,
                        if 0 < mem[1056]:
                            idx = 0
                            while idx < 9:
                                _3074 = mem[(32 * idx) + 1024]
                                mem[2848] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                mem[2852] = this.address
                                mem[2884] = msg.sender
                                mem[2916] = _3074
                                require ext_code.size(nonFungibleContractAddress)
                                call nonFungibleContractAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _3074
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            if this.address == address(stor8[arg1].field_0):
                                if 0 >= mem[1056]:
                                    lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_256 + (0 / stor8[arg1].field_768) / 9
                                    seedSingleSaleCount++
                                else:
                                    require ext_code.size(nonFungibleContractAddress)
                                    call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                    lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_256 + (0 / stor8[arg1].field_768) / 9
                                    seedTeamSaleCount[ext_call.return_data[0]]++
                        else:
                            require ext_code.size(nonFungibleContractAddress)
                            call nonFungibleContractAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if this.address == address(stor8[arg1].field_0):
                                if 0 >= mem[1056]:
                                    lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_256 + (0 / stor8[arg1].field_768)
                                    seedSingleSaleCount++
                                else:
                                    require ext_code.size(nonFungibleContractAddress)
                                    call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                    lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_256 + (0 / stor8[arg1].field_768)
                                    seedTeamSaleCount[ext_call.return_data[0]]++
                else:
                    if not stor8[arg1].field_256 + (0 / stor8[arg1].field_768):
                        require 0 <= stor8[arg1].field_256 + (0 / stor8[arg1].field_768)
                        call address(stor8[arg1].field_0) with:
                           value stor8[arg1].field_256 + (0 / stor8[arg1].field_768) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require stor8[arg1].field_256 + (0 / stor8[arg1].field_768) <= msg.value
                        call msg.sender with:
                           value msg.value - stor8[arg1].field_256 - (0 / stor8[arg1].field_768) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 >= mem[1632]:
                            emit SaleWinner(arg1, stor8[arg1].field_256 + (0 / stor8[arg1].field_768), msg.sender);
                            if 0 < mem[1056]:
                                idx = 0
                                while idx < 9:
                                    _2308 = mem[(32 * idx) + 1024]
                                    mem[2848] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                    mem[2852] = this.address
                                    mem[2884] = msg.sender
                                    mem[2916] = _2308
                                    require ext_code.size(nonFungibleContractAddress)
                                    call nonFungibleContractAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _2308
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                                if this.address == address(stor8[arg1].field_0):
                                    if 0 >= mem[1056]:
                                        lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_256 + (0 / stor8[arg1].field_768) / 9
                                        seedSingleSaleCount++
                                    else:
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                        lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_256 + (0 / stor8[arg1].field_768) / 9
                                        seedTeamSaleCount[ext_call.return_data[0]]++
                            else:
                                require ext_code.size(nonFungibleContractAddress)
                                call nonFungibleContractAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if this.address == address(stor8[arg1].field_0):
                                    if 0 >= mem[1056]:
                                        lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_256 + (0 / stor8[arg1].field_768)
                                        seedSingleSaleCount++
                                    else:
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                        lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_256 + (0 / stor8[arg1].field_768)
                                        seedTeamSaleCount[ext_call.return_data[0]]++
                        else:
                            emit TeamSaleWinner(uint256[9] arg1, uint256 arg2, address arg3):
                                                stor8[arg1].field_1280,
                                                mem[1632 len 256],
                                                stor8[arg1].field_256 + (0 / stor8[arg1].field_768),
                                                msg.sender,
                            if 0 < mem[1056]:
                                idx = 0
                                while idx < 9:
                                    _3076 = mem[(32 * idx) + 1024]
                                    mem[2848] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                    mem[2852] = this.address
                                    mem[2884] = msg.sender
                                    mem[2916] = _3076
                                    require ext_code.size(nonFungibleContractAddress)
                                    call nonFungibleContractAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _3076
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                                if this.address == address(stor8[arg1].field_0):
                                    if 0 >= mem[1056]:
                                        lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_256 + (0 / stor8[arg1].field_768) / 9
                                        seedSingleSaleCount++
                                    else:
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                        lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_256 + (0 / stor8[arg1].field_768) / 9
                                        seedTeamSaleCount[ext_call.return_data[0]]++
                            else:
                                require ext_code.size(nonFungibleContractAddress)
                                call nonFungibleContractAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if this.address == address(stor8[arg1].field_0):
                                    if 0 >= mem[1056]:
                                        lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_256 + (0 / stor8[arg1].field_768)
                                        seedSingleSaleCount++
                                    else:
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                        lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_256 + (0 / stor8[arg1].field_768)
                                        seedTeamSaleCount[ext_call.return_data[0]]++
                    else:
                        require (stor8[arg1].field_256 * ownerCut) + (0 / stor8[arg1].field_768 * ownerCut) / stor8[arg1].field_256 + (0 / stor8[arg1].field_768) == ownerCut
                        require (stor8[arg1].field_256 * ownerCut) + (0 / stor8[arg1].field_768 * ownerCut) / 10000 <= stor8[arg1].field_256 + (0 / stor8[arg1].field_768)
                        call address(stor8[arg1].field_0) with:
                           value stor8[arg1].field_256 + (0 / stor8[arg1].field_768) - ((stor8[arg1].field_256 * ownerCut) + (0 / stor8[arg1].field_768 * ownerCut) / 10000) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require stor8[arg1].field_256 + (0 / stor8[arg1].field_768) <= msg.value
                        call msg.sender with:
                           value msg.value - stor8[arg1].field_256 - (0 / stor8[arg1].field_768) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 >= mem[1632]:
                            emit SaleWinner(arg1, stor8[arg1].field_256 + (0 / stor8[arg1].field_768), msg.sender);
                            if 0 < mem[1056]:
                                idx = 0
                                while idx < 9:
                                    _2307 = mem[(32 * idx) + 1024]
                                    mem[2848] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                    mem[2852] = this.address
                                    mem[2884] = msg.sender
                                    mem[2916] = _2307
                                    require ext_code.size(nonFungibleContractAddress)
                                    call nonFungibleContractAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _2307
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                                if this.address == address(stor8[arg1].field_0):
                                    if 0 >= mem[1056]:
                                        lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_256 + (0 / stor8[arg1].field_768) / 9
                                        seedSingleSaleCount++
                                    else:
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                        lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_256 + (0 / stor8[arg1].field_768) / 9
                                        seedTeamSaleCount[ext_call.return_data[0]]++
                            else:
                                require ext_code.size(nonFungibleContractAddress)
                                call nonFungibleContractAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if this.address == address(stor8[arg1].field_0):
                                    if 0 >= mem[1056]:
                                        lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_256 + (0 / stor8[arg1].field_768)
                                        seedSingleSaleCount++
                                    else:
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                        lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_256 + (0 / stor8[arg1].field_768)
                                        seedTeamSaleCount[ext_call.return_data[0]]++
                        else:
                            emit TeamSaleWinner(uint256[9] arg1, uint256 arg2, address arg3):
                                                stor8[arg1].field_1280,
                                                mem[1632 len 256],
                                                stor8[arg1].field_256 + (0 / stor8[arg1].field_768),
                                                msg.sender,
                            if 0 < mem[1056]:
                                idx = 0
                                while idx < 9:
                                    _3075 = mem[(32 * idx) + 1024]
                                    mem[2848] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                    mem[2852] = this.address
                                    mem[2884] = msg.sender
                                    mem[2916] = _3075
                                    require ext_code.size(nonFungibleContractAddress)
                                    call nonFungibleContractAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _3075
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                                if this.address == address(stor8[arg1].field_0):
                                    if 0 >= mem[1056]:
                                        lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_256 + (0 / stor8[arg1].field_768) / 9
                                        seedSingleSaleCount++
                                    else:
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                        lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_256 + (0 / stor8[arg1].field_768) / 9
                                        seedTeamSaleCount[ext_call.return_data[0]]++
                            else:
                                require ext_code.size(nonFungibleContractAddress)
                                call nonFungibleContractAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if this.address == address(stor8[arg1].field_0):
                                    if 0 >= mem[1056]:
                                        lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_256 + (0 / stor8[arg1].field_768)
                                        seedSingleSaleCount++
                                    else:
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                        lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_256 + (0 / stor8[arg1].field_768)
                                        seedTeamSaleCount[ext_call.return_data[0]]++
    else:
        require BID_DELAY_TIME + stor8[arg1].field_1024 >= stor8[arg1].field_1024
        require BID_DELAY_TIME + stor8[arg1].field_1024 <= block.timestamp
        if block.timestamp - BID_DELAY_TIME - stor8[arg1].field_1024 >= stor8[arg1].field_768:
            require msg.value >= stor8[arg1].field_512
            if mem[1632] > 0:
                idx = 0
                while idx < 9:
                    mem[0] = mem[(32 * idx) + 1600]
                    mem[32] = 8
                    address(stor8[mem[(32 * idx) + 1600]].field_0) = 0
                    stor8[mem[(32 * idx) + 1600]].field_256 = 0
                    stor8[mem[(32 * idx) + 1600]].field_512 = 0
                    stor8[mem[(32 * idx) + 1600]].field_768 = 0
                    stor8[mem[(32 * idx) + 1600]].field_1024 = 0
                    s = sha3(mem[(32 * idx) + 1600], 8) + 5
                    while sha3(mem[(32 * idx) + 1600], 8) + 14 > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                    idx = idx + 1
                    continue 
                if stor8[arg1].field_512 <= 0:
                    call msg.sender with:
                       value msg.value - stor8[arg1].field_512 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 >= mem[1632]:
                        emit SaleWinner(arg1, stor8[arg1].field_512, msg.sender);
                        if 0 < mem[1056]:
                            idx = 0
                            while idx < 9:
                                _2327 = mem[(32 * idx) + 1024]
                                mem[2848] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                mem[2852] = this.address
                                mem[2884] = msg.sender
                                mem[2916] = _2327
                                require ext_code.size(nonFungibleContractAddress)
                                call nonFungibleContractAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _2327
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            if this.address == address(stor8[arg1].field_0):
                                if 0 >= mem[1056]:
                                    lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_512 / 9
                                    seedSingleSaleCount++
                                else:
                                    require ext_code.size(nonFungibleContractAddress)
                                    call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                    lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_512 / 9
                                    seedTeamSaleCount[ext_call.return_data[0]]++
                        else:
                            require ext_code.size(nonFungibleContractAddress)
                            call nonFungibleContractAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if this.address == address(stor8[arg1].field_0):
                                if 0 >= mem[1056]:
                                    lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_512
                                    seedSingleSaleCount++
                                else:
                                    require ext_code.size(nonFungibleContractAddress)
                                    call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                    lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_512
                                    seedTeamSaleCount[ext_call.return_data[0]]++
                    else:
                        emit TeamSaleWinner(uint256[9] arg1, uint256 arg2, address arg3):
                                            stor8[arg1].field_1280,
                                            mem[1632 len 256],
                                            stor8[arg1].field_512,
                                            msg.sender,
                        if 0 < mem[1056]:
                            idx = 0
                            while idx < 9:
                                _3095 = mem[(32 * idx) + 1024]
                                mem[2848] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                mem[2852] = this.address
                                mem[2884] = msg.sender
                                mem[2916] = _3095
                                require ext_code.size(nonFungibleContractAddress)
                                call nonFungibleContractAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _3095
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            if this.address == address(stor8[arg1].field_0):
                                if 0 >= mem[1056]:
                                    lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_512 / 9
                                    seedSingleSaleCount++
                                else:
                                    require ext_code.size(nonFungibleContractAddress)
                                    call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                    lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_512 / 9
                                    seedTeamSaleCount[ext_call.return_data[0]]++
                        else:
                            require ext_code.size(nonFungibleContractAddress)
                            call nonFungibleContractAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if this.address == address(stor8[arg1].field_0):
                                if 0 >= mem[1056]:
                                    lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_512
                                    seedSingleSaleCount++
                                else:
                                    require ext_code.size(nonFungibleContractAddress)
                                    call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                    lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_512
                                    seedTeamSaleCount[ext_call.return_data[0]]++
                else:
                    if not stor8[arg1].field_512:
                        require 0 <= stor8[arg1].field_512
                        call address(stor8[arg1].field_0) with:
                           value stor8[arg1].field_512 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require stor8[arg1].field_512 <= msg.value
                        call msg.sender with:
                           value msg.value - stor8[arg1].field_512 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 >= mem[1632]:
                            emit SaleWinner(arg1, stor8[arg1].field_512, msg.sender);
                            if 0 < mem[1056]:
                                idx = 0
                                while idx < 9:
                                    _2329 = mem[(32 * idx) + 1024]
                                    mem[2848] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                    mem[2852] = this.address
                                    mem[2884] = msg.sender
                                    mem[2916] = _2329
                                    require ext_code.size(nonFungibleContractAddress)
                                    call nonFungibleContractAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _2329
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                                if this.address == address(stor8[arg1].field_0):
                                    if 0 >= mem[1056]:
                                        lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_512 / 9
                                        seedSingleSaleCount++
                                    else:
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                        lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_512 / 9
                                        seedTeamSaleCount[ext_call.return_data[0]]++
                            else:
                                require ext_code.size(nonFungibleContractAddress)
                                call nonFungibleContractAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if this.address == address(stor8[arg1].field_0):
                                    if 0 >= mem[1056]:
                                        lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_512
                                        seedSingleSaleCount++
                                    else:
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                        lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_512
                                        seedTeamSaleCount[ext_call.return_data[0]]++
                        else:
                            emit TeamSaleWinner(uint256[9] arg1, uint256 arg2, address arg3):
                                                stor8[arg1].field_1280,
                                                mem[1632 len 256],
                                                stor8[arg1].field_512,
                                                msg.sender,
                            if 0 < mem[1056]:
                                idx = 0
                                while idx < 9:
                                    _3097 = mem[(32 * idx) + 1024]
                                    mem[2848] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                    mem[2852] = this.address
                                    mem[2884] = msg.sender
                                    mem[2916] = _3097
                                    require ext_code.size(nonFungibleContractAddress)
                                    call nonFungibleContractAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _3097
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                                if this.address == address(stor8[arg1].field_0):
                                    if 0 >= mem[1056]:
                                        lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_512 / 9
                                        seedSingleSaleCount++
                                    else:
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                        lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_512 / 9
                                        seedTeamSaleCount[ext_call.return_data[0]]++
                            else:
                                require ext_code.size(nonFungibleContractAddress)
                                call nonFungibleContractAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if this.address == address(stor8[arg1].field_0):
                                    if 0 >= mem[1056]:
                                        lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_512
                                        seedSingleSaleCount++
                                    else:
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                        lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_512
                                        seedTeamSaleCount[ext_call.return_data[0]]++
                    else:
                        require ownerCut * stor8[arg1].field_512 / stor8[arg1].field_512 == ownerCut
                        require ownerCut * stor8[arg1].field_512 / 10000 <= stor8[arg1].field_512
                        call address(stor8[arg1].field_0) with:
                           value stor8[arg1].field_512 - (ownerCut * stor8[arg1].field_512 / 10000) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require stor8[arg1].field_512 <= msg.value
                        call msg.sender with:
                           value msg.value - stor8[arg1].field_512 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 >= mem[1632]:
                            emit SaleWinner(arg1, stor8[arg1].field_512, msg.sender);
                            if 0 < mem[1056]:
                                idx = 0
                                while idx < 9:
                                    _2328 = mem[(32 * idx) + 1024]
                                    mem[2848] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                    mem[2852] = this.address
                                    mem[2884] = msg.sender
                                    mem[2916] = _2328
                                    require ext_code.size(nonFungibleContractAddress)
                                    call nonFungibleContractAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _2328
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                                if this.address == address(stor8[arg1].field_0):
                                    if 0 >= mem[1056]:
                                        lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_512 / 9
                                        seedSingleSaleCount++
                                    else:
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                        lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_512 / 9
                                        seedTeamSaleCount[ext_call.return_data[0]]++
                            else:
                                require ext_code.size(nonFungibleContractAddress)
                                call nonFungibleContractAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if this.address == address(stor8[arg1].field_0):
                                    if 0 >= mem[1056]:
                                        lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_512
                                        seedSingleSaleCount++
                                    else:
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                        lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_512
                                        seedTeamSaleCount[ext_call.return_data[0]]++
                        else:
                            emit TeamSaleWinner(uint256[9] arg1, uint256 arg2, address arg3):
                                                stor8[arg1].field_1280,
                                                mem[1632 len 256],
                                                stor8[arg1].field_512,
                                                msg.sender,
                            if 0 < mem[1056]:
                                idx = 0
                                while idx < 9:
                                    _3096 = mem[(32 * idx) + 1024]
                                    mem[2848] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                    mem[2852] = this.address
                                    mem[2884] = msg.sender
                                    mem[2916] = _3096
                                    require ext_code.size(nonFungibleContractAddress)
                                    call nonFungibleContractAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _3096
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                                if this.address == address(stor8[arg1].field_0):
                                    if 0 >= mem[1056]:
                                        lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_512 / 9
                                        seedSingleSaleCount++
                                    else:
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                        lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_512 / 9
                                        seedTeamSaleCount[ext_call.return_data[0]]++
                            else:
                                require ext_code.size(nonFungibleContractAddress)
                                call nonFungibleContractAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if this.address == address(stor8[arg1].field_0):
                                    if 0 >= mem[1056]:
                                        lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_512
                                        seedSingleSaleCount++
                                    else:
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                        lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_512
                                        seedTeamSaleCount[ext_call.return_data[0]]++
            else:
                address(stor8[arg1].field_0) = 0
                stor8[arg1].field_256 = 0
                stor8[arg1].field_512 = 0
                stor8[arg1].field_768 = 0
                stor8[arg1].field_1024 = 0
                idx = 5
                while 14 > idx:
                    stor8[arg1][idx].field_0 = 0
                    idx = idx + 1
                    continue 
                if stor8[arg1].field_512 <= 0:
                    call msg.sender with:
                       value msg.value - stor8[arg1].field_512 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 >= mem[1632]:
                        emit SaleWinner(arg1, stor8[arg1].field_512, msg.sender);
                        if 0 < mem[1056]:
                            idx = 0
                            while idx < 9:
                                _2324 = mem[(32 * idx) + 1024]
                                mem[2848] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                mem[2852] = this.address
                                mem[2884] = msg.sender
                                mem[2916] = _2324
                                require ext_code.size(nonFungibleContractAddress)
                                call nonFungibleContractAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _2324
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            if this.address == address(stor8[arg1].field_0):
                                if 0 >= mem[1056]:
                                    lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_512 / 9
                                    seedSingleSaleCount++
                                else:
                                    require ext_code.size(nonFungibleContractAddress)
                                    call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                    lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_512 / 9
                                    seedTeamSaleCount[ext_call.return_data[0]]++
                        else:
                            require ext_code.size(nonFungibleContractAddress)
                            call nonFungibleContractAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if this.address == address(stor8[arg1].field_0):
                                if 0 >= mem[1056]:
                                    lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_512
                                    seedSingleSaleCount++
                                else:
                                    require ext_code.size(nonFungibleContractAddress)
                                    call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                    lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_512
                                    seedTeamSaleCount[ext_call.return_data[0]]++
                    else:
                        emit TeamSaleWinner(uint256[9] arg1, uint256 arg2, address arg3):
                                            stor8[arg1].field_1280,
                                            mem[1632 len 256],
                                            stor8[arg1].field_512,
                                            msg.sender,
                        if 0 < mem[1056]:
                            idx = 0
                            while idx < 9:
                                _3092 = mem[(32 * idx) + 1024]
                                mem[2848] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                mem[2852] = this.address
                                mem[2884] = msg.sender
                                mem[2916] = _3092
                                require ext_code.size(nonFungibleContractAddress)
                                call nonFungibleContractAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _3092
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            if this.address == address(stor8[arg1].field_0):
                                if 0 >= mem[1056]:
                                    lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_512 / 9
                                    seedSingleSaleCount++
                                else:
                                    require ext_code.size(nonFungibleContractAddress)
                                    call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                    lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_512 / 9
                                    seedTeamSaleCount[ext_call.return_data[0]]++
                        else:
                            require ext_code.size(nonFungibleContractAddress)
                            call nonFungibleContractAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if this.address == address(stor8[arg1].field_0):
                                if 0 >= mem[1056]:
                                    lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_512
                                    seedSingleSaleCount++
                                else:
                                    require ext_code.size(nonFungibleContractAddress)
                                    call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                    lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_512
                                    seedTeamSaleCount[ext_call.return_data[0]]++
                else:
                    if not stor8[arg1].field_512:
                        require 0 <= stor8[arg1].field_512
                        call address(stor8[arg1].field_0) with:
                           value stor8[arg1].field_512 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require stor8[arg1].field_512 <= msg.value
                        call msg.sender with:
                           value msg.value - stor8[arg1].field_512 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 >= mem[1632]:
                            emit SaleWinner(arg1, stor8[arg1].field_512, msg.sender);
                            if 0 < mem[1056]:
                                idx = 0
                                while idx < 9:
                                    _2326 = mem[(32 * idx) + 1024]
                                    mem[2848] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                    mem[2852] = this.address
                                    mem[2884] = msg.sender
                                    mem[2916] = _2326
                                    require ext_code.size(nonFungibleContractAddress)
                                    call nonFungibleContractAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _2326
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                                if this.address == address(stor8[arg1].field_0):
                                    if 0 >= mem[1056]:
                                        lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_512 / 9
                                        seedSingleSaleCount++
                                    else:
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                        lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_512 / 9
                                        seedTeamSaleCount[ext_call.return_data[0]]++
                            else:
                                require ext_code.size(nonFungibleContractAddress)
                                call nonFungibleContractAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if this.address == address(stor8[arg1].field_0):
                                    if 0 >= mem[1056]:
                                        lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_512
                                        seedSingleSaleCount++
                                    else:
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                        lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_512
                                        seedTeamSaleCount[ext_call.return_data[0]]++
                        else:
                            emit TeamSaleWinner(uint256[9] arg1, uint256 arg2, address arg3):
                                                stor8[arg1].field_1280,
                                                mem[1632 len 256],
                                                stor8[arg1].field_512,
                                                msg.sender,
                            if 0 < mem[1056]:
                                idx = 0
                                while idx < 9:
                                    _3094 = mem[(32 * idx) + 1024]
                                    mem[2848] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                    mem[2852] = this.address
                                    mem[2884] = msg.sender
                                    mem[2916] = _3094
                                    require ext_code.size(nonFungibleContractAddress)
                                    call nonFungibleContractAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _3094
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                                if this.address == address(stor8[arg1].field_0):
                                    if 0 >= mem[1056]:
                                        lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_512 / 9
                                        seedSingleSaleCount++
                                    else:
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                        lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_512 / 9
                                        seedTeamSaleCount[ext_call.return_data[0]]++
                            else:
                                require ext_code.size(nonFungibleContractAddress)
                                call nonFungibleContractAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if this.address == address(stor8[arg1].field_0):
                                    if 0 >= mem[1056]:
                                        lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_512
                                        seedSingleSaleCount++
                                    else:
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                        lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_512
                                        seedTeamSaleCount[ext_call.return_data[0]]++
                    else:
                        require ownerCut * stor8[arg1].field_512 / stor8[arg1].field_512 == ownerCut
                        require ownerCut * stor8[arg1].field_512 / 10000 <= stor8[arg1].field_512
                        call address(stor8[arg1].field_0) with:
                           value stor8[arg1].field_512 - (ownerCut * stor8[arg1].field_512 / 10000) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require stor8[arg1].field_512 <= msg.value
                        call msg.sender with:
                           value msg.value - stor8[arg1].field_512 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 >= mem[1632]:
                            emit SaleWinner(arg1, stor8[arg1].field_512, msg.sender);
                            if 0 < mem[1056]:
                                idx = 0
                                while idx < 9:
                                    _2325 = mem[(32 * idx) + 1024]
                                    mem[2848] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                    mem[2852] = this.address
                                    mem[2884] = msg.sender
                                    mem[2916] = _2325
                                    require ext_code.size(nonFungibleContractAddress)
                                    call nonFungibleContractAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _2325
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                                if this.address == address(stor8[arg1].field_0):
                                    if 0 >= mem[1056]:
                                        lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_512 / 9
                                        seedSingleSaleCount++
                                    else:
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                        lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_512 / 9
                                        seedTeamSaleCount[ext_call.return_data[0]]++
                            else:
                                require ext_code.size(nonFungibleContractAddress)
                                call nonFungibleContractAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if this.address == address(stor8[arg1].field_0):
                                    if 0 >= mem[1056]:
                                        lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_512
                                        seedSingleSaleCount++
                                    else:
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                        lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_512
                                        seedTeamSaleCount[ext_call.return_data[0]]++
                        else:
                            emit TeamSaleWinner(uint256[9] arg1, uint256 arg2, address arg3):
                                                stor8[arg1].field_1280,
                                                mem[1632 len 256],
                                                stor8[arg1].field_512,
                                                msg.sender,
                            if 0 < mem[1056]:
                                idx = 0
                                while idx < 9:
                                    _3093 = mem[(32 * idx) + 1024]
                                    mem[2848] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                    mem[2852] = this.address
                                    mem[2884] = msg.sender
                                    mem[2916] = _3093
                                    require ext_code.size(nonFungibleContractAddress)
                                    call nonFungibleContractAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _3093
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                                if this.address == address(stor8[arg1].field_0):
                                    if 0 >= mem[1056]:
                                        lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_512 / 9
                                        seedSingleSaleCount++
                                    else:
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                        lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_512 / 9
                                        seedTeamSaleCount[ext_call.return_data[0]]++
                            else:
                                require ext_code.size(nonFungibleContractAddress)
                                call nonFungibleContractAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if this.address == address(stor8[arg1].field_0):
                                    if 0 >= mem[1056]:
                                        lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_512
                                        seedSingleSaleCount++
                                    else:
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                        lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_512
                                        seedTeamSaleCount[ext_call.return_data[0]]++
        else:
            require stor8[arg1].field_768
            require msg.value >= stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768)
            if mem[1632] > 0:
                idx = 0
                while idx < 9:
                    mem[0] = mem[(32 * idx) + 1600]
                    mem[32] = 8
                    address(stor8[mem[(32 * idx) + 1600]].field_0) = 0
                    stor8[mem[(32 * idx) + 1600]].field_256 = 0
                    stor8[mem[(32 * idx) + 1600]].field_512 = 0
                    stor8[mem[(32 * idx) + 1600]].field_768 = 0
                    stor8[mem[(32 * idx) + 1600]].field_1024 = 0
                    s = sha3(mem[(32 * idx) + 1600], 8) + 5
                    while sha3(mem[(32 * idx) + 1600], 8) + 14 > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                    idx = idx + 1
                    continue 
                if stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768) <= 0:
                    call msg.sender with:
                       value msg.value - stor8[arg1].field_256 - ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 >= mem[1632]:
                        emit SaleWinner(arg1, stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768), msg.sender);
                        if 0 < mem[1056]:
                            idx = 0
                            while idx < 9:
                                _2321 = mem[(32 * idx) + 1024]
                                mem[2848] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                mem[2852] = this.address
                                mem[2884] = msg.sender
                                mem[2916] = _2321
                                require ext_code.size(nonFungibleContractAddress)
                                call nonFungibleContractAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _2321
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            if this.address == address(stor8[arg1].field_0):
                                if 0 >= mem[1056]:
                                    lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768) / 9
                                    seedSingleSaleCount++
                                else:
                                    require ext_code.size(nonFungibleContractAddress)
                                    call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                    lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768) / 9
                                    seedTeamSaleCount[ext_call.return_data[0]]++
                        else:
                            require ext_code.size(nonFungibleContractAddress)
                            call nonFungibleContractAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if this.address == address(stor8[arg1].field_0):
                                if 0 >= mem[1056]:
                                    lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768)
                                    seedSingleSaleCount++
                                else:
                                    require ext_code.size(nonFungibleContractAddress)
                                    call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                    lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768)
                                    seedTeamSaleCount[ext_call.return_data[0]]++
                    else:
                        emit TeamSaleWinner(uint256[9] arg1, uint256 arg2, address arg3):
                                            stor8[arg1].field_1280,
                                            mem[1632 len 256],
                                            stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768),
                                            msg.sender,
                        if 0 < mem[1056]:
                            idx = 0
                            while idx < 9:
                                _3089 = mem[(32 * idx) + 1024]
                                mem[2848] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                mem[2852] = this.address
                                mem[2884] = msg.sender
                                mem[2916] = _3089
                                require ext_code.size(nonFungibleContractAddress)
                                call nonFungibleContractAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _3089
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            if this.address == address(stor8[arg1].field_0):
                                if 0 >= mem[1056]:
                                    lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768) / 9
                                    seedSingleSaleCount++
                                else:
                                    require ext_code.size(nonFungibleContractAddress)
                                    call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                    lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768) / 9
                                    seedTeamSaleCount[ext_call.return_data[0]]++
                        else:
                            require ext_code.size(nonFungibleContractAddress)
                            call nonFungibleContractAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if this.address == address(stor8[arg1].field_0):
                                if 0 >= mem[1056]:
                                    lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768)
                                    seedSingleSaleCount++
                                else:
                                    require ext_code.size(nonFungibleContractAddress)
                                    call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                    lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768)
                                    seedTeamSaleCount[ext_call.return_data[0]]++
                else:
                    if not stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768):
                        require 0 <= stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768)
                        call address(stor8[arg1].field_0) with:
                           value stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768) <= msg.value
                        call msg.sender with:
                           value msg.value - stor8[arg1].field_256 - ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 >= mem[1632]:
                            emit SaleWinner(arg1, stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768), msg.sender);
                            if 0 < mem[1056]:
                                idx = 0
                                while idx < 9:
                                    _2323 = mem[(32 * idx) + 1024]
                                    mem[2848] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                    mem[2852] = this.address
                                    mem[2884] = msg.sender
                                    mem[2916] = _2323
                                    require ext_code.size(nonFungibleContractAddress)
                                    call nonFungibleContractAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _2323
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                                if this.address == address(stor8[arg1].field_0):
                                    if 0 >= mem[1056]:
                                        lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768) / 9
                                        seedSingleSaleCount++
                                    else:
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                        lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768) / 9
                                        seedTeamSaleCount[ext_call.return_data[0]]++
                            else:
                                require ext_code.size(nonFungibleContractAddress)
                                call nonFungibleContractAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if this.address == address(stor8[arg1].field_0):
                                    if 0 >= mem[1056]:
                                        lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768)
                                        seedSingleSaleCount++
                                    else:
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                        lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768)
                                        seedTeamSaleCount[ext_call.return_data[0]]++
                        else:
                            emit TeamSaleWinner(uint256[9] arg1, uint256 arg2, address arg3):
                                                stor8[arg1].field_1280,
                                                mem[1632 len 256],
                                                stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768),
                                                msg.sender,
                            if 0 < mem[1056]:
                                idx = 0
                                while idx < 9:
                                    _3091 = mem[(32 * idx) + 1024]
                                    mem[2848] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                    mem[2852] = this.address
                                    mem[2884] = msg.sender
                                    mem[2916] = _3091
                                    require ext_code.size(nonFungibleContractAddress)
                                    call nonFungibleContractAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _3091
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                                if this.address == address(stor8[arg1].field_0):
                                    if 0 >= mem[1056]:
                                        lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768) / 9
                                        seedSingleSaleCount++
                                    else:
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                        lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768) / 9
                                        seedTeamSaleCount[ext_call.return_data[0]]++
                            else:
                                require ext_code.size(nonFungibleContractAddress)
                                call nonFungibleContractAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if this.address == address(stor8[arg1].field_0):
                                    if 0 >= mem[1056]:
                                        lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768)
                                        seedSingleSaleCount++
                                    else:
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                        lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768)
                                        seedTeamSaleCount[ext_call.return_data[0]]++
                    else:
                        require (stor8[arg1].field_256 * ownerCut) + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768 * ownerCut) / stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768) == ownerCut
                        require (stor8[arg1].field_256 * ownerCut) + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768 * ownerCut) / 10000 <= stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768)
                        call address(stor8[arg1].field_0) with:
                           value stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768) - ((stor8[arg1].field_256 * ownerCut) + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768 * ownerCut) / 10000) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768) <= msg.value
                        call msg.sender with:
                           value msg.value - stor8[arg1].field_256 - ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 >= mem[1632]:
                            emit SaleWinner(arg1, stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768), msg.sender);
                            if 0 < mem[1056]:
                                idx = 0
                                while idx < 9:
                                    _2322 = mem[(32 * idx) + 1024]
                                    mem[2848] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                    mem[2852] = this.address
                                    mem[2884] = msg.sender
                                    mem[2916] = _2322
                                    require ext_code.size(nonFungibleContractAddress)
                                    call nonFungibleContractAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _2322
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                                if this.address == address(stor8[arg1].field_0):
                                    if 0 >= mem[1056]:
                                        lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768) / 9
                                        seedSingleSaleCount++
                                    else:
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                        lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768) / 9
                                        seedTeamSaleCount[ext_call.return_data[0]]++
                            else:
                                require ext_code.size(nonFungibleContractAddress)
                                call nonFungibleContractAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if this.address == address(stor8[arg1].field_0):
                                    if 0 >= mem[1056]:
                                        lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768)
                                        seedSingleSaleCount++
                                    else:
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                        lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768)
                                        seedTeamSaleCount[ext_call.return_data[0]]++
                        else:
                            emit TeamSaleWinner(uint256[9] arg1, uint256 arg2, address arg3):
                                                stor8[arg1].field_1280,
                                                mem[1632 len 256],
                                                stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768),
                                                msg.sender,
                            if 0 < mem[1056]:
                                idx = 0
                                while idx < 9:
                                    _3090 = mem[(32 * idx) + 1024]
                                    mem[2848] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                    mem[2852] = this.address
                                    mem[2884] = msg.sender
                                    mem[2916] = _3090
                                    require ext_code.size(nonFungibleContractAddress)
                                    call nonFungibleContractAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _3090
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                                if this.address == address(stor8[arg1].field_0):
                                    if 0 >= mem[1056]:
                                        lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768) / 9
                                        seedSingleSaleCount++
                                    else:
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                        lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768) / 9
                                        seedTeamSaleCount[ext_call.return_data[0]]++
                            else:
                                require ext_code.size(nonFungibleContractAddress)
                                call nonFungibleContractAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if this.address == address(stor8[arg1].field_0):
                                    if 0 >= mem[1056]:
                                        lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768)
                                        seedSingleSaleCount++
                                    else:
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                        lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768)
                                        seedTeamSaleCount[ext_call.return_data[0]]++
            else:
                address(stor8[arg1].field_0) = 0
                stor8[arg1].field_256 = 0
                stor8[arg1].field_512 = 0
                stor8[arg1].field_768 = 0
                stor8[arg1].field_1024 = 0
                idx = 5
                while 14 > idx:
                    stor8[arg1][idx].field_0 = 0
                    idx = idx + 1
                    continue 
                if stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768) <= 0:
                    call msg.sender with:
                       value msg.value - stor8[arg1].field_256 - ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 >= mem[1632]:
                        emit SaleWinner(arg1, stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768), msg.sender);
                        if 0 < mem[1056]:
                            idx = 0
                            while idx < 9:
                                _2318 = mem[(32 * idx) + 1024]
                                mem[2848] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                mem[2852] = this.address
                                mem[2884] = msg.sender
                                mem[2916] = _2318
                                require ext_code.size(nonFungibleContractAddress)
                                call nonFungibleContractAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _2318
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            if this.address == address(stor8[arg1].field_0):
                                if 0 >= mem[1056]:
                                    lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768) / 9
                                    seedSingleSaleCount++
                                else:
                                    require ext_code.size(nonFungibleContractAddress)
                                    call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                    lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768) / 9
                                    seedTeamSaleCount[ext_call.return_data[0]]++
                        else:
                            require ext_code.size(nonFungibleContractAddress)
                            call nonFungibleContractAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if this.address == address(stor8[arg1].field_0):
                                if 0 >= mem[1056]:
                                    lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768)
                                    seedSingleSaleCount++
                                else:
                                    require ext_code.size(nonFungibleContractAddress)
                                    call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                    lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768)
                                    seedTeamSaleCount[ext_call.return_data[0]]++
                    else:
                        emit TeamSaleWinner(uint256[9] arg1, uint256 arg2, address arg3):
                                            stor8[arg1].field_1280,
                                            mem[1632 len 256],
                                            stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768),
                                            msg.sender,
                        if 0 < mem[1056]:
                            idx = 0
                            while idx < 9:
                                _3086 = mem[(32 * idx) + 1024]
                                mem[2848] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                mem[2852] = this.address
                                mem[2884] = msg.sender
                                mem[2916] = _3086
                                require ext_code.size(nonFungibleContractAddress)
                                call nonFungibleContractAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _3086
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            if this.address == address(stor8[arg1].field_0):
                                if 0 >= mem[1056]:
                                    lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768) / 9
                                    seedSingleSaleCount++
                                else:
                                    require ext_code.size(nonFungibleContractAddress)
                                    call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                    lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768) / 9
                                    seedTeamSaleCount[ext_call.return_data[0]]++
                        else:
                            require ext_code.size(nonFungibleContractAddress)
                            call nonFungibleContractAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if this.address == address(stor8[arg1].field_0):
                                if 0 >= mem[1056]:
                                    lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768)
                                    seedSingleSaleCount++
                                else:
                                    require ext_code.size(nonFungibleContractAddress)
                                    call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                    lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768)
                                    seedTeamSaleCount[ext_call.return_data[0]]++
                else:
                    if not stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768):
                        require 0 <= stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768)
                        call address(stor8[arg1].field_0) with:
                           value stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768) <= msg.value
                        call msg.sender with:
                           value msg.value - stor8[arg1].field_256 - ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 >= mem[1632]:
                            emit SaleWinner(arg1, stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768), msg.sender);
                            if 0 < mem[1056]:
                                idx = 0
                                while idx < 9:
                                    _2320 = mem[(32 * idx) + 1024]
                                    mem[2848] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                    mem[2852] = this.address
                                    mem[2884] = msg.sender
                                    mem[2916] = _2320
                                    require ext_code.size(nonFungibleContractAddress)
                                    call nonFungibleContractAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _2320
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                                if this.address == address(stor8[arg1].field_0):
                                    if 0 >= mem[1056]:
                                        lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768) / 9
                                        seedSingleSaleCount++
                                    else:
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                        lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768) / 9
                                        seedTeamSaleCount[ext_call.return_data[0]]++
                            else:
                                require ext_code.size(nonFungibleContractAddress)
                                call nonFungibleContractAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if this.address == address(stor8[arg1].field_0):
                                    if 0 >= mem[1056]:
                                        lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768)
                                        seedSingleSaleCount++
                                    else:
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                        lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768)
                                        seedTeamSaleCount[ext_call.return_data[0]]++
                        else:
                            emit TeamSaleWinner(uint256[9] arg1, uint256 arg2, address arg3):
                                                stor8[arg1].field_1280,
                                                mem[1632 len 256],
                                                stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768),
                                                msg.sender,
                            if 0 < mem[1056]:
                                idx = 0
                                while idx < 9:
                                    _3088 = mem[(32 * idx) + 1024]
                                    mem[2848] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                    mem[2852] = this.address
                                    mem[2884] = msg.sender
                                    mem[2916] = _3088
                                    require ext_code.size(nonFungibleContractAddress)
                                    call nonFungibleContractAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _3088
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                                if this.address == address(stor8[arg1].field_0):
                                    if 0 >= mem[1056]:
                                        lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768) / 9
                                        seedSingleSaleCount++
                                    else:
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                        lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768) / 9
                                        seedTeamSaleCount[ext_call.return_data[0]]++
                            else:
                                require ext_code.size(nonFungibleContractAddress)
                                call nonFungibleContractAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if this.address == address(stor8[arg1].field_0):
                                    if 0 >= mem[1056]:
                                        lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768)
                                        seedSingleSaleCount++
                                    else:
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                        lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768)
                                        seedTeamSaleCount[ext_call.return_data[0]]++
                    else:
                        require (stor8[arg1].field_256 * ownerCut) + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768 * ownerCut) / stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768) == ownerCut
                        require (stor8[arg1].field_256 * ownerCut) + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768 * ownerCut) / 10000 <= stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768)
                        call address(stor8[arg1].field_0) with:
                           value stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768) - ((stor8[arg1].field_256 * ownerCut) + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768 * ownerCut) / 10000) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768) <= msg.value
                        call msg.sender with:
                           value msg.value - stor8[arg1].field_256 - ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 >= mem[1632]:
                            emit SaleWinner(arg1, stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768), msg.sender);
                            if 0 < mem[1056]:
                                idx = 0
                                while idx < 9:
                                    _2319 = mem[(32 * idx) + 1024]
                                    mem[2848] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                    mem[2852] = this.address
                                    mem[2884] = msg.sender
                                    mem[2916] = _2319
                                    require ext_code.size(nonFungibleContractAddress)
                                    call nonFungibleContractAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _2319
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                                if this.address == address(stor8[arg1].field_0):
                                    if 0 >= mem[1056]:
                                        lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768) / 9
                                        seedSingleSaleCount++
                                    else:
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                        lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768) / 9
                                        seedTeamSaleCount[ext_call.return_data[0]]++
                            else:
                                require ext_code.size(nonFungibleContractAddress)
                                call nonFungibleContractAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if this.address == address(stor8[arg1].field_0):
                                    if 0 >= mem[1056]:
                                        lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768)
                                        seedSingleSaleCount++
                                    else:
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                        lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768)
                                        seedTeamSaleCount[ext_call.return_data[0]]++
                        else:
                            emit TeamSaleWinner(uint256[9] arg1, uint256 arg2, address arg3):
                                                stor8[arg1].field_1280,
                                                mem[1632 len 256],
                                                stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768),
                                                msg.sender,
                            if 0 < mem[1056]:
                                idx = 0
                                while idx < 9:
                                    _3087 = mem[(32 * idx) + 1024]
                                    mem[2848] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                    mem[2852] = this.address
                                    mem[2884] = msg.sender
                                    mem[2916] = _3087
                                    require ext_code.size(nonFungibleContractAddress)
                                    call nonFungibleContractAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _3087
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                                if this.address == address(stor8[arg1].field_0):
                                    if 0 >= mem[1056]:
                                        lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768) / 9
                                        seedSingleSaleCount++
                                    else:
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                        lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768) / 9
                                        seedTeamSaleCount[ext_call.return_data[0]]++
                            else:
                                require ext_code.size(nonFungibleContractAddress)
                                call nonFungibleContractAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if this.address == address(stor8[arg1].field_0):
                                    if 0 >= mem[1056]:
                                        lastSingleSalePrices[stor12 % 10] = stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768)
                                        seedSingleSaleCount++
                                    else:
                                        require ext_code.size(nonFungibleContractAddress)
                                        call nonFungibleContractAddress.getTeamId(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require seedTeamSaleCount[ext_call.return_data[0]] % 3 < 3
                                        lastTeamSalePrices[ext_call.return_data[0]][stor11[ext_call.return_data[0]] % 3] = stor8[arg1].field_256 + ((block.timestamp * stor8[arg1].field_512) - (BID_DELAY_TIME * stor8[arg1].field_512) - (stor8[arg1].field_1024 * stor8[arg1].field_512) - (block.timestamp * stor8[arg1].field_256) + (BID_DELAY_TIME * stor8[arg1].field_256) + (stor8[arg1].field_1024 * stor8[arg1].field_256) / stor8[arg1].field_768)
                                        seedTeamSaleCount[ext_call.return_data[0]]++
}



}
