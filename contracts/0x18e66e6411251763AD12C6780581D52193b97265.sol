contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 sub_896aa79a;

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function sub_896aa79a(?) {
    require calldata.size - 4 >= 32
    return sub_896aa79a[arg1]
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if sub_896aa79a[address(msg.sender)]:
        require sub_896aa79a[address(msg.sender)]
        require sub_896aa79a[address(msg.sender)] * arg2 / sub_896aa79a[address(msg.sender)] == arg2
    require balanceOf[address(msg.sender)]
    sub_896aa79a[address(arg1)] += sub_896aa79a[address(msg.sender)] * arg2 / balanceOf[address(msg.sender)]
    sub_896aa79a[address(msg.sender)] -= sub_896aa79a[address(msg.sender)] * arg2 / balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
