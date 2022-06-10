contract main {




// =====================  Runtime code  =====================


const name = 'PostboyToken'

const decimals = 0

const symbol = 'PBY'

const INITIAL_SUPPLY = 100000


uint256 totalDividends;
uint256 totalSupply;
mapping of struct balanceOf;
mapping of uint256 allowance;
address adminAddress;
address payerAddress;

function payer() {
    return payerAddress
}

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)].field_0
}

function totalDividends() {
    return totalDividends
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function changePayer(address arg1) {
    require msg.sender == adminAddress
    payerAddress = arg1
    return 0
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sendDividends() payable {
    require msg.sender == payerAddress
    require msg.value + totalDividends >= totalDividends
    totalDividends += msg.value
}

function increaseApproval(address arg1, uint256 arg2) {
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] -= arg2
    else:
        allowance[msg.sender][address(arg1)] = 0
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function dividendBalanceOf(address arg1) {
    require balanceOf[address(arg1)].field_256 <= totalDividends
    if not balanceOf[address(arg1)].field_0:
        if totalSupply:
            return (0 / totalSupply)
    else:
        if (totalDividends * balanceOf[address(arg1)].field_0) - (balanceOf[address(arg1)].field_256 * balanceOf[address(arg1)].field_0) / balanceOf[address(arg1)].field_0 == totalDividends - balanceOf[address(arg1)].field_256:
            if totalSupply:
                return ((totalDividends * balanceOf[address(arg1)].field_0) - (balanceOf[address(arg1)].field_256 * balanceOf[address(arg1)].field_0) / totalSupply)
    revert
}

function claimDividend() {
    require balanceOf[address(msg.sender)].field_256 <= totalDividends
    if not balanceOf[address(msg.sender)].field_0:
        require totalSupply
        if 0 / totalSupply > 0:
            balanceOf[msg.sender].field_256 = totalDividends
            call msg.sender with:
               value 0 / totalSupply wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        require (totalDividends * balanceOf[address(msg.sender)].field_0) - (balanceOf[address(msg.sender)].field_256 * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 == totalDividends - balanceOf[address(msg.sender)].field_256
        require totalSupply
        if (totalDividends * balanceOf[address(msg.sender)].field_0) - (balanceOf[address(msg.sender)].field_256 * balanceOf[address(msg.sender)].field_0) / totalSupply > 0:
            balanceOf[msg.sender].field_256 = totalDividends
            call msg.sender with:
               value (totalDividends * balanceOf[address(msg.sender)].field_0) - (balanceOf[address(msg.sender)].field_256 * balanceOf[address(msg.sender)].field_0) / totalSupply wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)].field_0
    require balanceOf[address(arg1)].field_0 + arg2 >= balanceOf[address(arg1)].field_0
    require balanceOf[address(msg.sender)].field_256 <= totalDividends
    if not balanceOf[address(msg.sender)].field_0:
        require totalSupply
        require balanceOf[address(arg1)].field_256 <= totalDividends
        if not balanceOf[address(arg1)].field_0:
            require totalSupply
            require 0 / totalSupply <= 0
        else:
            require (totalDividends * balanceOf[address(arg1)].field_0) - (balanceOf[address(arg1)].field_256 * balanceOf[address(arg1)].field_0) / balanceOf[address(arg1)].field_0 == totalDividends - balanceOf[address(arg1)].field_256
            require totalSupply
            require 0 / totalSupply <= 0
            require (totalDividends * balanceOf[address(arg1)].field_0) - (balanceOf[address(arg1)].field_256 * balanceOf[address(arg1)].field_0) / totalSupply <= 0
    else:
        require (totalDividends * balanceOf[address(msg.sender)].field_0) - (balanceOf[address(msg.sender)].field_256 * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 == totalDividends - balanceOf[address(msg.sender)].field_256
        require totalSupply
        require balanceOf[address(arg1)].field_256 <= totalDividends
        if not balanceOf[address(arg1)].field_0:
            require totalSupply
            require (totalDividends * balanceOf[address(msg.sender)].field_0) - (balanceOf[address(msg.sender)].field_256 * balanceOf[address(msg.sender)].field_0) / totalSupply <= 0
            require 0 / totalSupply <= 0
        else:
            require (totalDividends * balanceOf[address(arg1)].field_0) - (balanceOf[address(arg1)].field_256 * balanceOf[address(arg1)].field_0) / balanceOf[address(arg1)].field_0 == totalDividends - balanceOf[address(arg1)].field_256
            require totalSupply
            require (totalDividends * balanceOf[address(msg.sender)].field_0) - (balanceOf[address(msg.sender)].field_256 * balanceOf[address(msg.sender)].field_0) / totalSupply <= 0
            require (totalDividends * balanceOf[address(arg1)].field_0) - (balanceOf[address(arg1)].field_256 * balanceOf[address(arg1)].field_0) / totalSupply <= 0
    require arg2 <= balanceOf[address(msg.sender)].field_0
    balanceOf[address(msg.sender)].field_0 -= arg2
    require arg2 + balanceOf[arg1].field_0 >= balanceOf[arg1].field_0
    balanceOf[address(arg1)].field_0 = arg2 + balanceOf[arg1].field_0
    balanceOf[address(arg1)].field_256 = balanceOf[msg.sender].field_256
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    require arg2
    require arg3 <= balanceOf[address(arg1)].field_0
    require balanceOf[address(arg2)].field_0 + arg3 >= balanceOf[address(arg2)].field_0
    require balanceOf[address(arg1)].field_256 <= totalDividends
    if not balanceOf[address(arg1)].field_0:
        require totalSupply
        require balanceOf[address(arg2)].field_256 <= totalDividends
        if not balanceOf[address(arg2)].field_0:
            require totalSupply
            require 0 / totalSupply <= 0
        else:
            require (totalDividends * balanceOf[address(arg2)].field_0) - (balanceOf[address(arg2)].field_256 * balanceOf[address(arg2)].field_0) / balanceOf[address(arg2)].field_0 == totalDividends - balanceOf[address(arg2)].field_256
            require totalSupply
            require 0 / totalSupply <= 0
            require (totalDividends * balanceOf[address(arg2)].field_0) - (balanceOf[address(arg2)].field_256 * balanceOf[address(arg2)].field_0) / totalSupply <= 0
    else:
        require (totalDividends * balanceOf[address(arg1)].field_0) - (balanceOf[address(arg1)].field_256 * balanceOf[address(arg1)].field_0) / balanceOf[address(arg1)].field_0 == totalDividends - balanceOf[address(arg1)].field_256
        require totalSupply
        require balanceOf[address(arg2)].field_256 <= totalDividends
        if not balanceOf[address(arg2)].field_0:
            require totalSupply
            require (totalDividends * balanceOf[address(arg1)].field_0) - (balanceOf[address(arg1)].field_256 * balanceOf[address(arg1)].field_0) / totalSupply <= 0
            require 0 / totalSupply <= 0
        else:
            require (totalDividends * balanceOf[address(arg2)].field_0) - (balanceOf[address(arg2)].field_256 * balanceOf[address(arg2)].field_0) / balanceOf[address(arg2)].field_0 == totalDividends - balanceOf[address(arg2)].field_256
            require totalSupply
            require (totalDividends * balanceOf[address(arg1)].field_0) - (balanceOf[address(arg1)].field_256 * balanceOf[address(arg1)].field_0) / totalSupply <= 0
            require (totalDividends * balanceOf[address(arg2)].field_0) - (balanceOf[address(arg2)].field_256 * balanceOf[address(arg2)].field_0) / totalSupply <= 0
    require arg3 <= balanceOf[address(arg1)].field_0
    balanceOf[address(arg1)].field_0 -= arg3
    require arg3 + balanceOf[arg2].field_0 >= balanceOf[arg2].field_0
    balanceOf[address(arg2)].field_0 = arg3 + balanceOf[arg2].field_0
    balanceOf[address(arg2)].field_256 = balanceOf[arg1].field_256
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
