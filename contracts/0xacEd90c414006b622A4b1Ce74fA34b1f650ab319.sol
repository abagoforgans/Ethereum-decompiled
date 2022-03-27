contract main {


// =======================  Init code  ======================


mapping of uint8 stor0;

function _fallback() {
    stor0[address(msg.sender)] = 1
    emit MinterAdded(msg.sender);
    return code.data[113 len 3112]
}



// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of uint256 stor1;
mapping of uint256 allowance;
uint256 totalSupply;

function totalSupply() {
    return totalSupply
}

function isTokenOwner(address arg1) {
    return bool(stor1[address(arg1)])
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert 
}

function balanceOf(address arg1) {
    if arg1:
        return stor1[address(arg1)]
    else:
        return 0
}

function addMinter(address arg1) {
    require stor0[address(msg.sender)]
    stor0[address(arg1)] = 1
    emit MinterAdded(arg1);
    return 0
}

function removeMinter(address arg1) {
    require stor0[address(msg.sender)]
    stor0[address(arg1)] = 0
    emit MinterRemoved(arg1);
    return 0
}

function destroy(address arg1) {
    require stor0[address(msg.sender)]
    require stor1[address(arg1)] == 1
    stor1[address(arg1)] = 0
    totalSupply--
    emit Destroy(arg1);
    return 1
}

function mint(address arg1) {
    require stor0[address(msg.sender)]
    if stor1[address(arg1)]:
        return 0
    stor1[address(arg1)] = 1
    emit Mint(arg1);
    emit Transfer(1, 0, arg1);
    emit Transfer(0, arg1);
    totalSupply++
    return 1
}

function approve(address arg1) {
    if not arg1:
        return 0
    if not stor1[address(msg.sender)]:
        return 0
    allowance[address(msg.sender)][address(arg1)] = 1
    emit Approval(1, msg.sender, arg1);
    emit Approval(msg.sender, arg1);
    return 1
}

function transfer(address arg1) {
    if not arg1:
        return 0
    if not stor1[address(msg.sender)]:
        return 0
    if stor1[address(arg1)]:
        return 0
    stor1[address(msg.sender)] = 0
    stor1[arg1] = 1
    emit Transfer(1, msg.sender, arg1);
    emit Transfer(msg.sender, arg1);
    return 1
}

function approve(address arg1, uint256 arg2) {
    if arg2 != 1:
        return 0
    if not arg1:
        return 0
    if not stor1[address(msg.sender)]:
        return 0
    allowance[address(msg.sender)][address(arg1)] = 1
    emit Approval(1, msg.sender, arg1);
    emit Approval(msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if arg2 != 1:
        return 0
    if not arg1:
        return 0
    if not stor1[address(msg.sender)]:
        return 0
    if stor1[address(arg1)]:
        return 0
    stor1[address(msg.sender)] = 0
    stor1[arg1] = 1
    emit Transfer(1, msg.sender, arg1);
    emit Transfer(msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2) {
    if not arg2:
        return 0
    if not stor1[address(arg1)]:
        return 0
    if stor1[address(arg2)]:
        return 0
    if not allowance[address(arg1)][address(msg.sender)]:
        return 0
    allowance[address(arg1)][address(msg.sender)] = 0
    stor1[address(arg1)] = 0
    stor1[arg2] = 1
    emit Transfer(1, arg1, arg2);
    emit Transfer(arg1, arg2);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if arg3 != 1:
        return 0
    if not arg2:
        return 0
    if not stor1[address(arg1)]:
        return 0
    if stor1[address(arg2)]:
        return 0
    if not allowance[address(arg1)][address(msg.sender)]:
        return 0
    allowance[address(arg1)][address(msg.sender)] = 0
    stor1[address(arg1)] = 0
    stor1[arg2] = 1
    emit Transfer(1, arg1, arg2);
    emit Transfer(arg1, arg2);
    return 1
}

function mint(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require stor0[address(msg.sender)]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if stor1[mem[(32 * idx) + 140 len 20]]:
            return 0
        require idx < arg1.length
        mem[32] = 1
        stor1[mem[(32 * idx) + 140 len 20]] = 1
        require idx < arg1.length
        emit Mint(mem[(32 * idx) + 140 len 20]);
        require idx < arg1.length
        _41 = mem[(32 * idx) + 128]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg1.length) + 128] = 1
        emit Transfer(1, 0, address(_41));
        require idx < arg1.length
        emit Transfer(0, mem[(32 * idx) + 140 len 20]);
        idx = idx + 1
        continue 
    totalSupply += arg1.length
    return 1
}



}
