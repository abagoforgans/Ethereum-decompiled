contract main {




// =====================  Runtime code  =====================


address owner;
uint8 stor1; offset 160
address newOwner;
array of uint256 symbol;
array of uint256 name;
uint8 decimals;
uint256 _totalSupply;
mapping of uint256 balances;
mapping of uint256 lockOf;
mapping of uint256 allowance;
mapping of uint8 stor9;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return _totalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function decimals() {
    return decimals
}

function _totalSupply() {
    return _totalSupply
}

function admins(address arg1) {
    return bool(stor9[arg1])
}

function lockOf(address arg1) {
    return lockOf[address(arg1)]
}

function paused() {
    return bool(stor1)
}

function lockInfo(address arg1) {
    return lockOf[arg1]
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function newOwner() {
    return newOwner
}

function allowance(address arg1, address arg2) {
    require not stor1
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    newOwner = arg1
}

function unpause() {
    require msg.sender == owner
    require stor1
    stor1 = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not stor1
    stor1 = 1
    emit Pause()
}

function setAdmin(address arg1, bool arg2) {
    require msg.sender == owner
    stor9[address(arg1)] = uint8(arg2)
}

function acceptOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function approve(address arg1, uint256 arg2) {
    require not stor1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function lock(address arg1, uint256 arg2) {
    require not stor1
    if owner != msg.sender:
        require stor9[msg.sender]
    lockOf[address(arg1)] = arg2
    emit FrozenFunds(address(arg1), arg2);
}

function transfer(address arg1, uint256 arg2) {
    require not stor1
    require arg1
    require arg2
    require arg2 <= balances[address(msg.sender)]
    require balances[address(msg.sender)] - arg2 >= lockOf[address(msg.sender)]
    require arg2 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    require arg2 + balances[arg1] >= balances[arg1]
    balances[address(arg1)] = arg2 + balances[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sendInitialTokens(address arg1) {
    require msg.sender == owner
    require arg1
    require balances[stor0]
    require balances[stor0] <= balances[address(msg.sender)]
    require balances[address(msg.sender)] - balances[stor0] >= lockOf[address(msg.sender)]
    require balances[stor0] <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= balances[stor0]
    require balances[stor0] + balances[arg1] >= balances[arg1]
    balances[address(arg1)] = balances[stor0] + balances[arg1]
    emit Transfer(balances[stor0], msg.sender, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor1
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg2
    require arg3
    require arg3 <= balances[address(arg1)]
    require balances[address(arg1)] - arg3 >= lockOf[address(arg1)]
    require arg3 <= balances[address(arg1)]
    balances[address(arg1)] -= arg3
    require arg3 + balances[arg2] >= balances[arg2]
    balances[address(arg2)] = arg3 + balances[arg2]
    emit Transfer(arg3, arg1, arg2);
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    return 1
}

function sendTokensWithLock(address arg1, uint256 arg2, bool arg3) {
    require not stor1
    if owner != msg.sender:
        require stor9[msg.sender]
    require arg1
    require arg2
    require arg2 <= balances[address(msg.sender)]
    require balances[address(msg.sender)] - arg2 >= lockOf[address(msg.sender)]
    require arg2 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    require arg2 + balances[arg1] >= balances[arg1]
    balances[address(arg1)] = arg2 + balances[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    if arg3:
        require not stor1
        if owner != msg.sender:
            require stor9[msg.sender]
        lockOf[address(arg1)] += arg2
        emit FrozenFunds(address(arg1), arg2 + lockOf[address(arg1)]);
}

function batchLockArray(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require not stor1
    if msg.sender == owner:
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            require idx < arg2.length
            _36 = mem[(32 * idx) + (32 * arg1.length) + 160]
            require not stor1
            if msg.sender == owner:
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 7
                lockOf[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * arg1.length) + 160]
            else:
                require stor9[msg.sender]
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 7
                lockOf[address(mem[(32 * idx) + 128])] = mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + 140 len 20]
            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = _36
            emit FrozenFunds(mem[(32 * arg2.length) + (32 * arg1.length) + 160], _36);
            idx = idx + 1
            continue 
    else:
        require stor9[msg.sender]
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            require idx < arg2.length
            _37 = mem[(32 * idx) + (32 * arg1.length) + 160]
            require not stor1
            if msg.sender == owner:
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 7
                lockOf[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * arg1.length) + 160]
            else:
                require stor9[msg.sender]
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 7
                lockOf[address(mem[(32 * idx) + 128])] = mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + 140 len 20]
            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = _37
            emit FrozenFunds(mem[(32 * arg2.length) + (32 * arg1.length) + 160], _37);
            idx = idx + 1
            continue 
}

function batchVipWithLock(address[] arg1, uint256[] arg2, bool arg3) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require not stor1
    if msg.sender == owner:
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _88 = mem[(32 * idx) + 128]
            require idx < arg2.length
            _92 = mem[(32 * idx) + (32 * arg1.length) + 160]
            require not stor1
            if owner != msg.sender:
                require stor9[msg.sender]
            require mem[(32 * idx) + 140 len 20]
            require mem[(32 * idx) + (32 * arg1.length) + 160]
            require mem[(32 * idx) + (32 * arg1.length) + 160] <= balances[address(msg.sender)]
            require balances[address(msg.sender)] - mem[(32 * idx) + (32 * arg1.length) + 160] >= lockOf[address(msg.sender)]
            require mem[(32 * idx) + (32 * arg1.length) + 160] <= balances[address(msg.sender)]
            balances[address(msg.sender)] -= mem[(32 * idx) + (32 * arg1.length) + 160]
            require mem[(32 * idx) + (32 * arg1.length) + 160] + balances[mem[(32 * idx) + 140 len 20]] >= balances[mem[(32 * idx) + 140 len 20]]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 6
            balances[address(mem[(32 * idx) + 128])] = mem[(32 * idx) + (32 * arg1.length) + 160] + balances[mem[(32 * idx) + 140 len 20]]
            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
            emit Transfer(mem[(32 * arg2.length) + (32 * arg1.length) + 160], msg.sender, address(_88));
            if arg3:
                require not stor1
                if owner != msg.sender:
                    require stor9[msg.sender]
                mem[0] = address(_88)
                mem[32] = 7
                lockOf[address(_88)] += _92
                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = address(_88)
                mem[(32 * arg2.length) + (32 * arg1.length) + 192] = _92 + lockOf[address(_88)]
                emit FrozenFunds(address(_88), _92 + lockOf[address(_88)]);
            idx = idx + 1
            continue 
    else:
        require stor9[msg.sender]
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _90 = mem[(32 * idx) + 128]
            require idx < arg2.length
            _93 = mem[(32 * idx) + (32 * arg1.length) + 160]
            require not stor1
            if owner != msg.sender:
                require stor9[msg.sender]
            require mem[(32 * idx) + 140 len 20]
            require mem[(32 * idx) + (32 * arg1.length) + 160]
            require mem[(32 * idx) + (32 * arg1.length) + 160] <= balances[address(msg.sender)]
            require balances[address(msg.sender)] - mem[(32 * idx) + (32 * arg1.length) + 160] >= lockOf[address(msg.sender)]
            require mem[(32 * idx) + (32 * arg1.length) + 160] <= balances[address(msg.sender)]
            balances[address(msg.sender)] -= mem[(32 * idx) + (32 * arg1.length) + 160]
            require mem[(32 * idx) + (32 * arg1.length) + 160] + balances[mem[(32 * idx) + 140 len 20]] >= balances[mem[(32 * idx) + 140 len 20]]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 6
            balances[address(mem[(32 * idx) + 128])] = mem[(32 * idx) + (32 * arg1.length) + 160] + balances[mem[(32 * idx) + 140 len 20]]
            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
            emit Transfer(mem[(32 * arg2.length) + (32 * arg1.length) + 160], msg.sender, address(_90));
            if arg3:
                require not stor1
                if owner != msg.sender:
                    require stor9[msg.sender]
                mem[0] = address(_90)
                mem[32] = 7
                lockOf[address(_90)] += _93
                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = address(_90)
                mem[(32 * arg2.length) + (32 * arg1.length) + 192] = _93 + lockOf[address(_90)]
                emit FrozenFunds(address(_90), _93 + lockOf[address(_90)]);
            idx = idx + 1
            continue 
}



}
