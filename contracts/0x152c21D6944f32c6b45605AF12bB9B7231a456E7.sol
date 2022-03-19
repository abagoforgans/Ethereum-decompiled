contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor2;

function _fallback() payable {
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
            uint256(stor[idx + sha3(mem[0]) + 2]) = 0
            idx = idx + 1
            continue 
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[217 len 1773]
}



// =====================  Runtime code  =====================


address stor0;
uint256 stor0;
mapping of uint256 stor1;
array of struct stor2;

function _fallback() payable {
  stop
}

function setOwner(address arg1) payable {
    if address(stor0) != msg.sender:
        return 0
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
    return 1
}

function sub_81dcda88(?) payable {
    if address(stor0) != msg.sender:
        return 0
    if not stor1[address(arg1)]:
        return 0
    if 0 == stor1[arg2]:
        return 0
    require stor1[address(arg1)] < stor2.length
    if uint256(stor[code.data[1741 len 32] + (3 * stor1[address(arg1)])]) > 0:
        return 0
    require stor1[arg2] < stor2.length
    if uint256(stor[code.data[1741 len 32] + (3 * stor1[arg2])]) > 0:
        return 0
    require stor1[address(arg1)] < stor2.length
    uint256(stor[code.data[1741 len 32] + (3 * stor1[address(arg1)])]) = stor1[arg2]
    return 1
}

function accounts(uint256 arg1) payable {
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
           uint256(stor[(3 * arg1) + code.data[1741 len 32]])
}

function sub_f0d4bc5c(?) payable {
    if stor1[address(arg1)] > 0:
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
            uint256(stor[idx + sha3(mem[0]) + 2]) = 0
            idx = idx + 1
            continue 
    require stor2.length < stor2.length
    uint256(stor2[stor2.length].field_0) = Mask(96, 0, stor2[stor2.length].field_160)
    uint256(stor[sha3((3 * stor2.length) + ('name', 'stor2', 2) + 1)][].field_0) = Array(len=arg2.length, data=arg2[all])
    uint256(stor2[stor2.length].field_512) = 0
    stor1[address(arg1)] = stor2.length
    return 1
}

