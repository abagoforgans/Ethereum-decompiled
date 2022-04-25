contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    stor0 = msg.sender
    return code.data[158 len 6831]
}



// =====================  Runtime code  =====================


address owner;
mapping of address user;
array of struct stor3;
array of struct stor4;
array of struct stor5;
mapping of struct sub_de5c66e6;
array of struct stor7;

function owner() {
    return owner
}

function getUserAddress(uint256 arg1) {
    require msg.sender == owner
    return user[arg1]
}

function sub_de5c66e6(?) {
    return address(sub_de5c66e6[address(arg1)].field_0), sub_de5c66e6[address(arg1)].field_256
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function sub_aa6769c3(?) {
    require msg.sender == owner
    if not address(stor1[arg1].field_0):
        return 0
    if arg2 <= stor1[arg1].field_256:
        return 0
    emit 0xd824c8db: arg1, stor1[arg1].field_256, arg2
    stor1[arg1].field_256 = arg2
    return 1
}

function sub_eb6312ac(?) {
    if stor1[arg1].field_512:
        mem[160] = address(stor1[arg1][2].field_0)
        idx = 160
        s = 0
        while (32 * stor1[arg1].field_512) + 128 > idx:
            mem[idx + 32] = address(stor1[arg1][s + 2].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * stor1[arg1].field_512) + 288 len floor32(stor1[arg1].field_512)] = mem[160 len floor32(stor1[arg1].field_512)]
    return address(stor1[arg1].field_0), 
           stor1[arg1].field_256,
           Array(len=stor1[arg1].field_512, data=mem[160 len floor32(stor1[arg1].field_512)], mem[(32 * stor1[arg1].field_512) + floor32(stor1[arg1].field_512) + 288 len (32 * stor1[arg1].field_512) - floor32(stor1[arg1].field_512)])
}

function getOrder(uint256 arg1) {
    if not stor5[arg1].field_0:
        mem[(32 * stor5[arg1].field_0) + 160] = 32
        mem[(32 * stor5[arg1].field_0) + 192] = stor5[arg1].field_0
        mem[(32 * stor5[arg1].field_0) + 224 len floor32(stor5[arg1].field_0)] = mem[160 len floor32(stor5[arg1].field_0)]
        return memory
          from (32 * stor5[arg1].field_0) + 160
           len (96 * stor5[arg1].field_0) + 64
    mem[160] = address(stor5[arg1].field_0)
    idx = 160
    s = 0
    while (32 * stor5[arg1].field_0) + 128 > idx:
        mem[idx + 32] = address(stor5[arg1][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor5[arg1].field_0) + 224 len floor32(stor5[arg1].field_0)] = mem[160 len floor32(stor5[arg1].field_0)]
    return Array(len=stor5[arg1].field_0, data=mem[160 len floor32(stor5[arg1].field_0)], mem[(32 * stor5[arg1].field_0) + floor32(stor5[arg1].field_0) + 224 len (32 * stor5[arg1].field_0) - floor32(stor5[arg1].field_0)]), 
}

function sub_630608fd(?) {
    if not stor4[address(arg1)].field_0:
        mem[(32 * stor4[address(arg1)].field_0) + 160] = 32
        mem[(32 * stor4[address(arg1)].field_0) + 192] = stor4[address(arg1)].field_0
        mem[(32 * stor4[address(arg1)].field_0) + 224 len floor32(stor4[address(arg1)].field_0)] = mem[160 len floor32(stor4[address(arg1)].field_0)]
        return memory
          from (32 * stor4[address(arg1)].field_0) + 160
           len (96 * stor4[address(arg1)].field_0) + 64
    mem[160] = address(stor4[address(arg1)].field_0)
    idx = 160
    s = 0
    while (32 * stor4[address(arg1)].field_0) + 128 > idx:
        mem[idx + 32] = address(stor4[address(arg1)][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor4[address(arg1)].field_0) + 224 len floor32(stor4[address(arg1)].field_0)] = mem[160 len floor32(stor4[address(arg1)].field_0)]
    return Array(len=stor4[address(arg1)].field_0, data=mem[160 len floor32(stor4[address(arg1)].field_0)], mem[(32 * stor4[address(arg1)].field_0) + floor32(stor4[address(arg1)].field_0) + 224 len (32 * stor4[address(arg1)].field_0) - floor32(stor4[address(arg1)].field_0)]), 
}

