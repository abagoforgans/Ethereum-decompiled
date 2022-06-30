contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 stor2;
uint8 stor4; offset 160
uint128 stor4; offset 160
address pauserAddress;
address blacklisterAddress;
mapping of uint8 stor6;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of uint256 currency;
uint8 stor11; offset 160
uint128 stor11; offset 160
address masterMinterAddress;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
mapping of uint8 stor15;
mapping of uint256 minterAllowance;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function masterMinter() payable {
    return masterMinterAddress
}

function paused() payable {
    return bool(uint8(stor4.field_160))
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function minterAllowance(address arg1) payable {
    require calldata.size - 4 >= 32
    return minterAllowance[address(arg1)]
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function pauser() payable {
    return pauserAddress
}

function isMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor15[address(arg1)])
}

function blacklister() payable {
    return blacklisterAddress
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function currency() payable {
    return currency[0 len currency.length]
}

function isBlacklisted(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor6[address(arg1)])
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function pause() payable {
    require msg.sender == pauserAddress
    Mask(96, 0, stor4.field_160) = 1
    emit Pause()
}

function unpause() payable {
    require msg.sender == pauserAddress
    Mask(96, 0, stor4.field_160) = 0
    emit Unpause()
}

function renounceOwnership() payable {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function blacklist(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == blacklisterAddress
    stor6[address(arg1)] = 1
    emit Blacklisted(arg1);
}

function unBlacklist(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == blacklisterAddress
    stor6[address(arg1)] = 0
    emit UnBlacklisted(arg1);
}

function updatePauser(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    pauserAddress = arg1
    emit PauserChanged(pauserAddress);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function updateBlacklister(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    blacklisterAddress = arg1
    emit BlacklisterChanged(blacklisterAddress);
}

function updateMasterMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    masterMinterAddress = arg1
    emit MasterMinterChanged(masterMinterAddress);
}

function removeMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == masterMinterAddress
    stor15[address(arg1)] = 0
    minterAllowance[address(arg1)] = 0
    emit MinterRemoved(arg1);
    return 1
}

function configureMinter(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not uint8(stor4.field_160)
    require msg.sender == masterMinterAddress
    stor15[address(arg1)] = 1
    minterAllowance[address(arg1)] = arg2
    emit MinterConfigured(arg2, arg1);
    return 1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not uint8(stor4.field_160)
    require not stor6[address(msg.sender)]
    require not stor6[address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1
    require arg2 <= stor2[address(msg.sender)][address(arg1)]
    stor2[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(stor2[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1
    require stor2[address(msg.sender)][address(arg1)] + arg2 >= stor2[address(msg.sender)][address(arg1)]
    stor2[address(msg.sender)][address(arg1)] += arg2
    emit Approval(stor2[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require not uint8(stor4.field_160)
    require bool(stor15[address(msg.sender)]) == 1
    require not stor6[address(msg.sender)]
    require arg1 > 0
    require balanceOf[address(msg.sender)] >= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not uint8(stor4.field_160)
    require not stor6[address(msg.sender)]
    require not stor6[address(arg1)]
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not uint8(stor4.field_160)
    require bool(stor15[address(msg.sender)]) == 1
    require not stor6[address(msg.sender)]
    require not stor6[address(arg1)]
    require arg1
    require arg2 > 0
    require arg2 <= minterAllowance[address(msg.sender)]
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require arg2 <= minterAllowance[address(msg.sender)]
    minterAllowance[address(msg.sender)] -= arg2
    emit Mint(arg2, msg.sender, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require not uint8(stor4.field_160)
    require not stor6[address(arg2)]
    require not stor6[address(msg.sender)]
    require not stor6[address(arg1)]
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

function initialize(string arg1, string arg2, string arg3, uint8 arg4, address arg5, address arg6, address arg7, address arg8) payable {
    require calldata.size - 4 >= 256
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require not uint8(stor11.field_160)
    require arg5
    require arg6
    require arg7
    require arg8
    name[] = Array(len=arg1.length, data=arg1[all])
    symbol[] = Array(len=arg2.length, data=arg2[all])
    currency[] = Array(len=arg3.length, data=arg3[all])
    decimals = arg4
    masterMinterAddress = arg5
    pauserAddress = arg6
    blacklisterAddress = arg7
    Mask(96, 0, stor11.field_160) = 1
}



}
