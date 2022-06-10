contract main {




// =====================  Runtime code  =====================


const name = 'Cryptoxygen'

const decimals = 5

const decimalFactor = 100000

const symbol = 'OXY2'

const INITIAL_SUPPLY = 25 * 10^12


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
uint8 stor3; offset 160
uint128 stor3; offset 160
address owner;

function totalSupply() payable {
    return totalSupply
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function stopped() payable {
    return bool(uint8(stor3.field_160))
}

function owner() payable {
    return owner
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function stop() payable {
    require msg.sender == owner
    Mask(96, 0, stor3.field_160) = 1
}

function start() payable {
    require msg.sender == owner
    Mask(96, 0, stor3.field_160) = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require arg1
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not uint8(stor3.field_160)
    if block.timestamp < 432900 * 3600:
        require 0x68293d5f4826e200a33055d183e73f4227eced99 != msg.sender
        require 0xae4da48373f8cd3d54dd3a8aaaa9aec568ef29c6 != msg.sender
        require 0x77264564d740245e377e263675bdda2d23baac97 != msg.sender
    if block.timestamp < 433644 * 3600:
        require 0xf14eb018a5caa6b22b67ffffa61c9b78ab3957d2 != msg.sender
        require 0x2a7b09b90f8bdd22a9d66c83ada49961827c1dbe != msg.sender
    if owner != msg.sender:
        require block.timestamp >= 431460 * 3600
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require not uint8(stor3.field_160)
    if block.timestamp < 432900 * 3600:
        require arg1 != 0x68293d5f4826e200a33055d183e73f4227eced99
        require arg1 != 0xae4da48373f8cd3d54dd3a8aaaa9aec568ef29c6
        require arg1 != 0x77264564d740245e377e263675bdda2d23baac97
    if block.timestamp < 433644 * 3600:
        require arg1 != 0xf14eb018a5caa6b22b67ffffa61c9b78ab3957d2
        require arg1 != 0x2a7b09b90f8bdd22a9d66c83ada49961827c1dbe
    if arg1 != owner:
        require block.timestamp >= 431460 * 3600
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



}
