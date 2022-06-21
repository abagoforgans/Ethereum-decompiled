contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor7;
mapping of uint256 sub_58634110;
mapping of uint256 sub_57299434;
uint8 sub_028c6013;

function sub_028c6013(?) {
    return bool(sub_028c6013)
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function sub_57299434(?) {
    return sub_57299434[arg1]
}

function sub_58634110(?) {
    return sub_58634110[arg1]
}

function sub_615f09af(?) {
    require arg2 < stor9[arg1]
    require arg3 < stor9[arg1][arg2]
    return stor[('array', ('param', 'arg2'), ('map', ('param', 'arg1'), ('name', 'stor9', 9))) + arg3]
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function frozenAccount(address arg1) {
    return bool(stor7[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function pauseTransfer(bool arg1) {
    require msg.sender == owner
    sub_028c6013 = uint8(arg1)
    emit PauseChanged(arg1);
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approved(address(arg1), arg2, msg.sender);
    return 1
}

function freezeAccount(address arg1, bool arg2) {
    require msg.sender == owner
    stor7[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function burn(uint256 arg1) {
    require arg1 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function sub_e6c17ca1(?) {
    require msg.sender == owner
    require arg2 <= balanceOf[address(arg1)]
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit Burn(arg2, arg1);
}

function freezeByValue(address arg1, uint256 arg2) {
    require msg.sender == owner
    if not arg2:
        sub_58634110[address(arg1)] = 0
    else:
        require 10^decimals * arg2 / arg2 == 10^decimals
        sub_58634110[address(arg1)] = 10^decimals * arg2
    emit FronzeValue(address(arg1), arg2);
}

function burnFrom(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(arg1)]
    require arg2 <= allowance[address(arg1)][msg.sender]
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function increaseFreezeValue(address arg1, uint256 arg2) {
    require msg.sender == owner
    if not arg2:
        require sub_58634110[address(arg1)] >= sub_58634110[address(arg1)]
    else:
        require 10^decimals * arg2 / arg2 == 10^decimals
        require (10^decimals * arg2) + sub_58634110[address(arg1)] >= sub_58634110[address(arg1)]
        sub_58634110[address(arg1)] += 10^decimals * arg2
    emit FronzeValue(address(arg1), arg2);
}

function mintToken(address arg1, uint256 arg2) {
    require msg.sender == owner
    if not arg2:
        require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        require totalSupply >= totalSupply
    else:
        require 10^decimals * arg2 / arg2 == 10^decimals
        require (10^decimals * arg2) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += 10^decimals * arg2
        require (10^decimals * arg2) + totalSupply >= totalSupply
        totalSupply += 10^decimals * arg2
    emit Transfer(arg2, 0, this.address);
    emit Transfer(arg2, this.address, arg1);
}

function decreaseFreezeValue(address arg1, uint256 arg2) {
    require msg.sender == owner
    if not arg2:
        if 0 < sub_58634110[address(arg1)]:
            require 0 <= sub_58634110[address(arg1)]
        else:
            sub_58634110[address(arg1)] = 0
    else:
        require 10^decimals * arg2 / arg2 == 10^decimals
        if 10^decimals * arg2 >= sub_58634110[address(arg1)]:
            sub_58634110[address(arg1)] = 0
        else:
            require 10^decimals * arg2 <= sub_58634110[address(arg1)]
            sub_58634110[address(arg1)] += -1 * 10^decimals * arg2
    emit FronzeValue(address(arg1), arg2);
}

function unfreezeAccountTimeAndValue(address arg1) {
    require msg.sender == owner
    mem[0] = arg1
    mem[64] = (32 * stor9[address(arg1)]) + 128
    mem[96] = stor9[address(arg1)]
    s = 128
    idx = 0
    while idx < stor9[address(arg1)]:
        mem[0] = sha3(address(arg1), 9)
        _14 = mem[64]
        mem[64] = mem[64] + (32 * stor9[address(arg1)][idx]) + 32
        mem[_14] = stor9[address(arg1)][idx]
        if stor9[address(arg1)][idx]:
            mem[0] = idx + sha3(sha3(address(arg1), 9))
            mem[_14 + 32] = stor9[address(arg1)][idx]
            t = _14 + 32
            u = sha3(mem[0])
            while _14 + (32 * stor9[address(arg1)][idx]) > t:
                mem[t + 32] = name[u]
                t = t + 32
                u = u + 1
                continue 
        mem[s] = _14
        s = s + 32
        idx = idx + 1
        continue 
    if mem[96] > 0:
        stor9[address(arg1)] = 0
        mem[0] = sha3(address(arg1), 9)
        idx = 0
        while sha3(sha3(address(arg1), 9)) + stor9[address(arg1)] > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            mem[0] = idx + sha3(mem[0])
            s = sha3(idx + sha3(mem[0]))
            while sha3(idx + sha3(mem[0])) + stor[idx + sha3(mem[0])] > s:
                stor[s] = 0
                s = s + 1
                continue 
            idx = idx + 1
            continue 
    sub_57299434[address(arg1)] = 0
}

function accountNoneFrozenAvailable(address arg1) {
    mem[0] = arg1
    mem[32] = 9
    mem[64] = (32 * stor9[address(arg1)]) + 128
    mem[96] = stor9[address(arg1)]
    s = 128
    idx = 0
    while idx < stor9[address(arg1)]:
        mem[0] = sha3(address(arg1), 9)
        _42 = mem[64]
        mem[64] = mem[64] + (32 * stor9[address(arg1)][idx]) + 32
        mem[_42] = stor9[address(arg1)][idx]
        if stor9[address(arg1)][idx]:
            mem[0] = idx + sha3(sha3(address(arg1), 9))
            mem[_42 + 32] = stor9[address(arg1)][idx]
            t = _42 + 32
            u = sha3(mem[0])
            while _42 + (32 * stor9[address(arg1)][idx]) > t:
                mem[t + 32] = name[u]
                t = t + 32
                u = u + 1
                continue 
        mem[s] = _42
        s = s + 32
        idx = idx + 1
        continue 
    if mem[96] <= 0:
        return balanceOf[address(arg1)]
    s = 0
    t = 0
    idx = 0
    t = 0
    u = 0
    while idx < mem[96]:
        require idx < mem[96]
        require 0 < mem[mem[(32 * idx) + 128]]
        require idx < mem[96]
        require 1 < mem[mem[(32 * idx) + 128]]
        if mem[mem[(32 * idx) + 128] + 64] <= 0:
            s = mem[mem[(32 * idx) + 128] + 64]
            t = mem[mem[(32 * idx) + 128] + 32]
            idx = idx + 1
            t = t
            u = u
            continue 
        if block.timestamp < mem[mem[(32 * idx) + 128] + 32]:
            require mem[mem[(32 * idx) + 128] + 64] + t >= t
            s = mem[mem[(32 * idx) + 128] + 64]
            t = mem[mem[(32 * idx) + 128] + 32]
            idx = idx + 1
            t = mem[mem[(32 * idx) + 128] + 64] + t
            u = u
            continue 
        require mem[mem[(32 * idx) + 128] + 64] + u >= u
        if mem[mem[(32 * idx) + 128] + 64] <= 0:
            s = mem[mem[(32 * idx) + 128] + 64]
            t = mem[mem[(32 * idx) + 128] + 32]
            idx = idx + 1
            t = t
            u = mem[mem[(32 * idx) + 128] + 64] + u
            continue 
        require mem[mem[(32 * idx) + 128] + 64] + t >= t
        s = mem[mem[(32 * idx) + 128] + 64]
        t = mem[mem[(32 * idx) + 128] + 32]
        idx = idx + 1
        t = mem[mem[(32 * idx) + 128] + 64] + t
        u = mem[mem[(32 * idx) + 128] + 64] + u
        continue 
    if t <= u:
        sub_57299434[address(arg1)] = 0
    else:
        require u <= t
        sub_57299434[address(arg1)] = t - u
    if not sub_57299434[address(arg1)]:
        stor9[address(arg1)] = 0
        mem[0] = sha3(address(arg1), 9)
        idx = 0
        while sha3(sha3(address(arg1), 9)) + stor9[address(arg1)] > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            mem[0] = idx + sha3(mem[0])
            s = sha3(idx + sha3(mem[0]))
            while sha3(idx + sha3(mem[0])) + stor[idx + sha3(mem[0])] > s:
                stor[s] = 0
                s = s + 1
                continue 
            idx = idx + 1
            continue 
    if balanceOf[address(arg1)] <= sub_57299434[address(arg1)]:
        return 0
    require sub_57299434[address(arg1)] <= balanceOf[address(arg1)]
    return (balanceOf[address(arg1)] - sub_57299434[address(arg1)])
}

function freezeAccountTimeAndValue(address arg1, uint256[] arg2, uint256[] arg3) {
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require msg.sender == owner
    require 1 <= arg2.length
    require arg2.length == arg3.length
    require 10 >= arg2.length
    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 10
    mem[64] = (32 * arg3.length) + (32 * arg2.length) + 576
    mem[(32 * arg3.length) + (32 * arg2.length) + 512 len 64] = code.data[6443 len 64]
    mem[var11001] = (32 * arg3.length) + (32 * arg2.length) + 512
    s = var11001
    idx = var11002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[(32 * arg3.length) + (32 * arg2.length) + 512 len 64] = code.data[6443 len 64]
        mem[s + 32] = (32 * arg3.length) + (32 * arg2.length) + 512
        s = s + 32
        idx = idx - 1
        continue 
    _61 = mem[96]
    idx = 0
    while idx < _61:
        require idx < mem[(32 * arg2.length) + 128]
        _66 = mem[(32 * arg2.length) + (32 * idx) + 160]
        if not mem[(32 * arg2.length) + (32 * idx) + 160]:
            _69 = mem[64]
            mem[64] = mem[64] + 64
            require idx < mem[96]
            mem[_69] = mem[(32 * idx) + 128]
            mem[_69 + 32] = 0
            require idx < mem[(32 * arg3.length) + (32 * arg2.length) + 160]
            mem[(32 * arg3.length) + (32 * arg2.length) + (32 * idx) + 192] = _69
        else:
            require 10^decimals * mem[(32 * arg2.length) + (32 * idx) + 160] / mem[(32 * arg2.length) + (32 * idx) + 160] == 10^decimals
            _74 = mem[64]
            mem[64] = mem[64] + 64
            require idx < mem[96]
            mem[_74] = mem[(32 * idx) + 128]
            mem[_74 + 32] = 10^decimals * _66
            require idx < mem[(32 * arg3.length) + (32 * arg2.length) + 160]
            mem[(32 * arg3.length) + (32 * arg2.length) + (32 * idx) + 192] = _74
            require 10^decimals * _66 >= 0
        idx = idx + 1
        continue 
    mem[32] = 9
    stor9[address(arg1)] = mem[(32 * arg3.length) + (32 * arg2.length) + 160]
    mem[0] = sha3(address(arg1), 9)
    if not mem[(32 * arg3.length) + (32 * arg2.length) + 160]:
        idx = 0
        while sha3(sha3(address(arg1), 9)) + stor9[address(arg1)] > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            mem[0] = idx + sha3(mem[0])
            s = sha3(idx + sha3(mem[0]))
            while sha3(idx + sha3(mem[0])) + stor[idx + sha3(mem[0])] > s:
                stor[s] = 0
                s = s + 1
                continue 
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * arg3.length) + (32 * arg2.length) + 192
        while (32 * arg3.length) + (32 * arg2.length) + (32 * mem[(32 * arg3.length) + (32 * arg2.length) + 160]) + 192 > idx:
            _86 = mem[idx]
            stor[s + sha3(mem[0])] = 2
            mem[0] = s + sha3(mem[0])
            u = sha3(s + sha3(mem[0]))
            t = _86
            while _86 + 64 > t:
                stor[u] = mem[t]
                u = u + 1
                t = t + 32
                continue 
            t = sha3(s + sha3(mem[0])) + 2
            while sha3(s + sha3(mem[0])) + stor[s + sha3(mem[0])] > t:
                stor[t] = 0
                t = t + 1
                continue 
            s = s + 1
            idx = idx + 32
            continue 
        idx = s
        while sha3(sha3(address(arg1), 9)) + stor9[address(arg1)] > idx:
            stor[idx] = 0
            mem[0] = idx
            s = sha3(idx)
            while sha3(idx) + stor[idx] > s:
                stor[s] = 0
                s = s + 1
                continue 
            idx = idx + 1
            continue 
    sub_57299434[address(arg1)] = 0
    emit FronzeTimeValue(address(arg1), 0);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    require not sub_028c6013
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require not stor7[address(arg1)]
    require not stor7[address(arg2)]
    require arg3 <= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] - arg3 >= sub_58634110[address(arg1)]
    mem[0] = arg1
    mem[32] = 9
    mem[64] = (32 * stor9[address(arg1)]) + 128
    mem[96] = stor9[address(arg1)]
    s = 128
    idx = 0
    while idx < stor9[address(arg1)]:
        mem[0] = sha3(address(arg1), 9)
        _81 = mem[64]
        mem[64] = mem[64] + (32 * stor9[address(arg1)][idx]) + 32
        mem[_81] = stor9[address(arg1)][idx]
        if stor9[address(arg1)][idx]:
            mem[0] = idx + sha3(sha3(address(arg1), 9))
            mem[_81 + 32] = stor9[address(arg1)][idx]
            t = _81 + 32
            u = sha3(mem[0])
            while _81 + (32 * stor9[address(arg1)][idx]) > t:
                mem[t + 32] = name[u]
                t = t + 32
                u = u + 1
                continue 
        mem[s] = _81
        s = s + 32
        idx = idx + 1
        continue 
    if mem[96] <= 0:
        require balanceOf[address(arg1)] >= arg3
    else:
        s = 0
        t = 0
        idx = 0
        t = 0
        u = 0
        while idx < mem[96]:
            require idx < mem[96]
            require 0 < mem[mem[(32 * idx) + 128]]
            require idx < mem[96]
            require 1 < mem[mem[(32 * idx) + 128]]
            if mem[mem[(32 * idx) + 128] + 64] <= 0:
                s = mem[mem[(32 * idx) + 128] + 64]
                t = mem[mem[(32 * idx) + 128] + 32]
                idx = idx + 1
                t = t
                u = u
                continue 
            if block.timestamp < mem[mem[(32 * idx) + 128] + 32]:
                require mem[mem[(32 * idx) + 128] + 64] + t >= t
                s = mem[mem[(32 * idx) + 128] + 64]
                t = mem[mem[(32 * idx) + 128] + 32]
                idx = idx + 1
                t = mem[mem[(32 * idx) + 128] + 64] + t
                u = u
                continue 
            require mem[mem[(32 * idx) + 128] + 64] + u >= u
            if mem[mem[(32 * idx) + 128] + 64] <= 0:
                s = mem[mem[(32 * idx) + 128] + 64]
                t = mem[mem[(32 * idx) + 128] + 32]
                idx = idx + 1
                t = t
                u = mem[mem[(32 * idx) + 128] + 64] + u
                continue 
            require mem[mem[(32 * idx) + 128] + 64] + t >= t
            s = mem[mem[(32 * idx) + 128] + 64]
            t = mem[mem[(32 * idx) + 128] + 32]
            idx = idx + 1
            t = mem[mem[(32 * idx) + 128] + 64] + t
            u = mem[mem[(32 * idx) + 128] + 64] + u
            continue 
        if t <= u:
            sub_57299434[address(arg1)] = 0
        else:
            require u <= t
            sub_57299434[address(arg1)] = t - u
        if not sub_57299434[address(arg1)]:
            stor9[address(arg1)] = 0
            mem[0] = sha3(address(arg1), 9)
            idx = 0
            while sha3(sha3(address(arg1), 9)) + stor9[address(arg1)] > idx + sha3(mem[0]):
                stor[idx + sha3(mem[0])] = 0
                mem[0] = idx + sha3(mem[0])
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + stor[idx + sha3(mem[0])] > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                idx = idx + 1
                continue 
        if balanceOf[address(arg1)] <= sub_57299434[address(arg1)]:
            require 0 >= arg3
        else:
            require sub_57299434[address(arg1)] <= balanceOf[address(arg1)]
            require balanceOf[address(arg1)] - sub_57299434[address(arg1)] >= arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not sub_028c6013
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require not stor7[address(msg.sender)]
    require not stor7[address(arg1)]
    require arg2 <= balanceOf[address(msg.sender)]
    require balanceOf[address(msg.sender)] - arg2 >= sub_58634110[address(msg.sender)]
    mem[0] = msg.sender
    mem[32] = 9
    mem[64] = (32 * stor9[address(msg.sender)]) + 128
    mem[96] = stor9[address(msg.sender)]
    s = 128
    idx = 0
    while idx < stor9[address(msg.sender)]:
        mem[0] = sha3(address(msg.sender), 9)
        _67 = mem[64]
        mem[64] = mem[64] + (32 * stor9[address(msg.sender)][idx]) + 32
        mem[_67] = stor9[address(msg.sender)][idx]
        if stor9[address(msg.sender)][idx]:
            mem[0] = idx + sha3(sha3(address(msg.sender), 9))
            mem[_67 + 32] = stor9[address(msg.sender)][idx]
            t = _67 + 32
            u = sha3(mem[0])
            while _67 + (32 * stor9[address(msg.sender)][idx]) > t:
                mem[t + 32] = name[u]
                t = t + 32
                u = u + 1
                continue 
        mem[s] = _67
        s = s + 32
        idx = idx + 1
        continue 
    if mem[96] <= 0:
        require balanceOf[address(msg.sender)] >= arg2
    else:
        s = 0
        t = 0
        idx = 0
        t = 0
        u = 0
        while idx < mem[96]:
            require idx < mem[96]
            require 0 < mem[mem[(32 * idx) + 128]]
            require idx < mem[96]
            require 1 < mem[mem[(32 * idx) + 128]]
            if mem[mem[(32 * idx) + 128] + 64] <= 0:
                s = mem[mem[(32 * idx) + 128] + 64]
                t = mem[mem[(32 * idx) + 128] + 32]
                idx = idx + 1
                t = t
                u = u
                continue 
            if block.timestamp < mem[mem[(32 * idx) + 128] + 32]:
                require mem[mem[(32 * idx) + 128] + 64] + t >= t
                s = mem[mem[(32 * idx) + 128] + 64]
                t = mem[mem[(32 * idx) + 128] + 32]
                idx = idx + 1
                t = mem[mem[(32 * idx) + 128] + 64] + t
                u = u
                continue 
            require mem[mem[(32 * idx) + 128] + 64] + u >= u
            if mem[mem[(32 * idx) + 128] + 64] <= 0:
                s = mem[mem[(32 * idx) + 128] + 64]
                t = mem[mem[(32 * idx) + 128] + 32]
                idx = idx + 1
                t = t
                u = mem[mem[(32 * idx) + 128] + 64] + u
                continue 
            require mem[mem[(32 * idx) + 128] + 64] + t >= t
            s = mem[mem[(32 * idx) + 128] + 64]
            t = mem[mem[(32 * idx) + 128] + 32]
            idx = idx + 1
            t = mem[mem[(32 * idx) + 128] + 64] + t
            u = mem[mem[(32 * idx) + 128] + 64] + u
            continue 
        if t <= u:
            sub_57299434[address(msg.sender)] = 0
        else:
            require u <= t
            sub_57299434[address(msg.sender)] = t - u
        if not sub_57299434[address(msg.sender)]:
            stor9[address(msg.sender)] = 0
            mem[0] = sha3(address(msg.sender), 9)
            idx = 0
            while sha3(sha3(address(msg.sender), 9)) + stor9[address(msg.sender)] > idx + sha3(mem[0]):
                stor[idx + sha3(mem[0])] = 0
                mem[0] = idx + sha3(mem[0])
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + stor[idx + sha3(mem[0])] > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                idx = idx + 1
                continue 
        if balanceOf[address(msg.sender)] <= sub_57299434[address(msg.sender)]:
            require 0 >= arg2
        else:
            require sub_57299434[address(msg.sender)] <= balanceOf[address(msg.sender)]
            require balanceOf[address(msg.sender)] - sub_57299434[address(msg.sender)] >= arg2
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
}



}
