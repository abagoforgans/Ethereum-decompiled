contract main {


// =======================  Init code  ======================


uint256 stor6;
array of uint256 stor8;
uint256 stor9;

function _fallback() payable {
    stor6 = tx.origin or Mask(96, 160, stor6)
    stor8.length++
    if not stor8.length <= stor8.length + 1:
        idx = stor8.length + 1
        while stor8.length > idx:
            stor8[idx] = 0
            idx = idx + 1
            continue 
    stor9++
    if not stor9 <= stor9 + 1:
        mem[0] = 9
        idx = stor9 + 1
        while sha3(9) + stor9 > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            mem[0] = idx + sha3(mem[0])
            s = sha3(s + sha3(mem[0]))
            while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])] + 31 / 32) > s + sha3(mem[0]):
                stor[s + sha3(mem[0])] = 0
                s = s + 1
                continue 
            s = s + 1
            continue 
    return code.data[208 len 3404]
}



// =====================  Runtime code  =====================


uint256 start;
uint256 end;
array of address sub_0e96b91d;
uint256 stor2;
array of uint256 questions;
uint256 stor4;
uint256 stor5;
address stor6;
mapping of uint256 index;
array of address voters;
array of struct stor89717814153306320011181716697424560163256864414616650038987186496166826726055;
array of uint8 stor9;

function sub_0e96b91d(?) payable {
    require arg1 < stor5
    return sub_0e96b91d[arg1]
}

function index(address arg1) payable {
    return index[arg1]
}

function questions() payable {
    return questions[0 len questions.length]
}

function start() payable {
    return start
}

function results(uint256 arg1, uint256 arg2) payable {
    require arg1 < stor10.length
    require arg2 < stor10[arg1]
    return stor[('array', ('param', 'arg1'), ('name', 'stor10', 10)) + arg2]
}

function voters(uint256 arg1) payable {
    require arg1 < voters.length
    return address(voters[arg1])
}

function sub_e73cf0da(?) payable {
    require arg1 < stor2
    return sub_e73cf0da[uint8(arg1)]
}

function end() payable {
    return end
}

function sub_ff3aa422(?) payable {
    require arg1 < stor9.length
    require arg2 < uint256(stor9[arg1])
    return sub_ff3aa422[uint8(arg2)]
}

function _fallback() payable {
  stop
}

function sub_de1b7b4f(?) payable {
    if stor2 != 0:
        return stor2
    return stor10.length
}

