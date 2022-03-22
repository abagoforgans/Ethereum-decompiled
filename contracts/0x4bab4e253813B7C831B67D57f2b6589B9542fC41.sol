contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = 0x5aaeb6053f3e94c9b9a09f33669435e7ef1beaed
    return code.data[56 len 1795]
}



// =====================  Runtime code  =====================


address stor0;
mapping of uint256 stor1;
array of struct stor2;

function killContract() payable {
    require msg.sender == stor0
    selfdestruct(stor0)
}

function _fallback() payable {
    idx = 0
    while idx < stor2.length:
        mem[0] = 2
        call address(stor[code.data[1763 len 32] + (2 * idx)]) with:
           value msg.value / stor2.length wei
             gas 0 wei
        idx = idx + 1
        continue 
}

function changeMemberAddress(address arg1) payable {
    require stor1[address(msg.sender)] < stor2.length
    if address(stor[code.data[1763 len 32] + (2 * stor1[address(msg.sender)])]) == msg.sender:
        require stor1[address(msg.sender)] < stor2.length
        uint256(stor2[stor1[address(msg.sender)]].field_0) = arg1 or Mask(96, 160, uint256(stor2[stor1[address(msg.sender)]].field_0))
}

function sub_fc9fc96e(?) payable {
    require arg1 < stor2.length
    mem[192] = uint256(stor[sha3((2 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf)])
    idx = 192
    s = 0
    while stor[(2 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf].length + 192 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((2 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    return address(stor[(2 * arg1) + code.data[1763 len 32]]), 
           Array(len=stor[(2 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf].length, data=mem[192 len stor[(2 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf].length + (floor32(stor[(2 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf].length - 1) + -stor[(2 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf].length + 32 % 32)])
}

function addMember(address arg1, string arg2) payable {
    require stor0 == msg.sender
    stor1[address(arg1)] = stor2.length
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
    uint256(stor2[stor2.length].field_0) = arg1 or Mask(96, 160, uint256(stor2[stor2.length].field_0))
    uint256(stor[sha3((2 * stor2.length) + ('name', 'stor2', 2) + 1)][].field_0) = Array(len=arg2.length, data=arg2[all])
}

function removeMember(address arg1) payable {
    require msg.sender == stor0
    require stor1[address(arg1)] < stor2.length
    address(stor2[stor1[address(arg1)]].field_0) = 0
    uint256(stor2[stor1[address(arg1)]].field_256) = 0
    if 31 < stor[(2 * stor1[address(arg1)]) + ('name', 'stor2', 2) + 1].length:
        idx = 0
        while stor[(2 * stor1[address(arg1)]) + ('name', 'stor2', 2) + 1].length + 31 / 32 > idx:
            uint256(stor[idx + sha3((2 * stor1[address(arg1)]) + ('name', 'stor2', 2) + 1)].field_0) = 0
            idx = idx + 1
            continue 
    idx = stor1[address(arg1)]
    while idx < stor2.length - 1:
        require idx + 1 < stor2.length
        require idx < stor2.length
        address(stor[code.data[1763 len 32] + (2 * idx)]) = address(stor[code.data[1763 len 32] + (2 * idx + 1)])
        mem[0] = code.data[1763 len 32] + (2 * idx) + 1
        if 31 >= stor[code.data[1763 len 32] + (2 * idx + 1) + 1].length:
            uint256(stor[code.data[1763 len 32] + (2 * idx) + 1]) = uint256(stor[code.data[1763 len 32] + (2 * idx + 1) + 1])
            s = sha3(code.data[1763 len 32] + (2 * s) + 1)
            while sha3(code.data[1763 len 32] + (2 * s) + 1) + (stor[code.data[1763 len 32] + (2 * s) + 1].length + 31 / 32) > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
            s = s + 1
            continue 
        uint256(stor[code.data[1763 len 32] + (2 * idx) + 1]) = Mask(255, 1, uint256(stor[code.data[1763 len 32] + (2 * idx + 1) + 1]) and (256 * not bool(stor[code.data[1763 len 32] + (2 * idx + 1) + 1])) - 1) + 1
        if not Mask(255, 1, uint256(stor[code.data[1763 len 32] + (2 * idx + 1) + 1]) and (256 * not bool(stor[code.data[1763 len 32] + (2 * idx + 1) + 1])) - 1):
            s = sha3(code.data[1763 len 32] + (2 * s) + 1)
            while sha3(code.data[1763 len 32] + (2 * s) + 1) + (stor[code.data[1763 len 32] + (2 * s) + 1].length + 31 / 32) > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
            s = s + 1
            continue 
        mem[0] = code.data[1763 len 32] + (2 * idx + 1) + 1
        s = sha3(code.data[1763 len 32] + (2 * idx) + 1)
        t = sha3(code.data[1763 len 32] + (2 * idx + 1) + 1)
        while sha3(code.data[1763 len 32] + (2 * idx + 1) + 1) + (stor[code.data[1763 len 32] + (2 * idx + 1) + 1].length + 31 / 32) > t:
            uint256(stor[s]) = uint256(stor[t])
            s = s + 1
            t = t + 1
            continue 
        t = s
        while sha3(code.data[1763 len 32] + (2 * idx) + 1) + (stor[code.data[1763 len 32] + (2 * idx) + 1].length + 31 / 32) > t:
            uint256(stor[t]) = 0
            t = t + 1
            continue 
        idx = idx + 1
        continue 
    stor2.length--
    if not stor2.length <= stor2.length - 1:
        mem[0] = 2
        idx = 2 * stor2.length - 1
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
}



}
