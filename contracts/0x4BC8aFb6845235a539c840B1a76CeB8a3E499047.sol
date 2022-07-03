contract main {




// =====================  Runtime code  =====================


const name = ''

const decimals = 18

const symbol = ''


mapping of uint256 _balances;
mapping of uint256 allowance;
uint256 totalSupply;
uint8 stor3; offset 160
address owner;

function totalSupply() payable {
    return totalSupply
}

function paused() payable {
    return bool(stor3)
}

function _balances(address arg1) payable {
    require calldata.size - 4 >= 32
    return _balances[arg1]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return _balances[address(arg1)]
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

function isOwner() payable {
    return (msg.sender == owner)
}

function unpause() payable {
    require msg.sender == owner
    require stor3
    stor3 = 0
    emit Unpause()
}

function pause() payable {
    require msg.sender == owner
    require not stor3
    stor3 = 1
    emit Pause()
}

function renounceOwnership() payable {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
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
    require not stor3
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not stor3
    require arg1
    require arg2 <= _balances[address(msg.sender)]
    _balances[address(msg.sender)] -= arg2
    require arg2 + _balances[arg1] >= _balances[arg1]
    _balances[address(arg1)] = arg2 + _balances[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not stor3
    require arg2 <= allowance[msg.sender][address(arg1)]
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not stor3
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] = arg2 + allowance[msg.sender][address(arg1)]
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require not stor3
    require arg2
    require arg3 <= _balances[address(arg1)]
    _balances[address(arg1)] -= arg3
    require arg3 + _balances[arg2] >= _balances[arg2]
    _balances[address(arg2)] = arg3 + _balances[arg2]
    emit Transfer(arg3, arg1, arg2);
    require arg3 <= allowance[address(arg1)][msg.sender]
    require msg.sender
    require arg1
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}



}