function sub_8d9ede35(?) payable {
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg3.length) + (32 * arg4.length) + 160] = arg5.length
    if stor6 != tx.origin:
        return 0
    if stor2 > 0:
        return 0
    questions[] = Array(len=arg5.length, data=arg5[all])
    start = arg1
    end = arg2
    stor2 = arg3.length
    if not arg3.length:
        idx = code.data[3372 len 32]
        while code.data[3372 len 32] + (stor2 + 31 / 32) > idx:
            uint8(stor[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg3.length) + 128 > idx:
            uint256(stor[code.data[3372 len 32]]) = mem[idx] * 256^s or !(255 * 256^s) and uint256(stor[code.data[3372 len 32]])
            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg3.length) + 31) >> 5
        s = code.data[3372 len 32]
        while idx:
            uint256(stor[s]) = !(255 * 256^idx) and uint256(stor[s])
            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
            s = (idx + 1 / 32) + s
            continue 
        idx = code.data[3372 len 32] + (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg3.length) + 31) >> 5 * None + 3 / 32)
        while code.data[3372 len 32] + (stor2 + 31 / 32) > idx:
            uint8(stor[idx]) = 0
            idx = idx + 1
            continue 
    stor5 = arg4.length
    if not arg4.length:
        idx = 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db0
        while stor5 + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db0 > idx:
            address(stor[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db0
        idx = (32 * arg3.length) + 160
        while (32 * arg3.length) + (32 * arg4.length) + 160 > idx:
            uint256(stor[s]) = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = (Mask(251, 0, (32 * arg4.length) + 31) >> 5) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db0
        while stor5 + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db0 > idx:
            address(stor[idx]) = 0
            idx = idx + 1
            continue 
    return 1
}

function sub_31329f11(?) payable {
    if arg1 < end:
        return 0
    if stor10.length != 0:
        return 0
    stor10.length = stor2
    if not stor10.length <= stor2:
        mem[0] = 10
        idx = stor2
        while sha3(10) + stor10.length > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])]) = 0
            mem[0] = idx + sha3(mem[0])
            s = sha3(s + sha3(mem[0]))
            while sha3(s + sha3(mem[0])) + uint256(stor[s + sha3(mem[0])]) > s + sha3(mem[0]):
                uint256(stor[s + sha3(mem[0])]) = 0
                s = s + 1
                continue 
            s = s + 1
            continue 
    s = 0
    idx = stor2
    while uint8(idx) > 0:
        require idx - 1 < stor2
        require idx - 1 < stor10.length
        mem[0] = 10
        uint8(storC65A[idx].field_0) = uint8(stor(code.data[3372 len 32] + (0.03125 / idx - 1))[uint8(idx - 1)] + 1)
        Mask(248, 0, storC65A[idx].field_8) = 0
        if not uint256(storC65A[idx].field_0) <= uint8(stor(code.data[3372 len 32] + (0.03125 / idx - 1))[uint8(idx - 1)] + 1):
            mem[0] = idx - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d59
            s = uint8(stor(code.data[3372 len 32] + (0.03125 / idx - 1))[uint8(idx - 1)] + 1) + sha3(idx - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d59)
            while sha3(idx - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d59) + uint256(storC65A[idx].field_0) > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
        s = 1
        while s < stor9.length:
            require idx - 1 < stor10.length
            require s < stor9.length
            require idx - 1 < uint256(stor9[s])
            require stor((0.03125 / idx - 1) + ('array', ('var', 1), ('name', 'stor9', 9)))[uint8(idx - 1)] < uint256(storC65A[idx].field_0)
            mem[0] = idx - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d59
            uint256(stor[stor((0.03125 / idx - 1) + ('array', ('var', 1), ('name', 'stor9', 9)))[uint8(idx - 1)] + sha3(idx - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d59)])++
            s = s + 1
            continue 
        stor2--
        if not stor2 <= stor2 - 1:
            mem[0] = 2
            s = sha3(2) + (stor2 + 30 / 32)
            while sha3(2) + (stor2 + 31 / 32) > stor9.length:
                uint256(stor9.length) = 0
                s = stor9.length + 1
                continue 
        s = stor9.length
        idx = idx - 1
        continue 
    stor6 = 0
    return 1
}

function count() payable {
    if block.timestamp < end:
        return 0
    if stor10.length != 0:
        return 0
    stor10.length = stor2
    if not stor10.length <= stor2:
        mem[0] = 10
        idx = stor2
        while sha3(10) + stor10.length > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])]) = 0
            mem[0] = idx + sha3(mem[0])
            s = sha3(s + sha3(mem[0]))
            while sha3(s + sha3(mem[0])) + uint256(stor[s + sha3(mem[0])]) > s + sha3(mem[0]):
                uint256(stor[s + sha3(mem[0])]) = 0
                s = s + 1
                continue 
            s = s + 1
            continue 
    s = 0
    idx = stor2
    while uint8(idx) > 0:
        require idx - 1 < stor2
        require idx - 1 < stor10.length
        mem[0] = 10
        uint8(storC65A[idx].field_0) = uint8(stor(code.data[3372 len 32] + (0.03125 / idx - 1))[uint8(idx - 1)] + 1)
        Mask(248, 0, storC65A[idx].field_8) = 0
        if not uint256(storC65A[idx].field_0) <= uint8(stor(code.data[3372 len 32] + (0.03125 / idx - 1))[uint8(idx - 1)] + 1):
            mem[0] = idx - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d59
            s = uint8(stor(code.data[3372 len 32] + (0.03125 / idx - 1))[uint8(idx - 1)] + 1) + sha3(idx - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d59)
            while sha3(idx - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d59) + uint256(storC65A[idx].field_0) > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
        s = 1
        while s < stor9.length:
            require idx - 1 < stor10.length
            require s < stor9.length
            require idx - 1 < uint256(stor9[s])
            require stor((0.03125 / idx - 1) + ('array', ('var', 1), ('name', 'stor9', 9)))[uint8(idx - 1)] < uint256(storC65A[idx].field_0)
            mem[0] = idx - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d59
            uint256(stor[stor((0.03125 / idx - 1) + ('array', ('var', 1), ('name', 'stor9', 9)))[uint8(idx - 1)] + sha3(idx - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d59)])++
            s = s + 1
            continue 
        stor2--
        if not stor2 <= stor2 - 1:
            mem[0] = 2
            s = sha3(2) + (stor2 + 30 / 32)
            while sha3(2) + (stor2 + 31 / 32) > stor9.length:
                uint256(stor9.length) = 0
                s = stor9.length + 1
                continue 
        s = stor9.length
        idx = idx - 1
        continue 
    stor6 = 0
    return 1
}

