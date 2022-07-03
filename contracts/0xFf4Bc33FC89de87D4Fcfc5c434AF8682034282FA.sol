contract main {




// =====================  Runtime code  =====================


uint256 creationTime;
uint8 stor1;
uint8 stor1; offset 8
address owner; offset 16
uint256 stor1; offset 8
mapping of uint8 stor2;
mapping of uint8 stor3;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address walletAddress;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function walletAddress() payable {
    return walletAddress
}

function tokenTransfer() payable {
    return bool(uint8(stor1.field_8))
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

function lockaddress(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor3[arg1])
}

function creationTime() payable {
    return creationTime
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function unlockaddress(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor2[arg1])
}

function lock() payable {
    return bool(uint8(stor1.field_0))
}

function _fallback() payable {
    revert
}

function enableTokenTransfer() payable {
    require msg.sender == walletAddress
    Mask(248, 0, stor1.field_8) = 1
    emit TokenTransfer()
}

function disableTokenTransfer() payable {
    require msg.sender == walletAddress
    Mask(248, 0, stor1.field_8) = 0
    emit TokenTransfer()
}

function unlockAddress(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require owner == msg.sender
    stor2[address(arg1)] = uint8(arg2)
    emit Unlocked(address(arg1), arg2);
}

function lockAddress(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require owner == msg.sender
    require owner != arg1
    stor3[address(arg1)] = uint8(arg2)
    emit Locked(address(arg1), arg2);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not uint8(stor1.field_8):
        require stor2[address(msg.sender)]
    require not stor3[address(msg.sender)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burnTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not uint8(stor1.field_8):
        require stor2[address(msg.sender)]
    require balanceOf[address(msg.sender)] >= arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit TokenBurned(msg.sender, arg1);
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not uint8(stor1.field_8):
        require stor2[address(msg.sender)]
    require not stor3[address(msg.sender)]
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not uint8(stor1.field_8):
        require stor2[address(msg.sender)]
    require not stor3[address(msg.sender)]
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
