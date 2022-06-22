contract main {




// =====================  Runtime code  =====================


const name = 'ULTRON'

const decimals = 18

const symbol = 'UTRN'


mapping of uint256 balanceOf;
mapping of uint256 allowance;
address stor2;
mapping of uint8 stor3;
uint256 totalSupply;
uint8 stor5;

function totalSupply() payable {
    return totalSupply
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function freezeTransfers() payable {
    require msg.sender == stor2
    if not stor5:
        stor5 = 1
        emit Freeze()
}

function setOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == stor2
    stor2 = arg1
}

function unfreezeTransfers() payable {
    require msg.sender == stor2
    if stor5:
        stor5 = 0
        emit Unfreeze()
}

function freezeAccount(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == stor2
    require arg1 != msg.sender
    stor3[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if allowance[address(msg.sender)][address(arg1)]:
        require not arg2
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function refundTokens(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require msg.sender == stor2
    require arg1 != this.address
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit RefundTokens(address(arg1), address(arg2), arg3);
}

function createTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == stor2
    if arg1 <= 0:
        return 0
    require totalSupply <= 510000000 * 10^18
    if arg1 > -totalSupply + 510000000 * 10^18:
        return 0
    require balanceOf[address(msg.sender)] + arg1 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += arg1
    require totalSupply + arg1 >= totalSupply
    totalSupply += arg1
    emit Transfer(arg1, 0, msg.sender);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not stor3[address(msg.sender)]
    if stor5:
        return 0
    require arg1
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 > 0:
        if arg1 != msg.sender:
            require arg2 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= arg2
            require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require not stor3[address(arg1)]
    if stor5:
        return 0
    require arg2
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if balanceOf[address(arg1)] < arg3:
        return 0
    if arg3 > 0:
        if arg1 != arg2:
            require arg3 <= allowance[address(arg1)][address(msg.sender)]
            allowance[address(arg1)][address(msg.sender)] -= arg3
            require arg3 <= balanceOf[address(arg1)]
            balanceOf[address(arg1)] -= arg3
            require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
            balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