function sub_8598db8b(?) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if start > arg2:
        return 0
    if arg2 > end:
        return 0
    if arg1.length != stor2:
        return 0
    idx = 0
    while idx < stor2:
        mem[0] = 2
        require idx < arg1.length
        if mem[(32 * idx) + 159 len 1] > stor(code.data[3372 len 32] + (0.03125 / idx))[uint8(idx)]:
            require idx < arg1.length
            mem[(32 * idx) + 128] = 0
        idx = idx + 1
        continue 
    if index[tx.origin]:
        require index[tx.origin] < voters.length
        uint256(voters[stor7[tx.origin]]) = tx.origin or Mask(96, 160, uint256(voters[stor7[tx.origin]]))
        require index[tx.origin] < stor9.length
        uint256(stor9[stor7[tx.origin]]) = arg1.length
        if not arg1.length:
            idx = 0
            while uint256(stor9[stor7[tx.origin]]) + 31 / 32 > idx:
                uint8(stor9[stor7[tx.origin] + idx]) = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 128
            while (32 * arg1.length) + 128 > idx:
                uint256(stor9[stor7[tx.origin]]) = mem[idx] * 256^s or !(255 * 256^s) and uint256(stor9[stor7[tx.origin]])
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
            s = sha3(index[tx.origin] + sha3(9))
            while idx:
                uint256(stor[s]) = !(255 * 256^idx) and uint256(stor[s])
                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                s = (idx + 1 / 32) + s
                continue 
            idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg1.length) + 31) >> 5 * None + 3 / 32)
            while uint256(stor9[stor7[tx.origin]]) + 31 / 32 > idx:
                uint8(stor9[stor7[tx.origin] + idx]) = 0
                idx = idx + 1
                continue 
        stor4++
        emit 0xc1eff9d9: tx.origin, sha3(arg2 + index[tx.origin] + stor4 + 1)
        return sha3(arg2 + index[tx.origin] + stor4 + 1)
    voters.length++
    if not voters.length <= voters.length + 1:
        idx = voters.length + 1
        while voters.length > idx:
            uint256(voters[idx]) = 0
            idx = idx + 1
            continue 
    stor9.length++
    if not stor9.length <= stor9.length + 1:
        mem[0] = 9
        idx = stor9.length + 1
        while sha3(9) + stor9.length > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])]) = 0
            mem[0] = idx + sha3(mem[0])
            s = sha3(s + sha3(mem[0]))
            while sha3(s + sha3(mem[0])) + (uint256(stor[s + sha3(mem[0])]) + 31 / 32) > s + sha3(mem[0]):
                uint256(stor[s + sha3(mem[0])]) = 0
                s = s + 1
                continue 
            s = s + 1
            continue 
    require voters.length < voters.length
    uint256(voters[voters.length]) = tx.origin or Mask(96, 160, uint256(voters[voters.length]))
    require voters.length < stor9.length
    uint256(stor9[stor8.length]) = arg1.length
    if not arg1.length:
        idx = 0
        while uint256(stor9[stor8.length]) + 31 / 32 > idx:
            uint8(stor9[stor8.length + idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            uint256(stor9[stor8.length]) = mem[idx] * 256^s or !(255 * 256^s) and uint256(stor9[stor8.length])
            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        s = sha3(voters.length + sha3(9))
        while idx:
            uint256(stor[s]) = !(255 * 256^idx) and uint256(stor[s])
            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
            s = (idx + 1 / 32) + s
            continue 
        idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg1.length) + 31) >> 5 * None + 3 / 32)
        while uint256(stor9[stor8.length]) + 31 / 32 > idx:
            uint8(stor9[stor8.length + idx]) = 0
            idx = idx + 1
            continue 
    index[tx.origin] = voters.length
    stor4++
    emit 0xc1eff9d9: tx.origin, sha3(arg2 + voters.length + stor4 + 1)
    return sha3(arg2 + voters.length + stor4 + 1)
}

