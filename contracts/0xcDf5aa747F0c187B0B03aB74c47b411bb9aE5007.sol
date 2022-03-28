contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 12673]




// =====================  Runtime code  =====================


#
#  - submitBuyOrder(bytes32 arg1, uint256 arg2, uint256 arg3)
#  - sub_3fcd6a85(?)
#  - sub_ea6b1941(?)
#
mapping of uint256 balances;
uint64 stor1;
mapping of struct stor2;
mapping of struct assets;
array of struct markets;
mapping of struct activeBuySize;

function getActiveBuySize(bytes32 arg1) {
    return activeBuySize[arg1].field_768
}

function getActiveSellSize(bytes32 arg1) {
    return activeBuySize[arg1].field_1280
}

function getMarketInfo(bytes32 arg1) {
    return activeBuySize[arg1].field_0, activeBuySize[arg1].field_256, activeBuySize[arg1].field_512
}

function markets(uint256 arg1) {
    require arg1 < markets.length
    return markets[arg1].field_0
}

function balances(address arg1, address arg2) {
    return balances[arg1][arg2]
}

function assets(address arg1) {
    require assets[arg1].field_0 <= 2
    require assets[arg1].field_8 <= 2
    return assets[arg1].field_0, assets[arg1].field_8
}

function _fallback() payable {
    revert
}

