contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
address stor2;
array of uint256 stor3;
array of uint256 stor4;
uint8 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;

function _fallback() payable {
    bool(stor3.length) = 0
    stor3.length.field_1 = 8
    stor3.length.field_8 = 'Beercoin' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor4.length) = 0
    stor4.length.field_1 = 4
    stor4.length.field_224 = 4036988346
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor5 = 18
    stor6 = 15496 * 10^6 * 10^stor5
    stor7 = 20800 * 10^6
    stor8 = 0
    require not msg.value
    stor2 = msg.sender
    stor0[stor2] = stor6
    return code.data[611 len 7213]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 unproducedCaps;
uint256 producedCaps;
mapping of uint8 stor9;

function name() {
    return name[0 len name.length]
}

function producedCaps() {
    return producedCaps
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function redemptionLocked(address arg1) {
    return bool(stor9[arg1])
}

function unproducedCaps() {
    return unproducedCaps
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

function lockRedemption(bool arg1) {
    stor9[address(msg.sender)] = uint8(arg1)
    return 1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function burn(uint256 arg1) {
    require msg.sender == owner
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burn(arg1);
    return 1
}

function redeem(address arg1, uint256 arg2) {
    require msg.sender == owner
    require not stor9[address(arg1)]
    require owner
    require owner != this.address
    require balanceOf[address(arg1)] >= arg2
    require balanceOf[stor2] + arg2 > balanceOf[stor2]
    balanceOf[address(arg1)] -= arg2
    balanceOf[stor2] += arg2
    emit Transfer(arg2, arg1, owner);
    require balanceOf[address(arg1)] + balanceOf[stor2] == balanceOf[address(arg1)] + balanceOf[stor2]
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg1 != this.address
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require arg2 != this.address
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    require balanceOf[address(arg1)] + balanceOf[address(arg2)] == balanceOf[address(arg1)] + balanceOf[address(arg2)]
    return 1
}

function produce(uint256 arg1) {
    require msg.sender == owner
    require arg1 <= unproducedCaps
    s = 0
    idx = 0
    s = 0
    while idx < arg1:
        require idx < arg1
        if not producedCaps + idx % 10000:
            mem[idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'D'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'D'"), 0) - 256
            s = producedCaps + idx
            idx = idx + 1
            s = s + 10000
            continue 
        if not producedCaps + idx % 1000:
            mem[idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'G'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'G'"), 0) - 256
            s = producedCaps + idx
            idx = idx + 1
            s = s + 100
            continue 
        if producedCaps + idx % 10:
            mem[idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'B'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'B'"), 0) - 256
            s = producedCaps + idx
            idx = idx + 1
            s = s + 1
            continue 
        mem[idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'S'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'S'"), 0) - 256
        s = producedCaps + idx
        idx = idx + 1
        s = s + 10
        continue 
    unproducedCaps -= arg1
    producedCaps += arg1
    totalSupply += s * 10^decimals
    balanceOf[address(this.address)] += s * 10^decimals
    emit Produce(s * 10^decimals, Array(len=arg1, data=mem[160 len arg1]));
    return 1
}

function redeemMany(address[] arg1, uint256[] arg2) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    require arg1.length == arg2.length
    idx = 0
    while uint16(idx) < arg1.length:
        require uint16(idx) < arg1.length
        _28 = mem[(32 * uint16(idx)) + 128]
        require uint16(idx) < arg2.length
        require msg.sender == owner
        require not stor9[mem[(32 * uint16(idx)) + 140 len 20]]
        require owner
        require owner != this.address
        require balanceOf[address(mem[(32 * uint16(idx)) + 128])] >= mem[(32 * uint16(idx)) + (32 * arg1.length) + 160]
        require balanceOf[stor2] + mem[(32 * uint16(idx)) + (32 * arg1.length) + 160] > balanceOf[stor2]
        _36 = sha3(address(mem[(32 * uint16(idx)) + 128]), 0)
        balanceOf[address(mem[(32 * uint16(idx)) + 128])] -= mem[(32 * uint16(idx)) + (32 * arg1.length) + 160]
        balanceOf[stor2] += mem[(32 * uint16(idx)) + (32 * arg1.length) + 160]
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * uint16(idx)) + (32 * arg1.length) + 160]
        emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], address(_28), owner);
        mem[0] = address(_28)
        mem[32] = 0
        require balanceOf[address(_28)] + balanceOf[stor2] == stor[_36] + balanceOf[stor2]
        idx = idx + 1
        continue 
    return 1
}

function transferMany(address[] arg1, uint256[] arg2) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    require arg1.length == arg2.length
    idx = 0
    while uint16(idx) < arg1.length:
        require uint16(idx) < arg1.length
        _27 = mem[(32 * uint16(idx)) + 128]
        require uint16(idx) < arg2.length
        require mem[(32 * uint16(idx)) + 140 len 20]
        require mem[(32 * uint16(idx)) + 140 len 20] != this.address
        require balanceOf[address(msg.sender)] >= mem[(32 * uint16(idx)) + (32 * arg1.length) + 160]
        require balanceOf[address(mem[(32 * uint16(idx)) + 128])] + mem[(32 * uint16(idx)) + (32 * arg1.length) + 160] > balanceOf[address(mem[(32 * uint16(idx)) + 128])]
        _33 = sha3(address(mem[(32 * uint16(idx)) + 128]), 0)
        balanceOf[address(msg.sender)] -= mem[(32 * uint16(idx)) + (32 * arg1.length) + 160]
        balanceOf[address(mem[(32 * uint16(idx)) + 128])] += mem[(32 * uint16(idx)) + (32 * arg1.length) + 160]
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * uint16(idx)) + (32 * arg1.length) + 160]
        emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], msg.sender, address(_27));
        mem[0] = msg.sender
        mem[32] = 0
        require balanceOf[address(msg.sender)] + balanceOf[address(_27)] == balanceOf[address(msg.sender)] + stor[_33]
        idx = idx + 1
        continue 
    return 1
}

