contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor10;
array of uint256 stor11;
uint8 stor13; offset 24
uint32 stor13;
bool stor4; offset 256
uint8 stor4;
uint8 stor4; offset 32
uint32 stor4; offset 8
uint32 stor4; offset 40
array of uint128 stor6;
array of uint256 stor7;
uint8 stor8;
uint16 stor8; offset 24

function _fallback() {
    stor0 = msg.sender
    mem[96] = 10^17
    mem[128] = 2 * 10^17
    mem[160] = 5 * 10^17
    mem[192] = 10^18
    mem[224] = 5 * 10^18
    stor6.length = 5
    s = 0
    idx = 96
    while 256 > idx:
        uint256(stor6) = mem[idx + 24 len 8] * 256^s or !(test266151307() * 256^s) and uint256(stor6)
        s = s + (16 * -s + 31 / 32) + (-1 * s * s + 31 / 32) + 16
        idx = idx + 32
        continue 
    idx = 80
    s = sha3(6)
    while idx:
        stor[s] = !(test266151307() * 256^idx) and stor[s]
        idx = idx + (16 * -idx + 31 / 32) + (-1 * idx * idx + 31 / 32) + 16
        s = (idx + 31 / 32) + s
        continue 
    idx = Mask(248, 4, None - 63) + 111 / 32 * Mask(252, 0, None - 63) >> 4
    while stor6.length + 1 / 2 > idx:
        uint128(stor6[idx]) = 0
        idx = idx + 1
        continue 
    uint8(stor8.field_0) = 5
    idx = 0
    while uint8(idx) < stor6.length:
        stor7.length++
        if not stor7.length <= stor7.length + 1:
            s = sha3(7) + (stor7.length + 2 / 2)
            while sha3(7) + (stor7.length + 1 / 2) > s:
                stor[s] = 0
                s = s + 1
                continue 
        require uint8(idx) < stor6.length
        require uint8(idx) < stor6.length
        mem[0] = 6
        stor7[uint255(stor7.length.field_1)].field_0 = uint128(stor('array', ('mask_shl', 7, 1, -1, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)] - (stor('array', ('mask_shl', 7, 1, -1, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)] / 100 * uint8(stor8.field_0))) * 256^(16 * bool(stor7.length)) or !(test266151307() * 256^(16 * bool(stor7.length))) and stor7[uint255(stor7.length.field_1)].field_0
        idx = idx + 1
        continue 
    uint16(stor8.field_24) = 300
    mem[288] = '10 random numbers between 1 and '
    mem[320] = '1000'
    stor10.length = 73
    s = 0
    idx = 288
    while 324 > idx:
        stor10[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 2
    while stor10.length + 31 / 32 > idx:
        stor10[idx] = 0
        idx = idx + 1
        continue 
    uint8(stor11.length) = 24
    Mask(248, 0, stor11.length.field_8) = 'WolframAlpha' / 256
    idx = 0
    while stor11.length + 31 / 32 > idx:
        stor11[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor13.field_0 % 16777216 = 400000
    uint8(stor13.field_24) = 0
    uint8(stor4.field_0) = 1
    stor4.field_8 % 16777216 = 0
    uint8(stor4.field_32) = 1
    stor4.field_40 % 16777216 = 0
    stor4.field_256 % 1 = 0
    return code.data[1168 len 11808]
}



// =====================  Runtime code  =====================


#
#  - triggerAttackManually(uint32 arg1)
#  - __callback(bytes32 arg1, string arg2)
#  - exit()
#  - _fallback()
#
address stor0;
uint256 nextAttackTimestamp;
uint32 oraclizeGas;
array of struct stor3;
uint32 nextId;
uint32 oldest; offset 32
mapping of struct animal;
array of uint256 stor6;
array of uint256 stor7;
uint8 stor8; offset 8
uint8 stor8;
uint16 stor8; offset 11
uint16 numAnimals; offset 8
uint16 maxAnimals; offset 24
mapping of uint16 numAnimalsXType;

function numAnimalsXType(uint8 arg1) {
    return numAnimalsXType[arg1]
}

function numAnimals() {
    return numAnimals
}

function getAnimal(uint32 arg1) {
    return uint8(animal[arg1 << 224].field_0), uint128(animal[arg1 << 224].field_0), address(animal[arg1 << 224].field_256)
}

function oldest() {
    return oldest
}

function oraclizeGas() {
    return oraclizeGas
}

function costs(uint256 arg1) {
    require arg1 < stor6.length
    return costs[uint8(arg1)]
}

function values(uint256 arg1) {
    require arg1 < stor7.length
    return values[uint8(arg1)]
}

function nextId() {
    return nextId
}

function maxAnimals() {
    return maxAnimals
}

function nextAttackTimestamp() {
    return nextAttackTimestamp
}

function ids(uint256 arg1) {
    require arg1 < stor3.length
    return ids[uint8(arg1)]
}

function stop() {
    require stor0 == msg.sender
    idx = 0
    while uint16(idx) < numAnimals:
        require uint16(idx) < stor3.length
        mem[0] = stor('array', ('mask_shl', 13, 3, -3, ('var', 0)), ('name', 'stor3', 3))[uint8(idx)]
        mem[32] = 5
        call address(animal[uint32(stor3[uint16(idx) / 8].field_(32 * idx % 8) - 224)].field_256) with:
           value uint128(animal[uint32(stor3[uint16(idx) / 8].field_(32 * idx % 8) - 224)].field_8) wei
             gas 2300 * is_zero(value) wei
        idx = idx + 1
        continue 
    selfdestruct(stor0)
}

function __callback(bytes32 arg1, string arg2, bytes arg3) {
  stop
}

function setMaxAnimals(uint16 arg1) {
    require stor0 == msg.sender
    maxAnimals = arg1
}

function setOraclizeGas(uint32 arg1) {
    require stor0 == msg.sender
    oraclizeGas = arg1
}

function getFees() {
    idx = 0
    s = 0
    while uint16(idx) < numAnimals:
        require uint16(idx) < stor3.length
        mem[0] = stor('array', ('mask_shl', 13, 3, -3, ('var', 0)), ('name', 'stor3', 3))[uint8(idx)]
        mem[32] = 5
        idx = idx + 1
        s = uint128(animal[uint32(stor3[uint16(idx) / 8].field_(32 * idx % 8) - 224)].field_8) + s
        continue 
    return (eth.balance(this.address) - (uint128(stor[_8].field_8) * None))
}

function collectFees(uint128 arg1) {
    require stor0 == msg.sender
    idx = 0
    s = 0
    while uint16(idx) < numAnimals:
        require uint16(idx) < stor3.length
        mem[0] = stor('array', ('mask_shl', 13, 3, -3, ('var', 0)), ('name', 'stor3', 3))[uint8(idx)]
        mem[32] = 5
        idx = idx + 1
        s = uint128(animal[uint32(stor3[uint16(idx) / 8].field_(32 * idx % 8) - 224)].field_8) + s
        continue 
    if uint128(arg1 + 10^17) >= eth.balance(this.address) - (uint128(stor[_5].field_8) * None):
    call stor0 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
    revert 
}

function getPlayerBalance(address arg1) {
    idx = 0
    s = 0
    while uint16(idx) < numAnimals:
        require uint16(idx) < stor3.length
        mem[0] = stor('array', ('mask_shl', 13, 3, -3, ('var', 0)), ('name', 'stor3', 3))[uint8(idx)]
        mem[32] = 5
        if address(animal[uint32(stor3[uint16(idx) / 8].field_(32 * idx % 8) - 224)].field_256) != arg1:
            idx = idx + 1
            s = s
            continue 
        require uint16(idx) < stor3.length
        mem[0] = stor('array', ('mask_shl', 13, 3, -3, ('var', 0)), ('name', 'stor3', 3))[uint8(idx)]
        mem[32] = 5
        idx = idx + 1
        s = uint128(animal[uint32(stor3[uint16(idx) / 8].field_(32 * idx % 8) - 224)].field_8) + s
        continue 
    return uint128(s)
}

function addAnimalType(uint128 arg1) {
    require stor0 == msg.sender
    stor6.length++
    if not stor6.length <= stor6.length + 1:
        idx = stor6.length + 2 / 2
        while stor6.length + 1 / 2 > idx:
            uint256(stor6[idx].field_0) = 0
            idx = idx + 1
            continue 
    uint256(stor6[uint255(stor6.length.field_1)].field_0) = !(test266151307() * 256^(16 * bool(stor6.length))) and uint256(stor6[uint255(stor6.length.field_1)].field_0) or 256^(16 * bool(stor6.length)) * arg1
    stor7.length++
    if not stor7.length <= stor7.length + 1:
        idx = stor7.length + 2 / 2
        while stor7.length + 1 / 2 > idx:
            uint256(stor7[idx].field_0) = 0
            idx = idx + 1
            continue 
    uint256(stor7[uint255(stor7.length.field_1)].field_0) = uint128(arg1 / 100 * uint8(stor8.field_0)) * 256^(16 * bool(stor7.length)) or !(test266151307() * 256^(16 * bool(stor7.length))) and uint256(stor7[uint255(stor7.length.field_1)].field_0)
}

function get10Animals(uint16 arg1) {
    mem[96] = 0
    mem[128 len 288] = 0
    mem[416] = 0
    mem[448 len 288] = 0
    mem[736] = 0
    mem[768 len 288] = 0
    mem[64] = 1376
    mem[1056] = 0
    mem[1088 len 288] = 0
    if uint16(arg1 + 10) > numAnimals:
        idx = arg1
        s = 0
        s = 0
        while uint16(idx) < numAnimals:
            require uint16(idx) < stor3.length
            require uint8(s) < 10
            mem[(32 * uint8(s)) + 96] = stor('array', ('mask_shl', 13, 3, -3, ('var', 0)), ('name', 'stor3', 3))[uint8(idx)]
            mem[(32 * uint8(s)) + 416] = uint8(animal[uint32(stor3[uint16(idx) / 8].field_(32 * idx % 8) - 224)].field_0)
            mem[(32 * uint8(s)) + 736] = uint128(animal[uint32(stor3[uint16(idx) / 8].field_(32 * idx % 8) - 224)].field_8)
            mem[0] = stor('array', ('mask_shl', 13, 3, -3, ('var', 0)), ('name', 'stor3', 3))[uint8(idx)]
            mem[32] = 5
            mem[(32 * uint8(s)) + 1056] = address(animal[uint32(stor3[uint16(idx) / 8].field_(32 * idx % 8) - 224)].field_256)
            idx = idx + 1
            s = stor('array', ('mask_shl', 13, 3, -3, ('var', 0)), ('name', 'stor3', 3))[uint8(idx)]
            s = s + 1
            continue 
    else:
        idx = arg1
        s = 0
        s = 0
        while uint16(idx) < uint16(arg1 + 10):
            require uint16(idx) < stor3.length
            require uint8(s) < 10
            mem[(32 * uint8(s)) + 96] = stor('array', ('mask_shl', 13, 3, -3, ('var', 0)), ('name', 'stor3', 3))[uint8(idx)]
            mem[(32 * uint8(s)) + 416] = uint8(animal[uint32(stor3[uint16(idx) / 8].field_(32 * idx % 8) - 224)].field_0)
            mem[(32 * uint8(s)) + 736] = uint128(animal[uint32(stor3[uint16(idx) / 8].field_(32 * idx % 8) - 224)].field_8)
            mem[0] = stor('array', ('mask_shl', 13, 3, -3, ('var', 0)), ('name', 'stor3', 3))[uint8(idx)]
            mem[32] = 5
            mem[(32 * uint8(s)) + 1056] = address(animal[uint32(stor3[uint16(idx) / 8].field_(32 * idx % 8) - 224)].field_256)
            idx = idx + 1
            s = stor('array', ('mask_shl', 13, 3, -3, ('var', 0)), ('name', 'stor3', 3))[uint8(idx)]
            s = s + 1
            continue 
    mem[mem[64]] = mem[96]
    mem[mem[64] + 32 len 288] = mem[128 len 288]
    mem[mem[64] + 320] = mem[416]
    mem[mem[64] + 352 len 288] = mem[448 len 288]
    mem[mem[64] + 640] = mem[736]
    mem[mem[64] + 672 len 288] = mem[768 len 288]
    mem[mem[64] + 960] = mem[1056]
    mem[mem[64] + 992 len 288] = mem[1088 len 288]
    return memory
      from mem[64]
       len 1280
}

function addAnimals(uint8 arg1) payable {
    mem[64] = 96
    require arg1 < stor6.length
    require stor('array', ('mask_shl', 7, 1, -1, ('param', 'arg1')), ('name', 'stor6', 6))[uint8(arg1)]
    require arg1 < stor6.length
    require msg.value >= stor('array', ('mask_shl', 7, 1, -1, ('param', 'arg1')), ('name', 'stor6', 6))[uint8(arg1)]
    require uint16(uint8(msg.value / stor('array', ('mask_shl', 7, 1, -1, ('param', 'arg1')), ('name', 'stor6', 6))[uint8(arg1)]) + numAnimals) < maxAnimals
    idx = 0
    while uint8(idx) < uint8(msg.value / stor('array', ('mask_shl', 7, 1, -1, ('param', 'arg1')), ('name', 'stor6', 6))[uint8(arg1)]):
        if numAnimals < stor3.length:
            mem[0] = 3
            uint256(stor3[stor8.field_11 % 8192].field_0) = nextId * 256^(4 * stor8.field_8 % 8) or !(test266151307() * 256^(4 * stor8.field_8 % 8)) and uint256(stor3[stor8.field_11 % 8192].field_0)
            _34 = mem[64]
            mem[64] = mem[64] + 96
            mem[_34] = arg1
            require arg1 < stor7.length
            mem[_34 + 32] = stor('array', ('mask_shl', 7, 1, -1, ('param', 'arg1')), ('name', 'stor7', 7))[uint8(arg1)]
            mem[_34 + 64] = msg.sender
        else:
            stor3.length++
            if not stor3.length > stor3.length + 1:
                mem[0] = 3
                uint256(stor3[Mask(253, 0, stor3.length.field_3)].field_0) = uint256(stor3[Mask(253, 0, stor3.length.field_3)].field_0) and !(test266151307() * 256^(4 * stor3.length % 8)) or 256^(4 * stor3.length % 8) * nextId
                _36 = mem[64]
                mem[64] = mem[64] + 96
                mem[_36] = arg1
                require arg1 < stor7.length
                mem[_36 + 32] = stor('array', ('mask_shl', 7, 1, -1, ('param', 'arg1')), ('name', 'stor7', 7))[uint8(arg1)]
                mem[_36 + 64] = msg.sender
            else:
                s = sha3(3) + (stor3.length + 8 / 8)
                while sha3(3) + (stor3.length + 7 / 8) > s:
                    uint256(stor[s].field_0) = 0
                    s = s + 1
                    continue 
                mem[0] = 3
                uint256(stor3[Mask(253, 0, stor3.length.field_3)].field_0) = uint256(stor3[Mask(253, 0, stor3.length.field_3)].field_0) and !(test266151307() * 256^(4 * stor3.length % 8)) or 256^(4 * stor3.length % 8) * nextId
                _54 = mem[64]
                mem[64] = mem[64] + 96
                mem[_54] = arg1
                require arg1 < stor7.length
                mem[_54 + 32] = stor('array', ('mask_shl', 7, 1, -1, ('param', 'arg1')), ('name', 'stor7', 7))[uint8(arg1)]
                mem[_54 + 64] = msg.sender
        mem[0] = nextId
        mem[32] = 5
        uint8(animal[stor4].field_0) = arg1
        uint128(animal[stor4].field_8) = stor('array', ('mask_shl', 7, 1, -1, ('param', 'arg1')), ('name', 'stor7', 7))[uint8(arg1)]
        address(animal[stor4].field_256) = msg.sender
        nextId = uint32(nextId + 1)
        numAnimals = uint16(numAnimals + 1)
        idx = idx + 1
        continue 
    numAnimalsXType[arg1 << 248] = uint16(uint8(msg.value / stor('array', ('mask_shl', 7, 1, -1, ('param', 'arg1')), ('name', 'stor6', 6))[uint8(arg1)]) + numAnimalsXType[arg1 << 248])
    emit newPurchase(msg.sender, arg1 << 248, msg.value / stor('array', ('mask_shl', 7, 1, -1, ('param', 'arg1')), ('name', 'stor6', 6))[uint8(arg1)] << 248, uint32(nextId - uint8(msg.value / stor('array', ('mask_shl', 7, 1, -1, ('param', 'arg1')), ('name', 'stor6', 6))[uint8(arg1)])));
}

function sellAnimal(uint32 arg1) {
    require address(animal[arg1 << 224].field_256) == msg.sender
    idx = 0
    while uint16(idx) < stor3.length:
        mem[0] = 3
        if stor('array', ('mask_shl', 13, 3, -3, ('var', 0)), ('name', 'stor3', 3))[uint8(idx)] != arg1:
            idx = idx + 1
            continue 
        require uint16(idx) < stor3.length
        numAnimalsXType[uint8(stor5[uint32(stor3[uint16(idx) / 8].field_(32 * idx % 8) - 224)].field_0)] = uint16(numAnimalsXType[uint8(stor5[uint32(stor3[uint16(idx) / 8].field_(32 * idx % 8) - 224)].field_0)] - 1)
        numAnimals = uint16(numAnimals - 1)
        require uint16(numAnimals - 1) < stor3.length
        require uint16(idx) < stor3.length
        uint8(animal[uint32(stor3[uint16(idx) / 8].field_(32 * idx % 8) - 224)].field_0) = uint8(animal[uint32(stor3[uint16(uint16(stor8.field_8) - 1) / 8].field_(32 * uint16(stor8.field_8) - 1 % 8) - 224)].field_0)
        uint8(animal[uint32(stor3[uint16(idx) / 8].field_(32 * idx % 8) - 224)].field_0) = uint8(animal[uint32(stor3[uint16(uint16(stor8.field_8) - 1) / 8].field_(32 * uint16(stor8.field_8) - 1 % 8) - 224)].field_0)
        Mask(248, 0, animal[uint32(stor3[uint16(idx) / 8].field_(32 * idx % 8) - 224)].field_8) = uint128(animal[uint32(stor3[uint16(uint16(stor8.field_8) - 1) / 8].field_(32 * uint16(stor8.field_8) - 1 % 8) - 224)].field_8)
        Mask(120, 0, animal[uint32(stor3[uint16(idx) / 8].field_(32 * idx % 8) - 224)].field_136) = 0
        address(animal[uint32(stor3[uint16(idx) / 8].field_(32 * idx % 8) - 224)].field_256) = address(animal[uint32(stor3[uint16(uint16(stor8.field_8) - 1) / 8].field_(32 * uint16(stor8.field_8) - 1 % 8) - 224)].field_256)
        uint256(stor3[uint16(idx) / 8].field_0) = stor('array', ('mask_shl', 13, 3, -3, ('add', -1, ('stor', 16, 8, ('name', 'stor8', 8)))), ('name', 'stor3', 3))[uint8(uint16(stor8.field_8) - 1)] * 256^(4 * idx % 8) or !(test266151307() * 256^(4 * idx % 8)) and uint256(stor3[uint16(idx) / 8].field_0)
        require numAnimals < stor3.length
        uint256(stor3[stor8.field_11 % 8192].field_0) = !(test266151307() * 256^(4 * stor8.field_8 % 8)) and uint256(stor3[stor8.field_11 % 8192].field_0)
        call msg.sender with:
           value uint128(animal[arg1 << 224].field_8) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    require 0 < stor3.length
    numAnimalsXType[uint8(stor5[uint32(stor3.field_0)].field_0)] = uint16(numAnimalsXType[uint8(stor5[uint32(stor3.field_0)].field_0)] - 1)
    numAnimals = uint16(numAnimals - 1)
    require uint16(numAnimals - 1) < stor3.length
    require 0 < stor3.length
    uint8(animal[uint32(stor3.field_0)].field_0) = uint8(animal[uint32(stor3[uint16(uint16(stor8.field_8) - 1) / 8].field_(32 * uint16(stor8.field_8) - 1 % 8) - 224)].field_0)
    uint8(animal[uint32(stor3.field_0)].field_0) = uint8(animal[uint32(stor3[uint16(uint16(stor8.field_8) - 1) / 8].field_(32 * uint16(stor8.field_8) - 1 % 8) - 224)].field_0)
    Mask(248, 0, animal[uint32(stor3.field_0)].field_8) = uint128(animal[uint32(stor3[uint16(uint16(stor8.field_8) - 1) / 8].field_(32 * uint16(stor8.field_8) - 1 % 8) - 224)].field_8)
    Mask(120, 0, animal[uint32(stor3.field_0)].field_136) = 0
    address(animal[uint32(stor3.field_0)].field_256) = address(animal[uint32(stor3[uint16(uint16(stor8.field_8) - 1) / 8].field_(32 * uint16(stor8.field_8) - 1 % 8) - 224)].field_256)
    uint32(stor3.field_0) = stor('array', ('mask_shl', 13, 3, -3, ('add', -1, ('stor', 16, 8, ('name', 'stor8', 8)))), ('name', 'stor3', 3))[uint8(uint16(stor8.field_8) - 1)]
    require numAnimals < stor3.length
    uint256(stor3[stor8.field_11 % 8192].field_0) = !(test266151307() * 256^(4 * stor8.field_8 % 8)) and uint256(stor3[stor8.field_11 % 8192].field_0)
    call msg.sender with:
       value uint128(animal[arg1 << 224].field_8) wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
    revert 
}



}
