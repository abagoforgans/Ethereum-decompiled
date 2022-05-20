contract main {




// =====================  Runtime code  =====================


const name = 'Atomic Swap Token'

const decimals = 18

const symbol = 'AST'

const INITIAL_SUPPLY = 100000000 * 10^18


address owner;
mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
uint8 stor4;

function totalSupply() {
    return totalSupply
}

function paused() {
    return bool(stor4)
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function unpause() {
    require msg.sender == owner
    require stor4
    stor4 = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not stor4
    stor4 = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require not stor4
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferAnyERC20Token(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function transfer(address arg1, uint256 arg2) {
    require not stor4
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor4
    require arg2
    require arg3 <= balanceOf[address(arg1)]
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

function multiTransfer(address[] arg1, uint256[] arg2) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require not stor4
    require arg1.length <= 255
    require arg1.length == arg2.length
    idx = 0
    while uint8(idx) < arg1.length:
        require uint8(idx) < arg1.length
        _24 = mem[(32 * uint8(idx)) + 128]
        require uint8(idx) < arg2.length
        require not stor4
        require mem[(32 * uint8(idx)) + 140 len 20]
        require mem[(32 * uint8(idx)) + (32 * arg1.length) + 160] <= balanceOf[address(msg.sender)]
        require mem[(32 * uint8(idx)) + (32 * arg1.length) + 160] <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= mem[(32 * uint8(idx)) + (32 * arg1.length) + 160]
        require balanceOf[address(mem[(32 * uint8(idx)) + 128])] + mem[(32 * uint8(idx)) + (32 * arg1.length) + 160] >= balanceOf[address(mem[(32 * uint8(idx)) + 128])]
        mem[0] = mem[(32 * uint8(idx)) + 140 len 20]
        mem[32] = 1
        balanceOf[address(mem[(32 * uint8(idx)) + 128])] += mem[(32 * uint8(idx)) + (32 * arg1.length) + 160]
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * uint8(idx)) + (32 * arg1.length) + 160]
        emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], msg.sender, address(_24));
        idx = idx + 1
        continue 
    return 0
}

function multiTransferFrom(address arg1, address[] arg2, uint256[] arg3) {
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require not stor4
    require arg2.length <= 255
    require arg2.length == arg3.length
    idx = 0
    while uint8(idx) < arg2.length:
        require uint8(idx) < arg2.length
        _30 = mem[(32 * uint8(idx)) + 128]
        require uint8(idx) < arg3.length
        require not stor4
        require mem[(32 * uint8(idx)) + 140 len 20]
        require mem[(32 * uint8(idx)) + (32 * arg2.length) + 160] <= balanceOf[address(arg1)]
        require mem[(32 * uint8(idx)) + (32 * arg2.length) + 160] <= allowance[address(arg1)][address(msg.sender)]
        require mem[(32 * uint8(idx)) + (32 * arg2.length) + 160] <= balanceOf[address(arg1)]
        balanceOf[address(arg1)] -= mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
        require balanceOf[address(mem[(32 * uint8(idx)) + 128])] + mem[(32 * uint8(idx)) + (32 * arg2.length) + 160] >= balanceOf[address(mem[(32 * uint8(idx)) + 128])]
        balanceOf[address(mem[(32 * uint8(idx)) + 128])] += mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
        require mem[(32 * uint8(idx)) + (32 * arg2.length) + 160] <= allowance[address(arg1)][address(msg.sender)]
        mem[0] = msg.sender
        mem[32] = sha3(address(arg1), 3)
        allowance[address(arg1)][address(msg.sender)] -= mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
        mem[(32 * arg2.length) + (32 * arg3.length) + 160] = mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
        emit Transfer(mem[(32 * arg2.length) + (32 * arg3.length) + 160], arg1, address(_30));
        idx = idx + 1
        continue 
    return 0
}



}
