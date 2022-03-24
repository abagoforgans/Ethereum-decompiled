contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor2;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor2++
    if not stor2 <= stor2 + 1:
        mem[0] = 2
        idx = (3 * stor2) + 3
        while sha3(2) + (3 * stor2) > idx + sha3(mem[0]):
            address(stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 1].length:
                mem[0] = idx + sha3(mem[0]) + 1
                s = sha3(idx + sha3(mem[0]) + 1)
                while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            uint8(stor[idx + sha3(mem[0]) + 2]) = 0
            idx = idx + 3
            continue 
    return code.data[222 len 2580]
}



// =====================  Runtime code  =====================


address registrarAddress;
uint256 stor0;
mapping of uint256 registrantIndex;
array of struct stor2;
array of uint8 stor29102676481673041902632991033461445430619272659676223336789171408008386403024;

function registrar() payable {
    return address(registrarAddress)
}

function registrantIndex(address arg1) payable {
    return registrantIndex[arg1]
}

function _fallback() payable {
    revert 
}

function setNextRegistrar(address arg1) payable {
    require msg.value <= 0
    if address(registrarAddress) == msg.sender:
        uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
        return 1
    emit Error(1);
    return 0
}

function isActiveRegistrant(address arg1) payable {
    if registrantIndex[address(arg1)] <= 0:
        return (registrantIndex[address(arg1)] > 0)
    require registrantIndex[address(arg1)] < stor2.length
    return bool(uint8(stor4057[stor1[address(arg1)]]))
}

function getRegistrants() payable {
    mem[160] = stor2.length - 1
    idx = 1
    while idx < stor2.length:
        mem[0] = 2
        require idx - 1 < mem[160]
        mem[(32 * idx - 1) + 192] = address(stor2[idx].field_0)
        idx = idx + 1
        continue 
    mem[(32 * stor2.length - 1) + 192] = 32
    mem[(32 * stor2.length - 1) + 224] = mem[160]
    mem[(32 * stor2.length - 1) + 256 len 32 * mem[160]] = mem[192 len 32 * mem[160]]
    return 32, mem[(32 * stor2.length - 1) + 224 len (32 * mem[160]) + 32]
}

function sub_f5a1abef(?) payable {
    require msg.value <= 0
    if address(registrarAddress) != msg.sender:
        emit Error(1);
        return 0
    if not registrantIndex[address(arg1)]:
        emit Error(1);
        return 0
    require registrantIndex[address(arg1)] < stor2.length
    uint256(stor[sha3((3 * stor1[address(arg1)]) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf)][]) = Array(len=arg2.length, data=arg2[all])
    uint256(stor4057[stor1[address(arg1)]]) = arg3 or Mask(248, 8, uint256(stor4057[stor1[address(arg1)]]))
    emit 0x4d8b0a8d: msg.sender, Array(len=arg2.length, data=arg2[all]), bool(arg3), arg1
    return 1
}

function registrants(uint256 arg1) payable {
    require arg1 < stor2.length
    mem[224] = uint256(stor[sha3((3 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf)])
    idx = 224
    s = 0
    while stor[(3 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf].length + 224 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((3 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    return address(stor2[arg1].field_0), 
           Array(len=stor[(3 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf].length, data=mem[224 len stor[(3 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf].length + (floor32(stor[(3 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf].length - 1) + -stor[(3 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf].length + 32 % 32)]),
           bool(uint8(stor4057[arg1]))
}

function sub_36d6da55(?) payable {
    require msg.value <= 0
    if address(registrarAddress) != msg.sender:
        emit Error(1);
        return 0
    if registrantIndex[address(arg1)] > 0:
        emit Error(1);
        return 0
    stor2.length++
    if not stor2.length <= stor2.length + 1:
        mem[0] = 2
        idx = (3 * stor2.length) + 3
        while sha3(2) + (3 * stor2.length) > idx + sha3(mem[0]):
            address(stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 1].length:
                mem[0] = idx + sha3(mem[0]) + 1
                s = sha3(idx + sha3(mem[0]) + 1)
                while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            uint8(stor[idx + sha3(mem[0]) + 2]) = 0
            idx = idx + 3
            continue 
    require stor2.length < stor2.length
    uint256(stor2[stor2.length].field_0) = Mask(96, 0, stor2[stor2.length].field_160)
    uint256(stor[sha3((3 * stor2.length) + ('name', 'stor2', 2) + 1)][].field_0) = Array(len=arg2.length, data=arg2[all])
    uint8(stor2[stor2.length].field_512) = 1
    registrantIndex[address(arg1)] = stor2.length
    emit 0x2bbe9d1b: msg.sender, Array(len=arg2.length, data=arg2[all]), arg1
    return 1
}



}
