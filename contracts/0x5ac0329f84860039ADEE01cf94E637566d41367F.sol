contract main {




// =====================  Runtime code  =====================


uint256 totalSupply;
uint256 name;
uint256 symbol;
uint256 decimals;
uint8 stor4; offset 160
uint128 stor4; offset 160
address stor4;
mapping of uint256 balanceOf;

function name() payable {
    return name
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require uint8(stor4.field_160)
    return balanceOf[address(arg1)]
}

function symbol() payable {
    return symbol
}

function kill() payable {
    require msg.sender == address(stor4.field_0)
    require not uint8(stor4.field_160)
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function activate() payable {
    require msg.sender == address(stor4.field_0)
    Mask(96, 0, stor4.field_160) = 1
}

function deactivate() payable {
    require msg.sender == address(stor4.field_0)
    Mask(96, 0, stor4.field_160) = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == address(stor4.field_0)
    require arg1
    emit OwnershipTransferred(address(stor4.field_0), arg1);
    address(stor4.field_0) = arg1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require uint8(stor4.field_160)
    require arg1
    require arg1 != msg.sender
    require arg2 <= balanceOf[address(msg.sender)]
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
