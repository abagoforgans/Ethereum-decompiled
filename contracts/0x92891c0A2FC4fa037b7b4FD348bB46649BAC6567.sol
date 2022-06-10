contract main {




// =====================  Runtime code  =====================


const name = 'PlayerBook'

const symbol = 'PlayerBook'


address owner;
array of uint256 stor1;
mapping of address sub_d5fabe13;
array of uint256 sub_36390a44;
address sub_60b663bbAddress;
address CFOAddress;
address COOAddress;

function registrationFee_() {
    return stor1.length
}

function CFO() {
    return CFOAddress
}

function sub_36390a44(?) {
    return sub_36390a44[arg1][arg2][0 len sub_36390a44[arg1][arg2].length]
}

function sub_60b663bb(?) {
    return sub_60b663bbAddress
}

function owner() {
    return owner
}

function sub_d5fabe13(?) {
    return sub_d5fabe13[arg1]
}

function COO() {
    return COOAddress
}

function _fallback() payable {
    revert
}

function setCOO(address arg1) {
    require msg.sender == owner
    COOAddress = arg1
}

function setCFO(address arg1) {
    require msg.sender == owner
    CFOAddress = arg1
}

function setCurrentGame(address arg1) {
    require msg.sender == COOAddress
    sub_60b663bbAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdrawBalance() {
    require msg.sender == COOAddress
    call CFOAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getPlayerName() {
    mem[0] = msg.sender
    mem[32] = 3
    mem[64] = (32 * sub_36390a44[address(msg.sender)]) + 128
    mem[96] = sub_36390a44[address(msg.sender)]
    s = 128
    idx = 0
    while idx < sub_36390a44[address(msg.sender)]:
        mem[0] = sha3(address(msg.sender), 3)
        _27 = mem[64]
        mem[64] = mem[64] + ceil32(sub_36390a44[address(msg.sender)][idx].length) + 32
        mem[_27] = sub_36390a44[address(msg.sender)][idx].length
        mem[0] = sha3(sha3(address(msg.sender), 3)) + idx
        mem[_27 + 32] = sub_36390a44[address(msg.sender)][idx]
        t = _27 + 32
        u = sha3(mem[0])
        while _27 + sub_36390a44[address(msg.sender)][idx].length > t:
            mem[t + 32] = stor1[u]
            t = t + 32
            u = u + 1
            continue 
        mem[s] = _27
        s = s + 32
        idx = idx + 1
        continue 
    if mem[96] <= 0:
        return ''
    require mem[96] - 1 < mem[96]
    _31 = mem[(32 * mem[96] - 1) + 128]
    _36 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_31]
    _38 = mem[_31]
    mem[mem[64] + 64 len ceil32(mem[_31])] = mem[_31 + 32 len ceil32(mem[_31])]
    if not _38 % 32:
        return 32, mem[mem[64] + 32 len _38 + 32]
    mem[floor32(_38) + mem[64] + 64] = mem[floor32(_38) + mem[64] + -(_38 % 32) + 96 len _38 % 32]
    return memory
      from mem[64]
       len floor32(_38) + _36 + -mem[64] + 96
}

function checkIfNameValid(string arg1) {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    if arg1.length > 32:
        revert with 0, 'string must be between 1 and 32 characters'
    if arg1.length <= 0:
        revert with 0, 'string must be between 1 and 32 characters'
    require 0 < arg1.length
    if Mask(8, 248, mem[128]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 'string cannot start or end with space'
    require arg1.length - 1 < arg1.length
    if Mask(8, 248, mem[arg1.length + 127]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 'string cannot start or end with space'
    require 0 < arg1.length
    if Mask(8, 248, mem[128]) == 0x3000000000000000000000000000000000000000000000000000000000000000:
        require 1 < arg1.length
        if Mask(8, 248, mem[129]) == 0x7800000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 'string cannot start with 0x'
        require 1 < arg1.length
        if Mask(8, 248, mem[129]) == 0x5800000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 'string cannot start with 0X'
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg1.length
        require idx < arg1.length
        if Mask(8, 248, mem[idx + 128]) <= 0x4000000000000000000000000000000000000000000000000000000000000000:
            if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) <= 0x6000000000000000000000000000000000000000000000000000000000000000:
                    if Mask(8, 248, mem[idx + 128]) <= 0x2f00000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'string contains invalid characters'
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) >= 0x3a00000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'string contains invalid characters'
                else:
                    if Mask(8, 248, mem[idx + 128]) >= 0x7b00000000000000000000000000000000000000000000000000000000000000:
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) <= 0x2f00000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'string contains invalid characters'
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) >= 0x3a00000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'string contains invalid characters'
            if Mask(8, 248, mem[idx + 128]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
                require idx + 1 < arg1.length
                if Mask(8, 248, mem[idx + 129]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'string cannot contain consecutive spaces'
            if s:
                idx = idx + 1
                s = s
                continue 
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) >= 0x3000000000000000000000000000000000000000000000000000000000000000:
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) <= 0x3900000000000000000000000000000000000000000000000000000000000000:
                    idx = idx + 1
                    s = s
                    continue 
        else:
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) < 0x5b00000000000000000000000000000000000000000000000000000000000000:
                mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
                if s:
                    idx = idx + 1
                    s = s
                    continue 
            else:
                if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) <= 0x6000000000000000000000000000000000000000000000000000000000000000:
                        if Mask(8, 248, mem[idx + 128]) <= 0x2f00000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'string contains invalid characters'
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) >= 0x3a00000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'string contains invalid characters'
                    else:
                        if Mask(8, 248, mem[idx + 128]) >= 0x7b00000000000000000000000000000000000000000000000000000000000000:
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) <= 0x2f00000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'string contains invalid characters'
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) >= 0x3a00000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'string contains invalid characters'
                if Mask(8, 248, mem[idx + 128]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
                    require idx + 1 < arg1.length
                    if Mask(8, 248, mem[idx + 129]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'string cannot contain consecutive spaces'
                if s:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) >= 0x3000000000000000000000000000000000000000000000000000000000000000:
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) <= 0x3900000000000000000000000000000000000000000000000000000000000000:
                        idx = idx + 1
                        s = s
                        continue 
        idx = idx + 1
        s = 1
        continue 
    if bool(s) != 1:
        revert with 0, 'string cannot be only numbers'
    if sub_d5fabe13[mem[128]]:
        return 0
    return 1
}