function sub_63f553b2(?) payable {
    mem[32] = 1
    if stor1[address(arg1)] <= 0:
        return ''
    require stor1[address(arg1)] < stor2.length
    if not uint256(stor[code.data[1741 len 32] + (3 * var8003)]):
        require var8003 < stor2.length
        mem[64] = ceil32(stor[(3 * var8003) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf].length) + 160
        mem[128] = stor[(3 * var8003) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf].length
        mem[0] = (3 * var8003) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf
        mem[160] = uint256(stor[sha3((3 * var8003) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf)])
        s = 160
        t = 0
        while stor[(3 * var8003) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf].length + 128 > s:
            mem[s + 32] = uint256(stor[t + sha3(mem[0]) + 1])
            s = s + 32
            t = t + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[128]
        mem[mem[64] + 64 len mem[128]] = mem[160 len mem[128]]
        if not mem[128] % 32:
            return 32, mem[mem[64] + 32 len mem[128] + 32]
        mem[floor32(mem[128]) + mem[64] + 64] = mem[floor32(mem[128]) + mem[64] + -(mem[128] % 32) + 96 len mem[128] % 32]
        return 32, mem[mem[64] + 32 len floor32(mem[128]) + 64]
    require var10001 < stor2.length
    require var14001 < stor2.length
    if not uint256(stor[code.data[1741 len 32] + (3 * var16003)]):
        require var16003 < stor2.length
        mem[64] = ceil32(stor[(3 * var16003) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf].length) + 160
        mem[128] = stor[(3 * var16003) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf].length
        mem[0] = (3 * var16003) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf
        mem[160] = uint256(stor[sha3((3 * var16003) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf)])
        s = 160
        t = 0
        while stor[(3 * var16003) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf].length + 128 > s:
            mem[s + 32] = uint256(stor[t + sha3(mem[0]) + 1])
            s = s + 32
            t = t + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[128]
        mem[mem[64] + 64 len mem[128]] = mem[160 len mem[128]]
        if not mem[128] % 32:
            return 32, mem[mem[64] + 32 len mem[128] + 32]
        mem[floor32(mem[128]) + mem[64] + 64] = mem[floor32(mem[128]) + mem[64] + -(mem[128] % 32) + 96 len mem[128] % 32]
        return 32, mem[mem[64] + 32 len floor32(mem[128]) + 64]
    require var18001 < stor2.length
    require var22001 < stor2.length
    if not uint256(stor[code.data[1741 len 32] + (3 * var24003)]):
        require var24003 < stor2.length
        mem[64] = ceil32(stor[(3 * var24003) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf].length) + 160
        mem[128] = stor[(3 * var24003) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf].length
        mem[0] = (3 * var24003) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf
        mem[160] = uint256(stor[sha3((3 * var24003) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf)])
        s = 160
        t = 0
        while stor[(3 * var24003) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf].length + 128 > s:
            mem[s + 32] = uint256(stor[t + sha3(mem[0]) + 1])
            s = s + 32
            t = t + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[128]
        mem[mem[64] + 64 len mem[128]] = mem[160 len mem[128]]
        if not mem[128] % 32:
            return 32, mem[mem[64] + 32 len mem[128] + 32]
        mem[floor32(mem[128]) + mem[64] + 64] = mem[floor32(mem[128]) + mem[64] + -(mem[128] % 32) + 96 len mem[128] % 32]
        return 32, mem[mem[64] + 32 len floor32(mem[128]) + 64]
    require var26001 < stor2.length
    require var30001 < stor2.length
    if not uint256(stor[code.data[1741 len 32] + (3 * var32003)]):
        require var32003 < stor2.length
        mem[64] = ceil32(stor[(3 * var32003) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf].length) + 160
        mem[128] = stor[(3 * var32003) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf].length
        mem[0] = (3 * var32003) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf
        mem[160] = uint256(stor[sha3((3 * var32003) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf)])
        s = 160
        t = 0
        while stor[(3 * var32003) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf].length + 128 > s:
            mem[s + 32] = uint256(stor[t + sha3(mem[0]) + 1])
            s = s + 32
            t = t + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[128]
        mem[mem[64] + 64 len mem[128]] = mem[160 len mem[128]]
        if not mem[128] % 32:
            return 32, mem[mem[64] + 32 len mem[128] + 32]
        mem[floor32(mem[128]) + mem[64] + 64] = mem[floor32(mem[128]) + mem[64] + -(mem[128] % 32) + 96 len mem[128] % 32]
        return 32, mem[mem[64] + 32 len floor32(mem[128]) + 64]
    require var34001 < stor2.length
    require var38001 < stor2.length
    if uint256(stor[code.data[1741 len 32] + (3 * var40003)]):
        require var42001 < stor2.length
        # nil
    else:
        require var40003 < stor2.length
        mem[64] = ceil32(stor[(3 * var40003) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf].length) + 160
        mem[128] = stor[(3 * var40003) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf].length
        mem[0] = (3 * var40003) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf
        mem[160] = uint256(stor[sha3((3 * var40003) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf)])
        s = 160
        t = 0
        while stor[(3 * var40003) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf].length + 128 > s:
            mem[s + 32] = uint256(stor[t + sha3(mem[0]) + 1])
            s = s + 32
            t = t + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[128]
        mem[mem[64] + 64 len mem[128]] = mem[160 len mem[128]]
        if not mem[128] % 32:
            return 32, mem[mem[64] + 32 len mem[128] + 32]
        mem[floor32(mem[128]) + mem[64] + 64] = mem[floor32(mem[128]) + mem[64] + -(mem[128] % 32) + 96 len mem[128] % 32]
        return 32, mem[mem[64] + 32 len floor32(mem[128]) + 64]
}



}
