contract main {




// =====================  Runtime code  =====================


uint256 totalSupply;
uint8 stor1; offset 160
uint128 stor1; offset 160
address owner;
mapping of uint256 balanceOf;
mapping of uint8 stor3;
mapping of uint256 allowance;

function totalSupply() {
    return totalSupply
}

function paused() {
    return bool(uint8(stor1.field_160))
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function frozens(address arg1) {
    return bool(stor3[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function unpause() {
    require msg.sender == owner
    require uint8(stor1.field_160)
    Mask(96, 0, stor1.field_160) = 0
    emit Unpause()
    return 1
}

function pause() {
    require msg.sender == owner
    require not uint8(stor1.field_160)
    Mask(96, 0, stor1.field_160) = 1
    emit Pause()
    return 1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor1.field_160)
    require balanceOf[address(msg.sender)] >= arg2
    require arg1
    require arg2 > 0
    require not stor3[address(msg.sender)]
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor1.field_160)
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require arg3 > 0
    require not stor3[address(arg1)]
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function freeze(address[] arg1, bool arg2) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    require arg1.length > 0
    require arg1.length <= 512
    idx = 0
    while uint16(idx) < arg1.length:
        require uint16(idx) < arg1.length
        require mem[(32 * uint16(idx)) + 140 len 20]
        require uint16(idx) < arg1.length
        mem[0] = mem[(32 * uint16(idx)) + 140 len 20]
        mem[32] = 3
        stor3[mem[(32 * uint16(idx)) + 140 len 20]] = uint8(arg2)
        require uint16(idx) < arg1.length
        _25 = mem[(32 * uint16(idx)) + 128]
        mem[(32 * arg1.length) + 128] = arg2
        emit Frozen(arg2, address(_25));
        idx = idx + 1
        continue 
    return 1
}

function transferMulti(address[] arg1, uint256[] arg2) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require not uint8(stor1.field_160)
    require arg1.length > 0
    require arg1.length <= 512
    require arg1.length == arg2.length
    require not stor3[address(msg.sender)]
    s = 0
    idx = 0
    while uint16(idx) < arg1.length:
        require uint16(idx) < arg1.length
        require mem[(32 * uint16(idx)) + 140 len 20]
        require uint16(idx) < arg2.length
        require mem[(32 * uint16(idx)) + (32 * arg1.length) + 160] > 0
        require uint16(idx) < arg2.length
        require s + mem[(32 * uint16(idx)) + (32 * arg1.length) + 160] >= s
        s = s + mem[(32 * uint16(idx)) + (32 * arg1.length) + 160]
        idx = idx + 1
        continue 
    require balanceOf[address(msg.sender)] >= s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
    require s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += -1 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
    idx = 0
    while uint16(idx) < arg1.length:
        require uint16(idx) < arg2.length
        require uint16(idx) < arg1.length
        require balanceOf[mem[(32 * uint16(idx)) + 140 len 20]] + mem[(32 * uint16(idx)) + (32 * arg1.length) + 160] >= balanceOf[mem[(32 * uint16(idx)) + 140 len 20]]
        require uint16(idx) < arg1.length
        mem[0] = mem[(32 * uint16(idx)) + 140 len 20]
        mem[32] = 2
        balanceOf[mem[(32 * uint16(idx)) + 140 len 20]] += mem[(32 * uint16(idx)) + (32 * arg1.length) + 160]
        require uint16(idx) < arg1.length
        _74 = mem[(32 * uint16(idx)) + 128]
        require uint16(idx) < arg2.length
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * uint16(idx)) + (32 * arg1.length) + 160]
        emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], msg.sender, address(_74));
        idx = idx + 1
        continue 
    return 1
}



}
