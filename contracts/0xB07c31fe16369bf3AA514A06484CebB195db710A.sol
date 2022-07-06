contract main {




// =====================  Runtime code  =====================


const Time_call = block.timestamp

const getMsgSender = msg.sender


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint8 stor6;
uint8 stor7;
address owner; offset 8
uint256 INITIAL_SUPPLY;
mapping of struct user;
array of address userAtIndex;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function INITIAL_SUPPLY() payable {
    return INITIAL_SUPPLY
}

function decimals() payable {
    return decimals
}

function isPauser(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor6[address(arg1)])
}

function paused() payable {
    return bool(stor7)
}

function getUser(address arg1) payable {
    require calldata.size - 4 >= 32
    require userAtIndex.length
    require user[address(arg1)].field_256 < userAtIndex.length
    require userAtIndex[stor9[address(arg1)].field_256] == arg1
    return user[address(arg1)].field_0, user[address(arg1)].field_256
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

function getUserCount() payable {
    return userAtIndex.length
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function getUserAtIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < userAtIndex.length
    return userAtIndex[arg1]
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function unpause() payable {
    require msg.sender
    require stor6[address(msg.sender)]
    require stor7
    stor7 = 0
    emit Unpaused(msg.sender);
}

function pause() payable {
    require msg.sender
    require stor6[address(msg.sender)]
    require not stor7
    stor7 = 1
    emit Paused(msg.sender);
}

function renouncePauser() payable {
    require msg.sender
    require stor6[address(msg.sender)]
    stor6[address(msg.sender)] = 0
    emit PauserRemoved(msg.sender);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function isUser(address arg1) payable {
    require calldata.size - 4 >= 32
    if not userAtIndex.length:
        return 0
    require user[address(arg1)].field_256 < userAtIndex.length
    return (userAtIndex[stor9[address(arg1)].field_256] == arg1)
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

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not stor7
    require msg.sender == owner
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_7b4b20e1(?) payable {
    require calldata.size - 4 >= 32
    if not userAtIndex.length:
        return 1
    require user[address(arg1)].field_256 < userAtIndex.length
    if userAtIndex[stor9[address(arg1)].field_256] != arg1:
        return 1
    return user[address(arg1)].field_0
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require msg.sender
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function sub_3520fea4(?) payable {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require userAtIndex.length
    require user[address(arg1)].field_256 < userAtIndex.length
    require userAtIndex[stor9[address(arg1)].field_256] == arg1
    user[address(arg1)].field_0 = arg2
    emit 0xcb0522c5: user[address(arg1)].field_256, arg2, arg1
    return 1
}

function sub_d7e3fec9(?) payable {
    require calldata.size - 4 >= 64
    require msg.sender == owner
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
    require not stor7
    require msg.sender == owner
    require arg2 <= allowance[address(msg.sender)][address(arg1)]
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not stor7
    require msg.sender == owner
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function insertUser(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    if userAtIndex.length:
        require user[address(arg1)].field_256 < userAtIndex.length
        require userAtIndex[stor9[address(arg1)].field_256] != arg1
    user[address(arg1)].field_0 = arg2
    userAtIndex.length++
    userAtIndex[userAtIndex.length] = arg1
    user[address(arg1)].field_256 = userAtIndex.length
    emit 0xef82a51c: user[address(arg1)].field_256, arg2, arg1
    return (userAtIndex.length - 1)
}

function burnFrom(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require arg1
    require arg2 <= totalSupply
    totalSupply -= arg2
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    emit Transfer(arg2, arg1, 0);
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    require msg.sender
    require arg1
    allowance[address(arg1)][address(msg.sender)] -= arg2
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not stor7
    if userAtIndex.length:
        require user[address(msg.sender)].field_256 < userAtIndex.length
        if userAtIndex[stor9[address(msg.sender)].field_256] == msg.sender:
            require user[address(msg.sender)].field_0
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require not stor7
    require msg.sender == owner
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

function transferAndLock(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not stor7
    require msg.sender == owner
    if userAtIndex.length:
        require user[address(arg1)].field_256 < userAtIndex.length
        require userAtIndex[stor9[address(arg1)].field_256] != arg1
    user[address(arg1)].field_0 = 0
    userAtIndex.length++
    userAtIndex[userAtIndex.length] = arg1
    user[address(arg1)].field_256 = userAtIndex.length
    emit 0xef82a51c: user[address(arg1)].field_256, 0, arg1
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
