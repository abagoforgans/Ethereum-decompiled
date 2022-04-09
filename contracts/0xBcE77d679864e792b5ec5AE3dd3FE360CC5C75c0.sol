contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 14745]




// =====================  Runtime code  =====================


#
#  - submitBuyOrder(bytes32 arg1, uint256 arg2, uint256 arg3)
#  - submitSellOrderWithPosition(bytes32 arg1, uint256 arg2, uint256 arg3, uint64 arg4, bool arg5)
#  - submitTotalBuyOrder(bytes32 arg1, uint256 arg2, uint256 arg3)
#  - submitBuyOrderWithPosition(bytes32 arg1, uint256 arg2, uint256 arg3, uint64 arg4, bool arg5)
#  - submitTotalSellOrder(bytes32 arg1, uint256 arg2, uint256 arg3)
#  - getActiveBuyDetails(bytes32 arg1)
#  - getActiveSellDetails(bytes32 arg1)
#  - submitSellOrder(bytes32 arg1, uint256 arg2, uint256 arg3)
#
address stor0;
array of struct stor1;
array of address sub_cec9dc29;
array of struct markets;
mapping of struct activeBuySize;
array of struct balances;
address feeCollectorAddress;

function getActiveBuySize(bytes32 arg1) {
    return uint64(activeBuySize[arg1].field_768)
}

function getActiveSellSize(bytes32 arg1) {
    return uint64(activeBuySize[arg1].field_1280)
}

function getMarketInfo(bytes32 arg1) {
    return activeBuySize[arg1].field_0, 
           address(activeBuySize[arg1].field_256),
           address(activeBuySize[arg1].field_512),
           uint16(activeBuySize[arg1].field_1792),
           uint16(activeBuySize[arg1].field_1808),
           uint16(activeBuySize[arg1].field_1792),
           uint16(activeBuySize[arg1].field_1840)
}

function markets(uint256 arg1) {
    require arg1 < markets.length
    return markets[arg1].field_0
}

function balances(address arg1, address arg2) {
    return balances[arg1][arg2].field_0
}

function feeCollector() {
    return feeCollectorAddress
}

function sub_cec9dc29(?) {
    return uint256(sub_cec9dc29[arg1])
}

function _fallback() payable {
    revert
}

