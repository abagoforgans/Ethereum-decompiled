contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor7;
uint8 stor8;

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

function setLock(bool arg1) {
    require msg.sender == owner
    stor8 = uint8(arg1)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor8
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    require not stor7[address(msg.sender)]
    require not stor7[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require not stor8
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    require not stor7[address(arg1)]
    require not stor7[address(arg2)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transferBatch(address[] arg1, uint256 arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _20 = mem[(32 * idx) + 128]
        require not stor8
        require mem[(32 * idx) + 140 len 20]
        require balanceOf[address(msg.sender)] >= arg2
        require balanceOf[address(mem[(32 * idx) + 128])] + arg2 > balanceOf[address(mem[(32 * idx) + 128])]
        require not stor7[address(msg.sender)]
        require not stor7[address(mem[(32 * idx) + 128])]
        balanceOf[address(msg.sender)] -= arg2
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 5
        balanceOf[address(mem[(32 * idx) + 128])] += arg2
        mem[(32 * arg1.length) + 128] = arg2
        emit Transfer(arg2, msg.sender, address(_20));
        idx = idx + 1
        continue 
    return 1
}



}
