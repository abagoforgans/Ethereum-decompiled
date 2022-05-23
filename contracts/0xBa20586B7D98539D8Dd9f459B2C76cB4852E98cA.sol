contract main {




// =====================  Runtime code  =====================


const name = 'Tipcoin'

const decimals = 18

const symbol = 'TIPC'

const INITIAL_SUPPLY = 10^9


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
address owner;
uint8 stor4; offset 160
uint8 stor4; offset 168
address newOwner;

function totalSupply() {
    return totalSupply
}

function paused() {
    return bool(uint8(stor4.field_160))
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function newOwner() {
    return newOwner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function finalUnpaused() {
    return bool(uint8(stor4.field_168))
}

function _fallback() payable {
    revert
}

function finalUnpause() {
    require msg.sender == owner
    uint8(stor4.field_160) = 0
    emit FinalUnpause()
}

function unpause() {
    require msg.sender == owner
    require uint8(stor4.field_160)
    uint8(stor4.field_160) = 0
    emit Unpause()
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function pause() {
    require msg.sender == owner
    require not uint8(stor4.field_160)
    require not uint8(stor4.field_168)
    uint8(stor4.field_160) = 1
    emit Pause()
}

function burn(uint256 arg1) {
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
}

function increaseApproval(address arg1, uint256 arg2) {
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] -= arg2
    else:
        allowance[msg.sender][address(arg1)] = 0
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2, bytes arg3) {
    require not uint8(stor4.field_160)
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    if ext_code.size(arg1) <= 0:
        emit Transfer(arg2, msg.sender, arg1);
        if not arg3.length:
        else:
            emit Transfer(arg2, Array(len=arg3.length, data=arg3[all]), msg.sender, arg1);
    else:
        require ext_code.size(arg1)
        call arg1.tokenFallback(address arg1, uint256 arg2, bytes arg3) with:
             gas gas_remaining wei
            args msg.sender, arg2, Array(len=arg3.length, data=arg3[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Transfer(arg2, msg.sender, arg1);
        if 0 == arg3.length:
        else:
            emit Transfer(arg2, Array(len=arg3.length, data=arg3[all]), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor4.field_160)
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    if ext_code.size(arg1) <= 0:
        emit Transfer(arg2, msg.sender, arg1);
        if not mem[96]:
        else:
            mem[128] = 64
            mem[160] = arg2
            mem[192 len ceil32(arg2)] = mem[128 len ceil32(arg2)]
            emit Transfer(arg2, Array(len=arg2, data=mem[192 len arg2]), msg.sender, arg1);
    else:
        mem[164] = 96
        mem[196] = 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000
        mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000] = uint32(msg.sender), arg2, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b89ffffffffffffffffffffffffffffffffffffffffffffffffffffff9c]
        require ext_code.size(arg1)
        call arg1.tokenFallback(address arg1, uint256 arg2, bytes arg3) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), arg2, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Transfer(arg2, msg.sender, arg1);
        mem[128] = 64
        mem[160] = arg2
        mem[192 len ceil32(arg2)] = mem[128 len ceil32(arg2)]
        emit Transfer(arg2, Array(len=arg2, data=mem[192 len arg2]), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor4.field_160)
    require arg2
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    if ext_code.size(arg2) <= 0:
        emit Transfer(arg3, arg1, arg2);
        if not mem[96]:
        else:
            mem[128] = 64
            mem[160] = arg3
            mem[192 len ceil32(arg3)] = mem[128 len ceil32(arg3)]
            emit Transfer(arg3, Array(len=arg3, data=mem[192 len arg3]), arg1, arg2);
    else:
        mem[164] = 96
        mem[196] = 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000
        mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000] = 0, arg3, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b89ffffffffffffffffffffffffffffffffffffffffffffffffffffff9c]
        require ext_code.size(arg2)
        call arg2.tokenFallback(address arg1, uint256 arg2, bytes arg3) with:
             gas gas_remaining wei
            args 0, 0, arg3, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Transfer(arg3, arg1, arg2);
        mem[128] = 64
        mem[160] = arg3
        mem[192 len ceil32(arg3)] = mem[128 len ceil32(arg3)]
        emit Transfer(arg3, Array(len=arg3, data=mem[192 len arg3]), arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2, bytes arg3, string arg4) {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128] = arg4.length
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    require not uint8(stor4.field_160)
    require arg1
    if ext_code.size(arg1) <= 0:
        require arg2 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= arg2
        require arg2 + balanceOf[arg1] >= balanceOf[arg1]
        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    else:
        require arg2 <= balanceOf[msg.sender]
        balanceOf[msg.sender] -= arg2
        require arg2 + balanceOf[arg1] >= balanceOf[arg1]
        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
        mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg4.length) + -(arg4.length % 32) + 224 len arg4.length % 32] = mem[ceil32(arg3.length) + floor32(arg4.length) + -(arg4.length % 32) + 192 len arg4.length % 32]
        mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 192 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
        mem[(2 * floor32(arg4.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len arg4.length % 32] = mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg4.length) + -(arg4.length % 32) + 224 len arg4.length % 32]
        mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 192] = Mask(32, 224, sha3(call.data[arg4 + 36 len floor32(arg4.length)], mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg4.length) + 192 len arg4.length % 32]))
        call arg1.mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 192 len 4] with:
             gas gas_remaining wei
            args msg.sender, arg2, Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256
        require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
    if not arg3.length:
    else:
        emit Transfer(arg2, Array(len=arg3.length, data=arg3[all]), msg.sender, arg1);
    return 1
}



}
