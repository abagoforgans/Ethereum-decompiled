contract main {


// =======================  Init code  ======================


const _fallback = code.data[25 len 13490]




// =====================  Runtime code  =====================


#
#  - submitBuyOrder(bytes32 arg1, uint256 arg2, uint256 arg3)
#  - submitSellOrderWithPosition(bytes32 arg1, uint256 arg2, uint256 arg3, uint64 arg4, bool arg5)
#  - submitTotalBuyOrder(bytes32 arg1, uint256 arg2, uint256 arg3)
#  - submitBuyOrderWithPosition(bytes32 arg1, uint256 arg2, uint256 arg3, uint64 arg4, bool arg5)
#  - submitTotalSellOrder(bytes32 arg1, uint256 arg2, uint256 arg3)
#  - submitSellOrder(bytes32 arg1, uint256 arg2, uint256 arg3)
#
address stor0;
array of uint256 balances;
array of address stor2;
mapping of struct stor3;
mapping of struct assets;
array of struct markets;
mapping of struct activeBuySize;

function getActiveBuySize(bytes32 arg1) {
    return uint64(activeBuySize[arg1].field_768)
}

function getActiveSellSize(bytes32 arg1) {
    return uint64(activeBuySize[arg1].field_1280)
}

function getMarketInfo(bytes32 arg1) {
    return activeBuySize[arg1].field_0, address(activeBuySize[arg1].field_256), address(activeBuySize[arg1].field_512)
}

function markets(uint256 arg1) {
    require arg1 < markets.length
    return markets[arg1].field_0
}

function balances(address arg1, address arg2) {
    return balances[arg1][arg2]
}

function assets(address arg1) {
    require uint8(assets[arg1].field_0) <= 2
    require uint8(assets[arg1].field_8) <= 2
    return uint8(assets[arg1].field_0), uint8(assets[arg1].field_8)
}

function _fallback() payable {
    revert 
}

function setupAmbi2(address arg1) {
    if stor0:
        return 0
    require ext_code.size(arg1)
    call arg1.claimFor(address rg1, address rg2) with:
         gas gas_remaining - 50 wei
        args address(this.address), msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        require ext_code.size(arg1)
        call arg1.isOwner(address rg1, address rg2) with:
             gas gas_remaining - 50 wei
            args address(this.address), msg.sender
        require ext_call.success
        if not ext_call.return_data[0]:
            return 0
    stor0 = arg1
    return 1
}

function sub_f58f2bbc(?) {
    if not stor0:
        return 0
    require ext_code.size(stor0)
    call stor0.hasRole(address rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 50 wei
        args address(this.address), 0x61646d696e000000000000000000000000000000000000000000000000000000, msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    require uint8(assets[address(arg1)].field_0) <= 2
    if uint8(assets[address(arg1)].field_0):
        emit Error('Already registered');
        return 0
    require arg2 <= 2
    require arg2 <= 2
    uint8(assets[address(arg1)].field_0) = arg2
    uint8(assets[address(arg1)].field_8) = 1
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
    mem[32] = 6
    s = 0
    idx = uint64(stor3[sha3(mem[0 len 64])].field_64)
    while uint64(idx):
        mem[0] = uint64(idx)
        mem[32] = 3
        if arg2 > stor3[idx << 192].field_0:
            return uint64(idx)
        mem[100] = sha3(arg1, 6) + 3
        mem[132] = uint64(idx)
        require ext_code.size(0xce07d7a2a690be1dfb8c6d36d62e89aaae9bc290)
        delegate 0xce07d7a2a690be1dfb8c6d36d62e89aaae9bc290.0xb67700f4 with:
             gas gas_remaining - 50 wei
            args sha3(arg1, 6) + 3, uint64(idx)
        mem[96] = delegate.return_data[0]
        require delegate.return_code
        s = sha3(idx << 192, 3)
        idx = delegate.return_data[0]
        continue 
    return 0
}

function getSellPosition(bytes32 arg1, uint256 arg2) {
    mem[0] = arg1
    mem[32] = 6
    s = 0
    idx = uint64(markets[sha3(mem[0 len 64])].field_64)
    while uint64(idx):
        mem[0] = uint64(idx)
        mem[32] = 3
        if arg2 < stor3[idx << 192].field_0:
            return uint64(idx)
        mem[100] = sha3(arg1, 6) + 5
        mem[132] = uint64(idx)
        require ext_code.size(0xce07d7a2a690be1dfb8c6d36d62e89aaae9bc290)
        delegate 0xce07d7a2a690be1dfb8c6d36d62e89aaae9bc290.0xb67700f4 with:
             gas gas_remaining - 50 wei
            args sha3(arg1, 6) + 5, uint64(idx)
        mem[96] = delegate.return_data[0]
        require delegate.return_code
        s = sha3(idx << 192, 3)
        idx = delegate.return_data[0]
        continue 
    return 0
}

function getNextActiveBuyDetails(bytes32 arg1, uint64 arg2) {
    if not arg2:
        return uint64(activeBuySize[arg1].field_768), 
               address(stor3[uint64(stor6[arg1].field_768)].field_512),
               stor3[uint64(stor6[arg1].field_768)].field_0,
               stor3[uint64(stor6[arg1].field_768)].field_256
    require ext_code.size(0xce07d7a2a690be1dfb8c6d36d62e89aaae9bc290)
    delegate 0xce07d7a2a690be1dfb8c6d36d62e89aaae9bc290.0xb67700f4 with:
         gas gas_remaining - 50 wei
        args sha3(arg1, 6) + 3, arg2
    require delegate.return_code
    return delegate.return_data[0] << 192, 
           address(stor3[delegate.return_data[24 len 8]].field_512),
           stor3[delegate.return_data[24 len 8]].field_0,
           stor3[delegate.return_data[24 len 8]].field_256
}

function getNextActiveSellDetails(bytes32 arg1, uint64 arg2) {
    if not arg2:
        return uint64(activeBuySize[arg1].field_1280), 
               address(stor3[uint64(stor6[arg1].field_1280)].field_512),
               stor3[uint64(stor6[arg1].field_1280)].field_0,
               stor3[uint64(stor6[arg1].field_1280)].field_256
    require ext_code.size(0xce07d7a2a690be1dfb8c6d36d62e89aaae9bc290)
    delegate 0xce07d7a2a690be1dfb8c6d36d62e89aaae9bc290.0xb67700f4 with:
         gas gas_remaining - 50 wei
        args sha3(arg1, 6) + 5, arg2
    require delegate.return_code
    return delegate.return_data[0] << 192, 
           address(stor3[delegate.return_data[24 len 8]].field_512),
           stor3[delegate.return_data[24 len 8]].field_0,
           stor3[delegate.return_data[24 len 8]].field_256
}

function withdraw(address arg1, uint256 arg2) {
    require uint8(assets[address(arg1)].field_0) <= 2
    if not uint8(assets[address(arg1)].field_0):
        emit Error('Invalid asset');
        return 0
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 50 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 50 wei
        args msg.sender, arg2
    require ext_call.success
    if not ext_call.return_data[0]:
        emit Error('Withdraw failed');
        return 0
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 50 wei
        args this.address
    require ext_call.success
    require uint8(assets[address(arg1)].field_0) <= 2
    require balances[address(arg1)][address(msg.sender)] >= 0
    return 1
}

function withdrawTo(address arg1, address arg2, uint256 arg3) {
    require uint8(assets[address(arg1)].field_0) <= 2
    if not uint8(assets[address(arg1)].field_0):
        emit Error('Invalid asset');
        return 0
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 50 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 50 wei
        args address(arg2), arg3
    require ext_call.success
    if not ext_call.return_data[0]:
        emit Error('Withdraw failed');
        return 0
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 50 wei
        args this.address
    require ext_call.success
    require uint8(assets[address(arg1)].field_0) <= 2
    require balances[address(arg1)][address(msg.sender)] >= 0
    return 1
}

function registerMarket(bytes32 arg1, address arg2, address arg3) {
    if not stor0:
        return 0
    require ext_code.size(stor0)
    call stor0.hasRole(address rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 50 wei
        args address(this.address), 0x61646d696e000000000000000000000000000000000000000000000000000000, msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    require uint8(assets[address(arg2)].field_0) <= 2
    if uint8(assets[address(arg2)].field_0) != 1:
        emit Error('Invalid assets');
        return 0
    require uint8(assets[address(arg3)].field_0) <= 2
    if uint8(assets[address(arg3)].field_0) != 2:
        emit Error('Invalid assets');
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

function sub_9e869157(?) {
    if not stor0:
        return 0
    require ext_code.size(stor0)
    call stor0.hasRole(address rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 50 wei
        args address(this.address), 0x61646d696e000000000000000000000000000000000000000000000000000000, msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    require uint8(assets[address(arg1)].field_0) <= 2
    if uint8(assets[address(arg1)].field_0):
        emit Error('Already registered');
        return 0
    require ext_code.size(arg1)
    call arg1.multiAsset() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0x95d89b41 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2, bytes32 rg3) with:
         gas gas_remaining - 50 wei
        args address(arg1), -1, ext_call.return_data[0]
    require ext_call.success
    if not ext_call.return_data[0]:
        emit Error('Setup failed');
        return 0
    require arg2 <= 2
    require arg2 <= 2
    uint8(assets[address(arg1)].field_0) = arg2
    uint8(assets[address(arg1)].field_8) = 2
    return 1
}

function cancelOrder(bytes32 arg1, uint64 arg2) {
    if address(stor3[arg2 << 192].field_512) != msg.sender:
        emit Error('Invalid order');
        return 0
    require uint8(stor3[arg2 << 192].field_672) <= 1
    if uint8(stor3[arg2 << 192].field_672):
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
        balances[address(stor6[arg1].field_512)][address(msg.sender)] += stor3[arg2 << 192].field_256
        emit 0x2115f62e: arg2, activeBuySize[arg1].field_0
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
        if stor3[arg2 << 192].field_256:
            require stor3[arg2 << 192].field_0 * stor3[arg2 << 192].field_256 / stor3[arg2 << 192].field_256 == stor3[arg2 << 192].field_0
        balances[address(stor6[arg1].field_256)][address(msg.sender)] += stor3[arg2 << 192].field_0 * stor3[arg2 << 192].field_256
        emit 0x51a5b22c: arg2, activeBuySize[arg1].field_0
    stor3[arg2 << 192].field_0 = 0
    stor3[arg2 << 192].field_256 = 0
    Mask(168, 0, stor3[arg2 << 192].field_512) = 0
    return 1
}

function getActiveBuyDetails(bytes32 arg1) {
    mem[96] = 0
    mem[0] = arg1
    mem[32] = 6
    mem[128] = 0
    mem[160] = 0
    mem[192] = uint64(activeBuySize[arg1].field_768)
    mem[64] = (32 * uint64(activeBuySize[arg1].field_768)) + 224
    if not uint64(activeBuySize[arg1].field_768):
        mem[0] = uint64(activeBuySize[arg1].field_832)
        mem[32] = 3
        s = balances[sha3(mem[0 len 64])]
        t = stor[sha3(mem[0 len 64])]
        u = stor2[sha3(mem[0 len 64])]
        idx = uint64(activeBuySize[arg1].field_832)
        v = 0
        while uint64(idx):
            _44 = mem[64]
            mem[64] = mem[64] + 128
            mem[_44] = uint64(idx)
            mem[_44 + 32] = address(u)
            mem[_44 + 64] = t
            mem[_44 + 96] = s
            require v < mem[192]
            mem[(32 * v) + 224] = _44
            if not uint64(idx):
                mem[0] = uint64(activeBuySize[arg1].field_832)
                mem[32] = 3
                s = stor3[uint64(stor6[arg1].field_768)].field_256
                t = stor3[uint64(stor6[arg1].field_768)].field_0
                u = address(stor3[uint64(stor6[arg1].field_768)].field_512)
                idx = uint64(activeBuySize[arg1].field_832)
                v = v + 1
                continue 
            mem[mem[64] + 4] = sha3(arg1, 6) + 3
            mem[mem[64] + 36] = uint64(idx)
            require ext_code.size(0xce07d7a2a690be1dfb8c6d36d62e89aaae9bc290)
            delegate 0xce07d7a2a690be1dfb8c6d36d62e89aaae9bc290.0xb67700f4 with:
                 gas gas_remaining - 50 wei
                args sha3(arg1, 6) + 3, uint64(idx)
            mem[mem[64]] = delegate.return_data[0]
            require delegate.return_code
            mem[0] = uint64(delegate.return_data[0])
            mem[32] = 3
            s = stor3[delegate.return_data[0] << 192].field_256
            t = stor3[delegate.return_data[0] << 192].field_0
            u = address(stor3[delegate.return_data[0] << 192].field_512)
            idx = delegate.return_data[0]
            v = v + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[192]
        _58 = mem[192]
        s = mem[64] + 64
        idx = 0
        while idx < _58:
            _111 = mem[(32 * idx) + 224]
            mem[s] = mem[mem[(32 * idx) + 224]]
            u = _111
            v = u
            t = 128
            while t > 32:
                mem[v + 32] = mem[u + 32]
                u = u + 32
                v = v + 32
                t = t - 32
                continue 
            u = _111 + 224
            idx = idx + 1
            continue 
    else:
        mem[64] = (32 * uint64(activeBuySize[arg1].field_768)) + 352
        mem[var11001] = 0
        if var11002 - 1:
            var11001 = var11001 + 32
            var11002 = var11002 - 1
            continue 
        mem[var12001] = (32 * uint64(activeBuySize[arg1].field_768)) + 224
        if var12002 - 1:
            mem[64] = (32 * uint64(activeBuySize[arg1].field_768)) + 480
            var11001 = (32 * uint64(activeBuySize[arg1].field_768)) + 352
            var11002 = 4
            continue 
        mem[0] = uint64(activeBuySize[arg1].field_832)
        mem[32] = 3
        s = balances[sha3(mem[0 len 64])]
        t = stor[sha3(mem[0 len 64])]
        u = stor2[sha3(mem[0 len 64])]
        idx = uint64(activeBuySize[arg1].field_832)
        v = 0
        while uint64(idx):
            _152 = mem[64]
            mem[64] = mem[64] + 128
            mem[_152] = uint64(idx)
            mem[_152 + 32] = address(u)
            mem[_152 + 64] = t
            mem[_152 + 96] = s
            require v < mem[192]
            mem[(32 * v) + 224] = _152
            if not uint64(idx):
                mem[0] = uint64(activeBuySize[arg1].field_832)
                mem[32] = 3
                s = stor3[uint64(stor6[arg1].field_768)].field_256
                t = stor3[uint64(stor6[arg1].field_768)].field_0
                u = address(stor3[uint64(stor6[arg1].field_768)].field_512)
                idx = uint64(activeBuySize[arg1].field_832)
                v = v + 1
                continue 
            mem[mem[64] + 4] = sha3(arg1, 6) + 3
            mem[mem[64] + 36] = uint64(idx)
            require ext_code.size(0xce07d7a2a690be1dfb8c6d36d62e89aaae9bc290)
            delegate 0xce07d7a2a690be1dfb8c6d36d62e89aaae9bc290.0xb67700f4 with:
                 gas gas_remaining - 50 wei
                args sha3(arg1, 6) + 3, uint64(idx)
            mem[mem[64]] = delegate.return_data[0]
            require delegate.return_code
            mem[0] = uint64(delegate.return_data[0])
            mem[32] = 3
            s = stor3[delegate.return_data[0] << 192].field_256
            t = stor3[delegate.return_data[0] << 192].field_0
            u = address(stor3[delegate.return_data[0] << 192].field_512)
            idx = delegate.return_data[0]
            v = v + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[192]
        _166 = mem[192]
        s = mem[64] + 64
        idx = 0
        while idx < _166:
            _185 = mem[(32 * idx) + 224]
            mem[s] = mem[mem[(32 * idx) + 224]]
            u = _185
            v = u
            t = 128
            while t > 32:
                mem[v + 32] = mem[u + 32]
                u = u + 32
                v = v + 32
                t = t - 32
                continue 
            u = _185 + 224
            idx = idx + 1
            continue 
    return memory
      from mem[64]
       len s - mem[64]
}

function getActiveSellDetails(bytes32 arg1) {
    mem[96] = 0
    mem[0] = arg1
    mem[32] = 6
    mem[128] = 0
    mem[160] = 0
    mem[192] = uint64(activeBuySize[arg1].field_1280)
    mem[64] = (32 * uint64(activeBuySize[arg1].field_1280)) + 224
    if not uint64(activeBuySize[arg1].field_1280):
        mem[0] = uint64(activeBuySize[arg1].field_1344)
        mem[32] = 3
        s = balances[sha3(mem[0 len 64])]
        t = stor[sha3(mem[0 len 64])]
        u = stor2[sha3(mem[0 len 64])]
        idx = uint64(activeBuySize[arg1].field_1344)
        v = 0
        while uint64(idx):
            _44 = mem[64]
            mem[64] = mem[64] + 128
            mem[_44] = uint64(idx)
            mem[_44 + 32] = address(u)
            mem[_44 + 64] = t
            mem[_44 + 96] = s
            require v < mem[192]
            mem[(32 * v) + 224] = _44
            if not uint64(idx):
                mem[0] = uint64(activeBuySize[arg1].field_1344)
                mem[32] = 3
                s = stor3[uint64(stor6[arg1].field_1280)].field_256
                t = stor3[uint64(stor6[arg1].field_1280)].field_0
                u = address(stor3[uint64(stor6[arg1].field_1280)].field_512)
                idx = uint64(activeBuySize[arg1].field_1344)
                v = v + 1
                continue 
            mem[mem[64] + 4] = sha3(arg1, 6) + 5
            mem[mem[64] + 36] = uint64(idx)
            require ext_code.size(0xce07d7a2a690be1dfb8c6d36d62e89aaae9bc290)
            delegate 0xce07d7a2a690be1dfb8c6d36d62e89aaae9bc290.0xb67700f4 with:
                 gas gas_remaining - 50 wei
                args sha3(arg1, 6) + 5, uint64(idx)
            mem[mem[64]] = delegate.return_data[0]
            require delegate.return_code
            mem[0] = uint64(delegate.return_data[0])
            mem[32] = 3
            s = stor3[delegate.return_data[0] << 192].field_256
            t = stor3[delegate.return_data[0] << 192].field_0
            u = address(stor3[delegate.return_data[0] << 192].field_512)
            idx = delegate.return_data[0]
            v = v + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[192]
        _58 = mem[192]
        s = mem[64] + 64
        idx = 0
        while idx < _58:
            _111 = mem[(32 * idx) + 224]
            mem[s] = mem[mem[(32 * idx) + 224]]
            u = _111
            v = u
            t = 128
            while t > 32:
                mem[v + 32] = mem[u + 32]
                u = u + 32
                v = v + 32
                t = t - 32
                continue 
            u = _111 + 224
            idx = idx + 1
            continue 
    else:
        mem[64] = (32 * uint64(activeBuySize[arg1].field_1280)) + 352
        mem[var11001] = 0
        if var11002 - 1:
            var11001 = var11001 + 32
            var11002 = var11002 - 1
            continue 
        mem[var12001] = (32 * uint64(activeBuySize[arg1].field_1280)) + 224
        if var12002 - 1:
            mem[64] = (32 * uint64(activeBuySize[arg1].field_1280)) + 480
            var11001 = (32 * uint64(activeBuySize[arg1].field_1280)) + 352
            var11002 = 4
            continue 
        mem[0] = uint64(activeBuySize[arg1].field_1344)
        mem[32] = 3
        s = balances[sha3(mem[0 len 64])]
        t = stor[sha3(mem[0 len 64])]
        u = stor2[sha3(mem[0 len 64])]
        idx = uint64(activeBuySize[arg1].field_1344)
        v = 0
        while uint64(idx):
            _152 = mem[64]
            mem[64] = mem[64] + 128
            mem[_152] = uint64(idx)
            mem[_152 + 32] = address(u)
            mem[_152 + 64] = t
            mem[_152 + 96] = s
            require v < mem[192]
            mem[(32 * v) + 224] = _152
            if not uint64(idx):
                mem[0] = uint64(activeBuySize[arg1].field_1344)
                mem[32] = 3
                s = stor3[uint64(stor6[arg1].field_1280)].field_256
                t = stor3[uint64(stor6[arg1].field_1280)].field_0
                u = address(stor3[uint64(stor6[arg1].field_1280)].field_512)
                idx = uint64(activeBuySize[arg1].field_1344)
                v = v + 1
                continue 
            mem[mem[64] + 4] = sha3(arg1, 6) + 5
            mem[mem[64] + 36] = uint64(idx)
            require ext_code.size(0xce07d7a2a690be1dfb8c6d36d62e89aaae9bc290)
            delegate 0xce07d7a2a690be1dfb8c6d36d62e89aaae9bc290.0xb67700f4 with:
                 gas gas_remaining - 50 wei
                args sha3(arg1, 6) + 5, uint64(idx)
            mem[mem[64]] = delegate.return_data[0]
            require delegate.return_code
            mem[0] = uint64(delegate.return_data[0])
            mem[32] = 3
            s = stor3[delegate.return_data[0] << 192].field_256
            t = stor3[delegate.return_data[0] << 192].field_0
            u = address(stor3[delegate.return_data[0] << 192].field_512)
            idx = delegate.return_data[0]
            v = v + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[192]
        _166 = mem[192]
        s = mem[64] + 64
        idx = 0
        while idx < _166:
            _185 = mem[(32 * idx) + 224]
            mem[s] = mem[mem[(32 * idx) + 224]]
            u = _185
            v = u
            t = 128
            while t > 32:
                mem[v + 32] = mem[u + 32]
                u = u + 32
                v = v + 32
                t = t - 32
                continue 
            u = _185 + 224
            idx = idx + 1
            continue 
    return memory
      from mem[64]
       len s - mem[64]
}



}
