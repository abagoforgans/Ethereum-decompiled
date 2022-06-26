contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor6; offset 160
address owner;
mapping of uint8 stor7;
mapping of uint256 lockedAccount;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function paused() payable {
    return bool(stor6)
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[arg1]
}

function lockedAccount(address arg1) payable {
    require calldata.size - 4 >= 32
    return lockedAccount[arg1]
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function frozenAccount(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor7[arg1])
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[arg1][arg2]
}

function isAccountFrozen(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor7[address(arg1)])
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function unpause() payable {
    require msg.sender == owner
    require stor6
    stor6 = 0
    emit Unpaused(msg.sender);
}

function pause() payable {
    require msg.sender == owner
    require not stor6
    stor6 = 1
    emit Paused(msg.sender);
}

function renounceOwnership() payable {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function isAccountLocked(address arg1) payable {
    require calldata.size - 4 >= 32
    return (block.timestamp < lockedAccount[address(arg1)])
}

function freezeAccount(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor7[address(arg1)] = 1
    emit FreezeAccount(address(arg1), 1);
}

function unFreezeAccount(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor7[address(arg1)] = 0
    emit FreezeAccount(address(arg1), 0);
}

function unlockAccount(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    lockedAccount[address(arg1)] = 0
    emit LockAccount(address(arg1), 0);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function lockAccount(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require arg2 > block.timestamp
    lockedAccount[address(arg1)] = arg2
    emit LockAccount(address(arg1), arg2);
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function changeName(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require msg.sender == owner
    name[] = Array(len=arg1.length, data=arg1[all])
}

function changeSymbol(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require msg.sender == owner
    symbol[] = Array(len=arg1.length, data=arg1[all])
}

function burnFrom(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not stor6
    require arg1
    require not stor7[address(msg.sender)]
    require not stor7[address(arg1)]
    require block.timestamp >= lockedAccount[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    require not stor6
    require arg2
    require not stor7[address(arg1)]
    require not stor7[address(arg2)]
    require block.timestamp >= lockedAccount[address(arg1)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    allowance[msg.sender][address(arg1)] = arg2
    mem[ceil32(arg3.length) + 128] = arg2
    emit Approval(address arg1, address arg2, uint256 arg3):
                  Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0),
                  mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)],
                  msg.sender,
                  arg1,
    require ext_code.size(arg1)
    call arg1 with:
         gas gas_remaining wei
        args msg.sender, arg2, this.address, Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 0, 1
}



}
