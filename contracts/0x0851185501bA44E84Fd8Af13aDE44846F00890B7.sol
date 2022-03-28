contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[49 len 14256]
}



// =====================  Runtime code  =====================


#
#  - triggerAttackManually(uint32 arg1)
#  - __callback(bytes32 arg1, string arg2)
#  - exit()
#  - _fallback()
#
uint256 stor-26074275084009875412389268311263347690013120251023914000470397511746302913878;
array of struct stor0;
array of uint256 stor10;
array of uint256 stor11;
uint256 nextAttackTimestamp;
uint8 stor13; offset 24
uint32 stor13;
uint32 oraclizeGas;
array of uint32 stor3;
bool stor4; offset 256
uint8 stor4;
uint8 stor4; offset 32
uint32 stor4; offset 8
uint32 stor4; offset 40
uint32 nextId;
uint32 oldest; offset 32
uint256 stor4; offset 32
mapping of struct animal;
array of uint256 stor6;
uint256 stor175B;
array of uint256 stor7;
uint8 stor8; offset 16
uint8 stor8;
uint8 stor8; offset 8
uint16 maxAnimals; offset 48
uint32 stor8; offset 19
uint32 numAnimals; offset 16
uint256 stor8; offset 8
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
    require address(stor0.length) == msg.sender
    idx = 0
    while uint16(idx) < numAnimals:
        require uint16(idx) < stor3.length
        mem[0] = stor('array', ('mask_shl', 13, 3, -3, ('var', 0)), ('name', 'stor3', 3))[uint8(idx)]
        mem[32] = 5
        call address(animal[uint32(stor3[uint16(idx) / 8].field_(32 * idx % 8) - 224)].field_256) with:
           value uint128(animal[uint32(stor3[uint16(idx) / 8].field_(32 * idx % 8) - 224)].field_8) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        idx = idx + 1
        continue 
    selfdestruct(address(stor0.length))
}

function __callback(bytes32 arg1, string arg2, bytes arg3) {
  stop
}

function setMaxAnimals(uint16 arg1) {
    require address(stor0.length) == msg.sender
    maxAnimals = arg1
}

function setOraclizeGas(uint32 arg1) {
    require address(stor0.length) == msg.sender
    oraclizeGas = arg1
}

