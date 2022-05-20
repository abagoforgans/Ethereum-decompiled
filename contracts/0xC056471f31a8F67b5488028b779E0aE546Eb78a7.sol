contract main {




// =====================  Runtime code  =====================


address owner;
address pendingOwner;
uint8 fee;
uint16 maxArtworks; offset 40
uint32 numArtworks; offset 8
uint8 stor11;
uint256 stor11; offset 3
uint256 stor11;
address implementationAddress;
address operatorAddress;
address likeAddress;
bool stor5; offset 256
uint8 stor5;
uint32 lastId;
uint32 oldest; offset 32
uint64 stor5; offset 8
mapping of struct artwork;
array of uint256 stor660301456019777184113296434797620819555017468543624515662331739614079884729;
array of uint128 stor8;
array of uint256 stor9;

function getArtwork(uint32 arg1) {
    return uint8(artwork[arg1 << 224].field_0), 
           uint32(artwork[arg1 << 224].field_0),
           uint128(artwork[arg1 << 224].field_0),
           address(artwork[arg1 << 224].field_256)
}

function numArtworks() {
    return numArtworks
}

function oldest() {
    return oldest
}

function costs(uint256 arg1) {
    require arg1 < stor8.length
    return costs[uint8(arg1)]
}

function operator() {
    return operatorAddress
}

function implementation() {
    return implementationAddress
}

function values(uint256 arg1) {
    require arg1 < stor9.length
    return values[uint8(arg1)]
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

function lastId() {
    return lastId
}

function fee() {
    return fee
}

function pendingOwner() {
    return pendingOwner
}

function ids(uint256 arg1) {
    require arg1 < stor4.length
    return ids[uint8(arg1)]
}

function deposit() payable {
  stop
}

function setOperator(address arg1) {
    require msg.sender == owner
    operatorAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    pendingOwner = arg1
}

function updateImplementation(address arg1) {
    require msg.sender == owner
    require arg1
    implementationAddress = arg1
}

function claimOwnership() {
    require msg.sender == pendingOwner
    emit OwnershipTransferred(owner, pendingOwner);
    owner = pendingOwner
    pendingOwner = 0
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

function _fallback() payable {
    require implementationAddress
    delegate implementationAddress with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function getFees() {
    idx = 0
    s = 0
    while uint16(idx) < numArtworks:
        require uint16(idx) < stor4.length
        mem[0] = stor('array', ('mask_shl', 13, 3, -3, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
        mem[32] = 6
        idx = idx + 1
        s = uint128(artwork[stor4[uint16(idx) / 8]].field_40) + s
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

function collectFees(uint128 arg1) {
    require msg.sender == owner
    idx = 0
    s = 0
    while uint16(idx) < numArtworks:
        require uint16(idx) < stor4.length
        mem[0] = stor('array', ('mask_shl', 13, 3, -3, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
        mem[32] = 6
        idx = idx + 1
        s = uint128(artwork[stor4[uint16(idx) / 8]].field_40) + s
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
            uint256(stor11.field_0)++
            mem[0] = 11
            stor175B[Mask(253, 0, stor11.field_3)] = !(test266151307() * 256^(4 * stor11.field_0 % 8)) and stor175B[Mask(253, 0, stor11.field_3)]
        idx = idx + 1
        continue 
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
            uint256(stor11.field_0)++
            mem[0] = 11
            stor175B[Mask(253, 0, stor11.field_3)] = !(test266151307() * 256^(4 * stor11.field_0 % 8)) and stor175B[Mask(253, 0, stor11.field_3)]
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
            uint256(stor11.field_0)++
            mem[0] = 11
            stor175B[Mask(253, 0, stor11.field_3)] = !(test266151307() * 256^(4 * stor11.field_0 % 8)) and stor175B[Mask(253, 0, stor11.field_3)]
        idx = idx + 1
        continue 
}

function getAllArtworks() {
    mem[96] = numArtworks
    if not numArtworks:
        mem[(32 * numArtworks) + 128] = numArtworks
        mem[(64 * numArtworks) + 160] = numArtworks
        mem[(98 * numArtworks) + 192] = numArtworks
    else:
        mem[128 len 32 * numArtworks] = code.data[5734 len 32 * numArtworks]
        mem[(32 * numArtworks) + 128] = numArtworks
        mem[(32 * numArtworks) + 160 len 32 * numArtworks] = code.data[5734 len 32 * numArtworks]
        mem[(64 * numArtworks) + 160] = numArtworks
        mem[(64 * numArtworks) + 192 len 32 * numArtworks] = code.data[5734 len 32 * numArtworks]
        mem[(98 * numArtworks) + 192] = numArtworks
        mem[(98 * numArtworks) + 224 len 32 * numArtworks] = code.data[5734 len 32 * numArtworks]
    idx = 0
    s = 0
    while uint16(idx) < numArtworks:
        require uint16(idx) < stor4.length
        require uint16(idx) < mem[96]
        mem[(32 * uint16(idx)) + 128] = stor('array', ('mask_shl', 13, 3, -3, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
        require uint16(idx) < mem[(32 * numArtworks) + 128]
        mem[(32 * numArtworks) + (32 * uint16(idx)) + 160] = uint8(artwork[stor4[uint16(idx) / 8]].field_0)
        require uint16(idx) < mem[(64 * numArtworks) + 160]
        mem[(32 * uint16(idx)) + (64 * numArtworks) + 192] = uint32(artwork[stor4[uint16(idx) / 8]].field_8)
        mem[0] = stor('array', ('mask_shl', 13, 3, -3, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
        mem[32] = 6
        require uint16(idx) < mem[(98 * numArtworks) + 192]
        mem[(98 * numArtworks) + (32 * uint16(idx)) + 224] = uint128(artwork[stor4[uint16(idx) / 8]].field_40)
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

function getAllArtworksByOwner() {
    idx = 0
    s = 0
    while uint16(idx) < numArtworks:
        require uint16(idx) < stor4.length
        mem[0] = stor('array', ('mask_shl', 13, 3, -3, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
        mem[32] = 6
        if address(artwork[stor4[uint16(idx) / 8]].field_256) != msg.sender:
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
            if address(artwork[stor4[uint16(idx) / 8]].field_256) != msg.sender:
                idx = idx + 1
                t = t
                u = u
                continue 
            require uint16(idx) < stor4.length
            require uint16(t) < uint16(s)
            mem[(32 * uint16(t)) + 128] = stor('array', ('mask_shl', 13, 3, -3, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
            require uint16(t) < mem[(32 * uint16(s)) + 128]
            mem[(32 * uint16(s)) + (32 * uint16(t)) + 160] = uint8(artwork[stor4[uint16(idx) / 8]].field_0)
            require uint16(t) < mem[(64 * uint16(s)) + 160]
            mem[(32 * uint16(t)) + (64 * uint16(s)) + 192] = uint32(artwork[stor4[uint16(idx) / 8]].field_8)
            mem[0] = stor('array', ('mask_shl', 13, 3, -3, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
            mem[32] = 6
            require uint16(t) < mem[(64 * uint16(s)) + (32 * uint16(s)) + 192]
            mem[(64 * uint16(s)) + (32 * uint16(s)) + (32 * uint16(t)) + 224] = uint128(artwork[stor4[uint16(idx) / 8]].field_40)
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
    mem[128 len 32 * uint16(s)] = code.data[5734 len 32 * uint16(s)]
    mem[(32 * uint16(s)) + 128] = uint16(s)
    mem[(32 * uint16(s)) + 160 len 32 * uint16(s)] = code.data[5734 len 32 * uint16(s)]
    mem[(64 * uint16(s)) + 160] = uint16(s)
    mem[(64 * uint16(s)) + 192 len 32 * uint16(s)] = code.data[5734 len 32 * uint16(s)]
    mem[(64 * uint16(s)) + (32 * uint16(s)) + 192] = uint16(s)
    mem[(64 * uint16(s)) + (32 * uint16(s)) + 224 len 32 * uint16(s)] = code.data[5734 len 32 * uint16(s)]
    idx = 0
    t = 0
    u = 0
    while uint16(idx) < numArtworks:
        require uint16(idx) < stor4.length
        mem[0] = stor('array', ('mask_shl', 13, 3, -3, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
        mem[32] = 6
        if address(artwork[stor4[uint16(idx) / 8]].field_256) != msg.sender:
            idx = idx + 1
            t = t
            u = u
            continue 
        require uint16(idx) < stor4.length
        require uint16(t) < uint16(s)
        mem[(32 * uint16(t)) + 128] = stor('array', ('mask_shl', 13, 3, -3, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
        require uint16(t) < mem[(32 * uint16(s)) + 128]
        mem[(32 * uint16(s)) + (32 * uint16(t)) + 160] = uint8(artwork[stor4[uint16(idx) / 8]].field_0)
        require uint16(t) < mem[(64 * uint16(s)) + 160]
        mem[(32 * uint16(t)) + (64 * uint16(s)) + 192] = uint32(artwork[stor4[uint16(idx) / 8]].field_8)
        mem[0] = stor('array', ('mask_shl', 13, 3, -3, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
        mem[32] = 6
        require uint16(t) < mem[(64 * uint16(s)) + (32 * uint16(s)) + 192]
        mem[(64 * uint16(s)) + (32 * uint16(s)) + (32 * uint16(t)) + 224] = uint128(artwork[stor4[uint16(idx) / 8]].field_40)
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



}
