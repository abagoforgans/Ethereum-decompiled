contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
address stor2;
mapping of uint256 stor3;

function _fallback() payable {
    stor0 = 10^6
    require not msg.value
    stor1 = msg.sender
    stor2 = msg.sender
    stor3[stor1] = stor0
    return code.data[271 len 7974]
}



// =====================  Runtime code  =====================


const name = 'Delaware Compliant Equity Token'

const decimals = 18

const symbol = 'DELA'


uint256 totalSupply;
address stor1;
address stor2;
mapping of uint256 balanceOf;
mapping of uint256 transferBalance;
mapping of uint256 allowance;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function transferBalance(address arg1, address arg2) {
    return transferBalance[address(arg1)][address(arg2)]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function destroy() {
    require msg.sender == stor1
    selfdestruct(stor1)
}

function _fallback() payable {
    revert
}

function changeDelegate(address arg1) {
    require msg.sender == stor1
    require arg1
    stor2 = arg1
    emit 0x9ce29d68: arg1
    return 1
}

function approve(address arg1, uint256 arg2) {
    if arg2 < 0:
        return 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    transferBalance[address(msg.sender)][address(arg1)] += arg2
    emit 0x68d8b242: msg.sender, address(arg1), arg2
    return 1
}

function sub_88545ee4(?) {
    if stor1 != msg.sender:
        require msg.sender == stor2
    if transferBalance[address(arg1)][address(arg2)] <= 0:
        return 0
    if balanceOf[address(arg1)] + transferBalance[address(arg1)][address(arg2)] <= balanceOf[address(arg1)]:
        return 0
    transferBalance[address(arg1)][address(arg2)] = 0
    balanceOf[address(arg1)] += transferBalance[address(arg1)][address(arg2)]
    return 1
}

function transferApproved(address arg1, address arg2, uint256 arg3) {
    if stor1 != msg.sender:
        require msg.sender == stor2
    if transferBalance[address(arg1)][address(arg2)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    transferBalance[address(arg1)][address(arg2)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function forceTransfer(address arg1, address arg2, uint256 arg3) {
    if stor1 != msg.sender:
        require msg.sender == stor2
    if balanceOf[address(arg1)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit 0x7b3ce50c: address(arg1), address(arg2), arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    transferBalance[address(arg1)][address(arg2)] += arg3
    emit 0x68d8b242: address(arg1), address(arg2), arg3
    return 1
}

function changeTotalSupply(uint256 arg1) {
    if stor1 != msg.sender:
        require msg.sender == stor2
    if arg1 - totalSupply <= 0:
        require arg1 - totalSupply < 0
        require balanceOf[stor1] >= 0
        require balanceOf[stor1] + arg1 - totalSupply >= 0
        require balanceOf[stor1] + arg1 - totalSupply < balanceOf[stor1]
    else:
        if balanceOf[stor1] < 0:
            require arg1 - totalSupply < 0
            require balanceOf[stor1] >= 0
            require balanceOf[stor1] + arg1 - totalSupply >= 0
            require balanceOf[stor1] + arg1 - totalSupply < balanceOf[stor1]
        else:
            if balanceOf[stor1] + arg1 - totalSupply <= balanceOf[stor1]:
                require arg1 - totalSupply < 0
                require balanceOf[stor1] >= 0
                require balanceOf[stor1] + arg1 - totalSupply >= 0
                require balanceOf[stor1] + arg1 - totalSupply < balanceOf[stor1]
    balanceOf[stor1] = balanceOf[stor1] + arg1 - totalSupply
    totalSupply = arg1
    emit SupplyChanged(arg1 - totalSupply, totalSupply);
    return 1
}



}
