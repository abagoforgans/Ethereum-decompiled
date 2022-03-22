contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    if msg.sender == msg.sender:
        stor1 = code.data[8721 len 32]
        emit 0x3dc8b87d: stor1
    return code.data[156 len 8565]
}



// =====================  Runtime code  =====================


address stor0;
uint256 stor0;
uint256 sub_dc0c64b3;
array of struct sub_12e23197;
mapping of uint256 stor3;

function sub_12e23197(?) payable {
    require arg1 < sub_12e23197.length
    mem[256] = uint256(sub_12e23197[arg1].field_0)
    idx = 256
    s = 0
    while sub_12e23197[arg1].length + 256 > idx + 32:
        mem[idx + 32] = uint256(sub_12e23197[(4 * arg1) + s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=sub_12e23197[arg1].length, data=mem[256 len sub_12e23197[arg1].length + (floor32(sub_12e23197[arg1].length - 1) + -sub_12e23197[arg1].length + 32 % 32)]), 
           address(sub_12e23197[arg1].field_256),
           uint256(sub_12e23197[arg1].field_512),
           uint256(sub_12e23197[arg1].field_768)
}

function numberOfThrones() payable {
    return sub_12e23197.length
}

function sub_dc0c64b3(?) payable {
    return sub_dc0c64b3
}

function _fallback() payable {
    revert 
}

function setThroneCreationPrice(uint256 arg1) payable {
    if msg.sender == address(stor0):
        sub_dc0c64b3 = arg1
        emit 0x3dc8b87d: arg1
}

function switchDeity(address arg1) payable {
    if address(stor0) == msg.sender:
        uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
        emit 0x717ad3d2: arg1
}

function sweepDeityCommission(uint256 arg1) payable {
    if address(stor0) == msg.sender:
        require gas_remaining >= 10000
        call address(stor0) with:
           value arg1 wei
             gas gas_remaining - 10000 wei
        require ext_call.success
        emit 0xd31e5c61: address(stor0), arg1
}

function isSafePunctuation(bytes1 arg1) payable {
    if arg1 != '-':
        if arg1 != '_':
            if arg1 != '.':
                if arg1 != ''':
                    if arg1 != '!':
                        if arg1 != '(':
                            if arg1 != ')':
                                return 0
    return 1
}

function validateProposedThroneConfig(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    if arg1 >= 10^12:
        if arg1 <= 1000000 * 10^18:
            if arg2 >= 10:
                if arg2 <= 9000:
                    if arg3 >= 10:
                        if arg3 <= 100:
                            if arg4 >= 300:
                                if arg4 <= 8751240 * 24 * 3600:
                                    return 1
                                else:
                                    return 0
                            else:
                                return 0
                        else:
                            return 0
                    else:
                        return 0
                else:
                    return 0
            else:
                return 0
        else:
            return 0
    else:
        return 0
}

function findThroneCalled(bytes arg1) payable {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    require arg1.length != 0
    require arg1.length <= 30
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if Mask(8, 248, mem[idx + 128]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
            s = Mask(8, 248, mem[idx + 128])
            idx = idx + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) == '-':
            s = Mask(8, 248, mem[idx + 128])
            idx = idx + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) == '_':
            s = Mask(8, 248, mem[idx + 128])
            idx = idx + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) == '.':
            s = Mask(8, 248, mem[idx + 128])
            idx = idx + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) == ''':
            s = Mask(8, 248, mem[idx + 128])
            idx = idx + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) == '!':
            s = Mask(8, 248, mem[idx + 128])
            idx = idx + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) == '(':
            s = Mask(8, 248, mem[idx + 128])
            idx = idx + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) == ')':
            s = Mask(8, 248, mem[idx + 128])
            idx = idx + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) >= '0':
            if Mask(8, 248, mem[idx + 128]) <= '9':
                s = Mask(8, 248, mem[idx + 128])
                idx = idx + 1
                continue 
        require Mask(8, 248, mem[idx + 128]) >= 'A'
        if Mask(8, 248, mem[idx + 128]) <= 'Z':
            s = Mask(8, 248, mem[idx + 128])
            idx = idx + 1
            continue 
        require Mask(8, 248, mem[idx + 128]) >= 0x6100000000000000000000000000000000000000000000000000000000000000
        require Mask(8, 248, mem[idx + 128]) <= 0x7a00000000000000000000000000000000000000000000000000000000000000
        s = Mask(8, 248, mem[idx + 128])
        idx = idx + 1
        continue 
    require arg1.length <= 30
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if Mask(8, 248, mem[idx + 128]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
            s = Mask(8, 248, mem[idx + 128])
            idx = idx + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) == '-':
            s = Mask(8, 248, mem[idx + 128])
            idx = idx + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) == '_':
            s = Mask(8, 248, mem[idx + 128])
            idx = idx + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) == '.':
            s = Mask(8, 248, mem[idx + 128])
            idx = idx + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) == ''':
            s = Mask(8, 248, mem[idx + 128])
            idx = idx + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) == '!':
            s = Mask(8, 248, mem[idx + 128])
            idx = idx + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) == '(':
            s = Mask(8, 248, mem[idx + 128])
            idx = idx + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) == ')':
            s = Mask(8, 248, mem[idx + 128])
            idx = idx + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) < 0x6100000000000000000000000000000000000000000000000000000000000000:
            s = Mask(8, 248, mem[idx + 128])
            idx = idx + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) > 0x7a00000000000000000000000000000000000000000000000000000000000000:
            s = Mask(8, 248, mem[idx + 128])
            idx = idx + 1
            continue 
        s = mem[idx + 128 len 1] - 32 << 248
        idx = idx + 1
        continue 
    return (stor3[0] - 1)
}

function validateProposedThroneName(bytes arg1) payable {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    if arg1.length != 0:
        if arg1.length <= 30:
            s = 0
            idx = 0
            while idx < arg1.length:
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
                    s = Mask(8, 248, mem[idx + 128])
                    idx = idx + 1
                    continue 
                if Mask(8, 248, mem[idx + 128]) == '-':
                    s = Mask(8, 248, mem[idx + 128])
                    idx = idx + 1
                    continue 
                if Mask(8, 248, mem[idx + 128]) == '_':
                    s = Mask(8, 248, mem[idx + 128])
                    idx = idx + 1
                    continue 
                if Mask(8, 248, mem[idx + 128]) == '.':
                    s = Mask(8, 248, mem[idx + 128])
                    idx = idx + 1
                    continue 
                if Mask(8, 248, mem[idx + 128]) == ''':
                    s = Mask(8, 248, mem[idx + 128])
                    idx = idx + 1
                    continue 
                if Mask(8, 248, mem[idx + 128]) == '!':
                    s = Mask(8, 248, mem[idx + 128])
                    idx = idx + 1
                    continue 
                if Mask(8, 248, mem[idx + 128]) == '(':
                    s = Mask(8, 248, mem[idx + 128])
                    idx = idx + 1
                    continue 
                if Mask(8, 248, mem[idx + 128]) == ')':
                    s = Mask(8, 248, mem[idx + 128])
                    idx = idx + 1
                    continue 
                if Mask(8, 248, mem[idx + 128]) >= '0':
                    if Mask(8, 248, mem[idx + 128]) <= '9':
                        s = Mask(8, 248, mem[idx + 128])
                        idx = idx + 1
                        continue 
                if Mask(8, 248, mem[idx + 128]) >= 'A':
                    if Mask(8, 248, mem[idx + 128]) <= 'Z':
                        s = Mask(8, 248, mem[idx + 128])
                        idx = idx + 1
                        continue 
                    if Mask(8, 248, mem[idx + 128]) >= 0x6100000000000000000000000000000000000000000000000000000000000000:
                        if Mask(8, 248, mem[idx + 128]) <= 0x7a00000000000000000000000000000000000000000000000000000000000000:
                            s = Mask(8, 248, mem[idx + 128])
                            idx = idx + 1
                            continue 
                        else:
                            return 0
                    else:
                        return 0
                else:
                    return 0
            require arg1.length <= 30
            s = 0
            idx = 0
            while idx < arg1.length:
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
                    s = Mask(8, 248, mem[idx + 128])
                    idx = idx + 1
                    continue 
                if Mask(8, 248, mem[idx + 128]) == '-':
                    s = Mask(8, 248, mem[idx + 128])
                    idx = idx + 1
                    continue 
                if Mask(8, 248, mem[idx + 128]) == '_':
                    s = Mask(8, 248, mem[idx + 128])
                    idx = idx + 1
                    continue 
                if Mask(8, 248, mem[idx + 128]) == '.':
                    s = Mask(8, 248, mem[idx + 128])
                    idx = idx + 1
                    continue 
                if Mask(8, 248, mem[idx + 128]) == ''':
                    s = Mask(8, 248, mem[idx + 128])
                    idx = idx + 1
                    continue 
                if Mask(8, 248, mem[idx + 128]) == '!':
                    s = Mask(8, 248, mem[idx + 128])
                    idx = idx + 1
                    continue 
                if Mask(8, 248, mem[idx + 128]) == '(':
                    s = Mask(8, 248, mem[idx + 128])
                    idx = idx + 1
                    continue 
                if Mask(8, 248, mem[idx + 128]) == ')':
                    s = Mask(8, 248, mem[idx + 128])
                    idx = idx + 1
                    continue 
                if Mask(8, 248, mem[idx + 128]) < 0x6100000000000000000000000000000000000000000000000000000000000000:
                    s = Mask(8, 248, mem[idx + 128])
                    idx = idx + 1
                    continue 
                if Mask(8, 248, mem[idx + 128]) > 0x7a00000000000000000000000000000000000000000000000000000000000000:
                    s = Mask(8, 248, mem[idx + 128])
                    idx = idx + 1
                    continue 
                s = mem[idx + 128 len 1] - 32 << 248
                idx = idx + 1
                continue 
            if stor3[0] - 1 == -1:
                return 1
            return 0
        else:
            return 0
    else:
        return 0
}

function registerExistingThrone(bytes arg1, address arg2, uint256 arg3, uint256 arg4) payable {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    if address(stor0) != msg.sender:
        return 0
    require arg1.length != 0
    require arg1.length <= 30
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if Mask(8, 248, mem[idx + 128]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
            s = Mask(8, 248, mem[idx + 128])
            idx = idx + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) == '-':
            s = Mask(8, 248, mem[idx + 128])
            idx = idx + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) == '_':
            s = Mask(8, 248, mem[idx + 128])
            idx = idx + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) == '.':
            s = Mask(8, 248, mem[idx + 128])
            idx = idx + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) == ''':
            s = Mask(8, 248, mem[idx + 128])
            idx = idx + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) == '!':
            s = Mask(8, 248, mem[idx + 128])
            idx = idx + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) == '(':
            s = Mask(8, 248, mem[idx + 128])
            idx = idx + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) == ')':
            s = Mask(8, 248, mem[idx + 128])
            idx = idx + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) >= '0':
            if Mask(8, 248, mem[idx + 128]) <= '9':
                s = Mask(8, 248, mem[idx + 128])
                idx = idx + 1
                continue 
        require Mask(8, 248, mem[idx + 128]) >= 'A'
        if Mask(8, 248, mem[idx + 128]) <= 'Z':
            s = Mask(8, 248, mem[idx + 128])
            idx = idx + 1
            continue 
        require Mask(8, 248, mem[idx + 128]) >= 0x6100000000000000000000000000000000000000000000000000000000000000
        require Mask(8, 248, mem[idx + 128]) <= 0x7a00000000000000000000000000000000000000000000000000000000000000
        s = Mask(8, 248, mem[idx + 128])
        idx = idx + 1
        continue 
    require arg1.length <= 30
    t = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if Mask(8, 248, mem[idx + 128]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
            t = Mask(8, 248, mem[idx + 128])
            idx = idx + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) == '-':
            t = Mask(8, 248, mem[idx + 128])
            idx = idx + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) == '_':
            t = Mask(8, 248, mem[idx + 128])
            idx = idx + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) == '.':
            t = Mask(8, 248, mem[idx + 128])
            idx = idx + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) == ''':
            t = Mask(8, 248, mem[idx + 128])
            idx = idx + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) == '!':
            t = Mask(8, 248, mem[idx + 128])
            idx = idx + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) == '(':
            t = Mask(8, 248, mem[idx + 128])
            idx = idx + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) == ')':
            t = Mask(8, 248, mem[idx + 128])
            idx = idx + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) < 0x6100000000000000000000000000000000000000000000000000000000000000:
            t = Mask(8, 248, mem[idx + 128])
            idx = idx + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) > 0x7a00000000000000000000000000000000000000000000000000000000000000:
            t = Mask(8, 248, mem[idx + 128])
            idx = idx + 1
            continue 
        t = mem[idx + 128 len 1] - 32 << 248
        idx = idx + 1
        continue 
    require stor3[0] - 1 == -1
    sub_12e23197.length++
    if not sub_12e23197.length <= sub_12e23197.length + 1:
        mem[0] = 2
        idx = 4 * sub_12e23197.length + 1
        while sha3(2) + (4 * sub_12e23197.length) > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])]) = 0
            if 31 < stor[idx + sha3(mem[0])].length:
                mem[0] = idx + sha3(mem[0])
                t = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > t:
                    uint256(stor[t]) = 0
                    t = t + 1
                    continue 
            address(stor[idx + sha3(mem[0]) + 1]) = 0
            uint256(stor[idx + sha3(mem[0]) + 2]) = 0
            uint256(stor[idx + sha3(mem[0]) + 3]) = 0
            idx = idx + 1
            continue 
    uint256(sub_12e23197[sub_12e23197.length][].field_0) = Array(len=arg1.length, data=arg1[all])
    uint256(sub_12e23197[sub_12e23197.length].field_256) = arg2 or Mask(96, 160, uint256(sub_12e23197[sub_12e23197.length].field_256))
    uint256(sub_12e23197[sub_12e23197.length].field_512) = arg3
    uint256(sub_12e23197[sub_12e23197.length].field_768) = arg4
    stor3[0] = sub_12e23197.length
    emit 0x53f57274: (sub_12e23197.length - 1)
    return (sub_12e23197.length - 1)
}

function createThrone(bytes arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    require msg.value >= sub_dc0c64b3
    require msg.value <= sub_dc0c64b3
    require arg1.length != 0
    require arg1.length <= 30
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if Mask(8, 248, mem[idx + 128]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
            s = Mask(8, 248, mem[idx + 128])
            idx = idx + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) == '-':
            s = Mask(8, 248, mem[idx + 128])
            idx = idx + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) == '_':
            s = Mask(8, 248, mem[idx + 128])
            idx = idx + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) == '.':
            s = Mask(8, 248, mem[idx + 128])
            idx = idx + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) == ''':
            s = Mask(8, 248, mem[idx + 128])
            idx = idx + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) == '!':
            s = Mask(8, 248, mem[idx + 128])
            idx = idx + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) == '(':
            s = Mask(8, 248, mem[idx + 128])
            idx = idx + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) == ')':
            s = Mask(8, 248, mem[idx + 128])
            idx = idx + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) >= '0':
            if Mask(8, 248, mem[idx + 128]) <= '9':
                s = Mask(8, 248, mem[idx + 128])
                idx = idx + 1
                continue 
        require Mask(8, 248, mem[idx + 128]) >= 'A'
        if Mask(8, 248, mem[idx + 128]) <= 'Z':
            s = Mask(8, 248, mem[idx + 128])
            idx = idx + 1
            continue 
        require Mask(8, 248, mem[idx + 128]) >= 0x6100000000000000000000000000000000000000000000000000000000000000
        require Mask(8, 248, mem[idx + 128]) <= 0x7a00000000000000000000000000000000000000000000000000000000000000
        s = Mask(8, 248, mem[idx + 128])
        idx = idx + 1
        continue 
    require arg1.length <= 30
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if Mask(8, 248, mem[idx + 128]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
            s = Mask(8, 248, mem[idx + 128])
            idx = idx + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) == '-':
            s = Mask(8, 248, mem[idx + 128])
            idx = idx + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) == '_':
            s = Mask(8, 248, mem[idx + 128])
            idx = idx + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) == '.':
            s = Mask(8, 248, mem[idx + 128])
            idx = idx + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) == ''':
            s = Mask(8, 248, mem[idx + 128])
            idx = idx + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) == '!':
            s = Mask(8, 248, mem[idx + 128])
            idx = idx + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) == '(':
            s = Mask(8, 248, mem[idx + 128])
            idx = idx + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) == ')':
            s = Mask(8, 248, mem[idx + 128])
            idx = idx + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) < 0x6100000000000000000000000000000000000000000000000000000000000000:
            s = Mask(8, 248, mem[idx + 128])
            idx = idx + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) > 0x7a00000000000000000000000000000000000000000000000000000000000000:
            s = Mask(8, 248, mem[idx + 128])
            idx = idx + 1
            continue 
        s = mem[idx + 128 len 1] - 32 << 248
        idx = idx + 1
        continue 
    require stor3[0] - 1 == -1
    require arg2 >= 10^12
    require arg2 <= 1000000 * 10^18
    require arg3 >= 10
    require arg3 <= 9000
    require arg4 >= 10
    require arg4 <= 100
    require arg5 >= 300
    require arg5 <= 8751240 * 24 * 3600
    create contract with 0 wei
                    code: code.data[3298 len 5267], msg.sender, address(stor0), arg2, arg3, arg4, arg5, 720 * 24 * 3600, this.address
    sub_12e23197.length++
    if not sub_12e23197.length <= sub_12e23197.length + 1:
        mem[0] = 2
        idx = 4 * sub_12e23197.length + 1
        while sha3(2) + (4 * sub_12e23197.length) > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])]) = 0
            if 31 < stor[idx + sha3(mem[0])].length:
                mem[0] = idx + sha3(mem[0])
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            address(stor[idx + sha3(mem[0]) + 1]) = 0
            uint256(stor[idx + sha3(mem[0]) + 2]) = 0
            uint256(stor[idx + sha3(mem[0]) + 3]) = 0
            idx = idx + 1
            continue 
    uint256(sub_12e23197[sub_12e23197.length][].field_0) = Array(len=arg1.length, data=arg1[all])
    uint256(sub_12e23197[sub_12e23197.length].field_256) = create.new_address or Mask(96, 160, uint256(sub_12e23197[sub_12e23197.length].field_256))
    uint256(sub_12e23197[sub_12e23197.length].field_512) = msg.value
    uint256(sub_12e23197[sub_12e23197.length].field_768) = block.timestamp
    stor3[0] = sub_12e23197.length
    emit 0x53f57274: (sub_12e23197.length - 1)
    return (sub_12e23197.length - 1)
}



}
