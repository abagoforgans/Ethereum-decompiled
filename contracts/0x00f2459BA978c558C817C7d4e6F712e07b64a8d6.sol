contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
uint256 stor2;

function _fallback() payable {
    stor0[address(msg.sender)] = code.data[1772 len 32]
    stor2 = code.data[1772 len 32]
    return code.data[111 len 1661]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;

function totalSupply() payable {
    return totalSupply
}

function balanceOf(address arg1) payable {
    return balanceOf[address(arg1)]
}

function allowance(address arg1, address arg2) payable {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert 
}

function approve(address arg1, uint256 arg2) payable {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    return 1
}



}