function sub_1c23bf0c(?) {
    require msg.sender == owner
    if not stor3[address(arg1)].field_0:
        mem[(32 * stor3[address(arg1)].field_0) + 160] = 32
        mem[(32 * stor3[address(arg1)].field_0) + 192] = stor3[address(arg1)].field_0
        mem[(32 * stor3[address(arg1)].field_0) + 224 len floor32(stor3[address(arg1)].field_0)] = mem[160 len floor32(stor3[address(arg1)].field_0)]
        return memory
          from (32 * stor3[address(arg1)].field_0) + 160
           len (96 * stor3[address(arg1)].field_0) + 64
    mem[160] = stor3[address(arg1)].field_0
    idx = 160
    s = 0
    while (32 * stor3[address(arg1)].field_0) + 128 > idx:
        mem[idx + 32] = stor3[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor3[address(arg1)].field_0) + 224 len floor32(stor3[address(arg1)].field_0)] = mem[160 len floor32(stor3[address(arg1)].field_0)]
    return Array(len=stor3[address(arg1)].field_0, data=mem[160 len floor32(stor3[address(arg1)].field_0)], mem[(32 * stor3[address(arg1)].field_0) + floor32(stor3[address(arg1)].field_0) + 224 len (32 * stor3[address(arg1)].field_0) - floor32(stor3[address(arg1)].field_0)]), 
}

function sub_494673d6(?) {
    require msg.sender == owner
    if not stor3[address(msg.sender)].field_0:
        mem[(32 * stor3[address(msg.sender)].field_0) + 192] = 32
        mem[(32 * stor3[address(msg.sender)].field_0) + 224] = stor3[address(msg.sender)].field_0
        mem[(32 * stor3[address(msg.sender)].field_0) + 256 len floor32(stor3[address(msg.sender)].field_0)] = mem[192 len floor32(stor3[address(msg.sender)].field_0)]
        return memory
          from (32 * stor3[address(msg.sender)].field_0) + 192
           len (96 * stor3[address(msg.sender)].field_0) + 64
    mem[192] = stor3[address(msg.sender)].field_0
    idx = 192
    s = 0
    while (32 * stor3[address(msg.sender)].field_0) + 160 > idx:
        mem[idx + 32] = stor3[address(msg.sender)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor3[address(msg.sender)].field_0) + 256 len floor32(stor3[address(msg.sender)].field_0)] = mem[192 len floor32(stor3[address(msg.sender)].field_0)]
    return Array(len=stor3[address(msg.sender)].field_0, data=mem[192 len floor32(stor3[address(msg.sender)].field_0)], mem[(32 * stor3[address(msg.sender)].field_0) + floor32(stor3[address(msg.sender)].field_0) + 256 len (32 * stor3[address(msg.sender)].field_0) - floor32(stor3[address(msg.sender)].field_0)]), 
}

