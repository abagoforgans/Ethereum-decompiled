contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;
array of uint256 symbol;
array of uint256 name;
uint8 decimals;
uint256 stor5;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint256 stor8;
array of struct stor9;

function name() payable {
    return name[0 len name.length]
}

function decimals() payable {
    return decimals
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function newOwner() payable {
    return newOwner
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function totalSupply() payable {
    return (stor5 * 10^decimals)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    newOwner = arg1
}

function acceptOwnership() payable {
    require msg.sender == newOwner
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function distributeTokens(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    require arg1
    require arg1 != this.address
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    if not arg3:
        require stor8[address(arg1)] + arg2 >= stor8[address(arg1)]
        stor8[address(arg1)] += arg2
    else:
        stor9[address(arg1)].field_0++
        stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 = arg3
        stor9[address(arg1)][stor9[address(arg1)].field_0].field_256 = arg2
        stor9[address(arg1)][stor9[address(arg1)].field_0].field_512 = 0
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        if stor8[address(msg.sender)] < arg2:
            mem[0] = msg.sender
            mem[32] = 9
            mem[64] = (32 * stor9[address(msg.sender)].field_0) + 128
            mem[96] = stor9[address(msg.sender)].field_0
            s = 128
            idx = 0
            while idx < stor9[address(msg.sender)].field_0:
                mem[0] = sha3(address(msg.sender), 9)
                _65 = mem[64]
                mem[64] = mem[64] + 96
                mem[_65] = stor9[address(msg.sender)][idx].field_0
                mem[_65 + 32] = stor9[address(msg.sender)][idx].field_256
                mem[_65 + 64] = bool(stor9[address(msg.sender)][idx].field_512)
                mem[s] = _65
                s = s + 32
                idx = idx + 1
                continue 
            _106 = mem[96]
            idx = 0
            s = 0
            while idx < _106:
                require idx < mem[96]
                if mem[mem[(32 * idx) + 128]] >= block.timestamp:
                    _106 = mem[96]
                    idx = idx + 1
                    s = s
                    continue 
                require idx < mem[96]
                if mem[mem[(32 * idx) + 128] + 64]:
                    _106 = mem[96]
                    idx = idx + 1
                    s = s
                    continue 
                require idx < mem[96]
                _118 = mem[mem[(32 * idx) + 128] + 32]
                require s + mem[mem[(32 * idx) + 128] + 32] >= s
                require idx < mem[96]
                mem[mem[(32 * idx) + 128] + 64] = 1
                _123 = mem[64]
                mem[64] = mem[64] + 96
                require idx < mem[96]
                mem[_123] = mem[mem[(32 * idx) + 128]]
                require idx < mem[96]
                mem[_123 + 32] = mem[mem[(32 * idx) + 128] + 32]
                require idx < mem[96]
                mem[_123 + 64] = 1
                mem[32] = 9
                require idx < stor9[address(msg.sender)].field_0
                mem[0] = sha3(address(msg.sender), 9)
                stor9[address(msg.sender)][idx].field_0 = mem[_123]
                stor9[address(msg.sender)][idx].field_256 = mem[_123 + 32]
                stor9[address(msg.sender)][idx].field_512 = 1
                _106 = mem[96]
                idx = idx + 1
                s = s + _118
                continue 
            require stor8[address(msg.sender)] + s >= stor8[address(msg.sender)]
            stor8[address(msg.sender)] += s
            require stor8[address(msg.sender)] >= arg2
        require arg2 <= stor8[address(msg.sender)]
        stor8[address(msg.sender)] -= arg2
    require arg1
    require arg1 != this.address
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        if stor8[address(arg1)] < arg3:
            mem[0] = arg1
            mem[32] = 9
            mem[64] = (32 * stor9[address(arg1)].field_0) + 128
            mem[96] = stor9[address(arg1)].field_0
            s = 128
            idx = 0
            while idx < stor9[address(arg1)].field_0:
                mem[0] = sha3(address(arg1), 9)
                _83 = mem[64]
                mem[64] = mem[64] + 96
                mem[_83] = stor9[address(arg1)][idx].field_0
                mem[_83 + 32] = stor9[address(arg1)][idx].field_256
                mem[_83 + 64] = bool(stor9[address(arg1)][idx].field_512)
                mem[s] = _83
                s = s + 32
                idx = idx + 1
                continue 
            _130 = mem[96]
            idx = 0
            s = 0
            while idx < _130:
                require idx < mem[96]
                if mem[mem[(32 * idx) + 128]] >= block.timestamp:
                    _130 = mem[96]
                    idx = idx + 1
                    s = s
                    continue 
                require idx < mem[96]
                if mem[mem[(32 * idx) + 128] + 64]:
                    _130 = mem[96]
                    idx = idx + 1
                    s = s
                    continue 
                require idx < mem[96]
                _142 = mem[mem[(32 * idx) + 128] + 32]
                require s + mem[mem[(32 * idx) + 128] + 32] >= s
                require idx < mem[96]
                mem[mem[(32 * idx) + 128] + 64] = 1
                _147 = mem[64]
                mem[64] = mem[64] + 96
                require idx < mem[96]
                mem[_147] = mem[mem[(32 * idx) + 128]]
                require idx < mem[96]
                mem[_147 + 32] = mem[mem[(32 * idx) + 128] + 32]
                require idx < mem[96]
                mem[_147 + 64] = 1
                mem[32] = 9
                require idx < stor9[address(arg1)].field_0
                mem[0] = sha3(address(arg1), 9)
                stor9[address(arg1)][idx].field_0 = mem[_147]
                stor9[address(arg1)][idx].field_256 = mem[_147 + 32]
                stor9[address(arg1)][idx].field_512 = 1
                _130 = mem[96]
                idx = idx + 1
                s = s + _142
                continue 
            require stor8[address(arg1)] + s >= stor8[address(arg1)]
            stor8[address(arg1)] += s
            require stor8[address(arg1)] >= arg3
        require arg3 <= stor8[address(arg1)]
        stor8[address(arg1)] -= arg3
    require arg2
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