function getPlayerAddr(string arg1) {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    if arg1.length > 32:
        revert with 0, 'string must be between 1 and 32 characters'
    if arg1.length <= 0:
        revert with 0, 'string must be between 1 and 32 characters'
    require 0 < arg1.length
    if Mask(8, 248, mem[128]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 'string cannot start or end with space'
    require arg1.length - 1 < arg1.length
    if Mask(8, 248, mem[arg1.length + 127]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 'string cannot start or end with space'
    require 0 < arg1.length
    if Mask(8, 248, mem[128]) == 0x3000000000000000000000000000000000000000000000000000000000000000:
        require 1 < arg1.length
        if Mask(8, 248, mem[129]) == 0x7800000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 'string cannot start with 0x'
        require 1 < arg1.length
        if Mask(8, 248, mem[129]) == 0x5800000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 'string cannot start with 0X'
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg1.length
        require idx < arg1.length
        if Mask(8, 248, mem[idx + 128]) <= 0x4000000000000000000000000000000000000000000000000000000000000000:
            if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) <= 0x6000000000000000000000000000000000000000000000000000000000000000:
                    if Mask(8, 248, mem[idx + 128]) <= 0x2f00000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'string contains invalid characters'
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) >= 0x3a00000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'string contains invalid characters'
                else:
                    if Mask(8, 248, mem[idx + 128]) >= 0x7b00000000000000000000000000000000000000000000000000000000000000:
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) <= 0x2f00000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'string contains invalid characters'
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) >= 0x3a00000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'string contains invalid characters'
            if Mask(8, 248, mem[idx + 128]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
                require idx + 1 < arg1.length
                if Mask(8, 248, mem[idx + 129]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'string cannot contain consecutive spaces'
            if s:
                idx = idx + 1
                s = s
                continue 
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) >= 0x3000000000000000000000000000000000000000000000000000000000000000:
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) <= 0x3900000000000000000000000000000000000000000000000000000000000000:
                    idx = idx + 1
                    s = s
                    continue 
        else:
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) < 0x5b00000000000000000000000000000000000000000000000000000000000000:
                mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
                if s:
                    idx = idx + 1
                    s = s
                    continue 
            else:
                if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) <= 0x6000000000000000000000000000000000000000000000000000000000000000:
                        if Mask(8, 248, mem[idx + 128]) <= 0x2f00000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'string contains invalid characters'
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) >= 0x3a00000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'string contains invalid characters'
                    else:
                        if Mask(8, 248, mem[idx + 128]) >= 0x7b00000000000000000000000000000000000000000000000000000000000000:
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) <= 0x2f00000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'string contains invalid characters'
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) >= 0x3a00000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'string contains invalid characters'
                if Mask(8, 248, mem[idx + 128]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
                    require idx + 1 < arg1.length
                    if Mask(8, 248, mem[idx + 129]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'string cannot contain consecutive spaces'
                if s:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) >= 0x3000000000000000000000000000000000000000000000000000000000000000:
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) <= 0x3900000000000000000000000000000000000000000000000000000000000000:
                        idx = idx + 1
                        s = s
                        continue 
        idx = idx + 1
        s = 1
        continue 
    if bool(s) != 1:
        revert with 0, 'string cannot be only numbers'
    mem[mem[64]] = sub_d5fabe13[mem[128]]
    return memory
      from mem[64]
       len 32
}

