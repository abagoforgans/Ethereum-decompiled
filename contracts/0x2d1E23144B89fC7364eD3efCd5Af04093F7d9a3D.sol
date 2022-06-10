contract main {




// =====================  Runtime code  =====================


const sub_3a5673a4(?) = Array(len=43, data=0xfe417373657453706c69742e6f7267202d2074686520677579732077686f20637574207468652070697a7a, mem[171 len 21], mem[213 len 11])


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address _owner;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[arg1]
}

function owner() payable {
    return _owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function _owner() payable {
    return _owner
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == _owner)
}

function renounceOwnership() payable {
    require msg.sender == _owner
    emit OwnershipTransferred(_owner, 0);
    _owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == _owner
    require arg1
    emit OwnershipTransferred(_owner, arg1);
    _owner = arg1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require balanceOf[address(msg.sender)] >= arg1
    totalSupply -= arg1
    balanceOf[address(msg.sender)] -= arg1
    emit Burn(msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require balanceOf[address(arg1)] >= arg2
    require allowance[address(arg1)][address(msg.sender)] >= arg2
    totalSupply -= arg2
    balanceOf[address(msg.sender)] -= arg2
    allowance[address(arg1)][address(msg.sender)] -= arg2
    emit Burn(msg.sender, arg2);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    allowance[address(arg1)][address(msg.sender)] -= arg3
    return 1
}



}
