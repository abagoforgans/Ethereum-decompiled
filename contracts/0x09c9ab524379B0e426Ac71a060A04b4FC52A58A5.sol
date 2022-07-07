contract main {




// =====================  Runtime code  =====================


const balanceETH = eth.balance(this.address)

const DECIMALS = 0

const INITIAL_SUPPLY = 100


mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint256 sub_bbd7e9c3;
mapping of uint256 sub_1f605e79;
uint256 dividendPerToken;
uint256 totalSupply;
uint256 sub_5ce36a87;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function sub_1f605e79(?) {
    require calldata.size - 4 >= 32
    return sub_1f605e79[address(arg1)]
}

function decimals() {
    return decimals
}

function sub_5ce36a87(?) {
    return sub_5ce36a87
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function dividendPerToken() {
    return dividendPerToken
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_bbd7e9c3(?) {
    return sub_bbd7e9c3[msg.sender]
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
  stop
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= allowance[msg.sender][address(arg1)]
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] = arg2 + allowance[msg.sender][address(arg1)]
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function update(address arg1) {
    require calldata.size - 4 >= 32
    require sub_5ce36a87 + eth.balance(this.address) >= eth.balance(this.address)
    require totalSupply > 0
    require totalSupply
    dividendPerToken = sub_5ce36a87 + eth.balance(this.address) / totalSupply
    require sub_1f605e79[address(arg1)] <= sub_5ce36a87 + eth.balance(this.address) / totalSupply
    if not balanceOf[address(arg1)]:
        sub_bbd7e9c3[address(arg1)] = 0
    else:
        require (sub_5ce36a87 + eth.balance(this.address) / totalSupply * balanceOf[address(arg1)]) - (sub_1f605e79[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] == (sub_5ce36a87 + eth.balance(this.address) / totalSupply) - sub_1f605e79[address(arg1)]
        sub_bbd7e9c3[address(arg1)] = (sub_5ce36a87 + eth.balance(this.address) / totalSupply * balanceOf[address(arg1)]) - (sub_1f605e79[address(arg1)] * balanceOf[address(arg1)])
    sub_1f605e79[address(arg1)] = dividendPerToken
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    require sub_5ce36a87 + eth.balance(this.address) >= eth.balance(this.address)
    require totalSupply > 0
    require totalSupply
    dividendPerToken = sub_5ce36a87 + eth.balance(this.address) / totalSupply
    require sub_1f605e79[address(msg.sender)] <= sub_5ce36a87 + eth.balance(this.address) / totalSupply
    if not balanceOf[address(msg.sender)]:
        sub_bbd7e9c3[address(msg.sender)] = 0
    else:
        require (sub_5ce36a87 + eth.balance(this.address) / totalSupply * balanceOf[address(msg.sender)]) - (sub_1f605e79[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] == (sub_5ce36a87 + eth.balance(this.address) / totalSupply) - sub_1f605e79[address(msg.sender)]
        sub_bbd7e9c3[address(msg.sender)] = (sub_5ce36a87 + eth.balance(this.address) / totalSupply * balanceOf[address(msg.sender)]) - (sub_1f605e79[address(msg.sender)] * balanceOf[address(msg.sender)])
    sub_1f605e79[address(msg.sender)] = dividendPerToken
    sub_1f605e79[address(arg1)] = dividendPerToken
    return 1
}

function withdraw() payable {
    require sub_5ce36a87 + eth.balance(this.address) >= eth.balance(this.address)
    require totalSupply > 0
    require totalSupply
    dividendPerToken = sub_5ce36a87 + eth.balance(this.address) / totalSupply
    require sub_1f605e79[address(msg.sender)] <= sub_5ce36a87 + eth.balance(this.address) / totalSupply
    if not balanceOf[address(msg.sender)]:
        sub_bbd7e9c3[address(msg.sender)] = 0
    else:
        require (sub_5ce36a87 + eth.balance(this.address) / totalSupply * balanceOf[address(msg.sender)]) - (sub_1f605e79[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] == (sub_5ce36a87 + eth.balance(this.address) / totalSupply) - sub_1f605e79[address(msg.sender)]
        sub_bbd7e9c3[address(msg.sender)] = (sub_5ce36a87 + eth.balance(this.address) / totalSupply * balanceOf[address(msg.sender)]) - (sub_1f605e79[address(msg.sender)] * balanceOf[address(msg.sender)])
    sub_1f605e79[address(msg.sender)] = dividendPerToken
    if sub_bbd7e9c3[msg.sender] <= eth.balance(this.address):
        sub_bbd7e9c3[msg.sender] = 0
        emit Withdraw(sub_bbd7e9c3[msg.sender], msg.sender);
        call msg.sender with:
           value sub_bbd7e9c3[msg.sender] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require sub_bbd7e9c3[msg.sender] + sub_5ce36a87 >= sub_5ce36a87
        sub_5ce36a87 += sub_bbd7e9c3[msg.sender]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    require arg3 <= allowance[address(arg1)][msg.sender]
    require msg.sender
    require arg1
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    require sub_5ce36a87 + eth.balance(this.address) >= eth.balance(this.address)
    require totalSupply > 0
    require totalSupply
    dividendPerToken = sub_5ce36a87 + eth.balance(this.address) / totalSupply
    require sub_1f605e79[address(arg1)] <= sub_5ce36a87 + eth.balance(this.address) / totalSupply
    if not balanceOf[address(arg1)]:
        sub_bbd7e9c3[address(arg1)] = 0
    else:
        require (sub_5ce36a87 + eth.balance(this.address) / totalSupply * balanceOf[address(arg1)]) - (sub_1f605e79[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] == (sub_5ce36a87 + eth.balance(this.address) / totalSupply) - sub_1f605e79[address(arg1)]
        sub_bbd7e9c3[address(arg1)] = (sub_5ce36a87 + eth.balance(this.address) / totalSupply * balanceOf[address(arg1)]) - (sub_1f605e79[address(arg1)] * balanceOf[address(arg1)])
    sub_1f605e79[address(arg1)] = dividendPerToken
    sub_1f605e79[address(arg2)] = dividendPerToken
    return 1
}



}