function registerNameByCOO(string arg1, address arg2) {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    require msg.sender == COOAddress
    if arg1.length > 32:
        revert with 0, 'string must be between 1 and 32 characters'
    if arg1.length <= 0:
        revert with 0, 'string must be between 1 and 32 characters'
    require 0 < arg1.length
    if Mask(8, 248, mem[128]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 'string cannot start or end with space'
    require arg1.length - 1 < arg1.length
    if Mask(8, 248, mem[arg1.length + 127]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 'string cannot start or end with space'
    require 0 < arg1.length
    if Mask(8, 248, mem[128]) == 0x3000000000000000000000000000000000000000000000000000000000000000:
        require 1 < arg1.length
        if Mask(8, 248, mem[129]) == 0x7800000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 'string cannot start with 0x'
        require 1 < arg1.length
        if Mask(8, 248, mem[129]) == 0x5800000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 'string cannot start with 0X'
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg1.length
        require idx < arg1.length
        if Mask(8, 248, mem[idx + 128]) <= 0x4000000000000000000000000000000000000000000000000000000000000000:
            if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) <= 0x6000000000000000000000000000000000000000000000000000000000000000:
                    if Mask(8, 248, mem[idx + 128]) <= 0x2f00000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'string contains invalid characters'
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) >= 0x3a00000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'string contains invalid characters'
                else:
                    if Mask(8, 248, mem[idx + 128]) >= 0x7b00000000000000000000000000000000000000000000000000000000000000:
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) <= 0x2f00000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'string contains invalid characters'
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) >= 0x3a00000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'string contains invalid characters'
            if Mask(8, 248, mem[idx + 128]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
                require idx + 1 < arg1.length
                if Mask(8, 248, mem[idx + 129]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'string cannot contain consecutive spaces'
            if s:
                idx = idx + 1
                s = s
                continue 
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) >= 0x3000000000000000000000000000000000000000000000000000000000000000:
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) <= 0x3900000000000000000000000000000000000000000000000000000000000000:
                    idx = idx + 1
                    s = s
                    continue 
        else:
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) < 0x5b00000000000000000000000000000000000000000000000000000000000000:
                mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
                if s:
                    idx = idx + 1
                    s = s
                    continue 
            else:
                if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) <= 0x6000000000000000000000000000000000000000000000000000000000000000:
                        if Mask(8, 248, mem[idx + 128]) <= 0x2f00000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'string contains invalid characters'
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) >= 0x3a00000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'string contains invalid characters'
                    else:
                        if Mask(8, 248, mem[idx + 128]) >= 0x7b00000000000000000000000000000000000000000000000000000000000000:
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) <= 0x2f00000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'string contains invalid characters'
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) >= 0x3a00000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'string contains invalid characters'
                if Mask(8, 248, mem[idx + 128]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
                    require idx + 1 < arg1.length
                    if Mask(8, 248, mem[idx + 129]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'string cannot contain consecutive spaces'
                if s:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) >= 0x3000000000000000000000000000000000000000000000000000000000000000:
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) <= 0x3900000000000000000000000000000000000000000000000000000000000000:
                        idx = idx + 1
                        s = s
                        continue 
        idx = idx + 1
        s = 1
        continue 
    if bool(s) != 1:
        revert with 0, 'string cannot be only numbers'
    if sub_d5fabe13[mem[128]]:
        revert with 0, 'name must not be taken by others'
    sub_d5fabe13[mem[128]] = arg2
    sub_36390a44[address(arg2)]++
    sub_36390a44[address(arg2)][sub_36390a44[address(arg2)]][] = Array(len=arg1.length, data=mem[128 len arg1.length])
    mem[mem[64]] = 0xb7df07a600000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg2
    mem[mem[64] + 36] = 64
    mem[mem[64] + 68] = arg1.length
    mem[mem[64] + 100 len ceil32(arg1.length)] = mem[128 len ceil32(arg1.length)]
    require ext_code.size(sub_60b663bbAddress)
    call sub_60b663bbAddress.0xb7df07a6 with:
         gas gas_remaining wei
        args address(arg2), Array(len=arg1.length, data=mem[mem[64] + 100 len arg1.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function registerName(string arg1) payable {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    if msg.value < stor1.length:
        revert with 0, 'umm.....  you have to pay the name fee'
    if arg1.length > 32:
        revert with 0, 'string must be between 1 and 32 characters'
    if arg1.length <= 0:
        revert with 0, 'string must be between 1 and 32 characters'
    require 0 < arg1.length
    if Mask(8, 248, mem[128]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 'string cannot start or end with space'
    require arg1.length - 1 < arg1.length
    if Mask(8, 248, mem[arg1.length + 127]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 'string cannot start or end with space'
    require 0 < arg1.length
    if Mask(8, 248, mem[128]) == 0x3000000000000000000000000000000000000000000000000000000000000000:
        require 1 < arg1.length
        if Mask(8, 248, mem[129]) == 0x7800000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 'string cannot start with 0x'
        require 1 < arg1.length
        if Mask(8, 248, mem[129]) == 0x5800000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 'string cannot start with 0X'
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg1.length
        require idx < arg1.length
        if Mask(8, 248, mem[idx + 128]) <= 0x4000000000000000000000000000000000000000000000000000000000000000:
            if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) <= 0x6000000000000000000000000000000000000000000000000000000000000000:
                    if Mask(8, 248, mem[idx + 128]) <= 0x2f00000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'string contains invalid characters'
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) >= 0x3a00000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'string contains invalid characters'
                else:
                    if Mask(8, 248, mem[idx + 128]) >= 0x7b00000000000000000000000000000000000000000000000000000000000000:
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) <= 0x2f00000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'string contains invalid characters'
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) >= 0x3a00000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'string contains invalid characters'
            if Mask(8, 248, mem[idx + 128]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
                require idx + 1 < arg1.length
                if Mask(8, 248, mem[idx + 129]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'string cannot contain consecutive spaces'
            if s:
                idx = idx + 1
                s = s
                continue 
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) >= 0x3000000000000000000000000000000000000000000000000000000000000000:
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) <= 0x3900000000000000000000000000000000000000000000000000000000000000:
                    idx = idx + 1
                    s = s
                    continue 
        else:
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) < 0x5b00000000000000000000000000000000000000000000000000000000000000:
                mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
                if s:
                    idx = idx + 1
                    s = s
                    continue 
            else:
                if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) <= 0x6000000000000000000000000000000000000000000000000000000000000000:
                        if Mask(8, 248, mem[idx + 128]) <= 0x2f00000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'string contains invalid characters'
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) >= 0x3a00000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'string contains invalid characters'
                    else:
                        if Mask(8, 248, mem[idx + 128]) >= 0x7b00000000000000000000000000000000000000000000000000000000000000:
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) <= 0x2f00000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'string contains invalid characters'
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) >= 0x3a00000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'string contains invalid characters'
                if Mask(8, 248, mem[idx + 128]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
                    require idx + 1 < arg1.length
                    if Mask(8, 248, mem[idx + 129]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'string cannot contain consecutive spaces'
                if s:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) >= 0x3000000000000000000000000000000000000000000000000000000000000000:
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) <= 0x3900000000000000000000000000000000000000000000000000000000000000:
                        idx = idx + 1
                        s = s
                        continue 
        idx = idx + 1
        s = 1
        continue 
    if bool(s) != 1:
        revert with 0, 'string cannot be only numbers'
    if sub_d5fabe13[mem[128]]:
        revert with 0, 'name must not be taken by others'
    sub_d5fabe13[mem[128]] = msg.sender
    sub_36390a44[address(msg.sender)]++
    sub_36390a44[address(msg.sender)][sub_36390a44[address(msg.sender)]][] = Array(len=arg1.length, data=mem[128 len arg1.length])
    mem[mem[64]] = 0xb7df07a600000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = 64
    mem[mem[64] + 68] = arg1.length
    mem[mem[64] + 100 len ceil32(arg1.length)] = mem[128 len ceil32(arg1.length)]
    require ext_code.size(sub_60b663bbAddress)
    call sub_60b663bbAddress.0xb7df07a6 with:
         gas gas_remaining wei
        args msg.sender, Array(len=arg1.length, data=mem[mem[64] + 100 len arg1.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
