contract main {




// =====================  Runtime code  =====================


const name = 'Deposit Asset'

const decimals = 6

const symbol = 'DA'

const fund = 1


mapping of uint256 balanceOf;
mapping of uint256 sub_896aa79a;
mapping of uint256 allowance;
uint256 totalSupply;
uint256 sub_89acb911;
uint256 sub_4840b07c;

function totalSupply() {
    return totalSupply
}

function sub_4840b07c(?) {
    return sub_4840b07c
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function sub_896aa79a(?) {
    require calldata.size - 4 >= 32
    return sub_896aa79a[arg1]
}

function sub_89acb911(?) {
    return sub_89acb911
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2:
        require not allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if sub_896aa79a[msg.sender]:
        require sub_896aa79a[msg.sender]
        require arg2 * sub_896aa79a[msg.sender] / sub_896aa79a[msg.sender] == arg2
    require balanceOf[msg.sender]
    sub_896aa79a[address(arg1)] += arg2 * sub_896aa79a[msg.sender] / balanceOf[msg.sender]
    sub_896aa79a[msg.sender] -= arg2 * sub_896aa79a[msg.sender] / balanceOf[msg.sender]
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg3
    if sub_896aa79a[msg.sender]:
        require sub_896aa79a[msg.sender]
        require arg3 * sub_896aa79a[msg.sender] / sub_896aa79a[msg.sender] == arg3
    require balanceOf[msg.sender]
    sub_896aa79a[address(arg2)] += arg3 * sub_896aa79a[msg.sender] / balanceOf[msg.sender]
    sub_896aa79a[msg.sender] -= arg3 * sub_896aa79a[msg.sender] / balanceOf[msg.sender]
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function devidendsOf(address arg1) {
    require calldata.size - 4 >= 32
    require sub_89acb911 + eth.balance(this.address) >= eth.balance(this.address)
    if not sub_89acb911 + eth.balance(this.address):
        if totalSupply:
            if sub_896aa79a[address(arg1)] <= (sub_89acb911 * balanceOf[address(arg1)]) + (eth.balance(this.address) * balanceOf[address(arg1)]) / totalSupply:
                return (((sub_89acb911 * balanceOf[address(arg1)]) + (eth.balance(this.address) * balanceOf[address(arg1)]) / totalSupply) - sub_896aa79a[address(arg1)])
    else:
        if sub_89acb911 + eth.balance(this.address):
            if (sub_89acb911 * balanceOf[address(arg1)]) + (eth.balance(this.address) * balanceOf[address(arg1)]) / sub_89acb911 + eth.balance(this.address) == balanceOf[address(arg1)]:
                if totalSupply:
                    if sub_896aa79a[address(arg1)] <= (sub_89acb911 * balanceOf[address(arg1)]) + (eth.balance(this.address) * balanceOf[address(arg1)]) / totalSupply:
                        return (((sub_89acb911 * balanceOf[address(arg1)]) + (eth.balance(this.address) * balanceOf[address(arg1)]) / totalSupply) - sub_896aa79a[address(arg1)])
    revert
}

function getDevidends() {
    require 0 < balanceOf[msg.sender]
    require sub_89acb911 + eth.balance(this.address) >= eth.balance(this.address)
    if sub_89acb911 + eth.balance(this.address):
        require sub_89acb911 + eth.balance(this.address)
        require (sub_89acb911 * balanceOf[address(msg.sender)]) + (eth.balance(this.address) * balanceOf[address(msg.sender)]) / sub_89acb911 + eth.balance(this.address) == balanceOf[address(msg.sender)]
    require totalSupply
    require sub_896aa79a[address(msg.sender)] <= (sub_89acb911 * balanceOf[address(msg.sender)]) + (eth.balance(this.address) * balanceOf[address(msg.sender)]) / totalSupply
    sub_896aa79a[msg.sender] = ((sub_89acb911 * balanceOf[address(msg.sender)]) + (eth.balance(this.address) * balanceOf[address(msg.sender)]) / totalSupply) - sub_896aa79a[address(msg.sender)] + sub_896aa79a[msg.sender]
    sub_89acb911 = ((sub_89acb911 * balanceOf[address(msg.sender)]) + (eth.balance(this.address) * balanceOf[address(msg.sender)]) / totalSupply) - sub_896aa79a[address(msg.sender)] + sub_89acb911
    call msg.sender with:
       value ((sub_89acb911 * balanceOf[address(msg.sender)]) + (eth.balance(this.address) * balanceOf[address(msg.sender)]) / totalSupply) - sub_896aa79a[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function _fallback() payable {
    if 1 == msg.value:
        require balanceOf[msg.sender] > 0
        require sub_89acb911 + eth.balance(this.address) >= eth.balance(this.address)
        if sub_89acb911 + eth.balance(this.address):
            require sub_89acb911 + eth.balance(this.address)
            require (sub_89acb911 * balanceOf[address(msg.sender)]) + (eth.balance(this.address) * balanceOf[address(msg.sender)]) / sub_89acb911 + eth.balance(this.address) == balanceOf[address(msg.sender)]
        require totalSupply
        require sub_896aa79a[address(msg.sender)] <= (sub_89acb911 * balanceOf[address(msg.sender)]) + (eth.balance(this.address) * balanceOf[address(msg.sender)]) / totalSupply
        sub_896aa79a[msg.sender] = ((sub_89acb911 * balanceOf[address(msg.sender)]) + (eth.balance(this.address) * balanceOf[address(msg.sender)]) / totalSupply) - sub_896aa79a[address(msg.sender)] + sub_896aa79a[msg.sender]
        sub_89acb911 = ((sub_89acb911 * balanceOf[address(msg.sender)]) + (eth.balance(this.address) * balanceOf[address(msg.sender)]) / totalSupply) - sub_896aa79a[address(msg.sender)] + sub_89acb911
        call msg.sender with:
           value ((sub_89acb911 * balanceOf[address(msg.sender)]) + (eth.balance(this.address) * balanceOf[address(msg.sender)]) / totalSupply) - sub_896aa79a[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
