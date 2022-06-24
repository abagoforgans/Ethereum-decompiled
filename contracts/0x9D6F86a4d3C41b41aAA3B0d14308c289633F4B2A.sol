contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of address stor6;
mapping of uint8 stor7;
mapping of uint8 stor8;
uint256 stor9;

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
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require arg2 <= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor8[address(msg.sender)]:
        require block.timestamp >= stor9
    if not stor7[address(arg1)]:
        stor6.length++
        stor6[stor6.length] = arg1
        stor7[address(arg1)] = 1
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    if stor8[address(arg1)]:
        require block.timestamp >= stor9
    if not stor7[address(arg2)]:
        stor6.length++
        stor6[stor6.length] = arg2
        stor7[address(arg2)] = 1
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    emit Approval(allowance[address(arg1)][address(msg.sender)], arg1, msg.sender);
    return 1
}

function getHolders(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor6.length:
        mem[128 len 32 * stor6.length] = code.data[5716 len 32 * stor6.length]
    idx = 0
    s = 0
    while idx < stor6.length:
        mem[0] = stor6[idx]
        mem[32] = 0
        if balanceOf[stor6[idx]] < arg1:
            idx = idx + 1
            s = s
            continue 
        require idx < stor6.length
        mem[0] = 6
        require s < stor6.length
        mem[(32 * s) + 128] = stor6[idx]
        idx = idx + 1
        s = s + 1
        continue 
    if s >= stor6.length:
        mem[(32 * stor6.length) + 192 len floor32(stor6.length)] = mem[128 len floor32(stor6.length)]
        return Array(len=stor6.length, data=mem[128 len floor32(stor6.length)], mem[(32 * stor6.length) + floor32(stor6.length) + 192 len (32 * stor6.length) - floor32(stor6.length)]), 
    mem[(32 * stor6.length) + 128] = s
    if not s:
        t = 0
        while t < t:
            require t < stor6.length
            require t < t
            mem[(32 * t) + (32 * stor6.length) + 160] = mem[(32 * t) + 140 len 20]
            t = t + 1
            continue 
        mem[(32 * stor6.length) + (32 * t) + 224 len floor32(t)] = mem[(32 * stor6.length) + 160 len floor32(t)]
        return Array(len=t, data=mem[(32 * stor6.length) + 160 len floor32(t)], mem[(32 * stor6.length) + (32 * t) + floor32(t) + 224 len (32 * t) - floor32(t)]), 
    mem[(32 * stor6.length) + 160 len 32 * s] = code.data[5716 len 32 * s]
    t = 0
    while t < s:
        require t < stor6.length
        require t < s
        mem[(32 * t) + (32 * stor6.length) + 160] = mem[(32 * t) + 140 len 20]
        t = t + 1
        continue 
    mem[(32 * stor6.length) + (32 * s) + 224 len floor32(s)] = mem[(32 * stor6.length) + 160 len floor32(s)]
    return Array(len=s, data=mem[(32 * stor6.length) + 160 len floor32(s)], mem[(32 * stor6.length) + (32 * s) + floor32(s) + 224 len (32 * s) - floor32(s)]), 
}



}
