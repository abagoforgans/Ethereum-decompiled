contract main {


// =======================  Init code  ======================


array of uint256 stor2;
array of uint256 stor29102676481673041902632991033461445430619272659676223336789171408008386403023;

function _fallback() payable {
    stor2.length++
    if not stor2.length <= stor2.length + 1:
        mem[0] = 2
        idx = 2 * stor2.length + 1
        while sha3(2) + (2 * stor2.length) > idx + sha3(mem[0]):
            address(stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 1].length:
                mem[0] = idx + sha3(mem[0]) + 1
                s = sha3(idx + sha3(mem[0]) + 1)
                while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
    require 0 < stor2.length
    stor2 = 0
    bool(stor4057.length) = 0
    uint255(stor4057.length.field_1) = 0
    Mask(248, 0, stor4057.length.field_8) = mem[192 len 31]
    idx = sha3(0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf)
    while sha3(0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf) + (stor4057.length + 31 / 32) > idx:
        uint256(stor[idx]) = 0
        idx = idx + 1
        continue 
    return code.data[452 len 3087]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
mapping of uint256 memberId;
array of struct stor2;

function memberId(address arg1) payable {
    return memberId[arg1]
}

function owner() payable {
    return address(owner)
}

function killContract() payable {
    require msg.sender == address(owner)
    selfdestruct(address(owner))
}

function claimOwnership() payable {
    require not address(owner)
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
}

function transferOwnership(address arg1) payable {
    require address(owner) == msg.sender
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function _fallback() payable {
    idx = 1
    while idx < stor2.length:
        mem[0] = 2
        call address(stor[code.data[3055 len 32] + (2 * idx)]) with:
           value msg.value / stor2.length - 1 wei
             gas 0 wei
        idx = idx + 1
        continue 
    emit 0xc6737e1a: msg.value, stor2.length - 1, msg.value / stor2.length - 1
}

function members(uint256 arg1) payable {
    require arg1 < stor2.length
    mem[192] = uint256(stor[sha3((2 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf)])
    idx = 192
    s = 0
    while stor[(2 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf].length + 192 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((2 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    return address(stor[(2 * arg1) + code.data[3055 len 32]]), 
           Array(len=stor[(2 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf].length, data=mem[192 len stor[(2 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf].length + (floor32(stor[(2 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf].length - 1) + -stor[(2 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf].length + 32 % 32)])
}

function addMember(address arg1, string arg2) payable {
    require msg.sender == address(owner)
    require not memberId[address(arg1)]
    stor2.length++
    if not stor2.length <= stor2.length + 1:
        mem[0] = 2
        idx = 2 * stor2.length + 1
        while sha3(2) + (2 * stor2.length) > idx + sha3(mem[0]):
            address(stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 1].length:
                mem[0] = idx + sha3(mem[0]) + 1
                s = sha3(idx + sha3(mem[0]) + 1)
                while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
    memberId[address(arg1)] = stor2.length
    require stor2.length < stor2.length
    uint256(stor2[stor2.length].field_0) = Mask(96, 0, stor2[stor2.length].field_160)
    uint256(stor[sha3((2 * stor2.length) + ('name', 'stor2', 2) + 1)][].field_0) = Array(len=arg2.length, data=arg2[all])
    emit 0xa93805c6: address(arg1), Array(len=arg2.length, data=arg2[all]), stor2.length
}

function changeMemberAddress(address arg1) payable {
    require memberId[address(msg.sender)] < stor2.length
    if address(stor[code.data[3055 len 32] + (2 * stor1[address(msg.sender)])]) == msg.sender:
        require memberId[address(msg.sender)] < stor2.length
        uint256(stor2[stor1[address(msg.sender)]].field_0) = arg1 or Mask(96, 160, uint256(stor2[stor1[address(msg.sender)]].field_0))
        mem[224] = uint256(stor[sha3((2 * stor1[address(msg.sender)]) + ('name', 'stor2', 2) + 1)].field_0)
        idx = 224
        s = 0
        while stor[(2 * stor1[address(msg.sender)]) + ('name', 'stor2', 2) + 1].length + 224 > idx + 32:
            mem[idx + 32] = uint256(stor[s + sha3((2 * stor1[address(msg.sender)]) + ('name', 'stor2', 2) + 1)].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        emit 0x7310af7a: address(arg1), Array(len=stor[(2 * stor1[address(msg.sender)]) + ('name', 'stor2', 2) + 1].length, data=mem[224 len stor[(2 * stor1[address(msg.sender)]) + ('name', 'stor2', 2) + 1].length + (floor32(stor[(2 * stor1[address(msg.sender)]) + ('name', 'stor2', 2) + 1].length - 1) + -stor[(2 * stor1[address(msg.sender)]) + ('name', 'stor2', 2) + 1].length + 32 % 32)]), memberId[address(msg.sender)]
}

function removeMember(address arg1) payable {
    require msg.sender == address(owner)
    require memberId[address(arg1)]
    require memberId[address(arg1)] < stor2.length
    mem[160] = uint256(stor[sha3((2 * stor1[address(arg1)]) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf)])
    idx = 160
    s = 0
    while stor[(2 * stor1[address(arg1)]) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf].length + 128 > idx:
        mem[idx + 32] = uint256(stor[s + sha3((2 * stor1[address(arg1)]) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    require memberId[address(arg1)] < stor2.length
    address(stor2[stor1[address(arg1)]].field_0) = 0
    uint256(stor2[stor1[address(arg1)]].field_256) = 0
    if 31 < stor[(2 * stor1[address(arg1)]) + ('name', 'stor2', 2) + 1].length:
        idx = 0
        while stor[(2 * stor1[address(arg1)]) + ('name', 'stor2', 2) + 1].length + 31 / 32 > idx:
            uint256(stor[idx + sha3((2 * stor1[address(arg1)]) + ('name', 'stor2', 2) + 1)].field_0) = 0
            idx = idx + 1
            continue 
    memberId[address(arg1)] = 0
    idx = memberId[address(arg1)]
    while idx < stor2.length - 1:
        require idx + 1 < stor2.length
        require idx < stor2.length
        address(stor[code.data[3055 len 32] + (2 * idx)]) = address(stor[code.data[3055 len 32] + (2 * idx + 1)])
        if 31 >= stor[code.data[3055 len 32] + (2 * idx + 1) + 1].length:
            uint256(stor[code.data[3055 len 32] + (2 * idx) + 1]) = uint256(stor[code.data[3055 len 32] + (2 * idx + 1) + 1])
            s = sha3(code.data[3055 len 32] + (2 * idx) + 1)
            while sha3(code.data[3055 len 32] + (2 * idx) + 1) + (stor[code.data[3055 len 32] + (2 * idx) + 1].length + 31 / 32) > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
        else:
            uint256(stor[code.data[3055 len 32] + (2 * idx) + 1]) = Mask(255, 1, uint256(stor[code.data[3055 len 32] + (2 * idx + 1) + 1]) and (256 * not bool(stor[code.data[3055 len 32] + (2 * idx + 1) + 1])) - 1) + 1
            if not Mask(255, 1, uint256(stor[code.data[3055 len 32] + (2 * idx + 1) + 1]) and (256 * not bool(stor[code.data[3055 len 32] + (2 * idx + 1) + 1])) - 1):
                s = sha3(code.data[3055 len 32] + (2 * idx) + 1)
                while sha3(code.data[3055 len 32] + (2 * idx) + 1) + (stor[code.data[3055 len 32] + (2 * idx) + 1].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            else:
                s = sha3(code.data[3055 len 32] + (2 * idx) + 1)
                t = sha3(code.data[3055 len 32] + (2 * idx + 1) + 1)
                while sha3(code.data[3055 len 32] + (2 * idx + 1) + 1) + (stor[code.data[3055 len 32] + (2 * idx + 1) + 1].length + 31 / 32) > t:
                    uint256(stor[s]) = uint256(stor[t])
                    s = s + 1
                    t = t + 1
                    continue 
                t = s
                while sha3(code.data[3055 len 32] + (2 * idx) + 1) + (stor[code.data[3055 len 32] + (2 * idx) + 1].length + 31 / 32) > t:
                    uint256(stor[t]) = 0
                    t = t + 1
                    continue 
        require idx < stor2.length
        mem[0] = address(stor[code.data[3055 len 32] + (2 * idx)])
        mem[32] = 1
        memberId[address(stor[code.data[3055 len 32] + (2 * idx)])] = idx
        idx = idx + 1
        continue 
    stor2.length--
    if not stor2.length <= stor2.length - 1:
        mem[0] = 2
        s = 2 * stor2.length - 1
        while sha3(2) + (2 * stor2.length) > s + sha3(mem[0]):
            address(stor[s + sha3(mem[0])]) = 0
            uint256(stor[s + sha3(mem[0]) + 1]) = 0
            if 31 < stor[s + sha3(mem[0]) + 1].length:
                mem[0] = s + sha3(mem[0]) + 1
                t = sha3(s + sha3(mem[0]) + 1)
                while sha3(s + sha3(mem[0]) + 1) + (stor[s + sha3(mem[0]) + 1].length + 31 / 32) > t:
                    uint256(stor[t]) = 0
                    t = t + 1
                    continue 
            s = s + 1
            continue 
    emit 0x5a8b4fde: address(arg1), Array(len=stor[(2 * stor1[address(arg1)]) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf].length, data=mem[160 len stor[(2 * stor1[address(arg1)]) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf].length]), memberId[address(arg1)]
}



}
