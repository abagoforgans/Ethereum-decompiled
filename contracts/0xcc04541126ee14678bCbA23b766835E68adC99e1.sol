contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 _allowed;
uint256 totalSupply;
mapping of uint8 stor3;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function isMinter(address arg1) {
    require arg1
    return bool(stor3[address(arg1)])
}

function _allowed(address arg1, address arg2) {
    return _allowed[arg1][arg2]
}

function allowance(address arg1, address arg2) {
    return _allowed[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function renounceMinter() {
    require msg.sender
    stor3[address(msg.sender)] = 0
    emit MinterRemoved(msg.sender);
}

function addMinter(address arg1) {
    require msg.sender
    require stor3[address(msg.sender)]
    require arg1
    stor3[address(arg1)] = 1
    emit MinterAdded(arg1);
}

function approve(address arg1, uint256 arg2) {
    require arg1
    _allowed[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= _allowed[address(msg.sender)][address(arg1)]
    _allowed[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(_allowed[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require arg1
    require _allowed[address(msg.sender)][address(arg1)] + arg2 >= _allowed[address(msg.sender)][address(arg1)]
    _allowed[address(msg.sender)][address(arg1)] += arg2
    emit Approval(_allowed[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require msg.sender
    require stor3[address(msg.sender)]
    require arg1
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(msg.sender)]
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sub_56e288cd(?) {
    require msg.sender
    require stor3[address(msg.sender)]
    require msg.sender
    require stor3[address(msg.sender)]
    require arg1
    require totalSupply + arg3 >= totalSupply
    totalSupply += arg3
    require balanceOf[address(arg1)] + arg3 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg3
    emit Transfer(arg3, 0, arg1);
    _allowed[address(arg1)][address(arg2)] = -1
    return 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= _allowed[address(arg1)][address(msg.sender)]
    require arg3 <= _allowed[address(arg1)][address(msg.sender)]
    _allowed[address(arg1)][address(msg.sender)] -= arg3
    require arg3 <= balanceOf[address(arg1)]
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
