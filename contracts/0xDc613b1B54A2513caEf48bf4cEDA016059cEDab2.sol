contract main {




// =====================  Runtime code  =====================


const name = 'Ponder Korean Promo Token'

const totalSupply = 480000000 * 10^18

const decimals = 18

const symbol = 'PONKP'


mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint256 stor2;
mapping of uint8 stor3;
uint8 stor4; offset 160
address stor4;

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function kill() {
    require stor3[msg.sender]
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function freezeTransfers() {
    require stor3[msg.sender]
    if not uint8(stor4.field_160):
        uint8(stor4.field_160) = 1
        emit Freeze()
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function unfreezeTransfers() {
    require stor3[msg.sender]
    if uint8(stor4.field_160):
        uint8(stor4.field_160) = 0
        emit Unfreeze()
}

function setOwner(address arg1, bool arg2) {
    require stor3[msg.sender]
    if arg2 != 1:
        require arg1 != msg.sender
    stor3[address(arg1)] = uint8(arg2)
}

function transferrableBalanceOf(address arg1) {
    if stor2[address(arg1)] > balanceOf[address(arg1)]:
        return 0
    require balanceOf[address(arg1)] >= stor2[address(arg1)]
    return (balanceOf[address(arg1)] - stor2[address(arg1)])
}

function approve(address arg1, uint256 arg2, uint256 arg3) {
    if allowance[address(msg.sender)][address(arg1)] != arg2:
        return 0
    allowance[msg.sender][address(arg1)] = arg3
    emit Approval(arg3, msg.sender, arg1);
    return 1
}

function setHolds(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require stor3[msg.sender]
    require arg1.length == arg2.length
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 2
        stor2[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * arg1.length) + 160]
        idx = idx + 1
        continue 
}

function transfer(address arg1, uint256 arg2) {
    if uint8(stor4.field_160):
        return 0
    if stor2[address(msg.sender)] > balanceOf[address(msg.sender)]:
        require 0 >= arg2
    else:
        require balanceOf[address(msg.sender)] >= stor2[address(msg.sender)]
        require balanceOf[address(msg.sender)] - stor2[address(msg.sender)] >= arg2
    if arg2 > 0:
        if arg1 != msg.sender:
            require balanceOf[msg.sender] >= arg2
            balanceOf[msg.sender] -= arg2
            require balanceOf[arg1] <= -arg2 - 1
            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if uint8(stor4.field_160):
        return 0
    require arg3 <= allowance[address(arg1)][msg.sender]
    if stor2[address(arg1)] > balanceOf[address(arg1)]:
        require 0 >= arg3
    else:
        require balanceOf[address(arg1)] >= stor2[address(arg1)]
        require balanceOf[address(arg1)] - stor2[address(arg1)] >= arg3
    require allowance[address(arg1)][msg.sender] >= arg3
    allowance[address(arg1)][msg.sender] -= arg3
    if arg3 > 0:
        if arg1 != arg2:
            require balanceOf[address(arg1)] >= arg3
            balanceOf[address(arg1)] -= arg3
            require balanceOf[arg2] <= -arg3 - 1
            balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function initAccounts(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require stor3[msg.sender]
    require arg1.length == arg2.length
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg2.length
        if mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[mem[(32 * idx) + 140 len 20]]:
            require idx < arg1.length
            require idx < arg2.length
            require balanceOf[mem[(32 * idx) + 140 len 20]] >= mem[(32 * idx) + (32 * arg1.length) + 160]
            require balanceOf[address(stor4.field_0)] <= -balanceOf[mem[(32 * idx) + 140 len 20]] + mem[(32 * idx) + (32 * arg1.length) + 160] - 1
            balanceOf[address(stor4.field_0)] = balanceOf[mem[(32 * idx) + 140 len 20]] - mem[(32 * idx) + (32 * arg1.length) + 160] + balanceOf[address(stor4.field_0)]
            require balanceOf[address(stor4.field_0)] >= s
            balanceOf[address(stor4.field_0)] -= s
            require idx < arg2.length
            require idx < arg1.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 0
            balanceOf[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * arg1.length) + 160]
            if s > 0:
                require idx < arg1.length
                _80 = mem[(32 * idx) + 128]
                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = s
                emit Transfer(s, address(stor4.field_0), address(_80));
            s = s
            idx = idx + 1
            continue 
        require idx < arg2.length
        _55 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg1.length
        _59 = sha3(mem[(32 * idx) + 140 len 20], 0)
        require mem[(32 * idx) + (32 * arg1.length) + 160] >= balanceOf[mem[(32 * idx) + 140 len 20]]
        require balanceOf[address(stor4.field_0)] <= -1
        require balanceOf[address(stor4.field_0)] >= mem[(32 * idx) + (32 * arg1.length) + 160] - balanceOf[mem[(32 * idx) + 140 len 20]]
        balanceOf[address(stor4.field_0)] = balanceOf[address(stor4.field_0)] - mem[(32 * idx) + (32 * arg1.length) + 160] + balanceOf[mem[(32 * idx) + 140 len 20]]
        require idx < arg2.length
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 0
        balanceOf[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * arg1.length) + 160]
        if mem[(32 * idx) + (32 * arg1.length) + 160] - balanceOf[mem[(32 * idx) + 140 len 20]] <= 0:
            s = mem[(32 * idx) + (32 * arg1.length) + 160] - balanceOf[mem[(32 * idx) + 140 len 20]]
            idx = idx + 1
            continue 
        require idx < arg1.length
        _83 = mem[(32 * idx) + 128]
        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160] - balanceOf[mem[(32 * idx) + 140 len 20]]
        emit Transfer(mem[(32 * arg2.length) + (32 * arg1.length) + 160], address(stor4.field_0), address(_83));
        s = _55 - stor[_59]
        idx = idx + 1
        continue 
}

