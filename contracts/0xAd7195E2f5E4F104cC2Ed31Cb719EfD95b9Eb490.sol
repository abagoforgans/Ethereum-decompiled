contract main {




// =====================  Runtime code  =====================


const name = ''

const decimals = 18

const symbol = ''


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint8 stor3; offset 160
address owner;
mapping of uint8 stor4;
array of uint256 keys;

function totalSupply() payable {
    return totalSupply
}

function paused() payable {
    return bool(stor3)
}

function keys(address arg1) payable {
    return keys[arg1][0 len keys[arg1].length]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function owner() payable {
    return owner
}

function frozenAccount(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor4[arg1])
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function unpause() payable {
    require msg.sender == owner
    require stor3
    stor3 = 0
    emit Unpause()
}

function pause() payable {
    require msg.sender == owner
    require not stor3
    stor3 = 1
    emit Pause()
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function freezeAccount(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    stor4[address(arg1)] = uint8(arg2)
    emit FrozenAccount(arg2, arg1);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not stor3
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= balanceOf[msg.sender]
    require arg1 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit 0xfeddf252: arg1, msg.sender, 0
    emit Burn(arg1, msg.sender);
}

function increaseApproval(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not stor3
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not stor3
    if arg2 >= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] = 0
    else:
        require arg2 <= allowance[msg.sender][address(arg1)]
        allowance[msg.sender][address(arg1)] -= arg2
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not stor4[address(msg.sender)]
    require not stor4[address(arg1)]
    require not stor3
    require arg1
    require arg2 <= balanceOf[msg.sender]
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit 0xfeddf252: arg2, msg.sender, arg1
    return 1
}

function burnFrom(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= allowance[address(arg1)][msg.sender]
    require arg2 <= balanceOf[address(arg1)]
    require arg2 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg2
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit 0xfeddf252: arg2, arg1, 0
    emit Burn(arg2, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require not stor3
    require not stor4[address(arg1)]
    require not stor4[address(arg2)]
    require not stor3
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit 0xfeddf252: arg3, arg1, arg2
    return 1
}

function register(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    keys[msg.sender][] = Array(len=arg1.length, data=arg1[all])
    mem[ceil32(arg1.length) + 128] = msg.sender
    mem[ceil32(arg1.length) + 160] = 64
    mem[ceil32(arg1.length) + 224 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        emit Register(address arg1, string arg2):
                      Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0),
                      mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32],
                      arg1.length,
                      Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256,
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + 224] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 256 len arg1.length % 32]
        emit Register(address arg1, string arg2):
                      Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0),
                      mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32],
                      arg1.length,
                      Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                      mem[(2 * ceil32(arg1.length)) + 224 len floor32(arg1.length) + -ceil32(arg1.length) + 32],
}



}