function scan(address arg1, bytes1 arg2) {
    require msg.sender == owner
    require arg1
    require arg1 != this.address
    if Mask(8, 248, arg2) == 'D':
        require balanceOf[address(this.address)] >= 10000 * 10^decimals
        require balanceOf[address(arg1)] + (10000 * 10^decimals) > balanceOf[address(arg1)]
        balanceOf[address(this.address)] += -10000 * 10^decimals
        balanceOf[address(arg1)] += 10000 * 10^decimals
        emit Transfer((10000 * 10^decimals), this.address, arg1);
    else:
        if Mask(8, 248, arg2) == 'G':
            require balanceOf[address(this.address)] >= 100 * 10^decimals
            require balanceOf[address(arg1)] + (100 * 10^decimals) > balanceOf[address(arg1)]
            balanceOf[address(this.address)] += -100 * 10^decimals
            balanceOf[address(arg1)] += 100 * 10^decimals
            emit Transfer((100 * 10^decimals), this.address, arg1);
        else:
            if Mask(8, 248, arg2) != 'S':
                require balanceOf[address(this.address)] >= 10^decimals
                require balanceOf[address(arg1)] + 10^decimals > balanceOf[address(arg1)]
                balanceOf[address(this.address)] -= 10^decimals
                balanceOf[address(arg1)] += 10^decimals
                emit Transfer(10^decimals, this.address, arg1);
            else:
                require balanceOf[address(this.address)] >= 10 * 10^decimals
                require balanceOf[address(arg1)] + (10 * 10^decimals) > balanceOf[address(arg1)]
                balanceOf[address(this.address)] += -10 * 10^decimals
                balanceOf[address(arg1)] += 10 * 10^decimals
                emit Transfer((10 * 10^decimals), this.address, arg1);
    require balanceOf[address(this.address)] + balanceOf[address(arg1)] == balanceOf[address(this.address)] + balanceOf[address(arg1)]
    return 1
}