function setTransferAllowance(bool arg1) {
    require address(stor0.length) == msg.sender
    Mask(248, 0, stor8.field_8) = Mask(248, 0, arg1)
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

function findOldest() {
    require 0 < stor3.length
    Mask(224, 0, stor4.field_32) = uint32(stor3.field_0)
    idx = 1
    while uint16(idx) < numAnimals:
        require uint16(idx) < stor3.length
        mem[0] = 3
        if stor('array', ('mask_shl', 13, 3, -3, ('var', 0)), ('name', 'stor3', 3))[uint8(idx)] < oldest:
            require uint16(idx) < stor3.length
            mem[0] = 3
            oldest = stor('array', ('mask_shl', 13, 3, -3, ('var', 0)), ('name', 'stor3', 3))[uint8(idx)]
        idx = idx + 1
        continue 
}

function collectFees(uint128 arg1) {
    require address(stor0.length) == msg.sender
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
    call address(stor0.length) with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
    revert 
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
        numAnimals = uint32(numAnimals - 1)
        if stor('array', ('mask_shl', 13, 3, -3, ('var', 0)), ('name', 'stor3', 3))[uint8(idx)] == oldest:
            oldest = 0
        Mask(136, 0, animal[uint32(stor3[uint16(idx) / 8].field_(32 * idx % 8) - 224)].field_0) = 0
        address(animal[uint32(stor3[uint16(idx) / 8].field_(32 * idx % 8) - 224)].field_256) = 0
        require numAnimals < stor3.length
        require uint16(idx) < stor3.length
        uint256(stor3[uint16(idx) / 8].field_0) = stor('array', ('stor', 29, 19, ('name', 'stor8', 8)), ('name', 'stor3', 3))[stor8.field_16 % 8] * 256^(4 * idx % 8) or !(test266151307() * 256^(4 * idx % 8)) and uint256(stor3[uint16(idx) / 8].field_0)
        require numAnimals < stor3.length
        uint256(stor3[stor8.field_19 % 536870912].field_0) = !(test266151307() * 256^(4 * stor8.field_16 % 8)) and uint256(stor3[stor8.field_19 % 536870912].field_0)
        call msg.sender with:
           value uint128(animal[arg1 << 224].field_8) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit newSell(arg1 << 224, msg.sender, uint128(animal[arg1 << 224].field_8));
    require 0 < stor3.length
    numAnimalsXType[uint8(stor5[uint32(stor3.field_0)].field_0)] = uint16(numAnimalsXType[uint8(stor5[uint32(stor3.field_0)].field_0)] - 1)
    numAnimals = uint32(numAnimals - 1)
    if uint32(stor3.field_0) == oldest:
        oldest = 0
    Mask(136, 0, animal[uint32(stor3.field_0)].field_0) = 0
    address(animal[uint32(stor3.field_0)].field_256) = 0
    require numAnimals < stor3.length
    require 0 < stor3.length
    uint32(stor3.field_0) = stor('array', ('stor', 29, 19, ('name', 'stor8', 8)), ('name', 'stor3', 3))[stor8.field_16 % 8]
    require numAnimals < stor3.length
    uint256(stor3[stor8.field_19 % 536870912].field_0) = !(test266151307() * 256^(4 * stor8.field_16 % 8)) and uint256(stor3[stor8.field_19 % 536870912].field_0)
    call msg.sender with:
       value uint128(animal[arg1 << 224].field_8) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit newSell(arg1 << 224, msg.sender, uint128(animal[arg1 << 224].field_8));
}

function init() {
    require address(stor0.length) == msg.sender
    mem[96] = 10^17
    mem[128] = 2 * 10^17
    mem[160] = 5 * 10^17
    mem[192] = 10^18
    mem[224] = 5 * 10^18
    stor6.length = 5
    s = 0
    idx = 96
    while 256 > idx:
        stor6 = mem[idx + 24 len 8] * 256^s or !(test266151307() * 256^s) and stor6
        s = s + (16 * -s + 31 / 32) + (-1 * s * s + 31 / 32) + 16
        idx = idx + 32
        continue 
    idx = 80
    s = 0xf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d3f
    while idx:
        uint256(stor[s].field_0) = !(test266151307() * 256^idx) and uint256(stor[s].field_0)
        idx = idx + (16 * -idx + 31 / 32) + (-1 * idx * idx + 31 / 32) + 16
        s = (idx + 31 / 32) + s
        continue 
    idx = (Mask(248, 4, None - 63) + 111 / 32 * Mask(252, 0, None - 63) >> 4) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2c1
    while (stor6.length + 1 / 2) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2c1 > idx:
        uint128(stor[idx].field_0) = 0
        idx = idx + 1
        continue 
    uint8(stor8.field_0) = 5
    idx = 0
    while uint8(idx) < stor6.length:
        stor7.length++
        if not stor7.length <= stor7.length + 1:
            if stor7.length + 1 / 2 > stor7.length + 2 / 2:
                uint256(stor7[0.5 / stor7.length + 2].field_0) = 0
                s = sha3(7) + (stor7.length + 2 / 2) + 1
                while sha3(7) + (stor7.length + 1 / 2) > s:
                    uint256(stor[s].field_0) = 0
                    s = s + 1
                    continue 
        require uint8(idx) < stor6.length
        require uint8(idx) < stor6.length
        mem[0] = 6
        uint256(stor7[uint255(stor7.length.field_1)].field_0) = uint128(stor('array', ('mask_shl', 7, 1, -1, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)] - (stor('array', ('mask_shl', 7, 1, -1, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)] / 100 * uint8(stor8.field_0))) * 256^(16 * bool(stor7.length)) or !(test266151307() * 256^(16 * bool(stor7.length))) and uint256(stor7[uint255(stor7.length.field_1)].field_0)
        idx = idx + 1
        continue 
    maxAnimals = 300
    mem[288] = '10 random numbers between 1 and '
    mem[320] = '1000'
    stor10.length = 73
    s = 0xc65a7bb8d6351c1cf70c95a316cc6a92839c986682d98bc35f958f4883f9d2a8
    idx = 288
    while 324 > idx:
        uint256(stor[s].field_0) = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    if (stor10.length + 31 / 32) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d58 > -26074275084009875412389268311263347690013120251023914000470397511746302913878:
        stor-26074275084009875412389268311263347690013120251023914000470397511746302913878 = 0
        idx = -26074275084009875412389268311263347690013120251023914000470397511746302913877
        while (stor10.length + 31 / 32) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d58 > idx:
            uint256(stor[idx].field_0) = 0
            idx = idx + 1
            continue 
    uint8(stor11.length) = 24
    Mask(248, 0, stor11.length.field_8) = 'WolframAlpha' / 256
    if (stor11.length + 31 / 32) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01db9 > 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01db9:
        stor175B = 0
        idx = 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01dba
        while (stor11.length + 31 / 32) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01db9 > idx:
            uint256(stor[idx].field_0) = 0
            idx = idx + 1
            continue 
    stor13.field_0 % 16777216 = 600000
    uint8(stor13.field_24) = 0
    uint8(stor8.field_8) = 1
    uint8(stor4.field_0) = 150
    stor4.field_8 % 16777216 = 0
    uint8(stor4.field_32) = 150
    stor4.field_40 % 16777216 = 0
    stor4.field_256 % 1 = 0
}

function transfer(address arg1) {
    mem[96] = 0
    mem[128] = stor6.length
    mem[64] = (32 * stor6.length) + 160
    s = 0
    t = 0
    while 0 < numAnimals:
        require 0 < stor3.length
        mem[0] = uint32(stor3.field_0)
        mem[32] = 5
        if address(animal[uint32(stor3.field_0)].field_256) != msg.sender:
            s = s
            t = t
            continue 
        require 0 < stor3.length
        require uint8(animal[uint32(stor3.field_0)].field_0) < stor6.length
        mem[(32 * uint8(animal[uint32(stor3.field_0)].field_0)) + 160] = uint8(mem[(32 * uint8(animal[uint32(stor3.field_0)].field_0)) + 160] + 1)
        require uint8(animal[uint32(stor3.field_0)].field_0) < stor7.length
        uint256(stor0[uint8(stor5[uint32(stor3.field_0)].field_0)].field_0)++
        if not uint256(stor0[uint8(stor5[uint32(stor3.field_0)].field_0)].field_0) <= uint256(stor0[uint8(stor5[uint32(stor3.field_0)].field_0)].field_0) + 1:
            idx = sha3(sha3(uint8(animal[uint32(stor3.field_0)].field_0), 0)) + (uint256(stor0[uint8(stor5[uint32(stor3.field_0)].field_0)].field_0) + 8 / 8)
            while sha3(sha3(uint8(animal[uint32(stor3.field_0)].field_0), 0)) + (uint256(stor0[uint8(stor5[uint32(stor3.field_0)].field_0)].field_0) + 7 / 8) > idx:
                uint256(stor[idx].field_0) = 0
                idx = idx + 1
                continue 
        require 0 < stor3.length
        uint256(stor0[uint8(stor5[uint32(stor3.field_0)].field_0)][Mask(253, 0, stor0[uint8(stor5[uint32(stor3.field_0)].field_0)].field_3)].field_0) = !(test266151307() * 256^(4 * stor0[uint8(stor5[uint32(stor3.field_0)].field_0)].field_0 % 8)) and uint256(stor0[uint8(stor5[uint32(stor3.field_0)].field_0)][Mask(253, 0, stor0[uint8(stor5[uint32(stor3.field_0)].field_0)].field_3)].field_0) or 256^(4 * stor0[uint8(stor5[uint32(stor3.field_0)].field_0)].field_0 % 8) * uint32(stor3.field_0)
        numAnimalsXType[uint8(stor5[uint32(stor3.field_0)].field_0)] = uint16(numAnimalsXType[uint8(stor5[uint32(stor3.field_0)].field_0)] - 1)
        numAnimals = uint32(numAnimals - 1)
        if uint32(stor3.field_0) == oldest:
            oldest = 0
        mem[32] = 5
        Mask(136, 0, animal[uint32(stor3.field_0)].field_0) = 0
        address(animal[uint32(stor3.field_0)].field_256) = 0
        require numAnimals < stor3.length
        require 0 < stor3.length
        uint32(stor3.field_0) = stor('array', ('stor', 29, 19, ('name', 'stor8', 8)), ('name', 'stor3', 3))[stor8.field_16 % 8]
        require numAnimals < stor3.length
        mem[0] = 3
        uint256(stor3[stor8.field_19 % 536870912].field_0) = !(test266151307() * 256^(4 * stor8.field_16 % 8)) and uint256(stor3[stor8.field_19 % 536870912].field_0)
        s = sha3(uint32(stor3.field_0), 5)
        t = uint128(uint128(animal[uint32(stor3.field_0)].field_8) - stor('array', ('stor', 7, 1, ('map', ('stor', 32, 0, ('name', 'stor3', 3)), ('name', 'stor5', 5))), ('name', 'stor7', 7))[bool(stor5[uint32(stor3.field_0)].field_0)]) + t
        continue 
    idx = 0
    while uint16(idx) < stor6.length:
        require uint16(idx) < mem[128]
        if mem[(32 * uint16(idx)) + 191 len 1] > 0:
            require uint16(idx) < stor7.length
            require uint16(idx) < mem[128]
            _204 = mem[(32 * uint16(idx)) + 160]
            mem[0] = uint16(idx)
            mem[32] = 0
            _206 = mem[64]
            mem[mem[64]] = 0xf410a26b00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = uint8(idx)
            mem[mem[64] + 68] = 96
            mem[mem[64] + 100] = uint256(stor0[idx << 240].field_0)
            if not uint256(stor0[idx << 240].field_0):
                require ext_code.size(arg1)
                call arg1.0xf410a26b with:
                   value uint8(_204) * stor('array', ('mask_shl', 15, 1, -1, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)] wei
                     gas gas_remaining - 9050 wei
                    args msg.sender, idx << 248, 96, uint256(stor0[idx << 240].field_0)
            else:
                mem[0] = sha3(idx << 240, 0)
                mem[mem[64] + 132] = uint32(stor0[idx << 240].field_0)
                s = mem[64] + 132
                t = 0
                while _206 + (32 * uint256(stor0[idx << 240].field_0)) + 132 > s + 32:
                    mem[s + 32] = uint32(stor0[idx << 240].field_8 * (4 * -(t + 7 / 32) + 1) + t - (t + 7 / 32 * t))
                    s = s + 32
                    t = (4 * -(t + 7 / 32) + 1) + t - (t + 7 / 32 * t)
                    continue 
                require ext_code.size(arg1)
                call arg1.mem[mem[64] len 4] with:
                   value uint8(_204) * stor('array', ('mask_shl', 15, 1, -1, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)] wei
                     gas gas_remaining - 9050 wei
                    args mem[mem[64] + 4 len _206 + (32 * uint256(stor0[idx << 240].field_0)) + -mem[64] + 128]
            require ext_call.success
        idx = idx + 1
        continue 
    if t <= 0:
    call msg.sender with:
       value t wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
    revert 
}

function giveAnimals(uint8 arg1, address arg2) payable {
    mem[64] = 96
    require arg1 < stor6.length
    require stor('array', ('mask_shl', 7, 1, -1, ('param', 'arg1')), ('name', 'stor6', 6))[uint8(arg1)]
    require arg1 < stor6.length
    require msg.value >= stor('array', ('mask_shl', 7, 1, -1, ('param', 'arg1')), ('name', 'stor6', 6))[uint8(arg1)]
    require uint32(uint8(msg.value / stor('array', ('mask_shl', 7, 1, -1, ('param', 'arg1')), ('name', 'stor6', 6))[uint8(arg1)]) + numAnimals) < maxAnimals
    idx = 0
    while uint8(idx) < uint8(msg.value / stor('array', ('mask_shl', 7, 1, -1, ('param', 'arg1')), ('name', 'stor6', 6))[uint8(arg1)]):
        if numAnimals < stor3.length:
            mem[0] = 3
            uint256(stor3[stor8.field_19 % 536870912].field_0) = nextId * 256^(4 * stor8.field_16 % 8) or !(test266151307() * 256^(4 * stor8.field_16 % 8)) and uint256(stor3[stor8.field_19 % 536870912].field_0)
            if nextId >= oldest:
                _65 = mem[64]
                mem[64] = mem[64] + 96
                mem[_65] = arg1
                require arg1 < stor7.length
                mem[_65 + 32] = stor('array', ('mask_shl', 7, 1, -1, ('param', 'arg1')), ('name', 'stor7', 7))[uint8(arg1)]
                mem[_65 + 64] = arg2
            else:
                Mask(224, 0, stor4.field_32) = nextId
                _69 = mem[64]
                mem[64] = mem[64] + 96
                mem[_69] = arg1
                require arg1 < stor7.length
                mem[_69 + 32] = stor('array', ('mask_shl', 7, 1, -1, ('param', 'arg1')), ('name', 'stor7', 7))[uint8(arg1)]
                mem[_69 + 64] = arg2
        else:
            stor3.length++
            if not stor3.length > stor3.length + 1:
                mem[0] = 3
                uint256(stor3[Mask(253, 0, stor3.length.field_3)].field_0) = !(test266151307() * 256^(4 * stor3.length % 8)) and uint256(stor3[Mask(253, 0, stor3.length.field_3)].field_0) or 256^(4 * stor3.length % 8) * nextId
                if nextId >= oldest:
                    _66 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_66] = arg1
                    require arg1 < stor7.length
                    mem[_66 + 32] = stor('array', ('mask_shl', 7, 1, -1, ('param', 'arg1')), ('name', 'stor7', 7))[uint8(arg1)]
                    mem[_66 + 64] = arg2
                else:
                    Mask(224, 0, stor4.field_32) = nextId
                    _71 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_71] = arg1
                    require arg1 < stor7.length
                    mem[_71 + 32] = stor('array', ('mask_shl', 7, 1, -1, ('param', 'arg1')), ('name', 'stor7', 7))[uint8(arg1)]
                    mem[_71 + 64] = arg2
            else:
                if stor3.length + 7 / 8 <= stor3.length + 8 / 8:
                    mem[0] = 3
                    uint256(stor3[Mask(253, 0, stor3.length.field_3)].field_0) = !(test266151307() * 256^(4 * stor3.length % 8)) and uint256(stor3[Mask(253, 0, stor3.length.field_3)].field_0) or 256^(4 * stor3.length % 8) * nextId
                    if nextId >= oldest:
                        _91 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_91] = arg1
                        require arg1 < stor7.length
                        mem[_91 + 32] = stor('array', ('mask_shl', 7, 1, -1, ('param', 'arg1')), ('name', 'stor7', 7))[uint8(arg1)]
                        mem[_91 + 64] = arg2
                    else:
                        Mask(224, 0, stor4.field_32) = nextId
                        _93 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_93] = arg1
                        require arg1 < stor7.length
                        mem[_93 + 32] = stor('array', ('mask_shl', 7, 1, -1, ('param', 'arg1')), ('name', 'stor7', 7))[uint8(arg1)]
                        mem[_93 + 64] = arg2
                else:
                    uint256(stor3[0.125 / stor3.length + 8].field_0) = 0
                    s = sha3(3) + (stor3.length + 8 / 8) + 1
                    while sha3(3) + (stor3.length + 7 / 8) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
                    mem[0] = 3
                    uint256(stor3[Mask(253, 0, stor3.length.field_3)].field_0) = !(test266151307() * 256^(4 * stor3.length % 8)) and uint256(stor3[Mask(253, 0, stor3.length.field_3)].field_0) or 256^(4 * stor3.length % 8) * nextId
                    if nextId >= oldest:
                        _116 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_116] = arg1
                        require arg1 < stor7.length
                        mem[_116 + 32] = stor('array', ('mask_shl', 7, 1, -1, ('param', 'arg1')), ('name', 'stor7', 7))[uint8(arg1)]
                        mem[_116 + 64] = arg2
                    else:
                        Mask(224, 0, stor4.field_32) = nextId
                        _118 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_118] = arg1
                        require arg1 < stor7.length
                        mem[_118 + 32] = stor('array', ('mask_shl', 7, 1, -1, ('param', 'arg1')), ('name', 'stor7', 7))[uint8(arg1)]
                        mem[_118 + 64] = arg2
        mem[0] = nextId
        mem[32] = 5
        uint8(animal[uint32(stor4.field_0)].field_0) = arg1
        uint128(animal[uint32(stor4.field_0)].field_8) = stor('array', ('mask_shl', 7, 1, -1, ('param', 'arg1')), ('name', 'stor7', 7))[uint8(arg1)]
        address(animal[uint32(stor4.field_0)].field_256) = arg2
        numAnimals = uint32(numAnimals + 1)
        nextId = uint32(nextId + 1)
        idx = idx + 1
        continue 
    numAnimalsXType[arg1 << 248] = uint16(uint8(msg.value / stor('array', ('mask_shl', 7, 1, -1, ('param', 'arg1')), ('name', 'stor6', 6))[uint8(arg1)]) + numAnimalsXType[arg1 << 248])
    emit newPurchase(address(arg2), arg1 << 248, msg.value / stor('array', ('mask_shl', 7, 1, -1, ('param', 'arg1')), ('name', 'stor6', 6))[uint8(arg1)] << 248, uint32(nextId - uint8(msg.value / stor('array', ('mask_shl', 7, 1, -1, ('param', 'arg1')), ('name', 'stor6', 6))[uint8(arg1)])));
}

