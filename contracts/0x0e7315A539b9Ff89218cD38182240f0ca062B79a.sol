contract main {




// =====================  Runtime code  =====================


#
#  - __callback(bytes32 arg1, string arg2)
#  - getNumbersFromString(string arg1, string arg2, uint32 arg3)
#  - triggerStealManually(uint32 arg1)
#
address owner;
address pendingOwner;
uint8 stor10; offset 8
uint8 fee;
uint16 maxArtworks; offset 40
uint32 stor10; offset 11
uint32 numArtworks; offset 8
array of uint256 stor11;
array of uint256 stor12;
address stor13;
uint32 lastcombo; offset 160
address stor14;
uint256 stor14;
uint256 lastStealBlockNumber;
array of uint8 stor16;
array of uint256 stor17;
array of uint256 stor18;
uint256 nextStealTimestamp;
address operatorAddress;
bool stor20; offset 256
uint8 stor20; offset 24
uint8 stor20; offset 88
uint16 stor20; offset 32
uint16 stor20; offset 48
uint32 stor20;
uint32 stor20; offset 64
uint32 oraclizeGas;
uint32 oraclizeGasExtraArtwork; offset 32
uint32 etherExchangeLikeCoin; offset 64
uint8 numOfTimesSteal;
uint256 oraclizeFee;
address likeAddress;
array of uint32 stor4;
bool stor5; offset 256
uint8 stor5;
uint32 lastId;
uint32 oldest; offset 32
uint64 stor5; offset 8
mapping of struct artwork;
array of uint256 stor660301456019777184113296434797620819555017468543624515662331739614079884729;
mapping of uint32 stor7;
array of uint128 stor8;
array of uint256 stor9;

function oraclizeGasExtraArtwork() {
    return oraclizeGasExtraArtwork
}

function getArtwork(uint32 arg1) {
    return uint8(artwork[arg1 << 224].field_0), 
           uint32(artwork[arg1 << 224].field_0),
           uint128(artwork[arg1 << 224].field_0),
           address(artwork[arg1 << 224].field_256)
}

function numArtworks() {
    return numArtworks
}

function lastcombo() {
    return lastcombo
}

function oldest() {
    return oldest
}

function oraclizeGas() {
    return oraclizeGas
}

function costs(uint256 arg1) {
    require arg1 < stor8.length
    return costs[uint8(arg1)]
}

function oraclizeFee() {
    return oraclizeFee
}

function numOfTimesSteal() {
    return numOfTimesSteal
}

function operator() {
    return operatorAddress
}

function values(uint256 arg1) {
    require arg1 < stor9.length
    return values[uint8(arg1)]
}

function etherExchangeLikeCoin() {
    return etherExchangeLikeCoin
}

function owner() {
    return owner
}

function maxArtworks() {
    return maxArtworks
}

function like() {
    return likeAddress
}

function nextStealTimestamp() {
    return nextStealTimestamp
}

function oldestExtraStealProbability(uint256 arg1) {
    require arg1 < stor16.length
    return oldestExtraStealProbability[uint8(arg1)]
}

function lastId() {
    return lastId
}

function fee() {
    return fee
}

function pendingOwner() {
    return pendingOwner
}

function lastStealBlockNumber() {
    return lastStealBlockNumber
}

function ids(uint256 arg1) {
    require arg1 < stor4.length
    return ids[uint8(arg1)]
}

function deposit() payable {
  stop
}

function _fallback() payable {
    revert
}

function setOperator(address arg1) {
    require msg.sender == owner
    operatorAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    pendingOwner = arg1
}

function setOraclizeGas(uint32 arg1) {
    if owner != msg.sender:
        require msg.sender == operatorAddress
    oraclizeGas = arg1
}

function setMaxArtworks(uint16 arg1) {
    if owner != msg.sender:
        require msg.sender == operatorAddress
    maxArtworks = arg1
}

function getRemainTime() {
    if nextStealTimestamp <= block.timestamp:
        return 0
    return (nextStealTimestamp - block.timestamp)
}

function setNumOfTimesSteal(uint8 arg1) {
    if owner != msg.sender:
        require msg.sender == operatorAddress
    numOfTimesSteal = arg1
}

function setEtherExchangeLikeCoin(uint32 arg1) {
    if owner != msg.sender:
        require msg.sender == operatorAddress
    etherExchangeLikeCoin = arg1
}

function setOraclizeGasExtraArtwork(uint32 arg1) {
    if owner != msg.sender:
        require msg.sender == operatorAddress
    oraclizeGasExtraArtwork = arg1
}

function claimOwnership() {
    require msg.sender == pendingOwner
    emit OwnershipTransferred(owner, pendingOwner);
    owner = pendingOwner
    pendingOwner = 0
}

function updateNextStealTimeByOperator(uint32 arg1) {
    if owner != msg.sender:
        require msg.sender == operatorAddress
    nextStealTimestamp = block.timestamp + arg1
}

function withdrawBalance() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function getFees() {
    idx = 0
    s = 0
    while uint16(idx) < numArtworks:
        require uint16(idx) < stor4.length
        mem[0] = stor('array', ('mask_shl', 13, 3, -3, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
        mem[32] = 6
        idx = idx + 1
        s = uint128(artwork[uint32(stor4[uint16(idx) / 8].field_(32 * idx % 8) - 224)].field_40) + s
        continue 
    require ext_code.size(likeAddress)
    call likeAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (ext_call.return_data[0] - (uint128(stor[_12].field_40) * None))
}

function getNumArtworksXType() {
    if not stor11.length:
        mem[(32 * stor11.length) + 128] = 32
        mem[(32 * stor11.length) + 160] = stor11.length
        mem[(32 * stor11.length) + 192 len floor32(stor11.length)] = mem[128 len floor32(stor11.length)]
        return memory
          from (32 * stor11.length) + 128
           len (96 * stor11.length) + 64
    mem[128] = uint32(stor11.field_0)
    idx = 128
    s = 0
    while (32 * stor11.length) + 96 > idx:
        mem[idx + 32] = uint32(stor11.field_8 * (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s))
        idx = idx + 32
        s = (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s)
        continue 
    mem[(32 * stor11.length) + 192 len floor32(stor11.length)] = mem[128 len floor32(stor11.length)]
    return Array(len=stor11.length, data=mem[128 len floor32(stor11.length)], mem[(32 * stor11.length) + floor32(stor11.length) + 192 len (32 * stor11.length) - floor32(stor11.length)]), 
}

function collectFees(uint128 arg1) {
    require msg.sender == owner
    idx = 0
    s = 0
    while uint16(idx) < numArtworks:
        require uint16(idx) < stor4.length
        mem[0] = stor('array', ('mask_shl', 13, 3, -3, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
        mem[32] = 6
        idx = idx + 1
        s = uint128(artwork[uint32(stor4[uint16(idx) / 8].field_(32 * idx % 8) - 224)].field_40) + s
        continue 
    require ext_code.size(likeAddress)
    call likeAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] - (uint128(stor[_13].field_40) * None) >= arg1:
        require ext_code.size(likeAddress)
        call likeAddress.0xa9059cbb with:
             gas gas_remaining wei
            args owner, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function getOldest() {
    if 0 == numArtworks:
        return 0
    if oldest:
        return lastId, 
               uint8(artwork[uint32(stor5.field_0)].field_0),
               uint32(artwork[uint32(stor5.field_0)].field_0),
               uint128(artwork[uint32(stor5.field_0)].field_0),
               address(artwork[uint32(stor5.field_0)].field_256)
    require 0 < stor4.length
    mem[0] = 4
    idx = 1
    s = uint32(stor[sha3(mem[0])].field_0)
    while uint16(idx) < numArtworks:
        require uint16(idx) < stor4.length
        mem[0] = 4
        if stor('array', ('mask_shl', 13, 3, -3, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)] >= uint32(s):
            idx = idx + 1
            s = s
            continue 
        require uint16(idx) < stor4.length
        mem[0] = 4
        idx = idx + 1
        s = stor('array', ('mask_shl', 13, 3, -3, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
        continue 
    return s << 224, 
           uint8(artwork[s << 224].field_0),
           uint32(artwork[s << 224].field_0),
           uint128(artwork[s << 224].field_0),
           address(artwork[s << 224].field_256)
}

function setFee(uint8 arg1) {
    require msg.sender == owner
    fee = arg1
    idx = 0
    while uint8(idx) < stor8.length:
        require uint8(idx) < stor8.length
        require uint8(idx) < stor8.length
        if uint8(idx) < stor9.length:
            require uint8(idx) < stor9.length
            mem[0] = 9
            uint256(stor9[uint8(idx) / 2].field_0) = uint128(stor('array', ('mask_shl', 7, 1, -1, ('var', 0)), ('name', 'stor8', 8))[uint8(idx)] - (stor('array', ('mask_shl', 7, 1, -1, ('var', 0)), ('name', 'stor8', 8))[uint8(idx)] / 100 * fee)) * 256^(16 * bool(idx)) or !(test266151307() * 256^(16 * bool(idx))) and uint256(stor9[uint8(idx) / 2].field_0)
        else:
            stor9.length++
            uint256(stor9[uint255(stor9.length.field_1)].field_0) = uint256(stor9[uint255(stor9.length.field_1)].field_0) and !(test266151307() * 256^(16 * bool(stor9.length))) or 256^(16 * bool(stor9.length)) * uint128(stor('array', ('mask_shl', 7, 1, -1, ('var', 0)), ('name', 'stor8', 8))[uint8(idx)] - (stor('array', ('mask_shl', 7, 1, -1, ('var', 0)), ('name', 'stor8', 8))[uint8(idx)] / 100 * fee))
            stor11.length++
            mem[0] = 11
            stor175B[Mask(253, 0, stor11.length.field_3)] = !(test266151307() * 256^(4 * stor11.length % 8)) and stor175B[Mask(253, 0, stor11.length.field_3)]
        idx = idx + 1
        continue 
}

function init1() {
    require msg.sender == owner
    mem[128] = '10 random numbers between 1 and '
    mem[160] = '100000'
    stor17.length = 77
    s = 0
    idx = 128
    while 166 > idx:
        stor17[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 2
    while stor17.length + 31 / 32 > idx:
        stor17[idx] = 0
        idx = idx + 1
        continue 
    uint8(stor18.length) = 24
    Mask(248, 0, stor18.length.field_8) = 'WolframAlpha' / 256
    idx = 0
    while stor18.length + 31 / 32 > idx:
        uint256(stor18[idx].field_0) = 0
        idx = idx + 1
        continue 
    stor20.field_0 % 16777216 = 150000
    uint8(stor20.field_24) = 0
    uint16(stor20.field_32) = 14000
    uint16(stor20.field_48) = 0
    stor20.field_64 % 16777216 = 100000
    uint8(stor20.field_88) = 0
    stor20.field_256 % 1 = 0
    stor20.field_256 % 1 = 0
    mem[256] = 3
    mem[288] = 5
    mem[320] = 10
    mem[352] = 15
    mem[384] = 30
    mem[416] = 50
    stor16.length = 6
    s = 0
    idx = 256
    while 448 > idx:
        uint256(stor16) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor16)
        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
        idx = idx + 32
        continue 
    idx = 6
    s = sha3(16)
    while idx:
        uint256(stor[s].field_0) = !(255 * 256^idx) and uint256(stor[s].field_0)
        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
        s = (idx + 1 / 32) + s
        continue 
    idx = (-4 * None + 3 / 32) + (None * None + 3 / 32)
    while stor16.length + 31 / 32 > idx:
        uint8(stor16[idx]) = 0
        idx = idx + 1
        continue 
    numOfTimesSteal = 1
}

function init(address arg1) {
    require msg.sender == owner
    require not likeAddress
    likeAddress = arg1
    mem[96] = 800 * 10^18
    mem[128] = 2000 * 10^18
    mem[160] = 5000 * 10^18
    mem[192] = 12000 * 10^18
    mem[224] = 25000 * 10^18
    stor8.length = 5
    s = 0
    idx = 96
    while 256 > idx:
        uint256(stor8) = mem[idx + 22 len 10] * 256^s or !(test266151307() * 256^s) and uint256(stor8)
        s = s + (16 * -s + 31 / 32) + (-1 * s * s + 31 / 32) + 16
        idx = idx + 32
        continue 
    idx = 80
    s = sha3(8)
    while idx:
        uint256(stor[s].field_0) = !(test266151307() * 256^idx) and uint256(stor[s].field_0)
        idx = idx + (16 * -idx + 31 / 32) + (-1 * idx * idx + 31 / 32) + 16
        s = (idx + 31 / 32) + s
        continue 
    idx = Mask(248, 4, None - 63) + 111 / 32 * Mask(252, 0, None - 63) >> 4
    while stor8.length + 1 / 2 > idx:
        uint128(stor8[idx]) = 0
        idx = idx + 1
        continue 
    require msg.sender == owner
    fee = 5
    idx = 0
    while uint8(idx) < stor8.length:
        require uint8(idx) < stor8.length
        require uint8(idx) < stor8.length
        if uint8(idx) < stor9.length:
            require uint8(idx) < stor9.length
            mem[0] = 9
            uint256(stor9[uint8(idx) / 2].field_0) = uint128(stor('array', ('mask_shl', 7, 1, -1, ('var', 0)), ('name', 'stor8', 8))[uint8(idx)] - (stor('array', ('mask_shl', 7, 1, -1, ('var', 0)), ('name', 'stor8', 8))[uint8(idx)] / 100 * fee)) * 256^(16 * bool(idx)) or !(test266151307() * 256^(16 * bool(idx))) and uint256(stor9[uint8(idx) / 2].field_0)
        else:
            stor9.length++
            uint256(stor9[uint255(stor9.length.field_1)].field_0) = uint256(stor9[uint255(stor9.length.field_1)].field_0) and !(test266151307() * 256^(16 * bool(stor9.length))) or 256^(16 * bool(stor9.length)) * uint128(stor('array', ('mask_shl', 7, 1, -1, ('var', 0)), ('name', 'stor8', 8))[uint8(idx)] - (stor('array', ('mask_shl', 7, 1, -1, ('var', 0)), ('name', 'stor8', 8))[uint8(idx)] / 100 * fee))
            stor11.length++
            mem[0] = 11
            stor175B[Mask(253, 0, stor11.length.field_3)] = !(test266151307() * 256^(4 * stor11.length % 8)) and stor175B[Mask(253, 0, stor11.length.field_3)]
        idx = idx + 1
        continue 
    maxArtworks = 1000
    uint8(stor5.field_0) = 1
    stor5.field_8 % 72057594037927936 = 0
    stor5.field_256 % 1 = 0
}

function setCosts(uint128[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    require arg1.length >= stor8.length
    stor8.length = arg1.length
    if not arg1.length:
        idx = 0
        while stor8.length + 1 / 2 > idx:
            uint128(stor8[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            uint256(stor8) = mem[idx + 16 len 16] * 256^s or !(test266151307() * 256^s) and uint256(stor8)
            s = s + (16 * -s + 31 / 32) + (-1 * s * s + 31 / 32) + 16
            idx = idx + 32
            continue 
        idx = floor32(arg1.length) >> 1
        s = sha3(8)
        while idx:
            uint256(stor[s].field_0) = !(test266151307() * 256^idx) and uint256(stor[s].field_0)
            idx = idx + (16 * -idx + 31 / 32) + (-1 * idx * idx + 31 / 32) + 16
            s = (idx + 31 / 32) + s
            continue 
        idx = (floor32(arg1.length) >> 1) + Mask(248, 4, None + -(floor32(arg1.length) >> 1) + 17) + 31 / 32 * Mask(252, 0, None + -(floor32(arg1.length) >> 1) + 17) >> 4
        while stor8.length + 1 / 2 > idx:
            uint128(stor8[idx]) = 0
            idx = idx + 1
            continue 
    require msg.sender == owner
    idx = 0
    while uint8(idx) < stor8.length:
        require uint8(idx) < stor8.length
        require uint8(idx) < stor8.length
        if uint8(idx) < stor9.length:
            require uint8(idx) < stor9.length
            mem[0] = 9
            uint256(stor9[uint8(idx) / 2].field_0) = uint128(stor('array', ('mask_shl', 7, 1, -1, ('var', 0)), ('name', 'stor8', 8))[uint8(idx)] - (stor('array', ('mask_shl', 7, 1, -1, ('var', 0)), ('name', 'stor8', 8))[uint8(idx)] / 100 * fee)) * 256^(16 * bool(idx)) or !(test266151307() * 256^(16 * bool(idx))) and uint256(stor9[uint8(idx) / 2].field_0)
        else:
            stor9.length++
            uint256(stor9[uint255(stor9.length.field_1)].field_0) = uint256(stor9[uint255(stor9.length.field_1)].field_0) and !(test266151307() * 256^(16 * bool(stor9.length))) or 256^(16 * bool(stor9.length)) * uint128(stor('array', ('mask_shl', 7, 1, -1, ('var', 0)), ('name', 'stor8', 8))[uint8(idx)] - (stor('array', ('mask_shl', 7, 1, -1, ('var', 0)), ('name', 'stor8', 8))[uint8(idx)] / 100 * fee))
            stor11.length++
            mem[0] = 11
            stor175B[Mask(253, 0, stor11.length.field_3)] = !(test266151307() * 256^(4 * stor11.length % 8)) and stor175B[Mask(253, 0, stor11.length.field_3)]
        idx = idx + 1
        continue 
}

function sellArtwork(uint32 arg1) payable {
    mem[64] = 96
    require not msg.value
    require msg.sender == address(artwork[arg1 << 224].field_256)
    mem[0] = arg1
    mem[32] = 6
    idx = 0
    while uint16(idx) < numArtworks:
        require uint16(idx) < stor4.length
        mem[0] = 4
        if stor('array', ('mask_shl', 13, 3, -3, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)] != arg1:
            idx = idx + 1
            continue 
        require uint16(idx) < stor4.length
        require uint8(artwork[uint32(stor4[uint16(idx) / 8].field_(32 * idx % 8) - 224)].field_0) < stor11.length
        uint256(stor11[stor6[uint32(stor4[uint16(idx) / 8].field_(32 * idx % 8) - 224)].field_3 % 32].field_0) = 256^(4 * artwork[uint32(stor4[uint16(idx) / 8].field_(32 * idx % 8) - 224)].field_0 % 8) * uint32(stor('array', ('stor', 5, 3, ('map', ('stor', 32, ('add', -224, ('mask_shl', 3, 0, 5, ('var', 0))), ('array', ('mask_shl', 13, 3, -3, ('var', 0)), ('name', 'stor4', 4))), ('name', 'stor6', 6))), ('name', 'stor11', 11))[stor6[uint32(stor4[uint16(idx) / 8].field_(32 * idx % 8) - 224)].field_0 % 8] - 1) or uint256(stor11[stor6[uint32(stor4[uint16(idx) / 8].field_(32 * idx % 8) - 224)].field_3 % 32].field_0) and !(test266151307() * 256^(4 * artwork[uint32(stor4[uint16(idx) / 8].field_(32 * idx % 8) - 224)].field_0 % 8))
        numArtworks = uint32(numArtworks - 1)
        if stor('array', ('mask_shl', 13, 3, -3, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)] == oldest:
            oldest = 0
        Mask(168, 0, artwork[uint32(stor4[uint16(idx) / 8].field_(32 * idx % 8) - 224)].field_0) = 0
        address(artwork[uint32(stor4[uint16(idx) / 8].field_(32 * idx % 8) - 224)].field_256) = 0
        require numArtworks < stor4.length
        if numArtworks > 0:
            require uint16(idx) < stor4.length
            uint256(stor4[uint16(idx) / 8].field_0) = stor('array', ('stor', 29, 11, ('name', 'stor10', 10)), ('name', 'stor4', 4))[stor10.field_8 % 8] * 256^(4 * idx % 8) or !(test266151307() * 256^(4 * idx % 8)) and uint256(stor4[uint16(idx) / 8].field_0)
        uint256(stor4[stor10.field_11 % 536870912].field_0) = uint256(stor4[stor10.field_11 % 536870912].field_0) and !(test266151307() * 256^(4 * stor10.field_8 % 8))
        stor4.length = numArtworks
        if stor4.length > numArtworks:
            idx = sha3(4) + (numArtworks + 7 / 8)
            while sha3(4) + (stor4.length + 7 / 8) > idx:
                uint256(stor[idx].field_0) = 0
                idx = idx + 1
                continue 
        if uint128(artwork[arg1 << 224].field_40) > 0:
            require ext_code.size(likeAddress)
            call likeAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, uint128(artwork[arg1 << 224].field_40)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        mem[128] = arg1
        mem[160] = 96
        idx = 0
        while idx < 32:
            mem[idx + 288] = mem[idx + 128]
            idx = idx + 32
            continue 
        emit newSell(Array(len=1, data=mem[288]), msg.sender, uint128(artwork[arg1 << 224].field_0));
    revert
}

function getAllArtworks() {
    mem[96] = numArtworks
    if not numArtworks:
        mem[(32 * numArtworks) + 128] = numArtworks
        mem[(64 * numArtworks) + 160] = numArtworks
        mem[(98 * numArtworks) + 192] = numArtworks
    else:
        mem[128 len 32 * numArtworks] = code.data[22817 len 32 * numArtworks]
        mem[(32 * numArtworks) + 128] = numArtworks
        mem[(32 * numArtworks) + 160 len 32 * numArtworks] = code.data[22817 len 32 * numArtworks]
        mem[(64 * numArtworks) + 160] = numArtworks
        mem[(64 * numArtworks) + 192 len 32 * numArtworks] = code.data[22817 len 32 * numArtworks]
        mem[(98 * numArtworks) + 192] = numArtworks
        mem[(98 * numArtworks) + 224 len 32 * numArtworks] = code.data[22817 len 32 * numArtworks]
    idx = 0
    s = 0
    while uint16(idx) < numArtworks:
        require uint16(idx) < stor4.length
        require uint16(idx) < mem[96]
        mem[(32 * uint16(idx)) + 128] = stor('array', ('mask_shl', 13, 3, -3, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
        require uint16(idx) < mem[(32 * numArtworks) + 128]
        mem[(32 * numArtworks) + (32 * uint16(idx)) + 160] = uint8(artwork[uint32(stor4[uint16(idx) / 8].field_(32 * idx % 8) - 224)].field_0)
        require uint16(idx) < mem[(64 * numArtworks) + 160]
        mem[(32 * uint16(idx)) + (64 * numArtworks) + 192] = uint32(artwork[uint32(stor4[uint16(idx) / 8].field_(32 * idx % 8) - 224)].field_8)
        mem[0] = stor('array', ('mask_shl', 13, 3, -3, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
        mem[32] = 6
        require uint16(idx) < mem[(98 * numArtworks) + 192]
        mem[(98 * numArtworks) + (32 * uint16(idx)) + 224] = uint128(artwork[uint32(stor4[uint16(idx) / 8].field_(32 * idx % 8) - 224)].field_40)
        idx = idx + 1
        s = stor('array', ('mask_shl', 13, 3, -3, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
        continue 
    mem[(131 * numArtworks) + 224] = 128
    mem[(131 * numArtworks) + 352] = mem[96]
    mem[(131 * numArtworks) + 384 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[(131 * numArtworks) + 256] = (32 * mem[96]) + 160
    mem[(32 * mem[96]) + (131 * numArtworks) + 384] = mem[(32 * numArtworks) + 128]
    mem[(32 * mem[96]) + (131 * numArtworks) + 416 len floor32(mem[(32 * numArtworks) + 128])] = mem[(32 * numArtworks) + 160 len floor32(mem[(32 * numArtworks) + 128])]
    mem[(131 * numArtworks) + 288] = (32 * mem[(32 * numArtworks) + 128]) + (32 * mem[96]) + 192
    mem[(32 * mem[(32 * numArtworks) + 128]) + (32 * mem[96]) + (131 * numArtworks) + 416] = mem[(64 * numArtworks) + 160]
    mem[(32 * mem[(32 * numArtworks) + 128]) + (32 * mem[96]) + (131 * numArtworks) + 448 len floor32(mem[(64 * numArtworks) + 160])] = mem[(64 * numArtworks) + 192 len floor32(mem[(64 * numArtworks) + 160])]
    mem[(131 * numArtworks) + 320] = (32 * mem[(64 * numArtworks) + 160]) + (32 * mem[(32 * numArtworks) + 128]) + (32 * mem[96]) + 224
    mem[(32 * mem[(64 * numArtworks) + 160]) + (32 * mem[(32 * numArtworks) + 128]) + (32 * mem[96]) + (131 * numArtworks) + 448] = mem[(98 * numArtworks) + 192]
    mem[(32 * mem[(64 * numArtworks) + 160]) + (32 * mem[(32 * numArtworks) + 128]) + (32 * mem[96]) + (131 * numArtworks) + 480 len floor32(mem[(98 * numArtworks) + 192])] = mem[(98 * numArtworks) + 224 len floor32(mem[(98 * numArtworks) + 192])]
    return Array(len=mem[96], data=mem[(131 * numArtworks) + 384 len (32 * mem[(32 * numArtworks) + 128]) + (32 * mem[96]) + 32], mem[(64 * numArtworks) + 160], mem[(131 * numArtworks) + (32 * mem[(32 * numArtworks) + 128]) + (32 * mem[96]) + 448 len (32 * mem[(98 * numArtworks) + 192]) + (32 * mem[(64 * numArtworks) + 160]) + 32]), 
           (32 * mem[96]) + 160,
           (32 * mem[(32 * numArtworks) + 128]) + (32 * mem[96]) + 192,
           (32 * mem[(64 * numArtworks) + 160]) + (32 * mem[(32 * numArtworks) + 128]) + (32 * mem[96]) + 224
}

function initOraclize() {
    require msg.sender == owner
    if not stor13:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor13 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
            bool(stor12.length) = 0
            uint255(stor12.length.field_1) = 11
            Mask(248, 0, stor12.length.field_8) = 'eth_mainnet' / 256
            idx = 0
            while stor12.length + 31 / 32 > idx:
                uint256(stor12[idx].field_0) = 0
                idx = idx + 1
                continue 
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor13 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                bool(stor12.length) = 0
                uint255(stor12.length.field_1) = 12
                Mask(248, 0, stor12.length.field_8) = 'eth_ropsten3' / 256
                idx = 0
                while stor12.length + 31 / 32 > idx:
                    uint256(stor12[idx].field_0) = 0
                    idx = idx + 1
                    continue 
            else:
                if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                    stor13 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                    bool(stor12.length) = 0
                    uint255(stor12.length.field_1) = 9
                    Mask(248, 0, stor12.length.field_8) = 'eth_kovan' / 256
                    idx = 0
                    while stor12.length + 31 / 32 > idx:
                        uint256(stor12[idx].field_0) = 0
                        idx = idx + 1
                        continue 
                else:
                    if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                        if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                            stor13 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                        else:
                            if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                stor13 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                            else:
                                if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                    stor13 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                    else:
                        stor13 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                        bool(stor12.length) = 0
                        uint255(stor12.length.field_1) = 11
                        Mask(248, 0, stor12.length.field_8) = 'eth_rinkeby' / 256
                        idx = 0
                        while stor12.length + 31 / 32 > idx:
                            uint256(stor12[idx].field_0) = 0
                            idx = idx + 1
                            continue 
    else:
        if not ext_code.size(stor13):
            if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                stor13 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                bool(stor12.length) = 0
                uint255(stor12.length.field_1) = 11
                Mask(248, 0, stor12.length.field_8) = 'eth_mainnet' / 256
                idx = 0
                while stor12.length + 31 / 32 > idx:
                    uint256(stor12[idx].field_0) = 0
                    idx = idx + 1
                    continue 
            else:
                if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                    stor13 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                    bool(stor12.length) = 0
                    uint255(stor12.length.field_1) = 12
                    Mask(248, 0, stor12.length.field_8) = 'eth_ropsten3' / 256
                    idx = 0
                    while stor12.length + 31 / 32 > idx:
                        uint256(stor12[idx].field_0) = 0
                        idx = idx + 1
                        continue 
                else:
                    if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                        stor13 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                        bool(stor12.length) = 0
                        uint255(stor12.length.field_1) = 9
                        Mask(248, 0, stor12.length.field_8) = 'eth_kovan' / 256
                        idx = 0
                        while stor12.length + 31 / 32 > idx:
                            uint256(stor12[idx].field_0) = 0
                            idx = idx + 1
                            continue 
                    else:
                        if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                            if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                                stor13 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                            else:
                                if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                    stor13 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                                else:
                                    if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                        stor13 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                        else:
                            stor13 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                            bool(stor12.length) = 0
                            uint255(stor12.length.field_1) = 11
                            Mask(248, 0, stor12.length.field_8) = 'eth_rinkeby' / 256
                            idx = 0
                            while stor12.length + 31 / 32 > idx:
                                uint256(stor12[idx].field_0) = 0
                                idx = idx + 1
                                continue 
}

function setCustomGasPrice(uint256 arg1) {
    if owner != msg.sender:
        require msg.sender == operatorAddress
    if not stor13:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor13 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
            bool(stor12.length) = 0
            uint255(stor12.length.field_1) = 11
            Mask(248, 0, stor12.length.field_8) = 'eth_mainnet' / 256
            idx = 0
            while stor12.length + 31 / 32 > idx:
                uint256(stor12[idx].field_0) = 0
                idx = idx + 1
                continue 
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor13 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                bool(stor12.length) = 0
                uint255(stor12.length.field_1) = 12
                Mask(248, 0, stor12.length.field_8) = 'eth_ropsten3' / 256
                idx = 0
                while stor12.length + 31 / 32 > idx:
                    uint256(stor12[idx].field_0) = 0
                    idx = idx + 1
                    continue 
            else:
                if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                    stor13 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                    bool(stor12.length) = 0
                    uint255(stor12.length.field_1) = 9
                    Mask(248, 0, stor12.length.field_8) = 'eth_kovan' / 256
                    idx = 0
                    while stor12.length + 31 / 32 > idx:
                        uint256(stor12[idx].field_0) = 0
                        idx = idx + 1
                        continue 
                else:
                    if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                        if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                            stor13 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                        else:
                            if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                stor13 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                            else:
                                if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                    stor13 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                    else:
                        stor13 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                        bool(stor12.length) = 0
                        uint255(stor12.length.field_1) = 11
                        Mask(248, 0, stor12.length.field_8) = 'eth_rinkeby' / 256
                        idx = 0
                        while stor12.length + 31 / 32 > idx:
                            uint256(stor12[idx].field_0) = 0
                            idx = idx + 1
                            continue 
        require ext_code.size(stor13)
    else:
        if not ext_code.size(stor13):
            if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                stor13 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                bool(stor12.length) = 0
                uint255(stor12.length.field_1) = 11
                Mask(248, 0, stor12.length.field_8) = 'eth_mainnet' / 256
                idx = 0
                while stor12.length + 31 / 32 > idx:
                    uint256(stor12[idx].field_0) = 0
                    idx = idx + 1
                    continue 
            else:
                if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                    stor13 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                    bool(stor12.length) = 0
                    uint255(stor12.length.field_1) = 12
                    Mask(248, 0, stor12.length.field_8) = 'eth_ropsten3' / 256
                    idx = 0
                    while stor12.length + 31 / 32 > idx:
                        uint256(stor12[idx].field_0) = 0
                        idx = idx + 1
                        continue 
                else:
                    if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                        stor13 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                        bool(stor12.length) = 0
                        uint255(stor12.length.field_1) = 9
                        Mask(248, 0, stor12.length.field_8) = 'eth_kovan' / 256
                        idx = 0
                        while stor12.length + 31 / 32 > idx:
                            uint256(stor12[idx].field_0) = 0
                            idx = idx + 1
                            continue 
                    else:
                        if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                            if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                                stor13 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                            else:
                                if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                    stor13 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                                else:
                                    if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                        stor13 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                        else:
                            stor13 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                            bool(stor12.length) = 0
                            uint255(stor12.length.field_1) = 11
                            Mask(248, 0, stor12.length.field_8) = 'eth_rinkeby' / 256
                            idx = 0
                            while stor12.length + 31 / 32 > idx:
                                uint256(stor12[idx].field_0) = 0
                                idx = idx + 1
                                continue 
            require ext_code.size(stor13)
    call stor13.getAddress() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != address(stor14.field_0):
        require ext_code.size(stor13)
        call stor13.getAddress() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        uint256(stor14.field_0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor14.field_0))
    require ext_code.size(address(stor14.field_0))
    call address(stor14.field_0).0xca6ad1e4 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getAllArtworksByOwner() {
    idx = 0
    s = 0
    while uint16(idx) < numArtworks:
        require uint16(idx) < stor4.length
        mem[0] = stor('array', ('mask_shl', 13, 3, -3, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
        mem[32] = 6
        if address(artwork[uint32(stor4[uint16(idx) / 8].field_(32 * idx % 8) - 224)].field_256) != msg.sender:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    if not uint16(s):
        mem[(32 * uint16(s)) + 128] = uint16(s)
        mem[(64 * uint16(s)) + 160] = uint16(s)
        mem[(64 * uint16(s)) + (32 * uint16(s)) + 192] = uint16(s)
        idx = 0
        t = 0
        u = 0
        while uint16(idx) < numArtworks:
            require uint16(idx) < stor4.length
            mem[0] = stor('array', ('mask_shl', 13, 3, -3, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
            mem[32] = 6
            if address(artwork[uint32(stor4[uint16(idx) / 8].field_(32 * idx % 8) - 224)].field_256) != msg.sender:
                idx = idx + 1
                t = t
                u = u
                continue 
            require uint16(idx) < stor4.length
            require uint16(t) < uint16(s)
            mem[(32 * uint16(t)) + 128] = stor('array', ('mask_shl', 13, 3, -3, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
            require uint16(t) < mem[(32 * uint16(s)) + 128]
            mem[(32 * uint16(s)) + (32 * uint16(t)) + 160] = uint8(artwork[uint32(stor4[uint16(idx) / 8].field_(32 * idx % 8) - 224)].field_0)
            require uint16(t) < mem[(64 * uint16(s)) + 160]
            mem[(32 * uint16(t)) + (64 * uint16(s)) + 192] = uint32(artwork[uint32(stor4[uint16(idx) / 8].field_(32 * idx % 8) - 224)].field_8)
            mem[0] = stor('array', ('mask_shl', 13, 3, -3, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
            mem[32] = 6
            require uint16(t) < mem[(64 * uint16(s)) + (32 * uint16(s)) + 192]
            mem[(64 * uint16(s)) + (32 * uint16(s)) + (32 * uint16(t)) + 224] = uint128(artwork[uint32(stor4[uint16(idx) / 8].field_(32 * idx % 8) - 224)].field_40)
            idx = idx + 1
            t = t + 1
            u = stor('array', ('mask_shl', 13, 3, -3, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
            continue 
        mem[(uint16(s) << 7) + 224] = 128
        mem[(uint16(s) << 7) + 352] = uint16(s)
        mem[(uint16(s) << 7) + 384 len Mask(11, 5, s)] = mem[128 len Mask(11, 5, s)]
        mem[(uint16(s) << 7) + 256] = (32 * uint16(s)) + 160
        mem[(32 * uint16(s)) + (uint16(s) << 7) + 384] = mem[(32 * uint16(s)) + 128]
        mem[(32 * uint16(s)) + (uint16(s) << 7) + 416 len floor32(mem[(32 * uint16(s)) + 128])] = mem[(32 * uint16(s)) + 160 len floor32(mem[(32 * uint16(s)) + 128])]
        mem[(uint16(s) << 7) + 288] = (32 * mem[(32 * uint16(s)) + 128]) + (32 * uint16(s)) + 192
        mem[(32 * mem[(32 * uint16(s)) + 128]) + (32 * uint16(s)) + (uint16(s) << 7) + 416] = mem[(64 * uint16(s)) + 160]
        mem[(32 * mem[(32 * uint16(s)) + 128]) + (32 * uint16(s)) + (uint16(s) << 7) + 448 len floor32(mem[(64 * uint16(s)) + 160])] = mem[(64 * uint16(s)) + 192 len floor32(mem[(64 * uint16(s)) + 160])]
        mem[(uint16(s) << 7) + 320] = (32 * mem[(64 * uint16(s)) + 160]) + (32 * mem[(32 * uint16(s)) + 128]) + (32 * uint16(s)) + 224
        mem[(32 * mem[(64 * uint16(s)) + 160]) + (32 * mem[(32 * uint16(s)) + 128]) + (32 * uint16(s)) + (uint16(s) << 7) + 448] = mem[(64 * uint16(s)) + (32 * uint16(s)) + 192]
        mem[(32 * mem[(64 * uint16(s)) + 160]) + (32 * mem[(32 * uint16(s)) + 128]) + (32 * uint16(s)) + (uint16(s) << 7) + 480 len floor32(mem[(64 * uint16(s)) + (32 * uint16(s)) + 192])] = mem[(64 * uint16(s)) + (32 * uint16(s)) + 224 len floor32(mem[(64 * uint16(s)) + (32 * uint16(s)) + 192])]
        return Array(len=s << 240, data=mem[128 len Mask(11, 5, s)], mem[(uint16(s) << 7) + Mask(11, 5, s) + 384 len (32 * mem[(32 * uint16(s)) + 128]) + (32 * uint16(s)) + -Mask(11, 5, s) + 32], mem[(64 * uint16(s)) + 160], mem[(uint16(s) << 7) + (32 * mem[(32 * uint16(s)) + 128]) + (32 * uint16(s)) + 448 len (32 * mem[(64 * uint16(s)) + (32 * uint16(s)) + 192]) + (32 * mem[(64 * uint16(s)) + 160]) + 32]), 
               (32 * uint16(s)) + 160,
               (32 * mem[(32 * uint16(s)) + 128]) + (32 * uint16(s)) + 192,
               (32 * mem[(64 * uint16(s)) + 160]) + (32 * mem[(32 * uint16(s)) + 128]) + (32 * uint16(s)) + 224
    mem[128 len 32 * uint16(s)] = code.data[22817 len 32 * uint16(s)]
    mem[(32 * uint16(s)) + 128] = uint16(s)
    mem[(32 * uint16(s)) + 160 len 32 * uint16(s)] = code.data[22817 len 32 * uint16(s)]
    mem[(64 * uint16(s)) + 160] = uint16(s)
    mem[(64 * uint16(s)) + 192 len 32 * uint16(s)] = code.data[22817 len 32 * uint16(s)]
    mem[(64 * uint16(s)) + (32 * uint16(s)) + 192] = uint16(s)
    mem[(64 * uint16(s)) + (32 * uint16(s)) + 224 len 32 * uint16(s)] = code.data[22817 len 32 * uint16(s)]
    idx = 0
    t = 0
    u = 0
    while uint16(idx) < numArtworks:
        require uint16(idx) < stor4.length
        mem[0] = stor('array', ('mask_shl', 13, 3, -3, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
        mem[32] = 6
        if address(artwork[uint32(stor4[uint16(idx) / 8].field_(32 * idx % 8) - 224)].field_256) != msg.sender:
            idx = idx + 1
            t = t
            u = u
            continue 
        require uint16(idx) < stor4.length
        require uint16(t) < uint16(s)
        mem[(32 * uint16(t)) + 128] = stor('array', ('mask_shl', 13, 3, -3, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
        require uint16(t) < mem[(32 * uint16(s)) + 128]
        mem[(32 * uint16(s)) + (32 * uint16(t)) + 160] = uint8(artwork[uint32(stor4[uint16(idx) / 8].field_(32 * idx % 8) - 224)].field_0)
        require uint16(t) < mem[(64 * uint16(s)) + 160]
        mem[(32 * uint16(t)) + (64 * uint16(s)) + 192] = uint32(artwork[uint32(stor4[uint16(idx) / 8].field_(32 * idx % 8) - 224)].field_8)
        mem[0] = stor('array', ('mask_shl', 13, 3, -3, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
        mem[32] = 6
        require uint16(t) < mem[(64 * uint16(s)) + (32 * uint16(s)) + 192]
        mem[(64 * uint16(s)) + (32 * uint16(s)) + (32 * uint16(t)) + 224] = uint128(artwork[uint32(stor4[uint16(idx) / 8].field_(32 * idx % 8) - 224)].field_40)
        idx = idx + 1
        t = t + 1
        u = stor('array', ('mask_shl', 13, 3, -3, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
        continue 
    mem[(uint16(s) << 7) + 224] = 128
    mem[(uint16(s) << 7) + 352] = uint16(s)
    mem[(uint16(s) << 7) + 384 len Mask(11, 5, s)] = mem[128 len Mask(11, 5, s)]
    mem[(uint16(s) << 7) + 256] = (32 * uint16(s)) + 160
    mem[(32 * uint16(s)) + (uint16(s) << 7) + 384] = mem[(32 * uint16(s)) + 128]
    mem[(32 * uint16(s)) + (uint16(s) << 7) + 416 len floor32(mem[(32 * uint16(s)) + 128])] = mem[(32 * uint16(s)) + 160 len floor32(mem[(32 * uint16(s)) + 128])]
    mem[(uint16(s) << 7) + 288] = (32 * mem[(32 * uint16(s)) + 128]) + (32 * uint16(s)) + 192
    mem[(32 * mem[(32 * uint16(s)) + 128]) + (32 * uint16(s)) + (uint16(s) << 7) + 416] = mem[(64 * uint16(s)) + 160]
    mem[(32 * mem[(32 * uint16(s)) + 128]) + (32 * uint16(s)) + (uint16(s) << 7) + 448 len floor32(mem[(64 * uint16(s)) + 160])] = mem[(64 * uint16(s)) + 192 len floor32(mem[(64 * uint16(s)) + 160])]
    mem[(uint16(s) << 7) + 320] = (32 * mem[(64 * uint16(s)) + 160]) + (32 * mem[(32 * uint16(s)) + 128]) + (32 * uint16(s)) + 224
    mem[(32 * mem[(64 * uint16(s)) + 160]) + (32 * mem[(32 * uint16(s)) + 128]) + (32 * uint16(s)) + (uint16(s) << 7) + 448] = mem[(64 * uint16(s)) + (32 * uint16(s)) + 192]
    mem[(32 * mem[(64 * uint16(s)) + 160]) + (32 * mem[(32 * uint16(s)) + 128]) + (32 * uint16(s)) + (uint16(s) << 7) + 480 len floor32(mem[(64 * uint16(s)) + (32 * uint16(s)) + 192])] = mem[(64 * uint16(s)) + (32 * uint16(s)) + 224 len floor32(mem[(64 * uint16(s)) + (32 * uint16(s)) + 192])]
    return Array(len=s << 240, data=mem[128 len Mask(11, 5, s)], mem[(uint16(s) << 7) + Mask(11, 5, s) + 384 len (32 * uint16(s)) - Mask(11, 5, s)], mem[(32 * uint16(s)) + 128], mem[(uint16(s) << 7) + (32 * uint16(s)) + 416 len (32 * mem[(64 * uint16(s)) + (32 * uint16(s)) + 192]) + (32 * mem[(64 * uint16(s)) + 160]) + (32 * mem[(32 * uint16(s)) + 128]) + 64]), 
           (32 * uint16(s)) + 160,
           (32 * mem[(32 * uint16(s)) + 128]) + (32 * uint16(s)) + 192,
           (32 * mem[(64 * uint16(s)) + 160]) + (32 * mem[(32 * uint16(s)) + 128]) + (32 * uint16(s)) + 224
}

function get30Artworks(uint16 arg1) {
    if uint16(arg1 + 30) > numArtworks:
        mem[96] = uint32(numArtworks - arg1)
        if not uint32(numArtworks - arg1):
            mem[(32 * uint32(numArtworks - arg1)) + 128] = uint32(numArtworks - arg1)
            mem[(64 * uint32(numArtworks - arg1)) + 160] = uint32(numArtworks - arg1)
            mem[(64 * uint32(numArtworks - arg1)) + (32 * uint32(numArtworks - arg1)) + 192] = uint32(numArtworks - arg1)
            mem[(uint32(numArtworks - arg1) << 7) + 224] = uint32(numArtworks - arg1)
            idx = arg1
            s = 0
            t = 0
            while uint16(idx) < numArtworks:
                require uint16(idx) < stor4.length
                require uint16(s) < mem[96]
                mem[(32 * uint16(s)) + 128] = stor('array', ('mask_shl', 13, 3, -3, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
                require uint16(s) < mem[(32 * uint32(numArtworks - arg1)) + 128]
                mem[(32 * uint32(numArtworks - arg1)) + (32 * uint16(s)) + 160] = uint8(artwork[uint32(stor4[uint16(idx) / 8].field_(32 * idx % 8) - 224)].field_0)
                require uint16(s) < mem[(64 * uint32(numArtworks - arg1)) + 160]
                mem[(32 * uint16(s)) + (64 * uint32(numArtworks - arg1)) + 192] = uint32(artwork[uint32(stor4[uint16(idx) / 8].field_(32 * idx % 8) - 224)].field_8)
                require uint16(s) < mem[(64 * uint32(numArtworks - arg1)) + (32 * uint32(numArtworks - arg1)) + 192]
                mem[(64 * uint32(numArtworks - arg1)) + (32 * uint32(numArtworks - arg1)) + (32 * uint16(s)) + 224] = uint128(artwork[uint32(stor4[uint16(idx) / 8].field_(32 * idx % 8) - 224)].field_40)
                mem[0] = stor('array', ('mask_shl', 13, 3, -3, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
                mem[32] = 6
                require uint16(s) < mem[(uint32(numArtworks - arg1) << 7) + 224]
                mem[(uint32(numArtworks - arg1) << 7) + (32 * uint16(s)) + 256] = address(artwork[uint32(stor4[uint16(idx) / 8].field_(32 * idx % 8) - 224)].field_256)
                idx = idx + 1
                s = s + 1
                t = stor('array', ('mask_shl', 13, 3, -3, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
                continue 
            mem[(uint32(numArtworks - arg1) << 7) + (32 * uint32(numArtworks - arg1)) + 256] = 160
            mem[(uint32(numArtworks - arg1) << 7) + (32 * uint32(numArtworks - arg1)) + 416] = mem[96]
            mem[(uint32(numArtworks - arg1) << 7) + (32 * uint32(numArtworks - arg1)) + 448 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[(uint32(numArtworks - arg1) << 7) + (32 * uint32(numArtworks - arg1)) + 288] = (32 * mem[96]) + 192
            mem[(32 * mem[96]) + (uint32(numArtworks - arg1) << 7) + (32 * uint32(numArtworks - arg1)) + 448] = mem[(32 * uint32(numArtworks - arg1)) + 128]
            mem[(32 * mem[96]) + (uint32(numArtworks - arg1) << 7) + (32 * uint32(numArtworks - arg1)) + 480 len floor32(mem[(32 * uint32(numArtworks - arg1)) + 128])] = mem[(32 * uint32(numArtworks - arg1)) + 160 len floor32(mem[(32 * uint32(numArtworks - arg1)) + 128])]
            mem[(uint32(numArtworks - arg1) << 7) + (32 * uint32(numArtworks - arg1)) + 320] = (32 * mem[(32 * uint32(numArtworks - arg1)) + 128]) + (32 * mem[96]) + 224
            mem[(32 * mem[(32 * uint32(numArtworks - arg1)) + 128]) + (32 * mem[96]) + (uint32(numArtworks - arg1) << 7) + (32 * uint32(numArtworks - arg1)) + 480] = mem[(64 * uint32(numArtworks - arg1)) + 160]
            mem[(32 * mem[(32 * uint32(numArtworks - arg1)) + 128]) + (32 * mem[96]) + (uint32(numArtworks - arg1) << 7) + (32 * uint32(numArtworks - arg1)) + 512 len floor32(mem[(64 * uint32(numArtworks - arg1)) + 160])] = mem[(64 * uint32(numArtworks - arg1)) + 192 len floor32(mem[(64 * uint32(numArtworks - arg1)) + 160])]
            mem[(uint32(numArtworks - arg1) << 7) + (32 * uint32(numArtworks - arg1)) + 352] = (32 * mem[(64 * uint32(numArtworks - arg1)) + 160]) + (32 * mem[(32 * uint32(numArtworks - arg1)) + 128]) + (32 * mem[96]) + 256
            mem[(32 * mem[(64 * uint32(numArtworks - arg1)) + 160]) + (32 * mem[(32 * uint32(numArtworks - arg1)) + 128]) + (32 * mem[96]) + (uint32(numArtworks - arg1) << 7) + (32 * uint32(numArtworks - arg1)) + 512] = mem[(64 * uint32(numArtworks - arg1)) + (32 * uint32(numArtworks - arg1)) + 192]
            mem[(32 * mem[(64 * uint32(numArtworks - arg1)) + 160]) + (32 * mem[(32 * uint32(numArtworks - arg1)) + 128]) + (32 * mem[96]) + (uint32(numArtworks - arg1) << 7) + (32 * uint32(numArtworks - arg1)) + 544 len floor32(mem[(64 * uint32(numArtworks - arg1)) + (32 * uint32(numArtworks - arg1)) + 192])] = mem[(64 * uint32(numArtworks - arg1)) + (32 * uint32(numArtworks - arg1)) + 224 len floor32(mem[(64 * uint32(numArtworks - arg1)) + (32 * uint32(numArtworks - arg1)) + 192])]
            mem[(uint32(numArtworks - arg1) << 7) + (32 * uint32(numArtworks - arg1)) + 384] = (32 * mem[(64 * uint32(numArtworks - arg1)) + (32 * uint32(numArtworks - arg1)) + 192]) + (32 * mem[(64 * uint32(numArtworks - arg1)) + 160]) + (32 * mem[(32 * uint32(numArtworks - arg1)) + 128]) + (32 * mem[96]) + 288
            mem[(32 * mem[(64 * uint32(numArtworks - arg1)) + (32 * uint32(numArtworks - arg1)) + 192]) + (32 * mem[(64 * uint32(numArtworks - arg1)) + 160]) + (32 * mem[(32 * uint32(numArtworks - arg1)) + 128]) + (32 * mem[96]) + (uint32(numArtworks - arg1) << 7) + (32 * uint32(numArtworks - arg1)) + 544] = mem[(uint32(numArtworks - arg1) << 7) + 224]
            _368 = mem[(uint32(numArtworks - arg1) << 7) + 224]
            mem[(32 * mem[(64 * uint32(numArtworks - arg1)) + (32 * uint32(numArtworks - arg1)) + 192]) + (32 * mem[(64 * uint32(numArtworks - arg1)) + 160]) + (32 * mem[(32 * uint32(numArtworks - arg1)) + 128]) + (32 * mem[96]) + (uint32(numArtworks - arg1) << 7) + (32 * uint32(numArtworks - arg1)) + 576 len floor32(mem[(uint32(numArtworks - arg1) << 7) + 224])] = mem[(uint32(numArtworks - arg1) << 7) + 256 len floor32(mem[(uint32(numArtworks - arg1) << 7) + 224])]
            return 160, 
                   mem[(uint32(numArtworks - arg1) << 7) + (32 * uint32(numArtworks - arg1)) + 288 len (32 * _368) + (32 * mem[(64 * uint32(numArtworks - arg1)) + (32 * uint32(numArtworks - arg1)) + 192]) + (32 * mem[(64 * uint32(numArtworks - arg1)) + 160]) + (32 * mem[(32 * uint32(numArtworks - arg1)) + 128]) + (32 * mem[96]) + 288]
        mem[128 len 32 * uint32(numArtworks - arg1)] = code.data[22817 len 32 * uint32(numArtworks - arg1)]
        mem[(32 * uint32(numArtworks - arg1)) + 128] = uint32(numArtworks - arg1)
        mem[(32 * uint32(numArtworks - arg1)) + 160 len 32 * uint32(numArtworks - arg1)] = code.data[22817 len 32 * uint32(numArtworks - arg1)]
        mem[(64 * uint32(numArtworks - arg1)) + 160] = uint32(numArtworks - arg1)
        mem[(64 * uint32(numArtworks - arg1)) + 192 len 32 * uint32(numArtworks - arg1)] = code.data[22817 len 32 * uint32(numArtworks - arg1)]
        mem[(64 * uint32(numArtworks - arg1)) + (32 * uint32(numArtworks - arg1)) + 192] = uint32(numArtworks - arg1)
        mem[(64 * uint32(numArtworks - arg1)) + (32 * uint32(numArtworks - arg1)) + 224 len 32 * uint32(numArtworks - arg1)] = code.data[22817 len 32 * uint32(numArtworks - arg1)]
        mem[(uint32(numArtworks - arg1) << 7) + 224] = uint32(numArtworks - arg1)
        mem[(uint32(numArtworks - arg1) << 7) + 256 len 32 * uint32(numArtworks - arg1)] = code.data[22817 len 32 * uint32(numArtworks - arg1)]
        idx = arg1
        s = 0
        t = 0
        while uint16(idx) < numArtworks:
            require uint16(idx) < stor4.length
            require uint16(s) < mem[96]
            mem[(32 * uint16(s)) + 128] = stor('array', ('mask_shl', 13, 3, -3, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
            require uint16(s) < mem[(32 * uint32(numArtworks - arg1)) + 128]
            mem[(32 * uint32(numArtworks - arg1)) + (32 * uint16(s)) + 160] = uint8(artwork[uint32(stor4[uint16(idx) / 8].field_(32 * idx % 8) - 224)].field_0)
            require uint16(s) < mem[(64 * uint32(numArtworks - arg1)) + 160]
            mem[(32 * uint16(s)) + (64 * uint32(numArtworks - arg1)) + 192] = uint32(artwork[uint32(stor4[uint16(idx) / 8].field_(32 * idx % 8) - 224)].field_8)
            require uint16(s) < mem[(64 * uint32(numArtworks - arg1)) + (32 * uint32(numArtworks - arg1)) + 192]
            mem[(64 * uint32(numArtworks - arg1)) + (32 * uint32(numArtworks - arg1)) + (32 * uint16(s)) + 224] = uint128(artwork[uint32(stor4[uint16(idx) / 8].field_(32 * idx % 8) - 224)].field_40)
            mem[0] = stor('array', ('mask_shl', 13, 3, -3, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
            mem[32] = 6
            require uint16(s) < mem[(uint32(numArtworks - arg1) << 7) + 224]
            mem[(uint32(numArtworks - arg1) << 7) + (32 * uint16(s)) + 256] = address(artwork[uint32(stor4[uint16(idx) / 8].field_(32 * idx % 8) - 224)].field_256)
            idx = idx + 1
            s = s + 1
            t = stor('array', ('mask_shl', 13, 3, -3, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
            continue 
        mem[(uint32(numArtworks - arg1) << 7) + (32 * uint32(numArtworks - arg1)) + 256] = 160
        mem[(uint32(numArtworks - arg1) << 7) + (32 * uint32(numArtworks - arg1)) + 416] = mem[96]
        mem[(uint32(numArtworks - arg1) << 7) + (32 * uint32(numArtworks - arg1)) + 448 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[(uint32(numArtworks - arg1) << 7) + (32 * uint32(numArtworks - arg1)) + 288] = (32 * mem[96]) + 192
        mem[(32 * mem[96]) + (uint32(numArtworks - arg1) << 7) + (32 * uint32(numArtworks - arg1)) + 448] = mem[(32 * uint32(numArtworks - arg1)) + 128]
        mem[(32 * mem[96]) + (uint32(numArtworks - arg1) << 7) + (32 * uint32(numArtworks - arg1)) + 480 len floor32(mem[(32 * uint32(numArtworks - arg1)) + 128])] = mem[(32 * uint32(numArtworks - arg1)) + 160 len floor32(mem[(32 * uint32(numArtworks - arg1)) + 128])]
        mem[(uint32(numArtworks - arg1) << 7) + (32 * uint32(numArtworks - arg1)) + 320] = (32 * mem[(32 * uint32(numArtworks - arg1)) + 128]) + (32 * mem[96]) + 224
        mem[(32 * mem[(32 * uint32(numArtworks - arg1)) + 128]) + (32 * mem[96]) + (uint32(numArtworks - arg1) << 7) + (32 * uint32(numArtworks - arg1)) + 480] = mem[(64 * uint32(numArtworks - arg1)) + 160]
        mem[(32 * mem[(32 * uint32(numArtworks - arg1)) + 128]) + (32 * mem[96]) + (uint32(numArtworks - arg1) << 7) + (32 * uint32(numArtworks - arg1)) + 512 len floor32(mem[(64 * uint32(numArtworks - arg1)) + 160])] = mem[(64 * uint32(numArtworks - arg1)) + 192 len floor32(mem[(64 * uint32(numArtworks - arg1)) + 160])]
        mem[(uint32(numArtworks - arg1) << 7) + (32 * uint32(numArtworks - arg1)) + 352] = (32 * mem[(64 * uint32(numArtworks - arg1)) + 160]) + (32 * mem[(32 * uint32(numArtworks - arg1)) + 128]) + (32 * mem[96]) + 256
        mem[(32 * mem[(64 * uint32(numArtworks - arg1)) + 160]) + (32 * mem[(32 * uint32(numArtworks - arg1)) + 128]) + (32 * mem[96]) + (uint32(numArtworks - arg1) << 7) + (32 * uint32(numArtworks - arg1)) + 512] = mem[(64 * uint32(numArtworks - arg1)) + (32 * uint32(numArtworks - arg1)) + 192]
        mem[(32 * mem[(64 * uint32(numArtworks - arg1)) + 160]) + (32 * mem[(32 * uint32(numArtworks - arg1)) + 128]) + (32 * mem[96]) + (uint32(numArtworks - arg1) << 7) + (32 * uint32(numArtworks - arg1)) + 544 len floor32(mem[(64 * uint32(numArtworks - arg1)) + (32 * uint32(numArtworks - arg1)) + 192])] = mem[(64 * uint32(numArtworks - arg1)) + (32 * uint32(numArtworks - arg1)) + 224 len floor32(mem[(64 * uint32(numArtworks - arg1)) + (32 * uint32(numArtworks - arg1)) + 192])]
        mem[(uint32(numArtworks - arg1) << 7) + (32 * uint32(numArtworks - arg1)) + 384] = (32 * mem[(64 * uint32(numArtworks - arg1)) + (32 * uint32(numArtworks - arg1)) + 192]) + (32 * mem[(64 * uint32(numArtworks - arg1)) + 160]) + (32 * mem[(32 * uint32(numArtworks - arg1)) + 128]) + (32 * mem[96]) + 288
        mem[(32 * mem[(64 * uint32(numArtworks - arg1)) + (32 * uint32(numArtworks - arg1)) + 192]) + (32 * mem[(64 * uint32(numArtworks - arg1)) + 160]) + (32 * mem[(32 * uint32(numArtworks - arg1)) + 128]) + (32 * mem[96]) + (uint32(numArtworks - arg1) << 7) + (32 * uint32(numArtworks - arg1)) + 544] = mem[(uint32(numArtworks - arg1) << 7) + 224]
        _371 = mem[(uint32(numArtworks - arg1) << 7) + 224]
        mem[(32 * mem[(64 * uint32(numArtworks - arg1)) + (32 * uint32(numArtworks - arg1)) + 192]) + (32 * mem[(64 * uint32(numArtworks - arg1)) + 160]) + (32 * mem[(32 * uint32(numArtworks - arg1)) + 128]) + (32 * mem[96]) + (uint32(numArtworks - arg1) << 7) + (32 * uint32(numArtworks - arg1)) + 576 len floor32(mem[(uint32(numArtworks - arg1) << 7) + 224])] = mem[(uint32(numArtworks - arg1) << 7) + 256 len floor32(mem[(uint32(numArtworks - arg1) << 7) + 224])]
        return 160, 
               mem[(uint32(numArtworks - arg1) << 7) + (32 * uint32(numArtworks - arg1)) + 288 len (32 * _371) + (32 * mem[(64 * uint32(numArtworks - arg1)) + (32 * uint32(numArtworks - arg1)) + 192]) + (32 * mem[(64 * uint32(numArtworks - arg1)) + 160]) + (32 * mem[(32 * uint32(numArtworks - arg1)) + 128]) + (32 * mem[96]) + 288]
    mem[96] = uint32(uint16(arg1 + 30) - arg1)
    if not uint32(uint16(arg1 + 30) - arg1):
        mem[(32 * uint32(uint16(arg1 + 30) - arg1)) + 128] = uint32(uint16(arg1 + 30) - arg1)
        mem[(64 * uint32(uint16(arg1 + 30) - arg1)) + 160] = uint32(uint16(arg1 + 30) - arg1)
        mem[(64 * uint32(uint16(arg1 + 30) - arg1)) + (32 * uint32(uint16(arg1 + 30) - arg1)) + 192] = uint32(uint16(arg1 + 30) - arg1)
        mem[(uint32(uint16(arg1 + 30) - arg1) << 7) + 224] = uint32(uint16(arg1 + 30) - arg1)
        idx = arg1
        s = 0
        t = 0
        while uint16(idx) < uint16(arg1 + 30):
            require uint16(idx) < stor4.length
            require uint16(s) < mem[96]
            mem[(32 * uint16(s)) + 128] = stor('array', ('mask_shl', 13, 3, -3, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
            require uint16(s) < mem[(32 * uint32(uint16(arg1 + 30) - arg1)) + 128]
            mem[(32 * uint32(uint16(arg1 + 30) - arg1)) + (32 * uint16(s)) + 160] = uint8(artwork[uint32(stor4[uint16(idx) / 8].field_(32 * idx % 8) - 224)].field_0)
            require uint16(s) < mem[(64 * uint32(uint16(arg1 + 30) - arg1)) + 160]
            mem[(32 * uint16(s)) + (64 * uint32(uint16(arg1 + 30) - arg1)) + 192] = uint32(artwork[uint32(stor4[uint16(idx) / 8].field_(32 * idx % 8) - 224)].field_8)
            require uint16(s) < mem[(64 * uint32(uint16(arg1 + 30) - arg1)) + (32 * uint32(uint16(arg1 + 30) - arg1)) + 192]
            mem[(64 * uint32(uint16(arg1 + 30) - arg1)) + (32 * uint32(uint16(arg1 + 30) - arg1)) + (32 * uint16(s)) + 224] = uint128(artwork[uint32(stor4[uint16(idx) / 8].field_(32 * idx % 8) - 224)].field_40)
            mem[0] = stor('array', ('mask_shl', 13, 3, -3, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
            mem[32] = 6
            require uint16(s) < mem[(uint32(uint16(arg1 + 30) - arg1) << 7) + 224]
            mem[(uint32(uint16(arg1 + 30) - arg1) << 7) + (32 * uint16(s)) + 256] = address(artwork[uint32(stor4[uint16(idx) / 8].field_(32 * idx % 8) - 224)].field_256)
            idx = idx + 1
            s = s + 1
            t = stor('array', ('mask_shl', 13, 3, -3, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
            continue 
        mem[(uint32(uint16(arg1 + 30) - arg1) << 7) + (32 * uint32(uint16(arg1 + 30) - arg1)) + 256] = 160
        mem[(uint32(uint16(arg1 + 30) - arg1) << 7) + (32 * uint32(uint16(arg1 + 30) - arg1)) + 416] = mem[96]
        mem[(uint32(uint16(arg1 + 30) - arg1) << 7) + (32 * uint32(uint16(arg1 + 30) - arg1)) + 448 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[(uint32(uint16(arg1 + 30) - arg1) << 7) + (32 * uint32(uint16(arg1 + 30) - arg1)) + 288] = (32 * mem[96]) + 192
        mem[(32 * mem[96]) + (uint32(uint16(arg1 + 30) - arg1) << 7) + (32 * uint32(uint16(arg1 + 30) - arg1)) + 448] = mem[(32 * uint32(uint16(arg1 + 30) - arg1)) + 128]
        mem[(32 * mem[96]) + (uint32(uint16(arg1 + 30) - arg1) << 7) + (32 * uint32(uint16(arg1 + 30) - arg1)) + 480 len floor32(mem[(32 * uint32(uint16(arg1 + 30) - arg1)) + 128])] = mem[(32 * uint32(uint16(arg1 + 30) - arg1)) + 160 len floor32(mem[(32 * uint32(uint16(arg1 + 30) - arg1)) + 128])]
        mem[(uint32(uint16(arg1 + 30) - arg1) << 7) + (32 * uint32(uint16(arg1 + 30) - arg1)) + 320] = (32 * mem[(32 * uint32(uint16(arg1 + 30) - arg1)) + 128]) + (32 * mem[96]) + 224
        mem[(32 * mem[(32 * uint32(uint16(arg1 + 30) - arg1)) + 128]) + (32 * mem[96]) + (uint32(uint16(arg1 + 30) - arg1) << 7) + (32 * uint32(uint16(arg1 + 30) - arg1)) + 480] = mem[(64 * uint32(uint16(arg1 + 30) - arg1)) + 160]
        _298 = mem[(64 * uint32(uint16(arg1 + 30) - arg1)) + 160]
        mem[(32 * mem[(32 * uint32(uint16(arg1 + 30) - arg1)) + 128]) + (32 * mem[96]) + (uint32(uint16(arg1 + 30) - arg1) << 7) + (32 * uint32(uint16(arg1 + 30) - arg1)) + 512 len floor32(mem[(64 * uint32(uint16(arg1 + 30) - arg1)) + 160])] = mem[(64 * uint32(uint16(arg1 + 30) - arg1)) + 192 len floor32(mem[(64 * uint32(uint16(arg1 + 30) - arg1)) + 160])]
        mem[(uint32(uint16(arg1 + 30) - arg1) << 7) + (32 * uint32(uint16(arg1 + 30) - arg1)) + 352] = (32 * _298) + (32 * mem[(32 * uint32(uint16(arg1 + 30) - arg1)) + 128]) + (32 * mem[96]) + 256
        mem[(32 * _298) + (32 * mem[(32 * uint32(uint16(arg1 + 30) - arg1)) + 128]) + (32 * mem[96]) + (uint32(uint16(arg1 + 30) - arg1) << 7) + (32 * uint32(uint16(arg1 + 30) - arg1)) + 512] = mem[(64 * uint32(uint16(arg1 + 30) - arg1)) + (32 * uint32(uint16(arg1 + 30) - arg1)) + 192]
        _342 = mem[(64 * uint32(uint16(arg1 + 30) - arg1)) + (32 * uint32(uint16(arg1 + 30) - arg1)) + 192]
        mem[(32 * _298) + (32 * mem[(32 * uint32(uint16(arg1 + 30) - arg1)) + 128]) + (32 * mem[96]) + (uint32(uint16(arg1 + 30) - arg1) << 7) + (32 * uint32(uint16(arg1 + 30) - arg1)) + 544 len floor32(mem[(64 * uint32(uint16(arg1 + 30) - arg1)) + (32 * uint32(uint16(arg1 + 30) - arg1)) + 192])] = mem[(64 * uint32(uint16(arg1 + 30) - arg1)) + (32 * uint32(uint16(arg1 + 30) - arg1)) + 224 len floor32(mem[(64 * uint32(uint16(arg1 + 30) - arg1)) + (32 * uint32(uint16(arg1 + 30) - arg1)) + 192])]
        mem[(uint32(uint16(arg1 + 30) - arg1) << 7) + (32 * uint32(uint16(arg1 + 30) - arg1)) + 384] = (32 * _342) + (32 * _298) + (32 * mem[(32 * uint32(uint16(arg1 + 30) - arg1)) + 128]) + (32 * mem[96]) + 288
        mem[(32 * _342) + (32 * _298) + (32 * mem[(32 * uint32(uint16(arg1 + 30) - arg1)) + 128]) + (32 * mem[96]) + (uint32(uint16(arg1 + 30) - arg1) << 7) + (32 * uint32(uint16(arg1 + 30) - arg1)) + 544] = mem[(uint32(uint16(arg1 + 30) - arg1) << 7) + 224]
        _374 = mem[(uint32(uint16(arg1 + 30) - arg1) << 7) + 224]
        mem[(32 * _342) + (32 * _298) + (32 * mem[(32 * uint32(uint16(arg1 + 30) - arg1)) + 128]) + (32 * mem[96]) + (uint32(uint16(arg1 + 30) - arg1) << 7) + (32 * uint32(uint16(arg1 + 30) - arg1)) + 576 len floor32(mem[(uint32(uint16(arg1 + 30) - arg1) << 7) + 224])] = mem[(uint32(uint16(arg1 + 30) - arg1) << 7) + 256 len floor32(mem[(uint32(uint16(arg1 + 30) - arg1) << 7) + 224])]
        return 160, 
               mem[(uint32(uint16(arg1 + 30) - arg1) << 7) + (32 * uint32(uint16(arg1 + 30) - arg1)) + 288 len (32 * _374) + (32 * _342) + (32 * _298) + (32 * mem[(32 * uint32(uint16(arg1 + 30) - arg1)) + 128]) + (32 * mem[96]) + 288]
    mem[128 len 32 * uint32(uint16(arg1 + 30) - arg1)] = code.data[22817 len 32 * uint32(uint16(arg1 + 30) - arg1)]
    mem[(32 * uint32(uint16(arg1 + 30) - arg1)) + 128] = uint32(uint16(arg1 + 30) - arg1)
    mem[(32 * uint32(uint16(arg1 + 30) - arg1)) + 160 len 32 * uint32(uint16(arg1 + 30) - arg1)] = code.data[22817 len 32 * uint32(uint16(arg1 + 30) - arg1)]
    mem[(64 * uint32(uint16(arg1 + 30) - arg1)) + 160] = uint32(uint16(arg1 + 30) - arg1)
    mem[(64 * uint32(uint16(arg1 + 30) - arg1)) + 192 len 32 * uint32(uint16(arg1 + 30) - arg1)] = code.data[22817 len 32 * uint32(uint16(arg1 + 30) - arg1)]
    mem[(64 * uint32(uint16(arg1 + 30) - arg1)) + (32 * uint32(uint16(arg1 + 30) - arg1)) + 192] = uint32(uint16(arg1 + 30) - arg1)
    mem[(64 * uint32(uint16(arg1 + 30) - arg1)) + (32 * uint32(uint16(arg1 + 30) - arg1)) + 224 len 32 * uint32(uint16(arg1 + 30) - arg1)] = code.data[22817 len 32 * uint32(uint16(arg1 + 30) - arg1)]
    mem[(uint32(uint16(arg1 + 30) - arg1) << 7) + 224] = uint32(uint16(arg1 + 30) - arg1)
    mem[(uint32(uint16(arg1 + 30) - arg1) << 7) + 256 len 32 * uint32(uint16(arg1 + 30) - arg1)] = code.data[22817 len 32 * uint32(uint16(arg1 + 30) - arg1)]
    idx = arg1
    s = 0
    t = 0
    while uint16(idx) < uint16(arg1 + 30):
        require uint16(idx) < stor4.length
        require uint16(s) < mem[96]
        mem[(32 * uint16(s)) + 128] = stor('array', ('mask_shl', 13, 3, -3, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
        require uint16(s) < mem[(32 * uint32(uint16(arg1 + 30) - arg1)) + 128]
        mem[(32 * uint32(uint16(arg1 + 30) - arg1)) + (32 * uint16(s)) + 160] = uint8(artwork[uint32(stor4[uint16(idx) / 8].field_(32 * idx % 8) - 224)].field_0)
        require uint16(s) < mem[(64 * uint32(uint16(arg1 + 30) - arg1)) + 160]
        mem[(32 * uint16(s)) + (64 * uint32(uint16(arg1 + 30) - arg1)) + 192] = uint32(artwork[uint32(stor4[uint16(idx) / 8].field_(32 * idx % 8) - 224)].field_8)
        require uint16(s) < mem[(64 * uint32(uint16(arg1 + 30) - arg1)) + (32 * uint32(uint16(arg1 + 30) - arg1)) + 192]
        mem[(64 * uint32(uint16(arg1 + 30) - arg1)) + (32 * uint32(uint16(arg1 + 30) - arg1)) + (32 * uint16(s)) + 224] = uint128(artwork[uint32(stor4[uint16(idx) / 8].field_(32 * idx % 8) - 224)].field_40)
        mem[0] = stor('array', ('mask_shl', 13, 3, -3, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
        mem[32] = 6
        require uint16(s) < mem[(uint32(uint16(arg1 + 30) - arg1) << 7) + 224]
        mem[(uint32(uint16(arg1 + 30) - arg1) << 7) + (32 * uint16(s)) + 256] = address(artwork[uint32(stor4[uint16(idx) / 8].field_(32 * idx % 8) - 224)].field_256)
        idx = idx + 1
        s = s + 1
        t = stor('array', ('mask_shl', 13, 3, -3, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
        continue 
    mem[(uint32(uint16(arg1 + 30) - arg1) << 7) + (32 * uint32(uint16(arg1 + 30) - arg1)) + 256] = 160
    mem[(uint32(uint16(arg1 + 30) - arg1) << 7) + (32 * uint32(uint16(arg1 + 30) - arg1)) + 416] = mem[96]
    mem[(uint32(uint16(arg1 + 30) - arg1) << 7) + (32 * uint32(uint16(arg1 + 30) - arg1)) + 448 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[(uint32(uint16(arg1 + 30) - arg1) << 7) + (32 * uint32(uint16(arg1 + 30) - arg1)) + 288] = (32 * mem[96]) + 192
    mem[(32 * mem[96]) + (uint32(uint16(arg1 + 30) - arg1) << 7) + (32 * uint32(uint16(arg1 + 30) - arg1)) + 448] = mem[(32 * uint32(uint16(arg1 + 30) - arg1)) + 128]
    mem[(32 * mem[96]) + (uint32(uint16(arg1 + 30) - arg1) << 7) + (32 * uint32(uint16(arg1 + 30) - arg1)) + 480 len floor32(mem[(32 * uint32(uint16(arg1 + 30) - arg1)) + 128])] = mem[(32 * uint32(uint16(arg1 + 30) - arg1)) + 160 len floor32(mem[(32 * uint32(uint16(arg1 + 30) - arg1)) + 128])]
    mem[(uint32(uint16(arg1 + 30) - arg1) << 7) + (32 * uint32(uint16(arg1 + 30) - arg1)) + 320] = (32 * mem[(32 * uint32(uint16(arg1 + 30) - arg1)) + 128]) + (32 * mem[96]) + 224
    mem[(32 * mem[(32 * uint32(uint16(arg1 + 30) - arg1)) + 128]) + (32 * mem[96]) + (uint32(uint16(arg1 + 30) - arg1) << 7) + (32 * uint32(uint16(arg1 + 30) - arg1)) + 480] = mem[(64 * uint32(uint16(arg1 + 30) - arg1)) + 160]
    _301 = mem[(64 * uint32(uint16(arg1 + 30) - arg1)) + 160]
    mem[(32 * mem[(32 * uint32(uint16(arg1 + 30) - arg1)) + 128]) + (32 * mem[96]) + (uint32(uint16(arg1 + 30) - arg1) << 7) + (32 * uint32(uint16(arg1 + 30) - arg1)) + 512 len floor32(mem[(64 * uint32(uint16(arg1 + 30) - arg1)) + 160])] = mem[(64 * uint32(uint16(arg1 + 30) - arg1)) + 192 len floor32(mem[(64 * uint32(uint16(arg1 + 30) - arg1)) + 160])]
    mem[(uint32(uint16(arg1 + 30) - arg1) << 7) + (32 * uint32(uint16(arg1 + 30) - arg1)) + 352] = (32 * _301) + (32 * mem[(32 * uint32(uint16(arg1 + 30) - arg1)) + 128]) + (32 * mem[96]) + 256
    mem[(32 * _301) + (32 * mem[(32 * uint32(uint16(arg1 + 30) - arg1)) + 128]) + (32 * mem[96]) + (uint32(uint16(arg1 + 30) - arg1) << 7) + (32 * uint32(uint16(arg1 + 30) - arg1)) + 512] = mem[(64 * uint32(uint16(arg1 + 30) - arg1)) + (32 * uint32(uint16(arg1 + 30) - arg1)) + 192]
    _345 = mem[(64 * uint32(uint16(arg1 + 30) - arg1)) + (32 * uint32(uint16(arg1 + 30) - arg1)) + 192]
    mem[(32 * _301) + (32 * mem[(32 * uint32(uint16(arg1 + 30) - arg1)) + 128]) + (32 * mem[96]) + (uint32(uint16(arg1 + 30) - arg1) << 7) + (32 * uint32(uint16(arg1 + 30) - arg1)) + 544 len floor32(mem[(64 * uint32(uint16(arg1 + 30) - arg1)) + (32 * uint32(uint16(arg1 + 30) - arg1)) + 192])] = mem[(64 * uint32(uint16(arg1 + 30) - arg1)) + (32 * uint32(uint16(arg1 + 30) - arg1)) + 224 len floor32(mem[(64 * uint32(uint16(arg1 + 30) - arg1)) + (32 * uint32(uint16(arg1 + 30) - arg1)) + 192])]
    mem[(uint32(uint16(arg1 + 30) - arg1) << 7) + (32 * uint32(uint16(arg1 + 30) - arg1)) + 384] = (32 * _345) + (32 * _301) + (32 * mem[(32 * uint32(uint16(arg1 + 30) - arg1)) + 128]) + (32 * mem[96]) + 288
    mem[(32 * _345) + (32 * _301) + (32 * mem[(32 * uint32(uint16(arg1 + 30) - arg1)) + 128]) + (32 * mem[96]) + (uint32(uint16(arg1 + 30) - arg1) << 7) + (32 * uint32(uint16(arg1 + 30) - arg1)) + 544] = mem[(uint32(uint16(arg1 + 30) - arg1) << 7) + 224]
    _377 = mem[(uint32(uint16(arg1 + 30) - arg1) << 7) + 224]
    mem[(32 * _345) + (32 * _301) + (32 * mem[(32 * uint32(uint16(arg1 + 30) - arg1)) + 128]) + (32 * mem[96]) + (uint32(uint16(arg1 + 30) - arg1) << 7) + (32 * uint32(uint16(arg1 + 30) - arg1)) + 576 len floor32(mem[(uint32(uint16(arg1 + 30) - arg1) << 7) + 224])] = mem[(uint32(uint16(arg1 + 30) - arg1) << 7) + 256 len floor32(mem[(uint32(uint16(arg1 + 30) - arg1) << 7) + 224])]
    return 160, 
           mem[(uint32(uint16(arg1 + 30) - arg1) << 7) + (32 * uint32(uint16(arg1 + 30) - arg1)) + 288 len (32 * _377) + (32 * _345) + (32 * _301) + (32 * mem[(32 * uint32(uint16(arg1 + 30) - arg1)) + 128]) + (32 * mem[96]) + 288]
}

function tokenCallback(address arg1, uint256 arg2, bytes arg3) {
    mem[96] = arg3.length
    mem[128 len arg3.length] = arg3[all]
    require msg.sender == likeAddress
    mem[ceil32(arg3.length) + 160 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    mem[ceil32(arg3.length) + 128] = Mask(251, 0, arg3.length + 31) >> 5
    mem[(2 * ceil32(arg3.length)) + 160] = Mask(251, 0, arg3.length + 31) >> 5
    if not Mask(251, 0, arg3.length + 31):
        idx = 0
        while uint16(idx) < Mask(251, 0, arg3.length + 31) >> 5:
            require uint16(idx) < mem[ceil32(arg3.length) + 128]
            require uint16(idx) < mem[(2 * ceil32(arg3.length)) + 160]
            mem[(2 * ceil32(arg3.length)) + (32 * uint16(idx)) + 192] = mem[(32 * uint16(idx)) + ceil32(arg3.length) + 191 len 1]
            idx = idx + 1
            continue 
        _402 = mem[(2 * ceil32(arg3.length)) + 160]
        require uint32(mem[(2 * ceil32(arg3.length)) + 160] + numArtworks) < maxArtworks
        idx = 0
        s = 0
        while uint16(idx) < mem[(2 * ceil32(arg3.length)) + 188 len 4]:
            require uint16(idx) < mem[(2 * ceil32(arg3.length)) + 160]
            require mem[(2 * ceil32(arg3.length)) + (32 * uint16(idx)) + 223 len 1] < stor8.length
            require uint16(idx) < mem[(2 * ceil32(arg3.length)) + 160]
            _600 = mem[(32 * uint16(idx)) + (2 * ceil32(arg3.length)) + 192]
            require mem[(32 * uint16(idx)) + (2 * ceil32(arg3.length)) + 223 len 1] < stor8.length
            mem[0] = 8
            _605 = sha3(8)
            idx = idx + 1
            s = stor('array', ('mask_shl', 7, 1, -1, ('mem', ('range', ('add', 192, ('mask_shl', 16, 0, 5, ('var', 0)), ('mask_shl', 250, 5, 1, ('add', 31, ('cd', ('add', 4, ('param', 'arg3')))))), 32))), ('name', 'stor8', 8))[uint8(mem[(32 * uint16(idx)) + (2 * ceil32(arg3.length)) + 192])] + s
            continue 
        require arg2 >= stor((Mask(7, 1, _600) >> 1) + _605)[uint8(_600)] * None
        mem[(4 * ceil32(arg3.length)) + 192] = mem[(2 * ceil32(arg3.length)) + 188 len 4]
        mem[64] = (4 * ceil32(arg3.length)) + (32 * uint32(mem[(2 * ceil32(arg3.length)) + 160])) + 224
        if not mem[(2 * ceil32(arg3.length)) + 188 len 4]:
            idx = 0
            s = 0
            while uint16(idx) < uint32(_402):
                if numArtworks < stor4.length:
                    uint256(stor4[stor10.field_11 % 536870912].field_0) = lastId * 256^(4 * stor10.field_8 % 8) or !(test266151307() * 256^(4 * stor10.field_8 % 8)) and uint256(stor4[stor10.field_11 % 536870912].field_0)
                    require uint16(idx) < mem[(2 * ceil32(arg3.length)) + 160]
                    _832 = mem[(32 * uint16(idx)) + (2 * ceil32(arg3.length)) + 192]
                    mem[0] = mem[(32 * uint16(idx)) + (2 * ceil32(arg3.length)) + 223 len 1]
                    stor7[address(arg1)][mem[(32 * uint16(idx)) + (2 * ceil32(arg3.length)) + 192] << 248] = uint32(stor7[address(arg1)][mem[(32 * uint16(idx)) + (2 * ceil32(arg3.length)) + 192] << 248] + 1)
                    require uint16(idx) < mem[(4 * ceil32(arg3.length)) + 192]
                    mem[(4 * ceil32(arg3.length)) + (32 * uint16(idx)) + 224] = uint32(stor7[address(arg1)][mem[(32 * uint16(idx)) + (2 * ceil32(arg3.length)) + 192] << 248] + 1)
                    _863 = mem[64]
                    mem[64] = mem[64] + 128
                    require uint16(idx) < mem[(2 * ceil32(arg3.length)) + 160]
                    mem[_863] = mem[(2 * ceil32(arg3.length)) + (32 * uint16(idx)) + 223 len 1]
                    mem[32] = sha3(address(arg1), 7)
                    mem[_863 + 32] = stor7[address(arg1)][_832 << 248]
                    require uint8(_832) < stor9.length
                    mem[_863 + 64] = stor('array', ('mask_shl', 7, 1, -1, ('var', '_832')), ('name', 'stor9', 9))[uint8(_832)]
                    mem[_863 + 96] = arg1
                    mem[0] = lastId
                    mem[32] = 6
                    uint8(artwork[uint32(stor5.field_0)].field_0) = mem[_863 + 31 len 1]
                    uint32(artwork[uint32(stor5.field_0)].field_0) = stor7[address(arg1)][_832 << 248]
                    uint32(artwork[uint32(stor5.field_0)].field_8) = 0
                    uint128(artwork[uint32(stor5.field_0)].field_40) = stor('array', ('mask_shl', 7, 1, -1, ('var', '_832')), ('name', 'stor9', 9))[uint8(_832)]
                    address(artwork[uint32(stor5.field_0)].field_256) = arg1
                    numArtworks = uint32(numArtworks + 1)
                    lastId = uint32(lastId + 1)
                    require uint8(_832) < stor11.length
                    mem[0] = 11
                    uint256(stor11[uint8(_832) / 8].field_0) = uint256(stor11[uint8(_832) / 8].field_0) and !(test266151307() * 256^(4 * _832 % 8)) or 256^(4 * _832 % 8) * uint32(stor('array', ('mask_shl', 5, 3, -3, ('var', '_832')), ('name', 'stor11', 11))[uint8(_832)] + 1)
                    idx = idx + 1
                    s = _832
                    continue 
                stor4.length++
                uint256(stor4[Mask(253, 0, stor4.length.field_3)].field_0) = !(test266151307() * 256^(4 * stor4.length % 8)) and uint256(stor4[Mask(253, 0, stor4.length.field_3)].field_0) or 256^(4 * stor4.length % 8) * lastId
                require uint16(idx) < mem[(2 * ceil32(arg3.length)) + 160]
                _808 = mem[(32 * uint16(idx)) + (2 * ceil32(arg3.length)) + 192]
                mem[0] = mem[(32 * uint16(idx)) + (2 * ceil32(arg3.length)) + 223 len 1]
                stor7[address(arg1)][mem[(32 * uint16(idx)) + (2 * ceil32(arg3.length)) + 192] << 248] = uint32(stor7[address(arg1)][mem[(32 * uint16(idx)) + (2 * ceil32(arg3.length)) + 192] << 248] + 1)
                require uint16(idx) < mem[(4 * ceil32(arg3.length)) + 192]
                mem[(4 * ceil32(arg3.length)) + (32 * uint16(idx)) + 224] = uint32(stor7[address(arg1)][mem[(32 * uint16(idx)) + (2 * ceil32(arg3.length)) + 192] << 248] + 1)
                _830 = mem[64]
                mem[64] = mem[64] + 128
                require uint16(idx) < mem[(2 * ceil32(arg3.length)) + 160]
                mem[_830] = mem[(2 * ceil32(arg3.length)) + (32 * uint16(idx)) + 223 len 1]
                mem[32] = sha3(address(arg1), 7)
                mem[_830 + 32] = stor7[address(arg1)][_808 << 248]
                require uint8(_808) < stor9.length
                mem[_830 + 64] = stor('array', ('mask_shl', 7, 1, -1, ('var', '_808')), ('name', 'stor9', 9))[uint8(_808)]
                mem[_830 + 96] = arg1
                mem[0] = lastId
                mem[32] = 6
                uint8(artwork[uint32(stor5.field_0)].field_0) = mem[_830 + 31 len 1]
                uint32(artwork[uint32(stor5.field_0)].field_0) = stor7[address(arg1)][_808 << 248]
                uint32(artwork[uint32(stor5.field_0)].field_8) = 0
                uint128(artwork[uint32(stor5.field_0)].field_40) = stor('array', ('mask_shl', 7, 1, -1, ('var', '_808')), ('name', 'stor9', 9))[uint8(_808)]
                address(artwork[uint32(stor5.field_0)].field_256) = arg1
                numArtworks = uint32(numArtworks + 1)
                lastId = uint32(lastId + 1)
                require uint8(_808) < stor11.length
                mem[0] = 11
                uint256(stor11[uint8(_808) / 8].field_0) = uint256(stor11[uint8(_808) / 8].field_0) and !(test266151307() * 256^(4 * _808 % 8)) or 256^(4 * _808 % 8) * uint32(stor('array', ('mask_shl', 5, 3, -3, ('var', '_808')), ('name', 'stor11', 11))[uint8(_808)] + 1)
                idx = idx + 1
                s = _808
                continue 
            mem[mem[64]] = arg1
            mem[mem[64] + 32] = uint32(lastId - _402)
            mem[mem[64] + 64] = 128
            mem[mem[64] + 128] = mem[(2 * ceil32(arg3.length)) + 160]
            _778 = mem[(2 * ceil32(arg3.length)) + 160]
            mem[mem[64] + 160 len floor32(mem[(2 * ceil32(arg3.length)) + 160])] = mem[(2 * ceil32(arg3.length)) + 192 len floor32(mem[(2 * ceil32(arg3.length)) + 160])]
            mem[mem[64] + 96] = (32 * _778) + 160
            mem[(32 * _778) + mem[64] + 160] = mem[(4 * ceil32(arg3.length)) + 192]
            _949 = mem[(4 * ceil32(arg3.length)) + 192]
            mem[(32 * _778) + mem[64] + 192 len floor32(mem[(4 * ceil32(arg3.length)) + 192])] = mem[(4 * ceil32(arg3.length)) + 224 len floor32(mem[(4 * ceil32(arg3.length)) + 192])]
            emit newPurchase(address arg1, uint32 arg2, uint8[] arg3, uint32[] arg4):
                             address(arg1),
                             lastId - _402 << 224,
                             128,
                             (32 * _778) + 160,
                             mem[mem[64] + 128 len (32 * _949) + (32 * _778) + 64],
        else:
            mem[(4 * ceil32(arg3.length)) + 224 len 32 * uint32(mem[(2 * ceil32(arg3.length)) + 160])] = code.data[22817 len 32 * uint32(mem[(2 * ceil32(arg3.length)) + 160])]
            idx = 0
            s = 0
            while uint16(idx) < uint32(_402):
                if numArtworks < stor4.length:
                    uint256(stor4[stor10.field_11 % 536870912].field_0) = lastId * 256^(4 * stor10.field_8 % 8) or !(test266151307() * 256^(4 * stor10.field_8 % 8)) and uint256(stor4[stor10.field_11 % 536870912].field_0)
                    require uint16(idx) < mem[(2 * ceil32(arg3.length)) + 160]
                    _840 = mem[(32 * uint16(idx)) + (2 * ceil32(arg3.length)) + 192]
                    mem[0] = mem[(32 * uint16(idx)) + (2 * ceil32(arg3.length)) + 223 len 1]
                    stor7[address(arg1)][mem[(32 * uint16(idx)) + (2 * ceil32(arg3.length)) + 192] << 248] = uint32(stor7[address(arg1)][mem[(32 * uint16(idx)) + (2 * ceil32(arg3.length)) + 192] << 248] + 1)
                    require uint16(idx) < mem[(4 * ceil32(arg3.length)) + 192]
                    mem[(4 * ceil32(arg3.length)) + (32 * uint16(idx)) + 224] = uint32(stor7[address(arg1)][mem[(32 * uint16(idx)) + (2 * ceil32(arg3.length)) + 192] << 248] + 1)
                    _868 = mem[64]
                    mem[64] = mem[64] + 128
                    require uint16(idx) < mem[(2 * ceil32(arg3.length)) + 160]
                    mem[_868] = mem[(2 * ceil32(arg3.length)) + (32 * uint16(idx)) + 223 len 1]
                    mem[32] = sha3(address(arg1), 7)
                    mem[_868 + 32] = stor7[address(arg1)][_840 << 248]
                    require uint8(_840) < stor9.length
                    mem[_868 + 64] = stor('array', ('mask_shl', 7, 1, -1, ('var', '_840')), ('name', 'stor9', 9))[uint8(_840)]
                    mem[_868 + 96] = arg1
                    mem[0] = lastId
                    mem[32] = 6
                    uint8(artwork[uint32(stor5.field_0)].field_0) = mem[_868 + 31 len 1]
                    uint32(artwork[uint32(stor5.field_0)].field_0) = stor7[address(arg1)][_840 << 248]
                    uint32(artwork[uint32(stor5.field_0)].field_8) = 0
                    uint128(artwork[uint32(stor5.field_0)].field_40) = stor('array', ('mask_shl', 7, 1, -1, ('var', '_840')), ('name', 'stor9', 9))[uint8(_840)]
                    address(artwork[uint32(stor5.field_0)].field_256) = arg1
                    numArtworks = uint32(numArtworks + 1)
                    lastId = uint32(lastId + 1)
                    require uint8(_840) < stor11.length
                    mem[0] = 11
                    uint256(stor11[uint8(_840) / 8].field_0) = uint256(stor11[uint8(_840) / 8].field_0) and !(test266151307() * 256^(4 * _840 % 8)) or 256^(4 * _840 % 8) * uint32(stor('array', ('mask_shl', 5, 3, -3, ('var', '_840')), ('name', 'stor11', 11))[uint8(_840)] + 1)
                    idx = idx + 1
                    s = _840
                    continue 
                stor4.length++
                uint256(stor4[Mask(253, 0, stor4.length.field_3)].field_0) = !(test266151307() * 256^(4 * stor4.length % 8)) and uint256(stor4[Mask(253, 0, stor4.length.field_3)].field_0) or 256^(4 * stor4.length % 8) * lastId
                require uint16(idx) < mem[(2 * ceil32(arg3.length)) + 160]
                _813 = mem[(32 * uint16(idx)) + (2 * ceil32(arg3.length)) + 192]
                mem[0] = mem[(32 * uint16(idx)) + (2 * ceil32(arg3.length)) + 223 len 1]
                stor7[address(arg1)][mem[(32 * uint16(idx)) + (2 * ceil32(arg3.length)) + 192] << 248] = uint32(stor7[address(arg1)][mem[(32 * uint16(idx)) + (2 * ceil32(arg3.length)) + 192] << 248] + 1)
                require uint16(idx) < mem[(4 * ceil32(arg3.length)) + 192]
                mem[(4 * ceil32(arg3.length)) + (32 * uint16(idx)) + 224] = uint32(stor7[address(arg1)][mem[(32 * uint16(idx)) + (2 * ceil32(arg3.length)) + 192] << 248] + 1)
                _838 = mem[64]
                mem[64] = mem[64] + 128
                require uint16(idx) < mem[(2 * ceil32(arg3.length)) + 160]
                mem[_838] = mem[(2 * ceil32(arg3.length)) + (32 * uint16(idx)) + 223 len 1]
                mem[32] = sha3(address(arg1), 7)
                mem[_838 + 32] = stor7[address(arg1)][_813 << 248]
                require uint8(_813) < stor9.length
                mem[_838 + 64] = stor('array', ('mask_shl', 7, 1, -1, ('var', '_813')), ('name', 'stor9', 9))[uint8(_813)]
                mem[_838 + 96] = arg1
                mem[0] = lastId
                mem[32] = 6
                uint8(artwork[uint32(stor5.field_0)].field_0) = mem[_838 + 31 len 1]
                uint32(artwork[uint32(stor5.field_0)].field_0) = stor7[address(arg1)][_813 << 248]
                uint32(artwork[uint32(stor5.field_0)].field_8) = 0
                uint128(artwork[uint32(stor5.field_0)].field_40) = stor('array', ('mask_shl', 7, 1, -1, ('var', '_813')), ('name', 'stor9', 9))[uint8(_813)]
                address(artwork[uint32(stor5.field_0)].field_256) = arg1
                numArtworks = uint32(numArtworks + 1)
                lastId = uint32(lastId + 1)
                require uint8(_813) < stor11.length
                mem[0] = 11
                uint256(stor11[uint8(_813) / 8].field_0) = uint256(stor11[uint8(_813) / 8].field_0) and !(test266151307() * 256^(4 * _813 % 8)) or 256^(4 * _813 % 8) * uint32(stor('array', ('mask_shl', 5, 3, -3, ('var', '_813')), ('name', 'stor11', 11))[uint8(_813)] + 1)
                idx = idx + 1
                s = _813
                continue 
            mem[mem[64]] = arg1
            mem[mem[64] + 32] = uint32(lastId - _402)
            mem[mem[64] + 64] = 128
            mem[mem[64] + 128] = mem[(2 * ceil32(arg3.length)) + 160]
            _781 = mem[(2 * ceil32(arg3.length)) + 160]
            mem[mem[64] + 160 len floor32(mem[(2 * ceil32(arg3.length)) + 160])] = mem[(2 * ceil32(arg3.length)) + 192 len floor32(mem[(2 * ceil32(arg3.length)) + 160])]
            mem[mem[64] + 96] = (32 * _781) + 160
            mem[(32 * _781) + mem[64] + 160] = mem[(4 * ceil32(arg3.length)) + 192]
            _952 = mem[(4 * ceil32(arg3.length)) + 192]
            mem[(32 * _781) + mem[64] + 192 len floor32(mem[(4 * ceil32(arg3.length)) + 192])] = mem[(4 * ceil32(arg3.length)) + 224 len floor32(mem[(4 * ceil32(arg3.length)) + 192])]
            emit newPurchase(address arg1, uint32 arg2, uint8[] arg3, uint32[] arg4):
                             address(arg1),
                             lastId - _402 << 224,
                             128,
                             (32 * _781) + 160,
                             mem[mem[64] + 128 len (32 * _952) + (32 * _781) + 64],
    else:
        mem[(2 * ceil32(arg3.length)) + 192 len ceil32(arg3.length)] = code.data[22817 len ceil32(arg3.length)]
        idx = 0
        while uint16(idx) < Mask(251, 0, arg3.length + 31) >> 5:
            require uint16(idx) < mem[ceil32(arg3.length) + 128]
            require uint16(idx) < mem[(2 * ceil32(arg3.length)) + 160]
            mem[(2 * ceil32(arg3.length)) + (32 * uint16(idx)) + 192] = mem[(32 * uint16(idx)) + ceil32(arg3.length) + 191 len 1]
            idx = idx + 1
            continue 
        _405 = mem[(2 * ceil32(arg3.length)) + 160]
        require uint32(mem[(2 * ceil32(arg3.length)) + 160] + numArtworks) < maxArtworks
        idx = 0
        s = 0
        while uint16(idx) < mem[(2 * ceil32(arg3.length)) + 188 len 4]:
            require uint16(idx) < mem[(2 * ceil32(arg3.length)) + 160]
            require mem[(2 * ceil32(arg3.length)) + (32 * uint16(idx)) + 223 len 1] < stor8.length
            require uint16(idx) < mem[(2 * ceil32(arg3.length)) + 160]
            _601 = mem[(32 * uint16(idx)) + (2 * ceil32(arg3.length)) + 192]
            require mem[(32 * uint16(idx)) + (2 * ceil32(arg3.length)) + 223 len 1] < stor8.length
            mem[0] = 8
            _609 = sha3(8)
            idx = idx + 1
            s = stor('array', ('mask_shl', 7, 1, -1, ('mem', ('range', ('add', 192, ('mask_shl', 16, 0, 5, ('var', 0)), ('mask_shl', 250, 5, 1, ('add', 31, ('cd', ('add', 4, ('param', 'arg3')))))), 32))), ('name', 'stor8', 8))[uint8(mem[(32 * uint16(idx)) + (2 * ceil32(arg3.length)) + 192])] + s
            continue 
        require arg2 >= stor((Mask(7, 1, _601) >> 1) + _609)[uint8(_601)] * None
        mem[(4 * ceil32(arg3.length)) + 192] = mem[(2 * ceil32(arg3.length)) + 188 len 4]
        mem[64] = (4 * ceil32(arg3.length)) + (32 * uint32(mem[(2 * ceil32(arg3.length)) + 160])) + 224
        if not mem[(2 * ceil32(arg3.length)) + 188 len 4]:
            idx = 0
            s = 0
            while uint16(idx) < uint32(_405):
                if numArtworks < stor4.length:
                    uint256(stor4[stor10.field_11 % 536870912].field_0) = lastId * 256^(4 * stor10.field_8 % 8) or !(test266151307() * 256^(4 * stor10.field_8 % 8)) and uint256(stor4[stor10.field_11 % 536870912].field_0)
                    require uint16(idx) < mem[(2 * ceil32(arg3.length)) + 160]
                    _848 = mem[(32 * uint16(idx)) + (2 * ceil32(arg3.length)) + 192]
                    mem[0] = mem[(32 * uint16(idx)) + (2 * ceil32(arg3.length)) + 223 len 1]
                    stor7[address(arg1)][mem[(32 * uint16(idx)) + (2 * ceil32(arg3.length)) + 192] << 248] = uint32(stor7[address(arg1)][mem[(32 * uint16(idx)) + (2 * ceil32(arg3.length)) + 192] << 248] + 1)
                    require uint16(idx) < mem[(4 * ceil32(arg3.length)) + 192]
                    mem[(4 * ceil32(arg3.length)) + (32 * uint16(idx)) + 224] = uint32(stor7[address(arg1)][mem[(32 * uint16(idx)) + (2 * ceil32(arg3.length)) + 192] << 248] + 1)
                    _873 = mem[64]
                    mem[64] = mem[64] + 128
                    require uint16(idx) < mem[(2 * ceil32(arg3.length)) + 160]
                    mem[_873] = mem[(2 * ceil32(arg3.length)) + (32 * uint16(idx)) + 223 len 1]
                    mem[32] = sha3(address(arg1), 7)
                    mem[_873 + 32] = stor7[address(arg1)][_848 << 248]
                    require uint8(_848) < stor9.length
                    mem[_873 + 64] = stor('array', ('mask_shl', 7, 1, -1, ('var', '_848')), ('name', 'stor9', 9))[uint8(_848)]
                    mem[_873 + 96] = arg1
                    mem[0] = lastId
                    mem[32] = 6
                    uint8(artwork[uint32(stor5.field_0)].field_0) = mem[_873 + 31 len 1]
                    uint32(artwork[uint32(stor5.field_0)].field_0) = stor7[address(arg1)][_848 << 248]
                    uint32(artwork[uint32(stor5.field_0)].field_8) = 0
                    uint128(artwork[uint32(stor5.field_0)].field_40) = stor('array', ('mask_shl', 7, 1, -1, ('var', '_848')), ('name', 'stor9', 9))[uint8(_848)]
                    address(artwork[uint32(stor5.field_0)].field_256) = arg1
                    numArtworks = uint32(numArtworks + 1)
                    lastId = uint32(lastId + 1)
                    require uint8(_848) < stor11.length
                    mem[0] = 11
                    uint256(stor11[uint8(_848) / 8].field_0) = uint256(stor11[uint8(_848) / 8].field_0) and !(test266151307() * 256^(4 * _848 % 8)) or 256^(4 * _848 % 8) * uint32(stor('array', ('mask_shl', 5, 3, -3, ('var', '_848')), ('name', 'stor11', 11))[uint8(_848)] + 1)
                    idx = idx + 1
                    s = _848
                    continue 
                stor4.length++
                uint256(stor4[Mask(253, 0, stor4.length.field_3)].field_0) = !(test266151307() * 256^(4 * stor4.length % 8)) and uint256(stor4[Mask(253, 0, stor4.length.field_3)].field_0) or 256^(4 * stor4.length % 8) * lastId
                require uint16(idx) < mem[(2 * ceil32(arg3.length)) + 160]
                _818 = mem[(32 * uint16(idx)) + (2 * ceil32(arg3.length)) + 192]
                mem[0] = mem[(32 * uint16(idx)) + (2 * ceil32(arg3.length)) + 223 len 1]
                stor7[address(arg1)][mem[(32 * uint16(idx)) + (2 * ceil32(arg3.length)) + 192] << 248] = uint32(stor7[address(arg1)][mem[(32 * uint16(idx)) + (2 * ceil32(arg3.length)) + 192] << 248] + 1)
                require uint16(idx) < mem[(4 * ceil32(arg3.length)) + 192]
                mem[(4 * ceil32(arg3.length)) + (32 * uint16(idx)) + 224] = uint32(stor7[address(arg1)][mem[(32 * uint16(idx)) + (2 * ceil32(arg3.length)) + 192] << 248] + 1)
                _846 = mem[64]
                mem[64] = mem[64] + 128
                require uint16(idx) < mem[(2 * ceil32(arg3.length)) + 160]
                mem[_846] = mem[(2 * ceil32(arg3.length)) + (32 * uint16(idx)) + 223 len 1]
                mem[32] = sha3(address(arg1), 7)
                mem[_846 + 32] = stor7[address(arg1)][_818 << 248]
                require uint8(_818) < stor9.length
                mem[_846 + 64] = stor('array', ('mask_shl', 7, 1, -1, ('var', '_818')), ('name', 'stor9', 9))[uint8(_818)]
                mem[_846 + 96] = arg1
                mem[0] = lastId
                mem[32] = 6
                uint8(artwork[uint32(stor5.field_0)].field_0) = mem[_846 + 31 len 1]
                uint32(artwork[uint32(stor5.field_0)].field_0) = stor7[address(arg1)][_818 << 248]
                uint32(artwork[uint32(stor5.field_0)].field_8) = 0
                uint128(artwork[uint32(stor5.field_0)].field_40) = stor('array', ('mask_shl', 7, 1, -1, ('var', '_818')), ('name', 'stor9', 9))[uint8(_818)]
                address(artwork[uint32(stor5.field_0)].field_256) = arg1
                numArtworks = uint32(numArtworks + 1)
                lastId = uint32(lastId + 1)
                require uint8(_818) < stor11.length
                mem[0] = 11
                uint256(stor11[uint8(_818) / 8].field_0) = uint256(stor11[uint8(_818) / 8].field_0) and !(test266151307() * 256^(4 * _818 % 8)) or 256^(4 * _818 % 8) * uint32(stor('array', ('mask_shl', 5, 3, -3, ('var', '_818')), ('name', 'stor11', 11))[uint8(_818)] + 1)
                idx = idx + 1
                s = _818
                continue 
            mem[mem[64]] = arg1
            mem[mem[64] + 32] = uint32(lastId - _405)
            mem[mem[64] + 64] = 128
            mem[mem[64] + 128] = mem[(2 * ceil32(arg3.length)) + 160]
            _784 = mem[(2 * ceil32(arg3.length)) + 160]
            mem[mem[64] + 160 len floor32(mem[(2 * ceil32(arg3.length)) + 160])] = mem[(2 * ceil32(arg3.length)) + 192 len floor32(mem[(2 * ceil32(arg3.length)) + 160])]
            mem[mem[64] + 96] = (32 * _784) + 160
            mem[(32 * _784) + mem[64] + 160] = mem[(4 * ceil32(arg3.length)) + 192]
            _955 = mem[(4 * ceil32(arg3.length)) + 192]
            mem[(32 * _784) + mem[64] + 192 len floor32(mem[(4 * ceil32(arg3.length)) + 192])] = mem[(4 * ceil32(arg3.length)) + 224 len floor32(mem[(4 * ceil32(arg3.length)) + 192])]
            emit newPurchase(address arg1, uint32 arg2, uint8[] arg3, uint32[] arg4):
                             address(arg1),
                             lastId - _405 << 224,
                             128,
                             (32 * _784) + 160,
                             mem[mem[64] + 128 len (32 * _955) + (32 * _784) + 64],
        else:
            mem[(4 * ceil32(arg3.length)) + 224 len 32 * uint32(mem[(2 * ceil32(arg3.length)) + 160])] = code.data[22817 len 32 * uint32(mem[(2 * ceil32(arg3.length)) + 160])]
            idx = 0
            s = 0
            while uint16(idx) < uint32(_405):
                if numArtworks < stor4.length:
                    uint256(stor4[stor10.field_11 % 536870912].field_0) = lastId * 256^(4 * stor10.field_8 % 8) or !(test266151307() * 256^(4 * stor10.field_8 % 8)) and uint256(stor4[stor10.field_11 % 536870912].field_0)
                    require uint16(idx) < mem[(2 * ceil32(arg3.length)) + 160]
                    _856 = mem[(32 * uint16(idx)) + (2 * ceil32(arg3.length)) + 192]
                    mem[0] = mem[(32 * uint16(idx)) + (2 * ceil32(arg3.length)) + 223 len 1]
                    stor7[address(arg1)][mem[(32 * uint16(idx)) + (2 * ceil32(arg3.length)) + 192] << 248] = uint32(stor7[address(arg1)][mem[(32 * uint16(idx)) + (2 * ceil32(arg3.length)) + 192] << 248] + 1)
                    require uint16(idx) < mem[(4 * ceil32(arg3.length)) + 192]
                    mem[(4 * ceil32(arg3.length)) + (32 * uint16(idx)) + 224] = uint32(stor7[address(arg1)][mem[(32 * uint16(idx)) + (2 * ceil32(arg3.length)) + 192] << 248] + 1)
                    _878 = mem[64]
                    mem[64] = mem[64] + 128
                    require uint16(idx) < mem[(2 * ceil32(arg3.length)) + 160]
                    mem[_878] = mem[(2 * ceil32(arg3.length)) + (32 * uint16(idx)) + 223 len 1]
                    mem[32] = sha3(address(arg1), 7)
                    mem[_878 + 32] = stor7[address(arg1)][_856 << 248]
                    require uint8(_856) < stor9.length
                    mem[_878 + 64] = stor('array', ('mask_shl', 7, 1, -1, ('var', '_856')), ('name', 'stor9', 9))[uint8(_856)]
                    mem[_878 + 96] = arg1
                    mem[0] = lastId
                    mem[32] = 6
                    uint8(artwork[uint32(stor5.field_0)].field_0) = mem[_878 + 31 len 1]
                    uint32(artwork[uint32(stor5.field_0)].field_0) = stor7[address(arg1)][_856 << 248]
                    uint32(artwork[uint32(stor5.field_0)].field_8) = 0
                    uint128(artwork[uint32(stor5.field_0)].field_40) = stor('array', ('mask_shl', 7, 1, -1, ('var', '_856')), ('name', 'stor9', 9))[uint8(_856)]
                    address(artwork[uint32(stor5.field_0)].field_256) = arg1
                    numArtworks = uint32(numArtworks + 1)
                    lastId = uint32(lastId + 1)
                    require uint8(_856) < stor11.length
                    mem[0] = 11
                    uint256(stor11[uint8(_856) / 8].field_0) = uint256(stor11[uint8(_856) / 8].field_0) and !(test266151307() * 256^(4 * _856 % 8)) or 256^(4 * _856 % 8) * uint32(stor('array', ('mask_shl', 5, 3, -3, ('var', '_856')), ('name', 'stor11', 11))[uint8(_856)] + 1)
                    idx = idx + 1
                    s = _856
                    continue 
                stor4.length++
                uint256(stor4[Mask(253, 0, stor4.length.field_3)].field_0) = !(test266151307() * 256^(4 * stor4.length % 8)) and uint256(stor4[Mask(253, 0, stor4.length.field_3)].field_0) or 256^(4 * stor4.length % 8) * lastId
                require uint16(idx) < mem[(2 * ceil32(arg3.length)) + 160]
                _823 = mem[(32 * uint16(idx)) + (2 * ceil32(arg3.length)) + 192]
                mem[0] = mem[(32 * uint16(idx)) + (2 * ceil32(arg3.length)) + 223 len 1]
                stor7[address(arg1)][mem[(32 * uint16(idx)) + (2 * ceil32(arg3.length)) + 192] << 248] = uint32(stor7[address(arg1)][mem[(32 * uint16(idx)) + (2 * ceil32(arg3.length)) + 192] << 248] + 1)
                require uint16(idx) < mem[(4 * ceil32(arg3.length)) + 192]
                mem[(4 * ceil32(arg3.length)) + (32 * uint16(idx)) + 224] = uint32(stor7[address(arg1)][mem[(32 * uint16(idx)) + (2 * ceil32(arg3.length)) + 192] << 248] + 1)
                _854 = mem[64]
                mem[64] = mem[64] + 128
                require uint16(idx) < mem[(2 * ceil32(arg3.length)) + 160]
                mem[_854] = mem[(2 * ceil32(arg3.length)) + (32 * uint16(idx)) + 223 len 1]
                mem[32] = sha3(address(arg1), 7)
                mem[_854 + 32] = stor7[address(arg1)][_823 << 248]
                require uint8(_823) < stor9.length
                mem[_854 + 64] = stor('array', ('mask_shl', 7, 1, -1, ('var', '_823')), ('name', 'stor9', 9))[uint8(_823)]
                mem[_854 + 96] = arg1
                mem[0] = lastId
                mem[32] = 6
                uint8(artwork[uint32(stor5.field_0)].field_0) = mem[_854 + 31 len 1]
                uint32(artwork[uint32(stor5.field_0)].field_0) = stor7[address(arg1)][_823 << 248]
                uint32(artwork[uint32(stor5.field_0)].field_8) = 0
                uint128(artwork[uint32(stor5.field_0)].field_40) = stor('array', ('mask_shl', 7, 1, -1, ('var', '_823')), ('name', 'stor9', 9))[uint8(_823)]
                address(artwork[uint32(stor5.field_0)].field_256) = arg1
                numArtworks = uint32(numArtworks + 1)
                lastId = uint32(lastId + 1)
                require uint8(_823) < stor11.length
                mem[0] = 11
                uint256(stor11[uint8(_823) / 8].field_0) = uint256(stor11[uint8(_823) / 8].field_0) and !(test266151307() * 256^(4 * _823 % 8)) or 256^(4 * _823 % 8) * uint32(stor('array', ('mask_shl', 5, 3, -3, ('var', '_823')), ('name', 'stor11', 11))[uint8(_823)] + 1)
                idx = idx + 1
                s = _823
                continue 
            mem[mem[64]] = arg1
            mem[mem[64] + 32] = uint32(lastId - _405)
            mem[mem[64] + 64] = 128
            mem[mem[64] + 128] = mem[(2 * ceil32(arg3.length)) + 160]
            _787 = mem[(2 * ceil32(arg3.length)) + 160]
            mem[mem[64] + 160 len floor32(mem[(2 * ceil32(arg3.length)) + 160])] = mem[(2 * ceil32(arg3.length)) + 192 len floor32(mem[(2 * ceil32(arg3.length)) + 160])]
            mem[mem[64] + 96] = (32 * _787) + 160
            mem[(32 * _787) + mem[64] + 160] = mem[(4 * ceil32(arg3.length)) + 192]
            _958 = mem[(4 * ceil32(arg3.length)) + 192]
            mem[(32 * _787) + mem[64] + 192 len floor32(mem[(4 * ceil32(arg3.length)) + 192])] = mem[(4 * ceil32(arg3.length)) + 224 len floor32(mem[(4 * ceil32(arg3.length)) + 192])]
            emit newPurchase(address arg1, uint32 arg2, uint8[] arg3, uint32[] arg4):
                             address(arg1),
                             lastId - _405 << 224,
                             128,
                             (32 * _787) + 160,
                             mem[mem[64] + 128 len (32 * _958) + (32 * _787) + 64],
}



}
