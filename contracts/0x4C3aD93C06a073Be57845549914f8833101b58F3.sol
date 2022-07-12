contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
mapping of uint8 stor6;
uint8 stor7;
address stor7;
address owner; offset 8
mapping of uint8 stor8;
uint256 stor9;
mapping of uint8 stor10;
uint256 stor11;
mapping of uint256 stor12;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function isUser(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor10[address(arg1)])
}

function isPauser(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor6[address(arg1)])
}

function paused() payable {
    return bool(uint8(stor7.field_0))
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

function isMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor8[address(arg1)])
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
  stop
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function renouncePauser() payable {
    require msg.sender
    require stor6[address(msg.sender)]
    stor6[address(msg.sender)] = 0
    emit PauserRemoved(msg.sender);
}

function renounceMinter() payable {
    require msg.sender
    require stor8[address(msg.sender)]
    stor8[address(msg.sender)] = 0
    emit MinterRemoved(msg.sender);
}

function unpause() payable {
    require msg.sender
    require stor6[address(msg.sender)]
    require uint8(stor7.field_0)
    uint8(stor7.field_0) = 0
    emit Unpaused(msg.sender);
}

function pause() payable {
    require msg.sender
    require stor6[address(msg.sender)]
    require not uint8(stor7.field_0)
    uint8(stor7.field_0) = 1
    emit Paused(msg.sender);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_7542b33c(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require not uint8(stor7.field_0)
    require arg1
    require stor8[address(arg1)]
    stor8[address(arg1)] = 0
    emit MinterRemoved(arg1);
}

function sub_b6337f7e(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require not uint8(stor7.field_0)
    require arg1
    require not stor8[address(arg1)]
    stor8[address(arg1)] = 1
    emit MinterAdded(arg1);
}

function addPauser(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor6[address(msg.sender)]
    require arg1
    require not stor6[address(arg1)]
    stor6[address(arg1)] = 1
    emit PauserAdded(arg1);
}

function addMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor8[address(msg.sender)]
    require arg1
    require not stor8[address(arg1)]
    stor8[address(arg1)] = 1
    emit MinterAdded(arg1);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not uint8(stor7.field_0)
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not uint8(stor7.field_0)
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not uint8(stor7.field_0)
    require arg2 <= allowance[address(msg.sender)][address(arg1)]
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function removeUser(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor8[address(msg.sender)]
    require not uint8(stor7.field_0)
    require 12 * 3600 <= block.timestamp
    require stor11 < block.timestamp - (12 * 3600)
    stor11 = block.timestamp
    require arg1 != owner
    require stor10[address(arg1)]
    stor10[address(arg1)] = 0
    stor11 = block.timestamp
    emit UserRemoved(arg1);
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not uint8(stor7.field_0)
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function transferAnyERC20Token(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require arg1 != this.address
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(stor7.field_0), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function getReward(address arg1) payable {
    require calldata.size - 4 >= 32
    require not uint8(stor7.field_0)
    require stor10[address(arg1)]
    require stor9 > 0
    require stor9
    require block.timestamp / stor9 > stor12[address(arg1)]
    stor12[address(arg1)] = block.timestamp / stor9
    require arg1
    require totalSupply + 125000 >= totalSupply
    totalSupply += 125000
    require balanceOf[address(arg1)] + 125000 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += 125000
    emit Transfer(125000, 0, arg1);
    emit 0xb84724f3: arg1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require not uint8(stor7.field_0)
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require msg.sender
    require arg1
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function addUser(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor8[address(msg.sender)]
    require not uint8(stor7.field_0)
    require 12 * 3600 <= block.timestamp
    require stor11 < block.timestamp - (12 * 3600)
    stor11 = block.timestamp
    require not stor10[address(arg1)]
    stor10[address(arg1)] = 1
    require arg1
    require totalSupply + 10^6 >= totalSupply
    totalSupply += 10^6
    require balanceOf[address(arg1)] + 10^6 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += 10^6
    emit Transfer(10^6, 0, arg1);
    require stor9 > 0
    require stor9
    stor12[address(arg1)] = block.timestamp / stor9
    emit UserAdded(arg1);
}

function sub_f45c1488(?) payable {
    require calldata.size - 4 >= 32
    require not uint8(stor7.field_0)
    require stor10[address(arg1)]
    if not stor12[address(arg1)]:
        require stor9 >= 0
        if stor9 < block.timestamp:
            return 0
        require block.timestamp <= stor9
        return (stor9 - block.timestamp)
    require stor12[address(arg1)]
    require stor12[address(arg1)] * stor9 / stor12[address(arg1)] == stor9
    require (stor12[address(arg1)] * stor9) + stor9 >= stor12[address(arg1)] * stor9
    if (stor12[address(arg1)] * stor9) + stor9 < block.timestamp:
        return 0
    require block.timestamp <= (stor12[address(arg1)] * stor9) + stor9
    return ((stor12[address(arg1)] * stor9) + stor9 - block.timestamp)
}



}