function scanMany(address[] arg1, bytes1[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    require arg1.length == arg2.length
    idx = 0
    while uint16(idx) < arg1.length:
        require uint16(idx) < arg1.length
        _60 = mem[(32 * uint16(idx)) + 128]
        require uint16(idx) < arg2.length
        require msg.sender == owner
        require mem[(32 * uint16(idx)) + 140 len 20]
        require mem[(32 * uint16(idx)) + 140 len 20] != this.address
        if Mask(8, 248, mem[(32 * uint16(idx)) + (32 * arg1.length) + 160]) == 'D':
            require balanceOf[address(this.address)] >= 10000 * 10^decimals
            require balanceOf[address(mem[(32 * uint16(idx)) + 128])] + (10000 * 10^decimals) > balanceOf[address(mem[(32 * uint16(idx)) + 128])]
            _71 = sha3(address(mem[(32 * uint16(idx)) + 128]), 0)
            balanceOf[address(this.address)] += -10000 * 10^decimals
            balanceOf[address(mem[(32 * uint16(idx)) + 128])] += 10000 * 10^decimals
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 10000 * 10^decimals
            emit Transfer((10000 * 10^decimals), this.address, address(_60));
            mem[0] = this.address
            mem[32] = 0
            if balanceOf[address(this.address)] + balanceOf[address(_60)] == balanceOf[address(this.address)] + stor[_71]:
                idx = idx + 1
                continue 
        else:
            if Mask(8, 248, mem[(32 * uint16(idx)) + (32 * arg1.length) + 160]) == 'G':
                require balanceOf[address(this.address)] >= 100 * 10^decimals
                require balanceOf[address(mem[(32 * uint16(idx)) + 128])] + (100 * 10^decimals) > balanceOf[address(mem[(32 * uint16(idx)) + 128])]
                _83 = sha3(address(mem[(32 * uint16(idx)) + 128]), 0)
                balanceOf[address(this.address)] += -100 * 10^decimals
                balanceOf[address(mem[(32 * uint16(idx)) + 128])] += 100 * 10^decimals
                mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 100 * 10^decimals
                emit Transfer((100 * 10^decimals), this.address, address(_60));
                mem[0] = this.address
                mem[32] = 0
                if balanceOf[address(this.address)] + balanceOf[address(_60)] == balanceOf[address(this.address)] + stor[_83]:
                    idx = idx + 1
                    continue 
            else:
                if Mask(8, 248, mem[(32 * uint16(idx)) + (32 * arg1.length) + 160]) != 'S':
                    require balanceOf[address(this.address)] >= 10^decimals
                    require balanceOf[address(mem[(32 * uint16(idx)) + 128])] + 10^decimals > balanceOf[address(mem[(32 * uint16(idx)) + 128])]
                    _91 = sha3(address(mem[(32 * uint16(idx)) + 128]), 0)
                    balanceOf[address(this.address)] -= 10^decimals
                    balanceOf[address(mem[(32 * uint16(idx)) + 128])] += 10^decimals
                    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 10^decimals
                    emit Transfer(10^decimals, this.address, address(_60));
                    mem[0] = this.address
                    mem[32] = 0
                    if balanceOf[address(this.address)] + balanceOf[address(_60)] == balanceOf[address(this.address)] + stor[_91]:
                        idx = idx + 1
                        continue 
                else:
                    require balanceOf[address(this.address)] >= 10 * 10^decimals
                    require balanceOf[address(mem[(32 * uint16(idx)) + 128])] + (10 * 10^decimals) > balanceOf[address(mem[(32 * uint16(idx)) + 128])]
                    _99 = sha3(address(mem[(32 * uint16(idx)) + 128]), 0)
                    balanceOf[address(this.address)] += -10 * 10^decimals
                    balanceOf[address(mem[(32 * uint16(idx)) + 128])] += 10 * 10^decimals
                    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 10 * 10^decimals
                    emit Transfer((10 * 10^decimals), this.address, address(_60));
                    mem[0] = this.address
                    mem[32] = 0
                    if balanceOf[address(this.address)] + balanceOf[address(_60)] == balanceOf[address(this.address)] + stor[_99]:
                        idx = idx + 1
                        continue 
        revert
    return 1
}



}
