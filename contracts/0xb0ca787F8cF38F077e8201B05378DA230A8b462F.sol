contract main {




// =====================  Runtime code  =====================


const name = 'BHTX'

const decimals = 18

const _totalLimit = 100000000000000 * 10^18

const symbol = 'BHTX'


address owner;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function sub_e8345bd1(?) {
    return sub_e8345bd1[arg1].field_0
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require arg1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] -= arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require arg1
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if sub_e8345bd1[address(msg.sender)].field_0:
        require arg2 <= balanceOf[address(msg.sender)]
        s = 0
        idx = 0
        while idx < sub_e8345bd1[address(msg.sender)].field_256:
            mem[32] = 4
            require idx < sub_e8345bd1[address(msg.sender)].field_256
            mem[0] = sha3(address(msg.sender), 4) + 1
            if block.timestamp < stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_e8345bd1', 4)))].field_0:
                require balanceOf[address(msg.sender)] - arg2 >= stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_e8345bd1', 4)))].field_256
            s = (2 * idx) + sha3(sha3(address(msg.sender), 4) + 1)
            idx = idx + 1
            continue 
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    if sub_e8345bd1[address(arg1)].field_0:
        require arg3 <= balanceOf[address(arg1)]
        s = 0
        idx = 0
        while idx < sub_e8345bd1[address(arg1)].field_256:
            mem[32] = 4
            require idx < sub_e8345bd1[address(arg1)].field_256
            mem[0] = sha3(address(arg1), 4) + 1
            if block.timestamp < stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_e8345bd1', 4)))].field_0:
                require balanceOf[address(arg1)] - arg3 >= stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_e8345bd1', 4)))].field_256
            s = (2 * idx) + sha3(sha3(address(arg1), 4) + 1)
            idx = idx + 1
            continue 
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function lock(address arg1, uint8 arg2, uint256[] arg3, uint256[] arg4) {
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require msg.sender == owner
    require arg1
    if not arg2:
        require sub_e8345bd1[address(arg1)].field_0 != 1
        sub_e8345bd1[address(arg1)].field_256 = 0
        if sub_e8345bd1[address(arg1)].field_256 <= 0:
            sub_e8345bd1[address(arg1)].field_0 = arg2
            if not arg2:
                mem[(32 * arg4.length) + (32 * arg3.length) + 256 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                mem[(64 * arg3.length) + (32 * arg4.length) + 256] = arg4.length
                mem[(64 * arg3.length) + (32 * arg4.length) + 288 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
                emit Lock(Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg4.length) + (32 * arg3.length) + floor32(arg3.length) + 256 len (32 * arg4.length) + (32 * arg3.length) + -floor32(arg3.length) + 32]), (32 * arg3.length) + 96, arg1, arg2);
            else:
                require arg3.length == arg4.length
                require arg3.length > 0
                require arg3.length <= 12
                require 0 < arg3.length
                require 0 < arg4.length
                _57 = mem[(32 * arg3.length) + 160]
                mem[32] = 4
                mem[64] = (32 * arg4.length) + (32 * arg3.length) + 224
                mem[(32 * arg4.length) + (32 * arg3.length) + 160] = mem[128]
                mem[(32 * arg4.length) + (32 * arg3.length) + 192] = _57
                sub_e8345bd1[address(arg1)].field_256++
                mem[0] = sha3(address(arg1), 4) + 1
                stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_e8345bd1', 4))) + (2 * sub_e8345bd1[address(arg1)].field_256)].field_0 = mem[128]
                stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_e8345bd1', 4))) + (2 * sub_e8345bd1[address(arg1)].field_256)].field_256 = _57
                idx = 1
                s = _57
                t = mem[128]
                while idx < arg3.length:
                    require idx < mem[96]
                    require mem[(32 * idx) + 128] > t
                    require idx < mem[(32 * arg3.length) + 128]
                    require mem[(32 * idx) + (32 * arg3.length) + 160] < s
                    mem[0] = arg1
                    mem[32] = 4
                    _388 = mem[64]
                    mem[64] = mem[64] + 64
                    require idx < mem[96]
                    mem[_388] = mem[(32 * idx) + 128]
                    require idx < mem[(32 * arg3.length) + 128]
                    mem[_388 + 32] = mem[(32 * arg3.length) + (32 * idx) + 160]
                    sub_e8345bd1[address(arg1)].field_256++
                    mem[0] = sha3(address(arg1), 4) + 1
                    stor[(2 * sub_e8345bd1[address(arg1)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_e8345bd1', 4)))].field_0 = mem[_388]
                    stor[(2 * sub_e8345bd1[address(arg1)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_e8345bd1', 4)))].field_256 = mem[_388 + 32]
                    require idx < mem[96]
                    require idx < mem[(32 * arg3.length) + 128]
                    idx = idx + 1
                    s = mem[(32 * arg3.length) + (32 * idx) + 160]
                    t = mem[(32 * idx) + 128]
                    continue 
                _312 = mem[64]
                mem[mem[64]] = 64
                mem[mem[64] + 64] = mem[96]
                _314 = mem[96]
                mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[mem[64] + 32] = (32 * mem[96]) + 96
                mem[(32 * mem[96]) + _312 + 96] = mem[(32 * arg3.length) + 128]
                _565 = mem[(32 * arg3.length) + 128]
                mem[(32 * _314) + _312 + 128 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
                emit Lock(address arg1, uint8 arg2, uint256[] arg3, uint256[] arg4):
                          mem[mem[64] len (32 * _565) + (32 * _314) + _312 + -mem[64] + 128],
                          arg1,
                          arg2,
        else:
            idx = 0
            while 2 * sub_e8345bd1[address(arg1)].field_256 > idx:
                sub_e8345bd1[address(arg1)][idx + 1].field_0 = 0
                sub_e8345bd1[address(arg1)][idx + 1].field_256 = 0
                idx = idx + 2
                continue 
            sub_e8345bd1[address(arg1)].field_0 = arg2
            if not arg2:
                mem[(32 * arg4.length) + (32 * arg3.length) + 256 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                mem[(64 * arg3.length) + (32 * arg4.length) + 256] = arg4.length
                mem[(64 * arg3.length) + (32 * arg4.length) + 288 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
                emit Lock(Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg4.length) + (32 * arg3.length) + floor32(arg3.length) + 256 len (32 * arg4.length) + (32 * arg3.length) + -floor32(arg3.length) + 32]), (32 * arg3.length) + 96, arg1, arg2);
            else:
                require arg3.length == arg4.length
                require arg3.length > 0
                require arg3.length <= 12
                require 0 < arg3.length
                require 0 < arg4.length
                _459 = mem[(32 * arg3.length) + 160]
                mem[32] = 4
                mem[64] = (32 * arg4.length) + (32 * arg3.length) + 224
                mem[(32 * arg4.length) + (32 * arg3.length) + 160] = mem[128]
                mem[(32 * arg4.length) + (32 * arg3.length) + 192] = _459
                sub_e8345bd1[address(arg1)].field_256++
                mem[0] = sha3(address(arg1), 4) + 1
                stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_e8345bd1', 4))) + (2 * sub_e8345bd1[address(arg1)].field_256)].field_0 = mem[128]
                stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_e8345bd1', 4))) + (2 * sub_e8345bd1[address(arg1)].field_256)].field_256 = _459
                idx = 1
                s = _459
                t = mem[128]
                while idx < arg3.length:
                    require idx < mem[96]
                    require mem[(32 * idx) + 128] > t
                    require idx < mem[(32 * arg3.length) + 128]
                    require mem[(32 * idx) + (32 * arg3.length) + 160] < s
                    mem[0] = arg1
                    mem[32] = 4
                    _655 = mem[64]
                    mem[64] = mem[64] + 64
                    require idx < mem[96]
                    mem[_655] = mem[(32 * idx) + 128]
                    require idx < mem[(32 * arg3.length) + 128]
                    mem[_655 + 32] = mem[(32 * arg3.length) + (32 * idx) + 160]
                    sub_e8345bd1[address(arg1)].field_256++
                    mem[0] = sha3(address(arg1), 4) + 1
                    stor[(2 * sub_e8345bd1[address(arg1)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_e8345bd1', 4)))].field_0 = mem[_655]
                    stor[(2 * sub_e8345bd1[address(arg1)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_e8345bd1', 4)))].field_256 = mem[_655 + 32]
                    require idx < mem[96]
                    require idx < mem[(32 * arg3.length) + 128]
                    idx = idx + 1
                    s = mem[(32 * arg3.length) + (32 * idx) + 160]
                    t = mem[(32 * idx) + 128]
                    continue 
                _569 = mem[64]
                mem[mem[64]] = 64
                mem[mem[64] + 64] = mem[96]
                _571 = mem[96]
                mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[mem[64] + 32] = (32 * mem[96]) + 96
                mem[(32 * mem[96]) + _569 + 96] = mem[(32 * arg3.length) + 128]
                _702 = mem[(32 * arg3.length) + 128]
                mem[(32 * _571) + _569 + 128 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
                emit Lock(address arg1, uint8 arg2, uint256[] arg3, uint256[] arg4):
                          mem[mem[64] len (32 * _702) + (32 * _571) + _569 + -mem[64] + 128],
                          arg1,
                          arg2,
    else:
        if 1 == arg2:
            require sub_e8345bd1[address(arg1)].field_0 != 1
            sub_e8345bd1[address(arg1)].field_256 = 0
            if sub_e8345bd1[address(arg1)].field_256 <= 0:
                sub_e8345bd1[address(arg1)].field_0 = arg2
                if not arg2:
                    mem[(32 * arg4.length) + (32 * arg3.length) + 256 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                    mem[(64 * arg3.length) + (32 * arg4.length) + 256] = arg4.length
                    mem[(64 * arg3.length) + (32 * arg4.length) + 288 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
                    emit Lock(Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg4.length) + (32 * arg3.length) + floor32(arg3.length) + 256 len (32 * arg4.length) + (32 * arg3.length) + -floor32(arg3.length) + 32]), (32 * arg3.length) + 96, arg1, arg2);
                else:
                    require arg3.length == arg4.length
                    require arg3.length > 0
                    require arg3.length <= 12
                    require 0 < arg3.length
                    require 0 < arg4.length
                    _80 = mem[(32 * arg3.length) + 160]
                    mem[32] = 4
                    mem[64] = (32 * arg4.length) + (32 * arg3.length) + 224
                    mem[(32 * arg4.length) + (32 * arg3.length) + 160] = mem[128]
                    mem[(32 * arg4.length) + (32 * arg3.length) + 192] = _80
                    sub_e8345bd1[address(arg1)].field_256++
                    mem[0] = sha3(address(arg1), 4) + 1
                    stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_e8345bd1', 4))) + (2 * sub_e8345bd1[address(arg1)].field_256)].field_0 = mem[128]
                    stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_e8345bd1', 4))) + (2 * sub_e8345bd1[address(arg1)].field_256)].field_256 = _80
                    idx = 1
                    s = _80
                    t = mem[128]
                    while idx < arg3.length:
                        require idx < mem[96]
                        require mem[(32 * idx) + 128] > t
                        require idx < mem[(32 * arg3.length) + 128]
                        require mem[(32 * idx) + (32 * arg3.length) + 160] < s
                        mem[0] = arg1
                        mem[32] = 4
                        _392 = mem[64]
                        mem[64] = mem[64] + 64
                        require idx < mem[96]
                        mem[_392] = mem[(32 * idx) + 128]
                        require idx < mem[(32 * arg3.length) + 128]
                        mem[_392 + 32] = mem[(32 * arg3.length) + (32 * idx) + 160]
                        sub_e8345bd1[address(arg1)].field_256++
                        mem[0] = sha3(address(arg1), 4) + 1
                        stor[(2 * sub_e8345bd1[address(arg1)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_e8345bd1', 4)))].field_0 = mem[_392]
                        stor[(2 * sub_e8345bd1[address(arg1)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_e8345bd1', 4)))].field_256 = mem[_392 + 32]
                        require idx < mem[96]
                        require idx < mem[(32 * arg3.length) + 128]
                        idx = idx + 1
                        s = mem[(32 * arg3.length) + (32 * idx) + 160]
                        t = mem[(32 * idx) + 128]
                        continue 
                    _319 = mem[64]
                    mem[mem[64]] = 64
                    mem[mem[64] + 64] = mem[96]
                    _321 = mem[96]
                    mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                    mem[mem[64] + 32] = (32 * mem[96]) + 96
                    mem[(32 * mem[96]) + _319 + 96] = mem[(32 * arg3.length) + 128]
                    _577 = mem[(32 * arg3.length) + 128]
                    mem[(32 * _321) + _319 + 128 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
                    emit Lock(address arg1, uint8 arg2, uint256[] arg3, uint256[] arg4):
                              mem[mem[64] len (32 * _577) + (32 * _321) + _319 + -mem[64] + 128],
                              arg1,
                              arg2,
            else:
                idx = 0
                while 2 * sub_e8345bd1[address(arg1)].field_256 > idx:
                    sub_e8345bd1[address(arg1)][idx + 1].field_0 = 0
                    sub_e8345bd1[address(arg1)][idx + 1].field_256 = 0
                    idx = idx + 2
                    continue 
                sub_e8345bd1[address(arg1)].field_0 = arg2
                if not arg2:
                    mem[(32 * arg4.length) + (32 * arg3.length) + 256 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                    mem[(64 * arg3.length) + (32 * arg4.length) + 256] = arg4.length
                    mem[(64 * arg3.length) + (32 * arg4.length) + 288 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
                    emit Lock(Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg4.length) + (32 * arg3.length) + floor32(arg3.length) + 256 len (32 * arg4.length) + (32 * arg3.length) + -floor32(arg3.length) + 32]), (32 * arg3.length) + 96, arg1, arg2);
                else:
                    require arg3.length == arg4.length
                    require arg3.length > 0
                    require arg3.length <= 12
                    require 0 < arg3.length
                    require 0 < arg4.length
                    _467 = mem[(32 * arg3.length) + 160]
                    mem[32] = 4
                    mem[64] = (32 * arg4.length) + (32 * arg3.length) + 224
                    mem[(32 * arg4.length) + (32 * arg3.length) + 160] = mem[128]
                    mem[(32 * arg4.length) + (32 * arg3.length) + 192] = _467
                    sub_e8345bd1[address(arg1)].field_256++
                    mem[0] = sha3(address(arg1), 4) + 1
                    stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_e8345bd1', 4))) + (2 * sub_e8345bd1[address(arg1)].field_256)].field_0 = mem[128]
                    stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_e8345bd1', 4))) + (2 * sub_e8345bd1[address(arg1)].field_256)].field_256 = _467
                    idx = 1
                    s = _467
                    t = mem[128]
                    while idx < arg3.length:
                        require idx < mem[96]
                        require mem[(32 * idx) + 128] > t
                        require idx < mem[(32 * arg3.length) + 128]
                        require mem[(32 * idx) + (32 * arg3.length) + 160] < s
                        mem[0] = arg1
                        mem[32] = 4
                        _658 = mem[64]
                        mem[64] = mem[64] + 64
                        require idx < mem[96]
                        mem[_658] = mem[(32 * idx) + 128]
                        require idx < mem[(32 * arg3.length) + 128]
                        mem[_658 + 32] = mem[(32 * arg3.length) + (32 * idx) + 160]
                        sub_e8345bd1[address(arg1)].field_256++
                        mem[0] = sha3(address(arg1), 4) + 1
                        stor[(2 * sub_e8345bd1[address(arg1)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_e8345bd1', 4)))].field_0 = mem[_658]
                        stor[(2 * sub_e8345bd1[address(arg1)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_e8345bd1', 4)))].field_256 = mem[_658 + 32]
                        require idx < mem[96]
                        require idx < mem[(32 * arg3.length) + 128]
                        idx = idx + 1
                        s = mem[(32 * arg3.length) + (32 * idx) + 160]
                        t = mem[(32 * idx) + 128]
                        continue 
                    _581 = mem[64]
                    mem[mem[64]] = 64
                    mem[mem[64] + 64] = mem[96]
                    _583 = mem[96]
                    mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                    mem[mem[64] + 32] = (32 * mem[96]) + 96
                    mem[(32 * mem[96]) + _581 + 96] = mem[(32 * arg3.length) + 128]
                    _709 = mem[(32 * arg3.length) + 128]
                    mem[(32 * _583) + _581 + 128 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
                    emit Lock(address arg1, uint8 arg2, uint256[] arg3, uint256[] arg4):
                              mem[mem[64] len (32 * _709) + (32 * _583) + _581 + -mem[64] + 128],
                              arg1,
                              arg2,
        else:
            require 2 == arg2
            require sub_e8345bd1[address(arg1)].field_0 != 1
            sub_e8345bd1[address(arg1)].field_256 = 0
            if sub_e8345bd1[address(arg1)].field_256 <= 0:
                sub_e8345bd1[address(arg1)].field_0 = arg2
                if not arg2:
                    mem[(32 * arg4.length) + (32 * arg3.length) + 256 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                    mem[(64 * arg3.length) + (32 * arg4.length) + 256] = arg4.length
                    mem[(64 * arg3.length) + (32 * arg4.length) + 288 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
                    emit Lock(Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg4.length) + (32 * arg3.length) + floor32(arg3.length) + 256 len (32 * arg4.length) + (32 * arg3.length) + -floor32(arg3.length) + 32]), (32 * arg3.length) + 96, arg1, arg2);
                else:
                    require arg3.length == arg4.length
                    require arg3.length > 0
                    require arg3.length <= 12
                    require 0 < arg3.length
                    require 0 < arg4.length
                    _103 = mem[(32 * arg3.length) + 160]
                    mem[32] = 4
                    mem[64] = (32 * arg4.length) + (32 * arg3.length) + 224
                    mem[(32 * arg4.length) + (32 * arg3.length) + 160] = mem[128]
                    mem[(32 * arg4.length) + (32 * arg3.length) + 192] = _103
                    sub_e8345bd1[address(arg1)].field_256++
                    mem[0] = sha3(address(arg1), 4) + 1
                    stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_e8345bd1', 4))) + (2 * sub_e8345bd1[address(arg1)].field_256)].field_0 = mem[128]
                    stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_e8345bd1', 4))) + (2 * sub_e8345bd1[address(arg1)].field_256)].field_256 = _103
                    idx = 1
                    s = _103
                    t = mem[128]
                    while idx < arg3.length:
                        require idx < mem[96]
                        require mem[(32 * idx) + 128] > t
                        require idx < mem[(32 * arg3.length) + 128]
                        require mem[(32 * idx) + (32 * arg3.length) + 160] < s
                        mem[0] = arg1
                        mem[32] = 4
                        _396 = mem[64]
                        mem[64] = mem[64] + 64
                        require idx < mem[96]
                        mem[_396] = mem[(32 * idx) + 128]
                        require idx < mem[(32 * arg3.length) + 128]
                        mem[_396 + 32] = mem[(32 * arg3.length) + (32 * idx) + 160]
                        sub_e8345bd1[address(arg1)].field_256++
                        mem[0] = sha3(address(arg1), 4) + 1
                        stor[(2 * sub_e8345bd1[address(arg1)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_e8345bd1', 4)))].field_0 = mem[_396]
                        stor[(2 * sub_e8345bd1[address(arg1)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_e8345bd1', 4)))].field_256 = mem[_396 + 32]
                        require idx < mem[96]
                        require idx < mem[(32 * arg3.length) + 128]
                        idx = idx + 1
                        s = mem[(32 * arg3.length) + (32 * idx) + 160]
                        t = mem[(32 * idx) + 128]
                        continue 
                    _326 = mem[64]
                    mem[mem[64]] = 64
                    mem[mem[64] + 64] = mem[96]
                    _328 = mem[96]
                    mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                    mem[mem[64] + 32] = (32 * mem[96]) + 96
                    mem[(32 * mem[96]) + _326 + 96] = mem[(32 * arg3.length) + 128]
                    _589 = mem[(32 * arg3.length) + 128]
                    mem[(32 * _328) + _326 + 128 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
                    emit Lock(address arg1, uint8 arg2, uint256[] arg3, uint256[] arg4):
                              mem[mem[64] len (32 * _589) + (32 * _328) + _326 + -mem[64] + 128],
                              arg1,
                              arg2,
            else:
                idx = 0
                while 2 * sub_e8345bd1[address(arg1)].field_256 > idx:
                    sub_e8345bd1[address(arg1)][idx + 1].field_0 = 0
                    sub_e8345bd1[address(arg1)][idx + 1].field_256 = 0
                    idx = idx + 2
                    continue 
                sub_e8345bd1[address(arg1)].field_0 = arg2
                if not arg2:
                    mem[(32 * arg4.length) + (32 * arg3.length) + 256 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                    mem[(64 * arg3.length) + (32 * arg4.length) + 256] = arg4.length
                    mem[(64 * arg3.length) + (32 * arg4.length) + 288 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
                    emit Lock(Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg4.length) + (32 * arg3.length) + floor32(arg3.length) + 256 len (32 * arg4.length) + (32 * arg3.length) + -floor32(arg3.length) + 32]), (32 * arg3.length) + 96, arg1, arg2);
                else:
                    require arg3.length == arg4.length
                    require arg3.length > 0
                    require arg3.length <= 12
                    require 0 < arg3.length
                    require 0 < arg4.length
                    _475 = mem[(32 * arg3.length) + 160]
                    mem[32] = 4
                    mem[64] = (32 * arg4.length) + (32 * arg3.length) + 224
                    mem[(32 * arg4.length) + (32 * arg3.length) + 160] = mem[128]
                    mem[(32 * arg4.length) + (32 * arg3.length) + 192] = _475
                    sub_e8345bd1[address(arg1)].field_256++
                    mem[0] = sha3(address(arg1), 4) + 1
                    stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_e8345bd1', 4))) + (2 * sub_e8345bd1[address(arg1)].field_256)].field_0 = mem[128]
                    stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_e8345bd1', 4))) + (2 * sub_e8345bd1[address(arg1)].field_256)].field_256 = _475
                    idx = 1
                    s = _475
                    t = mem[128]
                    while idx < arg3.length:
                        require idx < mem[96]
                        require mem[(32 * idx) + 128] > t
                        require idx < mem[(32 * arg3.length) + 128]
                        require mem[(32 * idx) + (32 * arg3.length) + 160] < s
                        mem[0] = arg1
                        mem[32] = 4
                        _661 = mem[64]
                        mem[64] = mem[64] + 64
                        require idx < mem[96]
                        mem[_661] = mem[(32 * idx) + 128]
                        require idx < mem[(32 * arg3.length) + 128]
                        mem[_661 + 32] = mem[(32 * arg3.length) + (32 * idx) + 160]
                        sub_e8345bd1[address(arg1)].field_256++
                        mem[0] = sha3(address(arg1), 4) + 1
                        stor[(2 * sub_e8345bd1[address(arg1)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_e8345bd1', 4)))].field_0 = mem[_661]
                        stor[(2 * sub_e8345bd1[address(arg1)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_e8345bd1', 4)))].field_256 = mem[_661 + 32]
                        require idx < mem[96]
                        require idx < mem[(32 * arg3.length) + 128]
                        idx = idx + 1
                        s = mem[(32 * arg3.length) + (32 * idx) + 160]
                        t = mem[(32 * idx) + 128]
                        continue 
                    _593 = mem[64]
                    mem[mem[64]] = 64
                    mem[mem[64] + 64] = mem[96]
                    _595 = mem[96]
                    mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                    mem[mem[64] + 32] = (32 * mem[96]) + 96
                    mem[(32 * mem[96]) + _593 + 96] = mem[(32 * arg3.length) + 128]
                    _716 = mem[(32 * arg3.length) + 128]
                    mem[(32 * _595) + _593 + 128 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
                    emit Lock(address arg1, uint8 arg2, uint256[] arg3, uint256[] arg4):
                              mem[mem[64] len (32 * _716) + (32 * _595) + _593 + -mem[64] + 128],
                              arg1,
                              arg2,
    return 1
}



}
