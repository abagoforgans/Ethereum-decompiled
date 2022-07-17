contract main {




// =====================  Runtime code  =====================


const DECIMALS = 18

const INITIAL_SUPPLY = 40000000000 * 10^18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint8 stor5; offset 168
uint8 stor5; offset 176
address owner; offset 8
mapping of uint8 stor6;
uint8 stor7;
uint8 stor7; offset 8

function name() payable {
    return name[0 len name.length]
}

function sub_15686293(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor6[address(arg1)])
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function pausable() payable {
    return bool(uint8(stor5.field_176))
}

function paused() payable {
    return bool(uint8(stor5.field_168))
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

function sub_bb835bc0(?) payable {
    return bool(uint8(stor7.field_8))
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function sub_fdbffc81(?) payable {
    return bool(uint8(stor7.field_0))
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function unpause() payable {
    require msg.sender == owner
    require uint8(stor5.field_168)
    uint8(stor5.field_168) = 0
    emit Unpaused(msg.sender);
}

function sub_1879ec5f(?) payable {
    require msg.sender == owner
    require uint8(stor7.field_8)
    uint8(stor7.field_8) = 0
    emit 0x15f60cbf: msg.sender
}

function sub_e11d6bea(?) payable {
    require msg.sender == owner
    require uint8(stor7.field_0)
    uint8(stor7.field_0) = 0
    emit 0x84618193: msg.sender
}

function sub_15ad8722(?) payable {
    require msg.sender == owner
    require uint8(stor5.field_176)
    uint8(stor5.field_176) = 0
    emit 0x6411781b: msg.sender
}

function pause() payable {
    require msg.sender == owner
    require uint8(stor5.field_176)
    require not uint8(stor5.field_168)
    uint8(stor5.field_168) = 1
    emit Paused(msg.sender);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_3bd00650(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require stor6[address(arg1)]
    stor6[address(arg1)] = 0
    emit 0xf7abde71: msg.sender, arg1
}

function sub_ad6a6ba3(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require uint8(stor7.field_0)
    require not stor6[address(arg1)]
    stor6[address(arg1)] = 1
    emit 0xbe2a12cd: msg.sender, arg1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not stor6[msg.sender]
    require not uint8(stor5.field_168)
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not stor6[msg.sender]
    require not uint8(stor5.field_168)
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
    require not stor6[msg.sender]
    require not uint8(stor5.field_168)
    require arg2 <= allowance[msg.sender][address(arg1)]
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not stor6[msg.sender]
    require not uint8(stor5.field_168)
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] = arg2 + allowance[msg.sender][address(arg1)]
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function sub_5b271caa(?) payable {
    require calldata.size - 4 >= 64
    require not uint8(stor5.field_168)
    require not stor6[msg.sender]
    require uint8(stor7.field_8)
    require arg2 > 0
    require not stor6[msg.sender]
    require not uint8(stor5.field_168)
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    stor6[address(arg1)] = 1
    emit 0xbe2a12cd: msg.sender, arg1
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require not stor6[address(arg1)]
    require not uint8(stor5.field_168)
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

function sub_8c49292d(?) payable {
    require calldata.size - 4 >= 96
    require not uint8(stor5.field_168)
    require not stor6[address(arg1)]
    require uint8(stor7.field_8)
    require arg3 > 0
    require not stor6[address(arg1)]
    require not uint8(stor5.field_168)
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
    stor6[address(arg2)] = 1
    emit 0xbe2a12cd: msg.sender, arg2
    return 1
}



}