function addAnimals(uint8 arg1) payable {
    mem[64] = 96
    require arg1 < stor6.length
    require stor('array', ('mask_shl', 7, 1, -1, ('param', 'arg1')), ('name', 'stor6', 6))[uint8(arg1)]
    require arg1 < stor6.length
    require msg.value >= stor('array', ('mask_shl', 7, 1, -1, ('param', 'arg1')), ('name', 'stor6', 6))[uint8(arg1)]
    require uint32(uint8(msg.value / stor('array', ('mask_shl', 7, 1, -1, ('param', 'arg1')), ('name', 'stor6', 6))[uint8(arg1)]) + numAnimals) < maxAnimals
    idx = 0
    while uint8(idx) < uint8(msg.value / stor('array', ('mask_shl', 7, 1, -1, ('param', 'arg1')), ('name', 'stor6', 6))[uint8(arg1)]):
        if numAnimals < stor3.length:
            mem[0] = 3
            uint256(stor3[stor8.field_19 % 536870912].field_0) = nextId * 256^(4 * stor8.field_16 % 8) or !(test266151307() * 256^(4 * stor8.field_16 % 8)) and uint256(stor3[stor8.field_19 % 536870912].field_0)
            if nextId >= oldest:
                _65 = mem[64]
                mem[64] = mem[64] + 96
                mem[_65] = arg1
                require arg1 < stor7.length
                mem[_65 + 32] = stor('array', ('mask_shl', 7, 1, -1, ('param', 'arg1')), ('name', 'stor7', 7))[uint8(arg1)]
                mem[_65 + 64] = msg.sender
            else:
                Mask(224, 0, stor4.field_32) = nextId
                _69 = mem[64]
                mem[64] = mem[64] + 96
                mem[_69] = arg1
                require arg1 < stor7.length
                mem[_69 + 32] = stor('array', ('mask_shl', 7, 1, -1, ('param', 'arg1')), ('name', 'stor7', 7))[uint8(arg1)]
                mem[_69 + 64] = msg.sender
        else:
            stor3.length++
            if not stor3.length > stor3.length + 1:
                mem[0] = 3
                uint256(stor3[Mask(253, 0, stor3.length.field_3)].field_0) = !(test266151307() * 256^(4 * stor3.length % 8)) and uint256(stor3[Mask(253, 0, stor3.length.field_3)].field_0) or 256^(4 * stor3.length % 8) * nextId
                if nextId >= oldest:
                    _66 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_66] = arg1
                    require arg1 < stor7.length
                    mem[_66 + 32] = stor('array', ('mask_shl', 7, 1, -1, ('param', 'arg1')), ('name', 'stor7', 7))[uint8(arg1)]
                    mem[_66 + 64] = msg.sender
                else:
                    Mask(224, 0, stor4.field_32) = nextId
                    _71 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_71] = arg1
                    require arg1 < stor7.length
                    mem[_71 + 32] = stor('array', ('mask_shl', 7, 1, -1, ('param', 'arg1')), ('name', 'stor7', 7))[uint8(arg1)]
                    mem[_71 + 64] = msg.sender
            else:
                if stor3.length + 7 / 8 <= stor3.length + 8 / 8:
                    mem[0] = 3
                    uint256(stor3[Mask(253, 0, stor3.length.field_3)].field_0) = !(test266151307() * 256^(4 * stor3.length % 8)) and uint256(stor3[Mask(253, 0, stor3.length.field_3)].field_0) or 256^(4 * stor3.length % 8) * nextId
                    if nextId >= oldest:
                        _91 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_91] = arg1
                        require arg1 < stor7.length
                        mem[_91 + 32] = stor('array', ('mask_shl', 7, 1, -1, ('param', 'arg1')), ('name', 'stor7', 7))[uint8(arg1)]
                        mem[_91 + 64] = msg.sender
                    else:
                        Mask(224, 0, stor4.field_32) = nextId
                        _93 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_93] = arg1
                        require arg1 < stor7.length
                        mem[_93 + 32] = stor('array', ('mask_shl', 7, 1, -1, ('param', 'arg1')), ('name', 'stor7', 7))[uint8(arg1)]
                        mem[_93 + 64] = msg.sender
                else:
                    uint256(stor3[0.125 / stor3.length + 8].field_0) = 0
                    s = sha3(3) + (stor3.length + 8 / 8) + 1
                    while sha3(3) + (stor3.length + 7 / 8) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
                    mem[0] = 3
                    uint256(stor3[Mask(253, 0, stor3.length.field_3)].field_0) = !(test266151307() * 256^(4 * stor3.length % 8)) and uint256(stor3[Mask(253, 0, stor3.length.field_3)].field_0) or 256^(4 * stor3.length % 8) * nextId
                    if nextId >= oldest:
                        _116 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_116] = arg1
                        require arg1 < stor7.length
                        mem[_116 + 32] = stor('array', ('mask_shl', 7, 1, -1, ('param', 'arg1')), ('name', 'stor7', 7))[uint8(arg1)]
                        mem[_116 + 64] = msg.sender
                    else:
                        Mask(224, 0, stor4.field_32) = nextId
                        _118 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_118] = arg1
                        require arg1 < stor7.length
                        mem[_118 + 32] = stor('array', ('mask_shl', 7, 1, -1, ('param', 'arg1')), ('name', 'stor7', 7))[uint8(arg1)]
                        mem[_118 + 64] = msg.sender
        mem[0] = nextId
        mem[32] = 5
        uint8(animal[uint32(stor4.field_0)].field_0) = arg1
        uint128(animal[uint32(stor4.field_0)].field_8) = stor('array', ('mask_shl', 7, 1, -1, ('param', 'arg1')), ('name', 'stor7', 7))[uint8(arg1)]
        address(animal[uint32(stor4.field_0)].field_256) = msg.sender
        numAnimals = uint32(numAnimals + 1)
        nextId = uint32(nextId + 1)
        idx = idx + 1
        continue 
    numAnimalsXType[arg1 << 248] = uint16(uint8(msg.value / stor('array', ('mask_shl', 7, 1, -1, ('param', 'arg1')), ('name', 'stor6', 6))[uint8(arg1)]) + numAnimalsXType[arg1 << 248])
    emit newPurchase(msg.sender, arg1 << 248, msg.value / stor('array', ('mask_shl', 7, 1, -1, ('param', 'arg1')), ('name', 'stor6', 6))[uint8(arg1)] << 248, uint32(nextId - uint8(msg.value / stor('array', ('mask_shl', 7, 1, -1, ('param', 'arg1')), ('name', 'stor6', 6))[uint8(arg1)])));
}