function setFeeCollector(address arg1) {
    if not stor0:
        return 0
    require ext_code.size(stor0)
    call stor0.hasRole(address rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 710 wei
        args address(this.address), 0x636f6c6c6563746f720000000000000000000000000000000000000000000000, msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    feeCollectorAddress = arg1
    return 1
}

function sub_4e2388d2(?) {
    if not stor0:
        return 0
    require ext_code.size(stor0)
    call stor0.hasRole(address rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 710 wei
        args address(this.address), 0x61646d696e000000000000000000000000000000000000000000000000000000, msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    uint256(sub_cec9dc29[address(arg1)]) = arg2
    return 1
}

function setupAmbi2(address arg1) {
    if stor0:
        return 0
    require ext_code.size(arg1)
    call arg1.claimFor(address rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args address(this.address), msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        require ext_code.size(arg1)
        call arg1.isOwner(address rg1, address rg2) with:
             gas gas_remaining - 710 wei
            args address(this.address), msg.sender
        require ext_call.success
        if not ext_call.return_data[0]:
            return 0
    stor0 = arg1
    return 1
}

function getMarkets() {
    if markets.length:
        mem[160] = uint256(markets.field_0)
        idx = 160
        s = 0
        while (32 * markets.length) + 128 > idx:
            mem[idx + 32] = markets[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * markets.length) + 160] = 32
    mem[(32 * markets.length) + 192] = markets.length
    if Mask(251, 0, markets.length):
        mem[(32 * markets.length) + 224] = mem[160]
        mem[(32 * markets.length) + 256 len floor32((32 * markets.length) - 1)] = mem[192 len floor32((32 * markets.length) - 1)]
    return Array(len=markets.length, data=mem[(32 * markets.length) + 224 len 32 * markets.length])
}

function getBuyPosition(bytes32 arg1, uint256 arg2) {
    mem[0] = arg1
    mem[32] = 4
    s = 0
    idx = uint64(markets[sha3(mem[0 len 64])].field_64)
    while uint64(idx):
        mem[0] = uint64(idx)
        mem[32] = 1
        if arg2 > stor1[idx << 192].field_0:
            return uint64(idx)
        mem[100] = sha3(arg1, 4) + 3
        mem[132] = uint64(idx)
        require ext_code.size(0xd1382c9d4eb355187425bba4a58b0e204e9d1a2d)
        delegate 0xd1382c9d4eb355187425bba4a58b0e204e9d1a2d.0xb67700f4 with:
             gas gas_remaining - 710 wei
            args sha3(arg1, 4) + 3, uint64(idx)
        mem[96] = delegate.return_data[0]
        require delegate.return_code
        s = sha3(idx << 192, 1)
        idx = delegate.return_data[0]
        continue 
    return 0
}

function getSellPosition(bytes32 arg1, uint256 arg2) {
    mem[0] = arg1
    mem[32] = 4
    s = 0
    idx = uint64(balances[sha3(mem[0 len 64])].field_64)
    while uint64(idx):
        mem[0] = uint64(idx)
        mem[32] = 1
        if arg2 < stor1[idx << 192].field_0:
            return uint64(idx)
        mem[100] = sha3(arg1, 4) + 5
        mem[132] = uint64(idx)
        require ext_code.size(0xd1382c9d4eb355187425bba4a58b0e204e9d1a2d)
        delegate 0xd1382c9d4eb355187425bba4a58b0e204e9d1a2d.0xb67700f4 with:
             gas gas_remaining - 710 wei
            args sha3(arg1, 4) + 5, uint64(idx)
        mem[96] = delegate.return_data[0]
        require delegate.return_code
        s = sha3(idx << 192, 1)
        idx = delegate.return_data[0]
        continue 
    return 0
}

function getNextActiveBuyDetails(bytes32 arg1, uint64 arg2) {
    if not arg2:
        return uint64(activeBuySize[arg1].field_768), 
               address(stor1[uint64(stor4[arg1].field_768)].field_512),
               stor1[uint64(stor4[arg1].field_768)].field_0,
               stor1[uint64(stor4[arg1].field_768)].field_256
    require ext_code.size(0xd1382c9d4eb355187425bba4a58b0e204e9d1a2d)
    delegate 0xd1382c9d4eb355187425bba4a58b0e204e9d1a2d.0xb67700f4 with:
         gas gas_remaining - 710 wei
        args sha3(arg1, 4) + 3, arg2
    require delegate.return_code
    return delegate.return_data[0] << 192, 
           address(stor1[delegate.return_data[24 len 8]].field_512),
           stor1[delegate.return_data[24 len 8]].field_0,
           stor1[delegate.return_data[24 len 8]].field_256
}

function getNextActiveSellDetails(bytes32 arg1, uint64 arg2) {
    if not arg2:
        return uint64(activeBuySize[arg1].field_1280), 
               address(stor1[uint64(stor4[arg1].field_1280)].field_512),
               stor1[uint64(stor4[arg1].field_1280)].field_0,
               stor1[uint64(stor4[arg1].field_1280)].field_256
    require ext_code.size(0xd1382c9d4eb355187425bba4a58b0e204e9d1a2d)
    delegate 0xd1382c9d4eb355187425bba4a58b0e204e9d1a2d.0xb67700f4 with:
         gas gas_remaining - 710 wei
        args sha3(arg1, 4) + 5, arg2
    require delegate.return_code
    return delegate.return_data[0] << 192, 
           address(stor1[delegate.return_data[24 len 8]].field_512),
           stor1[delegate.return_data[24 len 8]].field_0,
           stor1[delegate.return_data[24 len 8]].field_256
}

function sub_10734c68(?) {
    if not stor0:
        return 0
    require ext_code.size(stor0)
    call stor0.hasRole(address rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 710 wei
        args address(this.address), 0x61646d696e000000000000000000000000000000000000000000000000000000, msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if arg2 >= 10000:
        emit Error(address('Invalid percent fees'));
        return 0
    if arg3 >= 10000:
        emit Error(address('Invalid percent fees'));
        return 0
    if arg4 >= 10000:
        emit Error(address('Invalid percent fees'));
        return 0
    if arg5 >= 10000:
        emit Error(address('Invalid percent fees'));
        return 0
    uint16(activeBuySize[arg1].field_1792) = arg2
    uint16(activeBuySize[arg1].field_1808) = arg3
    uint16(activeBuySize[arg1].field_1824) = arg4
    uint16(activeBuySize[arg1].field_1840) = arg5
    emit 0x5fdd9564: arg2 << 240, arg3 << 240, arg4 << 240, arg5, arg1
    return 1
}

function registerMarket(bytes32 arg1, address arg2, address arg3) {
    if not stor0:
        return 0
    require ext_code.size(stor0)
    call stor0.hasRole(address rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 710 wei
        args address(this.address), 0x61646d696e000000000000000000000000000000000000000000000000000000, msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if address(activeBuySize[arg1].field_256):
        emit Error(0x4d61726b657420616c7265616479207265676973746572656400000000000000);
        return 0
    if not arg2:
        emit Error(0x496e76616c696420617373657400000000000000000000000000000000000000);
        return 0
    if not arg3:
        emit Error(0x496e76616c696420617373657400000000000000000000000000000000000000);
        return 0
    markets.length++
    if not markets.length <= markets.length + 1:
        idx = markets.length + 1
        while markets.length > idx:
            markets[idx].field_0 = 0
            idx = idx + 1
            continue 
    markets[markets.length].field_0 = arg1
    activeBuySize[arg1].field_0 = arg1
    address(activeBuySize[arg1].field_256) = arg2
    address(activeBuySize[arg1].field_512) = arg3
    return 1
}

function getAllMarketsInfo() {
    mem[96] = 0
    mem[128] = 0
    mem[160] = markets.length
    mem[64] = (32 * markets.length) + 192
    if not markets.length:
        s = 0
        idx = 0
        while idx < markets.length:
            mem[0] = markets[idx].field_0
            mem[32] = 4
            _40 = mem[64]
            mem[64] = mem[64] + 224
            mem[_40] = activeBuySize[stor3[idx].field_0].field_0
            mem[_40 + 32] = address(activeBuySize[stor3[idx].field_0].field_256)
            mem[_40 + 64] = address(activeBuySize[stor3[idx].field_0].field_512)
            mem[_40 + 96] = uint16(activeBuySize[stor3[idx].field_0].field_1792)
            mem[_40 + 128] = uint16(activeBuySize[stor3[idx].field_0].field_1808)
            mem[_40 + 160] = uint16(activeBuySize[stor3[idx].field_0].field_1824)
            mem[_40 + 192] = uint16(activeBuySize[stor3[idx].field_0].field_1840)
            require idx < mem[160]
            mem[(32 * idx) + 192] = _40
            s = sha3(markets[idx].field_0, 4)
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[160]
        _38 = mem[160]
        s = mem[64] + 64
        idx = 0
        while idx < _38:
            _75 = mem[(32 * idx) + 192]
            mem[s] = mem[mem[(32 * idx) + 192]]
            u = _75
            v = u
            t = 224
            while t > 32:
                mem[v + 32] = mem[u + 32]
                u = u + 32
                v = v + 32
                t = t - 32
                continue 
            u = _75 + 416
            idx = idx + 1
            continue 
    else:
        mem[64] = (32 * markets.length) + 416
        mem[var16001] = 0
        if var16002 - 1:
            var16001 = var16001 + 32
            var16002 = var16002 - 1
            continue 
        mem[var19002] = (32 * markets.length) + 192
        if var19003 - 1:
            mem[64] = (32 * markets.length) + 640
            var16001 = (32 * markets.length) + 416
            var16002 = 7
            continue 
        s = 0
        idx = 0
        while idx < markets.length:
            mem[0] = markets[idx].field_0
            mem[32] = 4
            _136 = mem[64]
            mem[64] = mem[64] + 224
            mem[_136] = activeBuySize[stor3[idx].field_0].field_0
            mem[_136 + 32] = address(activeBuySize[stor3[idx].field_0].field_256)
            mem[_136 + 64] = address(activeBuySize[stor3[idx].field_0].field_512)
            mem[_136 + 96] = uint16(activeBuySize[stor3[idx].field_0].field_1792)
            mem[_136 + 128] = uint16(activeBuySize[stor3[idx].field_0].field_1808)
            mem[_136 + 160] = uint16(activeBuySize[stor3[idx].field_0].field_1824)
            mem[_136 + 192] = uint16(activeBuySize[stor3[idx].field_0].field_1840)
            require idx < mem[160]
            mem[(32 * idx) + 192] = _136
            s = sha3(markets[idx].field_0, 4)
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[160]
        _134 = mem[160]
        s = mem[64] + 64
        idx = 0
        while idx < _134:
            _149 = mem[(32 * idx) + 192]
            mem[s] = mem[mem[(32 * idx) + 192]]
            u = _149
            v = u
            t = 224
            while t > 32:
                mem[v + 32] = mem[u + 32]
                u = u + 32
                v = v + 32
                t = t - 32
                continue 
            u = _149 + 416
            idx = idx + 1
            continue 
    return memory
      from mem[64]
       len s - mem[64]
}

function cancelOrder(bytes32 arg1, uint64 arg2) {
    if address(stor1[arg2 << 192].field_512) != msg.sender:
        emit Error(0x496e76616c6964206f7264657200000000000000000000000000000000000000);
        return 0
    require uint8(stor1[arg2 << 192].field_672) <= 1
    if uint8(stor1[arg2 << 192].field_672):
        if uint64(activeBuySize[arg1][6][arg2 << 192].field_0):
            Mask(192, 0, activeBuySize[arg1][6][uint64(activeBuySize[arg1][6][arg2 << 192].field_0)].field_64) = uint64(activeBuySize[arg1][6][arg2 << 192].field_64)
            uint64(activeBuySize[arg1][6][arg2 << 192].field_0) = 0
        else:
            if not uint64(activeBuySize[arg1][6][arg2 << 192].field_64):
                if uint64(activeBuySize[arg1].field_1344) != arg2:
                    require uint64(activeBuySize[arg1].field_1408) == arg2
            if not uint64(activeBuySize[arg1][6][arg2 << 192].field_0):
                Mask(192, 0, activeBuySize[arg1].field_1344) = uint64(activeBuySize[arg1][6][arg2 << 192].field_64)
            else:
                Mask(192, 0, activeBuySize[arg1][6][uint64(activeBuySize[arg1][6][arg2 << 192].field_0)].field_64) = uint64(activeBuySize[arg1][6][arg2 << 192].field_64)
                uint64(activeBuySize[arg1][6][arg2 << 192].field_0) = 0
        if not uint64(activeBuySize[arg1][6][arg2 << 192].field_64):
            uint128(activeBuySize[arg1].field_1408) = uint64(activeBuySize[arg1][6][arg2 << 192].field_0)
        else:
            uint64(activeBuySize[arg1][6][uint64(activeBuySize[arg1][6][arg2 << 192].field_0)].field_0) = uint64(activeBuySize[arg1][6][arg2 << 192].field_0)
            uint64(activeBuySize[arg1][6][arg2 << 192].field_64) = 0
        uint128(activeBuySize[arg1][6][arg2 << 192].field_0) = 0
        uint64(activeBuySize[arg1].field_1280) = uint64(uint64(activeBuySize[arg1].field_1280) - 1)
        if stor1[arg2 << 192].field_256 <= uint256(sub_cec9dc29[address(stor4[arg1].field_512)]):
            if stor1[arg2 << 192].field_256:
                require ext_code.size(address(activeBuySize[arg1].field_512))
                call address(activeBuySize[arg1].field_512).0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args feeCollectorAddress, stor1[arg2 << 192].field_256
                require ext_call.success
                require ext_call.return_data[0]
            emit 0xafa6a9b1: arg2 << 192, stor1[arg2 << 192].field_256, activeBuySize[arg1].field_0
        else:
            if stor1[arg2 << 192].field_256 - uint256(sub_cec9dc29[address(stor4[arg1].field_512)]):
                require ext_code.size(address(activeBuySize[arg1].field_512))
                call address(activeBuySize[arg1].field_512).0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, stor1[arg2 << 192].field_256 - uint256(sub_cec9dc29[address(stor4[arg1].field_512)])
                require ext_call.success
                require ext_call.return_data[0]
            if uint256(sub_cec9dc29[address(stor4[arg1].field_512)]):
                require ext_code.size(address(activeBuySize[arg1].field_512))
                call address(activeBuySize[arg1].field_512).0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args feeCollectorAddress, uint256(sub_cec9dc29[address(stor4[arg1].field_512)])
                require ext_call.success
                require ext_call.return_data[0]
            emit 0xafa6a9b1: arg2 << 192, uint256(sub_cec9dc29[address(stor4[arg1].field_512)]), activeBuySize[arg1].field_0
    else:
        if uint64(activeBuySize[arg1][4][arg2 << 192].field_0):
            Mask(192, 0, activeBuySize[arg1][4][uint64(activeBuySize[arg1][4][arg2 << 192].field_0)].field_64) = uint64(activeBuySize[arg1][4][arg2 << 192].field_64)
            uint64(activeBuySize[arg1][4][arg2 << 192].field_0) = 0
        else:
            if not uint64(activeBuySize[arg1][4][arg2 << 192].field_64):
                if uint64(activeBuySize[arg1].field_832) != arg2:
                    require uint64(activeBuySize[arg1].field_896) == arg2
            if not uint64(activeBuySize[arg1][4][arg2 << 192].field_0):
                Mask(192, 0, activeBuySize[arg1].field_832) = uint64(activeBuySize[arg1][4][arg2 << 192].field_64)
            else:
                Mask(192, 0, activeBuySize[arg1][4][uint64(activeBuySize[arg1][4][arg2 << 192].field_0)].field_64) = uint64(activeBuySize[arg1][4][arg2 << 192].field_64)
                uint64(activeBuySize[arg1][4][arg2 << 192].field_0) = 0
        if not uint64(activeBuySize[arg1][4][arg2 << 192].field_64):
            uint128(activeBuySize[arg1].field_896) = uint64(activeBuySize[arg1][4][arg2 << 192].field_0)
        else:
            uint64(activeBuySize[arg1][4][uint64(activeBuySize[arg1][4][arg2 << 192].field_0)].field_0) = uint64(activeBuySize[arg1][4][arg2 << 192].field_0)
            uint64(activeBuySize[arg1][4][arg2 << 192].field_64) = 0
        uint128(activeBuySize[arg1][4][arg2 << 192].field_0) = 0
        uint64(activeBuySize[arg1].field_768) = uint64(uint64(activeBuySize[arg1].field_768) - 1)
        if stor1[arg2 << 192].field_256 <= uint256(sub_cec9dc29[address(stor4[arg1].field_256)]):
            if stor1[arg2 << 192].field_256:
                require stor1[arg2 << 192].field_256
                require stor1[arg2 << 192].field_0 * stor1[arg2 << 192].field_256 / stor1[arg2 << 192].field_256 == stor1[arg2 << 192].field_0
            balances[address(stor4[arg1].field_256)][stor6].field_0 += stor1[arg2 << 192].field_0 * stor1[arg2 << 192].field_256
            if balances[address(stor4[arg1].field_256)][address(msg.sender)].field_0 / 10^18:
                require balances[address(stor4[arg1].field_256)][address(msg.sender)].field_0 / 10^18
                require 10^18 * balances[address(stor4[arg1].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[arg1].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                balances[address(stor4[arg1].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[arg1].field_256)][address(msg.sender)].field_0 / 10^18
                require ext_code.size(address(activeBuySize[arg1].field_256))
                call address(activeBuySize[arg1].field_256).0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, balances[address(stor4[arg1].field_256)][address(msg.sender)].field_0 / 10^18
                require ext_call.success
                require ext_call.return_data[0]
            if balances[address(stor4[arg1].field_256)][stor6].field_0 / 10^18:
                require balances[address(stor4[arg1].field_256)][stor6].field_0 / 10^18
                require 10^18 * balances[address(stor4[arg1].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[arg1].field_256)][stor6].field_0 / 10^18 == 10^18
                balances[address(stor4[arg1].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[arg1].field_256)][stor6].field_0 / 10^18
                require ext_code.size(address(activeBuySize[arg1].field_256))
                call address(activeBuySize[arg1].field_256).0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args feeCollectorAddress, balances[address(stor4[arg1].field_256)][stor6].field_0 / 10^18
                require ext_call.success
                require ext_call.return_data[0]
            emit 0x3ef75dd7: arg2 << 192, stor1[arg2 << 192].field_256, activeBuySize[arg1].field_0
        else:
            if stor1[arg2 << 192].field_256 - uint256(sub_cec9dc29[address(stor4[arg1].field_256)]):
                require stor1[arg2 << 192].field_256 - uint256(sub_cec9dc29[address(stor4[arg1].field_256)])
                require (stor1[arg2 << 192].field_256 * stor1[arg2 << 192].field_0) - (uint256(sub_cec9dc29[address(stor4[arg1].field_256)]) * stor1[arg2 << 192].field_0) / stor1[arg2 << 192].field_256 - uint256(sub_cec9dc29[address(stor4[arg1].field_256)]) == stor1[arg2 << 192].field_0
            balances[address(stor4[arg1].field_256)][address(msg.sender)].field_0 = (stor1[arg2 << 192].field_256 * stor1[arg2 << 192].field_0) - (uint256(sub_cec9dc29[address(stor4[arg1].field_256)]) * stor1[arg2 << 192].field_0) + balances[address(stor4[arg1].field_256)][address(msg.sender)].field_0
            if uint256(sub_cec9dc29[address(stor4[arg1].field_256)]):
                require uint256(sub_cec9dc29[address(stor4[arg1].field_256)])
                require stor1[arg2 << 192].field_0 * uint256(sub_cec9dc29[address(stor4[arg1].field_256)]) / uint256(sub_cec9dc29[address(stor4[arg1].field_256)]) == stor1[arg2 << 192].field_0
            balances[address(stor4[arg1].field_256)][stor6].field_0 += stor1[arg2 << 192].field_0 * uint256(sub_cec9dc29[address(stor4[arg1].field_256)])
            if balances[address(stor4[arg1].field_256)][address(msg.sender)].field_0 / 10^18:
                require balances[address(stor4[arg1].field_256)][address(msg.sender)].field_0 / 10^18
                require 10^18 * balances[address(stor4[arg1].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[arg1].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                balances[address(stor4[arg1].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[arg1].field_256)][address(msg.sender)].field_0 / 10^18
                require ext_code.size(address(activeBuySize[arg1].field_256))
                call address(activeBuySize[arg1].field_256).0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, balances[address(stor4[arg1].field_256)][address(msg.sender)].field_0 / 10^18
                require ext_call.success
                require ext_call.return_data[0]
            if balances[address(stor4[arg1].field_256)][stor6].field_0 / 10^18:
                require balances[address(stor4[arg1].field_256)][stor6].field_0 / 10^18
                require 10^18 * balances[address(stor4[arg1].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[arg1].field_256)][stor6].field_0 / 10^18 == 10^18
                balances[address(stor4[arg1].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[arg1].field_256)][stor6].field_0 / 10^18
                require ext_code.size(address(activeBuySize[arg1].field_256))
                call address(activeBuySize[arg1].field_256).0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args feeCollectorAddress, balances[address(stor4[arg1].field_256)][stor6].field_0 / 10^18
                require ext_call.success
                require ext_call.return_data[0]
            emit 0x3ef75dd7: arg2 << 192, uint256(sub_cec9dc29[address(stor4[arg1].field_256)]), activeBuySize[arg1].field_0
    stor1[arg2 << 192].field_0 = 0
    stor1[arg2 << 192].field_256 = 0
    Mask(168, 0, stor1[arg2 << 192].field_512) = 0
    return 1
}

function cancelOrderList(bytes32[] arg1, uint64[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if arg1.length == arg2.length:
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            require idx < arg2.length
            _4198 = mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[0] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
            mem[32] = 1
            _4199 = sha3(mem[(32 * idx) + (32 * arg1.length) + 184 len 8], 1)
            if address(stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_512) != msg.sender:
                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = 0x496e76616c6964206f7264657200000000000000000000000000000000000000
                emit Error(0x496e76616c6964206f7264657200000000000000000000000000000000000000);
            else:
                _4200 = sha3(mem[(32 * idx) + 128], 4)
                require uint8(stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_672) <= 1
                if uint8(stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_672):
                    if uint64(activeBuySize[mem[(32 * idx) + 128]][6][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0):
                        Mask(192, 0, activeBuySize[mem[(32 * idx) + 128]][6][uint64(activeBuySize[mem[(32 * idx) + 128]][6][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0)].field_64) = uint64(activeBuySize[mem[(32 * idx) + 128]][6][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_64)
                        uint64(activeBuySize[mem[(32 * idx) + 128]][6][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0) = 0
                        if not uint64(activeBuySize[mem[(32 * idx) + 128]][6][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_64):
                            uint128(activeBuySize[mem[(32 * idx) + 128]].field_1408) = uint64(activeBuySize[mem[(32 * idx) + 128]][6][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0)
                            uint128(activeBuySize[mem[(32 * idx) + 128]][6][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0) = 0
                            uint64(activeBuySize[mem[(32 * idx) + 128]].field_1280) = uint64(uint64(activeBuySize[mem[(32 * idx) + 128]].field_1280) - 1)
                            if stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 <= uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_512)]):
                                if not stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256:
                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                    emit 0xafa6a9b1: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor1[_4199].field_0, stor[_4200]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg1.length) + 196] = stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256
                                    require ext_code.size(address(sub_cec9dc29[_4200]))
                                    call address(sub_cec9dc29[_4200]).0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args feeCollectorAddress, stor1[_4199].field_0
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                    emit 0xafa6a9b1: _4198 << 192, stor1[_4199].field_0, stor[_4200]
                            else:
                                _4254 = sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_512), 2)
                                if not stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 - uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_512)]):
                                    if not uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_512)]):
                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4254]
                                        emit 0xafa6a9b1: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor[_4254], stor[_4200]
                                    else:
                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_512)])
                                        require ext_code.size(address(sub_cec9dc29[_4200]))
                                        call address(sub_cec9dc29[_4200]).0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args feeCollectorAddress, stor[_4254]
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4254]
                                        emit 0xafa6a9b1: _4198 << 192, stor[_4254], stor[_4200]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg1.length) + 196] = stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 - uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_512)])
                                    require ext_code.size(address(sub_cec9dc29[_4200]))
                                    call address(sub_cec9dc29[_4200]).0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, stor1[_4199].field_0 - stor[_4254]
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    if stor[_4254]:
                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = stor[_4254]
                                        require ext_code.size(address(sub_cec9dc29[_4200]))
                                        call address(sub_cec9dc29[_4200]).0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args feeCollectorAddress, stor[_4254]
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4254]
                                    emit 0xafa6a9b1: _4198 << 192, stor[_4254], stor[_4200]
                        else:
                            uint64(activeBuySize[mem[(32 * idx) + 128]][6][uint64(activeBuySize[mem[(32 * idx) + 128]][6][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0)].field_0) = uint64(activeBuySize[mem[(32 * idx) + 128]][6][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0)
                            uint64(activeBuySize[mem[(32 * idx) + 128]][6][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_64) = 0
                            uint128(activeBuySize[mem[(32 * idx) + 128]][6][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0) = 0
                            uint64(activeBuySize[mem[(32 * idx) + 128]].field_1280) = uint64(uint64(activeBuySize[mem[(32 * idx) + 128]].field_1280) - 1)
                            if stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 <= uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_512)]):
                                if not stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256:
                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                    emit 0xafa6a9b1: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor1[_4199].field_0, stor[_4200]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg1.length) + 196] = stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256
                                    require ext_code.size(address(sub_cec9dc29[_4200]))
                                    call address(sub_cec9dc29[_4200]).0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args feeCollectorAddress, stor1[_4199].field_0
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                    emit 0xafa6a9b1: _4198 << 192, stor1[_4199].field_0, stor[_4200]
                            else:
                                _4253 = sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_512), 2)
                                if not stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 - uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_512)]):
                                    if not uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_512)]):
                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4253]
                                        emit 0xafa6a9b1: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor[_4253], stor[_4200]
                                    else:
                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_512)])
                                        require ext_code.size(address(sub_cec9dc29[_4200]))
                                        call address(sub_cec9dc29[_4200]).0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args feeCollectorAddress, stor[_4253]
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4253]
                                        emit 0xafa6a9b1: _4198 << 192, stor[_4253], stor[_4200]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg1.length) + 196] = stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 - uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_512)])
                                    require ext_code.size(address(sub_cec9dc29[_4200]))
                                    call address(sub_cec9dc29[_4200]).0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, stor1[_4199].field_0 - stor[_4253]
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    if stor[_4253]:
                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = stor[_4253]
                                        require ext_code.size(address(sub_cec9dc29[_4200]))
                                        call address(sub_cec9dc29[_4200]).0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args feeCollectorAddress, stor[_4253]
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4253]
                                    emit 0xafa6a9b1: _4198 << 192, stor[_4253], stor[_4200]
                    else:
                        if uint64(activeBuySize[mem[(32 * idx) + 128]][6][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_64):
                            if not uint64(activeBuySize[mem[(32 * idx) + 128]][6][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0):
                                Mask(192, 0, activeBuySize[mem[(32 * idx) + 128]].field_1344) = uint64(activeBuySize[mem[(32 * idx) + 128]][6][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_64)
                                if not uint64(activeBuySize[mem[(32 * idx) + 128]][6][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_64):
                                    uint128(activeBuySize[mem[(32 * idx) + 128]].field_1408) = uint64(activeBuySize[mem[(32 * idx) + 128]][6][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0)
                                    uint128(activeBuySize[mem[(32 * idx) + 128]][6][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0) = 0
                                    uint64(activeBuySize[mem[(32 * idx) + 128]].field_1280) = uint64(uint64(activeBuySize[mem[(32 * idx) + 128]].field_1280) - 1)
                                    if stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 <= uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_512)]):
                                        if not stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256:
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                            emit 0xafa6a9b1: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor1[_4199].field_0, stor[_4200]
                                        else:
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256
                                            require ext_code.size(address(sub_cec9dc29[_4200]))
                                            call address(sub_cec9dc29[_4200]).0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args feeCollectorAddress, stor1[_4199].field_0
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                            emit 0xafa6a9b1: _4198 << 192, stor1[_4199].field_0, stor[_4200]
                                    else:
                                        _4276 = sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_512), 2)
                                        if not stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 - uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_512)]):
                                            if not uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_512)]):
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4276]
                                                emit 0xafa6a9b1: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor[_4276], stor[_4200]
                                            else:
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 196] = uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_512)])
                                                require ext_code.size(address(sub_cec9dc29[_4200]))
                                                call address(sub_cec9dc29[_4200]).0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args feeCollectorAddress, stor[_4276]
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4276]
                                                emit 0xafa6a9b1: _4198 << 192, stor[_4276], stor[_4200]
                                        else:
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 - uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_512)])
                                            require ext_code.size(address(sub_cec9dc29[_4200]))
                                            call address(sub_cec9dc29[_4200]).0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, stor1[_4199].field_0 - stor[_4276]
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            if stor[_4276]:
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 196] = stor[_4276]
                                                require ext_code.size(address(sub_cec9dc29[_4200]))
                                                call address(sub_cec9dc29[_4200]).0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args feeCollectorAddress, stor[_4276]
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4276]
                                            emit 0xafa6a9b1: _4198 << 192, stor[_4276], stor[_4200]
                                else:
                                    uint64(activeBuySize[mem[(32 * idx) + 128]][6][uint64(activeBuySize[mem[(32 * idx) + 128]][6][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0)].field_0) = uint64(activeBuySize[mem[(32 * idx) + 128]][6][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0)
                                    uint64(activeBuySize[mem[(32 * idx) + 128]][6][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_64) = 0
                                    uint128(activeBuySize[mem[(32 * idx) + 128]][6][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0) = 0
                                    uint64(activeBuySize[mem[(32 * idx) + 128]].field_1280) = uint64(uint64(activeBuySize[mem[(32 * idx) + 128]].field_1280) - 1)
                                    if stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 <= uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_512)]):
                                        if not stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256:
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                            emit 0xafa6a9b1: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor1[_4199].field_0, stor[_4200]
                                        else:
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256
                                            require ext_code.size(address(sub_cec9dc29[_4200]))
                                            call address(sub_cec9dc29[_4200]).0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args feeCollectorAddress, stor1[_4199].field_0
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                            emit 0xafa6a9b1: _4198 << 192, stor1[_4199].field_0, stor[_4200]
                                    else:
                                        _4275 = sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_512), 2)
                                        if not stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 - uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_512)]):
                                            if not uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_512)]):
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4275]
                                                emit 0xafa6a9b1: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor[_4275], stor[_4200]
                                            else:
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 196] = uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_512)])
                                                require ext_code.size(address(sub_cec9dc29[_4200]))
                                                call address(sub_cec9dc29[_4200]).0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args feeCollectorAddress, stor[_4275]
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4275]
                                                emit 0xafa6a9b1: _4198 << 192, stor[_4275], stor[_4200]
                                        else:
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 - uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_512)])
                                            require ext_code.size(address(sub_cec9dc29[_4200]))
                                            call address(sub_cec9dc29[_4200]).0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, stor1[_4199].field_0 - stor[_4275]
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            if stor[_4275]:
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 196] = stor[_4275]
                                                require ext_code.size(address(sub_cec9dc29[_4200]))
                                                call address(sub_cec9dc29[_4200]).0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args feeCollectorAddress, stor[_4275]
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4275]
                                            emit 0xafa6a9b1: _4198 << 192, stor[_4275], stor[_4200]
                            else:
                                Mask(192, 0, activeBuySize[mem[(32 * idx) + 128]][6][uint64(activeBuySize[mem[(32 * idx) + 128]][6][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0)].field_64) = uint64(activeBuySize[mem[(32 * idx) + 128]][6][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_64)
                                uint64(activeBuySize[mem[(32 * idx) + 128]][6][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0) = 0
                                if not uint64(activeBuySize[mem[(32 * idx) + 128]][6][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_64):
                                    uint128(activeBuySize[mem[(32 * idx) + 128]].field_1408) = uint64(activeBuySize[mem[(32 * idx) + 128]][6][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0)
                                    uint128(activeBuySize[mem[(32 * idx) + 128]][6][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0) = 0
                                    uint64(activeBuySize[mem[(32 * idx) + 128]].field_1280) = uint64(uint64(activeBuySize[mem[(32 * idx) + 128]].field_1280) - 1)
                                    if stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 <= uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_512)]):
                                        if not stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256:
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                            emit 0xafa6a9b1: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor1[_4199].field_0, stor[_4200]
                                        else:
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256
                                            require ext_code.size(address(sub_cec9dc29[_4200]))
                                            call address(sub_cec9dc29[_4200]).0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args feeCollectorAddress, stor1[_4199].field_0
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                            emit 0xafa6a9b1: _4198 << 192, stor1[_4199].field_0, stor[_4200]
                                    else:
                                        _4274 = sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_512), 2)
                                        if not stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 - uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_512)]):
                                            if not uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_512)]):
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4274]
                                                emit 0xafa6a9b1: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor[_4274], stor[_4200]
                                            else:
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 196] = uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_512)])
                                                require ext_code.size(address(sub_cec9dc29[_4200]))
                                                call address(sub_cec9dc29[_4200]).0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args feeCollectorAddress, stor[_4274]
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4274]
                                                emit 0xafa6a9b1: _4198 << 192, stor[_4274], stor[_4200]
                                        else:
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 - uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_512)])
                                            require ext_code.size(address(sub_cec9dc29[_4200]))
                                            call address(sub_cec9dc29[_4200]).0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, stor1[_4199].field_0 - stor[_4274]
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            if stor[_4274]:
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 196] = stor[_4274]
                                                require ext_code.size(address(sub_cec9dc29[_4200]))
                                                call address(sub_cec9dc29[_4200]).0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args feeCollectorAddress, stor[_4274]
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4274]
                                            emit 0xafa6a9b1: _4198 << 192, stor[_4274], stor[_4200]
                                else:
                                    uint64(activeBuySize[mem[(32 * idx) + 128]][6][uint64(activeBuySize[mem[(32 * idx) + 128]][6][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0)].field_0) = uint64(activeBuySize[mem[(32 * idx) + 128]][6][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0)
                                    uint64(activeBuySize[mem[(32 * idx) + 128]][6][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_64) = 0
                                    uint128(activeBuySize[mem[(32 * idx) + 128]][6][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0) = 0
                                    uint64(activeBuySize[mem[(32 * idx) + 128]].field_1280) = uint64(uint64(activeBuySize[mem[(32 * idx) + 128]].field_1280) - 1)
                                    if stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 <= uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_512)]):
                                        if not stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256:
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                            emit 0xafa6a9b1: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor1[_4199].field_0, stor[_4200]
                                        else:
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256
                                            require ext_code.size(address(sub_cec9dc29[_4200]))
                                            call address(sub_cec9dc29[_4200]).0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args feeCollectorAddress, stor1[_4199].field_0
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                            emit 0xafa6a9b1: _4198 << 192, stor1[_4199].field_0, stor[_4200]
                                    else:
                                        _4273 = sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_512), 2)
                                        if not stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 - uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_512)]):
                                            if not uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_512)]):
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4273]
                                                emit 0xafa6a9b1: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor[_4273], stor[_4200]
                                            else:
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 196] = uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_512)])
                                                require ext_code.size(address(sub_cec9dc29[_4200]))
                                                call address(sub_cec9dc29[_4200]).0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args feeCollectorAddress, stor[_4273]
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4273]
                                                emit 0xafa6a9b1: _4198 << 192, stor[_4273], stor[_4200]
                                        else:
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 - uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_512)])
                                            require ext_code.size(address(sub_cec9dc29[_4200]))
                                            call address(sub_cec9dc29[_4200]).0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, stor1[_4199].field_0 - stor[_4273]
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            if stor[_4273]:
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 196] = stor[_4273]
                                                require ext_code.size(address(sub_cec9dc29[_4200]))
                                                call address(sub_cec9dc29[_4200]).0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args feeCollectorAddress, stor[_4273]
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4273]
                                            emit 0xafa6a9b1: _4198 << 192, stor[_4273], stor[_4200]
                        else:
                            if uint64(activeBuySize[mem[(32 * idx) + 128]].field_1344) == mem[(32 * idx) + (32 * arg1.length) + 184 len 8]:
                                if not uint64(activeBuySize[mem[(32 * idx) + 128]][6][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0):
                                    Mask(192, 0, activeBuySize[mem[(32 * idx) + 128]].field_1344) = uint64(activeBuySize[mem[(32 * idx) + 128]][6][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_64)
                                    if not uint64(activeBuySize[mem[(32 * idx) + 128]][6][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_64):
                                        uint128(activeBuySize[mem[(32 * idx) + 128]].field_1408) = uint64(activeBuySize[mem[(32 * idx) + 128]][6][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0)
                                        uint128(activeBuySize[mem[(32 * idx) + 128]][6][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0) = 0
                                        uint64(activeBuySize[mem[(32 * idx) + 128]].field_1280) = uint64(uint64(activeBuySize[mem[(32 * idx) + 128]].field_1280) - 1)
                                        if stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 <= uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_512)]):
                                            if not stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256:
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                                emit 0xafa6a9b1: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor1[_4199].field_0, stor[_4200]
                                            else:
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 196] = stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256
                                                require ext_code.size(address(sub_cec9dc29[_4200]))
                                                call address(sub_cec9dc29[_4200]).0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args feeCollectorAddress, stor1[_4199].field_0
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                                emit 0xafa6a9b1: _4198 << 192, stor1[_4199].field_0, stor[_4200]
                                        else:
                                            _4292 = sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_512), 2)
                                            if not stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 - uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_512)]):
                                                if not uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_512)]):
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4292]
                                                    emit 0xafa6a9b1: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor[_4292], stor[_4200]
                                                else:
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 196] = uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_512)])
                                                    require ext_code.size(address(sub_cec9dc29[_4200]))
                                                    call address(sub_cec9dc29[_4200]).0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args feeCollectorAddress, stor[_4292]
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4292]
                                                    emit 0xafa6a9b1: _4198 << 192, stor[_4292], stor[_4200]
                                            else:
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 196] = stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 - uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_512)])
                                                require ext_code.size(address(sub_cec9dc29[_4200]))
                                                call address(sub_cec9dc29[_4200]).0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, stor1[_4199].field_0 - stor[_4292]
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if stor[_4292]:
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 196] = stor[_4292]
                                                    require ext_code.size(address(sub_cec9dc29[_4200]))
                                                    call address(sub_cec9dc29[_4200]).0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args feeCollectorAddress, stor[_4292]
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4292]
                                                emit 0xafa6a9b1: _4198 << 192, stor[_4292], stor[_4200]
                                    else:
                                        uint64(activeBuySize[mem[(32 * idx) + 128]][6][uint64(activeBuySize[mem[(32 * idx) + 128]][6][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0)].field_0) = uint64(activeBuySize[mem[(32 * idx) + 128]][6][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0)
                                        uint64(activeBuySize[mem[(32 * idx) + 128]][6][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_64) = 0
                                        uint128(activeBuySize[mem[(32 * idx) + 128]][6][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0) = 0
                                        uint64(activeBuySize[mem[(32 * idx) + 128]].field_1280) = uint64(uint64(activeBuySize[mem[(32 * idx) + 128]].field_1280) - 1)
                                        if stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 <= uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_512)]):
                                            if not stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256:
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                                emit 0xafa6a9b1: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor1[_4199].field_0, stor[_4200]
                                            else:
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 196] = stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256
                                                require ext_code.size(address(sub_cec9dc29[_4200]))
                                                call address(sub_cec9dc29[_4200]).0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args feeCollectorAddress, stor1[_4199].field_0
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                                emit 0xafa6a9b1: _4198 << 192, stor1[_4199].field_0, stor[_4200]
                                        else:
                                            _4291 = sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_512), 2)
                                            if not stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 - uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_512)]):
                                                if not uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_512)]):
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4291]
                                                    emit 0xafa6a9b1: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor[_4291], stor[_4200]
                                                else:
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 196] = uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_512)])
                                                    require ext_code.size(address(sub_cec9dc29[_4200]))
                                                    call address(sub_cec9dc29[_4200]).0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args feeCollectorAddress, stor[_4291]
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4291]
                                                    emit 0xafa6a9b1: _4198 << 192, stor[_4291], stor[_4200]
                                            else:
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 196] = stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 - uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_512)])
                                                require ext_code.size(address(sub_cec9dc29[_4200]))
                                                call address(sub_cec9dc29[_4200]).0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, stor1[_4199].field_0 - stor[_4291]
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if stor[_4291]:
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 196] = stor[_4291]
                                                    require ext_code.size(address(sub_cec9dc29[_4200]))
                                                    call address(sub_cec9dc29[_4200]).0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args feeCollectorAddress, stor[_4291]
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4291]
                                                emit 0xafa6a9b1: _4198 << 192, stor[_4291], stor[_4200]
                                else:
                                    Mask(192, 0, activeBuySize[mem[(32 * idx) + 128]][6][uint64(activeBuySize[mem[(32 * idx) + 128]][6][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0)].field_64) = uint64(activeBuySize[mem[(32 * idx) + 128]][6][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_64)
                                    uint64(activeBuySize[mem[(32 * idx) + 128]][6][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0) = 0
                                    if not uint64(activeBuySize[mem[(32 * idx) + 128]][6][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_64):
                                        uint128(activeBuySize[mem[(32 * idx) + 128]].field_1408) = uint64(activeBuySize[mem[(32 * idx) + 128]][6][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0)
                                        uint128(activeBuySize[mem[(32 * idx) + 128]][6][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0) = 0
                                        uint64(activeBuySize[mem[(32 * idx) + 128]].field_1280) = uint64(uint64(activeBuySize[mem[(32 * idx) + 128]].field_1280) - 1)
                                        if stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 <= uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_512)]):
                                            if not stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256:
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                                emit 0xafa6a9b1: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor1[_4199].field_0, stor[_4200]
                                            else:
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 196] = stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256
                                                require ext_code.size(address(sub_cec9dc29[_4200]))
                                                call address(sub_cec9dc29[_4200]).0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args feeCollectorAddress, stor1[_4199].field_0
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                                emit 0xafa6a9b1: _4198 << 192, stor1[_4199].field_0, stor[_4200]
                                        else:
                                            _4290 = sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_512), 2)
                                            if not stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 - uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_512)]):
                                                if not uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_512)]):
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4290]
                                                    emit 0xafa6a9b1: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor[_4290], stor[_4200]
                                                else:
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 196] = uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_512)])
                                                    require ext_code.size(address(sub_cec9dc29[_4200]))
                                                    call address(sub_cec9dc29[_4200]).0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args feeCollectorAddress, stor[_4290]
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4290]
                                                    emit 0xafa6a9b1: _4198 << 192, stor[_4290], stor[_4200]
                                            else:
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 196] = stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 - uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_512)])
                                                require ext_code.size(address(sub_cec9dc29[_4200]))
                                                call address(sub_cec9dc29[_4200]).0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, stor1[_4199].field_0 - stor[_4290]
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if stor[_4290]:
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 196] = stor[_4290]
                                                    require ext_code.size(address(sub_cec9dc29[_4200]))
                                                    call address(sub_cec9dc29[_4200]).0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args feeCollectorAddress, stor[_4290]
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4290]
                                                emit 0xafa6a9b1: _4198 << 192, stor[_4290], stor[_4200]
                                    else:
                                        uint64(activeBuySize[mem[(32 * idx) + 128]][6][uint64(activeBuySize[mem[(32 * idx) + 128]][6][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0)].field_0) = uint64(activeBuySize[mem[(32 * idx) + 128]][6][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0)
                                        uint64(activeBuySize[mem[(32 * idx) + 128]][6][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_64) = 0
                                        uint128(activeBuySize[mem[(32 * idx) + 128]][6][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0) = 0
                                        uint64(activeBuySize[mem[(32 * idx) + 128]].field_1280) = uint64(uint64(activeBuySize[mem[(32 * idx) + 128]].field_1280) - 1)
                                        if stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 <= uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_512)]):
                                            if not stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256:
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                                emit 0xafa6a9b1: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor1[_4199].field_0, stor[_4200]
                                            else:
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 196] = stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256
                                                require ext_code.size(address(sub_cec9dc29[_4200]))
                                                call address(sub_cec9dc29[_4200]).0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args feeCollectorAddress, stor1[_4199].field_0
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                                emit 0xafa6a9b1: _4198 << 192, stor1[_4199].field_0, stor[_4200]
                                        else:
                                            _4289 = sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_512), 2)
                                            if not stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 - uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_512)]):
                                                if not uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_512)]):
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4289]
                                                    emit 0xafa6a9b1: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor[_4289], stor[_4200]
                                                else:
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 196] = uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_512)])
                                                    require ext_code.size(address(sub_cec9dc29[_4200]))
                                                    call address(sub_cec9dc29[_4200]).0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args feeCollectorAddress, stor[_4289]
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4289]
                                                    emit 0xafa6a9b1: _4198 << 192, stor[_4289], stor[_4200]
                                            else:
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 196] = stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 - uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_512)])
                                                require ext_code.size(address(sub_cec9dc29[_4200]))
                                                call address(sub_cec9dc29[_4200]).0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, stor1[_4199].field_0 - stor[_4289]
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if stor[_4289]:
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 196] = stor[_4289]
                                                    require ext_code.size(address(sub_cec9dc29[_4200]))
                                                    call address(sub_cec9dc29[_4200]).0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args feeCollectorAddress, stor[_4289]
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4289]
                                                emit 0xafa6a9b1: _4198 << 192, stor[_4289], stor[_4200]
                            else:
                                require uint64(activeBuySize[mem[(32 * idx) + 128]].field_1408) == mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                if not uint64(activeBuySize[mem[(32 * idx) + 128]][6][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0):
                                    Mask(192, 0, activeBuySize[mem[(32 * idx) + 128]].field_1344) = uint64(activeBuySize[mem[(32 * idx) + 128]][6][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_64)
                                    if not uint64(activeBuySize[mem[(32 * idx) + 128]][6][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_64):
                                        uint128(activeBuySize[mem[(32 * idx) + 128]].field_1408) = uint64(activeBuySize[mem[(32 * idx) + 128]][6][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0)
                                        uint128(activeBuySize[mem[(32 * idx) + 128]][6][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0) = 0
                                        uint64(activeBuySize[mem[(32 * idx) + 128]].field_1280) = uint64(uint64(activeBuySize[mem[(32 * idx) + 128]].field_1280) - 1)
                                        if stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 <= uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_512)]):
                                            if not stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256:
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                                emit 0xafa6a9b1: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor1[_4199].field_0, stor[_4200]
                                            else:
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 196] = stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256
                                                require ext_code.size(address(sub_cec9dc29[_4200]))
                                                call address(sub_cec9dc29[_4200]).0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args feeCollectorAddress, stor1[_4199].field_0
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                                emit 0xafa6a9b1: _4198 << 192, stor1[_4199].field_0, stor[_4200]
                                        else:
                                            _4314 = sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_512), 2)
                                            if not stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 - uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_512)]):
                                                if not uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_512)]):
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4314]
                                                    emit 0xafa6a9b1: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor[_4314], stor[_4200]
                                                else:
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 196] = uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_512)])
                                                    require ext_code.size(address(sub_cec9dc29[_4200]))
                                                    call address(sub_cec9dc29[_4200]).0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args feeCollectorAddress, stor[_4314]
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4314]
                                                    emit 0xafa6a9b1: _4198 << 192, stor[_4314], stor[_4200]
                                            else:
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 196] = stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 - uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_512)])
                                                require ext_code.size(address(sub_cec9dc29[_4200]))
                                                call address(sub_cec9dc29[_4200]).0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, stor1[_4199].field_0 - stor[_4314]
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if stor[_4314]:
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 196] = stor[_4314]
                                                    require ext_code.size(address(sub_cec9dc29[_4200]))
                                                    call address(sub_cec9dc29[_4200]).0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args feeCollectorAddress, stor[_4314]
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4314]
                                                emit 0xafa6a9b1: _4198 << 192, stor[_4314], stor[_4200]
                                    else:
                                        uint64(activeBuySize[mem[(32 * idx) + 128]][6][uint64(activeBuySize[mem[(32 * idx) + 128]][6][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0)].field_0) = uint64(activeBuySize[mem[(32 * idx) + 128]][6][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0)
                                        uint64(activeBuySize[mem[(32 * idx) + 128]][6][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_64) = 0
                                        uint128(activeBuySize[mem[(32 * idx) + 128]][6][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0) = 0
                                        uint64(activeBuySize[mem[(32 * idx) + 128]].field_1280) = uint64(uint64(activeBuySize[mem[(32 * idx) + 128]].field_1280) - 1)
                                        if stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 <= uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_512)]):
                                            if not stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256:
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                                emit 0xafa6a9b1: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor1[_4199].field_0, stor[_4200]
                                            else:
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 196] = stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256
                                                require ext_code.size(address(sub_cec9dc29[_4200]))
                                                call address(sub_cec9dc29[_4200]).0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args feeCollectorAddress, stor1[_4199].field_0
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                                emit 0xafa6a9b1: _4198 << 192, stor1[_4199].field_0, stor[_4200]
                                        else:
                                            _4313 = sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_512), 2)
                                            if not stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 - uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_512)]):
                                                if not uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_512)]):
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4313]
                                                    emit 0xafa6a9b1: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor[_4313], stor[_4200]
                                                else:
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 196] = uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_512)])
                                                    require ext_code.size(address(sub_cec9dc29[_4200]))
                                                    call address(sub_cec9dc29[_4200]).0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args feeCollectorAddress, stor[_4313]
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4313]
                                                    emit 0xafa6a9b1: _4198 << 192, stor[_4313], stor[_4200]
                                            else:
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 196] = stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 - uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_512)])
                                                require ext_code.size(address(sub_cec9dc29[_4200]))
                                                call address(sub_cec9dc29[_4200]).0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, stor1[_4199].field_0 - stor[_4313]
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if stor[_4313]:
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 196] = stor[_4313]
                                                    require ext_code.size(address(sub_cec9dc29[_4200]))
                                                    call address(sub_cec9dc29[_4200]).0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args feeCollectorAddress, stor[_4313]
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4313]
                                                emit 0xafa6a9b1: _4198 << 192, stor[_4313], stor[_4200]
                                else:
                                    Mask(192, 0, activeBuySize[mem[(32 * idx) + 128]][6][uint64(activeBuySize[mem[(32 * idx) + 128]][6][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0)].field_64) = uint64(activeBuySize[mem[(32 * idx) + 128]][6][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_64)
                                    uint64(activeBuySize[mem[(32 * idx) + 128]][6][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0) = 0
                                    if not uint64(activeBuySize[mem[(32 * idx) + 128]][6][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_64):
                                        uint128(activeBuySize[mem[(32 * idx) + 128]].field_1408) = uint64(activeBuySize[mem[(32 * idx) + 128]][6][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0)
                                        uint128(activeBuySize[mem[(32 * idx) + 128]][6][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0) = 0
                                        uint64(activeBuySize[mem[(32 * idx) + 128]].field_1280) = uint64(uint64(activeBuySize[mem[(32 * idx) + 128]].field_1280) - 1)
                                        if stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 <= uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_512)]):
                                            if not stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256:
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                                emit 0xafa6a9b1: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor1[_4199].field_0, stor[_4200]
                                            else:
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 196] = stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256
                                                require ext_code.size(address(sub_cec9dc29[_4200]))
                                                call address(sub_cec9dc29[_4200]).0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args feeCollectorAddress, stor1[_4199].field_0
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                                emit 0xafa6a9b1: _4198 << 192, stor1[_4199].field_0, stor[_4200]
                                        else:
                                            _4312 = sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_512), 2)
                                            if not stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 - uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_512)]):
                                                if not uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_512)]):
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4312]
                                                    emit 0xafa6a9b1: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor[_4312], stor[_4200]
                                                else:
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 196] = uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_512)])
                                                    require ext_code.size(address(sub_cec9dc29[_4200]))
                                                    call address(sub_cec9dc29[_4200]).0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args feeCollectorAddress, stor[_4312]
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4312]
                                                    emit 0xafa6a9b1: _4198 << 192, stor[_4312], stor[_4200]
                                            else:
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 196] = stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 - uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_512)])
                                                require ext_code.size(address(sub_cec9dc29[_4200]))
                                                call address(sub_cec9dc29[_4200]).0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, stor1[_4199].field_0 - stor[_4312]
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if stor[_4312]:
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 196] = stor[_4312]
                                                    require ext_code.size(address(sub_cec9dc29[_4200]))
                                                    call address(sub_cec9dc29[_4200]).0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args feeCollectorAddress, stor[_4312]
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4312]
                                                emit 0xafa6a9b1: _4198 << 192, stor[_4312], stor[_4200]
                                    else:
                                        uint64(activeBuySize[mem[(32 * idx) + 128]][6][uint64(activeBuySize[mem[(32 * idx) + 128]][6][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0)].field_0) = uint64(activeBuySize[mem[(32 * idx) + 128]][6][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0)
                                        uint64(activeBuySize[mem[(32 * idx) + 128]][6][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_64) = 0
                                        uint128(activeBuySize[mem[(32 * idx) + 128]][6][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0) = 0
                                        uint64(activeBuySize[mem[(32 * idx) + 128]].field_1280) = uint64(uint64(activeBuySize[mem[(32 * idx) + 128]].field_1280) - 1)
                                        if stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 <= uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_512)]):
                                            if not stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256:
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                                emit 0xafa6a9b1: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor1[_4199].field_0, stor[_4200]
                                            else:
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 196] = stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256
                                                require ext_code.size(address(sub_cec9dc29[_4200]))
                                                call address(sub_cec9dc29[_4200]).0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args feeCollectorAddress, stor1[_4199].field_0
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                                emit 0xafa6a9b1: _4198 << 192, stor1[_4199].field_0, stor[_4200]
                                        else:
                                            _4311 = sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_512), 2)
                                            if not stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 - uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_512)]):
                                                if not uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_512)]):
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4311]
                                                    emit 0xafa6a9b1: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor[_4311], stor[_4200]
                                                else:
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 196] = uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_512)])
                                                    require ext_code.size(address(sub_cec9dc29[_4200]))
                                                    call address(sub_cec9dc29[_4200]).0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args feeCollectorAddress, stor[_4311]
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4311]
                                                    emit 0xafa6a9b1: _4198 << 192, stor[_4311], stor[_4200]
                                            else:
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 196] = stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 - uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_512)])
                                                require ext_code.size(address(sub_cec9dc29[_4200]))
                                                call address(sub_cec9dc29[_4200]).0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, stor1[_4199].field_0 - stor[_4311]
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if stor[_4311]:
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 196] = stor[_4311]
                                                    require ext_code.size(address(sub_cec9dc29[_4200]))
                                                    call address(sub_cec9dc29[_4200]).0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args feeCollectorAddress, stor[_4311]
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4311]
                                                emit 0xafa6a9b1: _4198 << 192, stor[_4311], stor[_4200]
                else:
                    if uint64(activeBuySize[mem[(32 * idx) + 128]][4][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0):
                        Mask(192, 0, activeBuySize[mem[(32 * idx) + 128]][4][uint64(activeBuySize[mem[(32 * idx) + 128]][4][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0)].field_64) = uint64(activeBuySize[mem[(32 * idx) + 128]][4][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_64)
                        uint64(activeBuySize[mem[(32 * idx) + 128]][4][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0) = 0
                        if not uint64(activeBuySize[mem[(32 * idx) + 128]][4][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_64):
                            uint128(activeBuySize[mem[(32 * idx) + 128]].field_896) = uint64(activeBuySize[mem[(32 * idx) + 128]][4][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0)
                            uint128(activeBuySize[mem[(32 * idx) + 128]][4][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0) = 0
                            uint64(activeBuySize[mem[(32 * idx) + 128]].field_768) = uint64(uint64(activeBuySize[mem[(32 * idx) + 128]].field_768) - 1)
                            if stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 <= uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]):
                                if not stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256:
                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256
                                    _4608 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                    if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                        _5166 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                        if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[mem[0]].field_256
                                            emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor1[mem[0]].field_256, stor[_4200]
                                        else:
                                            require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                            require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                            balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                            require ext_code.size(address(stor1[_4200].field_0))
                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args feeCollectorAddress, stor[_5166] / 10^18
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                            emit 0x3ef75dd7: _4198 << 192, stor1[_4199].field_0, stor[_4200]
                                    else:
                                        require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                        require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                        balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                        require ext_code.size(address(stor1[_4200].field_0))
                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, stor[_4608] / 10^18
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                            require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                            require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                            balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                            require ext_code.size(address(stor1[_4200].field_0))
                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                        emit 0x3ef75dd7: _4198 << 192, stor1[_4199].field_0, stor[_4200]
                                else:
                                    require stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256
                                    require stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 / stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 == stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0
                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256
                                    _4768 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                    if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                        _5260 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                        if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[mem[0]].field_256
                                            emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor1[mem[0]].field_256, stor[_4200]
                                        else:
                                            require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                            require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                            balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                            require ext_code.size(address(stor1[_4200].field_0))
                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args feeCollectorAddress, stor[_5260] / 10^18
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                            emit 0x3ef75dd7: _4198 << 192, stor1[_4199].field_0, stor[_4200]
                                    else:
                                        require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                        require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                        balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                        require ext_code.size(address(stor1[_4200].field_0))
                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, stor[_4768] / 10^18
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                            require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                            require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                            balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                            require ext_code.size(address(stor1[_4200].field_0))
                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                        emit 0x3ef75dd7: _4198 << 192, stor1[_4199].field_0, stor[_4200]
                            else:
                                _4264 = sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 2)
                                if not stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 - uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]):
                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 = (stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) - (uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) + balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0
                                    if not uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]):
                                        balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                        _4684 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                        if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                            _5220 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                            if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4264]
                                                emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor[_4264], stor[_4200]
                                            else:
                                                require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                require ext_code.size(address(stor1[_4200].field_0))
                                                call address(stor1[_4200].field_0).0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args feeCollectorAddress, stor[_5220] / 10^18
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4264]
                                                emit 0x3ef75dd7: _4198 << 192, stor[_4264], stor[_4200]
                                        else:
                                            require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                            require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                            balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                            require ext_code.size(address(stor1[_4200].field_0))
                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, stor[_4684] / 10^18
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                require ext_code.size(address(stor1[_4200].field_0))
                                                call address(stor1[_4200].field_0).0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4264]
                                            emit 0x3ef75dd7: _4198 << 192, stor[_4264], stor[_4200]
                                    else:
                                        require uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                        require stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) / uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) == stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0
                                        balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                        _4872 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                        if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                            _5312 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                            if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4264]
                                                emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor[_4264], stor[_4200]
                                            else:
                                                require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                require ext_code.size(address(stor1[_4200].field_0))
                                                call address(stor1[_4200].field_0).0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args feeCollectorAddress, stor[_5312] / 10^18
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4264]
                                                emit 0x3ef75dd7: _4198 << 192, stor[_4264], stor[_4200]
                                        else:
                                            require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                            require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                            balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                            require ext_code.size(address(stor1[_4200].field_0))
                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, stor[_4872] / 10^18
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                require ext_code.size(address(stor1[_4200].field_0))
                                                call address(stor1[_4200].field_0).0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4264]
                                            emit 0x3ef75dd7: _4198 << 192, stor[_4264], stor[_4200]
                                else:
                                    require stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 - uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                    require (stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) - (uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) / stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 - uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) == stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0
                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 = (stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) - (uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) + balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0
                                    if not uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]):
                                        balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                        _4874 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                        if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                            _5314 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                            if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4264]
                                                emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor[_4264], stor[_4200]
                                            else:
                                                require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                require ext_code.size(address(stor1[_4200].field_0))
                                                call address(stor1[_4200].field_0).0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args feeCollectorAddress, stor[_5314] / 10^18
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4264]
                                                emit 0x3ef75dd7: _4198 << 192, stor[_4264], stor[_4200]
                                        else:
                                            require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                            require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                            balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                            require ext_code.size(address(stor1[_4200].field_0))
                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, stor[_4874] / 10^18
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                require ext_code.size(address(stor1[_4200].field_0))
                                                call address(stor1[_4200].field_0).0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4264]
                                            emit 0x3ef75dd7: _4198 << 192, stor[_4264], stor[_4200]
                                    else:
                                        require uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                        require stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) / uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) == stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0
                                        balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                        _5082 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                        if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                            _5426 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                            if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4264]
                                                emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor[_4264], stor[_4200]
                                            else:
                                                require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                require ext_code.size(address(stor1[_4200].field_0))
                                                call address(stor1[_4200].field_0).0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args feeCollectorAddress, stor[_5426] / 10^18
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4264]
                                                emit 0x3ef75dd7: _4198 << 192, stor[_4264], stor[_4200]
                                        else:
                                            require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                            require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                            balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                            require ext_code.size(address(stor1[_4200].field_0))
                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, stor[_5082] / 10^18
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                require ext_code.size(address(stor1[_4200].field_0))
                                                call address(stor1[_4200].field_0).0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4264]
                                            emit 0x3ef75dd7: _4198 << 192, stor[_4264], stor[_4200]
                        else:
                            uint64(activeBuySize[mem[(32 * idx) + 128]][4][uint64(activeBuySize[mem[(32 * idx) + 128]][4][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0)].field_0) = uint64(activeBuySize[mem[(32 * idx) + 128]][4][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0)
                            uint64(activeBuySize[mem[(32 * idx) + 128]][4][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_64) = 0
                            uint128(activeBuySize[mem[(32 * idx) + 128]][4][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0) = 0
                            uint64(activeBuySize[mem[(32 * idx) + 128]].field_768) = uint64(uint64(activeBuySize[mem[(32 * idx) + 128]].field_768) - 1)
                            if stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 <= uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]):
                                if not stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256:
                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256
                                    _4604 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                    if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                        _5164 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                        if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[mem[0]].field_256
                                            emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor1[mem[0]].field_256, stor[_4200]
                                        else:
                                            require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                            require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                            balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                            require ext_code.size(address(stor1[_4200].field_0))
                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args feeCollectorAddress, stor[_5164] / 10^18
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                            emit 0x3ef75dd7: _4198 << 192, stor1[_4199].field_0, stor[_4200]
                                    else:
                                        require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                        require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                        balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                        require ext_code.size(address(stor1[_4200].field_0))
                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, stor[_4604] / 10^18
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                            require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                            require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                            balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                            require ext_code.size(address(stor1[_4200].field_0))
                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                        emit 0x3ef75dd7: _4198 << 192, stor1[_4199].field_0, stor[_4200]
                                else:
                                    require stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256
                                    require stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 / stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 == stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0
                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256
                                    _4762 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                    if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                        _5258 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                        if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[mem[0]].field_256
                                            emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor1[mem[0]].field_256, stor[_4200]
                                        else:
                                            require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                            require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                            balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                            require ext_code.size(address(stor1[_4200].field_0))
                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args feeCollectorAddress, stor[_5258] / 10^18
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                            emit 0x3ef75dd7: _4198 << 192, stor1[_4199].field_0, stor[_4200]
                                    else:
                                        require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                        require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                        balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                        require ext_code.size(address(stor1[_4200].field_0))
                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, stor[_4762] / 10^18
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                            require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                            require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                            balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                            require ext_code.size(address(stor1[_4200].field_0))
                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                        emit 0x3ef75dd7: _4198 << 192, stor1[_4199].field_0, stor[_4200]
                            else:
                                _4263 = sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 2)
                                if not stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 - uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]):
                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 = (stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) - (uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) + balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0
                                    if not uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]):
                                        balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                        _4680 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                        if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                            _5218 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                            if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4263]
                                                emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor[_4263], stor[_4200]
                                            else:
                                                require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                require ext_code.size(address(stor1[_4200].field_0))
                                                call address(stor1[_4200].field_0).0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args feeCollectorAddress, stor[_5218] / 10^18
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4263]
                                                emit 0x3ef75dd7: _4198 << 192, stor[_4263], stor[_4200]
                                        else:
                                            require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                            require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                            balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                            require ext_code.size(address(stor1[_4200].field_0))
                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, stor[_4680] / 10^18
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                require ext_code.size(address(stor1[_4200].field_0))
                                                call address(stor1[_4200].field_0).0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4263]
                                            emit 0x3ef75dd7: _4198 << 192, stor[_4263], stor[_4200]
                                    else:
                                        require uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                        require stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) / uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) == stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0
                                        balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                        _4868 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                        if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                            _5303 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                            if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4263]
                                                emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor[_4263], stor[_4200]
                                            else:
                                                require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                require ext_code.size(address(stor1[_4200].field_0))
                                                call address(stor1[_4200].field_0).0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args feeCollectorAddress, stor[_5303] / 10^18
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4263]
                                                emit 0x3ef75dd7: _4198 << 192, stor[_4263], stor[_4200]
                                        else:
                                            require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                            require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                            balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                            require ext_code.size(address(stor1[_4200].field_0))
                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, stor[_4868] / 10^18
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                require ext_code.size(address(stor1[_4200].field_0))
                                                call address(stor1[_4200].field_0).0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4263]
                                            emit 0x3ef75dd7: _4198 << 192, stor[_4263], stor[_4200]
                                else:
                                    require stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 - uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                    require (stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) - (uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) / stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 - uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) == stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0
                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 = (stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) - (uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) + balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0
                                    if not uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]):
                                        balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                        _4870 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                        if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                            _5305 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                            if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4263]
                                                emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor[_4263], stor[_4200]
                                            else:
                                                require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                require ext_code.size(address(stor1[_4200].field_0))
                                                call address(stor1[_4200].field_0).0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args feeCollectorAddress, stor[_5305] / 10^18
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4263]
                                                emit 0x3ef75dd7: _4198 << 192, stor[_4263], stor[_4200]
                                        else:
                                            require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                            require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                            balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                            require ext_code.size(address(stor1[_4200].field_0))
                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, stor[_4870] / 10^18
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                require ext_code.size(address(stor1[_4200].field_0))
                                                call address(stor1[_4200].field_0).0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4263]
                                            emit 0x3ef75dd7: _4198 << 192, stor[_4263], stor[_4200]
                                    else:
                                        require uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                        require stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) / uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) == stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0
                                        balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                        _5080 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                        if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                            _5415 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                            if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4263]
                                                emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor[_4263], stor[_4200]
                                            else:
                                                require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                require ext_code.size(address(stor1[_4200].field_0))
                                                call address(stor1[_4200].field_0).0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args feeCollectorAddress, stor[_5415] / 10^18
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4263]
                                                emit 0x3ef75dd7: _4198 << 192, stor[_4263], stor[_4200]
                                        else:
                                            require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                            require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                            balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                            require ext_code.size(address(stor1[_4200].field_0))
                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, stor[_5080] / 10^18
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                require ext_code.size(address(stor1[_4200].field_0))
                                                call address(stor1[_4200].field_0).0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4263]
                                            emit 0x3ef75dd7: _4198 << 192, stor[_4263], stor[_4200]
                    else:
                        if uint64(activeBuySize[mem[(32 * idx) + 128]][4][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_64):
                            if not uint64(activeBuySize[mem[(32 * idx) + 128]][4][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0):
                                Mask(192, 0, activeBuySize[mem[(32 * idx) + 128]].field_832) = uint64(activeBuySize[mem[(32 * idx) + 128]][4][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_64)
                                if not uint64(activeBuySize[mem[(32 * idx) + 128]][4][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_64):
                                    uint128(activeBuySize[mem[(32 * idx) + 128]].field_896) = uint64(activeBuySize[mem[(32 * idx) + 128]][4][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0)
                                    uint128(activeBuySize[mem[(32 * idx) + 128]][4][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0) = 0
                                    uint64(activeBuySize[mem[(32 * idx) + 128]].field_768) = uint64(uint64(activeBuySize[mem[(32 * idx) + 128]].field_768) - 1)
                                    if stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 <= uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]):
                                        if not stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256:
                                            balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256
                                            _4698 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                            if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                                _5228 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[mem[0]].field_256
                                                    emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor1[mem[0]].field_256, stor[_4200]
                                                else:
                                                    require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                    require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                    require ext_code.size(address(stor1[_4200].field_0))
                                                    call address(stor1[_4200].field_0).0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args feeCollectorAddress, stor[_5228] / 10^18
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                                    emit 0x3ef75dd7: _4198 << 192, stor1[_4199].field_0, stor[_4200]
                                            else:
                                                require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                                balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                require ext_code.size(address(stor1[_4200].field_0))
                                                call address(stor1[_4200].field_0).0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, stor[_4698] / 10^18
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                    require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                    require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                    balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                    require ext_code.size(address(stor1[_4200].field_0))
                                                    call address(stor1[_4200].field_0).0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                                emit 0x3ef75dd7: _4198 << 192, stor1[_4199].field_0, stor[_4200]
                                        else:
                                            require stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256
                                            require stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 / stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 == stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0
                                            balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256
                                            _4894 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                            if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                                _5322 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[mem[0]].field_256
                                                    emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor1[mem[0]].field_256, stor[_4200]
                                                else:
                                                    require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                    require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                    require ext_code.size(address(stor1[_4200].field_0))
                                                    call address(stor1[_4200].field_0).0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args feeCollectorAddress, stor[_5322] / 10^18
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                                    emit 0x3ef75dd7: _4198 << 192, stor1[_4199].field_0, stor[_4200]
                                            else:
                                                require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                                balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                require ext_code.size(address(stor1[_4200].field_0))
                                                call address(stor1[_4200].field_0).0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, stor[_4894] / 10^18
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                    require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                    require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                    balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                    require ext_code.size(address(stor1[_4200].field_0))
                                                    call address(stor1[_4200].field_0).0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                                emit 0x3ef75dd7: _4198 << 192, stor1[_4199].field_0, stor[_4200]
                                    else:
                                        _4284 = sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 2)
                                        if not stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 - uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]):
                                            balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 = (stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) - (uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) + balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0
                                            if not uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]):
                                                balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                _4788 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                                    _5268 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                    if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4284]
                                                        emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor[_4284], stor[_4200]
                                                    else:
                                                        require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                        balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args feeCollectorAddress, stor[_5268] / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4284]
                                                        emit 0x3ef75dd7: _4198 << 192, stor[_4284], stor[_4200]
                                                else:
                                                    require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    require ext_code.size(address(stor1[_4200].field_0))
                                                    call address(stor1[_4200].field_0).0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, stor[_4788] / 10^18
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                        require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                        balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4284]
                                                    emit 0x3ef75dd7: _4198 << 192, stor[_4284], stor[_4200]
                                            else:
                                                require uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                require stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) / uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) == stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0
                                                balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                _4992 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                                    _5386 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                    if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4284]
                                                        emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor[_4284], stor[_4200]
                                                    else:
                                                        require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                        balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args feeCollectorAddress, stor[_5386] / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4284]
                                                        emit 0x3ef75dd7: _4198 << 192, stor[_4284], stor[_4200]
                                                else:
                                                    require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    require ext_code.size(address(stor1[_4200].field_0))
                                                    call address(stor1[_4200].field_0).0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, stor[_4992] / 10^18
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                        require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                        balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4284]
                                                    emit 0x3ef75dd7: _4198 << 192, stor[_4284], stor[_4200]
                                        else:
                                            require stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 - uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                            require (stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) - (uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) / stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 - uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) == stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0
                                            balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 = (stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) - (uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) + balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0
                                            if not uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]):
                                                balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                _4994 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                                    _5388 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                    if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4284]
                                                        emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor[_4284], stor[_4200]
                                                    else:
                                                        require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                        balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args feeCollectorAddress, stor[_5388] / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4284]
                                                        emit 0x3ef75dd7: _4198 << 192, stor[_4284], stor[_4200]
                                                else:
                                                    require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    require ext_code.size(address(stor1[_4200].field_0))
                                                    call address(stor1[_4200].field_0).0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, stor[_4994] / 10^18
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                        require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                        balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4284]
                                                    emit 0x3ef75dd7: _4198 << 192, stor[_4284], stor[_4200]
                                            else:
                                                require uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                require stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) / uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) == stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0
                                                balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                _5174 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                                    _5564 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                    if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4284]
                                                        emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor[_4284], stor[_4200]
                                                    else:
                                                        require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                        balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args feeCollectorAddress, stor[_5564] / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4284]
                                                        emit 0x3ef75dd7: _4198 << 192, stor[_4284], stor[_4200]
                                                else:
                                                    require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    require ext_code.size(address(stor1[_4200].field_0))
                                                    call address(stor1[_4200].field_0).0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, stor[_5174] / 10^18
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                        require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                        balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4284]
                                                    emit 0x3ef75dd7: _4198 << 192, stor[_4284], stor[_4200]
                                else:
                                    uint64(activeBuySize[mem[(32 * idx) + 128]][4][uint64(activeBuySize[mem[(32 * idx) + 128]][4][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0)].field_0) = uint64(activeBuySize[mem[(32 * idx) + 128]][4][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0)
                                    uint64(activeBuySize[mem[(32 * idx) + 128]][4][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_64) = 0
                                    uint128(activeBuySize[mem[(32 * idx) + 128]][4][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0) = 0
                                    uint64(activeBuySize[mem[(32 * idx) + 128]].field_768) = uint64(uint64(activeBuySize[mem[(32 * idx) + 128]].field_768) - 1)
                                    if stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 <= uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]):
                                        if not stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256:
                                            balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256
                                            _4694 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                            if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                                _5226 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[mem[0]].field_256
                                                    emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor1[mem[0]].field_256, stor[_4200]
                                                else:
                                                    require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                    require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                    require ext_code.size(address(stor1[_4200].field_0))
                                                    call address(stor1[_4200].field_0).0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args feeCollectorAddress, stor[_5226] / 10^18
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                                    emit 0x3ef75dd7: _4198 << 192, stor1[_4199].field_0, stor[_4200]
                                            else:
                                                require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                                balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                require ext_code.size(address(stor1[_4200].field_0))
                                                call address(stor1[_4200].field_0).0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, stor[_4694] / 10^18
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                    require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                    require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                    balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                    require ext_code.size(address(stor1[_4200].field_0))
                                                    call address(stor1[_4200].field_0).0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                                emit 0x3ef75dd7: _4198 << 192, stor1[_4199].field_0, stor[_4200]
                                        else:
                                            require stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256
                                            require stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 / stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 == stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0
                                            balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256
                                            _4888 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                            if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                                _5320 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[mem[0]].field_256
                                                    emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor1[mem[0]].field_256, stor[_4200]
                                                else:
                                                    require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                    require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                    require ext_code.size(address(stor1[_4200].field_0))
                                                    call address(stor1[_4200].field_0).0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args feeCollectorAddress, stor[_5320] / 10^18
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                                    emit 0x3ef75dd7: _4198 << 192, stor1[_4199].field_0, stor[_4200]
                                            else:
                                                require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                                balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                require ext_code.size(address(stor1[_4200].field_0))
                                                call address(stor1[_4200].field_0).0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, stor[_4888] / 10^18
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                    require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                    require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                    balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                    require ext_code.size(address(stor1[_4200].field_0))
                                                    call address(stor1[_4200].field_0).0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                                emit 0x3ef75dd7: _4198 << 192, stor1[_4199].field_0, stor[_4200]
                                    else:
                                        _4283 = sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 2)
                                        if not stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 - uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]):
                                            balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 = (stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) - (uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) + balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0
                                            if not uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]):
                                                balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                _4784 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                                    _5266 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                    if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4283]
                                                        emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor[_4283], stor[_4200]
                                                    else:
                                                        require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                        balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args feeCollectorAddress, stor[_5266] / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4283]
                                                        emit 0x3ef75dd7: _4198 << 192, stor[_4283], stor[_4200]
                                                else:
                                                    require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    require ext_code.size(address(stor1[_4200].field_0))
                                                    call address(stor1[_4200].field_0).0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, stor[_4784] / 10^18
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                        require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                        balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4283]
                                                    emit 0x3ef75dd7: _4198 << 192, stor[_4283], stor[_4200]
                                            else:
                                                require uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                require stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) / uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) == stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0
                                                balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                _4988 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                                    _5377 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                    if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4283]
                                                        emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor[_4283], stor[_4200]
                                                    else:
                                                        require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                        balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args feeCollectorAddress, stor[_5377] / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4283]
                                                        emit 0x3ef75dd7: _4198 << 192, stor[_4283], stor[_4200]
                                                else:
                                                    require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    require ext_code.size(address(stor1[_4200].field_0))
                                                    call address(stor1[_4200].field_0).0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, stor[_4988] / 10^18
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                        require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                        balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4283]
                                                    emit 0x3ef75dd7: _4198 << 192, stor[_4283], stor[_4200]
                                        else:
                                            require stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 - uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                            require (stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) - (uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) / stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 - uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) == stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0
                                            balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 = (stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) - (uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) + balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0
                                            if not uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]):
                                                balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                _4990 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                                    _5379 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                    if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4283]
                                                        emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor[_4283], stor[_4200]
                                                    else:
                                                        require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                        balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args feeCollectorAddress, stor[_5379] / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4283]
                                                        emit 0x3ef75dd7: _4198 << 192, stor[_4283], stor[_4200]
                                                else:
                                                    require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    require ext_code.size(address(stor1[_4200].field_0))
                                                    call address(stor1[_4200].field_0).0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, stor[_4990] / 10^18
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                        require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                        balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4283]
                                                    emit 0x3ef75dd7: _4198 << 192, stor[_4283], stor[_4200]
                                            else:
                                                require uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                require stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) / uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) == stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0
                                                balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                _5172 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                                    _5553 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                    if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4283]
                                                        emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor[_4283], stor[_4200]
                                                    else:
                                                        require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                        balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args feeCollectorAddress, stor[_5553] / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4283]
                                                        emit 0x3ef75dd7: _4198 << 192, stor[_4283], stor[_4200]
                                                else:
                                                    require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    require ext_code.size(address(stor1[_4200].field_0))
                                                    call address(stor1[_4200].field_0).0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, stor[_5172] / 10^18
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                        require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                        balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4283]
                                                    emit 0x3ef75dd7: _4198 << 192, stor[_4283], stor[_4200]
                            else:
                                Mask(192, 0, activeBuySize[mem[(32 * idx) + 128]][4][uint64(activeBuySize[mem[(32 * idx) + 128]][4][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0)].field_64) = uint64(activeBuySize[mem[(32 * idx) + 128]][4][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_64)
                                uint64(activeBuySize[mem[(32 * idx) + 128]][4][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0) = 0
                                if not uint64(activeBuySize[mem[(32 * idx) + 128]][4][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_64):
                                    uint128(activeBuySize[mem[(32 * idx) + 128]].field_896) = uint64(activeBuySize[mem[(32 * idx) + 128]][4][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0)
                                    uint128(activeBuySize[mem[(32 * idx) + 128]][4][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0) = 0
                                    uint64(activeBuySize[mem[(32 * idx) + 128]].field_768) = uint64(uint64(activeBuySize[mem[(32 * idx) + 128]].field_768) - 1)
                                    if stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 <= uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]):
                                        if not stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256:
                                            balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256
                                            _4690 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                            if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                                _5224 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[mem[0]].field_256
                                                    emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor1[mem[0]].field_256, stor[_4200]
                                                else:
                                                    require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                    require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                    require ext_code.size(address(stor1[_4200].field_0))
                                                    call address(stor1[_4200].field_0).0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args feeCollectorAddress, stor[_5224] / 10^18
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                                    emit 0x3ef75dd7: _4198 << 192, stor1[_4199].field_0, stor[_4200]
                                            else:
                                                require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                                balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                require ext_code.size(address(stor1[_4200].field_0))
                                                call address(stor1[_4200].field_0).0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, stor[_4690] / 10^18
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                    require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                    require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                    balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                    require ext_code.size(address(stor1[_4200].field_0))
                                                    call address(stor1[_4200].field_0).0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                                emit 0x3ef75dd7: _4198 << 192, stor1[_4199].field_0, stor[_4200]
                                        else:
                                            require stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256
                                            require stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 / stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 == stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0
                                            balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256
                                            _4882 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                            if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                                _5318 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[mem[0]].field_256
                                                    emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor1[mem[0]].field_256, stor[_4200]
                                                else:
                                                    require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                    require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                    require ext_code.size(address(stor1[_4200].field_0))
                                                    call address(stor1[_4200].field_0).0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args feeCollectorAddress, stor[_5318] / 10^18
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                                    emit 0x3ef75dd7: _4198 << 192, stor1[_4199].field_0, stor[_4200]
                                            else:
                                                require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                                balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                require ext_code.size(address(stor1[_4200].field_0))
                                                call address(stor1[_4200].field_0).0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, stor[_4882] / 10^18
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                    require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                    require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                    balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                    require ext_code.size(address(stor1[_4200].field_0))
                                                    call address(stor1[_4200].field_0).0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                                emit 0x3ef75dd7: _4198 << 192, stor1[_4199].field_0, stor[_4200]
                                    else:
                                        _4282 = sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 2)
                                        if not stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 - uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]):
                                            balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 = (stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) - (uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) + balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0
                                            if not uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]):
                                                balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                _4780 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                                    _5264 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                    if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4282]
                                                        emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor[_4282], stor[_4200]
                                                    else:
                                                        require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                        balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args feeCollectorAddress, stor[_5264] / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4282]
                                                        emit 0x3ef75dd7: _4198 << 192, stor[_4282], stor[_4200]
                                                else:
                                                    require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    require ext_code.size(address(stor1[_4200].field_0))
                                                    call address(stor1[_4200].field_0).0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, stor[_4780] / 10^18
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                        require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                        balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4282]
                                                    emit 0x3ef75dd7: _4198 << 192, stor[_4282], stor[_4200]
                                            else:
                                                require uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                require stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) / uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) == stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0
                                                balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                _4984 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                                    _5368 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                    if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4282]
                                                        emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor[_4282], stor[_4200]
                                                    else:
                                                        require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                        balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args feeCollectorAddress, stor[_5368] / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4282]
                                                        emit 0x3ef75dd7: _4198 << 192, stor[_4282], stor[_4200]
                                                else:
                                                    require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    require ext_code.size(address(stor1[_4200].field_0))
                                                    call address(stor1[_4200].field_0).0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, stor[_4984] / 10^18
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                        require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                        balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4282]
                                                    emit 0x3ef75dd7: _4198 << 192, stor[_4282], stor[_4200]
                                        else:
                                            require stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 - uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                            require (stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) - (uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) / stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 - uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) == stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0
                                            balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 = (stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) - (uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) + balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0
                                            if not uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]):
                                                balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                _4986 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                                    _5370 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                    if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4282]
                                                        emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor[_4282], stor[_4200]
                                                    else:
                                                        require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                        balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args feeCollectorAddress, stor[_5370] / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4282]
                                                        emit 0x3ef75dd7: _4198 << 192, stor[_4282], stor[_4200]
                                                else:
                                                    require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    require ext_code.size(address(stor1[_4200].field_0))
                                                    call address(stor1[_4200].field_0).0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, stor[_4986] / 10^18
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                        require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                        balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4282]
                                                    emit 0x3ef75dd7: _4198 << 192, stor[_4282], stor[_4200]
                                            else:
                                                require uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                require stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) / uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) == stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0
                                                balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                _5170 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                                    _5542 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                    if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4282]
                                                        emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor[_4282], stor[_4200]
                                                    else:
                                                        require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                        balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args feeCollectorAddress, stor[_5542] / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4282]
                                                        emit 0x3ef75dd7: _4198 << 192, stor[_4282], stor[_4200]
                                                else:
                                                    require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    require ext_code.size(address(stor1[_4200].field_0))
                                                    call address(stor1[_4200].field_0).0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, stor[_5170] / 10^18
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                        require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                        balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4282]
                                                    emit 0x3ef75dd7: _4198 << 192, stor[_4282], stor[_4200]
                                else:
                                    uint64(activeBuySize[mem[(32 * idx) + 128]][4][uint64(activeBuySize[mem[(32 * idx) + 128]][4][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0)].field_0) = uint64(activeBuySize[mem[(32 * idx) + 128]][4][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0)
                                    uint64(activeBuySize[mem[(32 * idx) + 128]][4][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_64) = 0
                                    uint128(activeBuySize[mem[(32 * idx) + 128]][4][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0) = 0
                                    uint64(activeBuySize[mem[(32 * idx) + 128]].field_768) = uint64(uint64(activeBuySize[mem[(32 * idx) + 128]].field_768) - 1)
                                    if stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 <= uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]):
                                        if not stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256:
                                            balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256
                                            _4686 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                            if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                                _5222 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[mem[0]].field_256
                                                    emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor1[mem[0]].field_256, stor[_4200]
                                                else:
                                                    require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                    require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                    require ext_code.size(address(stor1[_4200].field_0))
                                                    call address(stor1[_4200].field_0).0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args feeCollectorAddress, stor[_5222] / 10^18
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                                    emit 0x3ef75dd7: _4198 << 192, stor1[_4199].field_0, stor[_4200]
                                            else:
                                                require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                                balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                require ext_code.size(address(stor1[_4200].field_0))
                                                call address(stor1[_4200].field_0).0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, stor[_4686] / 10^18
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                    require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                    require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                    balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                    require ext_code.size(address(stor1[_4200].field_0))
                                                    call address(stor1[_4200].field_0).0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                                emit 0x3ef75dd7: _4198 << 192, stor1[_4199].field_0, stor[_4200]
                                        else:
                                            require stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256
                                            require stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 / stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 == stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0
                                            balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256
                                            _4876 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                            if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                                _5316 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[mem[0]].field_256
                                                    emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor1[mem[0]].field_256, stor[_4200]
                                                else:
                                                    require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                    require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                    require ext_code.size(address(stor1[_4200].field_0))
                                                    call address(stor1[_4200].field_0).0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args feeCollectorAddress, stor[_5316] / 10^18
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                                    emit 0x3ef75dd7: _4198 << 192, stor1[_4199].field_0, stor[_4200]
                                            else:
                                                require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                                balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                require ext_code.size(address(stor1[_4200].field_0))
                                                call address(stor1[_4200].field_0).0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, stor[_4876] / 10^18
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                    require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                    require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                    balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                    require ext_code.size(address(stor1[_4200].field_0))
                                                    call address(stor1[_4200].field_0).0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                                emit 0x3ef75dd7: _4198 << 192, stor1[_4199].field_0, stor[_4200]
                                    else:
                                        _4281 = sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 2)
                                        if not stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 - uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]):
                                            balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 = (stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) - (uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) + balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0
                                            if not uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]):
                                                balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                _4776 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                                    _5262 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                    if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4281]
                                                        emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor[_4281], stor[_4200]
                                                    else:
                                                        require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                        balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args feeCollectorAddress, stor[_5262] / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4281]
                                                        emit 0x3ef75dd7: _4198 << 192, stor[_4281], stor[_4200]
                                                else:
                                                    require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    require ext_code.size(address(stor1[_4200].field_0))
                                                    call address(stor1[_4200].field_0).0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, stor[_4776] / 10^18
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                        require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                        balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4281]
                                                    emit 0x3ef75dd7: _4198 << 192, stor[_4281], stor[_4200]
                                            else:
                                                require uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                require stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) / uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) == stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0
                                                balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                _4980 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                                    _5359 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                    if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4281]
                                                        emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor[_4281], stor[_4200]
                                                    else:
                                                        require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                        balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args feeCollectorAddress, stor[_5359] / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4281]
                                                        emit 0x3ef75dd7: _4198 << 192, stor[_4281], stor[_4200]
                                                else:
                                                    require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    require ext_code.size(address(stor1[_4200].field_0))
                                                    call address(stor1[_4200].field_0).0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, stor[_4980] / 10^18
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                        require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                        balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4281]
                                                    emit 0x3ef75dd7: _4198 << 192, stor[_4281], stor[_4200]
                                        else:
                                            require stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 - uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                            require (stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) - (uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) / stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 - uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) == stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0
                                            balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 = (stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) - (uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) + balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0
                                            if not uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]):
                                                balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                _4982 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                                    _5361 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                    if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4281]
                                                        emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor[_4281], stor[_4200]
                                                    else:
                                                        require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                        balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args feeCollectorAddress, stor[_5361] / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4281]
                                                        emit 0x3ef75dd7: _4198 << 192, stor[_4281], stor[_4200]
                                                else:
                                                    require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    require ext_code.size(address(stor1[_4200].field_0))
                                                    call address(stor1[_4200].field_0).0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, stor[_4982] / 10^18
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                        require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                        balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4281]
                                                    emit 0x3ef75dd7: _4198 << 192, stor[_4281], stor[_4200]
                                            else:
                                                require uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                require stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) / uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) == stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0
                                                balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                _5168 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                                    _5531 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                    if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4281]
                                                        emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor[_4281], stor[_4200]
                                                    else:
                                                        require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                        balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args feeCollectorAddress, stor[_5531] / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4281]
                                                        emit 0x3ef75dd7: _4198 << 192, stor[_4281], stor[_4200]
                                                else:
                                                    require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    require ext_code.size(address(stor1[_4200].field_0))
                                                    call address(stor1[_4200].field_0).0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, stor[_5168] / 10^18
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                        require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                        balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4281]
                                                    emit 0x3ef75dd7: _4198 << 192, stor[_4281], stor[_4200]
                        else:
                            if uint64(activeBuySize[mem[(32 * idx) + 128]].field_832) == mem[(32 * idx) + (32 * arg1.length) + 184 len 8]:
                                if not uint64(activeBuySize[mem[(32 * idx) + 128]][4][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0):
                                    Mask(192, 0, activeBuySize[mem[(32 * idx) + 128]].field_832) = uint64(activeBuySize[mem[(32 * idx) + 128]][4][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_64)
                                    if not uint64(activeBuySize[mem[(32 * idx) + 128]][4][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_64):
                                        uint128(activeBuySize[mem[(32 * idx) + 128]].field_896) = uint64(activeBuySize[mem[(32 * idx) + 128]][4][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0)
                                        uint128(activeBuySize[mem[(32 * idx) + 128]][4][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0) = 0
                                        uint64(activeBuySize[mem[(32 * idx) + 128]].field_768) = uint64(uint64(activeBuySize[mem[(32 * idx) + 128]].field_768) - 1)
                                        if stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 <= uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]):
                                            if not stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256:
                                                balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256
                                                _4802 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                                    _5276 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                    if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[mem[0]].field_256
                                                        emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor1[mem[0]].field_256, stor[_4200]
                                                    else:
                                                        require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                        balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args feeCollectorAddress, stor[_5276] / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                                        emit 0x3ef75dd7: _4198 << 192, stor1[_4199].field_0, stor[_4200]
                                                else:
                                                    require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    require ext_code.size(address(stor1[_4200].field_0))
                                                    call address(stor1[_4200].field_0).0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, stor[_4802] / 10^18
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                        require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                        balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                                    emit 0x3ef75dd7: _4198 << 192, stor1[_4199].field_0, stor[_4200]
                                            else:
                                                require stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256
                                                require stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 / stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 == stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0
                                                balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256
                                                _5014 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                                    _5396 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                    if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[mem[0]].field_256
                                                        emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor1[mem[0]].field_256, stor[_4200]
                                                    else:
                                                        require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                        balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args feeCollectorAddress, stor[_5396] / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                                        emit 0x3ef75dd7: _4198 << 192, stor1[_4199].field_0, stor[_4200]
                                                else:
                                                    require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    require ext_code.size(address(stor1[_4200].field_0))
                                                    call address(stor1[_4200].field_0).0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, stor[_5014] / 10^18
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                        require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                        balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                                    emit 0x3ef75dd7: _4198 << 192, stor1[_4199].field_0, stor[_4200]
                                        else:
                                            _4300 = sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 2)
                                            if not stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 - uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]):
                                                balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 = (stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) - (uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) + balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0
                                                if not uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]):
                                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                    _4914 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                    if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                                        _5330 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                        if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4300]
                                                            emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor[_4300], stor[_4200]
                                                        else:
                                                            require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                            balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            require ext_code.size(address(stor1[_4200].field_0))
                                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args feeCollectorAddress, stor[_5330] / 10^18
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4300]
                                                            emit 0x3ef75dd7: _4198 << 192, stor[_4300], stor[_4200]
                                                    else:
                                                        require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                                        balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, stor[_4914] / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                            require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                            balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require ext_code.size(address(stor1[_4200].field_0))
                                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4300]
                                                        emit 0x3ef75dd7: _4198 << 192, stor[_4300], stor[_4200]
                                                else:
                                                    require uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                    require stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) / uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) == stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0
                                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                    _5104 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                    if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                                        _5480 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                        if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4300]
                                                            emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor[_4300], stor[_4200]
                                                        else:
                                                            require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                            balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            require ext_code.size(address(stor1[_4200].field_0))
                                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args feeCollectorAddress, stor[_5480] / 10^18
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4300]
                                                            emit 0x3ef75dd7: _4198 << 192, stor[_4300], stor[_4200]
                                                    else:
                                                        require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                                        balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, stor[_5104] / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                            require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                            balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require ext_code.size(address(stor1[_4200].field_0))
                                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4300]
                                                        emit 0x3ef75dd7: _4198 << 192, stor[_4300], stor[_4200]
                                            else:
                                                require stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 - uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                require (stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) - (uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) / stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 - uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) == stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0
                                                balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 = (stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) - (uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) + balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0
                                                if not uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]):
                                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                    _5106 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                    if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                                        _5482 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                        if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4300]
                                                            emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor[_4300], stor[_4200]
                                                        else:
                                                            require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                            balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            require ext_code.size(address(stor1[_4200].field_0))
                                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args feeCollectorAddress, stor[_5482] / 10^18
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4300]
                                                            emit 0x3ef75dd7: _4198 << 192, stor[_4300], stor[_4200]
                                                    else:
                                                        require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                                        balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, stor[_5106] / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                            require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                            balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require ext_code.size(address(stor1[_4200].field_0))
                                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4300]
                                                        emit 0x3ef75dd7: _4198 << 192, stor[_4300], stor[_4200]
                                                else:
                                                    require uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                    require stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) / uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) == stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0
                                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                    _5236 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                    if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                                        _5734 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                        if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4300]
                                                            emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor[_4300], stor[_4200]
                                                        else:
                                                            require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                            balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            require ext_code.size(address(stor1[_4200].field_0))
                                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args feeCollectorAddress, stor[_5734] / 10^18
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4300]
                                                            emit 0x3ef75dd7: _4198 << 192, stor[_4300], stor[_4200]
                                                    else:
                                                        require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                                        balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, stor[_5236] / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                            require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                            balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require ext_code.size(address(stor1[_4200].field_0))
                                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4300]
                                                        emit 0x3ef75dd7: _4198 << 192, stor[_4300], stor[_4200]
                                    else:
                                        uint64(activeBuySize[mem[(32 * idx) + 128]][4][uint64(activeBuySize[mem[(32 * idx) + 128]][4][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0)].field_0) = uint64(activeBuySize[mem[(32 * idx) + 128]][4][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0)
                                        uint64(activeBuySize[mem[(32 * idx) + 128]][4][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_64) = 0
                                        uint128(activeBuySize[mem[(32 * idx) + 128]][4][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0) = 0
                                        uint64(activeBuySize[mem[(32 * idx) + 128]].field_768) = uint64(uint64(activeBuySize[mem[(32 * idx) + 128]].field_768) - 1)
                                        if stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 <= uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]):
                                            if not stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256:
                                                balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256
                                                _4798 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                                    _5274 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                    if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[mem[0]].field_256
                                                        emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor1[mem[0]].field_256, stor[_4200]
                                                    else:
                                                        require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                        balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args feeCollectorAddress, stor[_5274] / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                                        emit 0x3ef75dd7: _4198 << 192, stor1[_4199].field_0, stor[_4200]
                                                else:
                                                    require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    require ext_code.size(address(stor1[_4200].field_0))
                                                    call address(stor1[_4200].field_0).0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, stor[_4798] / 10^18
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                        require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                        balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                                    emit 0x3ef75dd7: _4198 << 192, stor1[_4199].field_0, stor[_4200]
                                            else:
                                                require stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256
                                                require stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 / stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 == stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0
                                                balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256
                                                _5008 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                                    _5394 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                    if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[mem[0]].field_256
                                                        emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor1[mem[0]].field_256, stor[_4200]
                                                    else:
                                                        require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                        balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args feeCollectorAddress, stor[_5394] / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                                        emit 0x3ef75dd7: _4198 << 192, stor1[_4199].field_0, stor[_4200]
                                                else:
                                                    require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    require ext_code.size(address(stor1[_4200].field_0))
                                                    call address(stor1[_4200].field_0).0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, stor[_5008] / 10^18
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                        require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                        balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                                    emit 0x3ef75dd7: _4198 << 192, stor1[_4199].field_0, stor[_4200]
                                        else:
                                            _4299 = sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 2)
                                            if not stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 - uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]):
                                                balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 = (stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) - (uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) + balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0
                                                if not uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]):
                                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                    _4910 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                    if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                                        _5328 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                        if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4299]
                                                            emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor[_4299], stor[_4200]
                                                        else:
                                                            require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                            balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            require ext_code.size(address(stor1[_4200].field_0))
                                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args feeCollectorAddress, stor[_5328] / 10^18
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4299]
                                                            emit 0x3ef75dd7: _4198 << 192, stor[_4299], stor[_4200]
                                                    else:
                                                        require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                                        balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, stor[_4910] / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                            require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                            balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require ext_code.size(address(stor1[_4200].field_0))
                                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4299]
                                                        emit 0x3ef75dd7: _4198 << 192, stor[_4299], stor[_4200]
                                                else:
                                                    require uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                    require stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) / uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) == stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0
                                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                    _5100 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                    if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                                        _5471 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                        if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4299]
                                                            emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor[_4299], stor[_4200]
                                                        else:
                                                            require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                            balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            require ext_code.size(address(stor1[_4200].field_0))
                                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args feeCollectorAddress, stor[_5471] / 10^18
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4299]
                                                            emit 0x3ef75dd7: _4198 << 192, stor[_4299], stor[_4200]
                                                    else:
                                                        require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                                        balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, stor[_5100] / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                            require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                            balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require ext_code.size(address(stor1[_4200].field_0))
                                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4299]
                                                        emit 0x3ef75dd7: _4198 << 192, stor[_4299], stor[_4200]
                                            else:
                                                require stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 - uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                require (stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) - (uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) / stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 - uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) == stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0
                                                balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 = (stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) - (uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) + balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0
                                                if not uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]):
                                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                    _5102 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                    if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                                        _5473 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                        if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4299]
                                                            emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor[_4299], stor[_4200]
                                                        else:
                                                            require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                            balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            require ext_code.size(address(stor1[_4200].field_0))
                                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args feeCollectorAddress, stor[_5473] / 10^18
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4299]
                                                            emit 0x3ef75dd7: _4198 << 192, stor[_4299], stor[_4200]
                                                    else:
                                                        require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                                        balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, stor[_5102] / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                            require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                            balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require ext_code.size(address(stor1[_4200].field_0))
                                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4299]
                                                        emit 0x3ef75dd7: _4198 << 192, stor[_4299], stor[_4200]
                                                else:
                                                    require uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                    require stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) / uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) == stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0
                                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                    _5234 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                    if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                                        _5723 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                        if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4299]
                                                            emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor[_4299], stor[_4200]
                                                        else:
                                                            require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                            balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            require ext_code.size(address(stor1[_4200].field_0))
                                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args feeCollectorAddress, stor[_5723] / 10^18
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4299]
                                                            emit 0x3ef75dd7: _4198 << 192, stor[_4299], stor[_4200]
                                                    else:
                                                        require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                                        balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, stor[_5234] / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                            require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                            balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require ext_code.size(address(stor1[_4200].field_0))
                                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4299]
                                                        emit 0x3ef75dd7: _4198 << 192, stor[_4299], stor[_4200]
                                else:
                                    Mask(192, 0, activeBuySize[mem[(32 * idx) + 128]][4][uint64(activeBuySize[mem[(32 * idx) + 128]][4][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0)].field_64) = uint64(activeBuySize[mem[(32 * idx) + 128]][4][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_64)
                                    uint64(activeBuySize[mem[(32 * idx) + 128]][4][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0) = 0
                                    if not uint64(activeBuySize[mem[(32 * idx) + 128]][4][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_64):
                                        uint128(activeBuySize[mem[(32 * idx) + 128]].field_896) = uint64(activeBuySize[mem[(32 * idx) + 128]][4][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0)
                                        uint128(activeBuySize[mem[(32 * idx) + 128]][4][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0) = 0
                                        uint64(activeBuySize[mem[(32 * idx) + 128]].field_768) = uint64(uint64(activeBuySize[mem[(32 * idx) + 128]].field_768) - 1)
                                        if stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 <= uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]):
                                            if not stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256:
                                                balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256
                                                _4794 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                                    _5272 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                    if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[mem[0]].field_256
                                                        emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor1[mem[0]].field_256, stor[_4200]
                                                    else:
                                                        require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                        balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args feeCollectorAddress, stor[_5272] / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                                        emit 0x3ef75dd7: _4198 << 192, stor1[_4199].field_0, stor[_4200]
                                                else:
                                                    require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    require ext_code.size(address(stor1[_4200].field_0))
                                                    call address(stor1[_4200].field_0).0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, stor[_4794] / 10^18
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                        require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                        balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                                    emit 0x3ef75dd7: _4198 << 192, stor1[_4199].field_0, stor[_4200]
                                            else:
                                                require stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256
                                                require stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 / stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 == stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0
                                                balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256
                                                _5002 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                                    _5392 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                    if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[mem[0]].field_256
                                                        emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor1[mem[0]].field_256, stor[_4200]
                                                    else:
                                                        require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                        balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args feeCollectorAddress, stor[_5392] / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                                        emit 0x3ef75dd7: _4198 << 192, stor1[_4199].field_0, stor[_4200]
                                                else:
                                                    require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    require ext_code.size(address(stor1[_4200].field_0))
                                                    call address(stor1[_4200].field_0).0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, stor[_5002] / 10^18
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                        require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                        balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                                    emit 0x3ef75dd7: _4198 << 192, stor1[_4199].field_0, stor[_4200]
                                        else:
                                            _4298 = sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 2)
                                            if not stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 - uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]):
                                                balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 = (stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) - (uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) + balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0
                                                if not uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]):
                                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                    _4906 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                    if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                                        _5326 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                        if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4298]
                                                            emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor[_4298], stor[_4200]
                                                        else:
                                                            require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                            balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            require ext_code.size(address(stor1[_4200].field_0))
                                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args feeCollectorAddress, stor[_5326] / 10^18
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4298]
                                                            emit 0x3ef75dd7: _4198 << 192, stor[_4298], stor[_4200]
                                                    else:
                                                        require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                                        balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, stor[_4906] / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                            require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                            balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require ext_code.size(address(stor1[_4200].field_0))
                                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4298]
                                                        emit 0x3ef75dd7: _4198 << 192, stor[_4298], stor[_4200]
                                                else:
                                                    require uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                    require stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) / uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) == stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0
                                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                    _5096 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                    if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                                        _5462 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                        if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4298]
                                                            emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor[_4298], stor[_4200]
                                                        else:
                                                            require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                            balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            require ext_code.size(address(stor1[_4200].field_0))
                                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args feeCollectorAddress, stor[_5462] / 10^18
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4298]
                                                            emit 0x3ef75dd7: _4198 << 192, stor[_4298], stor[_4200]
                                                    else:
                                                        require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                                        balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, stor[_5096] / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                            require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                            balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require ext_code.size(address(stor1[_4200].field_0))
                                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4298]
                                                        emit 0x3ef75dd7: _4198 << 192, stor[_4298], stor[_4200]
                                            else:
                                                require stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 - uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                require (stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) - (uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) / stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 - uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) == stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0
                                                balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 = (stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) - (uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) + balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0
                                                if not uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]):
                                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                    _5098 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                    if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                                        _5464 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                        if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4298]
                                                            emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor[_4298], stor[_4200]
                                                        else:
                                                            require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                            balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            require ext_code.size(address(stor1[_4200].field_0))
                                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args feeCollectorAddress, stor[_5464] / 10^18
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4298]
                                                            emit 0x3ef75dd7: _4198 << 192, stor[_4298], stor[_4200]
                                                    else:
                                                        require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                                        balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, stor[_5098] / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                            require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                            balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require ext_code.size(address(stor1[_4200].field_0))
                                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4298]
                                                        emit 0x3ef75dd7: _4198 << 192, stor[_4298], stor[_4200]
                                                else:
                                                    require uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                    require stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) / uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) == stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0
                                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                    _5232 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                    if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                                        _5712 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                        if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4298]
                                                            emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor[_4298], stor[_4200]
                                                        else:
                                                            require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                            balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            require ext_code.size(address(stor1[_4200].field_0))
                                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args feeCollectorAddress, stor[_5712] / 10^18
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4298]
                                                            emit 0x3ef75dd7: _4198 << 192, stor[_4298], stor[_4200]
                                                    else:
                                                        require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                                        balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, stor[_5232] / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                            require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                            balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require ext_code.size(address(stor1[_4200].field_0))
                                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4298]
                                                        emit 0x3ef75dd7: _4198 << 192, stor[_4298], stor[_4200]
                                    else:
                                        uint64(activeBuySize[mem[(32 * idx) + 128]][4][uint64(activeBuySize[mem[(32 * idx) + 128]][4][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0)].field_0) = uint64(activeBuySize[mem[(32 * idx) + 128]][4][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0)
                                        uint64(activeBuySize[mem[(32 * idx) + 128]][4][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_64) = 0
                                        uint128(activeBuySize[mem[(32 * idx) + 128]][4][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0) = 0
                                        uint64(activeBuySize[mem[(32 * idx) + 128]].field_768) = uint64(uint64(activeBuySize[mem[(32 * idx) + 128]].field_768) - 1)
                                        if stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 <= uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]):
                                            if not stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256:
                                                balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256
                                                _4790 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                                    _5270 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                    if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[mem[0]].field_256
                                                        emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor1[mem[0]].field_256, stor[_4200]
                                                    else:
                                                        require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                        balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args feeCollectorAddress, stor[_5270] / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                                        emit 0x3ef75dd7: _4198 << 192, stor1[_4199].field_0, stor[_4200]
                                                else:
                                                    require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    require ext_code.size(address(stor1[_4200].field_0))
                                                    call address(stor1[_4200].field_0).0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, stor[_4790] / 10^18
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                        require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                        balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                                    emit 0x3ef75dd7: _4198 << 192, stor1[_4199].field_0, stor[_4200]
                                            else:
                                                require stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256
                                                require stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 / stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 == stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0
                                                balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256
                                                _4996 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                                    _5390 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                    if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[mem[0]].field_256
                                                        emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor1[mem[0]].field_256, stor[_4200]
                                                    else:
                                                        require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                        balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args feeCollectorAddress, stor[_5390] / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                                        emit 0x3ef75dd7: _4198 << 192, stor1[_4199].field_0, stor[_4200]
                                                else:
                                                    require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    require ext_code.size(address(stor1[_4200].field_0))
                                                    call address(stor1[_4200].field_0).0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, stor[_4996] / 10^18
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                        require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                        balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                                    emit 0x3ef75dd7: _4198 << 192, stor1[_4199].field_0, stor[_4200]
                                        else:
                                            _4297 = sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 2)
                                            if not stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 - uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]):
                                                balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 = (stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) - (uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) + balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0
                                                if not uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]):
                                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                    _4902 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                    if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                                        _5324 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                        if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4297]
                                                            emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor[_4297], stor[_4200]
                                                        else:
                                                            require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                            balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            require ext_code.size(address(stor1[_4200].field_0))
                                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args feeCollectorAddress, stor[_5324] / 10^18
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4297]
                                                            emit 0x3ef75dd7: _4198 << 192, stor[_4297], stor[_4200]
                                                    else:
                                                        require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                                        balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, stor[_4902] / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                            require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                            balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require ext_code.size(address(stor1[_4200].field_0))
                                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4297]
                                                        emit 0x3ef75dd7: _4198 << 192, stor[_4297], stor[_4200]
                                                else:
                                                    require uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                    require stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) / uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) == stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0
                                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                    _5092 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                    if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                                        _5453 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                        if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4297]
                                                            emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor[_4297], stor[_4200]
                                                        else:
                                                            require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                            balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            require ext_code.size(address(stor1[_4200].field_0))
                                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args feeCollectorAddress, stor[_5453] / 10^18
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4297]
                                                            emit 0x3ef75dd7: _4198 << 192, stor[_4297], stor[_4200]
                                                    else:
                                                        require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                                        balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, stor[_5092] / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                            require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                            balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require ext_code.size(address(stor1[_4200].field_0))
                                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4297]
                                                        emit 0x3ef75dd7: _4198 << 192, stor[_4297], stor[_4200]
                                            else:
                                                require stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 - uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                require (stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) - (uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) / stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 - uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) == stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0
                                                balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 = (stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) - (uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) + balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0
                                                if not uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]):
                                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                    _5094 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                    if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                                        _5455 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                        if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4297]
                                                            emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor[_4297], stor[_4200]
                                                        else:
                                                            require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                            balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            require ext_code.size(address(stor1[_4200].field_0))
                                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args feeCollectorAddress, stor[_5455] / 10^18
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4297]
                                                            emit 0x3ef75dd7: _4198 << 192, stor[_4297], stor[_4200]
                                                    else:
                                                        require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                                        balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, stor[_5094] / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                            require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                            balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require ext_code.size(address(stor1[_4200].field_0))
                                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4297]
                                                        emit 0x3ef75dd7: _4198 << 192, stor[_4297], stor[_4200]
                                                else:
                                                    require uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                    require stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) / uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) == stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0
                                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                    _5230 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                    if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                                        _5701 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                        if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4297]
                                                            emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor[_4297], stor[_4200]
                                                        else:
                                                            require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                            balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            require ext_code.size(address(stor1[_4200].field_0))
                                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args feeCollectorAddress, stor[_5701] / 10^18
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4297]
                                                            emit 0x3ef75dd7: _4198 << 192, stor[_4297], stor[_4200]
                                                    else:
                                                        require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                                        balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, stor[_5230] / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                            require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                            balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require ext_code.size(address(stor1[_4200].field_0))
                                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4297]
                                                        emit 0x3ef75dd7: _4198 << 192, stor[_4297], stor[_4200]
                            else:
                                require uint64(activeBuySize[mem[(32 * idx) + 128]].field_896) == mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                if not uint64(activeBuySize[mem[(32 * idx) + 128]][4][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0):
                                    Mask(192, 0, activeBuySize[mem[(32 * idx) + 128]].field_832) = uint64(activeBuySize[mem[(32 * idx) + 128]][4][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_64)
                                    if not uint64(activeBuySize[mem[(32 * idx) + 128]][4][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_64):
                                        uint128(activeBuySize[mem[(32 * idx) + 128]].field_896) = uint64(activeBuySize[mem[(32 * idx) + 128]][4][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0)
                                        uint128(activeBuySize[mem[(32 * idx) + 128]][4][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0) = 0
                                        uint64(activeBuySize[mem[(32 * idx) + 128]].field_768) = uint64(uint64(activeBuySize[mem[(32 * idx) + 128]].field_768) - 1)
                                        if stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 <= uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]):
                                            if not stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256:
                                                balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256
                                                _4928 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                                    _5338 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                    if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[mem[0]].field_256
                                                        emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor1[mem[0]].field_256, stor[_4200]
                                                    else:
                                                        require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                        balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args feeCollectorAddress, stor[_5338] / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                                        emit 0x3ef75dd7: _4198 << 192, stor1[_4199].field_0, stor[_4200]
                                                else:
                                                    require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    require ext_code.size(address(stor1[_4200].field_0))
                                                    call address(stor1[_4200].field_0).0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, stor[_4928] / 10^18
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                        require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                        balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                                    emit 0x3ef75dd7: _4198 << 192, stor1[_4199].field_0, stor[_4200]
                                            else:
                                                require stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256
                                                require stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 / stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 == stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0
                                                balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256
                                                _5126 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                                    _5490 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                    if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[mem[0]].field_256
                                                        emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor1[mem[0]].field_256, stor[_4200]
                                                    else:
                                                        require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                        balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args feeCollectorAddress, stor[_5490] / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                                        emit 0x3ef75dd7: _4198 << 192, stor1[_4199].field_0, stor[_4200]
                                                else:
                                                    require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    require ext_code.size(address(stor1[_4200].field_0))
                                                    call address(stor1[_4200].field_0).0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, stor[_5126] / 10^18
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                        require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                        balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                                    emit 0x3ef75dd7: _4198 << 192, stor1[_4199].field_0, stor[_4200]
                                        else:
                                            _4318 = sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 2)
                                            if not stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 - uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]):
                                                balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 = (stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) - (uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) + balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0
                                                if not uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]):
                                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                    _5034 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                    if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                                        _5404 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                        if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4318]
                                                            emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor[_4318], stor[_4200]
                                                        else:
                                                            require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                            balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            require ext_code.size(address(stor1[_4200].field_0))
                                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args feeCollectorAddress, stor[_5404] / 10^18
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4318]
                                                            emit 0x3ef75dd7: _4198 << 192, stor[_4318], stor[_4200]
                                                    else:
                                                        require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                                        balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, stor[_5034] / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                            require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                            balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require ext_code.size(address(stor1[_4200].field_0))
                                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4318]
                                                        emit 0x3ef75dd7: _4198 << 192, stor[_4318], stor[_4200]
                                                else:
                                                    require uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                    require stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) / uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) == stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0
                                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                    _5196 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                    if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                                        _5618 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                        if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4318]
                                                            emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor[_4318], stor[_4200]
                                                        else:
                                                            require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                            balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            require ext_code.size(address(stor1[_4200].field_0))
                                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args feeCollectorAddress, stor[_5618] / 10^18
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4318]
                                                            emit 0x3ef75dd7: _4198 << 192, stor[_4318], stor[_4200]
                                                    else:
                                                        require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                                        balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, stor[_5196] / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                            require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                            balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require ext_code.size(address(stor1[_4200].field_0))
                                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4318]
                                                        emit 0x3ef75dd7: _4198 << 192, stor[_4318], stor[_4200]
                                            else:
                                                require stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 - uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                require (stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) - (uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) / stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 - uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) == stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0
                                                balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 = (stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) - (uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) + balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0
                                                if not uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]):
                                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                    _5198 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                    if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                                        _5620 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                        if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4318]
                                                            emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor[_4318], stor[_4200]
                                                        else:
                                                            require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                            balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            require ext_code.size(address(stor1[_4200].field_0))
                                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args feeCollectorAddress, stor[_5620] / 10^18
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4318]
                                                            emit 0x3ef75dd7: _4198 << 192, stor[_4318], stor[_4200]
                                                    else:
                                                        require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                                        balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, stor[_5198] / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                            require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                            balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require ext_code.size(address(stor1[_4200].field_0))
                                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4318]
                                                        emit 0x3ef75dd7: _4198 << 192, stor[_4318], stor[_4200]
                                                else:
                                                    require uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                    require stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) / uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) == stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0
                                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                    _5284 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                    if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                                        _5906 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                        if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4318]
                                                            emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor[_4318], stor[_4200]
                                                        else:
                                                            require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                            balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            require ext_code.size(address(stor1[_4200].field_0))
                                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args feeCollectorAddress, stor[_5906] / 10^18
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4318]
                                                            emit 0x3ef75dd7: _4198 << 192, stor[_4318], stor[_4200]
                                                    else:
                                                        require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                                        balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, stor[_5284] / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                            require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                            balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require ext_code.size(address(stor1[_4200].field_0))
                                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4318]
                                                        emit 0x3ef75dd7: _4198 << 192, stor[_4318], stor[_4200]
                                    else:
                                        uint64(activeBuySize[mem[(32 * idx) + 128]][4][uint64(activeBuySize[mem[(32 * idx) + 128]][4][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0)].field_0) = uint64(activeBuySize[mem[(32 * idx) + 128]][4][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0)
                                        uint64(activeBuySize[mem[(32 * idx) + 128]][4][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_64) = 0
                                        uint128(activeBuySize[mem[(32 * idx) + 128]][4][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0) = 0
                                        uint64(activeBuySize[mem[(32 * idx) + 128]].field_768) = uint64(uint64(activeBuySize[mem[(32 * idx) + 128]].field_768) - 1)
                                        if stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 <= uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]):
                                            if not stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256:
                                                balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256
                                                _4924 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                                    _5336 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                    if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[mem[0]].field_256
                                                        emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor1[mem[0]].field_256, stor[_4200]
                                                    else:
                                                        require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                        balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args feeCollectorAddress, stor[_5336] / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                                        emit 0x3ef75dd7: _4198 << 192, stor1[_4199].field_0, stor[_4200]
                                                else:
                                                    require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    require ext_code.size(address(stor1[_4200].field_0))
                                                    call address(stor1[_4200].field_0).0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, stor[_4924] / 10^18
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                        require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                        balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                                    emit 0x3ef75dd7: _4198 << 192, stor1[_4199].field_0, stor[_4200]
                                            else:
                                                require stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256
                                                require stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 / stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 == stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0
                                                balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256
                                                _5120 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                                    _5488 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                    if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[mem[0]].field_256
                                                        emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor1[mem[0]].field_256, stor[_4200]
                                                    else:
                                                        require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                        balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args feeCollectorAddress, stor[_5488] / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                                        emit 0x3ef75dd7: _4198 << 192, stor1[_4199].field_0, stor[_4200]
                                                else:
                                                    require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    require ext_code.size(address(stor1[_4200].field_0))
                                                    call address(stor1[_4200].field_0).0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, stor[_5120] / 10^18
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                        require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                        balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                                    emit 0x3ef75dd7: _4198 << 192, stor1[_4199].field_0, stor[_4200]
                                        else:
                                            _4317 = sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 2)
                                            if not stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 - uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]):
                                                balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 = (stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) - (uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) + balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0
                                                if not uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]):
                                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                    _5030 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                    if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                                        _5402 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                        if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4317]
                                                            emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor[_4317], stor[_4200]
                                                        else:
                                                            require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                            balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            require ext_code.size(address(stor1[_4200].field_0))
                                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args feeCollectorAddress, stor[_5402] / 10^18
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4317]
                                                            emit 0x3ef75dd7: _4198 << 192, stor[_4317], stor[_4200]
                                                    else:
                                                        require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                                        balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, stor[_5030] / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                            require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                            balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require ext_code.size(address(stor1[_4200].field_0))
                                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4317]
                                                        emit 0x3ef75dd7: _4198 << 192, stor[_4317], stor[_4200]
                                                else:
                                                    require uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                    require stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) / uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) == stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0
                                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                    _5192 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                    if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                                        _5609 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                        if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4317]
                                                            emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor[_4317], stor[_4200]
                                                        else:
                                                            require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                            balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            require ext_code.size(address(stor1[_4200].field_0))
                                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args feeCollectorAddress, stor[_5609] / 10^18
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4317]
                                                            emit 0x3ef75dd7: _4198 << 192, stor[_4317], stor[_4200]
                                                    else:
                                                        require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                                        balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, stor[_5192] / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                            require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                            balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require ext_code.size(address(stor1[_4200].field_0))
                                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4317]
                                                        emit 0x3ef75dd7: _4198 << 192, stor[_4317], stor[_4200]
                                            else:
                                                require stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 - uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                require (stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) - (uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) / stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 - uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) == stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0
                                                balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 = (stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) - (uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) + balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0
                                                if not uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]):
                                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                    _5194 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                    if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                                        _5611 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                        if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4317]
                                                            emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor[_4317], stor[_4200]
                                                        else:
                                                            require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                            balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            require ext_code.size(address(stor1[_4200].field_0))
                                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args feeCollectorAddress, stor[_5611] / 10^18
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4317]
                                                            emit 0x3ef75dd7: _4198 << 192, stor[_4317], stor[_4200]
                                                    else:
                                                        require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                                        balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, stor[_5194] / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                            require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                            balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require ext_code.size(address(stor1[_4200].field_0))
                                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4317]
                                                        emit 0x3ef75dd7: _4198 << 192, stor[_4317], stor[_4200]
                                                else:
                                                    require uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                    require stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) / uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) == stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0
                                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                    _5282 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                    if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                                        _5895 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                        if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4317]
                                                            emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor[_4317], stor[_4200]
                                                        else:
                                                            require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                            balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            require ext_code.size(address(stor1[_4200].field_0))
                                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args feeCollectorAddress, stor[_5895] / 10^18
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4317]
                                                            emit 0x3ef75dd7: _4198 << 192, stor[_4317], stor[_4200]
                                                    else:
                                                        require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                                        balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, stor[_5282] / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                            require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                            balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require ext_code.size(address(stor1[_4200].field_0))
                                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4317]
                                                        emit 0x3ef75dd7: _4198 << 192, stor[_4317], stor[_4200]
                                else:
                                    Mask(192, 0, activeBuySize[mem[(32 * idx) + 128]][4][uint64(activeBuySize[mem[(32 * idx) + 128]][4][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0)].field_64) = uint64(activeBuySize[mem[(32 * idx) + 128]][4][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_64)
                                    uint64(activeBuySize[mem[(32 * idx) + 128]][4][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0) = 0
                                    if not uint64(activeBuySize[mem[(32 * idx) + 128]][4][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_64):
                                        uint128(activeBuySize[mem[(32 * idx) + 128]].field_896) = uint64(activeBuySize[mem[(32 * idx) + 128]][4][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0)
                                        uint128(activeBuySize[mem[(32 * idx) + 128]][4][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0) = 0
                                        uint64(activeBuySize[mem[(32 * idx) + 128]].field_768) = uint64(uint64(activeBuySize[mem[(32 * idx) + 128]].field_768) - 1)
                                        if stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 <= uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]):
                                            if not stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256:
                                                balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256
                                                _4920 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                                    _5334 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                    if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[mem[0]].field_256
                                                        emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor1[mem[0]].field_256, stor[_4200]
                                                    else:
                                                        require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                        balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args feeCollectorAddress, stor[_5334] / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                                        emit 0x3ef75dd7: _4198 << 192, stor1[_4199].field_0, stor[_4200]
                                                else:
                                                    require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    require ext_code.size(address(stor1[_4200].field_0))
                                                    call address(stor1[_4200].field_0).0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, stor[_4920] / 10^18
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                        require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                        balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                                    emit 0x3ef75dd7: _4198 << 192, stor1[_4199].field_0, stor[_4200]
                                            else:
                                                require stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256
                                                require stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 / stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 == stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0
                                                balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256
                                                _5114 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                                    _5486 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                    if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[mem[0]].field_256
                                                        emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor1[mem[0]].field_256, stor[_4200]
                                                    else:
                                                        require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                        balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args feeCollectorAddress, stor[_5486] / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                                        emit 0x3ef75dd7: _4198 << 192, stor1[_4199].field_0, stor[_4200]
                                                else:
                                                    require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    require ext_code.size(address(stor1[_4200].field_0))
                                                    call address(stor1[_4200].field_0).0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, stor[_5114] / 10^18
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                        require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                        balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                                    emit 0x3ef75dd7: _4198 << 192, stor1[_4199].field_0, stor[_4200]
                                        else:
                                            _4316 = sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 2)
                                            if not stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 - uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]):
                                                balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 = (stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) - (uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) + balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0
                                                if not uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]):
                                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                    _5026 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                    if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                                        _5400 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                        if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4316]
                                                            emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor[_4316], stor[_4200]
                                                        else:
                                                            require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                            balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            require ext_code.size(address(stor1[_4200].field_0))
                                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args feeCollectorAddress, stor[_5400] / 10^18
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4316]
                                                            emit 0x3ef75dd7: _4198 << 192, stor[_4316], stor[_4200]
                                                    else:
                                                        require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                                        balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, stor[_5026] / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                            require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                            balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require ext_code.size(address(stor1[_4200].field_0))
                                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4316]
                                                        emit 0x3ef75dd7: _4198 << 192, stor[_4316], stor[_4200]
                                                else:
                                                    require uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                    require stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) / uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) == stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0
                                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                    _5188 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                    if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                                        _5600 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                        if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4316]
                                                            emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor[_4316], stor[_4200]
                                                        else:
                                                            require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                            balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            require ext_code.size(address(stor1[_4200].field_0))
                                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args feeCollectorAddress, stor[_5600] / 10^18
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4316]
                                                            emit 0x3ef75dd7: _4198 << 192, stor[_4316], stor[_4200]
                                                    else:
                                                        require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                                        balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, stor[_5188] / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                            require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                            balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require ext_code.size(address(stor1[_4200].field_0))
                                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4316]
                                                        emit 0x3ef75dd7: _4198 << 192, stor[_4316], stor[_4200]
                                            else:
                                                require stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 - uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                require (stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) - (uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) / stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 - uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) == stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0
                                                balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 = (stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) - (uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) + balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0
                                                if not uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]):
                                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                    _5190 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                    if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                                        _5602 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                        if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4316]
                                                            emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor[_4316], stor[_4200]
                                                        else:
                                                            require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                            balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            require ext_code.size(address(stor1[_4200].field_0))
                                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args feeCollectorAddress, stor[_5602] / 10^18
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4316]
                                                            emit 0x3ef75dd7: _4198 << 192, stor[_4316], stor[_4200]
                                                    else:
                                                        require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                                        balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, stor[_5190] / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                            require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                            balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require ext_code.size(address(stor1[_4200].field_0))
                                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4316]
                                                        emit 0x3ef75dd7: _4198 << 192, stor[_4316], stor[_4200]
                                                else:
                                                    require uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                    require stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) / uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) == stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0
                                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                    _5280 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                    if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                                        _5884 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                        if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4316]
                                                            emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor[_4316], stor[_4200]
                                                        else:
                                                            require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                            balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            require ext_code.size(address(stor1[_4200].field_0))
                                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args feeCollectorAddress, stor[_5884] / 10^18
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4316]
                                                            emit 0x3ef75dd7: _4198 << 192, stor[_4316], stor[_4200]
                                                    else:
                                                        require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                                        balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, stor[_5280] / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                            require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                            balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require ext_code.size(address(stor1[_4200].field_0))
                                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4316]
                                                        emit 0x3ef75dd7: _4198 << 192, stor[_4316], stor[_4200]
                                    else:
                                        uint64(activeBuySize[mem[(32 * idx) + 128]][4][uint64(activeBuySize[mem[(32 * idx) + 128]][4][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0)].field_0) = uint64(activeBuySize[mem[(32 * idx) + 128]][4][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0)
                                        uint64(activeBuySize[mem[(32 * idx) + 128]][4][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_64) = 0
                                        uint128(activeBuySize[mem[(32 * idx) + 128]][4][mem[(32 * idx) + (32 * arg1.length) + 160] << 192].field_0) = 0
                                        uint64(activeBuySize[mem[(32 * idx) + 128]].field_768) = uint64(uint64(activeBuySize[mem[(32 * idx) + 128]].field_768) - 1)
                                        if stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 <= uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]):
                                            if not stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256:
                                                balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256
                                                _4916 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                                    _5332 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                    if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[mem[0]].field_256
                                                        emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor1[mem[0]].field_256, stor[_4200]
                                                    else:
                                                        require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                        balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args feeCollectorAddress, stor[_5332] / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                                        emit 0x3ef75dd7: _4198 << 192, stor1[_4199].field_0, stor[_4200]
                                                else:
                                                    require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    require ext_code.size(address(stor1[_4200].field_0))
                                                    call address(stor1[_4200].field_0).0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, stor[_4916] / 10^18
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                        require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                        balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                                    emit 0x3ef75dd7: _4198 << 192, stor1[_4199].field_0, stor[_4200]
                                            else:
                                                require stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256
                                                require stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 / stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 == stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0
                                                balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256
                                                _5108 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                                    _5484 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                    if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[mem[0]].field_256
                                                        emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor1[mem[0]].field_256, stor[_4200]
                                                    else:
                                                        require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                        balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args feeCollectorAddress, stor[_5484] / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                                        emit 0x3ef75dd7: _4198 << 192, stor1[_4199].field_0, stor[_4200]
                                                else:
                                                    require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                    require ext_code.size(address(stor1[_4200].field_0))
                                                    call address(stor1[_4200].field_0).0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, stor[_5108] / 10^18
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                        require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                        balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor1[_4199].field_0
                                                    emit 0x3ef75dd7: _4198 << 192, stor1[_4199].field_0, stor[_4200]
                                        else:
                                            _4315 = sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 2)
                                            if not stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 - uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]):
                                                balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 = (stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) - (uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) + balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0
                                                if not uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]):
                                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                    _5022 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                    if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                                        _5398 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                        if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4315]
                                                            emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor[_4315], stor[_4200]
                                                        else:
                                                            require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                            balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            require ext_code.size(address(stor1[_4200].field_0))
                                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args feeCollectorAddress, stor[_5398] / 10^18
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4315]
                                                            emit 0x3ef75dd7: _4198 << 192, stor[_4315], stor[_4200]
                                                    else:
                                                        require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                                        balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, stor[_5022] / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                            require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                            balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require ext_code.size(address(stor1[_4200].field_0))
                                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4315]
                                                        emit 0x3ef75dd7: _4198 << 192, stor[_4315], stor[_4200]
                                                else:
                                                    require uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                    require stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) / uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) == stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0
                                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                    _5184 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                    if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                                        _5591 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                        if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4315]
                                                            emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor[_4315], stor[_4200]
                                                        else:
                                                            require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                            balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            require ext_code.size(address(stor1[_4200].field_0))
                                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args feeCollectorAddress, stor[_5591] / 10^18
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4315]
                                                            emit 0x3ef75dd7: _4198 << 192, stor[_4315], stor[_4200]
                                                    else:
                                                        require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                                        balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, stor[_5184] / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                            require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                            balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require ext_code.size(address(stor1[_4200].field_0))
                                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4315]
                                                        emit 0x3ef75dd7: _4198 << 192, stor[_4315], stor[_4200]
                                            else:
                                                require stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 - uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                require (stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) - (uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) / stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 - uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) == stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0
                                                balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 = (stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_256 * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) - (uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) * stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0) + balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0
                                                if not uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]):
                                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                    _5186 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                    if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                                        _5593 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                        if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4315]
                                                            emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor[_4315], stor[_4200]
                                                        else:
                                                            require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                            balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            require ext_code.size(address(stor1[_4200].field_0))
                                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args feeCollectorAddress, stor[_5593] / 10^18
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4315]
                                                            emit 0x3ef75dd7: _4198 << 192, stor[_4315], stor[_4200]
                                                    else:
                                                        require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                                        balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, stor[_5186] / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                            require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                            balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require ext_code.size(address(stor1[_4200].field_0))
                                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4315]
                                                        emit 0x3ef75dd7: _4198 << 192, stor[_4315], stor[_4200]
                                                else:
                                                    require uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                    require stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) / uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)]) == stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0
                                                    balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += stor1[mem[(32 * idx) + (32 * arg1.length) + 184 len 8]].field_0 * uint256(sub_cec9dc29[address(stor4[mem[(32 * idx) + 128]].field_256)])
                                                    _5278 = sha3(address(msg.sender), sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                    if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18:
                                                        _5873 = sha3(feeCollectorAddress, sha3(address(activeBuySize[mem[(32 * idx) + 128]].field_256), 5))
                                                        if not balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18:
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4315]
                                                            emit 0x3ef75dd7: mem[(32 * arg2.length) + (32 * arg1.length) + 160], stor[_4315], stor[_4200]
                                                        else:
                                                            require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18 == 10^18
                                                            balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][stor6].field_0 / 10^18
                                                            require ext_code.size(address(stor1[_4200].field_0))
                                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args feeCollectorAddress, stor[_5873] / 10^18
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4315]
                                                            emit 0x3ef75dd7: _4198 << 192, stor[_4315], stor[_4200]
                                                    else:
                                                        require balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        require 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 / balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18 == 10^18
                                                        balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 += -1 * 10^18 * balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor4[mem[(32 * idx) + 128]].field_256)][address(msg.sender)].field_0 / 10^18
                                                        require ext_code.size(address(stor1[_4200].field_0))
                                                        call address(stor1[_4200].field_0).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, stor[_5278] / 10^18
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        if balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18:
                                                            require balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 / balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18 == 10^18
                                                            balances[address(stor1[_4200].field_0)][stor6].field_0 += -1 * 10^18 * balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require ext_code.size(address(stor1[_4200].field_0))
                                                            call address(stor1[_4200].field_0).0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args feeCollectorAddress, balances[address(stor1[_4200].field_0)][stor6].field_0 / 10^18
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = uint64(_4198)
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = stor[_4315]
                                                        emit 0x3ef75dd7: _4198 << 192, stor[_4315], stor[_4200]
                mem[0] = uint64(_4198)
                mem[32] = 1
                stor1[_4198 << 192].field_0 = 0
                stor1[_4198 << 192].field_256 = 0
                Mask(168, 0, stor1[_4198 << 192].field_512) = 0
            idx = idx + 1
            continue 
        return 1
    emit Error(0x496e76616c6964206f72646572206c6973740000000000000000000000000000);
    return 0
}



}