function sub_976a3a4d(?) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if start > block.timestamp:
        return 0
    if block.timestamp > end:
        return 0
    if arg1.length != stor2:
        return 0
    idx = 0
    while idx < stor2:
        mem[0] = 2
        require idx < arg1.length
        if mem[(32 * idx) + 159 len 1] > stor(code.data[3372 len 32] + (0.03125 / idx))[uint8(idx)]:
            require idx < arg1.length
            mem[(32 * idx) + 128] = 0
        idx = idx + 1
        continue 
    if index[tx.origin]:
        require index[tx.origin] < voters.length
        uint256(voters[stor7[tx.origin]]) = tx.origin or Mask(96, 160, uint256(voters[stor7[tx.origin]]))
        require index[tx.origin] < stor9.length
        uint256(stor9[stor7[tx.origin]]) = arg1.length
        if not arg1.length:
            idx = 0
            while uint256(stor9[stor7[tx.origin]]) + 31 / 32 > idx:
                uint8(stor9[stor7[tx.origin] + idx]) = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 128
            while (32 * arg1.length) + 128 > idx:
                uint256(stor9[stor7[tx.origin]]) = mem[idx] * 256^s or !(255 * 256^s) and uint256(stor9[stor7[tx.origin]])
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
            s = sha3(index[tx.origin] + sha3(9))
            while idx:
                uint256(stor[s]) = !(255 * 256^idx) and uint256(stor[s])
                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                s = (idx + 1 / 32) + s
                continue 
            idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg1.length) + 31) >> 5 * None + 3 / 32)
            while uint256(stor9[stor7[tx.origin]]) + 31 / 32 > idx:
                uint8(stor9[stor7[tx.origin] + idx]) = 0
                idx = idx + 1
                continue 
        stor4++
        emit 0xc1eff9d9: tx.origin, sha3(block.timestamp + index[tx.origin] + stor4 + 1)
        return sha3(block.timestamp + index[tx.origin] + stor4 + 1)
    voters.length++
    if not voters.length <= voters.length + 1:
        idx = voters.length + 1
        while voters.length > idx:
            uint256(voters[idx]) = 0
            idx = idx + 1
            continue 
    stor9.length++
    if not stor9.length <= stor9.length + 1:
        mem[0] = 9
        idx = stor9.length + 1
        while sha3(9) + stor9.length > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])]) = 0
            mem[0] = idx + sha3(mem[0])
            s = sha3(s + sha3(mem[0]))
            while sha3(s + sha3(mem[0])) + (uint256(stor[s + sha3(mem[0])]) + 31 / 32) > s + sha3(mem[0]):
                uint256(stor[s + sha3(mem[0])]) = 0
                s = s + 1
                continue 
            s = s + 1
            continue 
    require voters.length < voters.length
    uint256(voters[voters.length]) = tx.origin or Mask(96, 160, uint256(voters[voters.length]))
    require voters.length < stor9.length
    uint256(stor9[stor8.length]) = arg1.length
    if not arg1.length:
        idx = 0
        while uint256(stor9[stor8.length]) + 31 / 32 > idx:
            uint8(stor9[stor8.length + idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            uint256(stor9[stor8.length]) = mem[idx] * 256^s or !(255 * 256^s) and uint256(stor9[stor8.length])
            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        s = sha3(voters.length + sha3(9))
        while idx:
            uint256(stor[s]) = !(255 * 256^idx) and uint256(stor[s])
            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
            s = (idx + 1 / 32) + s
            continue 
        idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg1.length) + 31) >> 5 * None + 3 / 32)
        while uint256(stor9[stor8.length]) + 31 / 32 > idx:
            uint8(stor9[stor8.length + idx]) = 0
            idx = idx + 1
            continue 
    index[tx.origin] = voters.length
    stor4++
    emit 0xc1eff9d9: tx.origin, sha3(block.timestamp + voters.length + stor4 + 1)
    return sha3(block.timestamp + voters.length + stor4 + 1)
}



}