function sub_c0ad2aa3(?) {
    require msg.sender == owner
    if address(stor1[arg1].field_0):
        return 0
    if not arg4:
        return 0
    if not stor7.length:
        address(stor1[arg1].field_0) = arg2
    else:
        mem[224] = address(stor7.field_0)
        idx = 224
        s = 0
        while (32 * stor7.length) + 192 > idx:
            mem[idx + 32] = address(stor7[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        address(stor1[arg1].field_0) = uint64(arg2) << 96
    stor1[arg1].field_256 = arg4
    stor1[arg1].field_512 = stor7.length
    if not stor7.length:
        idx = 0
        while stor1[arg1].field_512 > idx:
            address(stor1[arg1][idx + 2].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 224
        while (32 * stor7.length) + 224 > idx:
            address(stor1[arg1][s + 2].field_0) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * stor7.length) + 31) >> 5
        while stor1[arg1].field_512 > idx:
            address(stor1[arg1][idx + 2].field_0) = 0
            idx = idx + 1
            continue 
    stor3[address(arg2)].field_0++
    if not stor3[address(arg2)].field_0 <= stor3[address(arg2)].field_0 + 1:
        idx = stor3[address(arg2)].field_0 + 1
        while stor3[address(arg2)].field_0 > idx:
            stor3[address(arg2)][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor3[address(arg2)][stor3[address(arg2)].field_0].field_0 = arg1
    emit 0xcf29938e: arg1, address(arg2), arg4
    if not user[arg3]:
        user[arg3] = arg2
        emit 0x27a26708: arg3, arg2
    return 1
}

function sub_0e4408d0(?) {
    mem[64] = (32 * arg2.length) + 128
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    if not address(stor1[arg1].field_0):
        return 0
    if stor1[arg1].field_256 - stor1[arg1].field_512 < arg2.length:
        return 0
    if stor5[arg5].field_0:
        return 0
    idx = 0
    while idx < arg2.length:
        require idx < mem[96]
        require not address(sub_de5c66e6[mem[(32 * idx) + 140 len 20]].field_0)
        stor4[address(arg3)].field_0++
        if not stor4[address(arg3)].field_0 > stor4[address(arg3)].field_0 + 1:
            require idx < mem[96]
            address(stor4[address(arg3)][stor4[address(arg3)].field_0].field_0) = mem[(32 * idx) + 140 len 20]
            stor5[arg5].field_0++
            if not stor5[arg5].field_0 > stor5[arg5].field_0 + 1:
                require idx < mem[96]
                address(stor5[arg5][stor5[arg5].field_0].field_0) = mem[(32 * idx) + 140 len 20]
                mem[32] = 1
                stor1[arg1].field_512++
                if not stor1[arg1].field_512 > stor1[arg1].field_512 + 1:
                    mem[0] = sha3(arg1, 1) + 2
                    require idx < mem[96]
                    address(stor[stor1[arg1].field_512 + ('array', 2, ('map', ('param', 'arg1'), ('name', 'stor1', 1)))].field_0) = mem[(32 * idx) + 140 len 20]
                    _180 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_180] = arg3
                    mem[_180 + 32] = arg1
                else:
                    s = sha3(sha3(arg1, 1) + 2) + stor1[arg1].field_512 + 1
                    while sha3(sha3(arg1, 1) + 2) + stor1[arg1].field_512 > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                    mem[0] = sha3(arg1, 1) + 2
                    require idx < mem[96]
                    address(stor[stor1[arg1].field_512 + ('array', 2, ('map', ('param', 'arg1'), ('name', 'stor1', 1)))].field_0) = mem[(32 * idx) + 140 len 20]
                    _280 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_280] = arg3
                    mem[_280 + 32] = arg1
            else:
                s = sha3(sha3(arg5, 5)) + stor5[arg5].field_0 + 1
                while sha3(sha3(arg5, 5)) + stor5[arg5].field_0 > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                require idx < mem[96]
                address(stor5[arg5][stor5[arg5].field_0].field_0) = mem[(32 * idx) + 140 len 20]
                mem[32] = 1
                stor1[arg1].field_512++
                if not stor1[arg1].field_512 > stor1[arg1].field_512 + 1:
                    mem[0] = sha3(arg1, 1) + 2
                    require idx < mem[96]
                    address(stor[stor1[arg1].field_512 + ('array', 2, ('map', ('param', 'arg1'), ('name', 'stor1', 1)))].field_0) = mem[(32 * idx) + 140 len 20]
                    _297 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_297] = arg3
                    mem[_297 + 32] = arg1
                else:
                    s = sha3(sha3(arg1, 1) + 2) + stor1[arg1].field_512 + 1
                    while sha3(sha3(arg1, 1) + 2) + stor1[arg1].field_512 > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                    mem[0] = sha3(arg1, 1) + 2
                    require idx < mem[96]
                    address(stor[stor1[arg1].field_512 + ('array', 2, ('map', ('param', 'arg1'), ('name', 'stor1', 1)))].field_0) = mem[(32 * idx) + 140 len 20]
                    _363 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_363] = arg3
                    mem[_363 + 32] = arg1
        else:
            s = sha3(sha3(address(arg3), 4)) + stor4[address(arg3)].field_0 + 1
            while sha3(sha3(address(arg3), 4)) + stor4[address(arg3)].field_0 > s:
                stor[s] = 0
                s = s + 1
                continue 
            require idx < mem[96]
            address(stor4[address(arg3)][stor4[address(arg3)].field_0].field_0) = mem[(32 * idx) + 140 len 20]
            stor5[arg5].field_0++
            if not stor5[arg5].field_0 > stor5[arg5].field_0 + 1:
                require idx < mem[96]
                address(stor5[arg5][stor5[arg5].field_0].field_0) = mem[(32 * idx) + 140 len 20]
                mem[32] = 1
                stor1[arg1].field_512++
                if not stor1[arg1].field_512 > stor1[arg1].field_512 + 1:
                    mem[0] = sha3(arg1, 1) + 2
                    require idx < mem[96]
                    address(stor[stor1[arg1].field_512 + ('array', 2, ('map', ('param', 'arg1'), ('name', 'stor1', 1)))].field_0) = mem[(32 * idx) + 140 len 20]
                    _309 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_309] = arg3
                    mem[_309 + 32] = arg1
                else:
                    s = sha3(sha3(arg1, 1) + 2) + stor1[arg1].field_512 + 1
                    while sha3(sha3(arg1, 1) + 2) + stor1[arg1].field_512 > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                    mem[0] = sha3(arg1, 1) + 2
                    require idx < mem[96]
                    address(stor[stor1[arg1].field_512 + ('array', 2, ('map', ('param', 'arg1'), ('name', 'stor1', 1)))].field_0) = mem[(32 * idx) + 140 len 20]
                    _366 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_366] = arg3
                    mem[_366 + 32] = arg1
            else:
                s = sha3(sha3(arg5, 5)) + stor5[arg5].field_0 + 1
                while sha3(sha3(arg5, 5)) + stor5[arg5].field_0 > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                require idx < mem[96]
                address(stor5[arg5][stor5[arg5].field_0].field_0) = mem[(32 * idx) + 140 len 20]
                mem[32] = 1
                stor1[arg1].field_512++
                if not stor1[arg1].field_512 > stor1[arg1].field_512 + 1:
                    mem[0] = sha3(arg1, 1) + 2
                    require idx < mem[96]
                    address(stor[stor1[arg1].field_512 + ('array', 2, ('map', ('param', 'arg1'), ('name', 'stor1', 1)))].field_0) = mem[(32 * idx) + 140 len 20]
                    _382 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_382] = arg3
                    mem[_382 + 32] = arg1
                else:
                    s = sha3(sha3(arg1, 1) + 2) + stor1[arg1].field_512 + 1
                    while sha3(sha3(arg1, 1) + 2) + stor1[arg1].field_512 > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                    mem[0] = sha3(arg1, 1) + 2
                    require idx < mem[96]
                    address(stor[stor1[arg1].field_512 + ('array', 2, ('map', ('param', 'arg1'), ('name', 'stor1', 1)))].field_0) = mem[(32 * idx) + 140 len 20]
                    _400 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_400] = arg3
                    mem[_400 + 32] = arg1
        require idx < mem[96]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 6
        address(sub_de5c66e6[mem[(32 * idx) + 140 len 20]].field_0) = arg3
        sub_de5c66e6[mem[(32 * idx) + 140 len 20]].field_256 = arg1
        idx = idx + 1
        continue 
    mem[0] = arg4
    mem[32] = 2
    if user[arg4]:
        _142 = mem[64]
        mem[mem[64]] = arg1
        mem[mem[64] + 64] = arg3
        mem[mem[64] + 96] = arg5
        mem[mem[64] + 32] = 128
        mem[_142 + 128] = mem[96]
        mem[_142 + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        emit 0xb36623bf: mem[mem[64] len (32 * mem[96]) + _142 + -mem[64] + 160]
    else:
        mem[0] = arg4
        mem[32] = 2
        user[arg4] = arg3
        emit 0x4cd901f6: arg4, arg3
        _150 = mem[64]
        mem[mem[64]] = arg1
        mem[mem[64] + 64] = arg3
        mem[mem[64] + 96] = arg5
        mem[mem[64] + 32] = 128
        mem[_150 + 128] = mem[96]
        mem[_150 + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        emit 0xb36623bf: mem[mem[64] len (32 * mem[96]) + _150 + -mem[64] + 160]
    return 1
}



}
