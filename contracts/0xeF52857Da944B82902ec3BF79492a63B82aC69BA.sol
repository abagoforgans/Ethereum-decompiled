contract main {


// =======================  Init code  ======================


uint256 stor2;
uint256 stor3;

function _fallback() payable {
    stor2++
    if not stor2 <= stor2 + 1:
        mem[0] = 2
        idx = 4 * stor2 + 1
        while sha3(2) + (4 * stor2) > idx + sha3(mem[0]):
            address(stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            uint256(stor[idx + sha3(mem[0]) + 2]) = 0
            mem[0] = idx + sha3(mem[0]) + 2
            s = sha3(s + sha3(mem[0]) + 2)
            while sha3(s + sha3(mem[0]) + 2) + uint256(stor[s + sha3(mem[0]) + 2]) > s + sha3(mem[0]):
                uint256(stor[s + sha3(mem[0])]) = 0
                s = s + 1
                continue 
            uint8(stor[s + sha3(mem[0]) + 3]) = 0
            s = s + 4
            continue 
    stor3++
    if not stor3 <= stor3 + 1:
        mem[0] = 3
        idx = stor3 + 1
        while sha3(3) + stor3 > idx + sha3(mem[0]):
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
    return code.data[314 len 5716]
}



// =====================  Runtime code  =====================


address registrarAddress;
uint256 stor0;
array of uint256 sub_81638e9b;
array of uint256 stor2;
array of struct schemas;
array of uint256 stor29102676481673041902632991033461445430619272659676223336789171408008386403023;
array of uint8 stor29102676481673041902632991033461445430619272659676223336789171408008386403025;
array of struct stor39012587308167444720038037897580552815671242007440487229414614828470849747802;
array of uint256 stor39012587308167444720038037897580552815671242007440487229414614828470849747803;
array of uint256 stor39012587308167444720038037897580552815671242007440487229414614828470849747804;
array of uint8 stor39012587308167444720038037897580552815671242007440487229414614828470849747805;

function registrarAddress() payable {
    return address(registrarAddress)
}

function schemas(uint256 arg1) payable {
    return uint256(schemas[arg1][0 len schemas[arg1].length].field_0)
}

function sub_81638e9b(?) payable {
    return sub_81638e9b[arg1]
}

function _fallback() payable {
    revert 
}

function things(uint256 arg1) payable {
    require arg1 < stor2.length
    return address(stor5640[arg1].field_0), stor4057[arg1], bool(uint8(stor4057[arg1]))
}

function configure(address arg1) payable {
    require msg.value <= 0
    if not address(registrarAddress):
        uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
        return 1
    emit code.data[5684 len 32]: 3, address(registrarAddress)
    return 0
}

function sub_798bc6b2(?) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 1
        if sub_81638e9b[mem[(32 * idx) + 128]] <= 0:
            idx = idx + 1
            continue 
        return 1
    return 0
}

function sub_815af8df(?) payable {
    call address(registrarAddress).0x1cf52f2b with:
         gas gas_remaining - 25050 wei
        args msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    require msg.value <= 0
    if 0 == sub_81638e9b[arg1]:
        emit code.data[5684 len 32]: 2, arg1
        return 0
    require sub_81638e9b[arg1] < stor2.length
    if address(stor5640[stor1[arg1]].field_0) != msg.sender:
        emit code.data[5684 len 32]: 3, arg1
        return 0
    require sub_81638e9b[arg1] < stor2.length
    uint256(stor4057[stor1[arg1]]) = arg2 or Mask(248, 8, uint256(stor4057[stor1[arg1]]))
    return 1
}

function sub_abe44ddd(?) payable {
    call address(registrarAddress).0x1cf52f2b with:
         gas gas_remaining - 25050 wei
        args msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    require msg.value <= 0
    if arg1 > stor2.length:
        emit code.data[5684 len 32]: 2, arg2
        return 0
    if sub_81638e9b[arg2] > 0:
        emit code.data[5684 len 32]: 2, arg2
        return 0
    require arg1 < stor2.length
    if address(stor5640[arg1].field_0) != msg.sender:
        emit code.data[5684 len 32]: 3, arg2
        return 0
    sub_81638e9b[arg2] = arg1
    require arg1 < stor2.length
    emit 0xf91b51ac: bool(uint8(stor4057[arg1])), arg1, arg2, msg.sender
    return 1
}

function sub_3e3593a5(?) payable {
    call address(registrarAddress).0xa2d92d66 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if ext_call.return_data[12 len 20] != msg.sender:
        return 0
    require msg.value <= 0
    schemas.length++
    if not schemas.length <= schemas.length + 1:
        mem[0] = 3
        idx = schemas.length + 1
        while sha3(3) + schemas.length > idx + sha3(mem[0]):
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
    require schemas.length < schemas.length
    uint256(schemas[schemas.length][].field_0) = Array(len=arg1.length, data=arg1[all])
    return schemas.length
}

function sub_2bc6a2a6(?) payable {
    if 0 == sub_81638e9b[arg1]:
        emit code.data[5684 len 32]: 2, arg1
        return 96, 128, 0, 0, 0
    require sub_81638e9b[arg1] < stor2.length
    require stor4057[stor1[arg1]] < schemas.length
    mem[192] = uint256(schemas[stor4057[stor1[arg1]]].field_0)
    idx = 192
    s = 0
    while schemas[stor4057[stor1[arg1]]].length + 160 > idx:
        mem[idx + 32] = uint256(schemas[stor4057[stor1[arg1]] + s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    if stor5640[stor1[arg1]]:
        mem[ceil32(schemas[stor4057[stor1[arg1]]].length) + 224] = uint256(stor[sha3((4 * stor1[arg1]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c)])
        idx = ceil32(schemas[stor4057[stor1[arg1]]].length) + 224
        s = 0
        while ceil32(schemas[stor4057[stor1[arg1]]].length) + (32 * stor5640[stor1[arg1]]) + 192 > idx:
            mem[idx + 32] = uint256(stor[s + sha3((4 * stor1[arg1]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c) + 1])
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=schemas[stor4057[stor1[arg1]]].length, data=mem[192 len schemas[stor4057[stor1[arg1]]].length], stor5640[stor1[arg1]], mem[ceil32(schemas[stor4057[stor1[arg1]]].length) + 224 len 32 * stor5640[stor1[arg1]]]), 
           schemas[stor4057[stor1[arg1]]].length + 128,
           bool(stor5640[stor1[arg1]])
}

function sub_a7fa38e2(?) payable {
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg3.length) + (32 * arg4.length) + 164] = msg.sender
    call address(registrarAddress).0x1cf52f2b with:
         gas gas_remaining - 25050 wei
        args msg.sender
    mem[(32 * arg3.length) + (32 * arg4.length) + 160] = ext_call.return_data[0]
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    require msg.value <= 0
    if arg2 > schemas.length:
        require 0 < arg4.length
        emit code.data[5684 len 32]: 4, mem[(32 * arg3.length) + 160]
        return 0
    if 0 == arg4.length:
        emit code.data[5684 len 32]: 5, 0
        return 0
    if 0 == arg3.length:
        emit code.data[5684 len 32]: 6, 0
        return 0
    require arg1 < stor2.length
    if not address(stor5640[arg1].field_0):
        s = 0
        idx = 0
        while idx < arg4.length:
            require idx < arg4.length
            mem[0] = mem[(32 * arg3.length) + (32 * idx) + 160]
            mem[32] = 1
            if sub_81638e9b[mem[(32 * arg3.length) + (32 * idx) + 160]] <= 0:
                s = sub_81638e9b[mem[(32 * arg3.length) + (32 * idx) + 160]]
                idx = idx + 1
                continue 
            if sub_81638e9b[mem[(32 * arg3.length) + (32 * idx) + 160]] == arg1:
                s = sub_81638e9b[mem[(32 * arg3.length) + (32 * idx) + 160]]
                idx = idx + 1
                continue 
            require idx < arg4.length
            emit code.data[5684 len 32]: 1, mem[(32 * arg3.length) + (32 * idx) + 160]
            return 0
        mem[(32 * arg3.length) + (32 * arg4.length) + 160] = msg.sender
        mem[(32 * arg3.length) + (32 * arg4.length) + 192] = arg2
        mem[(32 * arg3.length) + (32 * arg4.length) + 224] = 96
        mem[(32 * arg3.length) + (32 * arg4.length) + 256] = 1
        require arg1 < stor2.length
        uint256(stor5640[arg1].field_0) = Mask(96, 0, stor5640[arg1].field_160)
        stor5640[arg1] = arg2
        stor5640[arg1] = arg3.length
        if not arg3.length:
            idx = 0
            while stor5640[arg1] > idx:
                uint256(stor[idx + sha3((4 * arg1) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c)]) = 0
                idx = idx + 1
                continue 
            stor5640[arg1] = 1
            idx = 0
            while idx < arg4.length:
                require idx < arg4.length
                mem[0] = mem[(32 * idx) + (32 * arg3.length) + 160]
                mem[32] = 1
                if not sub_81638e9b[mem[(32 * idx) + (32 * arg3.length) + 160]]:
                    require idx < arg4.length
                    mem[0] = mem[(32 * arg3.length) + (32 * idx) + 160]
                    sub_81638e9b[mem[(32 * arg3.length) + (32 * idx) + 160]] = arg1
                    require idx < arg4.length
                    _322 = mem[(32 * idx) + (32 * arg3.length) + 160]
                    mem[(32 * arg3.length) + (32 * arg4.length) + 288] = arg1
                    emit 0xc8f96bb0: arg1, _322, msg.sender
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 128
            while (32 * arg3.length) + 128 > idx:
                uint256(stor[s + sha3((4 * arg1) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c)]) = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg3.length) + 31) >> 5
            while stor5640[arg1] > idx:
                uint256(stor[idx + sha3((4 * arg1) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c)]) = 0
                idx = idx + 1
                continue 
            stor5640[arg1] = 1
            idx = 0
            while idx < arg4.length:
                require idx < arg4.length
                mem[0] = mem[(32 * idx) + (32 * arg3.length) + 160]
                mem[32] = 1
                if not sub_81638e9b[mem[(32 * idx) + (32 * arg3.length) + 160]]:
                    require idx < arg4.length
                    mem[0] = mem[(32 * arg3.length) + (32 * idx) + 160]
                    sub_81638e9b[mem[(32 * arg3.length) + (32 * idx) + 160]] = arg1
                    require idx < arg4.length
                    _370 = mem[(32 * idx) + (32 * arg3.length) + 160]
                    mem[(32 * arg3.length) + (32 * arg4.length) + 288] = arg1
                    emit 0xc8f96bb0: arg1, _370, msg.sender
                idx = idx + 1
                continue 
    else:
        require arg1 < stor2.length
        if address(stor5640[arg1].field_0) != msg.sender:
            require 0 < arg4.length
            emit code.data[5684 len 32]: 3, mem[(32 * arg3.length) + 160]
            return 0
        s = 0
        idx = 0
        while idx < arg4.length:
            require idx < arg4.length
            mem[0] = mem[(32 * arg3.length) + (32 * idx) + 160]
            mem[32] = 1
            if sub_81638e9b[mem[(32 * arg3.length) + (32 * idx) + 160]] <= 0:
                s = sub_81638e9b[mem[(32 * arg3.length) + (32 * idx) + 160]]
                idx = idx + 1
                continue 
            if sub_81638e9b[mem[(32 * arg3.length) + (32 * idx) + 160]] == arg1:
                s = sub_81638e9b[mem[(32 * arg3.length) + (32 * idx) + 160]]
                idx = idx + 1
                continue 
            require idx < arg4.length
            emit code.data[5684 len 32]: 1, mem[(32 * arg3.length) + (32 * idx) + 160]
            return 0
        mem[(32 * arg3.length) + (32 * arg4.length) + 160] = msg.sender
        mem[(32 * arg3.length) + (32 * arg4.length) + 192] = arg2
        mem[(32 * arg3.length) + (32 * arg4.length) + 224] = 96
        mem[(32 * arg3.length) + (32 * arg4.length) + 256] = 1
        require arg1 < stor2.length
        uint256(stor5640[arg1].field_0) = Mask(96, 0, stor5640[arg1].field_160)
        stor5640[arg1] = arg2
        stor5640[arg1] = arg3.length
        if not arg3.length:
            idx = 0
            while stor5640[arg1] > idx:
                uint256(stor[idx + sha3((4 * arg1) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c)]) = 0
                idx = idx + 1
                continue 
            stor5640[arg1] = 1
            idx = 0
            while idx < arg4.length:
                require idx < arg4.length
                mem[0] = mem[(32 * idx) + (32 * arg3.length) + 160]
                mem[32] = 1
                if not sub_81638e9b[mem[(32 * idx) + (32 * arg3.length) + 160]]:
                    require idx < arg4.length
                    mem[0] = mem[(32 * arg3.length) + (32 * idx) + 160]
                    sub_81638e9b[mem[(32 * arg3.length) + (32 * idx) + 160]] = arg1
                    require idx < arg4.length
                    _329 = mem[(32 * idx) + (32 * arg3.length) + 160]
                    mem[(32 * arg3.length) + (32 * arg4.length) + 288] = arg1
                    emit 0xc8f96bb0: arg1, _329, msg.sender
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 128
            while (32 * arg3.length) + 128 > idx:
                uint256(stor[s + sha3((4 * arg1) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c)]) = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg3.length) + 31) >> 5
            while stor5640[arg1] > idx:
                uint256(stor[idx + sha3((4 * arg1) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c)]) = 0
                idx = idx + 1
                continue 
            stor5640[arg1] = 1
            idx = 0
            while idx < arg4.length:
                require idx < arg4.length
                mem[0] = mem[(32 * idx) + (32 * arg3.length) + 160]
                mem[32] = 1
                if not sub_81638e9b[mem[(32 * idx) + (32 * arg3.length) + 160]]:
                    require idx < arg4.length
                    mem[0] = mem[(32 * arg3.length) + (32 * idx) + 160]
                    sub_81638e9b[mem[(32 * arg3.length) + (32 * idx) + 160]] = arg1
                    require idx < arg4.length
                    _375 = mem[(32 * idx) + (32 * arg3.length) + 160]
                    mem[(32 * arg3.length) + (32 * arg4.length) + 288] = arg1
                    emit 0xc8f96bb0: arg1, _375, msg.sender
                idx = idx + 1
                continue 
    return 1
}

