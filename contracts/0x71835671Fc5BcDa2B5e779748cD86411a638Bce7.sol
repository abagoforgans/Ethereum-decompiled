contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of uint256 data;
address owner;
array of struct stor8;
address pendingOwner;
mapping of uint8 stor10;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function allowance(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor10[stor7][address(arg1)])
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function pendingOwner() payable {
    return pendingOwner
}

function data(uint256 arg1) payable {
    return data[arg1][0 len data[arg1].length]
}

function _fallback() payable {
  stop
}

function isOwner() payable {
    return (msg.sender == owner)
}

function sub_cce33f87(?) payable {
    return (data.length - 1)
}

function sub_b9b6c892(?) payable {
    return (msg.sender == pendingOwner)
}

function sub_c342cf91(?) payable {
    require calldata.size - 4 >= 32
    require stor10[stor7][address(msg.sender)]
    pendingOwner = arg1
    emit 0x133753d4: owner, arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    pendingOwner = arg1
    emit 0x133753d4: owner, arg1
}

function approve(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor10[msg.sender][address(arg1)] = 1
    emit Approval(msg.sender, arg1);
    return 1
}

function removeApproval(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor10[msg.sender][address(arg1)] = 0
    emit 0xd534ffa0: msg.sender, arg1
    return 1
}

function claimOwnership() payable {
    require msg.sender == pendingOwner
    owner = pendingOwner
    stor8.length++
    stor8[stor8.length].field_0 = pendingOwner
    pendingOwner = 0
    emit OwnershipTransferred(owner, 0);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= allowance[msg.sender][address(arg1)]
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] = arg2 + allowance[msg.sender][address(arg1)]
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    require arg3 <= allowance[address(arg1)][msg.sender]
    require msg.sender
    require arg1
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}

function owners() payable {
    if not stor8.length:
        mem[(32 * stor8.length) + 128] = 32
        mem[(32 * stor8.length) + 160] = stor8.length
        mem[(32 * stor8.length) + 192 len floor32(stor8.length)] = mem[128 len floor32(stor8.length)]
        return memory
          from (32 * stor8.length) + 128
           len (96 * stor8.length) + 64
    mem[128] = address(stor8.field_0)
    idx = 128
    s = 0
    while (32 * stor8.length) + 96 > idx:
        mem[idx + 32] = stor8[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor8.length) + 192 len floor32(stor8.length)] = mem[128 len floor32(stor8.length)]
    return Array(len=stor8.length, data=mem[128 len floor32(stor8.length)], mem[(32 * stor8.length) + floor32(stor8.length) + 192 len (32 * stor8.length) - floor32(stor8.length)]), 
}

function sub_7a59dc80(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require msg.sender == owner
    data.length++
    data[data.length][] = Array(len=arg1.length, data=arg1[all])
    mem[ceil32(arg1.length) + 160] = data.length - 1
    mem[ceil32(arg1.length) + 128] = 64
    mem[ceil32(arg1.length) + 224 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        emit 0xf473313a: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], arg1.length, Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + 224] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 256 len arg1.length % 32]
        emit 0xf473313a: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 224 len floor32(arg1.length) + -ceil32(arg1.length) + 32]
    mem[ceil32(arg1.length) + 128] = 1
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}



}
