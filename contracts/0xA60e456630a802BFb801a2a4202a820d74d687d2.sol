contract main {




// =====================  Runtime code  =====================


const getNextUserId = 0


array of address user;
mapping of uint8 stor1;
mapping of address stor2;
mapping of uint256 balanceOf;
mapping of uint256 balanceTotalOf;
uint256 stor5;
uint256 stor6;

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function getUserAddressById(uint256 arg1) {
    require arg1 < user.length
    return user[arg1]
}

function balanceTotalOf(address arg1) {
    return balanceTotalOf[address(arg1)]
}

function _fallback() payable {
    call msg.sender with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getMyMoney() {
    require balanceOf[address(msg.sender)] > 0
    call msg.sender with:
       value balanceOf[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit GetMyMoney(msg.sender, balanceOf[address(msg.sender)]);
    balanceOf[address(msg.sender)] = 0
}

function register(address arg1) payable {
    require msg.value == 2 * 10^16
    require msg.sender
    require arg1
    require not stor1[address(msg.sender)]
    if user.length > 0:
        require arg1 != msg.sender
        require stor1[address(arg1)]
    user.length++
    user[user.length] = msg.sender
    stor1[address(msg.sender)] = 1
    stor2[address(msg.sender)] = arg1
    emit Register(msg.sender, arg1);
    require balanceOf[address(arg1)] + (msg.value / 4) >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += msg.value / 4
    require balanceTotalOf[address(arg1)] + (msg.value / 4) >= balanceTotalOf[address(arg1)]
    balanceTotalOf[address(arg1)] += msg.value / 4
    emit ReferalBonus((msg.value / 4), arg1);
    require balanceOf[stor2[address(arg1)]] + (msg.value / 4) >= balanceOf[stor2[address(arg1)]]
    balanceOf[stor2[address(arg1)]] += msg.value / 4
    require balanceTotalOf[stor2[address(arg1)]] + (msg.value / 4) >= balanceTotalOf[stor2[address(arg1)]]
    balanceTotalOf[stor2[address(arg1)]] += msg.value / 4
    emit ReferalBonus((msg.value / 4), stor2[address(arg1)]);
    require 1 <= user.length
    idx = 1
    while idx <= stor6:
        require stor5 + 1 >= stor5
        stor5++
        if stor5 > user.length - 1:
            stor5 = 0
        require stor6 > 0
        require stor6
        require stor5 < user.length
        require balanceOf[stor0[stor5]] + (msg.value / 2 / stor6) >= balanceOf[stor0[stor5]]
        require stor5 < user.length
        balanceOf[stor0[stor5]] += msg.value / 2 / stor6
        require stor6 > 0
        require stor6
        require stor5 < user.length
        require balanceTotalOf[stor0[stor5]] + (msg.value / 2 / stor6) >= balanceTotalOf[stor0[stor5]]
        require stor5 < user.length
        mem[32] = 4
        balanceTotalOf[stor0[stor5]] += msg.value / 2 / stor6
        mem[0] = 0
        require stor6 > 0
        require stor6
        mem[96] = msg.value / 2 / stor6
        emit BalanceUp((msg.value / 2 / stor6), user[stor5]);
        idx = idx + 1
        continue 
}



}
