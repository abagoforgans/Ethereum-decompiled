contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor2;
uint256 stor3;
array of uint256 stor4;
uint256 stor7;
array of uint256 stor8;

function _fallback() payable {
    stor2.length++
    if not stor2.length <= stor2.length + 1:
        idx = stor2.length + 1
        while stor2.length > idx:
            stor2[idx] = 0
            idx = idx + 1
            continue 
    stor3++
    if not stor3 <= stor3 + 1:
        mem[0] = 3
        idx = stor3 + 1
        while sha3(3) + stor3 > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            if 31 < stor[idx + sha3(mem[0])].length:
                mem[0] = idx + sha3(mem[0])
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
    stor4.length++
    if not stor4.length <= stor4.length + 1:
        idx = stor4.length + 1
        while stor4.length > idx:
            stor4[idx] = 0
            idx = idx + 1
            continue 
    stor7++
    if not stor7 <= stor7 + 1:
        mem[0] = 7
        idx = stor7 + 1
        while sha3(7) + stor7 > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            if 31 < stor[idx + sha3(mem[0])].length:
                mem[0] = idx + sha3(mem[0])
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
    stor8.length++
    if not stor8.length <= stor8.length + 1:
        idx = stor8.length + 1
        while stor8.length > idx:
            stor8[idx] = 0
            idx = idx + 1
            continue 
    stor0 = tx.origin or Mask(96, 160, stor0)
    return code.data[497 len 3314]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint256 sub_f85e610e;
uint256 stor2;
array of struct sub_8205090e;
array of uint256 stor4;
mapping of uint256 sub_c37208a5;
mapping of uint8 banned;
array of uint256 sub_a2e28f26;
array of address polls;
array of address providers;

function owners(uint256 arg1) payable {
    require arg1 < stor4.length
    return address(stor[code.data[3282 len 32] + arg1])
}

function providers(uint256 arg1) payable {
    require arg1 < stor2
    return address(providers[arg1])
}

function sub_8205090e(?) payable {
    return uint256(sub_8205090e[arg1][0 len sub_8205090e[arg1].length].field_0)
}

function owner() payable {
    return owner
}

function banned(address arg1) payable {
    return banned[arg1]
}

function sub_a2e28f26(?) payable {
    return sub_a2e28f26[arg1][0 len sub_a2e28f26[arg1].length]
}

function polls(uint256 arg1) payable {
    require arg1 < polls.length
    return address(polls[arg1])
}

function sub_c37208a5(?) payable {
    return sub_c37208a5[arg1]
}

function sub_f85e610e(?) payable {
    return sub_f85e610e[arg1]
}

function _fallback() payable {
  stop
}

function sub_4fcbb957(?) payable {
    if owner != tx.origin:
        return 0
    if 0 == sub_c37208a5[address(arg1)]:
        return 0
    sub_c37208a5[address(arg1)] = 0
    require sub_c37208a5[address(arg1)] < sub_a2e28f26.length
    sub_a2e28f26[stor5[address(arg1)]] = 0
    if 31 < sub_a2e28f26[stor5[address(arg1)]].length:
        idx = 0
        while sub_a2e28f26[stor5[address(arg1)]].length + 31 / 32 > idx:
            sub_a2e28f26[stor5[address(arg1)] + idx] = 0
            idx = idx + 1
            continue 
    require sub_c37208a5[address(arg1)] < polls.length
    address(polls[stor5[address(arg1)]]) = 0
    banned[address(arg1)] = 1
    return 1
}

function sub_f58237da(?) payable {
    if 0 == sub_f85e610e[address(arg1)]:
        return 0
    require sub_f85e610e[address(arg1)] < stor4.length
    if address(stor[stor1[address(arg1)] + code.data[3282 len 32]]) != tx.origin:
        if owner != tx.origin:
            return 0
    if not sub_f85e610e[address(arg1)]:
        return 0
    require sub_f85e610e[address(arg1)] < stor2
    address(providers[stor1[address(arg1)]]) = 0
    require sub_f85e610e[address(arg1)] < sub_8205090e.length
    bool(sub_8205090e[stor1[address(arg1)]].field_0) = 0
    uint255(sub_8205090e[stor1[address(arg1)]].field_1) = 0
    Mask(248, 0, sub_8205090e[stor1[address(arg1)]].field_8) = mem[128 len 31]
    idx = 0
    while sub_8205090e[stor1[address(arg1)]].length + 31 / 32 > idx:
        uint256(sub_8205090e[stor1[address(arg1)] + idx].field_0) = 0
        idx = idx + 1
        continue 
    require sub_f85e610e[address(arg1)] < stor4.length
    address(stor[stor1[address(arg1)] + code.data[3282 len 32]]) = 0
    sub_f85e610e[address(arg1)] = 0
    return 1
}

function sub_f0bbba87(?) payable {
    if banned[address(arg1)]:
        return 0
    if sub_c37208a5[address(arg1)]:
        return 0
    polls.length++
    if not polls.length <= polls.length + 1:
        idx = polls.length + 1
        while polls.length > idx:
            uint256(polls[idx]) = 0
            idx = idx + 1
            continue 
    sub_a2e28f26.length++
    if not sub_a2e28f26.length <= sub_a2e28f26.length + 1:
        mem[0] = 7
        idx = sub_a2e28f26.length + 1
        while sha3(7) + sub_a2e28f26.length > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])]) = 0
            if 31 < stor[idx + sha3(mem[0])].length:
                mem[0] = idx + sha3(mem[0])
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
    require polls.length < polls.length
    uint256(polls[polls.length]) = arg1 or Mask(96, 160, uint256(polls[polls.length]))
    require polls.length < sub_a2e28f26.length
    sub_a2e28f26[stor8.length][] = Array(len=arg2.length, data=arg2[all])
    sub_c37208a5[address(arg1)] = polls.length
    emit 0x60c1054b: arg1
    return 1
}

