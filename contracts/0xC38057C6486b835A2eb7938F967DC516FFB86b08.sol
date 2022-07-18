contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function frozens(address arg1, uint256 arg2, uint256 arg3) {
    require arg2 < stor7[arg1].field_0
    require arg3 < 2
    return stor[arg3 + (2 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor7', 7))].field_0
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

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    return 1
}

function burn(uint256 arg1) {
    require arg1 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(arg1)]
    require arg2 <= allowance[address(arg1)][msg.sender]
    balanceOf[address(arg1)] -= arg2
    allowance[address(arg1)][msg.sender] -= arg2
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function unfreeze(address arg1) {
    require msg.sender == owner
    stor7[address(arg1)].field_0 = 0
    idx = 0
    while 2 * stor7[address(arg1)].field_0 > idx:
        stor7[address(arg1)][idx].field_0 = 0
        stor7[address(arg1)][idx].field_256 = 0
        idx = idx + 2
        continue 
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[msg.sender][address(arg1)] = arg2
    require ext_code.size(arg1)
    call arg1.receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args msg.sender, arg2, this.address, Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function frozensTotal(address arg1) {
    idx = 0
    s = 0
    while idx < stor7[address(arg1)].field_0:
        require idx < stor7[address(arg1)].field_0
        if block.timestamp > stor7[address(arg1)][idx].field_0:
            mem[0] = arg1
            mem[32] = 7
            idx = idx + 1
            s = s
            continue 
        require idx < stor7[address(arg1)].field_0
        mem[0] = arg1
        mem[32] = 7
        idx = idx + 1
        s = s + stor7[address(arg1)][idx].field_256
        continue 
    return s
}

function freeze(address arg1, uint256 arg2, uint256 arg3) {
    require msg.sender == owner
    mem[96] = arg3
    mem[128] = arg2
    stor7[address(arg1)].field_0++
    s = 2 * stor7[address(arg1)].field_0
    idx = 96
    while 160 > idx:
        stor7[address(arg1)][s].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (2 * stor7[address(arg1)].field_0) + 2
    while (2 * stor7[address(arg1)].field_0) + 2 > idx:
        stor7[address(arg1)][idx].field_0 = 0
        idx = idx + 1
        continue 
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    if stor7[address(msg.sender)].field_0 > 0:
        idx = 0
        s = 0
        while idx < stor7[address(msg.sender)].field_0:
            require idx < stor7[address(msg.sender)].field_0
            if block.timestamp > stor7[address(msg.sender)][idx].field_0:
                mem[0] = msg.sender
                mem[32] = 7
                idx = idx + 1
                s = s
                continue 
            require idx < stor7[address(msg.sender)].field_0
            mem[0] = msg.sender
            mem[32] = 7
            idx = idx + 1
            s = s + stor7[address(msg.sender)][idx].field_256
            continue 
        require arg2 <= balanceOf[address(msg.sender)] - s
    balanceOf[msg.sender] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require balanceOf[address(arg1)] + balanceOf[msg.sender] == balanceOf[msg.sender] + balanceOf[address(arg1)]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    if stor7[address(arg1)].field_0 > 0:
        idx = 0
        s = 0
        while idx < stor7[address(arg1)].field_0:
            require idx < stor7[address(arg1)].field_0
            if block.timestamp > stor7[address(arg1)][idx].field_0:
                mem[0] = arg1
                mem[32] = 7
                idx = idx + 1
                s = s
                continue 
            require idx < stor7[address(arg1)].field_0
            mem[0] = arg1
            mem[32] = 7
            idx = idx + 1
            s = s + stor7[address(arg1)][idx].field_256
            continue 
        require arg3 <= balanceOf[address(arg1)] - s
    balanceOf[arg1] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    require balanceOf[address(arg2)] + balanceOf[arg1] == balanceOf[arg1] + balanceOf[address(arg2)]
    return 1
}

function frozensDetail(address arg1) {
    mem[0] = arg1
    mem[32] = 7
    mem[64] = (32 * stor7[address(arg1)].field_0) + 128
    mem[96] = stor7[address(arg1)].field_0
    s = 128
    idx = 0
    while idx < stor7[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 7)
        _12 = mem[64]
        mem[64] = mem[64] + 64
        mem[_12] = stor7[address(arg1)][idx].field_0
        t = _12
        s = sha3(sha3(address(arg1), 7)) + (2 * s)
        while _12 + 64 > t + 32:
            mem[t + 32] = name[s]
            t = t + 32
            s = s + 1
            continue 
        mem[_12 + 32] = _12
        t = _12 + 64
        s = sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * sha3(sha3(address(arg1), 7)) + (2 * s) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 2
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    _15 = mem[96]
    s = mem[64] + 64
    idx = 0
    while idx < _15:
        _21 = mem[(32 * idx) + 128]
        t = 0
        while t < 64:
            mem[2 * t] = mem[t + _21]
            t = t + 32
            continue 
        t = 128
        idx = idx + 1
        continue 
    return memory
      from mem[64]
       len s - mem[64]
}



}
