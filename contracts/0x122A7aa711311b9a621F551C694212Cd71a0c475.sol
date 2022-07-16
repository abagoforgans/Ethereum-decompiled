contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor7;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function paused() {
    return bool(stor0)
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
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
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function unpause() {
    require msg.sender == owner
    require stor0
    stor0 = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not stor0
    stor0 = 1
    emit Pause()
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function freezeAccount(address arg1, bool arg2) {
    require msg.sender == owner
    stor7[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function approve(address arg1, uint256 arg2) {
    require not stor0
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require not stor0
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require not stor0
    if arg2 <= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] -= arg2
    else:
        allowance[msg.sender][address(arg1)] = 0
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor0
    require arg2 > 0
    require arg2 <= balanceOf[msg.sender]
    require not stor7[address(arg1)]
    require not stor7[msg.sender]
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor0
    require arg3 > 0
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    require not stor7[address(arg2)]
    require not stor7[address(arg1)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2, bytes arg3) {
    require not stor0
    require arg2 > 0
    require not stor7[address(arg1)]
    require not stor7[msg.sender]
    if ext_code.size(arg1) > 0:
        require ext_code.size(arg1)
        call arg1.tokenFallback(address arg1, uint256 arg2, bytes arg3) with:
             gas gas_remaining wei
            args msg.sender, arg2, Array(len=arg3.length, data=arg3[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, Array(len=arg3.length, data=arg3[all]), msg.sender, arg1);
    return 1
}

function collectTokens(address[] arg1, uint256[] arg2) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[64] = (32 * arg2.length) + (32 * arg1.length) + 160
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    require 0 < arg1.length
    require arg1.length == arg2.length
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < mem[(32 * arg1.length) + 128]
        require mem[(32 * arg1.length) + (32 * idx) + 160] > 0
        require idx < mem[96]
        require mem[(32 * idx) + 140 len 20]
        require idx < mem[96]
        require not stor7[mem[(32 * idx) + 140 len 20]]
        require idx < mem[(32 * arg1.length) + 128]
        require idx < mem[96]
        require balanceOf[mem[(32 * idx) + 140 len 20]] >= mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < mem[(32 * arg1.length) + 128]
        require idx < mem[96]
        require mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[mem[(32 * idx) + 140 len 20]]
        require idx < mem[96]
        mem[32] = 5
        balanceOf[mem[(32 * idx) + 140 len 20]] -= mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < mem[(32 * arg1.length) + 128]
        _72 = mem[(32 * arg1.length) + (32 * idx) + 160]
        require mem[(32 * arg1.length) + (32 * idx) + 160] + s >= s
        require idx < mem[96]
        _74 = mem[(32 * idx) + 128]
        mem[0] = mem[(32 * idx) + 140 len 20]
        require idx < mem[(32 * arg1.length) + 128]
        _79 = mem[64]
        mem[mem[64]] = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[mem[64] + 32] = 64
        mem[mem[64] + 64] = mem[96]
        _81 = mem[96]
        t = 0
        while t < _81:
            mem[t + mem[64] + 96] = mem[t + 128]
            t = t + 32
            continue 
        if not _81 % 32:
            emit Transfer(address arg1, address arg2, uint256 arg3, bytes arg4):
                          mem[mem[64] len _81 + _79 + -mem[64] + 96],
                          address(_74),
                          msg.sender,
        else:
            mem[floor32(_81) + _79 + 96] = mem[floor32(_81) + _79 + -(_81 % 32) + 128 len _81 % 32]
            emit Transfer(address arg1, address arg2, uint256 arg3, bytes arg4):
                          mem[mem[64] len floor32(_81) + _79 + -mem[64] + 128],
                          address(_74),
                          msg.sender,
        idx = idx + 1
        s = _72 + s
        continue 
    require s + balanceOf[msg.sender] >= balanceOf[msg.sender]
    balanceOf[msg.sender] += s
    return 1
}

function distributeAirdrop(address[] arg1, uint256[] arg2) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[64] = (32 * arg2.length) + (32 * arg1.length) + 160
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg1.length > 0
    require arg1.length == arg2.length
    require not stor7[msg.sender]
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg2.length
        require mem[(32 * arg1.length) + (32 * idx) + 160] > 0
        require idx < arg1.length
        require mem[(32 * idx) + 140 len 20]
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 7
        require not stor7[mem[(32 * idx) + 140 len 20]]
        require idx < arg2.length
        require mem[(32 * arg1.length) + (32 * idx) + 160] + s >= s
        idx = idx + 1
        s = mem[(32 * arg1.length) + (32 * idx) + 160] + s
        continue 
    mem[0] = msg.sender
    mem[32] = 5
    require _64 * arg1.length <= balanceOf[msg.sender]
    idx = 0
    while idx < arg1.length:
        require idx < mem[(32 * arg1.length) + 128]
        require idx < mem[96]
        require mem[(32 * idx) + (32 * arg1.length) + 160] + balanceOf[mem[(32 * idx) + 140 len 20]] >= balanceOf[mem[(32 * idx) + 140 len 20]]
        require idx < mem[96]
        mem[32] = 5
        balanceOf[mem[(32 * idx) + 140 len 20]] += mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < mem[96]
        _95 = mem[(32 * idx) + 128]
        mem[0] = mem[(32 * idx) + 140 len 20]
        require idx < mem[(32 * arg1.length) + 128]
        _100 = mem[64]
        mem[mem[64]] = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[mem[64] + 32] = 64
        mem[mem[64] + 64] = mem[96]
        _102 = mem[96]
        s = 0
        while s < _102:
            mem[s + mem[64] + 96] = mem[s + 128]
            s = s + 32
            continue 
        if not _102 % 32:
            emit Transfer(address arg1, address arg2, uint256 arg3, bytes arg4):
                          mem[mem[64] len _102 + _100 + -mem[64] + 96],
                          msg.sender,
                          address(_95),
        else:
            mem[floor32(_102) + _100 + 96] = mem[floor32(_102) + _100 + -(_102 % 32) + 128 len _102 % 32]
            emit Transfer(address arg1, address arg2, uint256 arg3, bytes arg4):
                          mem[mem[64] len floor32(_102) + _100 + -mem[64] + 128],
                          msg.sender,
                          address(_95),
        idx = idx + 1
        continue 
    require _64 * arg1.length <= balanceOf[msg.sender]
    balanceOf[msg.sender] += -1 * _64 * arg1.length
    return 1
}

function distributeAirdrop(address[] arg1, uint256 arg2) {
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 > 0
    require 0 < arg1.length
    require not stor7[msg.sender]
    if not arg2:
        mem[0] = msg.sender
        mem[32] = 5
        require 0 <= balanceOf[msg.sender]
        idx = 0
        while idx < arg1.length:
            require idx < mem[96]
            require mem[(32 * idx) + 140 len 20]
            require idx < mem[96]
            require not stor7[mem[(32 * idx) + 140 len 20]]
            require idx < mem[96]
            require arg2 + balanceOf[mem[(32 * idx) + 140 len 20]] >= balanceOf[mem[(32 * idx) + 140 len 20]]
            require idx < mem[96]
            mem[32] = 5
            balanceOf[mem[(32 * idx) + 140 len 20]] += arg2
            require idx < mem[96]
            _101 = mem[(32 * idx) + 128]
            mem[0] = mem[(32 * idx) + 140 len 20]
            _104 = mem[64]
            mem[mem[64]] = arg2
            mem[mem[64] + 32] = 64
            mem[mem[64] + 64] = mem[96]
            _106 = mem[96]
            s = 0
            while s < _106:
                mem[s + mem[64] + 96] = mem[s + 128]
                s = s + 32
                continue 
            if not _106 % 32:
                emit Transfer(address arg1, address arg2, uint256 arg3, bytes arg4):
                              mem[mem[64] len _106 + _104 + -mem[64] + 96],
                              msg.sender,
                              address(_101),
            else:
                mem[floor32(_106) + _104 + 96] = mem[floor32(_106) + _104 + -(_106 % 32) + 128 len _106 % 32]
                emit Transfer(address arg1, address arg2, uint256 arg3, bytes arg4):
                              mem[mem[64] len floor32(_106) + _104 + -mem[64] + 128],
                              msg.sender,
                              address(_101),
            idx = idx + 1
            continue 
        if 0 <= balanceOf[msg.sender]:
            return 1
        revert
    require arg1.length * arg2 / arg2 == arg1.length
    mem[0] = msg.sender
    mem[32] = 5
    require arg1.length * arg2 <= balanceOf[msg.sender]
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        require mem[(32 * idx) + 140 len 20]
        require idx < mem[96]
        require not stor7[mem[(32 * idx) + 140 len 20]]
        require idx < mem[96]
        require arg2 + balanceOf[mem[(32 * idx) + 140 len 20]] >= balanceOf[mem[(32 * idx) + 140 len 20]]
        require idx < mem[96]
        mem[32] = 5
        balanceOf[mem[(32 * idx) + 140 len 20]] += arg2
        require idx < mem[96]
        _95 = mem[(32 * idx) + 128]
        mem[0] = mem[(32 * idx) + 140 len 20]
        _98 = mem[64]
        mem[mem[64]] = arg2
        mem[mem[64] + 32] = 64
        mem[mem[64] + 64] = mem[96]
        _100 = mem[96]
        s = 0
        while s < _100:
            mem[s + mem[64] + 96] = mem[s + 128]
            s = s + 32
            continue 
        if not _100 % 32:
            emit Transfer(address arg1, address arg2, uint256 arg3, bytes arg4):
                          mem[mem[64] len _100 + _98 + -mem[64] + 96],
                          msg.sender,
                          address(_95),
        else:
            mem[floor32(_100) + _98 + 96] = mem[floor32(_100) + _98 + -(_100 % 32) + 128 len _100 % 32]
            emit Transfer(address arg1, address arg2, uint256 arg3, bytes arg4):
                          mem[mem[64] len floor32(_100) + _98 + -mem[64] + 128],
                          msg.sender,
                          address(_95),
        idx = idx + 1
        continue 
    require arg1.length * arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] += -1 * arg1.length * arg2
    return 1
}



}
