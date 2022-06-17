contract main {




// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 balanceOf;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return stor[sha3(address(arg1), address(arg2) << 64, 1002)]
}

function _fallback() payable {
    revert
}

function sub_0f947fb7(?) {
    require calldata.size - 4 >= 64
    return sha3(address(arg1), address(arg2) << 64, 1002)
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0, 'Invalid spender address.'
    if balanceOf[msg.sender] < arg2:
        revert with 0, 'Insufficiency funds on the balance.'
    stor[sha3(msg.sender, address(arg1) << 64, 1002)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0, 'Invalid recipient address.'
    if arg2 <= 0:
        revert with 0, 'Invalid number of the tokens.'
    if balanceOf[msg.sender] < arg2:
        revert with 0, 'Insufficiency funds on the balance.'
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[msg.sender] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not arg2:
        revert with 0, 'Invalid recipient address.'
    if arg3 <= 0:
        revert with 0, 'Invalid number of the tokens.'
    if stor[sha3(address(arg1), Mask(224, 32, msg.sender) >> 32, 1002)] < arg3:
        revert with 0, 'Transfer not allowed.'
    if balanceOf[address(arg1)] < arg3:
        revert with 0, 'Insufficiency funds on the balance.'
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    stor[sha3(address(arg1), Mask(224, 32, msg.sender) >> 32, 1002)] -= arg3
    return 1
}



}