function sub_1c9897ac(?) payable {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
    call address(registrarAddress).0x1cf52f2b with:
         gas gas_remaining - 25050 wei
        args msg.sender
    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    require msg.value <= 0
    stor2.length++
    if not stor2.length > stor2.length + 1:
        if arg1 > schemas.length:
            require 0 < arg3.length
            emit code.data[5684 len 32]: 4, mem[(32 * arg2.length) + 160]
            stor2.length--
            if not stor2.length <= stor2.length - 1:
                mem[0] = 2
                idx = 4 * stor2.length - 1
                while sha3(2) + (4 * stor2.length) > idx + sha3(mem[0]):
                    address(stor[idx + sha3(mem[0])]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 2]) = 0
                    mem[0] = idx + sha3(mem[0]) + 2
                    s = sha3(s + sha3(mem[0]) + 2)
                    while sha3(s + sha3(mem[0]) + 2) + uint256(stor[s + sha3(mem[0]) + 2]) > s + sha3(mem[0]):
                        uint256(stor[s + sha3(mem[0])]) = 0
                        s = s + 1
                        continue 
                    uint8(stor[s + sha3(mem[0]) + 3]) = 0
                    s = s + 4
                    continue 
                return 0
            else:
                return 0
        if 0 == arg3.length:
            emit code.data[5684 len 32]: 5, 0
            stor2.length--
            if not stor2.length <= stor2.length - 1:
                mem[0] = 2
                idx = 4 * stor2.length - 1
                while sha3(2) + (4 * stor2.length) > idx + sha3(mem[0]):
                    address(stor[idx + sha3(mem[0])]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 2]) = 0
                    mem[0] = idx + sha3(mem[0]) + 2
                    s = sha3(s + sha3(mem[0]) + 2)
                    while sha3(s + sha3(mem[0]) + 2) + uint256(stor[s + sha3(mem[0]) + 2]) > s + sha3(mem[0]):
                        uint256(stor[s + sha3(mem[0])]) = 0
                        s = s + 1
                        continue 
                    uint8(stor[s + sha3(mem[0]) + 3]) = 0
                    s = s + 4
                    continue 
                return 0
            else:
                return 0
        if 0 == arg2.length:
            emit code.data[5684 len 32]: 6, 0
            stor2.length--
            if not stor2.length <= stor2.length - 1:
                mem[0] = 2
                idx = 4 * stor2.length - 1
                while sha3(2) + (4 * stor2.length) > idx + sha3(mem[0]):
                    address(stor[idx + sha3(mem[0])]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 2]) = 0
                    mem[0] = idx + sha3(mem[0]) + 2
                    s = sha3(s + sha3(mem[0]) + 2)
                    while sha3(s + sha3(mem[0]) + 2) + uint256(stor[s + sha3(mem[0]) + 2]) > s + sha3(mem[0]):
                        uint256(stor[s + sha3(mem[0])]) = 0
                        s = s + 1
                        continue 
                    uint8(stor[s + sha3(mem[0]) + 3]) = 0
                    s = s + 4
                    continue 
                return 0
            else:
                return 0
        require stor2.length < stor2.length
        mem[0] = 2
        if not address(stor5640[stor2.length].field_0):
            s = 0
            idx = 0
            while idx < arg3.length:
                require idx < arg3.length
                mem[0] = mem[(32 * arg2.length) + (32 * idx) + 160]
                mem[32] = 1
                if sub_81638e9b[mem[(32 * arg2.length) + (32 * idx) + 160]] <= 0:
                    s = sub_81638e9b[mem[(32 * arg2.length) + (32 * idx) + 160]]
                    idx = idx + 1
                    continue 
                if sub_81638e9b[mem[(32 * arg2.length) + (32 * idx) + 160]] == stor2.length:
                    s = sub_81638e9b[mem[(32 * arg2.length) + (32 * idx) + 160]]
                    idx = idx + 1
                    continue 
                require idx < arg3.length
                emit code.data[5684 len 32]: 1, mem[(32 * arg2.length) + (32 * idx) + 160]
                stor2.length--
                if not stor2.length <= stor2.length - 1:
                    mem[0] = 2
                    idx = sha3(mem[0]) + (4 * stor2.length - 1)
                    while sha3(2) + (4 * stor2.length) > idx:
                        address(stor[idx]) = 0
                        sub_81638e9b[idx] = 0
                        stor2[idx] = 0
                        mem[0] = idx + 2
                        s = sha3(s + 2)
                        while sha3(s + 2) + stor2[s] > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                        uint8(schemas[s].field_0) = 0
                        s = s + 4
                        continue 
                    return 0
                else:
                    return 0
            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = msg.sender
            mem[(32 * arg3.length) + (32 * arg2.length) + 192] = arg1
            mem[(32 * arg3.length) + (32 * arg2.length) + 224] = 96
            mem[(32 * arg3.length) + (32 * arg2.length) + 256] = 1
            require stor2.length < stor2.length
            uint256(stor5640[stor2.length].field_0) = Mask(96, 0, stor5640[stor2.length].field_160)
            stor5640[stor2.length] = arg1
            stor5640[stor2.length] = arg2.length
            if not arg2.length:
                idx = 0
                while stor5640[stor2.length] > idx:
                    uint256(stor[idx + sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c)]) = 0
                    idx = idx + 1
                    continue 
                stor5640[stor2.length] = 1
                idx = 0
                while idx < arg3.length:
                    require idx < arg3.length
                    mem[0] = mem[(32 * idx) + (32 * arg2.length) + 160]
                    mem[32] = 1
                    if not sub_81638e9b[mem[(32 * idx) + (32 * arg2.length) + 160]]:
                        require idx < arg3.length
                        mem[0] = mem[(32 * arg2.length) + (32 * idx) + 160]
                        sub_81638e9b[mem[(32 * arg2.length) + (32 * idx) + 160]] = stor2.length
                        require idx < arg3.length
                        _815 = mem[(32 * idx) + (32 * arg2.length) + 160]
                        mem[(32 * arg3.length) + (32 * arg2.length) + 288] = stor2.length
                        emit 0xc8f96bb0: stor2.length, _815, msg.sender
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 128
                while (32 * arg2.length) + 128 > idx:
                    uint256(stor[s + sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c)]) = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
                while stor5640[stor2.length] > idx:
                    uint256(stor[idx + sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c)]) = 0
                    idx = idx + 1
                    continue 
                stor5640[stor2.length] = 1
                idx = 0
                while idx < arg3.length:
                    require idx < arg3.length
                    mem[0] = mem[(32 * idx) + (32 * arg2.length) + 160]
                    mem[32] = 1
                    if not sub_81638e9b[mem[(32 * idx) + (32 * arg2.length) + 160]]:
                        require idx < arg3.length
                        mem[0] = mem[(32 * arg2.length) + (32 * idx) + 160]
                        sub_81638e9b[mem[(32 * arg2.length) + (32 * idx) + 160]] = stor2.length
                        require idx < arg3.length
                        _937 = mem[(32 * idx) + (32 * arg2.length) + 160]
                        mem[(32 * arg3.length) + (32 * arg2.length) + 288] = stor2.length
                        emit 0xc8f96bb0: stor2.length, _937, msg.sender
                    idx = idx + 1
                    continue 
        else:
            require stor2.length < stor2.length
            mem[0] = 2
            if address(stor5640[stor2.length].field_0) != msg.sender:
                require 0 < arg3.length
                emit code.data[5684 len 32]: 3, mem[(32 * arg2.length) + 160]
                stor2.length--
                if not stor2.length <= stor2.length - 1:
                    mem[0] = 2
                    idx = 4 * stor2.length - 1
                    while sha3(2) + (4 * stor2.length) > idx + sha3(mem[0]):
                        address(stor[idx + sha3(mem[0])]) = 0
                        uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                        uint256(stor[idx + sha3(mem[0]) + 2]) = 0
                        mem[0] = idx + sha3(mem[0]) + 2
                        s = sha3(s + sha3(mem[0]) + 2)
                        while sha3(s + sha3(mem[0]) + 2) + uint256(stor[s + sha3(mem[0]) + 2]) > s + sha3(mem[0]):
                            uint256(stor[s + sha3(mem[0])]) = 0
                            s = s + 1
                            continue 
                        uint8(stor[s + sha3(mem[0]) + 3]) = 0
                        s = s + 4
                        continue 
                    return 0
                else:
                    return 0
            s = 0
            idx = 0
            while idx < arg3.length:
                require idx < arg3.length
                mem[0] = mem[(32 * arg2.length) + (32 * idx) + 160]
                mem[32] = 1
                if sub_81638e9b[mem[(32 * arg2.length) + (32 * idx) + 160]] <= 0:
                    s = sub_81638e9b[mem[(32 * arg2.length) + (32 * idx) + 160]]
                    idx = idx + 1
                    continue 
                if sub_81638e9b[mem[(32 * arg2.length) + (32 * idx) + 160]] == stor2.length:
                    s = sub_81638e9b[mem[(32 * arg2.length) + (32 * idx) + 160]]
                    idx = idx + 1
                    continue 
                require idx < arg3.length
                emit code.data[5684 len 32]: 1, mem[(32 * arg2.length) + (32 * idx) + 160]
                stor2.length--
                if not stor2.length <= stor2.length - 1:
                    mem[0] = 2
                    idx = sha3(mem[0]) + (4 * stor2.length - 1)
                    while sha3(2) + (4 * stor2.length) > idx:
                        address(stor[idx]) = 0
                        sub_81638e9b[idx] = 0
                        stor2[idx] = 0
                        mem[0] = idx + 2
                        s = sha3(s + 2)
                        while sha3(s + 2) + stor2[s] > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                        uint8(schemas[s].field_0) = 0
                        s = s + 4
                        continue 
                    return 0
                else:
                    return 0
            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = msg.sender
            mem[(32 * arg3.length) + (32 * arg2.length) + 192] = arg1
            mem[(32 * arg3.length) + (32 * arg2.length) + 224] = 96
            mem[(32 * arg3.length) + (32 * arg2.length) + 256] = 1
            require stor2.length < stor2.length
            uint256(stor5640[stor2.length].field_0) = Mask(96, 0, stor5640[stor2.length].field_160)
            stor5640[stor2.length] = arg1
            stor5640[stor2.length] = arg2.length
            if not arg2.length:
                idx = 0
                while stor5640[stor2.length] > idx:
                    uint256(stor[idx + sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c)]) = 0
                    idx = idx + 1
                    continue 
                stor5640[stor2.length] = 1
                idx = 0
                while idx < arg3.length:
                    require idx < arg3.length
                    mem[0] = mem[(32 * idx) + (32 * arg2.length) + 160]
                    mem[32] = 1
                    if not sub_81638e9b[mem[(32 * idx) + (32 * arg2.length) + 160]]:
                        require idx < arg3.length
                        mem[0] = mem[(32 * arg2.length) + (32 * idx) + 160]
                        sub_81638e9b[mem[(32 * arg2.length) + (32 * idx) + 160]] = stor2.length
                        require idx < arg3.length
                        _820 = mem[(32 * idx) + (32 * arg2.length) + 160]
                        mem[(32 * arg3.length) + (32 * arg2.length) + 288] = stor2.length
                        emit 0xc8f96bb0: stor2.length, _820, msg.sender
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 128
                while (32 * arg2.length) + 128 > idx:
                    uint256(stor[s + sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c)]) = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
                while stor5640[stor2.length] > idx:
                    uint256(stor[idx + sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c)]) = 0
                    idx = idx + 1
                    continue 
                stor5640[stor2.length] = 1
                idx = 0
                while idx < arg3.length:
                    require idx < arg3.length
                    mem[0] = mem[(32 * idx) + (32 * arg2.length) + 160]
                    mem[32] = 1
                    if not sub_81638e9b[mem[(32 * idx) + (32 * arg2.length) + 160]]:
                        require idx < arg3.length
                        mem[0] = mem[(32 * arg2.length) + (32 * idx) + 160]
                        sub_81638e9b[mem[(32 * arg2.length) + (32 * idx) + 160]] = stor2.length
                        require idx < arg3.length
                        _940 = mem[(32 * idx) + (32 * arg2.length) + 160]
                        mem[(32 * arg3.length) + (32 * arg2.length) + 288] = stor2.length
                        emit 0xc8f96bb0: stor2.length, _940, msg.sender
                    idx = idx + 1
                    continue 
    else:
        mem[0] = 2
        idx = 4 * stor2.length + 1
        while sha3(2) + (4 * stor2.length) > idx + sha3(mem[0]):
            address(stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            uint256(stor[idx + sha3(mem[0]) + 2]) = 0
            mem[0] = idx + sha3(mem[0]) + 2
            s = sha3(s + sha3(mem[0]) + 2)
            while sha3(s + sha3(mem[0]) + 2) + uint256(stor[s + sha3(mem[0]) + 2]) > s + sha3(mem[0]):
                uint256(stor[s + sha3(mem[0])]) = 0
                s = s + 1
                continue 
            uint8(stor[s + sha3(mem[0]) + 3]) = 0
            s = s + 4
            continue 
        if arg1 > schemas.length:
            require 0 < arg3.length
            emit code.data[5684 len 32]: 4, mem[(32 * arg2.length) + 160]
            stor2.length--
            if not stor2.length <= stor2.length - 1:
                mem[0] = 2
                idx = 4 * stor2.length - 1
                while sha3(2) + (4 * stor2.length) > idx + sha3(mem[0]):
                    address(stor[idx + sha3(mem[0])]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 2]) = 0
                    mem[0] = idx + sha3(mem[0]) + 2
                    s = sha3(s + sha3(mem[0]) + 2)
                    while sha3(s + sha3(mem[0]) + 2) + uint256(stor[s + sha3(mem[0]) + 2]) > s + sha3(mem[0]):
                        uint256(stor[s + sha3(mem[0])]) = 0
                        s = s + 1
                        continue 
                    uint8(stor[s + sha3(mem[0]) + 3]) = 0
                    s = s + 4
                    continue 
                return 0
            else:
                return 0
        if 0 == arg3.length:
            emit code.data[5684 len 32]: 5, 0
            stor2.length--
            if not stor2.length <= stor2.length - 1:
                mem[0] = 2
                idx = 4 * stor2.length - 1
                while sha3(2) + (4 * stor2.length) > idx + sha3(mem[0]):
                    address(stor[idx + sha3(mem[0])]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 2]) = 0
                    mem[0] = idx + sha3(mem[0]) + 2
                    s = sha3(s + sha3(mem[0]) + 2)
                    while sha3(s + sha3(mem[0]) + 2) + uint256(stor[s + sha3(mem[0]) + 2]) > s + sha3(mem[0]):
                        uint256(stor[s + sha3(mem[0])]) = 0
                        s = s + 1
                        continue 
                    uint8(stor[s + sha3(mem[0]) + 3]) = 0
                    s = s + 4
                    continue 
                return 0
            else:
                return 0
        if 0 == arg2.length:
            emit code.data[5684 len 32]: 6, 0
            stor2.length--
            if not stor2.length <= stor2.length - 1:
                mem[0] = 2
                idx = 4 * stor2.length - 1
                while sha3(2) + (4 * stor2.length) > idx + sha3(mem[0]):
                    address(stor[idx + sha3(mem[0])]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 2]) = 0
                    mem[0] = idx + sha3(mem[0]) + 2
                    s = sha3(s + sha3(mem[0]) + 2)
                    while sha3(s + sha3(mem[0]) + 2) + uint256(stor[s + sha3(mem[0]) + 2]) > s + sha3(mem[0]):
                        uint256(stor[s + sha3(mem[0])]) = 0
                        s = s + 1
                        continue 
                    uint8(stor[s + sha3(mem[0]) + 3]) = 0
                    s = s + 4
                    continue 
                return 0
            else:
                return 0
        require stor2.length < stor2.length
        mem[0] = 2
        if not address(stor5640[stor2.length].field_0):
            s = 0
            idx = 0
            while idx < arg3.length:
                require idx < arg3.length
                mem[0] = mem[(32 * arg2.length) + (32 * idx) + 160]
                mem[32] = 1
                if sub_81638e9b[mem[(32 * arg2.length) + (32 * idx) + 160]] <= 0:
                    s = sub_81638e9b[mem[(32 * arg2.length) + (32 * idx) + 160]]
                    idx = idx + 1
                    continue 
                if sub_81638e9b[mem[(32 * arg2.length) + (32 * idx) + 160]] == stor2.length:
                    s = sub_81638e9b[mem[(32 * arg2.length) + (32 * idx) + 160]]
                    idx = idx + 1
                    continue 
                require idx < arg3.length
                emit code.data[5684 len 32]: 1, mem[(32 * arg2.length) + (32 * idx) + 160]
                stor2.length--
                if not stor2.length <= stor2.length - 1:
                    mem[0] = 2
                    idx = sha3(mem[0]) + (4 * stor2.length - 1)
                    while sha3(2) + (4 * stor2.length) > idx:
                        address(stor[idx]) = 0
                        sub_81638e9b[idx] = 0
                        stor2[idx] = 0
                        mem[0] = idx + 2
                        s = sha3(s + 2)
                        while sha3(s + 2) + stor2[s] > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                        uint8(schemas[s].field_0) = 0
                        s = s + 4
                        continue 
                    return 0
                else:
                    return 0
            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = msg.sender
            mem[(32 * arg3.length) + (32 * arg2.length) + 192] = arg1
            mem[(32 * arg3.length) + (32 * arg2.length) + 224] = 96
            mem[(32 * arg3.length) + (32 * arg2.length) + 256] = 1
            require stor2.length < stor2.length
            uint256(stor5640[stor2.length].field_0) = Mask(96, 0, stor5640[stor2.length].field_160)
            stor5640[stor2.length] = arg1
            stor5640[stor2.length] = arg2.length
            if not arg2.length:
                idx = 0
                while stor5640[stor2.length] > idx:
                    uint256(stor[idx + sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c)]) = 0
                    idx = idx + 1
                    continue 
                stor5640[stor2.length] = 1
                idx = 0
                while idx < arg3.length:
                    require idx < arg3.length
                    mem[0] = mem[(32 * idx) + (32 * arg2.length) + 160]
                    mem[32] = 1
                    if not sub_81638e9b[mem[(32 * idx) + (32 * arg2.length) + 160]]:
                        require idx < arg3.length
                        mem[0] = mem[(32 * arg2.length) + (32 * idx) + 160]
                        sub_81638e9b[mem[(32 * arg2.length) + (32 * idx) + 160]] = stor2.length
                        require idx < arg3.length
                        _943 = mem[(32 * idx) + (32 * arg2.length) + 160]
                        mem[(32 * arg3.length) + (32 * arg2.length) + 288] = stor2.length
                        emit 0xc8f96bb0: stor2.length, _943, msg.sender
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 128
                while (32 * arg2.length) + 128 > idx:
                    uint256(stor[s + sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c)]) = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
                while stor5640[stor2.length] > idx:
                    uint256(stor[idx + sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c)]) = 0
                    idx = idx + 1
                    continue 
                stor5640[stor2.length] = 1
                idx = 0
                while idx < arg3.length:
                    require idx < arg3.length
                    mem[0] = mem[(32 * idx) + (32 * arg2.length) + 160]
                    mem[32] = 1
                    if not sub_81638e9b[mem[(32 * idx) + (32 * arg2.length) + 160]]:
                        require idx < arg3.length
                        mem[0] = mem[(32 * arg2.length) + (32 * idx) + 160]
                        sub_81638e9b[mem[(32 * arg2.length) + (32 * idx) + 160]] = stor2.length
                        require idx < arg3.length
                        _995 = mem[(32 * idx) + (32 * arg2.length) + 160]
                        mem[(32 * arg3.length) + (32 * arg2.length) + 288] = stor2.length
                        emit 0xc8f96bb0: stor2.length, _995, msg.sender
                    idx = idx + 1
                    continue 
        else:
            require stor2.length < stor2.length
            mem[0] = 2
            if address(stor5640[stor2.length].field_0) != msg.sender:
                require 0 < arg3.length
                emit code.data[5684 len 32]: 3, mem[(32 * arg2.length) + 160]
                stor2.length--
                if not stor2.length <= stor2.length - 1:
                    mem[0] = 2
                    idx = 4 * stor2.length - 1
                    while sha3(2) + (4 * stor2.length) > idx + sha3(mem[0]):
                        address(stor[idx + sha3(mem[0])]) = 0
                        uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                        uint256(stor[idx + sha3(mem[0]) + 2]) = 0
                        mem[0] = idx + sha3(mem[0]) + 2
                        s = sha3(s + sha3(mem[0]) + 2)
                        while sha3(s + sha3(mem[0]) + 2) + uint256(stor[s + sha3(mem[0]) + 2]) > s + sha3(mem[0]):
                            uint256(stor[s + sha3(mem[0])]) = 0
                            s = s + 1
                            continue 
                        uint8(stor[s + sha3(mem[0]) + 3]) = 0
                        s = s + 4
                        continue 
                    return 0
                else:
                    return 0
            s = 0
            idx = 0
            while idx < arg3.length:
                require idx < arg3.length
                mem[0] = mem[(32 * arg2.length) + (32 * idx) + 160]
                mem[32] = 1
                if sub_81638e9b[mem[(32 * arg2.length) + (32 * idx) + 160]] <= 0:
                    s = sub_81638e9b[mem[(32 * arg2.length) + (32 * idx) + 160]]
                    idx = idx + 1
                    continue 
                if sub_81638e9b[mem[(32 * arg2.length) + (32 * idx) + 160]] == stor2.length:
                    s = sub_81638e9b[mem[(32 * arg2.length) + (32 * idx) + 160]]
                    idx = idx + 1
                    continue 
                require idx < arg3.length
                emit code.data[5684 len 32]: 1, mem[(32 * arg2.length) + (32 * idx) + 160]
                stor2.length--
                if not stor2.length <= stor2.length - 1:
                    mem[0] = 2
                    idx = sha3(mem[0]) + (4 * stor2.length - 1)
                    while sha3(2) + (4 * stor2.length) > idx:
                        address(stor[idx]) = 0
                        sub_81638e9b[idx] = 0
                        stor2[idx] = 0
                        mem[0] = idx + 2
                        s = sha3(s + 2)
                        while sha3(s + 2) + stor2[s] > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                        uint8(schemas[s].field_0) = 0
                        s = s + 4
                        continue 
                    return 0
                else:
                    return 0
            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = msg.sender
            mem[(32 * arg3.length) + (32 * arg2.length) + 192] = arg1
            mem[(32 * arg3.length) + (32 * arg2.length) + 224] = 96
            mem[(32 * arg3.length) + (32 * arg2.length) + 256] = 1
            require stor2.length < stor2.length
            uint256(stor5640[stor2.length].field_0) = Mask(96, 0, stor5640[stor2.length].field_160)
            stor5640[stor2.length] = arg1
            stor5640[stor2.length] = arg2.length
            if not arg2.length:
                idx = 0
                while stor5640[stor2.length] > idx:
                    uint256(stor[idx + sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c)]) = 0
                    idx = idx + 1
                    continue 
                stor5640[stor2.length] = 1
                idx = 0
                while idx < arg3.length:
                    require idx < arg3.length
                    mem[0] = mem[(32 * idx) + (32 * arg2.length) + 160]
                    mem[32] = 1
                    if not sub_81638e9b[mem[(32 * idx) + (32 * arg2.length) + 160]]:
                        require idx < arg3.length
                        mem[0] = mem[(32 * arg2.length) + (32 * idx) + 160]
                        sub_81638e9b[mem[(32 * arg2.length) + (32 * idx) + 160]] = stor2.length
                        require idx < arg3.length
                        _948 = mem[(32 * idx) + (32 * arg2.length) + 160]
                        mem[(32 * arg3.length) + (32 * arg2.length) + 288] = stor2.length
                        emit 0xc8f96bb0: stor2.length, _948, msg.sender
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 128
                while (32 * arg2.length) + 128 > idx:
                    uint256(stor[s + sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c)]) = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
                while stor5640[stor2.length] > idx:
                    uint256(stor[idx + sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c)]) = 0
                    idx = idx + 1
                    continue 
                stor5640[stor2.length] = 1
                idx = 0
                while idx < arg3.length:
                    require idx < arg3.length
                    mem[0] = mem[(32 * idx) + (32 * arg2.length) + 160]
                    mem[32] = 1
                    if not sub_81638e9b[mem[(32 * idx) + (32 * arg2.length) + 160]]:
                        require idx < arg3.length
                        mem[0] = mem[(32 * arg2.length) + (32 * idx) + 160]
                        sub_81638e9b[mem[(32 * arg2.length) + (32 * idx) + 160]] = stor2.length
                        require idx < arg3.length
                        _998 = mem[(32 * idx) + (32 * arg2.length) + 160]
                        mem[(32 * arg3.length) + (32 * arg2.length) + 288] = stor2.length
                        emit 0xc8f96bb0: stor2.length, _998, msg.sender
                    idx = idx + 1
                    continue 
    return 1
}

