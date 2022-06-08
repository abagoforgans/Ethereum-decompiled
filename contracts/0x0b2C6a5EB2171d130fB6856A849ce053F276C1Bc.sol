contract main {




// =====================  Runtime code  =====================


const name = 'BitZAR'

const decimals = 18

const symbol = 'BTZ'


mapping of uint256 balanceOf;
mapping of uint256 allowance;
address stor2;
mapping of uint8 stor3;
uint256 totalSupply;
uint8 stor5;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) {
    require msg.sender == stor2
    stor2 = arg1
}

function freezeTransfers() {
    require msg.sender == stor2
    if not stor5:
        stor5 = 1
        emit Freeze()
}

function unfreezeTransfers() {
    require msg.sender == stor2
    if stor5:
        stor5 = 0
        emit Unfreeze()
}

function freezeAccount(address arg1, bool arg2) {
    require msg.sender == stor2
    require arg1 != msg.sender
    stor3[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function approve(address arg1, uint256 arg2) {
    if allowance[address(msg.sender)][address(arg1)]:
        require not arg2
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function createTokens(uint256 arg1) {
    require msg.sender == stor2
    if arg1 <= 0:
        return 0
    require totalSupply <= 100000000 * 10^18
    if arg1 > -totalSupply + 100000000 * 10^18:
        return 0
    require arg1 + balanceOf[msg.sender] >= balanceOf[msg.sender]
    balanceOf[msg.sender] += arg1
    require arg1 + totalSupply >= totalSupply
    totalSupply += arg1
    emit Transfer(arg1, 0, msg.sender);
    return 1
}

function refundTokens(address arg1, address arg2, uint256 arg3) {
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

function transfer(address arg1, uint256 arg2) {
    require not stor3[msg.sender]
    if stor5:
        return 0
    require arg1
    if arg2 > balanceOf[msg.sender]:
        return 0
    if arg2 > 0:
        if arg1 != msg.sender:
            require arg2 <= balanceOf[msg.sender]
            balanceOf[msg.sender] -= arg2
            require arg2 + balanceOf[arg1] >= balanceOf[arg1]
            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor3[address(arg1)]
    if stor5:
        return 0
    require arg2
    if arg3 > allowance[address(arg1)][msg.sender]:
        return 0
    if arg3 > balanceOf[address(arg1)]:
        return 0
    if arg3 > 0:
        if arg1 != arg2:
            require arg3 <= allowance[address(arg1)][msg.sender]
            allowance[address(arg1)][msg.sender] -= arg3
            require arg3 <= balanceOf[address(arg1)]
            balanceOf[address(arg1)] -= arg3
            require arg3 + balanceOf[arg2] >= balanceOf[arg2]
            balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
