contract main {


// =======================  Init code  ======================


array of uint256 stor2;

function _fallback() payable {
    stor2.length++
    if not stor2.length <= stor2.length + 1:
        mem[0] = 2
        idx = (7 * stor2.length) + 7
        while sha3(2) + (7 * stor2.length) > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])]) = 0
            uint8(stor[idx + sha3(mem[0]) + 1]) = 0
            uint256(stor[idx + sha3(mem[0]) + 2]) = 0
            if 31 >= stor[idx + sha3(mem[0]) + 2].length:
                uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                if 31 >= stor[idx + sha3(mem[0]) + 3].length:
                    Mask(168, 0, stor[idx + sha3(mem[0]) + 4]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 6]) = 0
                    mem[0] = idx + sha3(mem[0]) + 6
                    s = sha3(s + sha3(mem[0]) + 6)
                    while sha3(s + sha3(mem[0]) + 6) + (3 * uint256(stor[s + sha3(mem[0]) + 6])) > s + sha3(mem[0]):
                        address(stor[s + sha3(mem[0])]) = 0
                        uint256(stor[s + sha3(mem[0]) + 2]) = 0
                        s = s + 1
                        continue 
                    s = s + 1
                    continue 
                s = sha3(idx + sha3(mem[0]) + 3)
                while sha3(idx + sha3(mem[0]) + 3) + (stor[idx + sha3(mem[0]) + 3].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            else:
                s = sha3(idx + sha3(mem[0]) + 2)
                while sha3(idx + sha3(mem[0]) + 2) + (stor[idx + sha3(mem[0]) + 2].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
                uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                if 31 < stor[idx + sha3(mem[0]) + 3].length:
                    s = sha3(idx + sha3(mem[0]) + 3)
                    while sha3(idx + sha3(mem[0]) + 3) + (stor[idx + sha3(mem[0]) + 3].length + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
            Mask(168, 0, stor[idx + sha3(mem[0]) + 4]) = 0
            uint256(stor[idx + sha3(mem[0]) + 6]) = 0
            mem[0] = idx + sha3(mem[0]) + 6
            s = sha3(idx + sha3(mem[0]) + 6)
            while sha3(idx + sha3(mem[0]) + 6) + (3 * uint256(stor[idx + sha3(mem[0]) + 6])) > s:
                address(stor[s]) = 0
                stor2[s] = 0
                s = s + 1
                continue 
            idx = idx + 1
            continue 
    return code.data[352 len 6860]
}



// =====================  Runtime code  =====================


#
#  - totalSupply(bytes32 arg1)
#
const recoverAccount(address arg1, address arg2) = 0


uint256 sub_aab9af67;
mapping of uint256 sub_c4242719;
array of struct stor2;
array of uint256 stor3;
array of uint256 stor5;
array of uint8 stor29102676481673041902632991033461445430619272659676223336789171408008386403023;
array of uint256 stor39012587308167444720038037897580552815671242007440487229414614828470849747802;
array of struct stor96004006229659009655076882081544132462202562585060452342585144457365593242458;

function sub_aab9af67(?) payable {
    return sub_aab9af67
}

function sub_c4242719(?) payable {
    return sub_c4242719[arg1]
}

function _fallback() payable {
  stop
}

function baseUnit(bytes32 arg1) payable {
    if 0 == sub_c4242719[arg1]:
        return 0
    require sub_c4242719[arg1] < stor2.length
    return uint8(stor4057[stor1[arg1]])
}

function owner(bytes32 arg1) payable {
    if 0 == sub_c4242719[arg1]:
        return 0
    require sub_c4242719[arg1] < stor2.length
    return address(storD440[stor1[arg1]].field_8)
}

function isReissuable(bytes32 arg1) payable {
    if 0 == sub_c4242719[arg1]:
        return 0
    require sub_c4242719[arg1] < stor2.length
    return uint8(storD440[stor1[arg1]].field_0)
}

function changeOwnership(bytes32 arg1, address arg2) payable {
    if 0 == sub_c4242719[arg1]:
        return 0
    require sub_c4242719[arg1] < stor2.length
    if address(storD440[stor1[arg1]].field_8) != msg.sender:
        return 0
    require sub_c4242719[arg1] < stor2.length
    Mask(248, 0, storD440[stor1[arg1]].field_8) = Mask(248, 0, arg2)
    emit OwnershipChange(msg.sender, arg2, arg1);
    return 1
}

function balanceOf(address arg1, bytes32 arg2) payable {
    if 0 == sub_c4242719[arg2]:
        return 0
    require sub_c4242719[arg2] < stor2.length
    if not uint256(stor[code.data[6828 len 32] + (7 * stor1[arg2])][arg1]):
        return 0
    require sub_c4242719[arg2] < stor2.length
    require uint256(stor[code.data[6828 len 32] + (7 * stor1[arg2])][arg1]) < stor5640[stor1[arg2]]
    return uint256(stor[(3 * uint256(stor[code.data[6828 len 32] + (7 * stor1[arg2])][arg1])) + sha3((7 * stor1[arg2]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a) + 2])
}

function allowance(address arg1, address arg2, bytes32 arg3) payable {
    if 0 == sub_c4242719[arg3]:
        return 0
    require sub_c4242719[arg3] < stor2.length
    if not uint256(stor[code.data[6828 len 32] + (7 * stor1[arg3])][arg1]):
        return 0
    require sub_c4242719[arg3] < stor2.length
    require uint256(stor[code.data[6828 len 32] + (7 * stor1[arg3])][arg1]) < stor5640[stor1[arg3]]
    return uint256(stor[sha3((7 * stor1[arg3]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a) + (3 * uint256(stor[code.data[6828 len 32] + (7 * stor1[arg3])][arg1])) + 1][address(arg2)])
}

function name(bytes32 arg1) payable {
    if not sub_c4242719[arg1]:
        return ''
    require sub_c4242719[arg1] < stor2.length
    mem[160] = uint256(stor[sha3((7 * stor1[arg1]) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0)])
    idx = 160
    s = 0
    while stor[(7 * stor1[arg1]) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0].length + 128 > idx:
        mem[idx + 32] = uint256(stor[s + sha3((7 * stor1[arg1]) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor[(7 * stor1[arg1]) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0].length, data=mem[160 len stor[(7 * stor1[arg1]) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0].length]), 
}

function description(bytes32 arg1) payable {
    if not sub_c4242719[arg1]:
        return ''
    require sub_c4242719[arg1] < stor2.length
    mem[160] = uint256(stor[sha3((7 * stor1[arg1]) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad1)])
    idx = 160
    s = 0
    while stor[(7 * stor1[arg1]) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad1].length + 128 > idx:
        mem[idx + 32] = uint256(stor[s + sha3((7 * stor1[arg1]) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad1) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor[(7 * stor1[arg1]) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad1].length, data=mem[160 len stor[(7 * stor1[arg1]) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad1].length]), 
}

function approve(address arg1, uint256 arg2, bytes32 arg3) payable {
    if msg.sender == arg1:
        return 0
    if not sub_c4242719[arg3]:
        return 0
    require sub_c4242719[arg3] < stor2.length
    require sub_c4242719[arg3] < stor2.length
    if uint256(stor[code.data[6828 len 32] + (7 * stor1[arg3])][msg.sender]) != 0:
        require uint256(stor[code.data[6828 len 32] + (7 * stor1[arg3])][msg.sender]) < stor5640[stor1[arg3]]
        uint256(stor[(3 * uint256(stor[code.data[6828 len 32] + (7 * stor1[arg3])][msg.sender])) + sha3((7 * stor1[arg3]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a) + 1][address(arg1)]) = arg2
    else:
        stor5640[stor1[arg3]]++
        if not stor5640[stor1[arg3]] <= stor5640[stor1[arg3]] + 1:
            idx = (3 * stor5640[stor1[arg3]]) + 3
            while 3 * stor5640[stor1[arg3]] > idx:
                address(stor[idx + sha3((7 * stor1[arg3]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a)]) = 0
                uint256(stor[idx + sha3((7 * stor1[arg3]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a) + 2]) = 0
                idx = idx + 1
                continue 
        require sub_c4242719[arg3] < stor2.length
        require stor5640[stor1[arg3]] < stor5640[stor1[arg3]]
        uint256(stor[(3 * stor5640[stor1[arg3]]) + sha3((7 * stor1[arg3]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a) + 2]) = 0
        require sub_c4242719[arg3] < stor2.length
        require stor5640[stor1[arg3]] < stor5640[stor1[arg3]]
        uint256(stor[(3 * stor5640[stor1[arg3]]) + sha3((7 * stor1[arg3]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a)]) = msg.sender or Mask(96, 160, uint256(stor[(3 * stor5640[stor1[arg3]]) + sha3((7 * stor1[arg3]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a)]))
        require sub_c4242719[arg3] < stor2.length
        uint256(stor[code.data[6828 len 32] + (7 * stor1[arg3])][msg.sender]) = stor5640[stor1[arg3]]
        require stor5640[stor1[arg3]] < stor5640[stor1[arg3]]
        uint256(stor[(3 * stor5640[stor1[arg3]]) + sha3((7 * stor1[arg3]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a) + 1][address(arg1)]) = arg2
    emit Approve(arg2, msg.sender, arg1, arg3);
    return 1
}

function revokeAsset(bytes32 arg1, uint256 arg2) payable {
    if 0 == sub_c4242719[arg1]:
        return 0
    require sub_c4242719[arg1] < stor2.length
    if address(storD440[stor1[arg1]].field_8) != msg.sender:
        return 0
    require sub_c4242719[arg1] < stor2.length
    require sub_c4242719[arg1] < stor2.length
    if uint256(stor[code.data[6828 len 32] + (7 * stor1[arg1])][msg.sender]) != 0:
        require uint256(stor[code.data[6828 len 32] + (7 * stor1[arg1])][msg.sender]) < stor5640[stor1[arg1]]
        if uint256(stor[(3 * uint256(stor[code.data[6828 len 32] + (7 * stor1[arg1])][msg.sender])) + sha3((7 * stor1[arg1]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a) + 2]) < arg2:
            return 0
        require sub_c4242719[arg1] < stor2.length
        require uint256(stor[code.data[6828 len 32] + (7 * stor1[arg1])][msg.sender]) < stor5640[stor1[arg1]]
        uint256(stor[(3 * uint256(stor[code.data[6828 len 32] + (7 * stor1[arg1])][msg.sender])) + sha3((7 * stor1[arg1]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a) + 2]) -= arg2
    else:
        stor5640[stor1[arg1]]++
        if not stor5640[stor1[arg1]] <= stor5640[stor1[arg1]] + 1:
            idx = (3 * stor5640[stor1[arg1]]) + 3
            while 3 * stor5640[stor1[arg1]] > idx:
                address(stor[idx + sha3((7 * stor1[arg1]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a)]) = 0
                uint256(stor[idx + sha3((7 * stor1[arg1]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a) + 2]) = 0
                idx = idx + 1
                continue 
        require sub_c4242719[arg1] < stor2.length
        require stor5640[stor1[arg1]] < stor5640[stor1[arg1]]
        uint256(stor[(3 * stor5640[stor1[arg1]]) + sha3((7 * stor1[arg1]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a) + 2]) = 0
        require sub_c4242719[arg1] < stor2.length
        require stor5640[stor1[arg1]] < stor5640[stor1[arg1]]
        uint256(stor[(3 * stor5640[stor1[arg1]]) + sha3((7 * stor1[arg1]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a)]) = msg.sender or Mask(96, 160, uint256(stor[(3 * stor5640[stor1[arg1]]) + sha3((7 * stor1[arg1]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a)]))
        require sub_c4242719[arg1] < stor2.length
        uint256(stor[code.data[6828 len 32] + (7 * stor1[arg1])][msg.sender]) = stor5640[stor1[arg1]]
        require stor5640[stor1[arg1]] < stor5640[stor1[arg1]]
        if uint256(stor[(3 * stor5640[stor1[arg1]]) + sha3((7 * stor1[arg1]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a) + 2]) < arg2:
            return 0
        require sub_c4242719[arg1] < stor2.length
        require stor5640[stor1[arg1]] < stor5640[stor1[arg1]]
        uint256(stor[(3 * stor5640[stor1[arg1]]) + sha3((7 * stor1[arg1]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a) + 2]) -= arg2
    emit Revoke(arg2, msg.sender, arg1);
    return 1
}

function reissueAsset(bytes32 arg1, uint256 arg2) payable {
    if arg2 < 1:
        return 0
    if not sub_c4242719[arg1]:
        return 0
    require sub_c4242719[arg1] < stor2.length
    if not uint8(storD440[stor1[arg1]].field_0):
        return 0
    require sub_c4242719[arg1] < stor2.length
    if address(storD440[stor1[arg1]].field_8) != msg.sender:
        return 0
    if 0 == sub_c4242719[arg1]:
        if arg2 < 0:
            return 0
    else:
        require sub_c4242719[arg1] < stor2.length
        if var19003 >= stor5640[stor1[arg1]]:
            if var19004 + arg2 < var19004:
                return 0
        else:
            require sub_c4242719[arg1] < stor2.length
            require var21001 < stor5640[stor1[arg1]]
            require sub_c4242719[arg1] < stor2.length
            idx = var21001
            s = var21002
            while idx + 1 < stor5640[stor1[arg1]]:
                require sub_c4242719[arg1] < stor2.length
                require idx + 1 < stor5640[stor1[arg1]]
                require sub_c4242719[arg1] < stor2.length
                mem[0] = 2
                idx = idx + 1
                s = s + uint256(stor[(3 * idx) + sha3((7 * stor1[arg1]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a) + 2])
                continue 
            if arg2 < 0:
                return 0
    require sub_c4242719[arg1] < stor2.length
    require sub_c4242719[arg1] < stor2.length
    if uint256(stor[code.data[6828 len 32] + (7 * stor1[arg1])][msg.sender]) != 0:
        require uint256(stor[code.data[6828 len 32] + (7 * stor1[arg1])][msg.sender]) < stor5640[stor1[arg1]]
        uint256(stor[(3 * uint256(stor[code.data[6828 len 32] + (7 * stor1[arg1])][msg.sender])) + sha3((7 * stor1[arg1]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a) + 2]) += arg2
    else:
        stor5640[stor1[arg1]]++
        if not stor5640[stor1[arg1]] <= stor5640[stor1[arg1]] + 1:
            idx = (3 * stor5640[stor1[arg1]]) + 3
            while 3 * stor5640[stor1[arg1]] > idx:
                address(stor[idx + sha3((7 * stor1[arg1]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a)]) = 0
                uint256(stor[idx + sha3((7 * stor1[arg1]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a) + 2]) = 0
                idx = idx + 1
                continue 
        require sub_c4242719[arg1] < stor2.length
        require stor5640[stor1[arg1]] < stor5640[stor1[arg1]]
        uint256(stor[(3 * stor5640[stor1[arg1]]) + sha3((7 * stor1[arg1]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a) + 2]) = 0
        require sub_c4242719[arg1] < stor2.length
        require stor5640[stor1[arg1]] < stor5640[stor1[arg1]]
        uint256(stor[(3 * stor5640[stor1[arg1]]) + sha3((7 * stor1[arg1]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a)]) = msg.sender or Mask(96, 160, uint256(stor[(3 * stor5640[stor1[arg1]]) + sha3((7 * stor1[arg1]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a)]))
        require sub_c4242719[arg1] < stor2.length
        uint256(stor[code.data[6828 len 32] + (7 * stor1[arg1])][msg.sender]) = stor5640[stor1[arg1]]
        require stor5640[stor1[arg1]] < stor5640[stor1[arg1]]
        uint256(stor[(3 * stor5640[stor1[arg1]]) + sha3((7 * stor1[arg1]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a) + 2]) += arg2
    emit Issue(arg2, msg.sender, arg1);
    return 1
}

function assets(uint256 arg1) payable {
    require arg1 < stor2.length
    mem[320] = uint256(stor[sha3((7 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0)])
    idx = 320
    s = 0
    while stor[(7 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0].length + 320 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((7 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor[(7 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0].length + (floor32(stor[(7 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0].length - 1) + -stor[(7 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0].length + 32 % 32) + 320] = stor[(7 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad1].length
    mem[stor[(7 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0].length + (floor32(stor[(7 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0].length - 1) + -stor[(7 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0].length + 32 % 32) + 352] = uint256(stor[sha3((7 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad1)])
    idx = stor[(7 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0].length + (floor32(stor[(7 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0].length - 1) + -stor[(7 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0].length + 32 % 32) + 352
    s = 0
    while stor[(7 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0].length + (floor32(stor[(7 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0].length - 1) + -stor[(7 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0].length + 32 % 32) + stor[(7 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad1].length + 352 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((7 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad1) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    return uint256(stor2[arg1].field_0), 
           uint8(stor4057[arg1]),
           Array(len=stor[(7 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0].length, data=mem[320 len stor[(7 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0].length + (floor32(stor[(7 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0].length - 1) + -stor[(7 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0].length + 32 % 32) + stor[(7 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad1].length + (floor32(stor[(7 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad1].length - 1) + -stor[(7 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad1].length + 32 % 32) + 32]),
           stor[(7 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0].length + (floor32(stor[(7 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0].length - 1) + -stor[(7 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0].length + 32 % 32) + 224,
           uint8(storD440[arg1].field_0),
           address(storD440[arg1].field_0)
}

function transferWithReference(address arg1, uint256 arg2, bytes32 arg3, string arg4) payable {
    sub_aab9af67++
    if msg.sender == arg1:
        return 0
    if not sub_c4242719[arg3]:
        return 0
    if 0 == sub_c4242719[arg3]:
        if arg2 < 1:
            return 0
        if 0 < arg2:
            return 0
    else:
        require sub_c4242719[arg3] < stor2.length
        if not uint256(stor[code.data[6828 len 32] + (7 * stor1[arg3])][msg.sender]):
            if arg2 < 1:
                return 0
            if 0 < arg2:
                return 0
        else:
            require sub_c4242719[arg3] < stor2.length
            require uint256(stor[code.data[6828 len 32] + (7 * stor1[arg3])][msg.sender]) < stor5640[stor1[arg3]]
            if arg2 < 1:
                return 0
            if uint256(stor[(3 * uint256(stor[code.data[6828 len 32] + (7 * stor1[arg3])][msg.sender])) + sha3((7 * stor1[arg3]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a) + 2]) < arg2:
                return 0
    require sub_c4242719[arg3] < stor2.length
    require sub_c4242719[arg3] < stor2.length
    if uint256(stor[code.data[6828 len 32] + (7 * stor1[arg3])][arg1]) != 0:
        require uint256(stor[code.data[6828 len 32] + (7 * stor1[arg3])][msg.sender]) < stor5640[stor1[arg3]]
        uint256(stor[(3 * uint256(stor[code.data[6828 len 32] + (7 * stor1[arg3])][msg.sender])) + sha3((7 * stor1[arg3]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a) + 2]) -= arg2
        require sub_c4242719[arg3] < stor2.length
        require uint256(stor[code.data[6828 len 32] + (7 * stor1[arg3])][arg1]) < stor5640[stor1[arg3]]
        uint256(stor[(3 * uint256(stor[code.data[6828 len 32] + (7 * stor1[arg3])][arg1])) + sha3((7 * stor1[arg3]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a) + 2]) += arg2
    else:
        stor5640[stor1[arg3]]++
        if not stor5640[stor1[arg3]] <= stor5640[stor1[arg3]] + 1:
            idx = (3 * stor5640[stor1[arg3]]) + 3
            while 3 * stor5640[stor1[arg3]] > idx:
                address(stor[idx + sha3((7 * stor1[arg3]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a)]) = 0
                uint256(stor[idx + sha3((7 * stor1[arg3]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a) + 2]) = 0
                idx = idx + 1
                continue 
        require sub_c4242719[arg3] < stor2.length
        require stor5640[stor1[arg3]] < stor5640[stor1[arg3]]
        uint256(stor[(3 * stor5640[stor1[arg3]]) + sha3((7 * stor1[arg3]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a) + 2]) = 0
        require sub_c4242719[arg3] < stor2.length
        require stor5640[stor1[arg3]] < stor5640[stor1[arg3]]
        uint256(stor[(3 * stor5640[stor1[arg3]]) + sha3((7 * stor1[arg3]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a)]) = arg1 or Mask(96, 160, uint256(stor[(3 * stor5640[stor1[arg3]]) + sha3((7 * stor1[arg3]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a)]))
        require sub_c4242719[arg3] < stor2.length
        uint256(stor[code.data[6828 len 32] + (7 * stor1[arg3])][arg1]) = stor5640[stor1[arg3]]
        require uint256(stor[code.data[6828 len 32] + (7 * stor1[arg3])][msg.sender]) < stor5640[stor1[arg3]]
        uint256(stor[(3 * uint256(stor[code.data[6828 len 32] + (7 * stor1[arg3])][msg.sender])) + sha3((7 * stor1[arg3]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a) + 2]) -= arg2
        require sub_c4242719[arg3] < stor2.length
        require stor5640[stor1[arg3]] < stor5640[stor1[arg3]]
        uint256(stor[(3 * stor5640[stor1[arg3]]) + sha3((7 * stor1[arg3]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a) + 2]) += arg2
    emit Transfer(arg2, Array(len=arg4.length, data=arg4[all]), msg.sender, arg1, arg3);
    return 1
}

function transfer(address arg1, uint256 arg2, bytes32 arg3) payable {
    sub_aab9af67++
    if msg.sender == arg1:
        return 0
    if not sub_c4242719[arg3]:
        return 0
    if 0 == sub_c4242719[arg3]:
        if arg2 < 1:
            return 0
        if 0 < arg2:
            return 0
    else:
        require sub_c4242719[arg3] < stor2.length
        if not uint256(stor[code.data[6828 len 32] + (7 * stor1[arg3])][msg.sender]):
            if arg2 < 1:
                return 0
            if 0 < arg2:
                return 0
        else:
            require sub_c4242719[arg3] < stor2.length
            require uint256(stor[code.data[6828 len 32] + (7 * stor1[arg3])][msg.sender]) < stor5640[stor1[arg3]]
            if arg2 < 1:
                return 0
            if uint256(stor[(3 * uint256(stor[code.data[6828 len 32] + (7 * stor1[arg3])][msg.sender])) + sha3((7 * stor1[arg3]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a) + 2]) < arg2:
                return 0
    require sub_c4242719[arg3] < stor2.length
    require sub_c4242719[arg3] < stor2.length
    if uint256(stor[code.data[6828 len 32] + (7 * stor1[arg3])][arg1]) != 0:
        require uint256(stor[code.data[6828 len 32] + (7 * stor1[arg3])][msg.sender]) < stor5640[stor1[arg3]]
        uint256(stor[(3 * uint256(stor[code.data[6828 len 32] + (7 * stor1[arg3])][msg.sender])) + sha3((7 * stor1[arg3]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a) + 2]) -= arg2
        require sub_c4242719[arg3] < stor2.length
        require uint256(stor[code.data[6828 len 32] + (7 * stor1[arg3])][arg1]) < stor5640[stor1[arg3]]
        uint256(stor[(3 * uint256(stor[code.data[6828 len 32] + (7 * stor1[arg3])][arg1])) + sha3((7 * stor1[arg3]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a) + 2]) += arg2
    else:
        stor5640[stor1[arg3]]++
        if not stor5640[stor1[arg3]] <= stor5640[stor1[arg3]] + 1:
            idx = (3 * stor5640[stor1[arg3]]) + 3
            while 3 * stor5640[stor1[arg3]] > idx:
                address(stor[idx + sha3((7 * stor1[arg3]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a)]) = 0
                uint256(stor[idx + sha3((7 * stor1[arg3]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a) + 2]) = 0
                idx = idx + 1
                continue 
        require sub_c4242719[arg3] < stor2.length
        require stor5640[stor1[arg3]] < stor5640[stor1[arg3]]
        uint256(stor[(3 * stor5640[stor1[arg3]]) + sha3((7 * stor1[arg3]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a) + 2]) = 0
        require sub_c4242719[arg3] < stor2.length
        require stor5640[stor1[arg3]] < stor5640[stor1[arg3]]
        uint256(stor[(3 * stor5640[stor1[arg3]]) + sha3((7 * stor1[arg3]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a)]) = arg1 or Mask(96, 160, uint256(stor[(3 * stor5640[stor1[arg3]]) + sha3((7 * stor1[arg3]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a)]))
        require sub_c4242719[arg3] < stor2.length
        uint256(stor[code.data[6828 len 32] + (7 * stor1[arg3])][arg1]) = stor5640[stor1[arg3]]
        require uint256(stor[code.data[6828 len 32] + (7 * stor1[arg3])][msg.sender]) < stor5640[stor1[arg3]]
        uint256(stor[(3 * uint256(stor[code.data[6828 len 32] + (7 * stor1[arg3])][msg.sender])) + sha3((7 * stor1[arg3]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a) + 2]) -= arg2
        require sub_c4242719[arg3] < stor2.length
        require stor5640[stor1[arg3]] < stor5640[stor1[arg3]]
        uint256(stor[(3 * stor5640[stor1[arg3]]) + sha3((7 * stor1[arg3]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a) + 2]) += arg2
    emit Transfer(address rg1, address rg2, bytes32 rg3, uint256 rg4, string rg5):
                  arg2,
                  64,
                  0,
                  msg.sender,
                  arg1,
                  arg3,
    return 1
}

function issueAsset(bytes32 arg1, uint256 arg2, string arg3, string arg4, uint8 arg5, bool arg6) payable {
    if arg2 < 1:
        if not arg6:
            return 0
    if sub_c4242719[arg1] > 0:
        return 0
    stor2.length++
    if not stor2.length <= stor2.length + 1:
        mem[0] = 2
        idx = (7 * stor2.length) + 7
        while sha3(2) + (7 * stor2.length) > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])]) = 0
            uint8(stor[idx + sha3(mem[0]) + 1]) = 0
            uint256(stor[idx + sha3(mem[0]) + 2]) = 0
            if 31 >= stor[idx + sha3(mem[0]) + 2].length:
                uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                if 31 >= stor[idx + sha3(mem[0]) + 3].length:
                    Mask(168, 0, stor[idx + sha3(mem[0]) + 4]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 6]) = 0
                    mem[0] = idx + sha3(mem[0]) + 6
                    s = sha3(s + sha3(mem[0]) + 6)
                    while sha3(s + sha3(mem[0]) + 6) + (3 * uint256(stor[s + sha3(mem[0]) + 6])) > s + sha3(mem[0]):
                        address(stor[s + sha3(mem[0])]) = 0
                        uint256(stor[s + sha3(mem[0]) + 2]) = 0
                        s = s + 1
                        continue 
                    s = s + 1
                    continue 
                s = sha3(idx + sha3(mem[0]) + 3)
                while sha3(idx + sha3(mem[0]) + 3) + (stor[idx + sha3(mem[0]) + 3].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            else:
                s = sha3(idx + sha3(mem[0]) + 2)
                while sha3(idx + sha3(mem[0]) + 2) + (stor[idx + sha3(mem[0]) + 2].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
                uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                if 31 < stor[idx + sha3(mem[0]) + 3].length:
                    s = sha3(idx + sha3(mem[0]) + 3)
                    while sha3(idx + sha3(mem[0]) + 3) + (stor[idx + sha3(mem[0]) + 3].length + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
            Mask(168, 0, stor[idx + sha3(mem[0]) + 4]) = 0
            uint256(stor[idx + sha3(mem[0]) + 6]) = 0
            mem[0] = idx + sha3(mem[0]) + 6
            s = sha3(idx + sha3(mem[0]) + 6)
            while sha3(idx + sha3(mem[0]) + 6) + (3 * uint256(stor[idx + sha3(mem[0]) + 6])) > s:
                address(stor[s]) = 0
                uint256(stor2[s].field_0) = 0
                s = s + 1
                continue 
            idx = idx + 1
            continue 
    require stor2.length < stor2.length
    uint256(stor2[stor2.length].field_0) = arg1
    uint256(stor[sha3((7 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0)][]) = Array(len=arg3.length, data=arg3[all])
    require stor2.length < stor2.length
    uint256(storD440[stor2.length].field_0) = arg6 or Mask(248, 8, uint256(storD440[stor2.length].field_0))
    Mask(248, 0, stor2[stor2.length].field_1032) = Mask(248, 0, msg.sender)
    uint256(stor[sha3((7 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad1)][]) = Array(len=arg4.length, data=arg4[all])
    require stor2.length < stor2.length
    uint256(stor4057[stor2.length]) = arg5 or Mask(248, 8, uint256(stor4057[stor2.length]))
    stor5640[stor2.length] = 2
    if not stor5640[stor2.length] <= 2:
        idx = 6
        while 3 * stor5640[stor2.length] > idx:
            address(stor[idx + sha3((7 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a)]) = 0
            uint256(stor[idx + sha3((7 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a) + 2]) = 0
            idx = idx + 1
            continue 
    require stor2.length < stor2.length
    require 1 < stor5640[stor2.length]
    stor5[sha3((7 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a)] = arg2
    require stor2.length < stor2.length
    require 1 < stor5640[stor2.length]
    stor3[sha3((7 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a)] = msg.sender or Mask(96, 160, stor3[sha3((7 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a)])
    require stor2.length < stor2.length
    uint256(stor[code.data[6828 len 32] + (7 * stor2.length)][msg.sender]) = 1
    sub_c4242719[arg1] = stor2.length
    emit Issue(arg2, msg.sender, arg1);
    return 1
}

function transferFromWithReference(address arg1, address arg2, uint256 arg3, bytes32 arg4, string arg5) payable {
    if msg.sender == arg1:
        return 0
    if 0 == sub_c4242719[arg4]:
        if 0 < arg3:
            return 0
    else:
        require sub_c4242719[arg4] < stor2.length
        if not uint256(stor[code.data[6828 len 32] + (7 * stor1[arg4])][arg1]):
            if 0 < arg3:
                return 0
        else:
            require sub_c4242719[arg4] < stor2.length
            require uint256(stor[code.data[6828 len 32] + (7 * stor1[arg4])][arg1]) < stor5640[stor1[arg4]]
            if uint256(stor[sha3((7 * stor1[arg4]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a) + (3 * uint256(stor[code.data[6828 len 32] + (7 * stor1[arg4])][arg1])) + 1][address(msg.sender)]) < arg3:
                return 0
    if arg1 == arg2:
        return 0
    if not sub_c4242719[arg4]:
        return 0
    if 0 == sub_c4242719[arg4]:
        if arg3 < 1:
            return 0
        if 0 < arg3:
            return 0
    else:
        require sub_c4242719[arg4] < stor2.length
        if not uint256(stor[code.data[6828 len 32] + (7 * stor1[arg4])][arg1]):
            if arg3 < 1:
                return 0
            if 0 < arg3:
                return 0
        else:
            require sub_c4242719[arg4] < stor2.length
            require uint256(stor[code.data[6828 len 32] + (7 * stor1[arg4])][arg1]) < stor5640[stor1[arg4]]
            if arg3 < 1:
                return 0
            if uint256(stor[(3 * uint256(stor[code.data[6828 len 32] + (7 * stor1[arg4])][arg1])) + sha3((7 * stor1[arg4]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a) + 2]) < arg3:
                return 0
    require sub_c4242719[arg4] < stor2.length
    require sub_c4242719[arg4] < stor2.length
    if uint256(stor[code.data[6828 len 32] + (7 * stor1[arg4])][arg2]) != 0:
        require uint256(stor[code.data[6828 len 32] + (7 * stor1[arg4])][arg1]) < stor5640[stor1[arg4]]
        uint256(stor[(3 * uint256(stor[code.data[6828 len 32] + (7 * stor1[arg4])][arg1])) + sha3((7 * stor1[arg4]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a) + 2]) -= arg3
        require sub_c4242719[arg4] < stor2.length
        require uint256(stor[code.data[6828 len 32] + (7 * stor1[arg4])][arg2]) < stor5640[stor1[arg4]]
        uint256(stor[(3 * uint256(stor[code.data[6828 len 32] + (7 * stor1[arg4])][arg2])) + sha3((7 * stor1[arg4]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a) + 2]) += arg3
    else:
        stor5640[stor1[arg4]]++
        if not stor5640[stor1[arg4]] <= stor5640[stor1[arg4]] + 1:
            idx = (3 * stor5640[stor1[arg4]]) + 3
            while 3 * stor5640[stor1[arg4]] > idx:
                address(stor[idx + sha3((7 * stor1[arg4]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a)]) = 0
                uint256(stor[idx + sha3((7 * stor1[arg4]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a) + 2]) = 0
                idx = idx + 1
                continue 
        require sub_c4242719[arg4] < stor2.length
        require stor5640[stor1[arg4]] < stor5640[stor1[arg4]]
        uint256(stor[(3 * stor5640[stor1[arg4]]) + sha3((7 * stor1[arg4]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a) + 2]) = 0
        require sub_c4242719[arg4] < stor2.length
        require stor5640[stor1[arg4]] < stor5640[stor1[arg4]]
        uint256(stor[(3 * stor5640[stor1[arg4]]) + sha3((7 * stor1[arg4]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a)]) = arg2 or Mask(96, 160, uint256(stor[(3 * stor5640[stor1[arg4]]) + sha3((7 * stor1[arg4]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a)]))
        require sub_c4242719[arg4] < stor2.length
        uint256(stor[code.data[6828 len 32] + (7 * stor1[arg4])][arg2]) = stor5640[stor1[arg4]]
        require uint256(stor[code.data[6828 len 32] + (7 * stor1[arg4])][arg1]) < stor5640[stor1[arg4]]
        uint256(stor[(3 * uint256(stor[code.data[6828 len 32] + (7 * stor1[arg4])][arg1])) + sha3((7 * stor1[arg4]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a) + 2]) -= arg3
        require sub_c4242719[arg4] < stor2.length
        require stor5640[stor1[arg4]] < stor5640[stor1[arg4]]
        uint256(stor[(3 * stor5640[stor1[arg4]]) + sha3((7 * stor1[arg4]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a) + 2]) += arg3
    emit Transfer(arg3, Array(len=arg5.length, data=arg5[all]), arg1, arg2, arg4);
    require sub_c4242719[arg4] < stor2.length
    require uint256(stor[code.data[6828 len 32] + (7 * stor1[arg4])][arg1]) < uint256(stor2[stor1[arg4]].field_1536)
    uint256(stor[(3 * uint256(stor[code.data[6828 len 32] + (7 * stor1[arg4])][arg1])) + sha3((7 * stor1[arg4]) + ('name', 'stor2', 2) + 6) + 1][address(msg.sender)].field_0) -= arg3
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3, bytes32 arg4) payable {
    if msg.sender == arg1:
        return 0
    if 0 == sub_c4242719[arg4]:
        if 0 < arg3:
            return 0
    else:
        require sub_c4242719[arg4] < stor2.length
        if not uint256(stor[code.data[6828 len 32] + (7 * stor1[arg4])][arg1]):
            if 0 < arg3:
                return 0
        else:
            require sub_c4242719[arg4] < stor2.length
            require uint256(stor[code.data[6828 len 32] + (7 * stor1[arg4])][arg1]) < stor5640[stor1[arg4]]
            if uint256(stor[sha3((7 * stor1[arg4]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a) + (3 * uint256(stor[code.data[6828 len 32] + (7 * stor1[arg4])][arg1])) + 1][address(msg.sender)]) < arg3:
                return 0
    if arg1 == arg2:
        return 0
    if not sub_c4242719[arg4]:
        return 0
    if 0 == sub_c4242719[arg4]:
        if arg3 < 1:
            return 0
        if 0 < arg3:
            return 0
    else:
        require sub_c4242719[arg4] < stor2.length
        if not uint256(stor[code.data[6828 len 32] + (7 * stor1[arg4])][arg1]):
            if arg3 < 1:
                return 0
            if 0 < arg3:
                return 0
        else:
            require sub_c4242719[arg4] < stor2.length
            require uint256(stor[code.data[6828 len 32] + (7 * stor1[arg4])][arg1]) < stor5640[stor1[arg4]]
            if arg3 < 1:
                return 0
            if uint256(stor[(3 * uint256(stor[code.data[6828 len 32] + (7 * stor1[arg4])][arg1])) + sha3((7 * stor1[arg4]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a) + 2]) < arg3:
                return 0
    require sub_c4242719[arg4] < stor2.length
    require sub_c4242719[arg4] < stor2.length
    if uint256(stor[code.data[6828 len 32] + (7 * stor1[arg4])][arg2]) != 0:
        require uint256(stor[code.data[6828 len 32] + (7 * stor1[arg4])][arg1]) < stor5640[stor1[arg4]]
        uint256(stor[(3 * uint256(stor[code.data[6828 len 32] + (7 * stor1[arg4])][arg1])) + sha3((7 * stor1[arg4]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a) + 2]) -= arg3
        require sub_c4242719[arg4] < stor2.length
        require uint256(stor[code.data[6828 len 32] + (7 * stor1[arg4])][arg2]) < stor5640[stor1[arg4]]
        uint256(stor[(3 * uint256(stor[code.data[6828 len 32] + (7 * stor1[arg4])][arg2])) + sha3((7 * stor1[arg4]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a) + 2]) += arg3
    else:
        stor5640[stor1[arg4]]++
        if not stor5640[stor1[arg4]] <= stor5640[stor1[arg4]] + 1:
            idx = (3 * stor5640[stor1[arg4]]) + 3
            while 3 * stor5640[stor1[arg4]] > idx:
                address(stor[idx + sha3((7 * stor1[arg4]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a)]) = 0
                uint256(stor[idx + sha3((7 * stor1[arg4]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a) + 2]) = 0
                idx = idx + 1
                continue 
        require sub_c4242719[arg4] < stor2.length
        require stor5640[stor1[arg4]] < stor5640[stor1[arg4]]
        uint256(stor[(3 * stor5640[stor1[arg4]]) + sha3((7 * stor1[arg4]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a) + 2]) = 0
        require sub_c4242719[arg4] < stor2.length
        require stor5640[stor1[arg4]] < stor5640[stor1[arg4]]
        uint256(stor[(3 * stor5640[stor1[arg4]]) + sha3((7 * stor1[arg4]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a)]) = arg2 or Mask(96, 160, uint256(stor[(3 * stor5640[stor1[arg4]]) + sha3((7 * stor1[arg4]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a)]))
        require sub_c4242719[arg4] < stor2.length
        uint256(stor[code.data[6828 len 32] + (7 * stor1[arg4])][arg2]) = stor5640[stor1[arg4]]
        require uint256(stor[code.data[6828 len 32] + (7 * stor1[arg4])][arg1]) < stor5640[stor1[arg4]]
        uint256(stor[(3 * uint256(stor[code.data[6828 len 32] + (7 * stor1[arg4])][arg1])) + sha3((7 * stor1[arg4]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a) + 2]) -= arg3
        require sub_c4242719[arg4] < stor2.length
        require stor5640[stor1[arg4]] < stor5640[stor1[arg4]]
        uint256(stor[(3 * stor5640[stor1[arg4]]) + sha3((7 * stor1[arg4]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a) + 2]) += arg3
    emit Transfer(address rg1, address rg2, bytes32 rg3, uint256 rg4, string rg5):
                  arg3,
                  64,
                  0,
                  arg1,
                  arg2,
                  arg4,
    require sub_c4242719[arg4] < stor2.length
    require uint256(stor[code.data[6828 len 32] + (7 * stor1[arg4])][arg1]) < uint256(stor2[stor1[arg4]].field_1536)
    uint256(stor[(3 * uint256(stor[code.data[6828 len 32] + (7 * stor1[arg4])][arg1])) + sha3((7 * stor1[arg4]) + ('name', 'stor2', 2) + 6) + 1][address(msg.sender)].field_0) -= arg3
    return 1
}



}