function sub_fc000500(?) payable {
    mem[64] = ceil32(arg2.length) + 128
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[0] = arg1
    mem[32] = 1
    if sub_f85e610e[address(arg1)] > 0:
        return 0
    idx = 1
    while idx < stor2:
        mem[0] = 2
        if address(providers[idx]):
            idx = idx + 1
            continue 
        if idx != 0:
            require idx < stor2
            uint256(providers[idx]) = arg1 or Mask(96, 160, uint256(providers[idx]))
            require idx < sub_8205090e.length
            uint256(sub_8205090e[idx].field_0) = (2 * arg2.length) + 1
            t = sha3(idx + sha3(3))
            s = 128
            while arg2.length + 128 > s:
                uint256(stor[t]) = mem[s]
                t = t + 1
                s = s + 32
                continue 
            s = sha3(idx + sha3(3)) + (Mask(251, 0, arg2.length + 31) >> 5)
            while sha3(idx + sha3(3)) + (sub_8205090e[idx].length + 31 / 32) > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
            require idx < stor4.length
            uint256(stor[idx + code.data[3282 len 32]]) = tx.origin or Mask(96, 160, uint256(stor[idx + code.data[3282 len 32]]))
            sub_f85e610e[address(arg1)] = idx
        else:
            stor2++
            if not stor2 <= stor2 + 1:
                idx = stor2 + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5b
                while stor2 + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a > idx:
                    uint256(stor[idx]) = 0
                    idx = idx + 1
                    continue 
            sub_8205090e.length++
            if not sub_8205090e.length <= sub_8205090e.length + 1:
                mem[0] = 3
                idx = sha3(mem[0]) + sub_8205090e.length + 1
                while sha3(3) + sub_8205090e.length > idx:
                    uint256(stor[idx]) = 0
                    if 31 < stor[idx].length:
                        mem[0] = idx
                        s = sha3(idx)
                        while sha3(idx) + (stor[idx].length + 31 / 32) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                    idx = idx + 1
                    continue 
            stor4.length++
            if not stor4.length <= stor4.length + 1:
                idx = sha3(4) + stor4.length + 1
                while sha3(4) + stor4.length > idx:
                    uint256(stor[idx]) = 0
                    idx = idx + 1
                    continue 
            require stor2 < stor2
            uint256(providers[stor2]) = arg1 or Mask(96, 160, uint256(providers[stor2]))
            require stor2 < sub_8205090e.length
            uint256(sub_8205090e[stor2].field_0) = (2 * arg2.length) + 1
            s = sha3(stor2 + sha3(3))
            idx = 128
            while arg2.length + 128 > idx:
                uint256(stor[s]) = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = sha3(stor2 + sha3(3)) + (Mask(251, 0, arg2.length + 31) >> 5)
            while sha3(stor2 + sha3(3)) + (sub_8205090e[stor2].length + 31 / 32) > idx:
                uint256(stor[idx]) = 0
                idx = idx + 1
                continue 
            require stor2 < stor4.length
            uint256(stor[stor2 + code.data[3282 len 32]]) = tx.origin or Mask(96, 160, uint256(stor[stor2 + code.data[3282 len 32]]))
            sub_f85e610e[address(arg1)] = stor2
        emit 0xf3d6fd2b: arg1
        return 1
    stor2++
    if not stor2 <= stor2 + 1:
        idx = stor2 + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5b
        while stor2 + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a > idx:
            uint256(stor[idx]) = 0
            idx = idx + 1
            continue 
    sub_8205090e.length++
    if not sub_8205090e.length <= sub_8205090e.length + 1:
        mem[0] = 3
        idx = sub_8205090e.length + 1
        while sha3(3) + sub_8205090e.length > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])]) = 0
            if 31 < stor[idx + sha3(mem[0])].length:
                mem[0] = idx + sha3(mem[0])
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
    stor4.length++
    if not stor4.length <= stor4.length + 1:
        idx = stor4.length + 1
        while stor4.length > idx:
            stor4[idx] = 0
            idx = idx + 1
            continue 
    require stor2 < stor2
    uint256(providers[stor2]) = arg1 or Mask(96, 160, uint256(providers[stor2]))
    require stor2 < sub_8205090e.length
    uint256(sub_8205090e[stor2][].field_0) = Array(len=arg2.length, data=arg2[all])
    require stor2 < stor4.length
    uint256(stor[stor2 + code.data[3282 len 32]]) = tx.origin or Mask(96, 160, uint256(stor[stor2 + code.data[3282 len 32]]))
    sub_f85e610e[address(arg1)] = stor2
    emit 0xf3d6fd2b: arg1
    return 1
}



}