function sub_5a503138(?) payable {
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = arg4.length
    mem[(32 * arg2.length) + (32 * arg3.length) + 192 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = 0
    mem[64] = (32 * arg4.length) + (32 * arg2.length) + (32 * arg3.length) + 256
    mem[(32 * arg4.length) + (32 * arg2.length) + (32 * arg3.length) + 224] = 0
    mem[(32 * arg4.length) + (32 * arg2.length) + (32 * arg3.length) + 260] = msg.sender
    call address(registrarAddress).0x1cf52f2b with:
         gas gas_remaining - 25050 wei
        args msg.sender
    mem[(32 * arg4.length) + (32 * arg2.length) + (32 * arg3.length) + 256] = ext_call.return_data[0]
    require ext_call.success
    if ext_call.return_data[0]:
        require msg.value <= 0
        s = (32 * arg4.length) + (32 * arg2.length) + (32 * arg3.length) + 224
        t = (32 * arg4.length) + (32 * arg2.length) + (32 * arg3.length) + 192
        t = 0
        idx = 0
        t = 0
        while idx < arg4.length:
            require idx < mem[96]
            _1050 = mem[(32 * idx) + 128]
            _1051 = mem[64]
            if msize < mem[64]:
                mem[mem[64]] = mem[(32 * idx) + 159 len 1]
                mem[64] = mem[64] + (32 * uint8(_1050)) + 32
                u = 0
                while u < uint8(_1050):
                    require t + u < mem[(32 * arg2.length) + 128]
                    require u < mem[_1051]
                    mem[_1051 + (32 * u) + 32] = mem[(32 * t + u) + (32 * arg2.length) + 160]
                    u = u + 1
                    continue 
                _2082 = mem[64]
                if msize < mem[64]:
                    mem[mem[64]] = 1
                    mem[64] = mem[64] + 64
                    require idx < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                    require 0 < mem[_2082]
                    mem[_2082 + 32] = mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192]
                    stor2.length++
                    if not stor2.length > stor2.length + 1:
                        if arg1 > schemas.length:
                            require 0 < mem[_2082]
                            mem[_2082 + 64] = 4
                            mem[_2082 + 96] = mem[_2082 + 32]
                            emit code.data[5684 len 32]: 4, mem[_2082 + 32]
                            stor2.length--
                            if not stor2.length <= stor2.length - 1:
                                mem[0] = 2
                                s = sha3(mem[0]) + (4 * stor2.length - 1)
                                while sha3(2) + (4 * stor2.length) > s:
                                    address(stor[s]) = 0
                                    sub_81638e9b[s] = 0
                                    stor2[s] = 0
                                    mem[0] = s + 2
                                    t = sha3(t + 2)
                                    while sha3(t + 2) + stor2[t] > t:
                                        uint256(stor[t]) = 0
                                        t = t + 1
                                        continue 
                                    uint8(schemas[t].field_0) = 0
                                    t = t + 4
                                    continue 
                            s = _2082
                            t = _1051
                            t = _1050
                            idx = idx + 1
                            t = t + uint8(_1050)
                            continue 
                        if 0 == mem[_2082]:
                            mem[_2082 + 64] = 5
                            mem[_2082 + 96] = 0
                            emit code.data[5684 len 32]: 5, 0
                            stor2.length--
                            if not stor2.length <= stor2.length - 1:
                                mem[0] = 2
                                s = sha3(mem[0]) + (4 * stor2.length - 1)
                                while sha3(2) + (4 * stor2.length) > s:
                                    address(stor[s]) = 0
                                    sub_81638e9b[s] = 0
                                    stor2[s] = 0
                                    mem[0] = s + 2
                                    t = sha3(t + 2)
                                    while sha3(t + 2) + stor2[t] > t:
                                        uint256(stor[t]) = 0
                                        t = t + 1
                                        continue 
                                    uint8(schemas[t].field_0) = 0
                                    t = t + 4
                                    continue 
                            s = _2082
                            t = _1051
                            t = _1050
                            idx = idx + 1
                            t = t + uint8(_1050)
                            continue 
                        if 0 == mem[_1051]:
                            mem[_2082 + 64] = 6
                            mem[_2082 + 96] = 0
                            emit code.data[5684 len 32]: 6, 0
                            stor2.length--
                            if not stor2.length <= stor2.length - 1:
                                mem[0] = 2
                                s = sha3(mem[0]) + (4 * stor2.length - 1)
                                while sha3(2) + (4 * stor2.length) > s:
                                    address(stor[s]) = 0
                                    sub_81638e9b[s] = 0
                                    stor2[s] = 0
                                    mem[0] = s + 2
                                    t = sha3(t + 2)
                                    while sha3(t + 2) + stor2[t] > t:
                                        uint256(stor[t]) = 0
                                        t = t + 1
                                        continue 
                                    uint8(schemas[t].field_0) = 0
                                    t = t + 4
                                    continue 
                            s = _2082
                            t = _1051
                            t = _1050
                            idx = idx + 1
                            t = t + uint8(_1050)
                            continue 
                        require stor2.length < stor2.length
                        mem[0] = 2
                        if not address(stor5640[stor2.length].field_0):
                            _3106 = mem[_2082]
                            u = 0
                            s = 0
                            while s < _3106:
                                require s < mem[_2082]
                                mem[0] = mem[_2082 + (32 * s) + 32]
                                mem[32] = 1
                                if sub_81638e9b[mem[0]] <= 0:
                                    _3106 = mem[_2082]
                                    u = sub_81638e9b[mem[0]]
                                    s = s + 1
                                    continue 
                                if sub_81638e9b[mem[0]] == stor2.length:
                                    _3106 = mem[_2082]
                                    u = sub_81638e9b[mem[0]]
                                    s = s + 1
                                    continue 
                                require s < mem[_2082]
                                _3304 = mem[_2082 + (32 * s) + 32]
                                mem[mem[64]] = 1
                                mem[mem[64] + 32] = _3304
                                emit code.data[5684 len 32]: 1, _3304
                                stor2.length--
                                if not stor2.length <= stor2.length - 1:
                                    mem[0] = 2
                                    s = sha3(mem[0]) + (4 * stor2.length - 1)
                                    while sha3(2) + (4 * stor2.length) > s:
                                        address(stor[s]) = 0
                                        sub_81638e9b[s] = 0
                                        stor2[s] = 0
                                        mem[0] = s + 2
                                        t = sha3(t + 2)
                                        while sha3(t + 2) + stor2[t] > t:
                                            uint256(stor[t]) = 0
                                            _3106 = mem[_2082]
                                            t = t + 1
                                            continue 
                                        uint8(schemas[t].field_0) = 0
                                        _3106 = mem[_2082]
                                        t = t + 4
                                        continue 
                                _3106 = mem[_2082]
                                s = _2082
                                t = _1051
                                t = _1050
                                idx = idx + 1
                                t = t + uint8(_1050)
                                continue 
                            _3114 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_3114] = msg.sender
                            mem[_3114 + 32] = arg1
                            mem[_3114 + 64] = _1051
                            mem[_3114 + 96] = 1
                            require stor2.length < stor2.length
                            mem[0] = 2
                            uint256(stor5640[stor2.length].field_0) = Mask(96, 0, stor5640[stor2.length].field_160)
                            stor5640[stor2.length] = arg1
                            _3155 = mem[_1051]
                            stor5640[stor2.length] = mem[_1051]
                            mem[0] = (4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c
                            if not _3155:
                                s = sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c)
                                while sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c) + stor5640[stor2.length] > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                                stor5640[stor2.length] = 1
                                _4566 = mem[_2082]
                                s = 0
                                while s < _4566:
                                    require s < mem[_2082]
                                    mem[0] = mem[(32 * s) + _2082 + 32]
                                    mem[32] = 1
                                    if not sub_81638e9b[mem[0]]:
                                        require s < mem[_2082]
                                        mem[0] = mem[_2082 + (32 * s) + 32]
                                        sub_81638e9b[mem[_2082 + (32 * s) + 32]] = stor2.length
                                        require s < mem[_2082]
                                        _4703 = mem[(32 * s) + _2082 + 32]
                                        mem[mem[64]] = stor2.length
                                        emit 0xc8f96bb0: stor2.length, _4703, msg.sender
                                    _4566 = mem[_2082]
                                    s = s + 1
                                    continue 
                            else:
                                u = sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c)
                                s = _1051 + 32
                                while _1051 + (32 * _3155) + 32 > s:
                                    uint256(stor[u]) = mem[s]
                                    u = u + 1
                                    s = s + 32
                                    continue 
                                s = sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c) + (Mask(251, 0, (32 * _3155) + 31) >> 5)
                                while sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c) + stor5640[stor2.length] > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                                stor5640[stor2.length] = 1
                                _4958 = mem[_2082]
                                s = 0
                                while s < _4958:
                                    require s < mem[_2082]
                                    mem[0] = mem[(32 * s) + _2082 + 32]
                                    mem[32] = 1
                                    if not sub_81638e9b[mem[0]]:
                                        require s < mem[_2082]
                                        mem[0] = mem[_2082 + (32 * s) + 32]
                                        sub_81638e9b[mem[_2082 + (32 * s) + 32]] = stor2.length
                                        require s < mem[_2082]
                                        _5111 = mem[(32 * s) + _2082 + 32]
                                        mem[mem[64]] = stor2.length
                                        emit 0xc8f96bb0: stor2.length, _5111, msg.sender
                                    _4958 = mem[_2082]
                                    s = s + 1
                                    continue 
                            s = _2082
                            t = _1051
                            t = _1050
                            idx = idx + 1
                            t = t + uint8(_1050)
                            continue 
                        require stor2.length < stor2.length
                        mem[0] = 2
                        if address(stor5640[stor2.length].field_0) != msg.sender:
                            mem[0] = 2
                            require 0 < mem[_2082]
                            mem[_2082 + 64] = 3
                            mem[_2082 + 96] = mem[_2082 + 32]
                            emit code.data[5684 len 32]: 3, mem[_2082 + 32]
                            stor2.length--
                            if not stor2.length <= stor2.length - 1:
                                mem[0] = 2
                                s = sha3(mem[0]) + (4 * stor2.length - 1)
                                while sha3(2) + (4 * stor2.length) > s:
                                    address(stor[s]) = 0
                                    sub_81638e9b[s] = 0
                                    stor2[s] = 0
                                    mem[0] = s + 2
                                    t = sha3(t + 2)
                                    while sha3(t + 2) + stor2[t] > t:
                                        uint256(stor[t]) = 0
                                        t = t + 1
                                        continue 
                                    uint8(schemas[t].field_0) = 0
                                    t = t + 4
                                    continue 
                            s = _2082
                            t = _1051
                            t = _1050
                            idx = idx + 1
                            t = t + uint8(_1050)
                            continue 
                        _3107 = mem[_2082]
                        s = 0
                        u = 0
                        while u < _3107:
                            require u < mem[_2082]
                            mem[0] = mem[_2082 + (32 * u) + 32]
                            mem[32] = 1
                            if sub_81638e9b[mem[0]] <= 0:
                                _3107 = mem[_2082]
                                s = sub_81638e9b[mem[0]]
                                u = u + 1
                                continue 
                            if sub_81638e9b[mem[0]] == stor2.length:
                                _3107 = mem[_2082]
                                s = sub_81638e9b[mem[0]]
                                u = u + 1
                                continue 
                            require u < mem[_2082]
                            _3308 = mem[_2082 + (32 * u) + 32]
                            mem[mem[64]] = 1
                            mem[mem[64] + 32] = _3308
                            emit code.data[5684 len 32]: 1, _3308
                            stor2.length--
                            if not stor2.length <= stor2.length - 1:
                                mem[0] = 2
                                s = sha3(mem[0]) + (4 * stor2.length - 1)
                                while sha3(2) + (4 * stor2.length) > s:
                                    address(stor[s]) = 0
                                    sub_81638e9b[s] = 0
                                    stor2[s] = 0
                                    mem[0] = s + 2
                                    t = sha3(t + 2)
                                    while sha3(t + 2) + stor2[t] > t:
                                        uint256(stor[t]) = 0
                                        _3107 = mem[_2082]
                                        t = t + 1
                                        continue 
                                    uint8(schemas[t].field_0) = 0
                                    _3107 = mem[_2082]
                                    t = t + 4
                                    continue 
                            _3107 = mem[_2082]
                            u = _2082
                            t = _1051
                            t = _1050
                            idx = idx + 1
                            t = t + uint8(_1050)
                            continue 
                        _3116 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_3116] = msg.sender
                        mem[_3116 + 32] = arg1
                        mem[_3116 + 64] = _1051
                        mem[_3116 + 96] = 1
                        require stor2.length < stor2.length
                        mem[0] = 2
                        uint256(stor5640[stor2.length].field_0) = Mask(96, 0, stor5640[stor2.length].field_160)
                        stor5640[stor2.length] = arg1
                        _3164 = mem[_1051]
                        stor5640[stor2.length] = mem[_1051]
                        mem[0] = (4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c
                        if not _3164:
                            s = sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c)
                            while sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c) + stor5640[stor2.length] > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                            stor5640[stor2.length] = 1
                            _4567 = mem[_2082]
                            s = 0
                            while s < _4567:
                                require s < mem[_2082]
                                mem[0] = mem[(32 * s) + _2082 + 32]
                                mem[32] = 1
                                if not sub_81638e9b[mem[0]]:
                                    require s < mem[_2082]
                                    mem[0] = mem[_2082 + (32 * s) + 32]
                                    sub_81638e9b[mem[_2082 + (32 * s) + 32]] = stor2.length
                                    require s < mem[_2082]
                                    _4708 = mem[(32 * s) + _2082 + 32]
                                    mem[mem[64]] = stor2.length
                                    emit 0xc8f96bb0: stor2.length, _4708, msg.sender
                                _4567 = mem[_2082]
                                s = s + 1
                                continue 
                        else:
                            u = sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c)
                            s = _1051 + 32
                            while _1051 + (32 * _3164) + 32 > s:
                                uint256(stor[u]) = mem[s]
                                u = u + 1
                                s = s + 32
                                continue 
                            s = sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c) + (Mask(251, 0, (32 * _3164) + 31) >> 5)
                            while sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c) + stor5640[stor2.length] > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                            stor5640[stor2.length] = 1
                            _4959 = mem[_2082]
                            s = 0
                            while s < _4959:
                                require s < mem[_2082]
                                mem[0] = mem[(32 * s) + _2082 + 32]
                                mem[32] = 1
                                if not sub_81638e9b[mem[0]]:
                                    require s < mem[_2082]
                                    mem[0] = mem[_2082 + (32 * s) + 32]
                                    sub_81638e9b[mem[_2082 + (32 * s) + 32]] = stor2.length
                                    require s < mem[_2082]
                                    _5114 = mem[(32 * s) + _2082 + 32]
                                    mem[mem[64]] = stor2.length
                                    emit 0xc8f96bb0: stor2.length, _5114, msg.sender
                                _4959 = mem[_2082]
                                s = s + 1
                                continue 
                        u = _2082
                        t = _1051
                        t = _1050
                        idx = idx + 1
                        t = t + uint8(_1050)
                        continue 
                    mem[0] = 2
                    s = sha3(mem[0]) + (4 * stor2.length + 1)
                    while sha3(2) + (4 * stor2.length) > s:
                        address(stor[s]) = 0
                        sub_81638e9b[s] = 0
                        stor2[s] = 0
                        mem[0] = s + 2
                        t = sha3(t + 2)
                        while sha3(t + 2) + stor2[t] > t:
                            uint256(stor[t]) = 0
                            t = t + 1
                            continue 
                        uint8(schemas[t].field_0) = 0
                        t = t + 4
                        continue 
                    if arg1 > schemas.length:
                        require 0 < mem[_2082]
                        mem[_2082 + 64] = 4
                        mem[_2082 + 96] = mem[_2082 + 32]
                        emit code.data[5684 len 32]: 4, mem[_2082 + 32]
                        stor2.length--
                        if not stor2.length <= stor2.length - 1:
                            mem[0] = 2
                            s = sha3(mem[0]) + (4 * stor2.length - 1)
                            while sha3(2) + (4 * stor2.length) > s:
                                address(stor[s]) = 0
                                sub_81638e9b[s] = 0
                                stor2[s] = 0
                                mem[0] = s + 2
                                t = sha3(t + 2)
                                while sha3(t + 2) + stor2[t] > t:
                                    uint256(stor[t]) = 0
                                    t = t + 1
                                    continue 
                                uint8(schemas[t].field_0) = 0
                                t = t + 4
                                continue 
                    else:
                        if 0 == mem[_2082]:
                            mem[_2082 + 64] = 5
                            mem[_2082 + 96] = 0
                            emit code.data[5684 len 32]: 5, 0
                            stor2.length--
                            if not stor2.length <= stor2.length - 1:
                                mem[0] = 2
                                s = sha3(mem[0]) + (4 * stor2.length - 1)
                                while sha3(2) + (4 * stor2.length) > s:
                                    address(stor[s]) = 0
                                    sub_81638e9b[s] = 0
                                    stor2[s] = 0
                                    mem[0] = s + 2
                                    t = sha3(t + 2)
                                    while sha3(t + 2) + stor2[t] > t:
                                        uint256(stor[t]) = 0
                                        t = t + 1
                                        continue 
                                    uint8(schemas[t].field_0) = 0
                                    t = t + 4
                                    continue 
                        else:
                            if 0 == mem[_1051]:
                                mem[_2082 + 64] = 6
                                mem[_2082 + 96] = 0
                                emit code.data[5684 len 32]: 6, 0
                                stor2.length--
                                if not stor2.length <= stor2.length - 1:
                                    mem[0] = 2
                                    s = sha3(mem[0]) + (4 * stor2.length - 1)
                                    while sha3(2) + (4 * stor2.length) > s:
                                        address(stor[s]) = 0
                                        sub_81638e9b[s] = 0
                                        stor2[s] = 0
                                        mem[0] = s + 2
                                        t = sha3(t + 2)
                                        while sha3(t + 2) + stor2[t] > t:
                                            uint256(stor[t]) = 0
                                            t = t + 1
                                            continue 
                                        uint8(schemas[t].field_0) = 0
                                        t = t + 4
                                        continue 
                            else:
                                require stor2.length < stor2.length
                                mem[0] = 2
                                if not address(stor5640[stor2.length].field_0):
                                    _3982 = mem[_2082]
                                    u = 0
                                    s = 0
                                    while s < _3982:
                                        require s < mem[_2082]
                                        mem[0] = mem[_2082 + (32 * s) + 32]
                                        mem[32] = 1
                                        if sub_81638e9b[mem[0]] <= 0:
                                            _3982 = mem[_2082]
                                            u = sub_81638e9b[mem[0]]
                                            s = s + 1
                                            continue 
                                        if sub_81638e9b[mem[0]] == stor2.length:
                                            _3982 = mem[_2082]
                                            u = sub_81638e9b[mem[0]]
                                            s = s + 1
                                            continue 
                                        require s < mem[_2082]
                                        _4204 = mem[_2082 + (32 * s) + 32]
                                        mem[mem[64]] = 1
                                        mem[mem[64] + 32] = _4204
                                        emit code.data[5684 len 32]: 1, _4204
                                        stor2.length--
                                        if not stor2.length <= stor2.length - 1:
                                            mem[0] = 2
                                            s = sha3(mem[0]) + (4 * stor2.length - 1)
                                            while sha3(2) + (4 * stor2.length) > s:
                                                address(stor[s]) = 0
                                                sub_81638e9b[s] = 0
                                                stor2[s] = 0
                                                mem[0] = s + 2
                                                t = sha3(t + 2)
                                                while sha3(t + 2) + stor2[t] > t:
                                                    uint256(stor[t]) = 0
                                                    _3982 = mem[_2082]
                                                    t = t + 1
                                                    continue 
                                                uint8(schemas[t].field_0) = 0
                                                _3982 = mem[_2082]
                                                t = t + 4
                                                continue 
                                        _3982 = mem[_2082]
                                        s = _2082
                                        t = _1051
                                        t = _1050
                                        idx = idx + 1
                                        t = t + uint8(_1050)
                                        continue 
                                    _3994 = mem[64]
                                    mem[64] = mem[64] + 128
                                    mem[_3994] = msg.sender
                                    mem[_3994 + 32] = arg1
                                    mem[_3994 + 64] = _1051
                                    mem[_3994 + 96] = 1
                                    require stor2.length < stor2.length
                                    mem[0] = 2
                                    uint256(stor5640[stor2.length].field_0) = Mask(96, 0, stor5640[stor2.length].field_160)
                                    stor5640[stor2.length] = arg1
                                    _4045 = mem[_1051]
                                    stor5640[stor2.length] = mem[_1051]
                                    mem[0] = (4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c
                                    if not _4045:
                                        s = sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c)
                                        while sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c) + stor5640[stor2.length] > s:
                                            uint256(stor[s]) = 0
                                            s = s + 1
                                            continue 
                                        stor5640[stor2.length] = 1
                                        _4960 = mem[_2082]
                                        s = 0
                                        while s < _4960:
                                            require s < mem[_2082]
                                            mem[0] = mem[(32 * s) + _2082 + 32]
                                            mem[32] = 1
                                            if not sub_81638e9b[mem[0]]:
                                                require s < mem[_2082]
                                                mem[0] = mem[_2082 + (32 * s) + 32]
                                                sub_81638e9b[mem[_2082 + (32 * s) + 32]] = stor2.length
                                                require s < mem[_2082]
                                                _5117 = mem[(32 * s) + _2082 + 32]
                                                mem[mem[64]] = stor2.length
                                                emit 0xc8f96bb0: stor2.length, _5117, msg.sender
                                            _4960 = mem[_2082]
                                            s = s + 1
                                            continue 
                                    else:
                                        u = sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c)
                                        s = _1051 + 32
                                        while _1051 + (32 * _4045) + 32 > s:
                                            uint256(stor[u]) = mem[s]
                                            u = u + 1
                                            s = s + 32
                                            continue 
                                        s = sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c) + (Mask(251, 0, (32 * _4045) + 31) >> 5)
                                        while sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c) + stor5640[stor2.length] > s:
                                            uint256(stor[s]) = 0
                                            s = s + 1
                                            continue 
                                        stor5640[stor2.length] = 1
                                        _5230 = mem[_2082]
                                        s = 0
                                        while s < _5230:
                                            require s < mem[_2082]
                                            mem[0] = mem[(32 * s) + _2082 + 32]
                                            mem[32] = 1
                                            if not sub_81638e9b[mem[0]]:
                                                require s < mem[_2082]
                                                mem[0] = mem[_2082 + (32 * s) + 32]
                                                sub_81638e9b[mem[_2082 + (32 * s) + 32]] = stor2.length
                                                require s < mem[_2082]
                                                _5295 = mem[(32 * s) + _2082 + 32]
                                                mem[mem[64]] = stor2.length
                                                emit 0xc8f96bb0: stor2.length, _5295, msg.sender
                                            _5230 = mem[_2082]
                                            s = s + 1
                                            continue 
                                else:
                                    require stor2.length < stor2.length
                                    mem[0] = 2
                                    if address(stor5640[stor2.length].field_0) != msg.sender:
                                        mem[0] = 2
                                        require 0 < mem[_2082]
                                        mem[_2082 + 64] = 3
                                        mem[_2082 + 96] = mem[_2082 + 32]
                                        emit code.data[5684 len 32]: 3, mem[_2082 + 32]
                                        stor2.length--
                                        if not stor2.length <= stor2.length - 1:
                                            mem[0] = 2
                                            s = sha3(mem[0]) + (4 * stor2.length - 1)
                                            while sha3(2) + (4 * stor2.length) > s:
                                                address(stor[s]) = 0
                                                sub_81638e9b[s] = 0
                                                stor2[s] = 0
                                                mem[0] = s + 2
                                                t = sha3(t + 2)
                                                while sha3(t + 2) + stor2[t] > t:
                                                    uint256(stor[t]) = 0
                                                    t = t + 1
                                                    continue 
                                                uint8(schemas[t].field_0) = 0
                                                t = t + 4
                                                continue 
                                    else:
                                        _3983 = mem[_2082]
                                        u = 0
                                        s = 0
                                        while s < _3983:
                                            require s < mem[_2082]
                                            mem[0] = mem[_2082 + (32 * s) + 32]
                                            mem[32] = 1
                                            if sub_81638e9b[mem[0]] <= 0:
                                                _3983 = mem[_2082]
                                                u = sub_81638e9b[mem[0]]
                                                s = s + 1
                                                continue 
                                            if sub_81638e9b[mem[0]] == stor2.length:
                                                _3983 = mem[_2082]
                                                u = sub_81638e9b[mem[0]]
                                                s = s + 1
                                                continue 
                                            require s < mem[_2082]
                                            _4208 = mem[_2082 + (32 * s) + 32]
                                            mem[mem[64]] = 1
                                            mem[mem[64] + 32] = _4208
                                            emit code.data[5684 len 32]: 1, _4208
                                            stor2.length--
                                            if not stor2.length <= stor2.length - 1:
                                                mem[0] = 2
                                                s = sha3(mem[0]) + (4 * stor2.length - 1)
                                                while sha3(2) + (4 * stor2.length) > s:
                                                    address(stor[s]) = 0
                                                    sub_81638e9b[s] = 0
                                                    stor2[s] = 0
                                                    mem[0] = s + 2
                                                    t = sha3(t + 2)
                                                    while sha3(t + 2) + stor2[t] > t:
                                                        uint256(stor[t]) = 0
                                                        _3983 = mem[_2082]
                                                        t = t + 1
                                                        continue 
                                                    uint8(schemas[t].field_0) = 0
                                                    _3983 = mem[_2082]
                                                    t = t + 4
                                                    continue 
                                            _3983 = mem[_2082]
                                            s = _2082
                                            t = _1051
                                            t = _1050
                                            idx = idx + 1
                                            t = t + uint8(_1050)
                                            continue 
                                        _3996 = mem[64]
                                        mem[64] = mem[64] + 128
                                        mem[_3996] = msg.sender
                                        mem[_3996 + 32] = arg1
                                        mem[_3996 + 64] = _1051
                                        mem[_3996 + 96] = 1
                                        require stor2.length < stor2.length
                                        mem[0] = 2
                                        uint256(stor5640[stor2.length].field_0) = Mask(96, 0, stor5640[stor2.length].field_160)
                                        stor5640[stor2.length] = arg1
                                        _4054 = mem[_1051]
                                        stor5640[stor2.length] = mem[_1051]
                                        mem[0] = (4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c
                                        if not _4054:
                                            s = sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c)
                                            while sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c) + stor5640[stor2.length] > s:
                                                uint256(stor[s]) = 0
                                                s = s + 1
                                                continue 
                                            stor5640[stor2.length] = 1
                                            _4961 = mem[_2082]
                                            s = 0
                                            while s < _4961:
                                                require s < mem[_2082]
                                                mem[0] = mem[(32 * s) + _2082 + 32]
                                                mem[32] = 1
                                                if not sub_81638e9b[mem[0]]:
                                                    require s < mem[_2082]
                                                    mem[0] = mem[_2082 + (32 * s) + 32]
                                                    sub_81638e9b[mem[_2082 + (32 * s) + 32]] = stor2.length
                                                    require s < mem[_2082]
                                                    _5122 = mem[(32 * s) + _2082 + 32]
                                                    mem[mem[64]] = stor2.length
                                                    emit 0xc8f96bb0: stor2.length, _5122, msg.sender
                                                _4961 = mem[_2082]
                                                s = s + 1
                                                continue 
                                        else:
                                            u = sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c)
                                            s = _1051 + 32
                                            while _1051 + (32 * _4054) + 32 > s:
                                                uint256(stor[u]) = mem[s]
                                                u = u + 1
                                                s = s + 32
                                                continue 
                                            s = sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c) + (Mask(251, 0, (32 * _4054) + 31) >> 5)
                                            while sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c) + stor5640[stor2.length] > s:
                                                uint256(stor[s]) = 0
                                                s = s + 1
                                                continue 
                                            stor5640[stor2.length] = 1
                                            _5231 = mem[_2082]
                                            s = 0
                                            while s < _5231:
                                                require s < mem[_2082]
                                                mem[0] = mem[(32 * s) + _2082 + 32]
                                                mem[32] = 1
                                                if not sub_81638e9b[mem[0]]:
                                                    require s < mem[_2082]
                                                    mem[0] = mem[_2082 + (32 * s) + 32]
                                                    sub_81638e9b[mem[_2082 + (32 * s) + 32]] = stor2.length
                                                    require s < mem[_2082]
                                                    _5298 = mem[(32 * s) + _2082 + 32]
                                                    mem[mem[64]] = stor2.length
                                                    emit 0xc8f96bb0: stor2.length, _5298, msg.sender
                                                _5231 = mem[_2082]
                                                s = s + 1
                                                continue 
                    s = _2082
                    t = _1051
                    t = _1050
                    idx = idx + 1
                    t = t + uint8(_1050)
                    continue 
                _2089 = msize
                mem[msize] = 1
                mem[64] = _2089 + 64
                require idx < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                require 0 < mem[_2089]
                mem[_2089 + 32] = mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192]
                stor2.length++
                if not stor2.length > stor2.length + 1:
                    if arg1 > schemas.length:
                        require 0 < mem[_2089]
                        mem[_2089 + 64] = 4
                        mem[_2089 + 96] = mem[_2089 + 32]
                        emit code.data[5684 len 32]: 4, mem[_2089 + 32]
                        stor2.length--
                        if not stor2.length <= stor2.length - 1:
                            mem[0] = 2
                            s = sha3(mem[0]) + (4 * stor2.length - 1)
                            while sha3(2) + (4 * stor2.length) > s:
                                address(stor[s]) = 0
                                sub_81638e9b[s] = 0
                                stor2[s] = 0
                                mem[0] = s + 2
                                t = sha3(t + 2)
                                while sha3(t + 2) + stor2[t] > t:
                                    uint256(stor[t]) = 0
                                    t = t + 1
                                    continue 
                                uint8(schemas[t].field_0) = 0
                                t = t + 4
                                continue 
                    else:
                        if 0 == mem[_2089]:
                            mem[_2089 + 64] = 5
                            mem[_2089 + 96] = 0
                            emit code.data[5684 len 32]: 5, 0
                            stor2.length--
                            if not stor2.length <= stor2.length - 1:
                                mem[0] = 2
                                s = sha3(mem[0]) + (4 * stor2.length - 1)
                                while sha3(2) + (4 * stor2.length) > s:
                                    address(stor[s]) = 0
                                    sub_81638e9b[s] = 0
                                    stor2[s] = 0
                                    mem[0] = s + 2
                                    t = sha3(t + 2)
                                    while sha3(t + 2) + stor2[t] > t:
                                        uint256(stor[t]) = 0
                                        t = t + 1
                                        continue 
                                    uint8(schemas[t].field_0) = 0
                                    t = t + 4
                                    continue 
                        else:
                            if 0 == mem[_1051]:
                                mem[_2089 + 64] = 6
                                mem[_2089 + 96] = 0
                                emit code.data[5684 len 32]: 6, 0
                                stor2.length--
                                if not stor2.length <= stor2.length - 1:
                                    mem[0] = 2
                                    s = sha3(mem[0]) + (4 * stor2.length - 1)
                                    while sha3(2) + (4 * stor2.length) > s:
                                        address(stor[s]) = 0
                                        sub_81638e9b[s] = 0
                                        stor2[s] = 0
                                        mem[0] = s + 2
                                        t = sha3(t + 2)
                                        while sha3(t + 2) + stor2[t] > t:
                                            uint256(stor[t]) = 0
                                            t = t + 1
                                            continue 
                                        uint8(schemas[t].field_0) = 0
                                        t = t + 4
                                        continue 
                            else:
                                require stor2.length < stor2.length
                                mem[0] = 2
                                if not address(stor5640[stor2.length].field_0):
                                    _3108 = mem[_2089]
                                    v = 0
                                    u = 0
                                    while u < _3108:
                                        require u < mem[_2089]
                                        mem[0] = mem[_2089 + (32 * u) + 32]
                                        mem[32] = 1
                                        if sub_81638e9b[mem[0]] <= 0:
                                            _3108 = mem[_2089]
                                            v = sub_81638e9b[mem[0]]
                                            u = u + 1
                                            continue 
                                        if sub_81638e9b[mem[0]] == stor2.length:
                                            _3108 = mem[_2089]
                                            v = sub_81638e9b[mem[0]]
                                            u = u + 1
                                            continue 
                                        require u < mem[_2089]
                                        _3316 = mem[_2089 + (32 * u) + 32]
                                        mem[_2089 + 64] = 1
                                        mem[_2089 + 96] = _3316
                                        emit code.data[5684 len 32]: 1, _3316
                                        stor2.length--
                                        if not stor2.length <= stor2.length - 1:
                                            mem[0] = 2
                                            s = sha3(mem[0]) + (4 * stor2.length - 1)
                                            while sha3(2) + (4 * stor2.length) > s:
                                                address(stor[s]) = 0
                                                sub_81638e9b[s] = 0
                                                stor2[s] = 0
                                                mem[0] = s + 2
                                                t = sha3(t + 2)
                                                while sha3(t + 2) + stor2[t] > t:
                                                    uint256(stor[t]) = 0
                                                    _3108 = mem[_2089]
                                                    t = t + 1
                                                    continue 
                                                uint8(schemas[t].field_0) = 0
                                                _3108 = mem[_2089]
                                                t = t + 4
                                                continue 
                                        _3108 = mem[_2089]
                                        s = _2089
                                        t = _1051
                                        t = _1050
                                        idx = idx + 1
                                        t = t + uint8(_1050)
                                        continue 
                                    mem[64] = _2089 + 192
                                    mem[_2089 + 64] = msg.sender
                                    mem[_2089 + 96] = arg1
                                    mem[_2089 + 128] = _1051
                                    mem[_2089 + 160] = 1
                                    require stor2.length < stor2.length
                                    mem[0] = 2
                                    uint256(stor5640[stor2.length].field_0) = Mask(96, 0, stor5640[stor2.length].field_160)
                                    stor5640[stor2.length] = arg1
                                    _3173 = mem[_1051]
                                    stor5640[stor2.length] = mem[_1051]
                                    mem[0] = (4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c
                                    if not _3173:
                                        s = sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c)
                                        while sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c) + stor5640[stor2.length] > s:
                                            uint256(stor[s]) = 0
                                            s = s + 1
                                            continue 
                                        stor5640[stor2.length] = 1
                                        _4568 = mem[_2089]
                                        s = 0
                                        while s < _4568:
                                            require s < mem[_2089]
                                            mem[0] = mem[(32 * s) + _2089 + 32]
                                            mem[32] = 1
                                            if not sub_81638e9b[mem[0]]:
                                                require s < mem[_2089]
                                                mem[0] = mem[_2089 + (32 * s) + 32]
                                                sub_81638e9b[mem[_2089 + (32 * s) + 32]] = stor2.length
                                                require s < mem[_2089]
                                                _4719 = mem[(32 * s) + _2089 + 32]
                                                mem[_2089 + 192] = stor2.length
                                                emit 0xc8f96bb0: stor2.length, _4719, msg.sender
                                            _4568 = mem[_2089]
                                            s = s + 1
                                            continue 
                                        s = _2089
                                        t = _1051
                                        t = _1050
                                        idx = idx + 1
                                        t = t + uint8(_1050)
                                        continue 
                                    s = sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c)
                                    u = _1051 + 32
                                    while _1051 + (32 * _3173) + 32 > u:
                                        uint256(stor[s]) = mem[u]
                                        s = s + 1
                                        u = u + 32
                                        continue 
                                    s = sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c) + (Mask(251, 0, (32 * _3173) + 31) >> 5)
                                    while sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c) + stor5640[stor2.length] > s:
                                        uint256(stor[s]) = 0
                                        s = s + 1
                                        continue 
                                    stor5640[stor2.length] = 1
                                    _4962 = mem[_2089]
                                    s = 0
                                    while s < _4962:
                                        require s < mem[_2089]
                                        mem[0] = mem[(32 * s) + _2089 + 32]
                                        mem[32] = 1
                                        if not sub_81638e9b[mem[0]]:
                                            require s < mem[_2089]
                                            mem[0] = mem[_2089 + (32 * s) + 32]
                                            sub_81638e9b[mem[_2089 + (32 * s) + 32]] = stor2.length
                                            require s < mem[_2089]
                                            _5127 = mem[(32 * s) + _2089 + 32]
                                            mem[_2089 + 192] = stor2.length
                                            emit 0xc8f96bb0: stor2.length, _5127, msg.sender
                                        _4962 = mem[_2089]
                                        s = s + 1
                                        continue 
                                    u = _2089
                                    t = _1051
                                    t = _1050
                                    idx = idx + 1
                                    t = t + uint8(_1050)
                                    continue 
                                require stor2.length < stor2.length
                                mem[0] = 2
                                if address(stor5640[stor2.length].field_0) != msg.sender:
                                    mem[0] = 2
                                    require 0 < mem[_2089]
                                    mem[_2089 + 64] = 3
                                    mem[_2089 + 96] = mem[_2089 + 32]
                                    emit code.data[5684 len 32]: 3, mem[_2089 + 32]
                                    stor2.length--
                                    if not stor2.length <= stor2.length - 1:
                                        mem[0] = 2
                                        s = sha3(mem[0]) + (4 * stor2.length - 1)
                                        while sha3(2) + (4 * stor2.length) > s:
                                            address(stor[s]) = 0
                                            sub_81638e9b[s] = 0
                                            stor2[s] = 0
                                            mem[0] = s + 2
                                            t = sha3(t + 2)
                                            while sha3(t + 2) + stor2[t] > t:
                                                uint256(stor[t]) = 0
                                                t = t + 1
                                                continue 
                                            uint8(schemas[t].field_0) = 0
                                            t = t + 4
                                            continue 
                                else:
                                    _3109 = mem[_2089]
                                    u = 0
                                    s = 0
                                    while s < _3109:
                                        require s < mem[_2089]
                                        mem[0] = mem[_2089 + (32 * s) + 32]
                                        mem[32] = 1
                                        if sub_81638e9b[mem[0]] <= 0:
                                            _3109 = mem[_2089]
                                            u = sub_81638e9b[mem[0]]
                                            s = s + 1
                                            continue 
                                        if sub_81638e9b[mem[0]] == stor2.length:
                                            _3109 = mem[_2089]
                                            u = sub_81638e9b[mem[0]]
                                            s = s + 1
                                            continue 
                                        require s < mem[_2089]
                                        _3320 = mem[_2089 + (32 * s) + 32]
                                        mem[_2089 + 64] = 1
                                        mem[_2089 + 96] = _3320
                                        emit code.data[5684 len 32]: 1, _3320
                                        stor2.length--
                                        if not stor2.length <= stor2.length - 1:
                                            mem[0] = 2
                                            s = sha3(mem[0]) + (4 * stor2.length - 1)
                                            while sha3(2) + (4 * stor2.length) > s:
                                                address(stor[s]) = 0
                                                sub_81638e9b[s] = 0
                                                stor2[s] = 0
                                                mem[0] = s + 2
                                                t = sha3(t + 2)
                                                while sha3(t + 2) + stor2[t] > t:
                                                    uint256(stor[t]) = 0
                                                    _3109 = mem[_2089]
                                                    t = t + 1
                                                    continue 
                                                uint8(schemas[t].field_0) = 0
                                                _3109 = mem[_2089]
                                                t = t + 4
                                                continue 
                                        _3109 = mem[_2089]
                                        s = _2089
                                        t = _1051
                                        t = _1050
                                        idx = idx + 1
                                        t = t + uint8(_1050)
                                        continue 
                                    mem[64] = _2089 + 192
                                    mem[_2089 + 64] = msg.sender
                                    mem[_2089 + 96] = arg1
                                    mem[_2089 + 128] = _1051
                                    mem[_2089 + 160] = 1
                                    require stor2.length < stor2.length
                                    mem[0] = 2
                                    uint256(stor5640[stor2.length].field_0) = Mask(96, 0, stor5640[stor2.length].field_160)
                                    stor5640[stor2.length] = arg1
                                    _3182 = mem[_1051]
                                    stor5640[stor2.length] = mem[_1051]
                                    mem[0] = (4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c
                                    if not _3182:
                                        s = sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c)
                                        while sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c) + stor5640[stor2.length] > s:
                                            uint256(stor[s]) = 0
                                            s = s + 1
                                            continue 
                                        stor5640[stor2.length] = 1
                                        _4569 = mem[_2089]
                                        s = 0
                                        while s < _4569:
                                            require s < mem[_2089]
                                            mem[0] = mem[(32 * s) + _2089 + 32]
                                            mem[32] = 1
                                            if not sub_81638e9b[mem[0]]:
                                                require s < mem[_2089]
                                                mem[0] = mem[_2089 + (32 * s) + 32]
                                                sub_81638e9b[mem[_2089 + (32 * s) + 32]] = stor2.length
                                                require s < mem[_2089]
                                                _4724 = mem[(32 * s) + _2089 + 32]
                                                mem[_2089 + 192] = stor2.length
                                                emit 0xc8f96bb0: stor2.length, _4724, msg.sender
                                            _4569 = mem[_2089]
                                            s = s + 1
                                            continue 
                                    else:
                                        u = sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c)
                                        s = _1051 + 32
                                        while _1051 + (32 * _3182) + 32 > s:
                                            uint256(stor[u]) = mem[s]
                                            u = u + 1
                                            s = s + 32
                                            continue 
                                        s = sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c) + (Mask(251, 0, (32 * _3182) + 31) >> 5)
                                        while sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c) + stor5640[stor2.length] > s:
                                            uint256(stor[s]) = 0
                                            s = s + 1
                                            continue 
                                        stor5640[stor2.length] = 1
                                        _4963 = mem[_2089]
                                        s = 0
                                        while s < _4963:
                                            require s < mem[_2089]
                                            mem[0] = mem[(32 * s) + _2089 + 32]
                                            mem[32] = 1
                                            if not sub_81638e9b[mem[0]]:
                                                require s < mem[_2089]
                                                mem[0] = mem[_2089 + (32 * s) + 32]
                                                sub_81638e9b[mem[_2089 + (32 * s) + 32]] = stor2.length
                                                require s < mem[_2089]
                                                _5130 = mem[(32 * s) + _2089 + 32]
                                                mem[_2089 + 192] = stor2.length
                                                emit 0xc8f96bb0: stor2.length, _5130, msg.sender
                                            _4963 = mem[_2089]
                                            s = s + 1
                                            continue 
                else:
                    mem[0] = 2
                    s = sha3(mem[0]) + (4 * stor2.length + 1)
                    while sha3(2) + (4 * stor2.length) > s:
                        address(stor[s]) = 0
                        sub_81638e9b[s] = 0
                        stor2[s] = 0
                        mem[0] = s + 2
                        t = sha3(t + 2)
                        while sha3(t + 2) + stor2[t] > t:
                            uint256(stor[t]) = 0
                            t = t + 1
                            continue 
                        uint8(schemas[t].field_0) = 0
                        t = t + 4
                        continue 
                    if arg1 > schemas.length:
                        require 0 < mem[_2089]
                        mem[_2089 + 64] = 4
                        mem[_2089 + 96] = mem[_2089 + 32]
                        emit code.data[5684 len 32]: 4, mem[_2089 + 32]
                        stor2.length--
                        if not stor2.length <= stor2.length - 1:
                            mem[0] = 2
                            s = sha3(mem[0]) + (4 * stor2.length - 1)
                            while sha3(2) + (4 * stor2.length) > s:
                                address(stor[s]) = 0
                                sub_81638e9b[s] = 0
                                stor2[s] = 0
                                mem[0] = s + 2
                                t = sha3(t + 2)
                                while sha3(t + 2) + stor2[t] > t:
                                    uint256(stor[t]) = 0
                                    t = t + 1
                                    continue 
                                uint8(schemas[t].field_0) = 0
                                t = t + 4
                                continue 
                    else:
                        if 0 == mem[_2089]:
                            mem[_2089 + 64] = 5
                            mem[_2089 + 96] = 0
                            emit code.data[5684 len 32]: 5, 0
                            stor2.length--
                            if not stor2.length <= stor2.length - 1:
                                mem[0] = 2
                                s = sha3(mem[0]) + (4 * stor2.length - 1)
                                while sha3(2) + (4 * stor2.length) > s:
                                    address(stor[s]) = 0
                                    sub_81638e9b[s] = 0
                                    stor2[s] = 0
                                    mem[0] = s + 2
                                    t = sha3(t + 2)
                                    while sha3(t + 2) + stor2[t] > t:
                                        uint256(stor[t]) = 0
                                        t = t + 1
                                        continue 
                                    uint8(schemas[t].field_0) = 0
                                    t = t + 4
                                    continue 
                        else:
                            if 0 == mem[_1051]:
                                mem[_2089 + 64] = 6
                                mem[_2089 + 96] = 0
                                emit code.data[5684 len 32]: 6, 0
                                stor2.length--
                                if not stor2.length <= stor2.length - 1:
                                    mem[0] = 2
                                    s = sha3(mem[0]) + (4 * stor2.length - 1)
                                    while sha3(2) + (4 * stor2.length) > s:
                                        address(stor[s]) = 0
                                        sub_81638e9b[s] = 0
                                        stor2[s] = 0
                                        mem[0] = s + 2
                                        t = sha3(t + 2)
                                        while sha3(t + 2) + stor2[t] > t:
                                            uint256(stor[t]) = 0
                                            t = t + 1
                                            continue 
                                        uint8(schemas[t].field_0) = 0
                                        t = t + 4
                                        continue 
                            else:
                                require stor2.length < stor2.length
                                mem[0] = 2
                                if not address(stor5640[stor2.length].field_0):
                                    _3984 = mem[_2089]
                                    u = 0
                                    s = 0
                                    while s < _3984:
                                        require s < mem[_2089]
                                        mem[0] = mem[_2089 + (32 * s) + 32]
                                        mem[32] = 1
                                        if sub_81638e9b[mem[0]] <= 0:
                                            _3984 = mem[_2089]
                                            u = sub_81638e9b[mem[0]]
                                            s = s + 1
                                            continue 
                                        if sub_81638e9b[mem[0]] == stor2.length:
                                            _3984 = mem[_2089]
                                            u = sub_81638e9b[mem[0]]
                                            s = s + 1
                                            continue 
                                        require s < mem[_2089]
                                        _4216 = mem[_2089 + (32 * s) + 32]
                                        mem[_2089 + 64] = 1
                                        mem[_2089 + 96] = _4216
                                        emit code.data[5684 len 32]: 1, _4216
                                        stor2.length--
                                        if not stor2.length <= stor2.length - 1:
                                            mem[0] = 2
                                            s = sha3(mem[0]) + (4 * stor2.length - 1)
                                            while sha3(2) + (4 * stor2.length) > s:
                                                address(stor[s]) = 0
                                                sub_81638e9b[s] = 0
                                                stor2[s] = 0
                                                mem[0] = s + 2
                                                t = sha3(t + 2)
                                                while sha3(t + 2) + stor2[t] > t:
                                                    uint256(stor[t]) = 0
                                                    _3984 = mem[_2089]
                                                    t = t + 1
                                                    continue 
                                                uint8(schemas[t].field_0) = 0
                                                _3984 = mem[_2089]
                                                t = t + 4
                                                continue 
                                        _3984 = mem[_2089]
                                        s = _2089
                                        t = _1051
                                        t = _1050
                                        idx = idx + 1
                                        t = t + uint8(_1050)
                                        continue 
                                    mem[64] = _2089 + 192
                                    mem[_2089 + 64] = msg.sender
                                    mem[_2089 + 96] = arg1
                                    mem[_2089 + 128] = _1051
                                    mem[_2089 + 160] = 1
                                    require stor2.length < stor2.length
                                    mem[0] = 2
                                    uint256(stor5640[stor2.length].field_0) = Mask(96, 0, stor5640[stor2.length].field_160)
                                    stor5640[stor2.length] = arg1
                                    _4065 = mem[_1051]
                                    stor5640[stor2.length] = mem[_1051]
                                    mem[0] = (4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c
                                    if not _4065:
                                        s = sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c)
                                        while sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c) + stor5640[stor2.length] > s:
                                            uint256(stor[s]) = 0
                                            s = s + 1
                                            continue 
                                        stor5640[stor2.length] = 1
                                        _4964 = mem[_2089]
                                        s = 0
                                        while s < _4964:
                                            require s < mem[_2089]
                                            mem[0] = mem[(32 * s) + _2089 + 32]
                                            mem[32] = 1
                                            if not sub_81638e9b[mem[0]]:
                                                require s < mem[_2089]
                                                mem[0] = mem[_2089 + (32 * s) + 32]
                                                sub_81638e9b[mem[_2089 + (32 * s) + 32]] = stor2.length
                                                require s < mem[_2089]
                                                _5133 = mem[(32 * s) + _2089 + 32]
                                                mem[_2089 + 192] = stor2.length
                                                emit 0xc8f96bb0: stor2.length, _5133, msg.sender
                                            _4964 = mem[_2089]
                                            s = s + 1
                                            continue 
                                    else:
                                        u = sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c)
                                        s = _1051 + 32
                                        while _1051 + (32 * _4065) + 32 > s:
                                            uint256(stor[u]) = mem[s]
                                            u = u + 1
                                            s = s + 32
                                            continue 
                                        s = sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c) + (Mask(251, 0, (32 * _4065) + 31) >> 5)
                                        while sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c) + stor5640[stor2.length] > s:
                                            uint256(stor[s]) = 0
                                            s = s + 1
                                            continue 
                                        stor5640[stor2.length] = 1
                                        _5232 = mem[_2089]
                                        s = 0
                                        while s < _5232:
                                            require s < mem[_2089]
                                            mem[0] = mem[(32 * s) + _2089 + 32]
                                            mem[32] = 1
                                            if not sub_81638e9b[mem[0]]:
                                                require s < mem[_2089]
                                                mem[0] = mem[_2089 + (32 * s) + 32]
                                                sub_81638e9b[mem[_2089 + (32 * s) + 32]] = stor2.length
                                                require s < mem[_2089]
                                                _5301 = mem[(32 * s) + _2089 + 32]
                                                mem[_2089 + 192] = stor2.length
                                                emit 0xc8f96bb0: stor2.length, _5301, msg.sender
                                            _5232 = mem[_2089]
                                            s = s + 1
                                            continue 
                                else:
                                    require stor2.length < stor2.length
                                    mem[0] = 2
                                    if address(stor5640[stor2.length].field_0) != msg.sender:
                                        mem[0] = 2
                                        require 0 < mem[_2089]
                                        mem[_2089 + 64] = 3
                                        mem[_2089 + 96] = mem[_2089 + 32]
                                        emit code.data[5684 len 32]: 3, mem[_2089 + 32]
                                        stor2.length--
                                        if not stor2.length <= stor2.length - 1:
                                            mem[0] = 2
                                            s = sha3(mem[0]) + (4 * stor2.length - 1)
                                            while sha3(2) + (4 * stor2.length) > s:
                                                address(stor[s]) = 0
                                                sub_81638e9b[s] = 0
                                                stor2[s] = 0
                                                mem[0] = s + 2
                                                t = sha3(t + 2)
                                                while sha3(t + 2) + stor2[t] > t:
                                                    uint256(stor[t]) = 0
                                                    t = t + 1
                                                    continue 
                                                uint8(schemas[t].field_0) = 0
                                                t = t + 4
                                                continue 
                                    else:
                                        _3985 = mem[_2089]
                                        u = 0
                                        s = 0
                                        while s < _3985:
                                            require s < mem[_2089]
                                            mem[0] = mem[_2089 + (32 * s) + 32]
                                            mem[32] = 1
                                            if sub_81638e9b[mem[0]] <= 0:
                                                _3985 = mem[_2089]
                                                u = sub_81638e9b[mem[0]]
                                                s = s + 1
                                                continue 
                                            if sub_81638e9b[mem[0]] == stor2.length:
                                                _3985 = mem[_2089]
                                                u = sub_81638e9b[mem[0]]
                                                s = s + 1
                                                continue 
                                            require s < mem[_2089]
                                            _4220 = mem[_2089 + (32 * s) + 32]
                                            mem[_2089 + 64] = 1
                                            mem[_2089 + 96] = _4220
                                            emit code.data[5684 len 32]: 1, _4220
                                            stor2.length--
                                            if not stor2.length <= stor2.length - 1:
                                                mem[0] = 2
                                                s = sha3(mem[0]) + (4 * stor2.length - 1)
                                                while sha3(2) + (4 * stor2.length) > s:
                                                    address(stor[s]) = 0
                                                    sub_81638e9b[s] = 0
                                                    stor2[s] = 0
                                                    mem[0] = s + 2
                                                    t = sha3(t + 2)
                                                    while sha3(t + 2) + stor2[t] > t:
                                                        uint256(stor[t]) = 0
                                                        _3985 = mem[_2089]
                                                        t = t + 1
                                                        continue 
                                                    uint8(schemas[t].field_0) = 0
                                                    _3985 = mem[_2089]
                                                    t = t + 4
                                                    continue 
                                            _3985 = mem[_2089]
                                            s = _2089
                                            t = _1051
                                            t = _1050
                                            idx = idx + 1
                                            t = t + uint8(_1050)
                                            continue 
                                        mem[64] = _2089 + 192
                                        mem[_2089 + 64] = msg.sender
                                        mem[_2089 + 96] = arg1
                                        mem[_2089 + 128] = _1051
                                        mem[_2089 + 160] = 1
                                        require stor2.length < stor2.length
                                        mem[0] = 2
                                        uint256(stor5640[stor2.length].field_0) = Mask(96, 0, stor5640[stor2.length].field_160)
                                        stor5640[stor2.length] = arg1
                                        _4074 = mem[_1051]
                                        stor5640[stor2.length] = mem[_1051]
                                        mem[0] = (4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c
                                        if not _4074:
                                            s = sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c)
                                            while sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c) + stor5640[stor2.length] > s:
                                                uint256(stor[s]) = 0
                                                s = s + 1
                                                continue 
                                            stor5640[stor2.length] = 1
                                            _4965 = mem[_2089]
                                            s = 0
                                            while s < _4965:
                                                require s < mem[_2089]
                                                mem[0] = mem[(32 * s) + _2089 + 32]
                                                mem[32] = 1
                                                if not sub_81638e9b[mem[0]]:
                                                    require s < mem[_2089]
                                                    mem[0] = mem[_2089 + (32 * s) + 32]
                                                    sub_81638e9b[mem[_2089 + (32 * s) + 32]] = stor2.length
                                                    require s < mem[_2089]
                                                    _5138 = mem[(32 * s) + _2089 + 32]
                                                    mem[_2089 + 192] = stor2.length
                                                    emit 0xc8f96bb0: stor2.length, _5138, msg.sender
                                                _4965 = mem[_2089]
                                                s = s + 1
                                                continue 
                                        else:
                                            u = sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c)
                                            s = _1051 + 32
                                            while _1051 + (32 * _4074) + 32 > s:
                                                uint256(stor[u]) = mem[s]
                                                u = u + 1
                                                s = s + 32
                                                continue 
                                            s = sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c) + (Mask(251, 0, (32 * _4074) + 31) >> 5)
                                            while sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c) + stor5640[stor2.length] > s:
                                                uint256(stor[s]) = 0
                                                s = s + 1
                                                continue 
                                            stor5640[stor2.length] = 1
                                            _5233 = mem[_2089]
                                            s = 0
                                            while s < _5233:
                                                require s < mem[_2089]
                                                mem[0] = mem[(32 * s) + _2089 + 32]
                                                mem[32] = 1
                                                if not sub_81638e9b[mem[0]]:
                                                    require s < mem[_2089]
                                                    mem[0] = mem[_2089 + (32 * s) + 32]
                                                    sub_81638e9b[mem[_2089 + (32 * s) + 32]] = stor2.length
                                                    require s < mem[_2089]
                                                    _5304 = mem[(32 * s) + _2089 + 32]
                                                    mem[_2089 + 192] = stor2.length
                                                    emit 0xc8f96bb0: stor2.length, _5304, msg.sender
                                                _5233 = mem[_2089]
                                                s = s + 1
                                                continue 
                s = _2089
                t = _1051
                t = _1050
                idx = idx + 1
                t = t + uint8(_1050)
                continue 
            _1053 = msize
            mem[msize] = mem[(32 * idx) + 159 len 1]
            mem[64] = _1053 + (32 * uint8(_1050)) + 32
            u = 0
            while u < uint8(_1050):
                require t + u < mem[(32 * arg2.length) + 128]
                require u < mem[_1053]
                mem[_1053 + (32 * u) + 32] = mem[(32 * t + u) + (32 * arg2.length) + 160]
                u = u + 1
                continue 
            _2085 = mem[64]
            if msize < mem[64]:
                mem[mem[64]] = 1
                mem[64] = mem[64] + 64
                require idx < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                require 0 < mem[_2085]
                mem[_2085 + 32] = mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192]
                stor2.length++
                if not stor2.length > stor2.length + 1:
                    if arg1 > schemas.length:
                        require 0 < mem[_2085]
                        mem[_2085 + 64] = 4
                        mem[_2085 + 96] = mem[_2085 + 32]
                        emit code.data[5684 len 32]: 4, mem[_2085 + 32]
                        stor2.length--
                        if not stor2.length <= stor2.length - 1:
                            mem[0] = 2
                            s = sha3(mem[0]) + (4 * stor2.length - 1)
                            while sha3(2) + (4 * stor2.length) > s:
                                address(stor[s]) = 0
                                sub_81638e9b[s] = 0
                                stor2[s] = 0
                                mem[0] = s + 2
                                t = sha3(t + 2)
                                while sha3(t + 2) + stor2[t] > t:
                                    uint256(stor[t]) = 0
                                    t = t + 1
                                    continue 
                                uint8(schemas[t].field_0) = 0
                                t = t + 4
                                continue 
                    else:
                        if 0 == mem[_2085]:
                            mem[_2085 + 64] = 5
                            mem[_2085 + 96] = 0
                            emit code.data[5684 len 32]: 5, 0
                            stor2.length--
                            if not stor2.length <= stor2.length - 1:
                                mem[0] = 2
                                s = sha3(mem[0]) + (4 * stor2.length - 1)
                                while sha3(2) + (4 * stor2.length) > s:
                                    address(stor[s]) = 0
                                    sub_81638e9b[s] = 0
                                    stor2[s] = 0
                                    mem[0] = s + 2
                                    t = sha3(t + 2)
                                    while sha3(t + 2) + stor2[t] > t:
                                        uint256(stor[t]) = 0
                                        t = t + 1
                                        continue 
                                    uint8(schemas[t].field_0) = 0
                                    t = t + 4
                                    continue 
                        else:
                            if 0 == mem[_1053]:
                                mem[_2085 + 64] = 6
                                mem[_2085 + 96] = 0
                                emit code.data[5684 len 32]: 6, 0
                                stor2.length--
                                if not stor2.length <= stor2.length - 1:
                                    mem[0] = 2
                                    s = sha3(mem[0]) + (4 * stor2.length - 1)
                                    while sha3(2) + (4 * stor2.length) > s:
                                        address(stor[s]) = 0
                                        sub_81638e9b[s] = 0
                                        stor2[s] = 0
                                        mem[0] = s + 2
                                        t = sha3(t + 2)
                                        while sha3(t + 2) + stor2[t] > t:
                                            uint256(stor[t]) = 0
                                            t = t + 1
                                            continue 
                                        uint8(schemas[t].field_0) = 0
                                        t = t + 4
                                        continue 
                            else:
                                require stor2.length < stor2.length
                                mem[0] = 2
                                if not address(stor5640[stor2.length].field_0):
                                    _3110 = mem[_2085]
                                    v = 0
                                    u = 0
                                    while u < _3110:
                                        require u < mem[_2085]
                                        mem[0] = mem[_2085 + (32 * u) + 32]
                                        mem[32] = 1
                                        if sub_81638e9b[mem[0]] <= 0:
                                            _3110 = mem[_2085]
                                            v = sub_81638e9b[mem[0]]
                                            u = u + 1
                                            continue 
                                        if sub_81638e9b[mem[0]] == stor2.length:
                                            _3110 = mem[_2085]
                                            v = sub_81638e9b[mem[0]]
                                            u = u + 1
                                            continue 
                                        require u < mem[_2085]
                                        _3328 = mem[_2085 + (32 * u) + 32]
                                        mem[mem[64]] = 1
                                        mem[mem[64] + 32] = _3328
                                        emit code.data[5684 len 32]: 1, _3328
                                        stor2.length--
                                        if not stor2.length <= stor2.length - 1:
                                            mem[0] = 2
                                            s = sha3(mem[0]) + (4 * stor2.length - 1)
                                            while sha3(2) + (4 * stor2.length) > s:
                                                address(stor[s]) = 0
                                                sub_81638e9b[s] = 0
                                                stor2[s] = 0
                                                mem[0] = s + 2
                                                t = sha3(t + 2)
                                                while sha3(t + 2) + stor2[t] > t:
                                                    uint256(stor[t]) = 0
                                                    _3110 = mem[_2085]
                                                    t = t + 1
                                                    continue 
                                                uint8(schemas[t].field_0) = 0
                                                _3110 = mem[_2085]
                                                t = t + 4
                                                continue 
                                        _3110 = mem[_2085]
                                        s = _2085
                                        t = _1053
                                        t = _1050
                                        idx = idx + 1
                                        t = t + uint8(_1050)
                                        continue 
                                    _3132 = mem[64]
                                    mem[64] = mem[64] + 128
                                    mem[_3132] = msg.sender
                                    mem[_3132 + 32] = arg1
                                    mem[_3132 + 64] = _1053
                                    mem[_3132 + 96] = 1
                                    require stor2.length < stor2.length
                                    mem[0] = 2
                                    uint256(stor5640[stor2.length].field_0) = Mask(96, 0, stor5640[stor2.length].field_160)
                                    stor5640[stor2.length] = arg1
                                    _3191 = mem[_1053]
                                    stor5640[stor2.length] = mem[_1053]
                                    mem[0] = (4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c
                                    if not _3191:
                                        s = sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c)
                                        while sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c) + stor5640[stor2.length] > s:
                                            uint256(stor[s]) = 0
                                            s = s + 1
                                            continue 
                                        stor5640[stor2.length] = 1
                                        _4570 = mem[_2085]
                                        s = 0
                                        while s < _4570:
                                            require s < mem[_2085]
                                            mem[0] = mem[(32 * s) + _2085 + 32]
                                            mem[32] = 1
                                            if not sub_81638e9b[mem[0]]:
                                                require s < mem[_2085]
                                                mem[0] = mem[_2085 + (32 * s) + 32]
                                                sub_81638e9b[mem[_2085 + (32 * s) + 32]] = stor2.length
                                                require s < mem[_2085]
                                                _4735 = mem[(32 * s) + _2085 + 32]
                                                mem[mem[64]] = stor2.length
                                                emit 0xc8f96bb0: stor2.length, _4735, msg.sender
                                            _4570 = mem[_2085]
                                            s = s + 1
                                            continue 
                                        s = _2085
                                        t = _1053
                                        t = _1050
                                        idx = idx + 1
                                        t = t + uint8(_1050)
                                        continue 
                                    s = sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c)
                                    u = _1053 + 32
                                    while _1053 + (32 * _3191) + 32 > u:
                                        uint256(stor[s]) = mem[u]
                                        s = s + 1
                                        u = u + 32
                                        continue 
                                    s = sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c) + (Mask(251, 0, (32 * _3191) + 31) >> 5)
                                    while sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c) + stor5640[stor2.length] > s:
                                        uint256(stor[s]) = 0
                                        s = s + 1
                                        continue 
                                    stor5640[stor2.length] = 1
                                    _4966 = mem[_2085]
                                    s = 0
                                    while s < _4966:
                                        require s < mem[_2085]
                                        mem[0] = mem[(32 * s) + _2085 + 32]
                                        mem[32] = 1
                                        if not sub_81638e9b[mem[0]]:
                                            require s < mem[_2085]
                                            mem[0] = mem[_2085 + (32 * s) + 32]
                                            sub_81638e9b[mem[_2085 + (32 * s) + 32]] = stor2.length
                                            require s < mem[_2085]
                                            _5143 = mem[(32 * s) + _2085 + 32]
                                            mem[mem[64]] = stor2.length
                                            emit 0xc8f96bb0: stor2.length, _5143, msg.sender
                                        _4966 = mem[_2085]
                                        s = s + 1
                                        continue 
                                    u = _2085
                                    t = _1053
                                    t = _1050
                                    idx = idx + 1
                                    t = t + uint8(_1050)
                                    continue 
                                require stor2.length < stor2.length
                                mem[0] = 2
                                if address(stor5640[stor2.length].field_0) != msg.sender:
                                    mem[0] = 2
                                    require 0 < mem[_2085]
                                    mem[_2085 + 64] = 3
                                    mem[_2085 + 96] = mem[_2085 + 32]
                                    emit code.data[5684 len 32]: 3, mem[_2085 + 32]
                                    stor2.length--
                                    if not stor2.length <= stor2.length - 1:
                                        mem[0] = 2
                                        s = sha3(mem[0]) + (4 * stor2.length - 1)
                                        while sha3(2) + (4 * stor2.length) > s:
                                            address(stor[s]) = 0
                                            sub_81638e9b[s] = 0
                                            stor2[s] = 0
                                            mem[0] = s + 2
                                            t = sha3(t + 2)
                                            while sha3(t + 2) + stor2[t] > t:
                                                uint256(stor[t]) = 0
                                                t = t + 1
                                                continue 
                                            uint8(schemas[t].field_0) = 0
                                            t = t + 4
                                            continue 
                                else:
                                    _3111 = mem[_2085]
                                    u = 0
                                    s = 0
                                    while s < _3111:
                                        require s < mem[_2085]
                                        mem[0] = mem[_2085 + (32 * s) + 32]
                                        mem[32] = 1
                                        if sub_81638e9b[mem[0]] <= 0:
                                            _3111 = mem[_2085]
                                            u = sub_81638e9b[mem[0]]
                                            s = s + 1
                                            continue 
                                        if sub_81638e9b[mem[0]] == stor2.length:
                                            _3111 = mem[_2085]
                                            u = sub_81638e9b[mem[0]]
                                            s = s + 1
                                            continue 
                                        require s < mem[_2085]
                                        _3332 = mem[_2085 + (32 * s) + 32]
                                        mem[mem[64]] = 1
                                        mem[mem[64] + 32] = _3332
                                        emit code.data[5684 len 32]: 1, _3332
                                        stor2.length--
                                        if not stor2.length <= stor2.length - 1:
                                            mem[0] = 2
                                            s = sha3(mem[0]) + (4 * stor2.length - 1)
                                            while sha3(2) + (4 * stor2.length) > s:
                                                address(stor[s]) = 0
                                                sub_81638e9b[s] = 0
                                                stor2[s] = 0
                                                mem[0] = s + 2
                                                t = sha3(t + 2)
                                                while sha3(t + 2) + stor2[t] > t:
                                                    uint256(stor[t]) = 0
                                                    _3111 = mem[_2085]
                                                    t = t + 1
                                                    continue 
                                                uint8(schemas[t].field_0) = 0
                                                _3111 = mem[_2085]
                                                t = t + 4
                                                continue 
                                        _3111 = mem[_2085]
                                        s = _2085
                                        t = _1053
                                        t = _1050
                                        idx = idx + 1
                                        t = t + uint8(_1050)
                                        continue 
                                    _3134 = mem[64]
                                    mem[64] = mem[64] + 128
                                    mem[_3134] = msg.sender
                                    mem[_3134 + 32] = arg1
                                    mem[_3134 + 64] = _1053
                                    mem[_3134 + 96] = 1
                                    require stor2.length < stor2.length
                                    mem[0] = 2
                                    uint256(stor5640[stor2.length].field_0) = Mask(96, 0, stor5640[stor2.length].field_160)
                                    stor5640[stor2.length] = arg1
                                    _3200 = mem[_1053]
                                    stor5640[stor2.length] = mem[_1053]
                                    mem[0] = (4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c
                                    if not _3200:
                                        s = sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c)
                                        while sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c) + stor5640[stor2.length] > s:
                                            uint256(stor[s]) = 0
                                            s = s + 1
                                            continue 
                                        stor5640[stor2.length] = 1
                                        _4571 = mem[_2085]
                                        s = 0
                                        while s < _4571:
                                            require s < mem[_2085]
                                            mem[0] = mem[(32 * s) + _2085 + 32]
                                            mem[32] = 1
                                            if not sub_81638e9b[mem[0]]:
                                                require s < mem[_2085]
                                                mem[0] = mem[_2085 + (32 * s) + 32]
                                                sub_81638e9b[mem[_2085 + (32 * s) + 32]] = stor2.length
                                                require s < mem[_2085]
                                                _4740 = mem[(32 * s) + _2085 + 32]
                                                mem[mem[64]] = stor2.length
                                                emit 0xc8f96bb0: stor2.length, _4740, msg.sender
                                            _4571 = mem[_2085]
                                            s = s + 1
                                            continue 
                                    else:
                                        u = sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c)
                                        s = _1053 + 32
                                        while _1053 + (32 * _3200) + 32 > s:
                                            uint256(stor[u]) = mem[s]
                                            u = u + 1
                                            s = s + 32
                                            continue 
                                        s = sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c) + (Mask(251, 0, (32 * _3200) + 31) >> 5)
                                        while sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c) + stor5640[stor2.length] > s:
                                            uint256(stor[s]) = 0
                                            s = s + 1
                                            continue 
                                        stor5640[stor2.length] = 1
                                        _4967 = mem[_2085]
                                        s = 0
                                        while s < _4967:
                                            require s < mem[_2085]
                                            mem[0] = mem[(32 * s) + _2085 + 32]
                                            mem[32] = 1
                                            if not sub_81638e9b[mem[0]]:
                                                require s < mem[_2085]
                                                mem[0] = mem[_2085 + (32 * s) + 32]
                                                sub_81638e9b[mem[_2085 + (32 * s) + 32]] = stor2.length
                                                require s < mem[_2085]
                                                _5146 = mem[(32 * s) + _2085 + 32]
                                                mem[mem[64]] = stor2.length
                                                emit 0xc8f96bb0: stor2.length, _5146, msg.sender
                                            _4967 = mem[_2085]
                                            s = s + 1
                                            continue 
                else:
                    mem[0] = 2
                    s = sha3(mem[0]) + (4 * stor2.length + 1)
                    while sha3(2) + (4 * stor2.length) > s:
                        address(stor[s]) = 0
                        sub_81638e9b[s] = 0
                        stor2[s] = 0
                        mem[0] = s + 2
                        t = sha3(t + 2)
                        while sha3(t + 2) + stor2[t] > t:
                            uint256(stor[t]) = 0
                            t = t + 1
                            continue 
                        uint8(schemas[t].field_0) = 0
                        t = t + 4
                        continue 
                    if arg1 > schemas.length:
                        require 0 < mem[_2085]
                        mem[_2085 + 64] = 4
                        mem[_2085 + 96] = mem[_2085 + 32]
                        emit code.data[5684 len 32]: 4, mem[_2085 + 32]
                        stor2.length--
                        if not stor2.length <= stor2.length - 1:
                            mem[0] = 2
                            s = sha3(mem[0]) + (4 * stor2.length - 1)
                            while sha3(2) + (4 * stor2.length) > s:
                                address(stor[s]) = 0
                                sub_81638e9b[s] = 0
                                stor2[s] = 0
                                mem[0] = s + 2
                                t = sha3(t + 2)
                                while sha3(t + 2) + stor2[t] > t:
                                    uint256(stor[t]) = 0
                                    t = t + 1
                                    continue 
                                uint8(schemas[t].field_0) = 0
                                t = t + 4
                                continue 
                    else:
                        if 0 == mem[_2085]:
                            mem[_2085 + 64] = 5
                            mem[_2085 + 96] = 0
                            emit code.data[5684 len 32]: 5, 0
                            stor2.length--
                            if not stor2.length <= stor2.length - 1:
                                mem[0] = 2
                                s = sha3(mem[0]) + (4 * stor2.length - 1)
                                while sha3(2) + (4 * stor2.length) > s:
                                    address(stor[s]) = 0
                                    sub_81638e9b[s] = 0
                                    stor2[s] = 0
                                    mem[0] = s + 2
                                    t = sha3(t + 2)
                                    while sha3(t + 2) + stor2[t] > t:
                                        uint256(stor[t]) = 0
                                        t = t + 1
                                        continue 
                                    uint8(schemas[t].field_0) = 0
                                    t = t + 4
                                    continue 
                        else:
                            if 0 == mem[_1053]:
                                mem[_2085 + 64] = 6
                                mem[_2085 + 96] = 0
                                emit code.data[5684 len 32]: 6, 0
                                stor2.length--
                                if not stor2.length <= stor2.length - 1:
                                    mem[0] = 2
                                    s = sha3(mem[0]) + (4 * stor2.length - 1)
                                    while sha3(2) + (4 * stor2.length) > s:
                                        address(stor[s]) = 0
                                        sub_81638e9b[s] = 0
                                        stor2[s] = 0
                                        mem[0] = s + 2
                                        t = sha3(t + 2)
                                        while sha3(t + 2) + stor2[t] > t:
                                            uint256(stor[t]) = 0
                                            t = t + 1
                                            continue 
                                        uint8(schemas[t].field_0) = 0
                                        t = t + 4
                                        continue 
                            else:
                                require stor2.length < stor2.length
                                mem[0] = 2
                                if not address(stor5640[stor2.length].field_0):
                                    _3986 = mem[_2085]
                                    u = 0
                                    s = 0
                                    while s < _3986:
                                        require s < mem[_2085]
                                        mem[0] = mem[_2085 + (32 * s) + 32]
                                        mem[32] = 1
                                        if sub_81638e9b[mem[0]] <= 0:
                                            _3986 = mem[_2085]
                                            u = sub_81638e9b[mem[0]]
                                            s = s + 1
                                            continue 
                                        if sub_81638e9b[mem[0]] == stor2.length:
                                            _3986 = mem[_2085]
                                            u = sub_81638e9b[mem[0]]
                                            s = s + 1
                                            continue 
                                        require s < mem[_2085]
                                        _4228 = mem[_2085 + (32 * s) + 32]
                                        mem[mem[64]] = 1
                                        mem[mem[64] + 32] = _4228
                                        emit code.data[5684 len 32]: 1, _4228
                                        stor2.length--
                                        if not stor2.length <= stor2.length - 1:
                                            mem[0] = 2
                                            s = sha3(mem[0]) + (4 * stor2.length - 1)
                                            while sha3(2) + (4 * stor2.length) > s:
                                                address(stor[s]) = 0
                                                sub_81638e9b[s] = 0
                                                stor2[s] = 0
                                                mem[0] = s + 2
                                                t = sha3(t + 2)
                                                while sha3(t + 2) + stor2[t] > t:
                                                    uint256(stor[t]) = 0
                                                    _3986 = mem[_2085]
                                                    t = t + 1
                                                    continue 
                                                uint8(schemas[t].field_0) = 0
                                                _3986 = mem[_2085]
                                                t = t + 4
                                                continue 
                                        _3986 = mem[_2085]
                                        s = _2085
                                        t = _1053
                                        t = _1050
                                        idx = idx + 1
                                        t = t + uint8(_1050)
                                        continue 
                                    _4018 = mem[64]
                                    mem[64] = mem[64] + 128
                                    mem[_4018] = msg.sender
                                    mem[_4018 + 32] = arg1
                                    mem[_4018 + 64] = _1053
                                    mem[_4018 + 96] = 1
                                    require stor2.length < stor2.length
                                    mem[0] = 2
                                    uint256(stor5640[stor2.length].field_0) = Mask(96, 0, stor5640[stor2.length].field_160)
                                    stor5640[stor2.length] = arg1
                                    _4085 = mem[_1053]
                                    stor5640[stor2.length] = mem[_1053]
                                    mem[0] = (4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c
                                    if not _4085:
                                        s = sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c)
                                        while sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c) + stor5640[stor2.length] > s:
                                            uint256(stor[s]) = 0
                                            s = s + 1
                                            continue 
                                        stor5640[stor2.length] = 1
                                        _4968 = mem[_2085]
                                        s = 0
                                        while s < _4968:
                                            require s < mem[_2085]
                                            mem[0] = mem[(32 * s) + _2085 + 32]
                                            mem[32] = 1
                                            if not sub_81638e9b[mem[0]]:
                                                require s < mem[_2085]
                                                mem[0] = mem[_2085 + (32 * s) + 32]
                                                sub_81638e9b[mem[_2085 + (32 * s) + 32]] = stor2.length
                                                require s < mem[_2085]
                                                _5149 = mem[(32 * s) + _2085 + 32]
                                                mem[mem[64]] = stor2.length
                                                emit 0xc8f96bb0: stor2.length, _5149, msg.sender
                                            _4968 = mem[_2085]
                                            s = s + 1
                                            continue 
                                    else:
                                        u = sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c)
                                        s = _1053 + 32
                                        while _1053 + (32 * _4085) + 32 > s:
                                            uint256(stor[u]) = mem[s]
                                            u = u + 1
                                            s = s + 32
                                            continue 
                                        s = sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c) + (Mask(251, 0, (32 * _4085) + 31) >> 5)
                                        while sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c) + stor5640[stor2.length] > s:
                                            uint256(stor[s]) = 0
                                            s = s + 1
                                            continue 
                                        stor5640[stor2.length] = 1
                                        _5234 = mem[_2085]
                                        s = 0
                                        while s < _5234:
                                            require s < mem[_2085]
                                            mem[0] = mem[(32 * s) + _2085 + 32]
                                            mem[32] = 1
                                            if not sub_81638e9b[mem[0]]:
                                                require s < mem[_2085]
                                                mem[0] = mem[_2085 + (32 * s) + 32]
                                                sub_81638e9b[mem[_2085 + (32 * s) + 32]] = stor2.length
                                                require s < mem[_2085]
                                                _5307 = mem[(32 * s) + _2085 + 32]
                                                mem[mem[64]] = stor2.length
                                                emit 0xc8f96bb0: stor2.length, _5307, msg.sender
                                            _5234 = mem[_2085]
                                            s = s + 1
                                            continue 
                                else:
                                    require stor2.length < stor2.length
                                    mem[0] = 2
                                    if address(stor5640[stor2.length].field_0) != msg.sender:
                                        mem[0] = 2
                                        require 0 < mem[_2085]
                                        mem[_2085 + 64] = 3
                                        mem[_2085 + 96] = mem[_2085 + 32]
                                        emit code.data[5684 len 32]: 3, mem[_2085 + 32]
                                        stor2.length--
                                        if not stor2.length <= stor2.length - 1:
                                            mem[0] = 2
                                            s = sha3(mem[0]) + (4 * stor2.length - 1)
                                            while sha3(2) + (4 * stor2.length) > s:
                                                address(stor[s]) = 0
                                                sub_81638e9b[s] = 0
                                                stor2[s] = 0
                                                mem[0] = s + 2
                                                t = sha3(t + 2)
                                                while sha3(t + 2) + stor2[t] > t:
                                                    uint256(stor[t]) = 0
                                                    t = t + 1
                                                    continue 
                                                uint8(schemas[t].field_0) = 0
                                                t = t + 4
                                                continue 
                                    else:
                                        _3987 = mem[_2085]
                                        u = 0
                                        s = 0
                                        while s < _3987:
                                            require s < mem[_2085]
                                            mem[0] = mem[_2085 + (32 * s) + 32]
                                            mem[32] = 1
                                            if sub_81638e9b[mem[0]] <= 0:
                                                _3987 = mem[_2085]
                                                u = sub_81638e9b[mem[0]]
                                                s = s + 1
                                                continue 
                                            if sub_81638e9b[mem[0]] == stor2.length:
                                                _3987 = mem[_2085]
                                                u = sub_81638e9b[mem[0]]
                                                s = s + 1
                                                continue 
                                            require s < mem[_2085]
                                            _4232 = mem[_2085 + (32 * s) + 32]
                                            mem[mem[64]] = 1
                                            mem[mem[64] + 32] = _4232
                                            emit code.data[5684 len 32]: 1, _4232
                                            stor2.length--
                                            if not stor2.length <= stor2.length - 1:
                                                mem[0] = 2
                                                s = sha3(mem[0]) + (4 * stor2.length - 1)
                                                while sha3(2) + (4 * stor2.length) > s:
                                                    address(stor[s]) = 0
                                                    sub_81638e9b[s] = 0
                                                    stor2[s] = 0
                                                    mem[0] = s + 2
                                                    t = sha3(t + 2)
                                                    while sha3(t + 2) + stor2[t] > t:
                                                        uint256(stor[t]) = 0
                                                        _3987 = mem[_2085]
                                                        t = t + 1
                                                        continue 
                                                    uint8(schemas[t].field_0) = 0
                                                    _3987 = mem[_2085]
                                                    t = t + 4
                                                    continue 
                                            _3987 = mem[_2085]
                                            s = _2085
                                            t = _1053
                                            t = _1050
                                            idx = idx + 1
                                            t = t + uint8(_1050)
                                            continue 
                                        _4020 = mem[64]
                                        mem[64] = mem[64] + 128
                                        mem[_4020] = msg.sender
                                        mem[_4020 + 32] = arg1
                                        mem[_4020 + 64] = _1053
                                        mem[_4020 + 96] = 1
                                        require stor2.length < stor2.length
                                        mem[0] = 2
                                        uint256(stor5640[stor2.length].field_0) = Mask(96, 0, stor5640[stor2.length].field_160)
                                        stor5640[stor2.length] = arg1
                                        _4094 = mem[_1053]
                                        stor5640[stor2.length] = mem[_1053]
                                        mem[0] = (4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c
                                        if not _4094:
                                            s = sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c)
                                            while sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c) + stor5640[stor2.length] > s:
                                                uint256(stor[s]) = 0
                                                s = s + 1
                                                continue 
                                            stor5640[stor2.length] = 1
                                            _4969 = mem[_2085]
                                            s = 0
                                            while s < _4969:
                                                require s < mem[_2085]
                                                mem[0] = mem[(32 * s) + _2085 + 32]
                                                mem[32] = 1
                                                if not sub_81638e9b[mem[0]]:
                                                    require s < mem[_2085]
                                                    mem[0] = mem[_2085 + (32 * s) + 32]
                                                    sub_81638e9b[mem[_2085 + (32 * s) + 32]] = stor2.length
                                                    require s < mem[_2085]
                                                    _5154 = mem[(32 * s) + _2085 + 32]
                                                    mem[mem[64]] = stor2.length
                                                    emit 0xc8f96bb0: stor2.length, _5154, msg.sender
                                                _4969 = mem[_2085]
                                                s = s + 1
                                                continue 
                                        else:
                                            u = sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c)
                                            s = _1053 + 32
                                            while _1053 + (32 * _4094) + 32 > s:
                                                uint256(stor[u]) = mem[s]
                                                u = u + 1
                                                s = s + 32
                                                continue 
                                            s = sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c) + (Mask(251, 0, (32 * _4094) + 31) >> 5)
                                            while sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c) + stor5640[stor2.length] > s:
                                                uint256(stor[s]) = 0
                                                s = s + 1
                                                continue 
                                            stor5640[stor2.length] = 1
                                            _5235 = mem[_2085]
                                            s = 0
                                            while s < _5235:
                                                require s < mem[_2085]
                                                mem[0] = mem[(32 * s) + _2085 + 32]
                                                mem[32] = 1
                                                if not sub_81638e9b[mem[0]]:
                                                    require s < mem[_2085]
                                                    mem[0] = mem[_2085 + (32 * s) + 32]
                                                    sub_81638e9b[mem[_2085 + (32 * s) + 32]] = stor2.length
                                                    require s < mem[_2085]
                                                    _5310 = mem[(32 * s) + _2085 + 32]
                                                    mem[mem[64]] = stor2.length
                                                    emit 0xc8f96bb0: stor2.length, _5310, msg.sender
                                                _5235 = mem[_2085]
                                                s = s + 1
                                                continue 
                s = _2085
                t = _1053
                t = _1050
                idx = idx + 1
                t = t + uint8(_1050)
                continue 
            _2093 = msize
            mem[msize] = 1
            mem[64] = _2093 + 64
            require idx < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
            require 0 < mem[_2093]
            mem[_2093 + 32] = mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192]
            stor2.length++
            if not stor2.length > stor2.length + 1:
                if arg1 > schemas.length:
                    require 0 < mem[_2093]
                    mem[_2093 + 64] = 4
                    mem[_2093 + 96] = mem[_2093 + 32]
                    emit code.data[5684 len 32]: 4, mem[_2093 + 32]
                    stor2.length--
                    if not stor2.length <= stor2.length - 1:
                        mem[0] = 2
                        s = sha3(mem[0]) + (4 * stor2.length - 1)
                        while sha3(2) + (4 * stor2.length) > s:
                            address(stor[s]) = 0
                            sub_81638e9b[s] = 0
                            stor2[s] = 0
                            mem[0] = s + 2
                            t = sha3(t + 2)
                            while sha3(t + 2) + stor2[t] > t:
                                uint256(stor[t]) = 0
                                t = t + 1
                                continue 
                            uint8(schemas[t].field_0) = 0
                            t = t + 4
                            continue 
                else:
                    if 0 == mem[_2093]:
                        mem[_2093 + 64] = 5
                        mem[_2093 + 96] = 0
                        emit code.data[5684 len 32]: 5, 0
                        stor2.length--
                        if not stor2.length <= stor2.length - 1:
                            mem[0] = 2
                            s = sha3(mem[0]) + (4 * stor2.length - 1)
                            while sha3(2) + (4 * stor2.length) > s:
                                address(stor[s]) = 0
                                sub_81638e9b[s] = 0
                                stor2[s] = 0
                                mem[0] = s + 2
                                t = sha3(t + 2)
                                while sha3(t + 2) + stor2[t] > t:
                                    uint256(stor[t]) = 0
                                    t = t + 1
                                    continue 
                                uint8(schemas[t].field_0) = 0
                                t = t + 4
                                continue 
                    else:
                        if 0 == mem[_1053]:
                            mem[_2093 + 64] = 6
                            mem[_2093 + 96] = 0
                            emit code.data[5684 len 32]: 6, 0
                            stor2.length--
                            if not stor2.length <= stor2.length - 1:
                                mem[0] = 2
                                s = sha3(mem[0]) + (4 * stor2.length - 1)
                                while sha3(2) + (4 * stor2.length) > s:
                                    address(stor[s]) = 0
                                    sub_81638e9b[s] = 0
                                    stor2[s] = 0
                                    mem[0] = s + 2
                                    t = sha3(t + 2)
                                    while sha3(t + 2) + stor2[t] > t:
                                        uint256(stor[t]) = 0
                                        t = t + 1
                                        continue 
                                    uint8(schemas[t].field_0) = 0
                                    t = t + 4
                                    continue 
                        else:
                            require stor2.length < stor2.length
                            mem[0] = 2
                            if not address(stor5640[stor2.length].field_0):
                                _3112 = mem[_2093]
                                s = 0
                                u = 0
                                while u < _3112:
                                    require u < mem[_2093]
                                    mem[0] = mem[_2093 + (32 * u) + 32]
                                    mem[32] = 1
                                    if sub_81638e9b[mem[0]] <= 0:
                                        _3112 = mem[_2093]
                                        s = sub_81638e9b[mem[0]]
                                        u = u + 1
                                        continue 
                                    if sub_81638e9b[mem[0]] == stor2.length:
                                        _3112 = mem[_2093]
                                        s = sub_81638e9b[mem[0]]
                                        u = u + 1
                                        continue 
                                    require u < mem[_2093]
                                    _3340 = mem[_2093 + (32 * u) + 32]
                                    mem[_2093 + 64] = 1
                                    mem[_2093 + 96] = _3340
                                    emit code.data[5684 len 32]: 1, _3340
                                    stor2.length--
                                    if not stor2.length <= stor2.length - 1:
                                        mem[0] = 2
                                        s = sha3(mem[0]) + (4 * stor2.length - 1)
                                        while sha3(2) + (4 * stor2.length) > s:
                                            address(stor[s]) = 0
                                            sub_81638e9b[s] = 0
                                            stor2[s] = 0
                                            mem[0] = s + 2
                                            t = sha3(t + 2)
                                            while sha3(t + 2) + stor2[t] > t:
                                                uint256(stor[t]) = 0
                                                _3112 = mem[_2093]
                                                t = t + 1
                                                continue 
                                            uint8(schemas[t].field_0) = 0
                                            _3112 = mem[_2093]
                                            t = t + 4
                                            continue 
                                    _3112 = mem[_2093]
                                    u = _2093
                                    t = _1053
                                    t = _1050
                                    idx = idx + 1
                                    t = t + uint8(_1050)
                                    continue 
                                mem[64] = _2093 + 192
                                mem[_2093 + 64] = msg.sender
                                mem[_2093 + 96] = arg1
                                mem[_2093 + 128] = _1053
                                mem[_2093 + 160] = 1
                                require stor2.length < stor2.length
                                mem[0] = 2
                                uint256(stor5640[stor2.length].field_0) = Mask(96, 0, stor5640[stor2.length].field_160)
                                stor5640[stor2.length] = arg1
                                _3209 = mem[_1053]
                                stor5640[stor2.length] = mem[_1053]
                                mem[0] = (4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c
                                if not _3209:
                                    s = sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c)
                                    while sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c) + stor5640[stor2.length] > s:
                                        uint256(stor[s]) = 0
                                        s = s + 1
                                        continue 
                                    stor5640[stor2.length] = 1
                                    _4572 = mem[_2093]
                                    s = 0
                                    while s < _4572:
                                        require s < mem[_2093]
                                        mem[0] = mem[(32 * s) + _2093 + 32]
                                        mem[32] = 1
                                        if not sub_81638e9b[mem[0]]:
                                            require s < mem[_2093]
                                            mem[0] = mem[_2093 + (32 * s) + 32]
                                            sub_81638e9b[mem[_2093 + (32 * s) + 32]] = stor2.length
                                            require s < mem[_2093]
                                            _4751 = mem[(32 * s) + _2093 + 32]
                                            mem[_2093 + 192] = stor2.length
                                            emit 0xc8f96bb0: stor2.length, _4751, msg.sender
                                        _4572 = mem[_2093]
                                        s = s + 1
                                        continue 
                                else:
                                    u = sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c)
                                    s = _1053 + 32
                                    while _1053 + (32 * _3209) + 32 > s:
                                        uint256(stor[u]) = mem[s]
                                        u = u + 1
                                        s = s + 32
                                        continue 
                                    s = sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c) + (Mask(251, 0, (32 * _3209) + 31) >> 5)
                                    while sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c) + stor5640[stor2.length] > s:
                                        uint256(stor[s]) = 0
                                        s = s + 1
                                        continue 
                                    stor5640[stor2.length] = 1
                                    _4970 = mem[_2093]
                                    s = 0
                                    while s < _4970:
                                        require s < mem[_2093]
                                        mem[0] = mem[(32 * s) + _2093 + 32]
                                        mem[32] = 1
                                        if not sub_81638e9b[mem[0]]:
                                            require s < mem[_2093]
                                            mem[0] = mem[_2093 + (32 * s) + 32]
                                            sub_81638e9b[mem[_2093 + (32 * s) + 32]] = stor2.length
                                            require s < mem[_2093]
                                            _5159 = mem[(32 * s) + _2093 + 32]
                                            mem[_2093 + 192] = stor2.length
                                            emit 0xc8f96bb0: stor2.length, _5159, msg.sender
                                        _4970 = mem[_2093]
                                        s = s + 1
                                        continue 
                                u = _2093
                                t = _1053
                                t = _1050
                                idx = idx + 1
                                t = t + uint8(_1050)
                                continue 
                            require stor2.length < stor2.length
                            mem[0] = 2
                            if address(stor5640[stor2.length].field_0) != msg.sender:
                                mem[0] = 2
                                require 0 < mem[_2093]
                                mem[_2093 + 64] = 3
                                mem[_2093 + 96] = mem[_2093 + 32]
                                emit code.data[5684 len 32]: 3, mem[_2093 + 32]
                                stor2.length--
                                if not stor2.length <= stor2.length - 1:
                                    mem[0] = 2
                                    s = sha3(mem[0]) + (4 * stor2.length - 1)
                                    while sha3(2) + (4 * stor2.length) > s:
                                        address(stor[s]) = 0
                                        sub_81638e9b[s] = 0
                                        stor2[s] = 0
                                        mem[0] = s + 2
                                        t = sha3(t + 2)
                                        while sha3(t + 2) + stor2[t] > t:
                                            uint256(stor[t]) = 0
                                            t = t + 1
                                            continue 
                                        uint8(schemas[t].field_0) = 0
                                        t = t + 4
                                        continue 
                            else:
                                _3113 = mem[_2093]
                                u = 0
                                s = 0
                                while s < _3113:
                                    require s < mem[_2093]
                                    mem[0] = mem[_2093 + (32 * s) + 32]
                                    mem[32] = 1
                                    if sub_81638e9b[mem[0]] <= 0:
                                        _3113 = mem[_2093]
                                        u = sub_81638e9b[mem[0]]
                                        s = s + 1
                                        continue 
                                    if sub_81638e9b[mem[0]] == stor2.length:
                                        _3113 = mem[_2093]
                                        u = sub_81638e9b[mem[0]]
                                        s = s + 1
                                        continue 
                                    require s < mem[_2093]
                                    _3344 = mem[_2093 + (32 * s) + 32]
                                    mem[_2093 + 64] = 1
                                    mem[_2093 + 96] = _3344
                                    emit code.data[5684 len 32]: 1, _3344
                                    stor2.length--
                                    if not stor2.length <= stor2.length - 1:
                                        mem[0] = 2
                                        s = sha3(mem[0]) + (4 * stor2.length - 1)
                                        while sha3(2) + (4 * stor2.length) > s:
                                            address(stor[s]) = 0
                                            sub_81638e9b[s] = 0
                                            stor2[s] = 0
                                            mem[0] = s + 2
                                            t = sha3(t + 2)
                                            while sha3(t + 2) + stor2[t] > t:
                                                uint256(stor[t]) = 0
                                                _3113 = mem[_2093]
                                                t = t + 1
                                                continue 
                                            uint8(schemas[t].field_0) = 0
                                            _3113 = mem[_2093]
                                            t = t + 4
                                            continue 
                                    _3113 = mem[_2093]
                                    s = _2093
                                    t = _1053
                                    t = _1050
                                    idx = idx + 1
                                    t = t + uint8(_1050)
                                    continue 
                                mem[64] = _2093 + 192
                                mem[_2093 + 64] = msg.sender
                                mem[_2093 + 96] = arg1
                                mem[_2093 + 128] = _1053
                                mem[_2093 + 160] = 1
                                require stor2.length < stor2.length
                                mem[0] = 2
                                uint256(stor5640[stor2.length].field_0) = Mask(96, 0, stor5640[stor2.length].field_160)
                                stor5640[stor2.length] = arg1
                                _3218 = mem[_1053]
                                stor5640[stor2.length] = mem[_1053]
                                mem[0] = (4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c
                                if not _3218:
                                    s = sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c)
                                    while sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c) + stor5640[stor2.length] > s:
                                        uint256(stor[s]) = 0
                                        s = s + 1
                                        continue 
                                    stor5640[stor2.length] = 1
                                    _4573 = mem[_2093]
                                    s = 0
                                    while s < _4573:
                                        require s < mem[_2093]
                                        mem[0] = mem[(32 * s) + _2093 + 32]
                                        mem[32] = 1
                                        if not sub_81638e9b[mem[0]]:
                                            require s < mem[_2093]
                                            mem[0] = mem[_2093 + (32 * s) + 32]
                                            sub_81638e9b[mem[_2093 + (32 * s) + 32]] = stor2.length
                                            require s < mem[_2093]
                                            _4756 = mem[(32 * s) + _2093 + 32]
                                            mem[_2093 + 192] = stor2.length
                                            emit 0xc8f96bb0: stor2.length, _4756, msg.sender
                                        _4573 = mem[_2093]
                                        s = s + 1
                                        continue 
                                else:
                                    u = sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c)
                                    s = _1053 + 32
                                    while _1053 + (32 * _3218) + 32 > s:
                                        uint256(stor[u]) = mem[s]
                                        u = u + 1
                                        s = s + 32
                                        continue 
                                    s = sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c) + (Mask(251, 0, (32 * _3218) + 31) >> 5)
                                    while sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c) + stor5640[stor2.length] > s:
                                        uint256(stor[s]) = 0
                                        s = s + 1
                                        continue 
                                    stor5640[stor2.length] = 1
                                    _4971 = mem[_2093]
                                    s = 0
                                    while s < _4971:
                                        require s < mem[_2093]
                                        mem[0] = mem[(32 * s) + _2093 + 32]
                                        mem[32] = 1
                                        if not sub_81638e9b[mem[0]]:
                                            require s < mem[_2093]
                                            mem[0] = mem[_2093 + (32 * s) + 32]
                                            sub_81638e9b[mem[_2093 + (32 * s) + 32]] = stor2.length
                                            require s < mem[_2093]
                                            _5162 = mem[(32 * s) + _2093 + 32]
                                            mem[_2093 + 192] = stor2.length
                                            emit 0xc8f96bb0: stor2.length, _5162, msg.sender
                                        _4971 = mem[_2093]
                                        s = s + 1
                                        continue 
            else:
                mem[0] = 2
                s = sha3(mem[0]) + (4 * stor2.length + 1)
                while sha3(2) + (4 * stor2.length) > s:
                    address(stor[s]) = 0
                    sub_81638e9b[s] = 0
                    stor2[s] = 0
                    mem[0] = s + 2
                    t = sha3(t + 2)
                    while sha3(t + 2) + stor2[t] > t:
                        uint256(stor[t]) = 0
                        t = t + 1
                        continue 
                    uint8(schemas[t].field_0) = 0
                    t = t + 4
                    continue 
                if arg1 > schemas.length:
                    require 0 < mem[_2093]
                    mem[_2093 + 64] = 4
                    mem[_2093 + 96] = mem[_2093 + 32]
                    emit code.data[5684 len 32]: 4, mem[_2093 + 32]
                    stor2.length--
                    if not stor2.length <= stor2.length - 1:
                        mem[0] = 2
                        s = sha3(mem[0]) + (4 * stor2.length - 1)
                        while sha3(2) + (4 * stor2.length) > s:
                            address(stor[s]) = 0
                            sub_81638e9b[s] = 0
                            stor2[s] = 0
                            mem[0] = s + 2
                            t = sha3(t + 2)
                            while sha3(t + 2) + stor2[t] > t:
                                uint256(stor[t]) = 0
                                t = t + 1
                                continue 
                            uint8(schemas[t].field_0) = 0
                            t = t + 4
                            continue 
                else:
                    if 0 == mem[_2093]:
                        mem[_2093 + 64] = 5
                        mem[_2093 + 96] = 0
                        emit code.data[5684 len 32]: 5, 0
                        stor2.length--
                        if not stor2.length <= stor2.length - 1:
                            mem[0] = 2
                            s = sha3(mem[0]) + (4 * stor2.length - 1)
                            while sha3(2) + (4 * stor2.length) > s:
                                address(stor[s]) = 0
                                sub_81638e9b[s] = 0
                                stor2[s] = 0
                                mem[0] = s + 2
                                t = sha3(t + 2)
                                while sha3(t + 2) + stor2[t] > t:
                                    uint256(stor[t]) = 0
                                    t = t + 1
                                    continue 
                                uint8(schemas[t].field_0) = 0
                                t = t + 4
                                continue 
                    else:
                        if 0 == mem[_1053]:
                            mem[_2093 + 64] = 6
                            mem[_2093 + 96] = 0
                            emit code.data[5684 len 32]: 6, 0
                            stor2.length--
                            if not stor2.length <= stor2.length - 1:
                                mem[0] = 2
                                s = sha3(mem[0]) + (4 * stor2.length - 1)
                                while sha3(2) + (4 * stor2.length) > s:
                                    address(stor[s]) = 0
                                    sub_81638e9b[s] = 0
                                    stor2[s] = 0
                                    mem[0] = s + 2
                                    t = sha3(t + 2)
                                    while sha3(t + 2) + stor2[t] > t:
                                        uint256(stor[t]) = 0
                                        t = t + 1
                                        continue 
                                    uint8(schemas[t].field_0) = 0
                                    t = t + 4
                                    continue 
                        else:
                            require stor2.length < stor2.length
                            mem[0] = 2
                            if not address(stor5640[stor2.length].field_0):
                                _3988 = mem[_2093]
                                u = 0
                                s = 0
                                while s < _3988:
                                    require s < mem[_2093]
                                    mem[0] = mem[_2093 + (32 * s) + 32]
                                    mem[32] = 1
                                    if sub_81638e9b[mem[0]] <= 0:
                                        _3988 = mem[_2093]
                                        u = sub_81638e9b[mem[0]]
                                        s = s + 1
                                        continue 
                                    if sub_81638e9b[mem[0]] == stor2.length:
                                        _3988 = mem[_2093]
                                        u = sub_81638e9b[mem[0]]
                                        s = s + 1
                                        continue 
                                    require s < mem[_2093]
                                    _4240 = mem[_2093 + (32 * s) + 32]
                                    mem[_2093 + 64] = 1
                                    mem[_2093 + 96] = _4240
                                    emit code.data[5684 len 32]: 1, _4240
                                    stor2.length--
                                    if not stor2.length <= stor2.length - 1:
                                        mem[0] = 2
                                        s = sha3(mem[0]) + (4 * stor2.length - 1)
                                        while sha3(2) + (4 * stor2.length) > s:
                                            address(stor[s]) = 0
                                            sub_81638e9b[s] = 0
                                            stor2[s] = 0
                                            mem[0] = s + 2
                                            t = sha3(t + 2)
                                            while sha3(t + 2) + stor2[t] > t:
                                                uint256(stor[t]) = 0
                                                _3988 = mem[_2093]
                                                t = t + 1
                                                continue 
                                            uint8(schemas[t].field_0) = 0
                                            _3988 = mem[_2093]
                                            t = t + 4
                                            continue 
                                    _3988 = mem[_2093]
                                    s = _2093
                                    t = _1053
                                    t = _1050
                                    idx = idx + 1
                                    t = t + uint8(_1050)
                                    continue 
                                mem[64] = _2093 + 192
                                mem[_2093 + 64] = msg.sender
                                mem[_2093 + 96] = arg1
                                mem[_2093 + 128] = _1053
                                mem[_2093 + 160] = 1
                                require stor2.length < stor2.length
                                mem[0] = 2
                                uint256(stor5640[stor2.length].field_0) = Mask(96, 0, stor5640[stor2.length].field_160)
                                stor5640[stor2.length] = arg1
                                _4105 = mem[_1053]
                                stor5640[stor2.length] = mem[_1053]
                                mem[0] = (4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c
                                if not _4105:
                                    s = sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c)
                                    while sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c) + stor5640[stor2.length] > s:
                                        uint256(stor[s]) = 0
                                        s = s + 1
                                        continue 
                                    stor5640[stor2.length] = 1
                                    _4972 = mem[_2093]
                                    s = 0
                                    while s < _4972:
                                        require s < mem[_2093]
                                        mem[0] = mem[(32 * s) + _2093 + 32]
                                        mem[32] = 1
                                        if not sub_81638e9b[mem[0]]:
                                            require s < mem[_2093]
                                            mem[0] = mem[_2093 + (32 * s) + 32]
                                            sub_81638e9b[mem[_2093 + (32 * s) + 32]] = stor2.length
                                            require s < mem[_2093]
                                            _5165 = mem[(32 * s) + _2093 + 32]
                                            mem[_2093 + 192] = stor2.length
                                            emit 0xc8f96bb0: stor2.length, _5165, msg.sender
                                        _4972 = mem[_2093]
                                        s = s + 1
                                        continue 
                                else:
                                    u = sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c)
                                    s = _1053 + 32
                                    while _1053 + (32 * _4105) + 32 > s:
                                        uint256(stor[u]) = mem[s]
                                        u = u + 1
                                        s = s + 32
                                        continue 
                                    s = sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c) + (Mask(251, 0, (32 * _4105) + 31) >> 5)
                                    while sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c) + stor5640[stor2.length] > s:
                                        uint256(stor[s]) = 0
                                        s = s + 1
                                        continue 
                                    stor5640[stor2.length] = 1
                                    _5236 = mem[_2093]
                                    s = 0
                                    while s < _5236:
                                        require s < mem[_2093]
                                        mem[0] = mem[(32 * s) + _2093 + 32]
                                        mem[32] = 1
                                        if not sub_81638e9b[mem[0]]:
                                            require s < mem[_2093]
                                            mem[0] = mem[_2093 + (32 * s) + 32]
                                            sub_81638e9b[mem[_2093 + (32 * s) + 32]] = stor2.length
                                            require s < mem[_2093]
                                            _5313 = mem[(32 * s) + _2093 + 32]
                                            mem[_2093 + 192] = stor2.length
                                            emit 0xc8f96bb0: stor2.length, _5313, msg.sender
                                        _5236 = mem[_2093]
                                        s = s + 1
                                        continue 
                            else:
                                require stor2.length < stor2.length
                                mem[0] = 2
                                if address(stor5640[stor2.length].field_0) != msg.sender:
                                    mem[0] = 2
                                    require 0 < mem[_2093]
                                    mem[_2093 + 64] = 3
                                    mem[_2093 + 96] = mem[_2093 + 32]
                                    emit code.data[5684 len 32]: 3, mem[_2093 + 32]
                                    stor2.length--
                                    if not stor2.length <= stor2.length - 1:
                                        mem[0] = 2
                                        s = sha3(mem[0]) + (4 * stor2.length - 1)
                                        while sha3(2) + (4 * stor2.length) > s:
                                            address(stor[s]) = 0
                                            sub_81638e9b[s] = 0
                                            stor2[s] = 0
                                            mem[0] = s + 2
                                            t = sha3(t + 2)
                                            while sha3(t + 2) + stor2[t] > t:
                                                uint256(stor[t]) = 0
                                                t = t + 1
                                                continue 
                                            uint8(schemas[t].field_0) = 0
                                            t = t + 4
                                            continue 
                                else:
                                    _3989 = mem[_2093]
                                    u = 0
                                    s = 0
                                    while s < _3989:
                                        require s < mem[_2093]
                                        mem[0] = mem[_2093 + (32 * s) + 32]
                                        mem[32] = 1
                                        if sub_81638e9b[mem[0]] <= 0:
                                            _3989 = mem[_2093]
                                            u = sub_81638e9b[mem[0]]
                                            s = s + 1
                                            continue 
                                        if sub_81638e9b[mem[0]] == stor2.length:
                                            _3989 = mem[_2093]
                                            u = sub_81638e9b[mem[0]]
                                            s = s + 1
                                            continue 
                                        require s < mem[_2093]
                                        _4244 = mem[_2093 + (32 * s) + 32]
                                        mem[_2093 + 64] = 1
                                        mem[_2093 + 96] = _4244
                                        emit code.data[5684 len 32]: 1, _4244
                                        stor2.length--
                                        if not stor2.length <= stor2.length - 1:
                                            mem[0] = 2
                                            s = sha3(mem[0]) + (4 * stor2.length - 1)
                                            while sha3(2) + (4 * stor2.length) > s:
                                                address(stor[s]) = 0
                                                sub_81638e9b[s] = 0
                                                stor2[s] = 0
                                                mem[0] = s + 2
                                                t = sha3(t + 2)
                                                while sha3(t + 2) + stor2[t] > t:
                                                    uint256(stor[t]) = 0
                                                    _3989 = mem[_2093]
                                                    t = t + 1
                                                    continue 
                                                uint8(schemas[t].field_0) = 0
                                                _3989 = mem[_2093]
                                                t = t + 4
                                                continue 
                                        _3989 = mem[_2093]
                                        s = _2093
                                        t = _1053
                                        t = _1050
                                        idx = idx + 1
                                        t = t + uint8(_1050)
                                        continue 
                                    mem[64] = _2093 + 192
                                    mem[_2093 + 64] = msg.sender
                                    mem[_2093 + 96] = arg1
                                    mem[_2093 + 128] = _1053
                                    mem[_2093 + 160] = 1
                                    require stor2.length < stor2.length
                                    mem[0] = 2
                                    uint256(stor5640[stor2.length].field_0) = Mask(96, 0, stor5640[stor2.length].field_160)
                                    stor5640[stor2.length] = arg1
                                    _4114 = mem[_1053]
                                    stor5640[stor2.length] = mem[_1053]
                                    mem[0] = (4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c
                                    if not _4114:
                                        s = sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c)
                                        while sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c) + stor5640[stor2.length] > s:
                                            uint256(stor[s]) = 0
                                            s = s + 1
                                            continue 
                                        stor5640[stor2.length] = 1
                                        _4973 = mem[_2093]
                                        s = 0
                                        while s < _4973:
                                            require s < mem[_2093]
                                            mem[0] = mem[(32 * s) + _2093 + 32]
                                            mem[32] = 1
                                            if not sub_81638e9b[mem[0]]:
                                                require s < mem[_2093]
                                                mem[0] = mem[_2093 + (32 * s) + 32]
                                                sub_81638e9b[mem[_2093 + (32 * s) + 32]] = stor2.length
                                                require s < mem[_2093]
                                                _5170 = mem[(32 * s) + _2093 + 32]
                                                mem[_2093 + 192] = stor2.length
                                                emit 0xc8f96bb0: stor2.length, _5170, msg.sender
                                            _4973 = mem[_2093]
                                            s = s + 1
                                            continue 
                                    else:
                                        u = sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c)
                                        s = _1053 + 32
                                        while _1053 + (32 * _4114) + 32 > s:
                                            uint256(stor[u]) = mem[s]
                                            u = u + 1
                                            s = s + 32
                                            continue 
                                        s = sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c) + (Mask(251, 0, (32 * _4114) + 31) >> 5)
                                        while sha3((4 * stor2.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5c) + stor5640[stor2.length] > s:
                                            uint256(stor[s]) = 0
                                            s = s + 1
                                            continue 
                                        stor5640[stor2.length] = 1
                                        _5237 = mem[_2093]
                                        s = 0
                                        while s < _5237:
                                            require s < mem[_2093]
                                            mem[0] = mem[(32 * s) + _2093 + 32]
                                            mem[32] = 1
                                            if not sub_81638e9b[mem[0]]:
                                                require s < mem[_2093]
                                                mem[0] = mem[_2093 + (32 * s) + 32]
                                                sub_81638e9b[mem[_2093 + (32 * s) + 32]] = stor2.length
                                                require s < mem[_2093]
                                                _5316 = mem[(32 * s) + _2093 + 32]
                                                mem[_2093 + 192] = stor2.length
                                                emit 0xc8f96bb0: stor2.length, _5316, msg.sender
                                            _5237 = mem[_2093]
                                            s = s + 1
                                            continue 
            s = _2093
            t = _1053
            t = _1050
            idx = idx + 1
            t = t + uint8(_1050)
            continue 
        if t == mem[(32 * arg2.length) + 128]:
            return 1
        return 0
    else:
        return 0
}



}