function initAccountsWithHolds(address[] arg1, uint256[] arg2, uint256[] arg3) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = arg3.length
    mem[(32 * arg2.length) + (32 * arg1.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require stor3[msg.sender]
    require arg1.length == arg3.length
    idx = 0
    while idx < arg1.length:
        require idx < arg3.length
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 2
        stor2[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * arg2.length) + (32 * arg1.length) + 192]
        idx = idx + 1
        continue 
    require stor3[msg.sender]
    require arg1.length == arg2.length
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg2.length
        if mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[mem[(32 * idx) + 140 len 20]]:
            require idx < arg1.length
            require idx < arg2.length
            require balanceOf[mem[(32 * idx) + 140 len 20]] >= mem[(32 * idx) + (32 * arg1.length) + 160]
            require balanceOf[address(stor4.field_0)] <= -balanceOf[mem[(32 * idx) + 140 len 20]] + mem[(32 * idx) + (32 * arg1.length) + 160] - 1
            balanceOf[address(stor4.field_0)] = balanceOf[mem[(32 * idx) + 140 len 20]] - mem[(32 * idx) + (32 * arg1.length) + 160] + balanceOf[address(stor4.field_0)]
            require balanceOf[address(stor4.field_0)] >= s
            balanceOf[address(stor4.field_0)] -= s
            require idx < arg2.length
            require idx < arg1.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 0
            balanceOf[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * arg1.length) + 160]
            if s > 0:
                require idx < arg1.length
                _137 = mem[(32 * idx) + 128]
                mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 192] = s
                emit Transfer(s, address(stor4.field_0), address(_137));
            s = s
            idx = idx + 1
            continue 
        require idx < arg2.length
        _112 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg1.length
        _116 = sha3(mem[(32 * idx) + 140 len 20], 0)
        require mem[(32 * idx) + (32 * arg1.length) + 160] >= balanceOf[mem[(32 * idx) + 140 len 20]]
        require balanceOf[address(stor4.field_0)] <= -1
        require balanceOf[address(stor4.field_0)] >= mem[(32 * idx) + (32 * arg1.length) + 160] - balanceOf[mem[(32 * idx) + 140 len 20]]
        balanceOf[address(stor4.field_0)] = balanceOf[address(stor4.field_0)] - mem[(32 * idx) + (32 * arg1.length) + 160] + balanceOf[mem[(32 * idx) + 140 len 20]]
        require idx < arg2.length
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 0
        balanceOf[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * arg1.length) + 160]
        if mem[(32 * idx) + (32 * arg1.length) + 160] - balanceOf[mem[(32 * idx) + 140 len 20]] <= 0:
            s = mem[(32 * idx) + (32 * arg1.length) + 160] - balanceOf[mem[(32 * idx) + 140 len 20]]
            idx = idx + 1
            continue 
        require idx < arg1.length
        _140 = mem[(32 * idx) + 128]
        mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 192] = mem[(32 * idx) + (32 * arg1.length) + 160] - balanceOf[mem[(32 * idx) + 140 len 20]]
        emit Transfer(mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 192], address(stor4.field_0), address(_140));
        s = _112 - stor[_116]
        idx = idx + 1
        continue 
}



}