function sub_f58f2bbc(?) {
    require assets[address(arg1)].field_0 <= 2
    if assets[address(arg1)].field_0:
        emit Error('Already registered');
        return 0
    require arg2 <= 2
    require arg2 <= 2
    assets[address(arg1)].field_0 = arg2
    assets[address(arg1)].field_8 = 1
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

function registerMarket(bytes32 arg1, address arg2, address arg3) {
    require assets[address(arg2)].field_0 <= 2
    if assets[address(arg2)].field_0 != 1:
        emit Error('Invalid assets');
        return 0
    require assets[address(arg3)].field_0 <= 2
    if assets[address(arg3)].field_0 != 2:
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
    activeBuySize[arg1].field_256 = arg2
    activeBuySize[arg1].field_512 = arg3
    return 1
}

function getBuyPosition(bytes32 arg1, uint256 arg2) {
    mem[0] = arg1
    mem[32] = 5
    s = 0
    idx = assets[sha3(mem[0 len 64])].field_64
    while uint64(idx):
        mem[0] = uint64(idx)
        mem[32] = 2
        if arg2 > stor2[idx << 192].field_0:
            return uint64(idx)
        mem[100] = sha3(arg1, 5) + 3
        mem[132] = uint64(idx)
        require ext_code.size(0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01)
        delegate 0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01.0xb67700f4 with:
             gas gas_remaining - 50 wei
            args sha3(arg1, 5) + 3, uint64(idx)
        mem[96] = delegate.return_data[0]
        require delegate.return_code
        s = sha3(idx << 192, 2)
        idx = delegate.return_data[0]
        continue 
    return 0
}

function getSellPosition(bytes32 arg1, uint256 arg2) {
    mem[0] = arg1
    mem[32] = 5
    s = 0
    idx = activeBuySize[sha3(mem[0 len 64])].field_64
    while uint64(idx):
        mem[0] = uint64(idx)
        mem[32] = 2
        if arg2 < stor2[idx << 192].field_0:
            return uint64(idx)
        mem[100] = sha3(arg1, 5) + 5
        mem[132] = uint64(idx)
        require ext_code.size(0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01)
        delegate 0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01.0xb67700f4 with:
             gas gas_remaining - 50 wei
            args sha3(arg1, 5) + 5, uint64(idx)
        mem[96] = delegate.return_data[0]
        require delegate.return_code
        s = sha3(idx << 192, 2)
        idx = delegate.return_data[0]
        continue 
    return 0
}

function withdraw(address arg1, uint256 arg2) {
    require assets[address(arg1)].field_0 <= 2
    if not assets[address(arg1)].field_0:
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
    require assets[address(arg1)].field_0 <= 2
    require balances[address(arg1)][address(msg.sender)] >= 0
    return 1
}

function withdrawTo(address arg1, address arg2, uint256 arg3) {
    require assets[address(arg1)].field_0 <= 2
    if not assets[address(arg1)].field_0:
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
    require assets[address(arg1)].field_0 <= 2
    require balances[address(arg1)][address(msg.sender)] >= 0
    return 1
}

function sub_ba1437d6(?) {
    require assets[address(arg1)].field_0 <= 2
    if assets[address(arg1)].field_0:
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
    assets[address(arg1)].field_0 = arg2
    assets[address(arg1)].field_8 = 2
    return 1
}

function getActiveBuyDetails(bytes32 arg1) {
    s = 0
    idx = activeBuySize[arg1].field_832
    s = 0
    while uint64(idx):
        mem[0] = uint64(idx)
        mem[32] = 2
        require s < uint64(5 * activeBuySize[arg1].field_768)
        mem[(32 * s) + 224] = uint64(idx)
        require s + 1 < uint64(5 * activeBuySize[arg1].field_768)
        mem[(32 * s + 1) + 224] = stor2[idx << 192].field_768
        require s + 2 < uint64(5 * activeBuySize[arg1].field_768)
        mem[(32 * s + 2) + 224] = stor2[idx << 192].field_0
        require s + 3 < uint64(5 * activeBuySize[arg1].field_768)
        mem[(32 * s + 3) + 224] = stor2[idx << 192].field_256
        require s + 4 < uint64(5 * activeBuySize[arg1].field_768)
        mem[(32 * s + 4) + 224] = stor2[idx << 192].field_512
        mem[(32 * uint64(5 * activeBuySize[arg1].field_768)) + 228] = sha3(arg1, 5) + 3
        mem[(32 * uint64(5 * activeBuySize[arg1].field_768)) + 260] = uint64(idx)
        require ext_code.size(0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01)
        delegate 0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01.0xb67700f4 with:
             gas gas_remaining - 50 wei
            args sha3(arg1, 5) + 3, uint64(idx)
        mem[(32 * uint64(5 * activeBuySize[arg1].field_768)) + 224] = delegate.return_data[0]
        require delegate.return_code
        s = sha3(idx << 192, 2)
        idx = delegate.return_data[0]
        s = s + 5
        continue 
    mem[(32 * uint64(5 * activeBuySize[arg1].field_768)) + 224] = 32
    mem[(32 * uint64(5 * activeBuySize[arg1].field_768)) + 256] = uint64(5 * activeBuySize[arg1].field_768)
    if uint64(5 * activeBuySize[arg1].field_768):
        mem[(32 * uint64(5 * activeBuySize[arg1].field_768)) + 288] = mem[224]
        mem[(32 * uint64(5 * activeBuySize[arg1].field_768)) + 320 len floor32((32 * uint64(5 * activeBuySize[arg1].field_768)) - 1)] = mem[256 len (32 * uint64(5 * activeBuySize[arg1].field_768)) + 32], mem[224], mem[(32 * uint64(5 * activeBuySize[arg1].field_768)) + 320 len floor32((32 * uint64(5 * activeBuySize[arg1].field_768)) - 1) + -(32 * uint64(5 * activeBuySize[arg1].field_768)) - 64]
    return Array(len=5 * activeBuySize[arg1].field_768 << 192, data=mem[(32 * uint64(5 * activeBuySize[arg1].field_768)) + 288 len 32 * uint64(5 * activeBuySize[arg1].field_768)]), 
}

function getActiveSellDetails(bytes32 arg1) {
    s = 0
    idx = activeBuySize[arg1].field_1344
    s = 0
    while uint64(idx):
        mem[0] = uint64(idx)
        mem[32] = 2
        require s < uint64(5 * activeBuySize[arg1].field_1280)
        mem[(32 * s) + 224] = uint64(idx)
        require s + 1 < uint64(5 * activeBuySize[arg1].field_1280)
        mem[(32 * s + 1) + 224] = stor2[idx << 192].field_768
        require s + 2 < uint64(5 * activeBuySize[arg1].field_1280)
        mem[(32 * s + 2) + 224] = stor2[idx << 192].field_0
        require s + 3 < uint64(5 * activeBuySize[arg1].field_1280)
        mem[(32 * s + 3) + 224] = stor2[idx << 192].field_256
        require s + 4 < uint64(5 * activeBuySize[arg1].field_1280)
        mem[(32 * s + 4) + 224] = stor2[idx << 192].field_512
        mem[(32 * uint64(5 * activeBuySize[arg1].field_1280)) + 228] = sha3(arg1, 5) + 5
        mem[(32 * uint64(5 * activeBuySize[arg1].field_1280)) + 260] = uint64(idx)
        require ext_code.size(0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01)
        delegate 0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01.0xb67700f4 with:
             gas gas_remaining - 50 wei
            args sha3(arg1, 5) + 5, uint64(idx)
        mem[(32 * uint64(5 * activeBuySize[arg1].field_1280)) + 224] = delegate.return_data[0]
        require delegate.return_code
        s = sha3(idx << 192, 2)
        idx = delegate.return_data[0]
        s = s + 5
        continue 
    mem[(32 * uint64(5 * activeBuySize[arg1].field_1280)) + 224] = 32
    mem[(32 * uint64(5 * activeBuySize[arg1].field_1280)) + 256] = uint64(5 * activeBuySize[arg1].field_1280)
    if uint64(5 * activeBuySize[arg1].field_1280):
        mem[(32 * uint64(5 * activeBuySize[arg1].field_1280)) + 288] = mem[224]
        mem[(32 * uint64(5 * activeBuySize[arg1].field_1280)) + 320 len floor32((32 * uint64(5 * activeBuySize[arg1].field_1280)) - 1)] = mem[256 len (32 * uint64(5 * activeBuySize[arg1].field_1280)) + 32], mem[224], mem[(32 * uint64(5 * activeBuySize[arg1].field_1280)) + 320 len floor32((32 * uint64(5 * activeBuySize[arg1].field_1280)) - 1) + -(32 * uint64(5 * activeBuySize[arg1].field_1280)) - 64]
    return Array(len=5 * activeBuySize[arg1].field_1280 << 192, data=mem[(32 * uint64(5 * activeBuySize[arg1].field_1280)) + 288 len 32 * uint64(5 * activeBuySize[arg1].field_1280)]), 
}

function cancelOrder(bytes32 arg1, uint64 arg2) {
    if stor2[arg2 << 192].field_768 != msg.sender:
        emit Error('Invalid order');
        return 0
    require stor2[arg2 << 192].field_928 <= 1
    if stor2[arg2 << 192].field_928:
        if activeBuySize[arg1][6][arg2 << 192].field_0:
            activeBuySize[arg1][6][activeBuySize[arg1][6][arg2 << 192].field_0].field_64 = activeBuySize[arg1][6][arg2 << 192].field_64
            activeBuySize[arg1][6][arg2 << 192].field_0 = 0
        else:
            if not activeBuySize[arg1][6][arg2 << 192].field_64:
                if activeBuySize[arg1].field_1344 != arg2:
                    require activeBuySize[arg1].field_1408 == arg2
            if not activeBuySize[arg1][6][arg2 << 192].field_0:
                activeBuySize[arg1].field_1344 = activeBuySize[arg1][6][arg2 << 192].field_64
            else:
                activeBuySize[arg1][6][activeBuySize[arg1][6][arg2 << 192].field_0].field_64 = activeBuySize[arg1][6][arg2 << 192].field_64
                activeBuySize[arg1][6][arg2 << 192].field_0 = 0
        if not activeBuySize[arg1][6][arg2 << 192].field_64:
            activeBuySize[arg1].field_1408 = activeBuySize[arg1][6][arg2 << 192].field_0
        else:
            activeBuySize[arg1][6][activeBuySize[arg1][6][arg2 << 192].field_0].field_0 = activeBuySize[arg1][6][arg2 << 192].field_0
            activeBuySize[arg1][6][arg2 << 192].field_64 = 0
        activeBuySize[arg1][6][arg2 << 192].field_0 = 0
        activeBuySize[arg1].field_1280 = uint64(activeBuySize[arg1].field_1280 - 1)
        balances[stor5[arg1].field_512][address(msg.sender)] = stor2[arg2 << 192].field_256 - stor2[arg2 << 192].field_512 + balances[stor5[arg1].field_512][address(msg.sender)]
        emit 0xb1db0c9b: activeBuySize[arg1].field_0, arg2 << 192, stor2[arg2 << 192].field_512
    else:
        if activeBuySize[arg1][4][arg2 << 192].field_0:
            activeBuySize[arg1][4][activeBuySize[arg1][4][arg2 << 192].field_0].field_64 = activeBuySize[arg1][4][arg2 << 192].field_64
            activeBuySize[arg1][4][arg2 << 192].field_0 = 0
        else:
            if not activeBuySize[arg1][4][arg2 << 192].field_64:
                if activeBuySize[arg1].field_832 != arg2:
                    require activeBuySize[arg1].field_896 == arg2
            if not activeBuySize[arg1][4][arg2 << 192].field_0:
                activeBuySize[arg1].field_832 = activeBuySize[arg1][4][arg2 << 192].field_64
            else:
                activeBuySize[arg1][4][activeBuySize[arg1][4][arg2 << 192].field_0].field_64 = activeBuySize[arg1][4][arg2 << 192].field_64
                activeBuySize[arg1][4][arg2 << 192].field_0 = 0
        if not activeBuySize[arg1][4][arg2 << 192].field_64:
            activeBuySize[arg1].field_896 = activeBuySize[arg1][4][arg2 << 192].field_0
        else:
            activeBuySize[arg1][4][activeBuySize[arg1][4][arg2 << 192].field_0].field_0 = activeBuySize[arg1][4][arg2 << 192].field_0
            activeBuySize[arg1][4][arg2 << 192].field_64 = 0
        activeBuySize[arg1][4][arg2 << 192].field_0 = 0
        activeBuySize[arg1].field_768 = uint64(activeBuySize[arg1].field_768 - 1)
        balances[stor5[arg1].field_256][address(msg.sender)] = stor2[arg2 << 192].field_256 - stor2[arg2 << 192].field_512 + balances[stor5[arg1].field_256][address(msg.sender)]
        emit 0xb8d0ac6f: activeBuySize[arg1].field_0, arg2 << 192, stor2[arg2 << 192].field_0, stor2[arg2 << 192].field_512
    stor2[arg2 << 192].field_0 = 0
    stor2[arg2 << 192].field_256 = 0
    stor2[arg2 << 192].field_512 = 0
    stor2[arg2 << 192].field_768 = 0
    return 1
}

function submitSellOrder(bytes32 arg1, uint256 arg2, uint256 arg3) {
    if not activeBuySize[arg1].field_256:
        emit Error('Invalid market');
        return 0
    if not arg2:
        emit Error('Invalid price or amount');
        return 0
    if not arg3:
        emit Error('Invalid price or amount');
        return 0
    if balances[stor5[arg1].field_512][address(msg.sender)] >= arg3:
        mem[0] = msg.sender
        balances[stor5[arg1].field_512][address(msg.sender)] -= arg3
        require uint64(stor1 + 1)
        stor1 = uint64(stor1 + 1)
        mem[64] = 256
        mem[96] = arg2
        mem[128] = arg3
        mem[160] = 0
        mem[192] = msg.sender
        mem[224] = 1
        s = 0
        s = 0
        s = 0
        s = 0
        s = 0
        idx = activeBuySize[arg1].field_832
        s = 0
        t = 0
        while uint64(idx):
            if stor2[idx << 192].field_0 >= mem[96]:
                _4673 = mem[96]
                require mem[96]
                _4682 = mem[160]
                _4683 = mem[128]
                if mem[128] - mem[160] <= stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96]:
                    _4721 = mem[96]
                    if not mem[96]:
                        mem[0] = stor2[idx << 192].field_768
                        mem[32] = sha3(activeBuySize[arg1].field_512, 0)
                        balances[stor5[arg1].field_512][stor2[idx << 192].field_768] = mem[128] - mem[160] + balances[stor5[arg1].field_512][stor2[idx << 192].field_768]
                        if mem[128] - mem[160] > stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96]:
                            mem[160] = (stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96]) + mem[160]
                            if stor2[idx << 192].field_256 - (mem[128] * mem[96]) + (_4682 * mem[96]) - stor2[idx << 192].field_512 >= stor2[idx << 192].field_0:
                                stor2[idx << 192].field_512 = (mem[128] * mem[96]) - (_4682 * mem[96]) + stor2[idx << 192].field_512
                                mem[mem[64] + 64] = mem[96]
                                mem[mem[64] + 96] = (mem[128] * mem[96]) - (_4682 * mem[96])
                                emit 0x8bb250b1: activeBuySize[arg1].field_0, idx << 192, mem[96], (mem[128] * mem[96]) - (_4682 * mem[96])
                                mem[mem[64] + 4] = sha3(arg1, 5) + 3
                                mem[mem[64] + 36] = uint64(idx)
                                if ext_code.size(0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01):
                                    delegate 0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01.0xb67700f4 with:
                                         gas gas_remaining - 50 wei
                                        args sha3(arg1, 5) + 3, uint64(idx)
                                    mem[mem[64]] = delegate.return_data[0]
                                    if delegate.return_code:
                                        s = (_4683 * _4721) - (_4682 * _4721)
                                        s = _4683 - _4682
                                        s = _4683 - _4682
                                        s = stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4673
                                        s = sha3(idx << 192, 2)
                                        idx = delegate.return_data[0]
                                        s = s
                                        t = (_4683 * _4721) - (_4682 * _4721) + t
                                        continue 
                            else:
                                mem[0] = stor2[idx << 192].field_768
                                mem[32] = sha3(activeBuySize[arg1].field_256, 0)
                                balances[stor5[arg1].field_256][stor2[idx << 192].field_768] = balances[stor5[arg1].field_256][stor2[idx << 192].field_768] + stor2[idx << 192].field_256 - stor2[idx << 192].field_512 - (mem[128] * mem[96]) + (_4682 * mem[96])
                                mem[mem[64] + 32] = uint64(idx)
                                mem[mem[64] + 64] = mem[96]
                                mem[mem[64] + 96] = stor2[idx << 192].field_512 + (_4683 * mem[96]) - (_4682 * mem[96])
                                emit 0xb8d0ac6f: activeBuySize[arg1].field_0, idx << 192, mem[96], stor2[idx << 192].field_512 + (_4683 * mem[96]) - (_4682 * mem[96])
                                mem[0] = uint64(idx)
                                mem[32] = 2
                                stor2[idx << 192].field_0 = 0
                                stor2[idx << 192].field_256 = 0
                                stor2[idx << 192].field_512 = 0
                                stor2[idx << 192].field_768 = 0
                                mem[mem[64] + 4] = sha3(arg1, 5) + 3
                                mem[mem[64] + 36] = uint64(idx)
                                if ext_code.size(0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01):
                                    delegate 0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01.0xb67700f4 with:
                                         gas gas_remaining - 50 wei
                                        args sha3(arg1, 5) + 3, uint64(idx)
                                    mem[mem[64]] = delegate.return_data[0]
                                    if delegate.return_code:
                                        s = (_4683 * _4721) - (_4682 * _4721)
                                        s = _4683 - _4682
                                        s = _4683 - _4682
                                        s = stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4673
                                        s = sha3(idx << 192, 2)
                                        idx = delegate.return_data[0]
                                        s = idx
                                        t = (_4683 * _4721) - (_4682 * _4721) + t
                                        continue 
                            revert
                        if stor2[idx << 192].field_256 - (mem[128] * mem[96]) + (mem[160] * mem[96]) - stor2[idx << 192].field_512 >= stor2[idx << 192].field_0:
                            stor2[idx << 192].field_512 = (mem[128] * mem[96]) - (mem[160] * mem[96]) + stor2[idx << 192].field_512
                            _4850 = mem[96]
                            mem[mem[64]] = activeBuySize[arg1].field_0
                            mem[mem[64] + 32] = uint64(idx)
                            mem[mem[64] + 64] = _4850
                            mem[mem[64] + 96] = (_4683 * _4721) - (_4682 * _4721)
                            emit 0x8bb250b1: activeBuySize[arg1].field_0, idx << 192, _4850, (_4683 * _4721) - (_4682 * _4721)
                            if uint64(s):
                                mem[mem[64] + 4] = sha3(arg1, 5) + 3
                                mem[mem[64] + 36] = uint64(s)
                                require ext_code.size(0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01)
                                delegate 0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01.0xb67700f4 with:
                                     gas gas_remaining - 50 wei
                                    args sha3(arg1, 5) + 3, uint64(s)
                                mem[mem[64]] = delegate.return_data[0]
                                require delegate.return_code
                                s = 0
                                idx = activeBuySize[arg1].field_832
                                s = 0
                                while uint64(delegate.return_data[0]) != uint64(idx):
                                    mem[0] = uint64(idx)
                                    mem[32] = sha3(arg1, 5) + 4
                                    activeBuySize[arg1][4][idx << 192].field_0 = 0
                                    s = idx
                                    idx = activeBuySize[arg1][4][idx << 192].field_64
                                    s = s + 1
                                    continue 
                                activeBuySize[arg1][4][delegate.return_data[0] << 192].field_0 = 0
                                activeBuySize[arg1].field_768 = uint64(activeBuySize[arg1].field_768 - s)
                                activeBuySize[arg1].field_832 = uint64(delegate.return_data[0])
                                activeBuySize[arg1].field_832 = 0
                                if not uint64(activeBuySize[arg1].field_768 - s):
                                    activeBuySize[arg1].field_896 = 0
                        else:
                            mem[0] = stor2[idx << 192].field_768
                            mem[32] = sha3(activeBuySize[arg1].field_256, 0)
                            balances[stor5[arg1].field_256][stor2[idx << 192].field_768] = balances[stor5[arg1].field_256][stor2[idx << 192].field_768] + stor2[idx << 192].field_256 - stor2[idx << 192].field_512 - (mem[128] * mem[96]) + (mem[160] * mem[96])
                            _4855 = mem[96]
                            mem[mem[64]] = activeBuySize[arg1].field_0
                            mem[mem[64] + 32] = uint64(idx)
                            mem[mem[64] + 64] = _4855
                            mem[mem[64] + 96] = stor2[idx << 192].field_512 + (_4683 * _4721) - (_4682 * _4721)
                            emit 0xb8d0ac6f: activeBuySize[arg1].field_0, idx << 192, _4855, stor2[idx << 192].field_512 + (_4683 * _4721) - (_4682 * _4721)
                            stor2[idx << 192].field_0 = 0
                            stor2[idx << 192].field_256 = 0
                            stor2[idx << 192].field_512 = 0
                            stor2[idx << 192].field_768 = 0
                            if uint64(idx):
                                mem[mem[64] + 4] = sha3(arg1, 5) + 3
                                mem[mem[64] + 36] = uint64(idx)
                                require ext_code.size(0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01)
                                delegate 0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01.0xb67700f4 with:
                                     gas gas_remaining - 50 wei
                                    args sha3(arg1, 5) + 3, uint64(idx)
                                mem[mem[64]] = delegate.return_data[0]
                                require delegate.return_code
                                s = 0
                                idx = activeBuySize[arg1].field_832
                                s = 0
                                while uint64(delegate.return_data[0]) != uint64(idx):
                                    mem[0] = uint64(idx)
                                    mem[32] = sha3(arg1, 5) + 4
                                    activeBuySize[arg1][4][idx << 192].field_0 = 0
                                    s = idx
                                    idx = activeBuySize[arg1][4][idx << 192].field_64
                                    s = s + 1
                                    continue 
                                activeBuySize[arg1][4][delegate.return_data[0] << 192].field_0 = 0
                                activeBuySize[arg1].field_768 = uint64(activeBuySize[arg1].field_768 - s)
                                activeBuySize[arg1].field_832 = uint64(delegate.return_data[0])
                                activeBuySize[arg1].field_832 = 0
                                if not uint64(activeBuySize[arg1].field_768 - s):
                                    activeBuySize[arg1].field_896 = 0
                    else:
                        require mem[96]
                        require (mem[128] * mem[96]) - (mem[160] * mem[96]) / mem[96] == mem[128] - mem[160]
                        mem[0] = stor2[idx << 192].field_768
                        mem[32] = sha3(activeBuySize[arg1].field_512, 0)
                        balances[stor5[arg1].field_512][stor2[idx << 192].field_768] = mem[128] - mem[160] + balances[stor5[arg1].field_512][stor2[idx << 192].field_768]
                        if mem[128] - mem[160] > stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96]:
                            mem[160] = (stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96]) + mem[160]
                            if stor2[idx << 192].field_256 - (mem[128] * mem[96]) + (_4682 * mem[96]) - stor2[idx << 192].field_512 >= stor2[idx << 192].field_0:
                                stor2[idx << 192].field_512 = (mem[128] * mem[96]) - (_4682 * mem[96]) + stor2[idx << 192].field_512
                                mem[mem[64] + 64] = mem[96]
                                mem[mem[64] + 96] = (mem[128] * mem[96]) - (_4682 * mem[96])
                                emit 0x8bb250b1: activeBuySize[arg1].field_0, idx << 192, mem[96], (mem[128] * mem[96]) - (_4682 * mem[96])
                                mem[mem[64] + 4] = sha3(arg1, 5) + 3
                                mem[mem[64] + 36] = uint64(idx)
                                if ext_code.size(0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01):
                                    delegate 0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01.0xb67700f4 with:
                                         gas gas_remaining - 50 wei
                                        args sha3(arg1, 5) + 3, uint64(idx)
                                    mem[mem[64]] = delegate.return_data[0]
                                    if delegate.return_code:
                                        s = (_4683 * _4721) - (_4682 * _4721)
                                        s = _4683 - _4682
                                        s = _4683 - _4682
                                        s = stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4673
                                        s = sha3(idx << 192, 2)
                                        idx = delegate.return_data[0]
                                        s = s
                                        t = (_4683 * _4721) - (_4682 * _4721) + t
                                        continue 
                            else:
                                mem[0] = stor2[idx << 192].field_768
                                mem[32] = sha3(activeBuySize[arg1].field_256, 0)
                                balances[stor5[arg1].field_256][stor2[idx << 192].field_768] = balances[stor5[arg1].field_256][stor2[idx << 192].field_768] + stor2[idx << 192].field_256 - stor2[idx << 192].field_512 - (mem[128] * mem[96]) + (_4682 * mem[96])
                                mem[mem[64] + 32] = uint64(idx)
                                mem[mem[64] + 64] = mem[96]
                                mem[mem[64] + 96] = stor2[idx << 192].field_512 + (_4683 * mem[96]) - (_4682 * mem[96])
                                emit 0xb8d0ac6f: activeBuySize[arg1].field_0, idx << 192, mem[96], stor2[idx << 192].field_512 + (_4683 * mem[96]) - (_4682 * mem[96])
                                mem[0] = uint64(idx)
                                mem[32] = 2
                                stor2[idx << 192].field_0 = 0
                                stor2[idx << 192].field_256 = 0
                                stor2[idx << 192].field_512 = 0
                                stor2[idx << 192].field_768 = 0
                                mem[mem[64] + 4] = sha3(arg1, 5) + 3
                                mem[mem[64] + 36] = uint64(idx)
                                if ext_code.size(0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01):
                                    delegate 0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01.0xb67700f4 with:
                                         gas gas_remaining - 50 wei
                                        args sha3(arg1, 5) + 3, uint64(idx)
                                    mem[mem[64]] = delegate.return_data[0]
                                    if delegate.return_code:
                                        s = (_4683 * _4721) - (_4682 * _4721)
                                        s = _4683 - _4682
                                        s = _4683 - _4682
                                        s = stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4673
                                        s = sha3(idx << 192, 2)
                                        idx = delegate.return_data[0]
                                        s = idx
                                        t = (_4683 * _4721) - (_4682 * _4721) + t
                                        continue 
                            revert
                        if stor2[idx << 192].field_256 - (mem[128] * mem[96]) + (mem[160] * mem[96]) - stor2[idx << 192].field_512 >= stor2[idx << 192].field_0:
                            stor2[idx << 192].field_512 = (mem[128] * mem[96]) - (mem[160] * mem[96]) + stor2[idx << 192].field_512
                            _5022 = mem[96]
                            mem[mem[64]] = activeBuySize[arg1].field_0
                            mem[mem[64] + 32] = uint64(idx)
                            mem[mem[64] + 64] = _5022
                            mem[mem[64] + 96] = (_4683 * _4721) - (_4682 * _4721)
                            emit 0x8bb250b1: activeBuySize[arg1].field_0, idx << 192, _5022, (_4683 * _4721) - (_4682 * _4721)
                            if uint64(s):
                                mem[mem[64] + 4] = sha3(arg1, 5) + 3
                                mem[mem[64] + 36] = uint64(s)
                                require ext_code.size(0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01)
                                delegate 0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01.0xb67700f4 with:
                                     gas gas_remaining - 50 wei
                                    args sha3(arg1, 5) + 3, uint64(s)
                                mem[mem[64]] = delegate.return_data[0]
                                require delegate.return_code
                                s = 0
                                idx = activeBuySize[arg1].field_832
                                s = 0
                                while uint64(delegate.return_data[0]) != uint64(idx):
                                    mem[0] = uint64(idx)
                                    mem[32] = sha3(arg1, 5) + 4
                                    activeBuySize[arg1][4][idx << 192].field_0 = 0
                                    s = idx
                                    idx = activeBuySize[arg1][4][idx << 192].field_64
                                    s = s + 1
                                    continue 
                                activeBuySize[arg1][4][delegate.return_data[0] << 192].field_0 = 0
                                activeBuySize[arg1].field_768 = uint64(activeBuySize[arg1].field_768 - s)
                                activeBuySize[arg1].field_832 = uint64(delegate.return_data[0])
                                activeBuySize[arg1].field_832 = 0
                                if not uint64(activeBuySize[arg1].field_768 - s):
                                    activeBuySize[arg1].field_896 = 0
                        else:
                            mem[0] = stor2[idx << 192].field_768
                            mem[32] = sha3(activeBuySize[arg1].field_256, 0)
                            balances[stor5[arg1].field_256][stor2[idx << 192].field_768] = balances[stor5[arg1].field_256][stor2[idx << 192].field_768] + stor2[idx << 192].field_256 - stor2[idx << 192].field_512 - (mem[128] * mem[96]) + (mem[160] * mem[96])
                            _5027 = mem[96]
                            mem[mem[64]] = activeBuySize[arg1].field_0
                            mem[mem[64] + 32] = uint64(idx)
                            mem[mem[64] + 64] = _5027
                            mem[mem[64] + 96] = stor2[idx << 192].field_512 + (_4683 * _4721) - (_4682 * _4721)
                            emit 0xb8d0ac6f: activeBuySize[arg1].field_0, idx << 192, _5027, stor2[idx << 192].field_512 + (_4683 * _4721) - (_4682 * _4721)
                            stor2[idx << 192].field_0 = 0
                            stor2[idx << 192].field_256 = 0
                            stor2[idx << 192].field_512 = 0
                            stor2[idx << 192].field_768 = 0
                            if uint64(idx):
                                mem[mem[64] + 4] = sha3(arg1, 5) + 3
                                mem[mem[64] + 36] = uint64(idx)
                                require ext_code.size(0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01)
                                delegate 0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01.0xb67700f4 with:
                                     gas gas_remaining - 50 wei
                                    args sha3(arg1, 5) + 3, uint64(idx)
                                mem[mem[64]] = delegate.return_data[0]
                                require delegate.return_code
                                s = 0
                                idx = activeBuySize[arg1].field_832
                                s = 0
                                while uint64(delegate.return_data[0]) != uint64(idx):
                                    mem[0] = uint64(idx)
                                    mem[32] = sha3(arg1, 5) + 4
                                    activeBuySize[arg1][4][idx << 192].field_0 = 0
                                    s = idx
                                    idx = activeBuySize[arg1][4][idx << 192].field_64
                                    s = s + 1
                                    continue 
                                activeBuySize[arg1][4][delegate.return_data[0] << 192].field_0 = 0
                                activeBuySize[arg1].field_768 = uint64(activeBuySize[arg1].field_768 - s)
                                activeBuySize[arg1].field_832 = uint64(delegate.return_data[0])
                                activeBuySize[arg1].field_832 = 0
                                if not uint64(activeBuySize[arg1].field_768 - s):
                                    activeBuySize[arg1].field_896 = 0
                    balances[stor5[arg1].field_256][mem[204 len 20]] = balances[stor5[arg1].field_256][mem[204 len 20]] + (_4683 * _4721) - (_4682 * _4721) + t
                else:
                    _4722 = mem[96]
                    if not mem[96]:
                        mem[0] = stor2[idx << 192].field_768
                        mem[32] = sha3(activeBuySize[arg1].field_512, 0)
                        balances[stor5[arg1].field_512][stor2[idx << 192].field_768] += stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96]
                        if mem[128] - mem[160] > stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96]:
                            mem[160] = (stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96]) + mem[160]
                            if stor2[idx << 192].field_256 - (stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96] * mem[96]) - stor2[idx << 192].field_512 >= stor2[idx << 192].field_0:
                                stor2[idx << 192].field_512 += stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96] * mem[96]
                                mem[mem[64] + 64] = mem[96]
                                mem[mem[64] + 96] = stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96] * mem[96]
                                emit 0x8bb250b1: activeBuySize[arg1].field_0, idx << 192, mem[96], stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96] * mem[96]
                                mem[mem[64] + 4] = sha3(arg1, 5) + 3
                                mem[mem[64] + 36] = uint64(idx)
                                if ext_code.size(0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01):
                                    delegate 0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01.0xb67700f4 with:
                                         gas gas_remaining - 50 wei
                                        args sha3(arg1, 5) + 3, uint64(idx)
                                    mem[mem[64]] = delegate.return_data[0]
                                    if delegate.return_code:
                                        s = stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4673 * _4722
                                        s = stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4673
                                        s = _4683 - _4682
                                        s = stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4673
                                        s = sha3(idx << 192, 2)
                                        idx = delegate.return_data[0]
                                        s = s
                                        t = (stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4673 * _4722) + t
                                        continue 
                            else:
                                mem[0] = stor2[idx << 192].field_768
                                mem[32] = sha3(activeBuySize[arg1].field_256, 0)
                                balances[stor5[arg1].field_256][stor2[idx << 192].field_768] = balances[stor5[arg1].field_256][stor2[idx << 192].field_768] + stor2[idx << 192].field_256 - stor2[idx << 192].field_512 - (stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96] * mem[96])
                                mem[mem[64] + 32] = uint64(idx)
                                mem[mem[64] + 64] = mem[96]
                                mem[mem[64] + 96] = stor2[idx << 192].field_512 + (stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96] * mem[96])
                                emit 0xb8d0ac6f: activeBuySize[arg1].field_0, idx << 192, mem[96], stor2[idx << 192].field_512 + (stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96] * mem[96])
                                mem[0] = uint64(idx)
                                mem[32] = 2
                                stor2[idx << 192].field_0 = 0
                                stor2[idx << 192].field_256 = 0
                                stor2[idx << 192].field_512 = 0
                                stor2[idx << 192].field_768 = 0
                                mem[mem[64] + 4] = sha3(arg1, 5) + 3
                                mem[mem[64] + 36] = uint64(idx)
                                if ext_code.size(0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01):
                                    delegate 0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01.0xb67700f4 with:
                                         gas gas_remaining - 50 wei
                                        args sha3(arg1, 5) + 3, uint64(idx)
                                    mem[mem[64]] = delegate.return_data[0]
                                    if delegate.return_code:
                                        s = stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4673 * _4722
                                        s = stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4673
                                        s = _4683 - _4682
                                        s = stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4673
                                        s = sha3(idx << 192, 2)
                                        idx = delegate.return_data[0]
                                        s = idx
                                        t = (stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4673 * _4722) + t
                                        continue 
                            revert
                        if stor2[idx << 192].field_256 - (stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96] * mem[96]) - stor2[idx << 192].field_512 >= stor2[idx << 192].field_0:
                            stor2[idx << 192].field_512 += stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96] * mem[96]
                            _4869 = mem[96]
                            mem[mem[64]] = activeBuySize[arg1].field_0
                            mem[mem[64] + 32] = uint64(idx)
                            mem[mem[64] + 64] = _4869
                            mem[mem[64] + 96] = stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4673 * _4722
                            emit 0x8bb250b1: activeBuySize[arg1].field_0, idx << 192, _4869, stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4673 * _4722
                            if uint64(s):
                                mem[mem[64] + 4] = sha3(arg1, 5) + 3
                                mem[mem[64] + 36] = uint64(s)
                                require ext_code.size(0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01)
                                delegate 0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01.0xb67700f4 with:
                                     gas gas_remaining - 50 wei
                                    args sha3(arg1, 5) + 3, uint64(s)
                                mem[mem[64]] = delegate.return_data[0]
                                require delegate.return_code
                                u = 0
                                s = activeBuySize[arg1].field_832
                                u = 0
                                while uint64(delegate.return_data[0]) != uint64(s):
                                    mem[0] = uint64(s)
                                    mem[32] = sha3(arg1, 5) + 4
                                    activeBuySize[arg1][4][s << 192].field_0 = 0
                                    u = s
                                    s = activeBuySize[arg1][4][s << 192].field_64
                                    u = u + 1
                                    continue 
                                activeBuySize[arg1][4][delegate.return_data[0] << 192].field_0 = 0
                                activeBuySize[arg1].field_768 = uint64(activeBuySize[arg1].field_768 - u)
                                activeBuySize[arg1].field_832 = uint64(delegate.return_data[0])
                                activeBuySize[arg1].field_832 = 0
                                if not uint64(activeBuySize[arg1].field_768 - u):
                                    activeBuySize[arg1].field_896 = 0
                        else:
                            mem[0] = stor2[idx << 192].field_768
                            mem[32] = sha3(activeBuySize[arg1].field_256, 0)
                            balances[stor5[arg1].field_256][stor2[idx << 192].field_768] = balances[stor5[arg1].field_256][stor2[idx << 192].field_768] + stor2[idx << 192].field_256 - stor2[idx << 192].field_512 - (stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96] * mem[96])
                            _4874 = mem[96]
                            mem[mem[64]] = activeBuySize[arg1].field_0
                            mem[mem[64] + 32] = uint64(idx)
                            mem[mem[64] + 64] = _4874
                            mem[mem[64] + 96] = stor2[idx << 192].field_512 + (stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4673 * _4722)
                            emit 0xb8d0ac6f: activeBuySize[arg1].field_0, idx << 192, _4874, stor2[idx << 192].field_512 + (stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4673 * _4722)
                            stor2[idx << 192].field_0 = 0
                            stor2[idx << 192].field_256 = 0
                            stor2[idx << 192].field_512 = 0
                            stor2[idx << 192].field_768 = 0
                            if uint64(idx):
                                mem[mem[64] + 4] = sha3(arg1, 5) + 3
                                mem[mem[64] + 36] = uint64(idx)
                                require ext_code.size(0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01)
                                delegate 0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01.0xb67700f4 with:
                                     gas gas_remaining - 50 wei
                                    args sha3(arg1, 5) + 3, uint64(idx)
                                mem[mem[64]] = delegate.return_data[0]
                                require delegate.return_code
                                u = 0
                                s = activeBuySize[arg1].field_832
                                u = 0
                                while uint64(delegate.return_data[0]) != uint64(s):
                                    mem[0] = uint64(s)
                                    mem[32] = sha3(arg1, 5) + 4
                                    activeBuySize[arg1][4][s << 192].field_0 = 0
                                    u = s
                                    s = activeBuySize[arg1][4][s << 192].field_64
                                    u = u + 1
                                    continue 
                                activeBuySize[arg1][4][delegate.return_data[0] << 192].field_0 = 0
                                activeBuySize[arg1].field_768 = uint64(activeBuySize[arg1].field_768 - u)
                                activeBuySize[arg1].field_832 = uint64(delegate.return_data[0])
                                activeBuySize[arg1].field_832 = 0
                                if not uint64(activeBuySize[arg1].field_768 - u):
                                    activeBuySize[arg1].field_896 = 0
                    else:
                        require mem[96]
                        require stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96] * mem[96] / mem[96] == stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96]
                        mem[0] = stor2[idx << 192].field_768
                        mem[32] = sha3(activeBuySize[arg1].field_512, 0)
                        balances[stor5[arg1].field_512][stor2[idx << 192].field_768] += stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96]
                        if mem[128] - mem[160] > stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96]:
                            mem[160] = (stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96]) + mem[160]
                            if stor2[idx << 192].field_256 - (stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96] * mem[96]) - stor2[idx << 192].field_512 >= stor2[idx << 192].field_0:
                                stor2[idx << 192].field_512 += stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96] * mem[96]
                                mem[mem[64] + 64] = mem[96]
                                mem[mem[64] + 96] = stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96] * mem[96]
                                emit 0x8bb250b1: activeBuySize[arg1].field_0, idx << 192, mem[96], stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96] * mem[96]
                                mem[mem[64] + 4] = sha3(arg1, 5) + 3
                                mem[mem[64] + 36] = uint64(idx)
                                if ext_code.size(0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01):
                                    delegate 0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01.0xb67700f4 with:
                                         gas gas_remaining - 50 wei
                                        args sha3(arg1, 5) + 3, uint64(idx)
                                    mem[mem[64]] = delegate.return_data[0]
                                    if delegate.return_code:
                                        s = stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4673 * _4722
                                        s = stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4673
                                        s = _4683 - _4682
                                        s = stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4673
                                        s = sha3(idx << 192, 2)
                                        idx = delegate.return_data[0]
                                        s = s
                                        t = (stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4673 * _4722) + t
                                        continue 
                            else:
                                mem[0] = stor2[idx << 192].field_768
                                mem[32] = sha3(activeBuySize[arg1].field_256, 0)
                                balances[stor5[arg1].field_256][stor2[idx << 192].field_768] = balances[stor5[arg1].field_256][stor2[idx << 192].field_768] + stor2[idx << 192].field_256 - stor2[idx << 192].field_512 - (stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96] * mem[96])
                                mem[mem[64] + 32] = uint64(idx)
                                mem[mem[64] + 64] = mem[96]
                                mem[mem[64] + 96] = stor2[idx << 192].field_512 + (stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96] * mem[96])
                                emit 0xb8d0ac6f: activeBuySize[arg1].field_0, idx << 192, mem[96], stor2[idx << 192].field_512 + (stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96] * mem[96])
                                mem[0] = uint64(idx)
                                mem[32] = 2
                                stor2[idx << 192].field_0 = 0
                                stor2[idx << 192].field_256 = 0
                                stor2[idx << 192].field_512 = 0
                                stor2[idx << 192].field_768 = 0
                                mem[mem[64] + 4] = sha3(arg1, 5) + 3
                                mem[mem[64] + 36] = uint64(idx)
                                if ext_code.size(0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01):
                                    delegate 0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01.0xb67700f4 with:
                                         gas gas_remaining - 50 wei
                                        args sha3(arg1, 5) + 3, uint64(idx)
                                    mem[mem[64]] = delegate.return_data[0]
                                    if delegate.return_code:
                                        s = stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4673 * _4722
                                        s = stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4673
                                        s = _4683 - _4682
                                        s = stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4673
                                        s = sha3(idx << 192, 2)
                                        idx = delegate.return_data[0]
                                        s = idx
                                        t = (stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4673 * _4722) + t
                                        continue 
                            revert
                        if stor2[idx << 192].field_256 - (stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96] * mem[96]) - stor2[idx << 192].field_512 >= stor2[idx << 192].field_0:
                            stor2[idx << 192].field_512 += stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96] * mem[96]
                            _5046 = mem[96]
                            mem[mem[64]] = activeBuySize[arg1].field_0
                            mem[mem[64] + 32] = uint64(idx)
                            mem[mem[64] + 64] = _5046
                            mem[mem[64] + 96] = stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4673 * _4722
                            emit 0x8bb250b1: activeBuySize[arg1].field_0, idx << 192, _5046, stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4673 * _4722
                            if uint64(s):
                                mem[mem[64] + 4] = sha3(arg1, 5) + 3
                                mem[mem[64] + 36] = uint64(s)
                                require ext_code.size(0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01)
                                delegate 0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01.0xb67700f4 with:
                                     gas gas_remaining - 50 wei
                                    args sha3(arg1, 5) + 3, uint64(s)
                                mem[mem[64]] = delegate.return_data[0]
                                require delegate.return_code
                                u = 0
                                s = activeBuySize[arg1].field_832
                                u = 0
                                while uint64(delegate.return_data[0]) != uint64(s):
                                    mem[0] = uint64(s)
                                    mem[32] = sha3(arg1, 5) + 4
                                    activeBuySize[arg1][4][s << 192].field_0 = 0
                                    u = s
                                    s = activeBuySize[arg1][4][s << 192].field_64
                                    u = u + 1
                                    continue 
                                activeBuySize[arg1][4][delegate.return_data[0] << 192].field_0 = 0
                                activeBuySize[arg1].field_768 = uint64(activeBuySize[arg1].field_768 - u)
                                activeBuySize[arg1].field_832 = uint64(delegate.return_data[0])
                                activeBuySize[arg1].field_832 = 0
                                if not uint64(activeBuySize[arg1].field_768 - u):
                                    activeBuySize[arg1].field_896 = 0
                        else:
                            mem[0] = stor2[idx << 192].field_768
                            mem[32] = sha3(activeBuySize[arg1].field_256, 0)
                            balances[stor5[arg1].field_256][stor2[idx << 192].field_768] = balances[stor5[arg1].field_256][stor2[idx << 192].field_768] + stor2[idx << 192].field_256 - stor2[idx << 192].field_512 - (stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96] * mem[96])
                            _5051 = mem[96]
                            mem[mem[64]] = activeBuySize[arg1].field_0
                            mem[mem[64] + 32] = uint64(idx)
                            mem[mem[64] + 64] = _5051
                            mem[mem[64] + 96] = stor2[idx << 192].field_512 + (stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4673 * _4722)
                            emit 0xb8d0ac6f: activeBuySize[arg1].field_0, idx << 192, _5051, stor2[idx << 192].field_512 + (stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4673 * _4722)
                            stor2[idx << 192].field_0 = 0
                            stor2[idx << 192].field_256 = 0
                            stor2[idx << 192].field_512 = 0
                            stor2[idx << 192].field_768 = 0
                            if uint64(idx):
                                mem[mem[64] + 4] = sha3(arg1, 5) + 3
                                mem[mem[64] + 36] = uint64(idx)
                                require ext_code.size(0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01)
                                delegate 0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01.0xb67700f4 with:
                                     gas gas_remaining - 50 wei
                                    args sha3(arg1, 5) + 3, uint64(idx)
                                mem[mem[64]] = delegate.return_data[0]
                                require delegate.return_code
                                u = 0
                                s = activeBuySize[arg1].field_832
                                u = 0
                                while uint64(delegate.return_data[0]) != uint64(s):
                                    mem[0] = uint64(s)
                                    mem[32] = sha3(arg1, 5) + 4
                                    activeBuySize[arg1][4][s << 192].field_0 = 0
                                    u = s
                                    s = activeBuySize[arg1][4][s << 192].field_64
                                    u = u + 1
                                    continue 
                                activeBuySize[arg1][4][delegate.return_data[0] << 192].field_0 = 0
                                activeBuySize[arg1].field_768 = uint64(activeBuySize[arg1].field_768 - u)
                                activeBuySize[arg1].field_832 = uint64(delegate.return_data[0])
                                activeBuySize[arg1].field_832 = 0
                                if not uint64(activeBuySize[arg1].field_768 - u):
                                    activeBuySize[arg1].field_896 = 0
                    balances[stor5[arg1].field_256][mem[204 len 20]] = balances[stor5[arg1].field_256][mem[204 len 20]] + (stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4673 * _4722) + t
            else:
                if uint64(s):
                    mem[mem[64] + 4] = sha3(arg1, 5) + 3
                    mem[mem[64] + 36] = uint64(s)
                    require ext_code.size(0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01)
                    delegate 0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01.0xb67700f4 with:
                         gas gas_remaining - 50 wei
                        args sha3(arg1, 5) + 3, uint64(s)
                    mem[mem[64]] = delegate.return_data[0]
                    require delegate.return_code
                    s = 0
                    idx = activeBuySize[arg1].field_832
                    s = 0
                    while uint64(delegate.return_data[0]) != uint64(idx):
                        mem[0] = uint64(idx)
                        mem[32] = sha3(arg1, 5) + 4
                        activeBuySize[arg1][4][idx << 192].field_0 = 0
                        s = idx
                        idx = activeBuySize[arg1][4][idx << 192].field_64
                        s = s + 1
                        continue 
                    activeBuySize[arg1][4][delegate.return_data[0] << 192].field_0 = 0
                    activeBuySize[arg1].field_768 = uint64(activeBuySize[arg1].field_768 - s)
                    activeBuySize[arg1].field_832 = uint64(delegate.return_data[0])
                    activeBuySize[arg1].field_832 = 0
                    if not uint64(activeBuySize[arg1].field_768 - s):
                        activeBuySize[arg1].field_896 = 0
                stor2[stor1 + 1 << 192].field_0 = mem[96]
                stor2[stor1 + 1 << 192].field_256 = mem[128]
                stor2[stor1 + 1 << 192].field_512 = mem[160]
                stor2[stor1 + 1 << 192].field_768 = mem[204 len 20]
                require mem[224] <= 1
                stor2[stor1 + 1 << 192].field_768 = mem[204 len 20]
                stor2[stor1 + 1 << 192].field_928 = mem[244 len 12]
                balances[stor5[arg1].field_256][mem[204 len 20]] += t
                if not activeBuySize[arg1].field_1280:
                    require not activeBuySize[arg1][6][uint64(stor1 + 1)].field_0
                    require not activeBuySize[arg1][6][stor1 + 1 << 192].field_64
                    if activeBuySize[arg1][6][activeBuySize[arg1].field_1280].field_64:
                        if activeBuySize[arg1].field_1408:
                            require activeBuySize[arg1].field_1408 == activeBuySize[arg1].field_1408
                        else:
                            if activeBuySize[arg1].field_1344:
                                require activeBuySize[arg1].field_1408 == activeBuySize[arg1].field_1408
                    else:
                        if activeBuySize[arg1][6][0].field_0 != activeBuySize[arg1].field_1408:
                            if activeBuySize[arg1].field_1408:
                                require activeBuySize[arg1].field_1408 == activeBuySize[arg1].field_1408
                            else:
                                if activeBuySize[arg1].field_1344:
                                    require activeBuySize[arg1].field_1408 == activeBuySize[arg1].field_1408
                    activeBuySize[arg1][6][stor1 + 1 << 192].field_0 = activeBuySize[arg1].field_1408
                    activeBuySize[arg1][6][stor1 + 1 << 192].field_64 = 0
                    activeBuySize[arg1][6][stor1 + 1 << 192].field_256 = 0
                    if activeBuySize[arg1].field_1408:
                        activeBuySize[arg1][6][activeBuySize[arg1].field_1280].field_64 = uint64(stor1 + 1)
                    else:
                        activeBuySize[arg1].field_1344 = uint64(stor1 + 1)
                    activeBuySize[arg1].field_1408 = uint64(stor1 + 1)
                else:
                    if arg2 < stor2[stor5[arg1].field_1280].field_0:
                        require not activeBuySize[arg1][6][uint64(stor1 + 1)].field_0
                        require not activeBuySize[arg1][6][stor1 + 1 << 192].field_64
                        if activeBuySize[arg1][6][0].field_64 != activeBuySize[arg1].field_1344:
                            if activeBuySize[arg1].field_1344 != activeBuySize[arg1].field_1344:
                                require not activeBuySize[arg1].field_1408
                                require not activeBuySize[arg1].field_1344
                        else:
                            if activeBuySize[arg1][6][activeBuySize[arg1].field_1344].field_0:
                                if activeBuySize[arg1].field_1344 != activeBuySize[arg1].field_1344:
                                    require not activeBuySize[arg1].field_1408
                                    require not activeBuySize[arg1].field_1344
                        activeBuySize[arg1][6][stor1 + 1 << 192].field_0 = 0
                        activeBuySize[arg1][6][stor1 + 1 << 192].field_64 = activeBuySize[arg1].field_1344
                        activeBuySize[arg1][6][stor1 + 1 << 192].field_256 = 0
                        activeBuySize[arg1].field_1344 = uint64(stor1 + 1)
                        if activeBuySize[arg1].field_1344:
                            activeBuySize[arg1][6][activeBuySize[arg1].field_1344].field_0 = uint64(stor1 + 1)
                        else:
                            activeBuySize[arg1].field_1408 = uint64(stor1 + 1)
                    else:
                        if arg2 >= stor2[stor5[arg1].field_1280].field_0:
                            require not activeBuySize[arg1][6][uint64(stor1 + 1)].field_0
                            require not activeBuySize[arg1][6][stor1 + 1 << 192].field_64
                            if activeBuySize[arg1][6][activeBuySize[arg1].field_1280].field_64:
                                if activeBuySize[arg1].field_1408:
                                    require activeBuySize[arg1].field_1408 == activeBuySize[arg1].field_1408
                                else:
                                    if activeBuySize[arg1].field_1344:
                                        require activeBuySize[arg1].field_1408 == activeBuySize[arg1].field_1408
                            else:
                                if activeBuySize[arg1][6][0].field_0 != activeBuySize[arg1].field_1408:
                                    if activeBuySize[arg1].field_1408:
                                        require activeBuySize[arg1].field_1408 == activeBuySize[arg1].field_1408
                                    else:
                                        if activeBuySize[arg1].field_1344:
                                            require activeBuySize[arg1].field_1408 == activeBuySize[arg1].field_1408
                            activeBuySize[arg1][6][stor1 + 1 << 192].field_0 = activeBuySize[arg1].field_1408
                            activeBuySize[arg1][6][stor1 + 1 << 192].field_64 = 0
                            activeBuySize[arg1][6][stor1 + 1 << 192].field_256 = 0
                            if activeBuySize[arg1].field_1408:
                                activeBuySize[arg1][6][activeBuySize[arg1].field_1280].field_64 = uint64(stor1 + 1)
                            else:
                                activeBuySize[arg1].field_1344 = uint64(stor1 + 1)
                            activeBuySize[arg1].field_1408 = uint64(stor1 + 1)
                        else:
                            mem[0] = 0
                            require ext_code.size(0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01)
                            delegate 0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01.0xb67700f4 with:
                                 gas gas_remaining - 50 wei
                                args sha3(arg1, 5) + 5, activeBuySize[arg1].field_1344
                            mem[mem[64]] = delegate.return_data[0]
                            require delegate.return_code
                            idx = mem[mem[64]]
                            s = sha3(0, 2)
                            while uint64(idx):
                                mem[0] = uint64(idx)
                                mem[32] = 2
                                if arg2 >= stor2[idx << 192].field_0:
                                    mem[mem[64] + 4] = sha3(arg1, 5) + 5
                                    mem[mem[64] + 36] = uint64(idx)
                                    require ext_code.size(0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01)
                                    delegate 0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01.0xb67700f4 with:
                                         gas gas_remaining - 50 wei
                                        args sha3(arg1, 5) + 5, uint64(idx)
                                    mem[mem[64]] = delegate.return_data[0]
                                    require delegate.return_code
                                    idx = delegate.return_data[0]
                                    s = sha3(idx << 192, 2)
                                    continue 
                                require not activeBuySize[arg1][6][uint64(stor1 + 1)].field_0
                                require not activeBuySize[arg1][6][stor1 + 1 << 192].field_64
                                if activeBuySize[arg1][6][activeBuySize[arg1][6][idx << 192].field_0].field_64 != uint64(idx):
                                    if activeBuySize[arg1][6][idx << 192].field_0:
                                        require activeBuySize[arg1].field_1408 == activeBuySize[arg1][6][idx << 192].field_0
                                        require not uint64(idx)
                                    else:
                                        if activeBuySize[arg1].field_1344 != uint64(idx):
                                            require activeBuySize[arg1].field_1408 == activeBuySize[arg1][6][idx << 192].field_0
                                            require not uint64(idx)
                                else:
                                    if activeBuySize[arg1][6][uint64(idx)].field_0 != activeBuySize[arg1][6][idx << 192].field_0:
                                        if activeBuySize[arg1][6][idx << 192].field_0:
                                            require activeBuySize[arg1].field_1408 == activeBuySize[arg1][6][idx << 192].field_0
                                            require not uint64(idx)
                                        else:
                                            if activeBuySize[arg1].field_1344 != uint64(idx):
                                                require activeBuySize[arg1].field_1408 == activeBuySize[arg1][6][idx << 192].field_0
                                                require not uint64(idx)
                                activeBuySize[arg1][6][stor1 + 1 << 192].field_0 = activeBuySize[arg1][6][idx << 192].field_0
                                activeBuySize[arg1][6][stor1 + 1 << 192].field_64 = uint64(idx)
                                if activeBuySize[arg1][6][idx << 192].field_0:
                                    activeBuySize[arg1][6][activeBuySize[arg1][6][idx << 192].field_0].field_64 = uint64(stor1 + 1)
                                else:
                                    activeBuySize[arg1].field_1344 = uint64(stor1 + 1)
                                if uint64(idx):
                                    activeBuySize[arg1][6][uint64(idx)].field_0 = uint64(stor1 + 1)
                                else:
                                    activeBuySize[arg1].field_1408 = uint64(stor1 + 1)
                                activeBuySize[arg1].field_1280 = uint64(activeBuySize[arg1].field_1280 + 1)
                                emit 0xeaac085d: arg1, stor1 + 1 << 192, msg.sender, arg2, arg3, stor2[stor1 + 1 << 192].field_512
                                return 1
                            require not activeBuySize[arg1][6][uint64(stor1 + 1)].field_0
                            require not activeBuySize[arg1][6][stor1 + 1 << 192].field_64
                            if activeBuySize[arg1][6][activeBuySize[arg1][6][idx << 192].field_0].field_64 != uint64(idx):
                                if activeBuySize[arg1][6][idx << 192].field_0:
                                    require activeBuySize[arg1].field_1408 == activeBuySize[arg1][6][idx << 192].field_0
                                    require not uint64(idx)
                                else:
                                    if activeBuySize[arg1].field_1344 != uint64(idx):
                                        require activeBuySize[arg1].field_1408 == activeBuySize[arg1][6][idx << 192].field_0
                                        require not uint64(idx)
                            else:
                                if activeBuySize[arg1][6][uint64(idx)].field_0 != activeBuySize[arg1][6][idx << 192].field_0:
                                    if activeBuySize[arg1][6][idx << 192].field_0:
                                        require activeBuySize[arg1].field_1408 == activeBuySize[arg1][6][idx << 192].field_0
                                        require not uint64(idx)
                                    else:
                                        if activeBuySize[arg1].field_1344 != uint64(idx):
                                            require activeBuySize[arg1].field_1408 == activeBuySize[arg1][6][idx << 192].field_0
                                            require not uint64(idx)
                            activeBuySize[arg1][6][stor1 + 1 << 192].field_0 = activeBuySize[arg1][6][idx << 192].field_0
                            activeBuySize[arg1][6][stor1 + 1 << 192].field_64 = uint64(idx)
                            if activeBuySize[arg1][6][idx << 192].field_0:
                                activeBuySize[arg1][6][activeBuySize[arg1][6][idx << 192].field_0].field_64 = uint64(stor1 + 1)
                            else:
                                activeBuySize[arg1].field_1344 = uint64(stor1 + 1)
                            if uint64(idx):
                                activeBuySize[arg1][6][uint64(idx)].field_0 = uint64(stor1 + 1)
                            else:
                                activeBuySize[arg1].field_1408 = uint64(stor1 + 1)
                activeBuySize[arg1].field_1280 = uint64(activeBuySize[arg1].field_1280 + 1)
                emit 0xeaac085d: arg1, stor1 + 1 << 192, msg.sender, arg2, arg3, stor2[stor1 + 1 << 192].field_512
            return 1
    else:
        require assets[stor5[arg1].field_512].field_8 <= 2
        require ext_code.size(activeBuySize[arg1].field_512)
        if assets[stor5[arg1].field_512].field_8 == 1:
            call activeBuySize[arg1].field_512.0x23b872dd with:
                 gas gas_remaining - 50 wei
                args msg.sender, address(this.address), arg3 - balances[stor5[arg1].field_512][address(msg.sender)]
            require ext_call.success
            if not ext_call.return_data[0]:
                emit Error('Deposit failed');
                return 0
            mem[0] = msg.sender
            balances[stor5[arg1].field_512][address(msg.sender)] = 0
            require uint64(stor1 + 1)
            stor1 = uint64(stor1 + 1)
            mem[64] = 256
            mem[96] = arg2
            mem[128] = arg3
            mem[160] = 0
            mem[192] = msg.sender
            mem[224] = 1
            s = 0
            s = 0
            s = 0
            s = 0
            s = 0
            idx = activeBuySize[arg1].field_832
            s = 0
            t = 0
            while uint64(idx):
                if stor2[idx << 192].field_0 >= mem[96]:
                    _4677 = mem[96]
                    require mem[96]
                    _4684 = mem[160]
                    _4685 = mem[128]
                    if mem[128] - mem[160] <= stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96]:
                        _4723 = mem[96]
                        if not mem[96]:
                            mem[0] = stor2[idx << 192].field_768
                            mem[32] = sha3(activeBuySize[arg1].field_512, 0)
                            balances[stor5[arg1].field_512][stor2[idx << 192].field_768] = mem[128] - mem[160] + balances[stor5[arg1].field_512][stor2[idx << 192].field_768]
                            if mem[128] - mem[160] > stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96]:
                                mem[160] = (stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96]) + mem[160]
                                if stor2[idx << 192].field_256 - (mem[128] * mem[96]) + (_4684 * mem[96]) - stor2[idx << 192].field_512 >= stor2[idx << 192].field_0:
                                    stor2[idx << 192].field_512 = (mem[128] * mem[96]) - (_4684 * mem[96]) + stor2[idx << 192].field_512
                                    mem[mem[64] + 64] = mem[96]
                                    mem[mem[64] + 96] = (mem[128] * mem[96]) - (_4684 * mem[96])
                                    emit 0x8bb250b1: activeBuySize[arg1].field_0, idx << 192, mem[96], (mem[128] * mem[96]) - (_4684 * mem[96])
                                    mem[mem[64] + 4] = sha3(arg1, 5) + 3
                                    mem[mem[64] + 36] = uint64(idx)
                                    if ext_code.size(0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01):
                                        delegate 0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01.0xb67700f4 with:
                                             gas gas_remaining - 50 wei
                                            args sha3(arg1, 5) + 3, uint64(idx)
                                        mem[mem[64]] = delegate.return_data[0]
                                        if delegate.return_code:
                                            s = (_4685 * _4723) - (_4684 * _4723)
                                            s = _4685 - _4684
                                            s = _4685 - _4684
                                            s = stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4677
                                            s = sha3(idx << 192, 2)
                                            idx = delegate.return_data[0]
                                            s = s
                                            t = (_4685 * _4723) - (_4684 * _4723) + t
                                            continue 
                                else:
                                    mem[0] = stor2[idx << 192].field_768
                                    mem[32] = sha3(activeBuySize[arg1].field_256, 0)
                                    balances[stor5[arg1].field_256][stor2[idx << 192].field_768] = balances[stor5[arg1].field_256][stor2[idx << 192].field_768] + stor2[idx << 192].field_256 - stor2[idx << 192].field_512 - (mem[128] * mem[96]) + (_4684 * mem[96])
                                    mem[mem[64] + 32] = uint64(idx)
                                    mem[mem[64] + 64] = mem[96]
                                    mem[mem[64] + 96] = stor2[idx << 192].field_512 + (_4685 * mem[96]) - (_4684 * mem[96])
                                    emit 0xb8d0ac6f: activeBuySize[arg1].field_0, idx << 192, mem[96], stor2[idx << 192].field_512 + (_4685 * mem[96]) - (_4684 * mem[96])
                                    mem[0] = uint64(idx)
                                    mem[32] = 2
                                    stor2[idx << 192].field_0 = 0
                                    stor2[idx << 192].field_256 = 0
                                    stor2[idx << 192].field_512 = 0
                                    stor2[idx << 192].field_768 = 0
                                    mem[mem[64] + 4] = sha3(arg1, 5) + 3
                                    mem[mem[64] + 36] = uint64(idx)
                                    if ext_code.size(0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01):
                                        delegate 0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01.0xb67700f4 with:
                                             gas gas_remaining - 50 wei
                                            args sha3(arg1, 5) + 3, uint64(idx)
                                        mem[mem[64]] = delegate.return_data[0]
                                        if delegate.return_code:
                                            s = (_4685 * _4723) - (_4684 * _4723)
                                            s = _4685 - _4684
                                            s = _4685 - _4684
                                            s = stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4677
                                            s = sha3(idx << 192, 2)
                                            idx = delegate.return_data[0]
                                            s = idx
                                            t = (_4685 * _4723) - (_4684 * _4723) + t
                                            continue 
                                revert
                            if stor2[idx << 192].field_256 - (mem[128] * mem[96]) + (mem[160] * mem[96]) - stor2[idx << 192].field_512 >= stor2[idx << 192].field_0:
                                stor2[idx << 192].field_512 = (mem[128] * mem[96]) - (mem[160] * mem[96]) + stor2[idx << 192].field_512
                                _4903 = mem[96]
                                mem[mem[64]] = activeBuySize[arg1].field_0
                                mem[mem[64] + 32] = uint64(idx)
                                mem[mem[64] + 64] = _4903
                                mem[mem[64] + 96] = (_4685 * _4723) - (_4684 * _4723)
                                emit 0x8bb250b1: activeBuySize[arg1].field_0, idx << 192, _4903, (_4685 * _4723) - (_4684 * _4723)
                                if uint64(s):
                                    mem[mem[64] + 4] = sha3(arg1, 5) + 3
                                    mem[mem[64] + 36] = uint64(s)
                                    require ext_code.size(0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01)
                                    delegate 0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01.0xb67700f4 with:
                                         gas gas_remaining - 50 wei
                                        args sha3(arg1, 5) + 3, uint64(s)
                                    mem[mem[64]] = delegate.return_data[0]
                                    require delegate.return_code
                                    s = 0
                                    idx = activeBuySize[arg1].field_832
                                    s = 0
                                    while uint64(delegate.return_data[0]) != uint64(idx):
                                        mem[0] = uint64(idx)
                                        mem[32] = sha3(arg1, 5) + 4
                                        activeBuySize[arg1][4][idx << 192].field_0 = 0
                                        s = idx
                                        idx = activeBuySize[arg1][4][idx << 192].field_64
                                        s = s + 1
                                        continue 
                                    activeBuySize[arg1][4][delegate.return_data[0] << 192].field_0 = 0
                                    activeBuySize[arg1].field_768 = uint64(activeBuySize[arg1].field_768 - s)
                                    activeBuySize[arg1].field_832 = uint64(delegate.return_data[0])
                                    activeBuySize[arg1].field_832 = 0
                                    if not uint64(activeBuySize[arg1].field_768 - s):
                                        activeBuySize[arg1].field_896 = 0
                            else:
                                mem[0] = stor2[idx << 192].field_768
                                mem[32] = sha3(activeBuySize[arg1].field_256, 0)
                                balances[stor5[arg1].field_256][stor2[idx << 192].field_768] = balances[stor5[arg1].field_256][stor2[idx << 192].field_768] + stor2[idx << 192].field_256 - stor2[idx << 192].field_512 - (mem[128] * mem[96]) + (mem[160] * mem[96])
                                _4908 = mem[96]
                                mem[mem[64]] = activeBuySize[arg1].field_0
                                mem[mem[64] + 32] = uint64(idx)
                                mem[mem[64] + 64] = _4908
                                mem[mem[64] + 96] = stor2[idx << 192].field_512 + (_4685 * _4723) - (_4684 * _4723)
                                emit 0xb8d0ac6f: activeBuySize[arg1].field_0, idx << 192, _4908, stor2[idx << 192].field_512 + (_4685 * _4723) - (_4684 * _4723)
                                stor2[idx << 192].field_0 = 0
                                stor2[idx << 192].field_256 = 0
                                stor2[idx << 192].field_512 = 0
                                stor2[idx << 192].field_768 = 0
                                if uint64(idx):
                                    mem[mem[64] + 4] = sha3(arg1, 5) + 3
                                    mem[mem[64] + 36] = uint64(idx)
                                    require ext_code.size(0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01)
                                    delegate 0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01.0xb67700f4 with:
                                         gas gas_remaining - 50 wei
                                        args sha3(arg1, 5) + 3, uint64(idx)
                                    mem[mem[64]] = delegate.return_data[0]
                                    require delegate.return_code
                                    s = 0
                                    idx = activeBuySize[arg1].field_832
                                    s = 0
                                    while uint64(delegate.return_data[0]) != uint64(idx):
                                        mem[0] = uint64(idx)
                                        mem[32] = sha3(arg1, 5) + 4
                                        activeBuySize[arg1][4][idx << 192].field_0 = 0
                                        s = idx
                                        idx = activeBuySize[arg1][4][idx << 192].field_64
                                        s = s + 1
                                        continue 
                                    activeBuySize[arg1][4][delegate.return_data[0] << 192].field_0 = 0
                                    activeBuySize[arg1].field_768 = uint64(activeBuySize[arg1].field_768 - s)
                                    activeBuySize[arg1].field_832 = uint64(delegate.return_data[0])
                                    activeBuySize[arg1].field_832 = 0
                                    if not uint64(activeBuySize[arg1].field_768 - s):
                                        activeBuySize[arg1].field_896 = 0
                        else:
                            require mem[96]
                            require (mem[128] * mem[96]) - (mem[160] * mem[96]) / mem[96] == mem[128] - mem[160]
                            mem[0] = stor2[idx << 192].field_768
                            mem[32] = sha3(activeBuySize[arg1].field_512, 0)
                            balances[stor5[arg1].field_512][stor2[idx << 192].field_768] = mem[128] - mem[160] + balances[stor5[arg1].field_512][stor2[idx << 192].field_768]
                            if mem[128] - mem[160] > stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96]:
                                mem[160] = (stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96]) + mem[160]
                                if stor2[idx << 192].field_256 - (mem[128] * mem[96]) + (_4684 * mem[96]) - stor2[idx << 192].field_512 >= stor2[idx << 192].field_0:
                                    stor2[idx << 192].field_512 = (mem[128] * mem[96]) - (_4684 * mem[96]) + stor2[idx << 192].field_512
                                    mem[mem[64] + 64] = mem[96]
                                    mem[mem[64] + 96] = (mem[128] * mem[96]) - (_4684 * mem[96])
                                    emit 0x8bb250b1: activeBuySize[arg1].field_0, idx << 192, mem[96], (mem[128] * mem[96]) - (_4684 * mem[96])
                                    mem[mem[64] + 4] = sha3(arg1, 5) + 3
                                    mem[mem[64] + 36] = uint64(idx)
                                    if ext_code.size(0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01):
                                        delegate 0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01.0xb67700f4 with:
                                             gas gas_remaining - 50 wei
                                            args sha3(arg1, 5) + 3, uint64(idx)
                                        mem[mem[64]] = delegate.return_data[0]
                                        if delegate.return_code:
                                            s = (_4685 * _4723) - (_4684 * _4723)
                                            s = _4685 - _4684
                                            s = _4685 - _4684
                                            s = stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4677
                                            s = sha3(idx << 192, 2)
                                            idx = delegate.return_data[0]
                                            s = s
                                            t = (_4685 * _4723) - (_4684 * _4723) + t
                                            continue 
                                else:
                                    mem[0] = stor2[idx << 192].field_768
                                    mem[32] = sha3(activeBuySize[arg1].field_256, 0)
                                    balances[stor5[arg1].field_256][stor2[idx << 192].field_768] = balances[stor5[arg1].field_256][stor2[idx << 192].field_768] + stor2[idx << 192].field_256 - stor2[idx << 192].field_512 - (mem[128] * mem[96]) + (_4684 * mem[96])
                                    mem[mem[64] + 32] = uint64(idx)
                                    mem[mem[64] + 64] = mem[96]
                                    mem[mem[64] + 96] = stor2[idx << 192].field_512 + (_4685 * mem[96]) - (_4684 * mem[96])
                                    emit 0xb8d0ac6f: activeBuySize[arg1].field_0, idx << 192, mem[96], stor2[idx << 192].field_512 + (_4685 * mem[96]) - (_4684 * mem[96])
                                    mem[0] = uint64(idx)
                                    mem[32] = 2
                                    stor2[idx << 192].field_0 = 0
                                    stor2[idx << 192].field_256 = 0
                                    stor2[idx << 192].field_512 = 0
                                    stor2[idx << 192].field_768 = 0
                                    mem[mem[64] + 4] = sha3(arg1, 5) + 3
                                    mem[mem[64] + 36] = uint64(idx)
                                    if ext_code.size(0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01):
                                        delegate 0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01.0xb67700f4 with:
                                             gas gas_remaining - 50 wei
                                            args sha3(arg1, 5) + 3, uint64(idx)
                                        mem[mem[64]] = delegate.return_data[0]
                                        if delegate.return_code:
                                            s = (_4685 * _4723) - (_4684 * _4723)
                                            s = _4685 - _4684
                                            s = _4685 - _4684
                                            s = stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4677
                                            s = sha3(idx << 192, 2)
                                            idx = delegate.return_data[0]
                                            s = idx
                                            t = (_4685 * _4723) - (_4684 * _4723) + t
                                            continue 
                                revert
                            if stor2[idx << 192].field_256 - (mem[128] * mem[96]) + (mem[160] * mem[96]) - stor2[idx << 192].field_512 >= stor2[idx << 192].field_0:
                                stor2[idx << 192].field_512 = (mem[128] * mem[96]) - (mem[160] * mem[96]) + stor2[idx << 192].field_512
                                _5083 = mem[96]
                                mem[mem[64]] = activeBuySize[arg1].field_0
                                mem[mem[64] + 32] = uint64(idx)
                                mem[mem[64] + 64] = _5083
                                mem[mem[64] + 96] = (_4685 * _4723) - (_4684 * _4723)
                                emit 0x8bb250b1: activeBuySize[arg1].field_0, idx << 192, _5083, (_4685 * _4723) - (_4684 * _4723)
                                if uint64(s):
                                    mem[mem[64] + 4] = sha3(arg1, 5) + 3
                                    mem[mem[64] + 36] = uint64(s)
                                    require ext_code.size(0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01)
                                    delegate 0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01.0xb67700f4 with:
                                         gas gas_remaining - 50 wei
                                        args sha3(arg1, 5) + 3, uint64(s)
                                    mem[mem[64]] = delegate.return_data[0]
                                    require delegate.return_code
                                    s = 0
                                    idx = activeBuySize[arg1].field_832
                                    s = 0
                                    while uint64(delegate.return_data[0]) != uint64(idx):
                                        mem[0] = uint64(idx)
                                        mem[32] = sha3(arg1, 5) + 4
                                        activeBuySize[arg1][4][idx << 192].field_0 = 0
                                        s = idx
                                        idx = activeBuySize[arg1][4][idx << 192].field_64
                                        s = s + 1
                                        continue 
                                    activeBuySize[arg1][4][delegate.return_data[0] << 192].field_0 = 0
                                    activeBuySize[arg1].field_768 = uint64(activeBuySize[arg1].field_768 - s)
                                    activeBuySize[arg1].field_832 = uint64(delegate.return_data[0])
                                    activeBuySize[arg1].field_832 = 0
                                    if not uint64(activeBuySize[arg1].field_768 - s):
                                        activeBuySize[arg1].field_896 = 0
                            else:
                                mem[0] = stor2[idx << 192].field_768
                                mem[32] = sha3(activeBuySize[arg1].field_256, 0)
                                balances[stor5[arg1].field_256][stor2[idx << 192].field_768] = balances[stor5[arg1].field_256][stor2[idx << 192].field_768] + stor2[idx << 192].field_256 - stor2[idx << 192].field_512 - (mem[128] * mem[96]) + (mem[160] * mem[96])
                                _5088 = mem[96]
                                mem[mem[64]] = activeBuySize[arg1].field_0
                                mem[mem[64] + 32] = uint64(idx)
                                mem[mem[64] + 64] = _5088
                                mem[mem[64] + 96] = stor2[idx << 192].field_512 + (_4685 * _4723) - (_4684 * _4723)
                                emit 0xb8d0ac6f: activeBuySize[arg1].field_0, idx << 192, _5088, stor2[idx << 192].field_512 + (_4685 * _4723) - (_4684 * _4723)
                                stor2[idx << 192].field_0 = 0
                                stor2[idx << 192].field_256 = 0
                                stor2[idx << 192].field_512 = 0
                                stor2[idx << 192].field_768 = 0
                                if uint64(idx):
                                    mem[mem[64] + 4] = sha3(arg1, 5) + 3
                                    mem[mem[64] + 36] = uint64(idx)
                                    require ext_code.size(0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01)
                                    delegate 0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01.0xb67700f4 with:
                                         gas gas_remaining - 50 wei
                                        args sha3(arg1, 5) + 3, uint64(idx)
                                    mem[mem[64]] = delegate.return_data[0]
                                    require delegate.return_code
                                    s = 0
                                    idx = activeBuySize[arg1].field_832
                                    s = 0
                                    while uint64(delegate.return_data[0]) != uint64(idx):
                                        mem[0] = uint64(idx)
                                        mem[32] = sha3(arg1, 5) + 4
                                        activeBuySize[arg1][4][idx << 192].field_0 = 0
                                        s = idx
                                        idx = activeBuySize[arg1][4][idx << 192].field_64
                                        s = s + 1
                                        continue 
                                    activeBuySize[arg1][4][delegate.return_data[0] << 192].field_0 = 0
                                    activeBuySize[arg1].field_768 = uint64(activeBuySize[arg1].field_768 - s)
                                    activeBuySize[arg1].field_832 = uint64(delegate.return_data[0])
                                    activeBuySize[arg1].field_832 = 0
                                    if not uint64(activeBuySize[arg1].field_768 - s):
                                        activeBuySize[arg1].field_896 = 0
                        balances[stor5[arg1].field_256][mem[204 len 20]] = balances[stor5[arg1].field_256][mem[204 len 20]] + (_4685 * _4723) - (_4684 * _4723) + t
                    else:
                        _4724 = mem[96]
                        if not mem[96]:
                            mem[0] = stor2[idx << 192].field_768
                            mem[32] = sha3(activeBuySize[arg1].field_512, 0)
                            balances[stor5[arg1].field_512][stor2[idx << 192].field_768] += stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96]
                            if mem[128] - mem[160] > stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96]:
                                mem[160] = (stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96]) + mem[160]
                                if stor2[idx << 192].field_256 - (stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96] * mem[96]) - stor2[idx << 192].field_512 >= stor2[idx << 192].field_0:
                                    stor2[idx << 192].field_512 += stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96] * mem[96]
                                    mem[mem[64] + 64] = mem[96]
                                    mem[mem[64] + 96] = stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96] * mem[96]
                                    emit 0x8bb250b1: activeBuySize[arg1].field_0, idx << 192, mem[96], stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96] * mem[96]
                                    mem[mem[64] + 4] = sha3(arg1, 5) + 3
                                    mem[mem[64] + 36] = uint64(idx)
                                    if ext_code.size(0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01):
                                        delegate 0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01.0xb67700f4 with:
                                             gas gas_remaining - 50 wei
                                            args sha3(arg1, 5) + 3, uint64(idx)
                                        mem[mem[64]] = delegate.return_data[0]
                                        if delegate.return_code:
                                            s = stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4677 * _4724
                                            s = stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4677
                                            s = _4685 - _4684
                                            s = stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4677
                                            s = sha3(idx << 192, 2)
                                            idx = delegate.return_data[0]
                                            s = s
                                            t = (stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4677 * _4724) + t
                                            continue 
                                else:
                                    mem[0] = stor2[idx << 192].field_768
                                    mem[32] = sha3(activeBuySize[arg1].field_256, 0)
                                    balances[stor5[arg1].field_256][stor2[idx << 192].field_768] = balances[stor5[arg1].field_256][stor2[idx << 192].field_768] + stor2[idx << 192].field_256 - stor2[idx << 192].field_512 - (stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96] * mem[96])
                                    mem[mem[64] + 32] = uint64(idx)
                                    mem[mem[64] + 64] = mem[96]
                                    mem[mem[64] + 96] = stor2[idx << 192].field_512 + (stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96] * mem[96])
                                    emit 0xb8d0ac6f: activeBuySize[arg1].field_0, idx << 192, mem[96], stor2[idx << 192].field_512 + (stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96] * mem[96])
                                    mem[0] = uint64(idx)
                                    mem[32] = 2
                                    stor2[idx << 192].field_0 = 0
                                    stor2[idx << 192].field_256 = 0
                                    stor2[idx << 192].field_512 = 0
                                    stor2[idx << 192].field_768 = 0
                                    mem[mem[64] + 4] = sha3(arg1, 5) + 3
                                    mem[mem[64] + 36] = uint64(idx)
                                    if ext_code.size(0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01):
                                        delegate 0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01.0xb67700f4 with:
                                             gas gas_remaining - 50 wei
                                            args sha3(arg1, 5) + 3, uint64(idx)
                                        mem[mem[64]] = delegate.return_data[0]
                                        if delegate.return_code:
                                            s = stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4677 * _4724
                                            s = stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4677
                                            s = _4685 - _4684
                                            s = stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4677
                                            s = sha3(idx << 192, 2)
                                            idx = delegate.return_data[0]
                                            s = idx
                                            t = (stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4677 * _4724) + t
                                            continue 
                                revert
                            if stor2[idx << 192].field_256 - (stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96] * mem[96]) - stor2[idx << 192].field_512 >= stor2[idx << 192].field_0:
                                stor2[idx << 192].field_512 += stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96] * mem[96]
                                _4922 = mem[96]
                                mem[mem[64]] = activeBuySize[arg1].field_0
                                mem[mem[64] + 32] = uint64(idx)
                                mem[mem[64] + 64] = _4922
                                mem[mem[64] + 96] = stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4677 * _4724
                                emit 0x8bb250b1: activeBuySize[arg1].field_0, idx << 192, _4922, stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4677 * _4724
                                if uint64(s):
                                    mem[mem[64] + 4] = sha3(arg1, 5) + 3
                                    mem[mem[64] + 36] = uint64(s)
                                    require ext_code.size(0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01)
                                    delegate 0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01.0xb67700f4 with:
                                         gas gas_remaining - 50 wei
                                        args sha3(arg1, 5) + 3, uint64(s)
                                    mem[mem[64]] = delegate.return_data[0]
                                    require delegate.return_code
                                    u = 0
                                    s = activeBuySize[arg1].field_832
                                    u = 0
                                    while uint64(delegate.return_data[0]) != uint64(s):
                                        mem[0] = uint64(s)
                                        mem[32] = sha3(arg1, 5) + 4
                                        activeBuySize[arg1][4][s << 192].field_0 = 0
                                        u = s
                                        s = activeBuySize[arg1][4][s << 192].field_64
                                        u = u + 1
                                        continue 
                                    activeBuySize[arg1][4][delegate.return_data[0] << 192].field_0 = 0
                                    activeBuySize[arg1].field_768 = uint64(activeBuySize[arg1].field_768 - u)
                                    activeBuySize[arg1].field_832 = uint64(delegate.return_data[0])
                                    activeBuySize[arg1].field_832 = 0
                                    if not uint64(activeBuySize[arg1].field_768 - u):
                                        activeBuySize[arg1].field_896 = 0
                            else:
                                mem[0] = stor2[idx << 192].field_768
                                mem[32] = sha3(activeBuySize[arg1].field_256, 0)
                                balances[stor5[arg1].field_256][stor2[idx << 192].field_768] = balances[stor5[arg1].field_256][stor2[idx << 192].field_768] + stor2[idx << 192].field_256 - stor2[idx << 192].field_512 - (stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96] * mem[96])
                                _4927 = mem[96]
                                mem[mem[64]] = activeBuySize[arg1].field_0
                                mem[mem[64] + 32] = uint64(idx)
                                mem[mem[64] + 64] = _4927
                                mem[mem[64] + 96] = stor2[idx << 192].field_512 + (stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4677 * _4724)
                                emit 0xb8d0ac6f: activeBuySize[arg1].field_0, idx << 192, _4927, stor2[idx << 192].field_512 + (stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4677 * _4724)
                                stor2[idx << 192].field_0 = 0
                                stor2[idx << 192].field_256 = 0
                                stor2[idx << 192].field_512 = 0
                                stor2[idx << 192].field_768 = 0
                                if uint64(idx):
                                    mem[mem[64] + 4] = sha3(arg1, 5) + 3
                                    mem[mem[64] + 36] = uint64(idx)
                                    require ext_code.size(0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01)
                                    delegate 0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01.0xb67700f4 with:
                                         gas gas_remaining - 50 wei
                                        args sha3(arg1, 5) + 3, uint64(idx)
                                    mem[mem[64]] = delegate.return_data[0]
                                    require delegate.return_code
                                    u = 0
                                    s = activeBuySize[arg1].field_832
                                    u = 0
                                    while uint64(delegate.return_data[0]) != uint64(s):
                                        mem[0] = uint64(s)
                                        mem[32] = sha3(arg1, 5) + 4
                                        activeBuySize[arg1][4][s << 192].field_0 = 0
                                        u = s
                                        s = activeBuySize[arg1][4][s << 192].field_64
                                        u = u + 1
                                        continue 
                                    activeBuySize[arg1][4][delegate.return_data[0] << 192].field_0 = 0
                                    activeBuySize[arg1].field_768 = uint64(activeBuySize[arg1].field_768 - u)
                                    activeBuySize[arg1].field_832 = uint64(delegate.return_data[0])
                                    activeBuySize[arg1].field_832 = 0
                                    if not uint64(activeBuySize[arg1].field_768 - u):
                                        activeBuySize[arg1].field_896 = 0
                        else:
                            require mem[96]
                            require stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96] * mem[96] / mem[96] == stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96]
                            mem[0] = stor2[idx << 192].field_768
                            mem[32] = sha3(activeBuySize[arg1].field_512, 0)
                            balances[stor5[arg1].field_512][stor2[idx << 192].field_768] += stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96]
                            if mem[128] - mem[160] > stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96]:
                                mem[160] = (stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96]) + mem[160]
                                if stor2[idx << 192].field_256 - (stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96] * mem[96]) - stor2[idx << 192].field_512 >= stor2[idx << 192].field_0:
                                    stor2[idx << 192].field_512 += stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96] * mem[96]
                                    mem[mem[64] + 64] = mem[96]
                                    mem[mem[64] + 96] = stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96] * mem[96]
                                    emit 0x8bb250b1: activeBuySize[arg1].field_0, idx << 192, mem[96], stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96] * mem[96]
                                    mem[mem[64] + 4] = sha3(arg1, 5) + 3
                                    mem[mem[64] + 36] = uint64(idx)
                                    if ext_code.size(0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01):
                                        delegate 0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01.0xb67700f4 with:
                                             gas gas_remaining - 50 wei
                                            args sha3(arg1, 5) + 3, uint64(idx)
                                        mem[mem[64]] = delegate.return_data[0]
                                        if delegate.return_code:
                                            s = stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4677 * _4724
                                            s = stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4677
                                            s = _4685 - _4684
                                            s = stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4677
                                            s = sha3(idx << 192, 2)
                                            idx = delegate.return_data[0]
                                            s = s
                                            t = (stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4677 * _4724) + t
                                            continue 
                                else:
                                    mem[0] = stor2[idx << 192].field_768
                                    mem[32] = sha3(activeBuySize[arg1].field_256, 0)
                                    balances[stor5[arg1].field_256][stor2[idx << 192].field_768] = balances[stor5[arg1].field_256][stor2[idx << 192].field_768] + stor2[idx << 192].field_256 - stor2[idx << 192].field_512 - (stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96] * mem[96])
                                    mem[mem[64] + 32] = uint64(idx)
                                    mem[mem[64] + 64] = mem[96]
                                    mem[mem[64] + 96] = stor2[idx << 192].field_512 + (stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96] * mem[96])
                                    emit 0xb8d0ac6f: activeBuySize[arg1].field_0, idx << 192, mem[96], stor2[idx << 192].field_512 + (stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96] * mem[96])
                                    mem[0] = uint64(idx)
                                    mem[32] = 2
                                    stor2[idx << 192].field_0 = 0
                                    stor2[idx << 192].field_256 = 0
                                    stor2[idx << 192].field_512 = 0
                                    stor2[idx << 192].field_768 = 0
                                    mem[mem[64] + 4] = sha3(arg1, 5) + 3
                                    mem[mem[64] + 36] = uint64(idx)
                                    if ext_code.size(0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01):
                                        delegate 0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01.0xb67700f4 with:
                                             gas gas_remaining - 50 wei
                                            args sha3(arg1, 5) + 3, uint64(idx)
                                        mem[mem[64]] = delegate.return_data[0]
                                        if delegate.return_code:
                                            s = stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4677 * _4724
                                            s = stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4677
                                            s = _4685 - _4684
                                            s = stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4677
                                            s = sha3(idx << 192, 2)
                                            idx = delegate.return_data[0]
                                            s = idx
                                            t = (stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4677 * _4724) + t
                                            continue 
                                revert
                            if stor2[idx << 192].field_256 - (stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96] * mem[96]) - stor2[idx << 192].field_512 >= stor2[idx << 192].field_0:
                                stor2[idx << 192].field_512 += stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96] * mem[96]
                                _5107 = mem[96]
                                mem[mem[64]] = activeBuySize[arg1].field_0
                                mem[mem[64] + 32] = uint64(idx)
                                mem[mem[64] + 64] = _5107
                                mem[mem[64] + 96] = stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4677 * _4724
                                emit 0x8bb250b1: activeBuySize[arg1].field_0, idx << 192, _5107, stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4677 * _4724
                                if uint64(s):
                                    mem[mem[64] + 4] = sha3(arg1, 5) + 3
                                    mem[mem[64] + 36] = uint64(s)
                                    require ext_code.size(0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01)
                                    delegate 0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01.0xb67700f4 with:
                                         gas gas_remaining - 50 wei
                                        args sha3(arg1, 5) + 3, uint64(s)
                                    mem[mem[64]] = delegate.return_data[0]
                                    require delegate.return_code
                                    u = 0
                                    s = activeBuySize[arg1].field_832
                                    u = 0
                                    while uint64(delegate.return_data[0]) != uint64(s):
                                        mem[0] = uint64(s)
                                        mem[32] = sha3(arg1, 5) + 4
                                        activeBuySize[arg1][4][s << 192].field_0 = 0
                                        u = s
                                        s = activeBuySize[arg1][4][s << 192].field_64
                                        u = u + 1
                                        continue 
                                    activeBuySize[arg1][4][delegate.return_data[0] << 192].field_0 = 0
                                    activeBuySize[arg1].field_768 = uint64(activeBuySize[arg1].field_768 - u)
                                    activeBuySize[arg1].field_832 = uint64(delegate.return_data[0])
                                    activeBuySize[arg1].field_832 = 0
                                    if not uint64(activeBuySize[arg1].field_768 - u):
                                        activeBuySize[arg1].field_896 = 0
                            else:
                                mem[0] = stor2[idx << 192].field_768
                                mem[32] = sha3(activeBuySize[arg1].field_256, 0)
                                balances[stor5[arg1].field_256][stor2[idx << 192].field_768] = balances[stor5[arg1].field_256][stor2[idx << 192].field_768] + stor2[idx << 192].field_256 - stor2[idx << 192].field_512 - (stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96] * mem[96])
                                _5112 = mem[96]
                                mem[mem[64]] = activeBuySize[arg1].field_0
                                mem[mem[64] + 32] = uint64(idx)
                                mem[mem[64] + 64] = _5112
                                mem[mem[64] + 96] = stor2[idx << 192].field_512 + (stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4677 * _4724)
                                emit 0xb8d0ac6f: activeBuySize[arg1].field_0, idx << 192, _5112, stor2[idx << 192].field_512 + (stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4677 * _4724)
                                stor2[idx << 192].field_0 = 0
                                stor2[idx << 192].field_256 = 0
                                stor2[idx << 192].field_512 = 0
                                stor2[idx << 192].field_768 = 0
                                if uint64(idx):
                                    mem[mem[64] + 4] = sha3(arg1, 5) + 3
                                    mem[mem[64] + 36] = uint64(idx)
                                    require ext_code.size(0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01)
                                    delegate 0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01.0xb67700f4 with:
                                         gas gas_remaining - 50 wei
                                        args sha3(arg1, 5) + 3, uint64(idx)
                                    mem[mem[64]] = delegate.return_data[0]
                                    require delegate.return_code
                                    u = 0
                                    s = activeBuySize[arg1].field_832
                                    u = 0
                                    while uint64(delegate.return_data[0]) != uint64(s):
                                        mem[0] = uint64(s)
                                        mem[32] = sha3(arg1, 5) + 4
                                        activeBuySize[arg1][4][s << 192].field_0 = 0
                                        u = s
                                        s = activeBuySize[arg1][4][s << 192].field_64
                                        u = u + 1
                                        continue 
                                    activeBuySize[arg1][4][delegate.return_data[0] << 192].field_0 = 0
                                    activeBuySize[arg1].field_768 = uint64(activeBuySize[arg1].field_768 - u)
                                    activeBuySize[arg1].field_832 = uint64(delegate.return_data[0])
                                    activeBuySize[arg1].field_832 = 0
                                    if not uint64(activeBuySize[arg1].field_768 - u):
                                        activeBuySize[arg1].field_896 = 0
                        balances[stor5[arg1].field_256][mem[204 len 20]] = balances[stor5[arg1].field_256][mem[204 len 20]] + (stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4677 * _4724) + t
                else:
                    if uint64(s):
                        mem[mem[64] + 4] = sha3(arg1, 5) + 3
                        mem[mem[64] + 36] = uint64(s)
                        require ext_code.size(0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01)
                        delegate 0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01.0xb67700f4 with:
                             gas gas_remaining - 50 wei
                            args sha3(arg1, 5) + 3, uint64(s)
                        mem[mem[64]] = delegate.return_data[0]
                        require delegate.return_code
                        s = 0
                        idx = activeBuySize[arg1].field_832
                        s = 0
                        while uint64(delegate.return_data[0]) != uint64(idx):
                            mem[0] = uint64(idx)
                            mem[32] = sha3(arg1, 5) + 4
                            activeBuySize[arg1][4][idx << 192].field_0 = 0
                            s = idx
                            idx = activeBuySize[arg1][4][idx << 192].field_64
                            s = s + 1
                            continue 
                        activeBuySize[arg1][4][delegate.return_data[0] << 192].field_0 = 0
                        activeBuySize[arg1].field_768 = uint64(activeBuySize[arg1].field_768 - s)
                        activeBuySize[arg1].field_832 = uint64(delegate.return_data[0])
                        activeBuySize[arg1].field_832 = 0
                        if not uint64(activeBuySize[arg1].field_768 - s):
                            activeBuySize[arg1].field_896 = 0
                    stor2[stor1 + 1 << 192].field_0 = mem[96]
                    stor2[stor1 + 1 << 192].field_256 = mem[128]
                    stor2[stor1 + 1 << 192].field_512 = mem[160]
                    stor2[stor1 + 1 << 192].field_768 = mem[204 len 20]
                    require mem[224] <= 1
                    stor2[stor1 + 1 << 192].field_768 = mem[204 len 20]
                    stor2[stor1 + 1 << 192].field_928 = mem[244 len 12]
                    balances[stor5[arg1].field_256][mem[204 len 20]] += t
                    if not activeBuySize[arg1].field_1280:
                        require not activeBuySize[arg1][6][uint64(stor1 + 1)].field_0
                        require not activeBuySize[arg1][6][stor1 + 1 << 192].field_64
                        if activeBuySize[arg1][6][activeBuySize[arg1].field_1280].field_64:
                            if activeBuySize[arg1].field_1408:
                                require activeBuySize[arg1].field_1408 == activeBuySize[arg1].field_1408
                            else:
                                if activeBuySize[arg1].field_1344:
                                    require activeBuySize[arg1].field_1408 == activeBuySize[arg1].field_1408
                        else:
                            if activeBuySize[arg1][6][0].field_0 != activeBuySize[arg1].field_1408:
                                if activeBuySize[arg1].field_1408:
                                    require activeBuySize[arg1].field_1408 == activeBuySize[arg1].field_1408
                                else:
                                    if activeBuySize[arg1].field_1344:
                                        require activeBuySize[arg1].field_1408 == activeBuySize[arg1].field_1408
                        activeBuySize[arg1][6][stor1 + 1 << 192].field_0 = activeBuySize[arg1].field_1408
                        activeBuySize[arg1][6][stor1 + 1 << 192].field_64 = 0
                        activeBuySize[arg1][6][stor1 + 1 << 192].field_256 = 0
                        if activeBuySize[arg1].field_1408:
                            activeBuySize[arg1][6][activeBuySize[arg1].field_1280].field_64 = uint64(stor1 + 1)
                        else:
                            activeBuySize[arg1].field_1344 = uint64(stor1 + 1)
                        activeBuySize[arg1].field_1408 = uint64(stor1 + 1)
                    else:
                        if arg2 < stor2[stor5[arg1].field_1280].field_0:
                            require not activeBuySize[arg1][6][uint64(stor1 + 1)].field_0
                            require not activeBuySize[arg1][6][stor1 + 1 << 192].field_64
                            if activeBuySize[arg1][6][0].field_64 != activeBuySize[arg1].field_1344:
                                if activeBuySize[arg1].field_1344 != activeBuySize[arg1].field_1344:
                                    require not activeBuySize[arg1].field_1408
                                    require not activeBuySize[arg1].field_1344
                            else:
                                if activeBuySize[arg1][6][activeBuySize[arg1].field_1344].field_0:
                                    if activeBuySize[arg1].field_1344 != activeBuySize[arg1].field_1344:
                                        require not activeBuySize[arg1].field_1408
                                        require not activeBuySize[arg1].field_1344
                            activeBuySize[arg1][6][stor1 + 1 << 192].field_0 = 0
                            activeBuySize[arg1][6][stor1 + 1 << 192].field_64 = activeBuySize[arg1].field_1344
                            activeBuySize[arg1][6][stor1 + 1 << 192].field_256 = 0
                            activeBuySize[arg1].field_1344 = uint64(stor1 + 1)
                            if activeBuySize[arg1].field_1344:
                                activeBuySize[arg1][6][activeBuySize[arg1].field_1344].field_0 = uint64(stor1 + 1)
                            else:
                                activeBuySize[arg1].field_1408 = uint64(stor1 + 1)
                        else:
                            if arg2 >= stor2[stor5[arg1].field_1280].field_0:
                                require not activeBuySize[arg1][6][uint64(stor1 + 1)].field_0
                                require not activeBuySize[arg1][6][stor1 + 1 << 192].field_64
                                if activeBuySize[arg1][6][activeBuySize[arg1].field_1280].field_64:
                                    if activeBuySize[arg1].field_1408:
                                        require activeBuySize[arg1].field_1408 == activeBuySize[arg1].field_1408
                                    else:
                                        if activeBuySize[arg1].field_1344:
                                            require activeBuySize[arg1].field_1408 == activeBuySize[arg1].field_1408
                                else:
                                    if activeBuySize[arg1][6][0].field_0 != activeBuySize[arg1].field_1408:
                                        if activeBuySize[arg1].field_1408:
                                            require activeBuySize[arg1].field_1408 == activeBuySize[arg1].field_1408
                                        else:
                                            if activeBuySize[arg1].field_1344:
                                                require activeBuySize[arg1].field_1408 == activeBuySize[arg1].field_1408
                                activeBuySize[arg1][6][stor1 + 1 << 192].field_0 = activeBuySize[arg1].field_1408
                                activeBuySize[arg1][6][stor1 + 1 << 192].field_64 = 0
                                activeBuySize[arg1][6][stor1 + 1 << 192].field_256 = 0
                                if activeBuySize[arg1].field_1408:
                                    activeBuySize[arg1][6][activeBuySize[arg1].field_1280].field_64 = uint64(stor1 + 1)
                                else:
                                    activeBuySize[arg1].field_1344 = uint64(stor1 + 1)
                                activeBuySize[arg1].field_1408 = uint64(stor1 + 1)
                            else:
                                mem[0] = 0
                                require ext_code.size(0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01)
                                delegate 0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01.0xb67700f4 with:
                                     gas gas_remaining - 50 wei
                                    args sha3(arg1, 5) + 5, activeBuySize[arg1].field_1344
                                mem[mem[64]] = delegate.return_data[0]
                                require delegate.return_code
                                idx = mem[mem[64]]
                                s = sha3(0, 2)
                                while uint64(idx):
                                    mem[0] = uint64(idx)
                                    mem[32] = 2
                                    if arg2 >= stor2[idx << 192].field_0:
                                        mem[mem[64] + 4] = sha3(arg1, 5) + 5
                                        mem[mem[64] + 36] = uint64(idx)
                                        require ext_code.size(0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01)
                                        delegate 0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01.0xb67700f4 with:
                                             gas gas_remaining - 50 wei
                                            args sha3(arg1, 5) + 5, uint64(idx)
                                        mem[mem[64]] = delegate.return_data[0]
                                        require delegate.return_code
                                        idx = delegate.return_data[0]
                                        s = sha3(idx << 192, 2)
                                        continue 
                                    require not activeBuySize[arg1][6][uint64(stor1 + 1)].field_0
                                    require not activeBuySize[arg1][6][stor1 + 1 << 192].field_64
                                    if activeBuySize[arg1][6][activeBuySize[arg1][6][idx << 192].field_0].field_64 != uint64(idx):
                                        if activeBuySize[arg1][6][idx << 192].field_0:
                                            require activeBuySize[arg1].field_1408 == activeBuySize[arg1][6][idx << 192].field_0
                                            require not uint64(idx)
                                        else:
                                            if activeBuySize[arg1].field_1344 != uint64(idx):
                                                require activeBuySize[arg1].field_1408 == activeBuySize[arg1][6][idx << 192].field_0
                                                require not uint64(idx)
                                    else:
                                        if activeBuySize[arg1][6][uint64(idx)].field_0 != activeBuySize[arg1][6][idx << 192].field_0:
                                            if activeBuySize[arg1][6][idx << 192].field_0:
                                                require activeBuySize[arg1].field_1408 == activeBuySize[arg1][6][idx << 192].field_0
                                                require not uint64(idx)
                                            else:
                                                if activeBuySize[arg1].field_1344 != uint64(idx):
                                                    require activeBuySize[arg1].field_1408 == activeBuySize[arg1][6][idx << 192].field_0
                                                    require not uint64(idx)
                                    activeBuySize[arg1][6][stor1 + 1 << 192].field_0 = activeBuySize[arg1][6][idx << 192].field_0
                                    activeBuySize[arg1][6][stor1 + 1 << 192].field_64 = uint64(idx)
                                    if activeBuySize[arg1][6][idx << 192].field_0:
                                        activeBuySize[arg1][6][activeBuySize[arg1][6][idx << 192].field_0].field_64 = uint64(stor1 + 1)
                                    else:
                                        activeBuySize[arg1].field_1344 = uint64(stor1 + 1)
                                    if uint64(idx):
                                        activeBuySize[arg1][6][uint64(idx)].field_0 = uint64(stor1 + 1)
                                    else:
                                        activeBuySize[arg1].field_1408 = uint64(stor1 + 1)
                                    activeBuySize[arg1].field_1280 = uint64(activeBuySize[arg1].field_1280 + 1)
                                    emit 0xeaac085d: arg1, stor1 + 1 << 192, msg.sender, arg2, arg3, stor2[stor1 + 1 << 192].field_512
                                    return 1
                                require not activeBuySize[arg1][6][uint64(stor1 + 1)].field_0
                                require not activeBuySize[arg1][6][stor1 + 1 << 192].field_64
                                if activeBuySize[arg1][6][activeBuySize[arg1][6][idx << 192].field_0].field_64 != uint64(idx):
                                    if activeBuySize[arg1][6][idx << 192].field_0:
                                        require activeBuySize[arg1].field_1408 == activeBuySize[arg1][6][idx << 192].field_0
                                        require not uint64(idx)
                                    else:
                                        if activeBuySize[arg1].field_1344 != uint64(idx):
                                            require activeBuySize[arg1].field_1408 == activeBuySize[arg1][6][idx << 192].field_0
                                            require not uint64(idx)
                                else:
                                    if activeBuySize[arg1][6][uint64(idx)].field_0 != activeBuySize[arg1][6][idx << 192].field_0:
                                        if activeBuySize[arg1][6][idx << 192].field_0:
                                            require activeBuySize[arg1].field_1408 == activeBuySize[arg1][6][idx << 192].field_0
                                            require not uint64(idx)
                                        else:
                                            if activeBuySize[arg1].field_1344 != uint64(idx):
                                                require activeBuySize[arg1].field_1408 == activeBuySize[arg1][6][idx << 192].field_0
                                                require not uint64(idx)
                                activeBuySize[arg1][6][stor1 + 1 << 192].field_0 = activeBuySize[arg1][6][idx << 192].field_0
                                activeBuySize[arg1][6][stor1 + 1 << 192].field_64 = uint64(idx)
                                if activeBuySize[arg1][6][idx << 192].field_0:
                                    activeBuySize[arg1][6][activeBuySize[arg1][6][idx << 192].field_0].field_64 = uint64(stor1 + 1)
                                else:
                                    activeBuySize[arg1].field_1344 = uint64(stor1 + 1)
                                if uint64(idx):
                                    activeBuySize[arg1][6][uint64(idx)].field_0 = uint64(stor1 + 1)
                                else:
                                    activeBuySize[arg1].field_1408 = uint64(stor1 + 1)
                    activeBuySize[arg1].field_1280 = uint64(activeBuySize[arg1].field_1280 + 1)
                    emit 0xeaac085d: arg1, stor1 + 1 << 192, msg.sender, arg2, arg3, stor2[stor1 + 1 << 192].field_512
                return 1
        else:
            call activeBuySize[arg1].field_512.multiAsset() with:
                 gas gas_remaining - 50 wei
            require ext_call.success
            require ext_code.size(activeBuySize[arg1].field_512)
            call activeBuySize[arg1].field_512.0x95d89b41 with:
                 gas gas_remaining - 50 wei
            require ext_call.success
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).transferFrom(address rg1, address rg2, uint256 rg3, bytes32 rg4) with:
                 gas gas_remaining - 50 wei
                args 0, uint32(msg.sender), address(this.address), arg3 - balances[stor5[arg1].field_512][address(msg.sender)], ext_call.return_data[0]
            require ext_call.success
            if not ext_call.return_data[0]:
                emit Error('Deposit failed');
                return 0
            mem[0] = msg.sender
            balances[stor5[arg1].field_512][address(msg.sender)] = 0
            require uint64(stor1 + 1)
            stor1 = uint64(stor1 + 1)
            mem[64] = 256
            mem[96] = arg2
            mem[128] = arg3
            mem[160] = 0
            mem[192] = msg.sender
            mem[224] = 1
            s = 0
            s = 0
            s = 0
            s = 0
            s = 0
            idx = activeBuySize[arg1].field_832
            s = 0
            t = 0
            while uint64(idx):
                if stor2[idx << 192].field_0 >= mem[96]:
                    _4681 = mem[96]
                    require mem[96]
                    _4686 = mem[160]
                    _4687 = mem[128]
                    if mem[128] - mem[160] <= stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96]:
                        _4725 = mem[96]
                        if not mem[96]:
                            mem[0] = stor2[idx << 192].field_768
                            mem[32] = sha3(activeBuySize[arg1].field_512, 0)
                            balances[stor5[arg1].field_512][stor2[idx << 192].field_768] = mem[128] - mem[160] + balances[stor5[arg1].field_512][stor2[idx << 192].field_768]
                            if mem[128] - mem[160] > stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96]:
                                mem[160] = (stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96]) + mem[160]
                                if stor2[idx << 192].field_256 - (mem[128] * mem[96]) + (_4686 * mem[96]) - stor2[idx << 192].field_512 >= stor2[idx << 192].field_0:
                                    stor2[idx << 192].field_512 = (mem[128] * mem[96]) - (_4686 * mem[96]) + stor2[idx << 192].field_512
                                    mem[mem[64] + 64] = mem[96]
                                    mem[mem[64] + 96] = (mem[128] * mem[96]) - (_4686 * mem[96])
                                    emit 0x8bb250b1: activeBuySize[arg1].field_0, idx << 192, mem[96], (mem[128] * mem[96]) - (_4686 * mem[96])
                                    mem[mem[64] + 4] = sha3(arg1, 5) + 3
                                    mem[mem[64] + 36] = uint64(idx)
                                    if ext_code.size(0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01):
                                        delegate 0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01.0xb67700f4 with:
                                             gas gas_remaining - 50 wei
                                            args sha3(arg1, 5) + 3, uint64(idx)
                                        mem[mem[64]] = delegate.return_data[0]
                                        if delegate.return_code:
                                            s = (_4687 * _4725) - (_4686 * _4725)
                                            s = _4687 - _4686
                                            s = _4687 - _4686
                                            s = stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4681
                                            s = sha3(idx << 192, 2)
                                            idx = delegate.return_data[0]
                                            s = s
                                            t = (_4687 * _4725) - (_4686 * _4725) + t
                                            continue 
                                else:
                                    mem[0] = stor2[idx << 192].field_768
                                    mem[32] = sha3(activeBuySize[arg1].field_256, 0)
                                    balances[stor5[arg1].field_256][stor2[idx << 192].field_768] = balances[stor5[arg1].field_256][stor2[idx << 192].field_768] + stor2[idx << 192].field_256 - stor2[idx << 192].field_512 - (mem[128] * mem[96]) + (_4686 * mem[96])
                                    mem[mem[64] + 32] = uint64(idx)
                                    mem[mem[64] + 64] = mem[96]
                                    mem[mem[64] + 96] = stor2[idx << 192].field_512 + (_4687 * mem[96]) - (_4686 * mem[96])
                                    emit 0xb8d0ac6f: activeBuySize[arg1].field_0, idx << 192, mem[96], stor2[idx << 192].field_512 + (_4687 * mem[96]) - (_4686 * mem[96])
                                    mem[0] = uint64(idx)
                                    mem[32] = 2
                                    stor2[idx << 192].field_0 = 0
                                    stor2[idx << 192].field_256 = 0
                                    stor2[idx << 192].field_512 = 0
                                    stor2[idx << 192].field_768 = 0
                                    mem[mem[64] + 4] = sha3(arg1, 5) + 3
                                    mem[mem[64] + 36] = uint64(idx)
                                    if ext_code.size(0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01):
                                        delegate 0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01.0xb67700f4 with:
                                             gas gas_remaining - 50 wei
                                            args sha3(arg1, 5) + 3, uint64(idx)
                                        mem[mem[64]] = delegate.return_data[0]
                                        if delegate.return_code:
                                            s = (_4687 * _4725) - (_4686 * _4725)
                                            s = _4687 - _4686
                                            s = _4687 - _4686
                                            s = stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4681
                                            s = sha3(idx << 192, 2)
                                            idx = delegate.return_data[0]
                                            s = idx
                                            t = (_4687 * _4725) - (_4686 * _4725) + t
                                            continue 
                                revert
                            if stor2[idx << 192].field_256 - (mem[128] * mem[96]) + (mem[160] * mem[96]) - stor2[idx << 192].field_512 >= stor2[idx << 192].field_0:
                                stor2[idx << 192].field_512 = (mem[128] * mem[96]) - (mem[160] * mem[96]) + stor2[idx << 192].field_512
                                _4956 = mem[96]
                                mem[mem[64]] = activeBuySize[arg1].field_0
                                mem[mem[64] + 32] = uint64(idx)
                                mem[mem[64] + 64] = _4956
                                mem[mem[64] + 96] = (_4687 * _4725) - (_4686 * _4725)
                                emit 0x8bb250b1: activeBuySize[arg1].field_0, idx << 192, _4956, (_4687 * _4725) - (_4686 * _4725)
                                if uint64(s):
                                    mem[mem[64] + 4] = sha3(arg1, 5) + 3
                                    mem[mem[64] + 36] = uint64(s)
                                    require ext_code.size(0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01)
                                    delegate 0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01.0xb67700f4 with:
                                         gas gas_remaining - 50 wei
                                        args sha3(arg1, 5) + 3, uint64(s)
                                    mem[mem[64]] = delegate.return_data[0]
                                    require delegate.return_code
                                    s = 0
                                    idx = activeBuySize[arg1].field_832
                                    s = 0
                                    while uint64(delegate.return_data[0]) != uint64(idx):
                                        mem[0] = uint64(idx)
                                        mem[32] = sha3(arg1, 5) + 4
                                        activeBuySize[arg1][4][idx << 192].field_0 = 0
                                        s = idx
                                        idx = activeBuySize[arg1][4][idx << 192].field_64
                                        s = s + 1
                                        continue 
                                    activeBuySize[arg1][4][delegate.return_data[0] << 192].field_0 = 0
                                    activeBuySize[arg1].field_768 = uint64(activeBuySize[arg1].field_768 - s)
                                    activeBuySize[arg1].field_832 = uint64(delegate.return_data[0])
                                    activeBuySize[arg1].field_832 = 0
                                    if not uint64(activeBuySize[arg1].field_768 - s):
                                        activeBuySize[arg1].field_896 = 0
                            else:
                                mem[0] = stor2[idx << 192].field_768
                                mem[32] = sha3(activeBuySize[arg1].field_256, 0)
                                balances[stor5[arg1].field_256][stor2[idx << 192].field_768] = balances[stor5[arg1].field_256][stor2[idx << 192].field_768] + stor2[idx << 192].field_256 - stor2[idx << 192].field_512 - (mem[128] * mem[96]) + (mem[160] * mem[96])
                                _4961 = mem[96]
                                mem[mem[64]] = activeBuySize[arg1].field_0
                                mem[mem[64] + 32] = uint64(idx)
                                mem[mem[64] + 64] = _4961
                                mem[mem[64] + 96] = stor2[idx << 192].field_512 + (_4687 * _4725) - (_4686 * _4725)
                                emit 0xb8d0ac6f: activeBuySize[arg1].field_0, idx << 192, _4961, stor2[idx << 192].field_512 + (_4687 * _4725) - (_4686 * _4725)
                                stor2[idx << 192].field_0 = 0
                                stor2[idx << 192].field_256 = 0
                                stor2[idx << 192].field_512 = 0
                                stor2[idx << 192].field_768 = 0
                                if uint64(idx):
                                    mem[mem[64] + 4] = sha3(arg1, 5) + 3
                                    mem[mem[64] + 36] = uint64(idx)
                                    require ext_code.size(0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01)
                                    delegate 0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01.0xb67700f4 with:
                                         gas gas_remaining - 50 wei
                                        args sha3(arg1, 5) + 3, uint64(idx)
                                    mem[mem[64]] = delegate.return_data[0]
                                    require delegate.return_code
                                    s = 0
                                    idx = activeBuySize[arg1].field_832
                                    s = 0
                                    while uint64(delegate.return_data[0]) != uint64(idx):
                                        mem[0] = uint64(idx)
                                        mem[32] = sha3(arg1, 5) + 4
                                        activeBuySize[arg1][4][idx << 192].field_0 = 0
                                        s = idx
                                        idx = activeBuySize[arg1][4][idx << 192].field_64
                                        s = s + 1
                                        continue 
                                    activeBuySize[arg1][4][delegate.return_data[0] << 192].field_0 = 0
                                    activeBuySize[arg1].field_768 = uint64(activeBuySize[arg1].field_768 - s)
                                    activeBuySize[arg1].field_832 = uint64(delegate.return_data[0])
                                    activeBuySize[arg1].field_832 = 0
                                    if not uint64(activeBuySize[arg1].field_768 - s):
                                        activeBuySize[arg1].field_896 = 0
                        else:
                            require mem[96]
                            require (mem[128] * mem[96]) - (mem[160] * mem[96]) / mem[96] == mem[128] - mem[160]
                            mem[0] = stor2[idx << 192].field_768
                            mem[32] = sha3(activeBuySize[arg1].field_512, 0)
                            balances[stor5[arg1].field_512][stor2[idx << 192].field_768] = mem[128] - mem[160] + balances[stor5[arg1].field_512][stor2[idx << 192].field_768]
                            if mem[128] - mem[160] > stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96]:
                                mem[160] = (stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96]) + mem[160]
                                if stor2[idx << 192].field_256 - (mem[128] * mem[96]) + (_4686 * mem[96]) - stor2[idx << 192].field_512 >= stor2[idx << 192].field_0:
                                    stor2[idx << 192].field_512 = (mem[128] * mem[96]) - (_4686 * mem[96]) + stor2[idx << 192].field_512
                                    mem[mem[64] + 64] = mem[96]
                                    mem[mem[64] + 96] = (mem[128] * mem[96]) - (_4686 * mem[96])
                                    emit 0x8bb250b1: activeBuySize[arg1].field_0, idx << 192, mem[96], (mem[128] * mem[96]) - (_4686 * mem[96])
                                    mem[mem[64] + 4] = sha3(arg1, 5) + 3
                                    mem[mem[64] + 36] = uint64(idx)
                                    if ext_code.size(0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01):
                                        delegate 0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01.0xb67700f4 with:
                                             gas gas_remaining - 50 wei
                                            args sha3(arg1, 5) + 3, uint64(idx)
                                        mem[mem[64]] = delegate.return_data[0]
                                        if delegate.return_code:
                                            s = (_4687 * _4725) - (_4686 * _4725)
                                            s = _4687 - _4686
                                            s = _4687 - _4686
                                            s = stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4681
                                            s = sha3(idx << 192, 2)
                                            idx = delegate.return_data[0]
                                            s = s
                                            t = (_4687 * _4725) - (_4686 * _4725) + t
                                            continue 
                                else:
                                    mem[0] = stor2[idx << 192].field_768
                                    mem[32] = sha3(activeBuySize[arg1].field_256, 0)
                                    balances[stor5[arg1].field_256][stor2[idx << 192].field_768] = balances[stor5[arg1].field_256][stor2[idx << 192].field_768] + stor2[idx << 192].field_256 - stor2[idx << 192].field_512 - (mem[128] * mem[96]) + (_4686 * mem[96])
                                    mem[mem[64] + 32] = uint64(idx)
                                    mem[mem[64] + 64] = mem[96]
                                    mem[mem[64] + 96] = stor2[idx << 192].field_512 + (_4687 * mem[96]) - (_4686 * mem[96])
                                    emit 0xb8d0ac6f: activeBuySize[arg1].field_0, idx << 192, mem[96], stor2[idx << 192].field_512 + (_4687 * mem[96]) - (_4686 * mem[96])
                                    mem[0] = uint64(idx)
                                    mem[32] = 2
                                    stor2[idx << 192].field_0 = 0
                                    stor2[idx << 192].field_256 = 0
                                    stor2[idx << 192].field_512 = 0
                                    stor2[idx << 192].field_768 = 0
                                    mem[mem[64] + 4] = sha3(arg1, 5) + 3
                                    mem[mem[64] + 36] = uint64(idx)
                                    if ext_code.size(0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01):
                                        delegate 0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01.0xb67700f4 with:
                                             gas gas_remaining - 50 wei
                                            args sha3(arg1, 5) + 3, uint64(idx)
                                        mem[mem[64]] = delegate.return_data[0]
                                        if delegate.return_code:
                                            s = (_4687 * _4725) - (_4686 * _4725)
                                            s = _4687 - _4686
                                            s = _4687 - _4686
                                            s = stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4681
                                            s = sha3(idx << 192, 2)
                                            idx = delegate.return_data[0]
                                            s = idx
                                            t = (_4687 * _4725) - (_4686 * _4725) + t
                                            continue 
                                revert
                            if stor2[idx << 192].field_256 - (mem[128] * mem[96]) + (mem[160] * mem[96]) - stor2[idx << 192].field_512 >= stor2[idx << 192].field_0:
                                stor2[idx << 192].field_512 = (mem[128] * mem[96]) - (mem[160] * mem[96]) + stor2[idx << 192].field_512
                                _5144 = mem[96]
                                mem[mem[64]] = activeBuySize[arg1].field_0
                                mem[mem[64] + 32] = uint64(idx)
                                mem[mem[64] + 64] = _5144
                                mem[mem[64] + 96] = (_4687 * _4725) - (_4686 * _4725)
                                emit 0x8bb250b1: activeBuySize[arg1].field_0, idx << 192, _5144, (_4687 * _4725) - (_4686 * _4725)
                                if uint64(s):
                                    mem[mem[64] + 4] = sha3(arg1, 5) + 3
                                    mem[mem[64] + 36] = uint64(s)
                                    require ext_code.size(0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01)
                                    delegate 0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01.0xb67700f4 with:
                                         gas gas_remaining - 50 wei
                                        args sha3(arg1, 5) + 3, uint64(s)
                                    mem[mem[64]] = delegate.return_data[0]
                                    require delegate.return_code
                                    s = 0
                                    idx = activeBuySize[arg1].field_832
                                    s = 0
                                    while uint64(delegate.return_data[0]) != uint64(idx):
                                        mem[0] = uint64(idx)
                                        mem[32] = sha3(arg1, 5) + 4
                                        activeBuySize[arg1][4][idx << 192].field_0 = 0
                                        s = idx
                                        idx = activeBuySize[arg1][4][idx << 192].field_64
                                        s = s + 1
                                        continue 
                                    activeBuySize[arg1][4][delegate.return_data[0] << 192].field_0 = 0
                                    activeBuySize[arg1].field_768 = uint64(activeBuySize[arg1].field_768 - s)
                                    activeBuySize[arg1].field_832 = uint64(delegate.return_data[0])
                                    activeBuySize[arg1].field_832 = 0
                                    if not uint64(activeBuySize[arg1].field_768 - s):
                                        activeBuySize[arg1].field_896 = 0
                            else:
                                mem[0] = stor2[idx << 192].field_768
                                mem[32] = sha3(activeBuySize[arg1].field_256, 0)
                                balances[stor5[arg1].field_256][stor2[idx << 192].field_768] = balances[stor5[arg1].field_256][stor2[idx << 192].field_768] + stor2[idx << 192].field_256 - stor2[idx << 192].field_512 - (mem[128] * mem[96]) + (mem[160] * mem[96])
                                _5149 = mem[96]
                                mem[mem[64]] = activeBuySize[arg1].field_0
                                mem[mem[64] + 32] = uint64(idx)
                                mem[mem[64] + 64] = _5149
                                mem[mem[64] + 96] = stor2[idx << 192].field_512 + (_4687 * _4725) - (_4686 * _4725)
                                emit 0xb8d0ac6f: activeBuySize[arg1].field_0, idx << 192, _5149, stor2[idx << 192].field_512 + (_4687 * _4725) - (_4686 * _4725)
                                stor2[idx << 192].field_0 = 0
                                stor2[idx << 192].field_256 = 0
                                stor2[idx << 192].field_512 = 0
                                stor2[idx << 192].field_768 = 0
                                if uint64(idx):
                                    mem[mem[64] + 4] = sha3(arg1, 5) + 3
                                    mem[mem[64] + 36] = uint64(idx)
                                    require ext_code.size(0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01)
                                    delegate 0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01.0xb67700f4 with:
                                         gas gas_remaining - 50 wei
                                        args sha3(arg1, 5) + 3, uint64(idx)
                                    mem[mem[64]] = delegate.return_data[0]
                                    require delegate.return_code
                                    s = 0
                                    idx = activeBuySize[arg1].field_832
                                    s = 0
                                    while uint64(delegate.return_data[0]) != uint64(idx):
                                        mem[0] = uint64(idx)
                                        mem[32] = sha3(arg1, 5) + 4
                                        activeBuySize[arg1][4][idx << 192].field_0 = 0
                                        s = idx
                                        idx = activeBuySize[arg1][4][idx << 192].field_64
                                        s = s + 1
                                        continue 
                                    activeBuySize[arg1][4][delegate.return_data[0] << 192].field_0 = 0
                                    activeBuySize[arg1].field_768 = uint64(activeBuySize[arg1].field_768 - s)
                                    activeBuySize[arg1].field_832 = uint64(delegate.return_data[0])
                                    activeBuySize[arg1].field_832 = 0
                                    if not uint64(activeBuySize[arg1].field_768 - s):
                                        activeBuySize[arg1].field_896 = 0
                        balances[stor5[arg1].field_256][mem[204 len 20]] = balances[stor5[arg1].field_256][mem[204 len 20]] + (_4687 * _4725) - (_4686 * _4725) + t
                    else:
                        _4726 = mem[96]
                        if not mem[96]:
                            mem[0] = stor2[idx << 192].field_768
                            mem[32] = sha3(activeBuySize[arg1].field_512, 0)
                            balances[stor5[arg1].field_512][stor2[idx << 192].field_768] += stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96]
                            if mem[128] - mem[160] > stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96]:
                                mem[160] = (stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96]) + mem[160]
                                if stor2[idx << 192].field_256 - (stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96] * mem[96]) - stor2[idx << 192].field_512 >= stor2[idx << 192].field_0:
                                    stor2[idx << 192].field_512 += stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96] * mem[96]
                                    mem[mem[64] + 64] = mem[96]
                                    mem[mem[64] + 96] = stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96] * mem[96]
                                    emit 0x8bb250b1: activeBuySize[arg1].field_0, idx << 192, mem[96], stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96] * mem[96]
                                    mem[mem[64] + 4] = sha3(arg1, 5) + 3
                                    mem[mem[64] + 36] = uint64(idx)
                                    if ext_code.size(0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01):
                                        delegate 0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01.0xb67700f4 with:
                                             gas gas_remaining - 50 wei
                                            args sha3(arg1, 5) + 3, uint64(idx)
                                        mem[mem[64]] = delegate.return_data[0]
                                        if delegate.return_code:
                                            s = stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4681 * _4726
                                            s = stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4681
                                            s = _4687 - _4686
                                            s = stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4681
                                            s = sha3(idx << 192, 2)
                                            idx = delegate.return_data[0]
                                            s = s
                                            t = (stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4681 * _4726) + t
                                            continue 
                                else:
                                    mem[0] = stor2[idx << 192].field_768
                                    mem[32] = sha3(activeBuySize[arg1].field_256, 0)
                                    balances[stor5[arg1].field_256][stor2[idx << 192].field_768] = balances[stor5[arg1].field_256][stor2[idx << 192].field_768] + stor2[idx << 192].field_256 - stor2[idx << 192].field_512 - (stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96] * mem[96])
                                    mem[mem[64] + 32] = uint64(idx)
                                    mem[mem[64] + 64] = mem[96]
                                    mem[mem[64] + 96] = stor2[idx << 192].field_512 + (stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96] * mem[96])
                                    emit 0xb8d0ac6f: activeBuySize[arg1].field_0, idx << 192, mem[96], stor2[idx << 192].field_512 + (stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96] * mem[96])
                                    mem[0] = uint64(idx)
                                    mem[32] = 2
                                    stor2[idx << 192].field_0 = 0
                                    stor2[idx << 192].field_256 = 0
                                    stor2[idx << 192].field_512 = 0
                                    stor2[idx << 192].field_768 = 0
                                    mem[mem[64] + 4] = sha3(arg1, 5) + 3
                                    mem[mem[64] + 36] = uint64(idx)
                                    if ext_code.size(0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01):
                                        delegate 0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01.0xb67700f4 with:
                                             gas gas_remaining - 50 wei
                                            args sha3(arg1, 5) + 3, uint64(idx)
                                        mem[mem[64]] = delegate.return_data[0]
                                        if delegate.return_code:
                                            s = stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4681 * _4726
                                            s = stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4681
                                            s = _4687 - _4686
                                            s = stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4681
                                            s = sha3(idx << 192, 2)
                                            idx = delegate.return_data[0]
                                            s = idx
                                            t = (stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4681 * _4726) + t
                                            continue 
                                revert
                            if stor2[idx << 192].field_256 - (stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96] * mem[96]) - stor2[idx << 192].field_512 >= stor2[idx << 192].field_0:
                                stor2[idx << 192].field_512 += stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96] * mem[96]
                                _4975 = mem[96]
                                mem[mem[64]] = activeBuySize[arg1].field_0
                                mem[mem[64] + 32] = uint64(idx)
                                mem[mem[64] + 64] = _4975
                                mem[mem[64] + 96] = stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4681 * _4726
                                emit 0x8bb250b1: activeBuySize[arg1].field_0, idx << 192, _4975, stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4681 * _4726
                                if uint64(s):
                                    mem[mem[64] + 4] = sha3(arg1, 5) + 3
                                    mem[mem[64] + 36] = uint64(s)
                                    require ext_code.size(0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01)
                                    delegate 0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01.0xb67700f4 with:
                                         gas gas_remaining - 50 wei
                                        args sha3(arg1, 5) + 3, uint64(s)
                                    mem[mem[64]] = delegate.return_data[0]
                                    require delegate.return_code
                                    u = 0
                                    s = activeBuySize[arg1].field_832
                                    u = 0
                                    while uint64(delegate.return_data[0]) != uint64(s):
                                        mem[0] = uint64(s)
                                        mem[32] = sha3(arg1, 5) + 4
                                        activeBuySize[arg1][4][s << 192].field_0 = 0
                                        u = s
                                        s = activeBuySize[arg1][4][s << 192].field_64
                                        u = u + 1
                                        continue 
                                    activeBuySize[arg1][4][delegate.return_data[0] << 192].field_0 = 0
                                    activeBuySize[arg1].field_768 = uint64(activeBuySize[arg1].field_768 - u)
                                    activeBuySize[arg1].field_832 = uint64(delegate.return_data[0])
                                    activeBuySize[arg1].field_832 = 0
                                    if not uint64(activeBuySize[arg1].field_768 - u):
                                        activeBuySize[arg1].field_896 = 0
                            else:
                                mem[0] = stor2[idx << 192].field_768
                                mem[32] = sha3(activeBuySize[arg1].field_256, 0)
                                balances[stor5[arg1].field_256][stor2[idx << 192].field_768] = balances[stor5[arg1].field_256][stor2[idx << 192].field_768] + stor2[idx << 192].field_256 - stor2[idx << 192].field_512 - (stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96] * mem[96])
                                _4980 = mem[96]
                                mem[mem[64]] = activeBuySize[arg1].field_0
                                mem[mem[64] + 32] = uint64(idx)
                                mem[mem[64] + 64] = _4980
                                mem[mem[64] + 96] = stor2[idx << 192].field_512 + (stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4681 * _4726)
                                emit 0xb8d0ac6f: activeBuySize[arg1].field_0, idx << 192, _4980, stor2[idx << 192].field_512 + (stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4681 * _4726)
                                stor2[idx << 192].field_0 = 0
                                stor2[idx << 192].field_256 = 0
                                stor2[idx << 192].field_512 = 0
                                stor2[idx << 192].field_768 = 0
                                if uint64(idx):
                                    mem[mem[64] + 4] = sha3(arg1, 5) + 3
                                    mem[mem[64] + 36] = uint64(idx)
                                    require ext_code.size(0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01)
                                    delegate 0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01.0xb67700f4 with:
                                         gas gas_remaining - 50 wei
                                        args sha3(arg1, 5) + 3, uint64(idx)
                                    mem[mem[64]] = delegate.return_data[0]
                                    require delegate.return_code
                                    u = 0
                                    s = activeBuySize[arg1].field_832
                                    u = 0
                                    while uint64(delegate.return_data[0]) != uint64(s):
                                        mem[0] = uint64(s)
                                        mem[32] = sha3(arg1, 5) + 4
                                        activeBuySize[arg1][4][s << 192].field_0 = 0
                                        u = s
                                        s = activeBuySize[arg1][4][s << 192].field_64
                                        u = u + 1
                                        continue 
                                    activeBuySize[arg1][4][delegate.return_data[0] << 192].field_0 = 0
                                    activeBuySize[arg1].field_768 = uint64(activeBuySize[arg1].field_768 - u)
                                    activeBuySize[arg1].field_832 = uint64(delegate.return_data[0])
                                    activeBuySize[arg1].field_832 = 0
                                    if not uint64(activeBuySize[arg1].field_768 - u):
                                        activeBuySize[arg1].field_896 = 0
                        else:
                            require mem[96]
                            require stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96] * mem[96] / mem[96] == stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96]
                            mem[0] = stor2[idx << 192].field_768
                            mem[32] = sha3(activeBuySize[arg1].field_512, 0)
                            balances[stor5[arg1].field_512][stor2[idx << 192].field_768] += stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96]
                            if mem[128] - mem[160] > stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96]:
                                mem[160] = (stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96]) + mem[160]
                                if stor2[idx << 192].field_256 - (stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96] * mem[96]) - stor2[idx << 192].field_512 >= stor2[idx << 192].field_0:
                                    stor2[idx << 192].field_512 += stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96] * mem[96]
                                    mem[mem[64] + 64] = mem[96]
                                    mem[mem[64] + 96] = stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96] * mem[96]
                                    emit 0x8bb250b1: activeBuySize[arg1].field_0, idx << 192, mem[96], stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96] * mem[96]
                                    mem[mem[64] + 4] = sha3(arg1, 5) + 3
                                    mem[mem[64] + 36] = uint64(idx)
                                    if ext_code.size(0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01):
                                        delegate 0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01.0xb67700f4 with:
                                             gas gas_remaining - 50 wei
                                            args sha3(arg1, 5) + 3, uint64(idx)
                                        mem[mem[64]] = delegate.return_data[0]
                                        if delegate.return_code:
                                            s = stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4681 * _4726
                                            s = stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4681
                                            s = _4687 - _4686
                                            s = stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4681
                                            s = sha3(idx << 192, 2)
                                            idx = delegate.return_data[0]
                                            s = s
                                            t = (stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4681 * _4726) + t
                                            continue 
                                else:
                                    mem[0] = stor2[idx << 192].field_768
                                    mem[32] = sha3(activeBuySize[arg1].field_256, 0)
                                    balances[stor5[arg1].field_256][stor2[idx << 192].field_768] = balances[stor5[arg1].field_256][stor2[idx << 192].field_768] + stor2[idx << 192].field_256 - stor2[idx << 192].field_512 - (stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96] * mem[96])
                                    mem[mem[64] + 32] = uint64(idx)
                                    mem[mem[64] + 64] = mem[96]
                                    mem[mem[64] + 96] = stor2[idx << 192].field_512 + (stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96] * mem[96])
                                    emit 0xb8d0ac6f: activeBuySize[arg1].field_0, idx << 192, mem[96], stor2[idx << 192].field_512 + (stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96] * mem[96])
                                    mem[0] = uint64(idx)
                                    mem[32] = 2
                                    stor2[idx << 192].field_0 = 0
                                    stor2[idx << 192].field_256 = 0
                                    stor2[idx << 192].field_512 = 0
                                    stor2[idx << 192].field_768 = 0
                                    mem[mem[64] + 4] = sha3(arg1, 5) + 3
                                    mem[mem[64] + 36] = uint64(idx)
                                    if ext_code.size(0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01):
                                        delegate 0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01.0xb67700f4 with:
                                             gas gas_remaining - 50 wei
                                            args sha3(arg1, 5) + 3, uint64(idx)
                                        mem[mem[64]] = delegate.return_data[0]
                                        if delegate.return_code:
                                            s = stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4681 * _4726
                                            s = stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4681
                                            s = _4687 - _4686
                                            s = stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4681
                                            s = sha3(idx << 192, 2)
                                            idx = delegate.return_data[0]
                                            s = idx
                                            t = (stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4681 * _4726) + t
                                            continue 
                                revert
                            if stor2[idx << 192].field_256 - (stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96] * mem[96]) - stor2[idx << 192].field_512 >= stor2[idx << 192].field_0:
                                stor2[idx << 192].field_512 += stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96] * mem[96]
                                _5168 = mem[96]
                                mem[mem[64]] = activeBuySize[arg1].field_0
                                mem[mem[64] + 32] = uint64(idx)
                                mem[mem[64] + 64] = _5168
                                mem[mem[64] + 96] = stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4681 * _4726
                                emit 0x8bb250b1: activeBuySize[arg1].field_0, idx << 192, _5168, stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4681 * _4726
                                if uint64(s):
                                    mem[mem[64] + 4] = sha3(arg1, 5) + 3
                                    mem[mem[64] + 36] = uint64(s)
                                    require ext_code.size(0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01)
                                    delegate 0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01.0xb67700f4 with:
                                         gas gas_remaining - 50 wei
                                        args sha3(arg1, 5) + 3, uint64(s)
                                    mem[mem[64]] = delegate.return_data[0]
                                    require delegate.return_code
                                    u = 0
                                    s = activeBuySize[arg1].field_832
                                    u = 0
                                    while uint64(delegate.return_data[0]) != uint64(s):
                                        mem[0] = uint64(s)
                                        mem[32] = sha3(arg1, 5) + 4
                                        activeBuySize[arg1][4][s << 192].field_0 = 0
                                        u = s
                                        s = activeBuySize[arg1][4][s << 192].field_64
                                        u = u + 1
                                        continue 
                                    activeBuySize[arg1][4][delegate.return_data[0] << 192].field_0 = 0
                                    activeBuySize[arg1].field_768 = uint64(activeBuySize[arg1].field_768 - u)
                                    activeBuySize[arg1].field_832 = uint64(delegate.return_data[0])
                                    activeBuySize[arg1].field_832 = 0
                                    if not uint64(activeBuySize[arg1].field_768 - u):
                                        activeBuySize[arg1].field_896 = 0
                            else:
                                mem[0] = stor2[idx << 192].field_768
                                mem[32] = sha3(activeBuySize[arg1].field_256, 0)
                                balances[stor5[arg1].field_256][stor2[idx << 192].field_768] = balances[stor5[arg1].field_256][stor2[idx << 192].field_768] + stor2[idx << 192].field_256 - stor2[idx << 192].field_512 - (stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / mem[96] * mem[96])
                                _5173 = mem[96]
                                mem[mem[64]] = activeBuySize[arg1].field_0
                                mem[mem[64] + 32] = uint64(idx)
                                mem[mem[64] + 64] = _5173
                                mem[mem[64] + 96] = stor2[idx << 192].field_512 + (stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4681 * _4726)
                                emit 0xb8d0ac6f: activeBuySize[arg1].field_0, idx << 192, _5173, stor2[idx << 192].field_512 + (stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4681 * _4726)
                                stor2[idx << 192].field_0 = 0
                                stor2[idx << 192].field_256 = 0
                                stor2[idx << 192].field_512 = 0
                                stor2[idx << 192].field_768 = 0
                                if uint64(idx):
                                    mem[mem[64] + 4] = sha3(arg1, 5) + 3
                                    mem[mem[64] + 36] = uint64(idx)
                                    require ext_code.size(0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01)
                                    delegate 0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01.0xb67700f4 with:
                                         gas gas_remaining - 50 wei
                                        args sha3(arg1, 5) + 3, uint64(idx)
                                    mem[mem[64]] = delegate.return_data[0]
                                    require delegate.return_code
                                    u = 0
                                    s = activeBuySize[arg1].field_832
                                    u = 0
                                    while uint64(delegate.return_data[0]) != uint64(s):
                                        mem[0] = uint64(s)
                                        mem[32] = sha3(arg1, 5) + 4
                                        activeBuySize[arg1][4][s << 192].field_0 = 0
                                        u = s
                                        s = activeBuySize[arg1][4][s << 192].field_64
                                        u = u + 1
                                        continue 
                                    activeBuySize[arg1][4][delegate.return_data[0] << 192].field_0 = 0
                                    activeBuySize[arg1].field_768 = uint64(activeBuySize[arg1].field_768 - u)
                                    activeBuySize[arg1].field_832 = uint64(delegate.return_data[0])
                                    activeBuySize[arg1].field_832 = 0
                                    if not uint64(activeBuySize[arg1].field_768 - u):
                                        activeBuySize[arg1].field_896 = 0
                        balances[stor5[arg1].field_256][mem[204 len 20]] = balances[stor5[arg1].field_256][mem[204 len 20]] + (stor2[idx << 192].field_256 - stor2[idx << 192].field_512 / _4681 * _4726) + t
                else:
                    if uint64(s):
                        mem[mem[64] + 4] = sha3(arg1, 5) + 3
                        mem[mem[64] + 36] = uint64(s)
                        require ext_code.size(0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01)
                        delegate 0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01.0xb67700f4 with:
                             gas gas_remaining - 50 wei
                            args sha3(arg1, 5) + 3, uint64(s)
                        mem[mem[64]] = delegate.return_data[0]
                        require delegate.return_code
                        s = 0
                        idx = activeBuySize[arg1].field_832
                        s = 0
                        while uint64(delegate.return_data[0]) != uint64(idx):
                            mem[0] = uint64(idx)
                            mem[32] = sha3(arg1, 5) + 4
                            activeBuySize[arg1][4][idx << 192].field_0 = 0
                            s = idx
                            idx = activeBuySize[arg1][4][idx << 192].field_64
                            s = s + 1
                            continue 
                        activeBuySize[arg1][4][delegate.return_data[0] << 192].field_0 = 0
                        activeBuySize[arg1].field_768 = uint64(activeBuySize[arg1].field_768 - s)
                        activeBuySize[arg1].field_832 = uint64(delegate.return_data[0])
                        activeBuySize[arg1].field_832 = 0
                        if not uint64(activeBuySize[arg1].field_768 - s):
                            activeBuySize[arg1].field_896 = 0
                    stor2[stor1 + 1 << 192].field_0 = mem[96]
                    stor2[stor1 + 1 << 192].field_256 = mem[128]
                    stor2[stor1 + 1 << 192].field_512 = mem[160]
                    stor2[stor1 + 1 << 192].field_768 = mem[204 len 20]
                    require mem[224] <= 1
                    stor2[stor1 + 1 << 192].field_768 = mem[204 len 20]
                    stor2[stor1 + 1 << 192].field_928 = mem[244 len 12]
                    balances[stor5[arg1].field_256][mem[204 len 20]] += t
                    if not activeBuySize[arg1].field_1280:
                        require not activeBuySize[arg1][6][uint64(stor1 + 1)].field_0
                        require not activeBuySize[arg1][6][stor1 + 1 << 192].field_64
                        if activeBuySize[arg1][6][activeBuySize[arg1].field_1280].field_64:
                            if activeBuySize[arg1].field_1408:
                                require activeBuySize[arg1].field_1408 == activeBuySize[arg1].field_1408
                            else:
                                if activeBuySize[arg1].field_1344:
                                    require activeBuySize[arg1].field_1408 == activeBuySize[arg1].field_1408
                        else:
                            if activeBuySize[arg1][6][0].field_0 != activeBuySize[arg1].field_1408:
                                if activeBuySize[arg1].field_1408:
                                    require activeBuySize[arg1].field_1408 == activeBuySize[arg1].field_1408
                                else:
                                    if activeBuySize[arg1].field_1344:
                                        require activeBuySize[arg1].field_1408 == activeBuySize[arg1].field_1408
                        activeBuySize[arg1][6][stor1 + 1 << 192].field_0 = activeBuySize[arg1].field_1408
                        activeBuySize[arg1][6][stor1 + 1 << 192].field_64 = 0
                        activeBuySize[arg1][6][stor1 + 1 << 192].field_256 = 0
                        if activeBuySize[arg1].field_1408:
                            activeBuySize[arg1][6][activeBuySize[arg1].field_1280].field_64 = uint64(stor1 + 1)
                        else:
                            activeBuySize[arg1].field_1344 = uint64(stor1 + 1)
                        activeBuySize[arg1].field_1408 = uint64(stor1 + 1)
                    else:
                        if arg2 < stor2[stor5[arg1].field_1280].field_0:
                            require not activeBuySize[arg1][6][uint64(stor1 + 1)].field_0
                            require not activeBuySize[arg1][6][stor1 + 1 << 192].field_64
                            if activeBuySize[arg1][6][0].field_64 != activeBuySize[arg1].field_1344:
                                if activeBuySize[arg1].field_1344 != activeBuySize[arg1].field_1344:
                                    require not activeBuySize[arg1].field_1408
                                    require not activeBuySize[arg1].field_1344
                            else:
                                if activeBuySize[arg1][6][activeBuySize[arg1].field_1344].field_0:
                                    if activeBuySize[arg1].field_1344 != activeBuySize[arg1].field_1344:
                                        require not activeBuySize[arg1].field_1408
                                        require not activeBuySize[arg1].field_1344
                            activeBuySize[arg1][6][stor1 + 1 << 192].field_0 = 0
                            activeBuySize[arg1][6][stor1 + 1 << 192].field_64 = activeBuySize[arg1].field_1344
                            activeBuySize[arg1][6][stor1 + 1 << 192].field_256 = 0
                            activeBuySize[arg1].field_1344 = uint64(stor1 + 1)
                            if activeBuySize[arg1].field_1344:
                                activeBuySize[arg1][6][activeBuySize[arg1].field_1344].field_0 = uint64(stor1 + 1)
                            else:
                                activeBuySize[arg1].field_1408 = uint64(stor1 + 1)
                        else:
                            if arg2 >= stor2[stor5[arg1].field_1280].field_0:
                                require not activeBuySize[arg1][6][uint64(stor1 + 1)].field_0
                                require not activeBuySize[arg1][6][stor1 + 1 << 192].field_64
                                if activeBuySize[arg1][6][activeBuySize[arg1].field_1280].field_64:
                                    if activeBuySize[arg1].field_1408:
                                        require activeBuySize[arg1].field_1408 == activeBuySize[arg1].field_1408
                                    else:
                                        if activeBuySize[arg1].field_1344:
                                            require activeBuySize[arg1].field_1408 == activeBuySize[arg1].field_1408
                                else:
                                    if activeBuySize[arg1][6][0].field_0 != activeBuySize[arg1].field_1408:
                                        if activeBuySize[arg1].field_1408:
                                            require activeBuySize[arg1].field_1408 == activeBuySize[arg1].field_1408
                                        else:
                                            if activeBuySize[arg1].field_1344:
                                                require activeBuySize[arg1].field_1408 == activeBuySize[arg1].field_1408
                                activeBuySize[arg1][6][stor1 + 1 << 192].field_0 = activeBuySize[arg1].field_1408
                                activeBuySize[arg1][6][stor1 + 1 << 192].field_64 = 0
                                activeBuySize[arg1][6][stor1 + 1 << 192].field_256 = 0
                                if activeBuySize[arg1].field_1408:
                                    activeBuySize[arg1][6][activeBuySize[arg1].field_1280].field_64 = uint64(stor1 + 1)
                                else:
                                    activeBuySize[arg1].field_1344 = uint64(stor1 + 1)
                                activeBuySize[arg1].field_1408 = uint64(stor1 + 1)
                            else:
                                mem[0] = 0
                                require ext_code.size(0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01)
                                delegate 0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01.0xb67700f4 with:
                                     gas gas_remaining - 50 wei
                                    args sha3(arg1, 5) + 5, activeBuySize[arg1].field_1344
                                mem[mem[64]] = delegate.return_data[0]
                                require delegate.return_code
                                idx = mem[mem[64]]
                                s = sha3(0, 2)
                                while uint64(idx):
                                    mem[0] = uint64(idx)
                                    mem[32] = 2
                                    if arg2 >= stor2[idx << 192].field_0:
                                        mem[mem[64] + 4] = sha3(arg1, 5) + 5
                                        mem[mem[64] + 36] = uint64(idx)
                                        require ext_code.size(0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01)
                                        delegate 0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01.0xb67700f4 with:
                                             gas gas_remaining - 50 wei
                                            args sha3(arg1, 5) + 5, uint64(idx)
                                        mem[mem[64]] = delegate.return_data[0]
                                        require delegate.return_code
                                        idx = delegate.return_data[0]
                                        s = sha3(idx << 192, 2)
                                        continue 
                                    require not activeBuySize[arg1][6][uint64(stor1 + 1)].field_0
                                    require not activeBuySize[arg1][6][stor1 + 1 << 192].field_64
                                    if activeBuySize[arg1][6][activeBuySize[arg1][6][idx << 192].field_0].field_64 != uint64(idx):
                                        if activeBuySize[arg1][6][idx << 192].field_0:
                                            require activeBuySize[arg1].field_1408 == activeBuySize[arg1][6][idx << 192].field_0
                                            require not uint64(idx)
                                        else:
                                            if activeBuySize[arg1].field_1344 != uint64(idx):
                                                require activeBuySize[arg1].field_1408 == activeBuySize[arg1][6][idx << 192].field_0
                                                require not uint64(idx)
                                    else:
                                        if activeBuySize[arg1][6][uint64(idx)].field_0 != activeBuySize[arg1][6][idx << 192].field_0:
                                            if activeBuySize[arg1][6][idx << 192].field_0:
                                                require activeBuySize[arg1].field_1408 == activeBuySize[arg1][6][idx << 192].field_0
                                                require not uint64(idx)
                                            else:
                                                if activeBuySize[arg1].field_1344 != uint64(idx):
                                                    require activeBuySize[arg1].field_1408 == activeBuySize[arg1][6][idx << 192].field_0
                                                    require not uint64(idx)
                                    activeBuySize[arg1][6][stor1 + 1 << 192].field_0 = activeBuySize[arg1][6][idx << 192].field_0
                                    activeBuySize[arg1][6][stor1 + 1 << 192].field_64 = uint64(idx)
                                    if activeBuySize[arg1][6][idx << 192].field_0:
                                        activeBuySize[arg1][6][activeBuySize[arg1][6][idx << 192].field_0].field_64 = uint64(stor1 + 1)
                                    else:
                                        activeBuySize[arg1].field_1344 = uint64(stor1 + 1)
                                    if uint64(idx):
                                        activeBuySize[arg1][6][uint64(idx)].field_0 = uint64(stor1 + 1)
                                    else:
                                        activeBuySize[arg1].field_1408 = uint64(stor1 + 1)
                                    activeBuySize[arg1].field_1280 = uint64(activeBuySize[arg1].field_1280 + 1)
                                    emit 0xeaac085d: arg1, stor1 + 1 << 192, msg.sender, arg2, arg3, stor2[stor1 + 1 << 192].field_512
                                    return 1
                                require not activeBuySize[arg1][6][uint64(stor1 + 1)].field_0
                                require not activeBuySize[arg1][6][stor1 + 1 << 192].field_64
                                if activeBuySize[arg1][6][activeBuySize[arg1][6][idx << 192].field_0].field_64 != uint64(idx):
                                    if activeBuySize[arg1][6][idx << 192].field_0:
                                        require activeBuySize[arg1].field_1408 == activeBuySize[arg1][6][idx << 192].field_0
                                        require not uint64(idx)
                                    else:
                                        if activeBuySize[arg1].field_1344 != uint64(idx):
                                            require activeBuySize[arg1].field_1408 == activeBuySize[arg1][6][idx << 192].field_0
                                            require not uint64(idx)
                                else:
                                    if activeBuySize[arg1][6][uint64(idx)].field_0 != activeBuySize[arg1][6][idx << 192].field_0:
                                        if activeBuySize[arg1][6][idx << 192].field_0:
                                            require activeBuySize[arg1].field_1408 == activeBuySize[arg1][6][idx << 192].field_0
                                            require not uint64(idx)
                                        else:
                                            if activeBuySize[arg1].field_1344 != uint64(idx):
                                                require activeBuySize[arg1].field_1408 == activeBuySize[arg1][6][idx << 192].field_0
                                                require not uint64(idx)
                                activeBuySize[arg1][6][stor1 + 1 << 192].field_0 = activeBuySize[arg1][6][idx << 192].field_0
                                activeBuySize[arg1][6][stor1 + 1 << 192].field_64 = uint64(idx)
                                if activeBuySize[arg1][6][idx << 192].field_0:
                                    activeBuySize[arg1][6][activeBuySize[arg1][6][idx << 192].field_0].field_64 = uint64(stor1 + 1)
                                else:
                                    activeBuySize[arg1].field_1344 = uint64(stor1 + 1)
                                if uint64(idx):
                                    activeBuySize[arg1][6][uint64(idx)].field_0 = uint64(stor1 + 1)
                                else:
                                    activeBuySize[arg1].field_1408 = uint64(stor1 + 1)
                    activeBuySize[arg1].field_1280 = uint64(activeBuySize[arg1].field_1280 + 1)
                    emit 0xeaac085d: arg1, stor1 + 1 << 192, msg.sender, arg2, arg3, stor2[stor1 + 1 << 192].field_512
                return 1
    if uint64(s):
        mem[mem[64] + 4] = sha3(arg1, 5) + 3
        mem[mem[64] + 36] = uint64(s)
        require ext_code.size(0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01)
        delegate 0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01.0xb67700f4 with:
             gas gas_remaining - 50 wei
            args sha3(arg1, 5) + 3, uint64(s)
        mem[mem[64]] = delegate.return_data[0]
        require delegate.return_code
        s = 0
        idx = activeBuySize[arg1].field_832
        s = 0
        while uint64(delegate.return_data[0]) != uint64(idx):
            mem[0] = uint64(idx)
            mem[32] = sha3(arg1, 5) + 4
            activeBuySize[arg1][4][idx << 192].field_0 = 0
            s = idx
            idx = activeBuySize[arg1][4][idx << 192].field_64
            s = s + 1
            continue 
        activeBuySize[arg1][4][delegate.return_data[0] << 192].field_0 = 0
        activeBuySize[arg1].field_768 = uint64(activeBuySize[arg1].field_768 - s)
        activeBuySize[arg1].field_832 = uint64(delegate.return_data[0])
        activeBuySize[arg1].field_832 = 0
        if not uint64(activeBuySize[arg1].field_768 - s):
            activeBuySize[arg1].field_896 = 0
    stor2[stor1 + 1 << 192].field_0 = mem[96]
    stor2[stor1 + 1 << 192].field_256 = mem[128]
    stor2[stor1 + 1 << 192].field_512 = mem[160]
    stor2[stor1 + 1 << 192].field_768 = mem[204 len 20]
    require mem[224] <= 1
    stor2[stor1 + 1 << 192].field_768 = mem[204 len 20]
    stor2[stor1 + 1 << 192].field_928 = mem[244 len 12]
    balances[stor5[arg1].field_256][mem[204 len 20]] += t
    if not activeBuySize[arg1].field_1280:
        require not activeBuySize[arg1][6][uint64(stor1 + 1)].field_0
        require not activeBuySize[arg1][6][stor1 + 1 << 192].field_64
        if activeBuySize[arg1][6][activeBuySize[arg1].field_1280].field_64:
            if activeBuySize[arg1].field_1408:
                require activeBuySize[arg1].field_1408 == activeBuySize[arg1].field_1408
            else:
                if activeBuySize[arg1].field_1344:
                    require activeBuySize[arg1].field_1408 == activeBuySize[arg1].field_1408
        else:
            if activeBuySize[arg1][6][0].field_0 != activeBuySize[arg1].field_1408:
                if activeBuySize[arg1].field_1408:
                    require activeBuySize[arg1].field_1408 == activeBuySize[arg1].field_1408
                else:
                    if activeBuySize[arg1].field_1344:
                        require activeBuySize[arg1].field_1408 == activeBuySize[arg1].field_1408
        activeBuySize[arg1][6][stor1 + 1 << 192].field_0 = activeBuySize[arg1].field_1408
        activeBuySize[arg1][6][stor1 + 1 << 192].field_64 = 0
        activeBuySize[arg1][6][stor1 + 1 << 192].field_256 = 0
        if activeBuySize[arg1].field_1408:
            activeBuySize[arg1][6][activeBuySize[arg1].field_1280].field_64 = uint64(stor1 + 1)
        else:
            activeBuySize[arg1].field_1344 = uint64(stor1 + 1)
        activeBuySize[arg1].field_1408 = uint64(stor1 + 1)
    else:
        if arg2 < stor2[stor5[arg1].field_1280].field_0:
            require not activeBuySize[arg1][6][uint64(stor1 + 1)].field_0
            require not activeBuySize[arg1][6][stor1 + 1 << 192].field_64
            if activeBuySize[arg1][6][0].field_64 != activeBuySize[arg1].field_1344:
                if activeBuySize[arg1].field_1344 != activeBuySize[arg1].field_1344:
                    require not activeBuySize[arg1].field_1408
                    require not activeBuySize[arg1].field_1344
            else:
                if activeBuySize[arg1][6][activeBuySize[arg1].field_1344].field_0:
                    if activeBuySize[arg1].field_1344 != activeBuySize[arg1].field_1344:
                        require not activeBuySize[arg1].field_1408
                        require not activeBuySize[arg1].field_1344
            activeBuySize[arg1][6][stor1 + 1 << 192].field_0 = 0
            activeBuySize[arg1][6][stor1 + 1 << 192].field_64 = activeBuySize[arg1].field_1344
            activeBuySize[arg1][6][stor1 + 1 << 192].field_256 = 0
            activeBuySize[arg1].field_1344 = uint64(stor1 + 1)
            if activeBuySize[arg1].field_1344:
                activeBuySize[arg1][6][activeBuySize[arg1].field_1344].field_0 = uint64(stor1 + 1)
            else:
                activeBuySize[arg1].field_1408 = uint64(stor1 + 1)
        else:
            if arg2 >= stor2[stor5[arg1].field_1280].field_0:
                require not activeBuySize[arg1][6][uint64(stor1 + 1)].field_0
                require not activeBuySize[arg1][6][stor1 + 1 << 192].field_64
                if activeBuySize[arg1][6][activeBuySize[arg1].field_1280].field_64:
                    if activeBuySize[arg1].field_1408:
                        require activeBuySize[arg1].field_1408 == activeBuySize[arg1].field_1408
                    else:
                        if activeBuySize[arg1].field_1344:
                            require activeBuySize[arg1].field_1408 == activeBuySize[arg1].field_1408
                else:
                    if activeBuySize[arg1][6][0].field_0 != activeBuySize[arg1].field_1408:
                        if activeBuySize[arg1].field_1408:
                            require activeBuySize[arg1].field_1408 == activeBuySize[arg1].field_1408
                        else:
                            if activeBuySize[arg1].field_1344:
                                require activeBuySize[arg1].field_1408 == activeBuySize[arg1].field_1408
                activeBuySize[arg1][6][stor1 + 1 << 192].field_0 = activeBuySize[arg1].field_1408
                activeBuySize[arg1][6][stor1 + 1 << 192].field_64 = 0
                activeBuySize[arg1][6][stor1 + 1 << 192].field_256 = 0
                if activeBuySize[arg1].field_1408:
                    activeBuySize[arg1][6][activeBuySize[arg1].field_1280].field_64 = uint64(stor1 + 1)
                else:
                    activeBuySize[arg1].field_1344 = uint64(stor1 + 1)
                activeBuySize[arg1].field_1408 = uint64(stor1 + 1)
            else:
                mem[0] = 0
                require ext_code.size(0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01)
                delegate 0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01.0xb67700f4 with:
                     gas gas_remaining - 50 wei
                    args sha3(arg1, 5) + 5, activeBuySize[arg1].field_1344
                mem[mem[64]] = delegate.return_data[0]
                require delegate.return_code
                idx = mem[mem[64]]
                s = 0
                while uint64(idx):
                    mem[0] = uint64(idx)
                    mem[32] = 2
                    if arg2 >= stor2[idx << 192].field_0:
                        mem[mem[64] + 4] = sha3(arg1, 5) + 5
                        mem[mem[64] + 36] = uint64(idx)
                        require ext_code.size(0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01)
                        delegate 0xf4eb4cdc43aab0252772ee9a0fb95a119d8dfb01.0xb67700f4 with:
                             gas gas_remaining - 50 wei
                            args sha3(arg1, 5) + 5, uint64(idx)
                        mem[mem[64]] = delegate.return_data[0]
                        require delegate.return_code
                        idx = delegate.return_data[0]
                        s = sha3(idx << 192, 2)
                        continue 
                    require not activeBuySize[arg1][6][uint64(stor1 + 1)].field_0
                    require not activeBuySize[arg1][6][stor1 + 1 << 192].field_64
                    if activeBuySize[arg1][6][activeBuySize[arg1][6][idx << 192].field_0].field_64 != uint64(idx):
                        if activeBuySize[arg1][6][idx << 192].field_0:
                            require activeBuySize[arg1].field_1408 == activeBuySize[arg1][6][idx << 192].field_0
                            require not uint64(idx)
                        else:
                            if activeBuySize[arg1].field_1344 != uint64(idx):
                                require activeBuySize[arg1].field_1408 == activeBuySize[arg1][6][idx << 192].field_0
                                require not uint64(idx)
                    else:
                        if activeBuySize[arg1][6][uint64(idx)].field_0 != activeBuySize[arg1][6][idx << 192].field_0:
                            if activeBuySize[arg1][6][idx << 192].field_0:
                                require activeBuySize[arg1].field_1408 == activeBuySize[arg1][6][idx << 192].field_0
                                require not uint64(idx)
                            else:
                                if activeBuySize[arg1].field_1344 != uint64(idx):
                                    require activeBuySize[arg1].field_1408 == activeBuySize[arg1][6][idx << 192].field_0
                                    require not uint64(idx)
                    activeBuySize[arg1][6][stor1 + 1 << 192].field_0 = activeBuySize[arg1][6][idx << 192].field_0
                    activeBuySize[arg1][6][stor1 + 1 << 192].field_64 = uint64(idx)
                    if activeBuySize[arg1][6][idx << 192].field_0:
                        activeBuySize[arg1][6][activeBuySize[arg1][6][idx << 192].field_0].field_64 = uint64(stor1 + 1)
                    else:
                        activeBuySize[arg1].field_1344 = uint64(stor1 + 1)
                    if uint64(idx):
                        activeBuySize[arg1][6][uint64(idx)].field_0 = uint64(stor1 + 1)
                    else:
                        activeBuySize[arg1].field_1408 = uint64(stor1 + 1)
                    activeBuySize[arg1].field_1280 = uint64(activeBuySize[arg1].field_1280 + 1)
                    emit 0xeaac085d: arg1, stor1 + 1 << 192, msg.sender, arg2, arg3, stor2[stor1 + 1 << 192].field_512
                    return 1
                require not activeBuySize[arg1][6][uint64(stor1 + 1)].field_0
                require not activeBuySize[arg1][6][stor1 + 1 << 192].field_64
                if activeBuySize[arg1][6][activeBuySize[arg1][6][idx << 192].field_0].field_64 != uint64(idx):
                    if activeBuySize[arg1][6][idx << 192].field_0:
                        require activeBuySize[arg1].field_1408 == activeBuySize[arg1][6][idx << 192].field_0
                        require not uint64(idx)
                    else:
                        if activeBuySize[arg1].field_1344 != uint64(idx):
                            require activeBuySize[arg1].field_1408 == activeBuySize[arg1][6][idx << 192].field_0
                            require not uint64(idx)
                else:
                    if activeBuySize[arg1][6][uint64(idx)].field_0 != activeBuySize[arg1][6][idx << 192].field_0:
                        if activeBuySize[arg1][6][idx << 192].field_0:
                            require activeBuySize[arg1].field_1408 == activeBuySize[arg1][6][idx << 192].field_0
                            require not uint64(idx)
                        else:
                            if activeBuySize[arg1].field_1344 != uint64(idx):
                                require activeBuySize[arg1].field_1408 == activeBuySize[arg1][6][idx << 192].field_0
                                require not uint64(idx)
                activeBuySize[arg1][6][stor1 + 1 << 192].field_0 = activeBuySize[arg1][6][idx << 192].field_0
                activeBuySize[arg1][6][stor1 + 1 << 192].field_64 = uint64(idx)
                if activeBuySize[arg1][6][idx << 192].field_0:
                    activeBuySize[arg1][6][activeBuySize[arg1][6][idx << 192].field_0].field_64 = uint64(stor1 + 1)
                else:
                    activeBuySize[arg1].field_1344 = uint64(stor1 + 1)
                if uint64(idx):
                    activeBuySize[arg1][6][uint64(idx)].field_0 = uint64(stor1 + 1)
                else:
                    activeBuySize[arg1].field_1408 = uint64(stor1 + 1)
    activeBuySize[arg1].field_1280 = uint64(activeBuySize[arg1].field_1280 + 1)
    emit 0xeaac085d: arg1, stor1 + 1 << 192, msg.sender, arg2, arg3, stor2[stor1 + 1 << 192].field_512
    return 1
}



}