function receive(address arg1, uint8 arg2, uint32[] arg3) payable {
    mem[64] = (32 * arg3.length) + 128
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require uint8(stor8.field_8)
    require arg2 < stor7.length
    require msg.value >= arg3.length * stor('array', ('mask_shl', 7, 1, -1, ('param', 'arg2')), ('name', 'stor7', 7))[uint8(arg2)]
    idx = 0
    while uint8(idx) < arg3.length:
        require uint8(idx) < mem[96]
        mem[32] = 5
        if uint128(animal[mem[(32 * uint8(idx)) + 156 len 4]].field_8):
            if numAnimals < stor3.length:
                mem[0] = 3
                uint256(stor3[stor8.field_19 % 536870912].field_0) = nextId * 256^(4 * stor8.field_16 % 8) or !(test266151307() * 256^(4 * stor8.field_16 % 8)) and uint256(stor3[stor8.field_19 % 536870912].field_0)
                if nextId >= oldest:
                    _128 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_128] = arg2
                    require arg2 < stor7.length
                    mem[_128 + 32] = stor('array', ('mask_shl', 7, 1, -1, ('param', 'arg2')), ('name', 'stor7', 7))[uint8(arg2)]
                    mem[_128 + 64] = arg1
                else:
                    Mask(224, 0, stor4.field_32) = nextId
                    _132 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_132] = arg2
                    require arg2 < stor7.length
                    mem[_132 + 32] = stor('array', ('mask_shl', 7, 1, -1, ('param', 'arg2')), ('name', 'stor7', 7))[uint8(arg2)]
                    mem[_132 + 64] = arg1
            else:
                stor3.length++
                if not stor3.length > stor3.length + 1:
                    mem[0] = 3
                    uint256(stor3[Mask(253, 0, stor3.length.field_3)].field_0) = !(test266151307() * 256^(4 * stor3.length % 8)) and uint256(stor3[Mask(253, 0, stor3.length.field_3)].field_0) or 256^(4 * stor3.length % 8) * nextId
                    if nextId >= oldest:
                        _129 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_129] = arg2
                        require arg2 < stor7.length
                        mem[_129 + 32] = stor('array', ('mask_shl', 7, 1, -1, ('param', 'arg2')), ('name', 'stor7', 7))[uint8(arg2)]
                        mem[_129 + 64] = arg1
                    else:
                        Mask(224, 0, stor4.field_32) = nextId
                        _135 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_135] = arg2
                        require arg2 < stor7.length
                        mem[_135 + 32] = stor('array', ('mask_shl', 7, 1, -1, ('param', 'arg2')), ('name', 'stor7', 7))[uint8(arg2)]
                        mem[_135 + 64] = arg1
                else:
                    if stor3.length + 7 / 8 <= stor3.length + 8 / 8:
                        mem[0] = 3
                        uint256(stor3[Mask(253, 0, stor3.length.field_3)].field_0) = !(test266151307() * 256^(4 * stor3.length % 8)) and uint256(stor3[Mask(253, 0, stor3.length.field_3)].field_0) or 256^(4 * stor3.length % 8) * nextId
                        if nextId >= oldest:
                            _166 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_166] = arg2
                            require arg2 < stor7.length
                            mem[_166 + 32] = stor('array', ('mask_shl', 7, 1, -1, ('param', 'arg2')), ('name', 'stor7', 7))[uint8(arg2)]
                            mem[_166 + 64] = arg1
                        else:
                            Mask(224, 0, stor4.field_32) = nextId
                            _178 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_178] = arg2
                            require arg2 < stor7.length
                            mem[_178 + 32] = stor('array', ('mask_shl', 7, 1, -1, ('param', 'arg2')), ('name', 'stor7', 7))[uint8(arg2)]
                            mem[_178 + 64] = arg1
                    else:
                        uint256(stor3[0.125 / stor3.length + 8].field_0) = 0
                        s = sha3(3) + (stor3.length + 8 / 8) + 1
                        while sha3(3) + (stor3.length + 7 / 8) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                        mem[0] = 3
                        uint256(stor3[Mask(253, 0, stor3.length.field_3)].field_0) = !(test266151307() * 256^(4 * stor3.length % 8)) and uint256(stor3[Mask(253, 0, stor3.length.field_3)].field_0) or 256^(4 * stor3.length % 8) * nextId
                        if nextId >= oldest:
                            _230 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_230] = arg2
                            require arg2 < stor7.length
                            mem[_230 + 32] = stor('array', ('mask_shl', 7, 1, -1, ('param', 'arg2')), ('name', 'stor7', 7))[uint8(arg2)]
                            mem[_230 + 64] = arg1
                        else:
                            Mask(224, 0, stor4.field_32) = nextId
                            _233 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_233] = arg2
                            require arg2 < stor7.length
                            mem[_233 + 32] = stor('array', ('mask_shl', 7, 1, -1, ('param', 'arg2')), ('name', 'stor7', 7))[uint8(arg2)]
                            mem[_233 + 64] = arg1
            mem[0] = nextId
            mem[32] = 5
            uint8(animal[uint32(stor4.field_0)].field_0) = arg2
            uint128(animal[uint32(stor4.field_0)].field_8) = stor('array', ('mask_shl', 7, 1, -1, ('param', 'arg2')), ('name', 'stor7', 7))[uint8(arg2)]
            address(animal[uint32(stor4.field_0)].field_256) = arg1
            numAnimals = uint32(numAnimals + 1)
            nextId = uint32(nextId + 1)
        else:
            require uint8(idx) < mem[96]
            _121 = mem[(32 * uint8(idx)) + 128]
            if numAnimals < stor3.length:
                mem[0] = 3
                uint256(stor3[stor8.field_19 % 536870912].field_0) = mem[(32 * uint8(idx)) + 156 len 4] * 256^(4 * stor8.field_16 % 8) or !(test266151307() * 256^(4 * stor8.field_16 % 8)) and uint256(stor3[stor8.field_19 % 536870912].field_0)
                if mem[(32 * uint8(idx)) + 156 len 4] >= oldest:
                    _133 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_133] = arg2
                    require arg2 < stor7.length
                    mem[_133 + 32] = stor('array', ('mask_shl', 7, 1, -1, ('param', 'arg2')), ('name', 'stor7', 7))[uint8(arg2)]
                    mem[_133 + 64] = arg1
                else:
                    oldest = mem[(32 * uint8(idx)) + 156 len 4]
                    _144 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_144] = arg2
                    require arg2 < stor7.length
                    mem[_144 + 32] = stor('array', ('mask_shl', 7, 1, -1, ('param', 'arg2')), ('name', 'stor7', 7))[uint8(arg2)]
                    mem[_144 + 64] = arg1
            else:
                stor3.length++
                if not stor3.length > stor3.length + 1:
                    mem[0] = 3
                    uint256(stor3[Mask(253, 0, stor3.length.field_3)].field_0) = !(test266151307() * 256^(4 * stor3.length % 8)) and uint256(stor3[Mask(253, 0, stor3.length.field_3)].field_0) or 256^(4 * stor3.length % 8) * mem[(32 * uint8(idx)) + 156 len 4]
                    if mem[(32 * uint8(idx)) + 156 len 4] >= oldest:
                        _141 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_141] = arg2
                        require arg2 < stor7.length
                        mem[_141 + 32] = stor('array', ('mask_shl', 7, 1, -1, ('param', 'arg2')), ('name', 'stor7', 7))[uint8(arg2)]
                        mem[_141 + 64] = arg1
                    else:
                        oldest = mem[(32 * uint8(idx)) + 156 len 4]
                        _156 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_156] = arg2
                        require arg2 < stor7.length
                        mem[_156 + 32] = stor('array', ('mask_shl', 7, 1, -1, ('param', 'arg2')), ('name', 'stor7', 7))[uint8(arg2)]
                        mem[_156 + 64] = arg1
                else:
                    if stor3.length + 7 / 8 <= stor3.length + 8 / 8:
                        mem[0] = 3
                        uint256(stor3[Mask(253, 0, stor3.length.field_3)].field_0) = !(test266151307() * 256^(4 * stor3.length % 8)) and uint256(stor3[Mask(253, 0, stor3.length.field_3)].field_0) or 256^(4 * stor3.length % 8) * mem[(32 * uint8(idx)) + 156 len 4]
                        if mem[(32 * uint8(idx)) + 156 len 4] >= oldest:
                            _183 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_183] = arg2
                            require arg2 < stor7.length
                            mem[_183 + 32] = stor('array', ('mask_shl', 7, 1, -1, ('param', 'arg2')), ('name', 'stor7', 7))[uint8(arg2)]
                            mem[_183 + 64] = arg1
                        else:
                            oldest = mem[(32 * uint8(idx)) + 156 len 4]
                            _191 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_191] = arg2
                            require arg2 < stor7.length
                            mem[_191 + 32] = stor('array', ('mask_shl', 7, 1, -1, ('param', 'arg2')), ('name', 'stor7', 7))[uint8(arg2)]
                            mem[_191 + 64] = arg1
                    else:
                        uint256(stor3[0.125 / stor3.length + 8].field_0) = 0
                        s = sha3(3) + (stor3.length + 8 / 8) + 1
                        while sha3(3) + (stor3.length + 7 / 8) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                        mem[0] = 3
                        uint256(stor3[Mask(253, 0, stor3.length.field_3)].field_0) = !(test266151307() * 256^(4 * stor3.length % 8)) and uint256(stor3[Mask(253, 0, stor3.length.field_3)].field_0) or 256^(4 * stor3.length % 8) * mem[(32 * uint8(idx)) + 156 len 4]
                        if mem[(32 * uint8(idx)) + 156 len 4] >= oldest:
                            _231 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_231] = arg2
                            require arg2 < stor7.length
                            mem[_231 + 32] = stor('array', ('mask_shl', 7, 1, -1, ('param', 'arg2')), ('name', 'stor7', 7))[uint8(arg2)]
                            mem[_231 + 64] = arg1
                        else:
                            oldest = mem[(32 * uint8(idx)) + 156 len 4]
                            _235 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_235] = arg2
                            require arg2 < stor7.length
                            mem[_235 + 32] = stor('array', ('mask_shl', 7, 1, -1, ('param', 'arg2')), ('name', 'stor7', 7))[uint8(arg2)]
                            mem[_235 + 64] = arg1
            mem[0] = uint32(_121)
            mem[32] = 5
            uint8(animal[_121 << 224].field_0) = arg2
            uint128(animal[_121 << 224].field_8) = stor('array', ('mask_shl', 7, 1, -1, ('param', 'arg2')), ('name', 'stor7', 7))[uint8(arg2)]
            address(animal[_121 << 224].field_256) = arg1
            numAnimals = uint32(numAnimals + 1)
        idx = idx + 1
        continue 
}



}
