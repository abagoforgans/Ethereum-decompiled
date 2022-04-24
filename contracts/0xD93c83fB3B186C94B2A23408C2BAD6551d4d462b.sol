contract main {


// =======================  Init code  ======================


address stor0;
address stor3;
address stor4;
address stor5;

function _fallback() {
    stor0 = msg.sender
    stor3 = msg.sender
    stor4 = msg.sender
    stor5 = msg.sender
    return code.data[117 len 6377]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 stor1;
address stor2;
address bucketManagerAddress;
address portfolioManagerAddress;
address traderAddress;
mapping of struct bucketHolding;
mapping of uint256 model;
array of struct assets;

function trader() {
    return traderAddress
}

function bucketHolding(bytes32 arg1, address arg2) {
    return bucketHolding[arg1][1][address(arg2)].field_0
}

function model(address arg1) {
    return model[arg1]
}

function portfolioManager() {
    return portfolioManagerAddress
}

function bucketManager() {
    return bucketManagerAddress
}

function owner() {
    return owner
}

function bucketValue(bytes32 arg1) {
    return bucketHolding[arg1].field_0
}

function numAssets() {
    return assets.length
}

function bucketClosureTime(bytes32 arg1) {
    return uint64(bucketHolding[arg1].field_776)
}

function assets(uint256 arg1) {
    require arg1 < assets.length
    return address(assets[arg1].field_0)
}

function destroy(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require owner == msg.sender
    s = 0
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _17 = mem[(32 * idx) + 128]
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        call mem[(32 * idx) + 140 len 20].0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        mem[(32 * arg1.length) + 132] = owner
        mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
        require ext_code.size(address(_17))
        call address(_17).0xa9059cbb with:
             gas gas_remaining - 710 wei
            args owner, ext_call.return_data[0]
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        s = ext_call.return_data[0]
        s = _17
        idx = idx + 1
        continue 
    selfdestruct(owner)
}

function _fallback() payable {
  stop
}

function bucketExists(bytes32 arg1) {
    return (bucketHolding[arg1].field_512 > 0)
}

function setTrader(address arg1) {
    require owner == msg.sender
    require arg1
    traderAddress = arg1
}

function setEtherDeltaExecutor(address arg1) {
    require owner == msg.sender
    require arg1
    stor2 = arg1
}

function setBucketManager(address arg1) {
    require owner == msg.sender
    require arg1
    bucketManagerAddress = arg1
}

function setPortfolioManager(address arg1) {
    require owner == msg.sender
    require arg1
    portfolioManagerAddress = arg1
}

function setCollectibleExposure(address arg1) {
    require owner == msg.sender
    require arg1
    address(stor1.length) = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function calculateBucketId(bytes32[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 160] = 0
    mem[(32 * arg1.length) + 128] = address(this.address)
    mem[(32 * arg1.length) + 148 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    hash = sha256hash(mem[(32 * arg1.length) + 128 len (96 * arg1.length) + 20]) 
    require sha256hash.result
    return hash
}

function setAssets(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require portfolioManagerAddress == msg.sender
    idx = 0
    while idx < assets.length:
        mem[0] = address(assets[idx].field_0)
        mem[32] = 7
        model[address(stor8[idx].field_0)] = 0
        idx = idx + 1
        continue 
    assets.length = arg1.length
    if not assets.length <= arg1.length:
        idx = arg1.length
        while assets.length > idx:
            assets[idx].field_0 = 0
            idx = idx + 1
            continue 
    idx = 0
    while idx < assets.length:
        require idx < arg1.length
        require idx < assets.length
        mem[0] = 8
        address(assets[idx].field_0) = mem[(32 * idx) + 140 len 20]
        idx = idx + 1
        continue 
}

function getAssets() {
    if not assets.length:
        mem[(32 * assets.length) + 160] = 32
        mem[(32 * assets.length) + 192] = assets.length
        mem[(32 * assets.length) + 224 len floor32(assets.length)] = mem[160 len floor32(assets.length)]
        return memory
          from (32 * assets.length) + 160
           len (96 * assets.length) + 64
    mem[160] = address(assets.field_0)
    idx = 160
    s = 0
    while (32 * assets.length) + 128 > idx:
        mem[idx + 32] = address(assets[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * assets.length) + 224 len floor32(assets.length)] = mem[160 len floor32(assets.length)]
    return Array(len=assets.length, data=mem[160 len floor32(assets.length)], mem[(32 * assets.length) + floor32(assets.length) + 224 len (32 * assets.length) - floor32(assets.length)]), 
}

function executeEtherDeltaBuy(uint256 arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint8 arg7, bytes32 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) {
    require traderAddress == msg.sender
    require bucketHolding[arg10].field_0 >= arg11
    require ext_code.size(stor2)
    call stor2.buyTokens(uint256 rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, address rg6, uint8 rg7, bytes32 rg8, bytes32 rg9) with:
       value arg11 wei
         gas gas_remaining - 9710 wei
        args 0, uint32(arg1), address(arg2) << 64, 0, uint32(arg3), arg4, arg5, arg6, arg7 << 248, arg8, arg9
    require ext_call.success
    bucketHolding[arg10].field_0 = bucketHolding[arg10].field_0 - arg11 + ext_call.return_data[32]
    bucketHolding[arg10][1][address(arg2)].field_0 += ext_call.return_data[0]
    emit BucketBuy(arg10, arg11 - ext_call.return_data[32], address(arg2), ext_call.return_data[0]);
}

function executeEtherDeltaSell(uint256 arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint8 arg7, bytes32 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) {
    require traderAddress == msg.sender
    require bucketHolding[arg10][1][address(arg2)].field_0 >= arg11
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args stor2, arg11
    require ext_call.success
    require ext_code.size(stor2)
    call stor2.sellTokens(uint256 rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, address rg6, uint8 rg7, bytes32 rg8, bytes32 rg9) with:
         gas gas_remaining - 710 wei
        args 0, 0, 0, uint32(arg3), arg4, arg5, arg6, arg7 << 248, arg8, arg9
    require ext_call.success
    bucketHolding[arg10].field_0 += ext_call.return_data[0]
    bucketHolding[arg10][1][address(arg2)].field_0 = bucketHolding[arg10][1][address(arg2)].field_0 - arg11 + ext_call.return_data[32]
    emit BucketSell(arg10, ext_call.return_data[0], address(arg2), arg11 - ext_call.return_data[32]);
}

function setModel(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require portfolioManagerAddress == msg.sender
    require arg1.length == arg2.length
    require assets.length == arg1.length
    idx = 0
    while idx < assets.length:
        mem[0] = 8
        require idx < arg1.length
        require mem[(32 * idx) + 140 len 20] == address(assets[idx].field_0)
        idx = idx + 1
        continue 
    idx = 0
    while idx < assets.length:
        mem[0] = address(assets[idx].field_0)
        mem[32] = 7
        model[address(stor8[idx].field_0)] = 0
        idx = idx + 1
        continue 
    s = 0
    s = 0
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg2.length
        _36 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg1.length
        require mem[(32 * idx) + (32 * arg1.length) + 160] + s >= s
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 7
        model[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * arg1.length) + 160]
        s = mem[(32 * idx) + 128]
        s = mem[(32 * idx) + (32 * arg1.length) + 160]
        idx = idx + 1
        s = mem[(32 * idx) + (32 * arg1.length) + 160] + s
        continue 
    require _36 * arg1.length <= 10^18
    require (-1 * _36 * arg1.length) + 10^18 < 10^16
}

function destroyBucket(bytes32 arg1) {
    require bucketManagerAddress == msg.sender
    require address(stor1.length)
    require bucketHolding[arg1].field_512 > 0
    require not uint8(bucketHolding[arg1].field_768)
    s = 0
    idx = 0
    s = 0
    while idx < bucketHolding[arg1].field_512:
        mem[0] = sha3(arg1, 6) + 2
        _13 = sha3(sha3(arg1, 6) + 2)
        mem[96] = 0x39c79e0c00000000000000000000000000000000000000000000000000000000
        mem[100] = stor[(2 * idx) + ('array', 2, ('map', ('param', 'arg1'), ('name', 'bucketHolding', 6)))].field_0
        require ext_code.size(address(stor1.length))
        call address(stor1.length).close(bytes32 rg1) with:
           value stor[(2 * idx) + ('array', 2, ('map', ('param', 'arg1'), ('name', 'bucketHolding', 6)))].field_256 wei
             gas gas_remaining - 9710 wei
            args stor[(2 * idx) + ('array', 2, ('map', ('param', 'arg1'), ('name', 'bucketHolding', 6)))].field_0
        require ext_call.success
        s = (2 * idx) + sha3(sha3(arg1, 6) + 2)
        idx = idx + 1
        s = stor[(2 * idx) + ('array', 2, ('map', ('param', 'arg1'), ('name', 'bucketHolding', 6)))].field_256 + s
        continue 
    emit BucketDestroyed(arg1, stor[(2 * stor6[arg1].field_512) + _13 + 1] * bucketHolding[arg1].field_512);
    bucketHolding[arg1].field_0 = 0
    bucketHolding[arg1].field_512 = 0
    s = sha3(sha3(arg1, 6) + 2)
    while sha3(sha3(arg1, 6) + 2) + (2 * bucketHolding[arg1].field_512) > 2 * bucketHolding[arg1].field_512 * bucketHolding[arg1].field_512:
        stor[2 * stor6[arg1].field_512 * stor6[arg1].field_512] = 0
        uint256(stor1[2 * stor6[arg1].field_512 * stor6[arg1].field_512]) = 0
        s = (2 * bucketHolding[arg1].field_512 * bucketHolding[arg1].field_512) + 2
        continue 
    Mask(72, 0, bucketHolding[arg1].field_768) = 0
}

function createBucket(bytes32[] arg1) {
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require bucketManagerAddress == msg.sender
    require address(stor1.length)
    require arg1.length > 0
    mem[(32 * arg1.length) + 160] = 0
    mem[(32 * arg1.length) + 128] = address(this.address)
    mem[(32 * arg1.length) + 148 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    hash = sha256hash(mem[(32 * arg1.length) + 128 len (96 * arg1.length) + 20]) 
    mem[(32 * arg1.length) + 128] = hash
    require sha256hash.result
    require not bucketHolding[hash].field_512
    s = 0
    s = 0
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _100 = mem[(32 * idx) + 128]
        require ext_code.size(address(stor1.length))
        call address(stor1.length).getClosingTime(bytes32 rg1) with:
             gas gas_remaining - 710 wei
            args mem[(32 * idx) + 128]
        require ext_call.success
        if uint64(bucketHolding[hash].field_776) >= uint64(ext_call.return_data[0]):
            mem[mem[64] + 32] = 0
            mem[mem[64] + 4] = _100
            require ext_code.size(address(stor1.length))
            call address(stor1.length).collect(bytes32 rg1) with:
                 gas gas_remaining - 710 wei
                args _100
            mem[mem[64]] = ext_call.return_data[0]
            require ext_call.success
            bucketHolding[hash].field_512++
            if not bucketHolding[hash].field_512 > bucketHolding[hash].field_512 + 1:
                mem[0] = sha3(hash, 6) + 2
                _121 = mem[64]
                mem[64] = mem[64] + 64
                mem[_121] = _100
                mem[_121 + 32] = ext_call.return_data[0]
            else:
                s = sha3(sha3(hash, 6) + 2) + (2 * bucketHolding[hash].field_512 + 1)
                while sha3(sha3(hash, 6) + 2) + (2 * bucketHolding[hash].field_512) > s:
                    stor[s] = 0
                    uint256(stor1[s]) = 0
                    s = s + 2
                    continue 
                mem[0] = sha3(hash, 6) + 2
                _138 = mem[64]
                mem[64] = mem[64] + 64
                mem[_138] = _100
                mem[_138 + 32] = ext_call.return_data[0]
        else:
            uint64(bucketHolding[hash].field_776) = uint64(ext_call.return_data[0])
            mem[mem[64] + 32] = 0
            mem[mem[64] + 4] = _100
            require ext_code.size(address(stor1.length))
            call address(stor1.length).collect(bytes32 rg1) with:
                 gas gas_remaining - 710 wei
                args _100
            mem[mem[64]] = ext_call.return_data[0]
            require ext_call.success
            bucketHolding[hash].field_512++
            if not bucketHolding[hash].field_512 > bucketHolding[hash].field_512 + 1:
                mem[0] = sha3(hash, 6) + 2
                _125 = mem[64]
                mem[64] = mem[64] + 64
                mem[_125] = _100
                mem[_125 + 32] = ext_call.return_data[0]
            else:
                s = sha3(sha3(hash, 6) + 2) + (2 * bucketHolding[hash].field_512 + 1)
                while sha3(sha3(hash, 6) + 2) + (2 * bucketHolding[hash].field_512) > s:
                    stor[s] = 0
                    uint256(stor1[s]) = 0
                    s = s + 2
                    continue 
                mem[0] = sha3(hash, 6) + 2
                _141 = mem[64]
                mem[64] = mem[64] + 64
                mem[_141] = _100
                mem[_141 + 32] = ext_call.return_data[0]
        stor[(2 * bucketHolding[hash].field_512) + ('array', 2, ('map', ('var', 'hash'), ('name', 'bucketHolding', 6)))].field_0 = _100
        stor[(2 * bucketHolding[hash].field_512) + ('array', 2, ('map', ('var', 'hash'), ('name', 'bucketHolding', 6)))].field_256 = ext_call.return_data[0]
        bucketHolding[hash].field_0 += ext_call.return_data[0]
        s = ext_call.return_data[0]
        s = ext_call.return_data[0]
        s = _100
        idx = idx + 1
        continue 
    emit 0x3b8b2681: hash, bucketHolding[hash].field_0
    return 0
}



}
