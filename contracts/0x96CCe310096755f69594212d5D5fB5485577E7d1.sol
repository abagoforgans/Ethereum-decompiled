contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function _fallback() payable {
    require msg.value + balanceOf[msg.sender] >= balanceOf[msg.sender]
    balanceOf[msg.sender] += msg.value
    require msg.value + totalSupply >= totalSupply
    totalSupply += msg.value
    emit Deposit(msg.value, msg.sender);
}

function deposit() payable {
    require msg.value + balanceOf[msg.sender] >= balanceOf[msg.sender]
    balanceOf[msg.sender] += msg.value
    require msg.value + totalSupply >= totalSupply
    totalSupply += msg.value
    emit Deposit(msg.value, msg.sender);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 >= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] = 0
    else:
        require arg2 <= allowance[msg.sender][address(arg1)]
        allowance[msg.sender][address(arg1)] -= arg2
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function depositAndApprove(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.value + balanceOf[msg.sender] >= balanceOf[msg.sender]
    balanceOf[msg.sender] += msg.value
    require msg.value + totalSupply >= totalSupply
    totalSupply += msg.value
    emit Deposit(msg.value, msg.sender);
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 > balanceOf[msg.sender]:
        revert with 0, 'insufficient balance'
    if not arg1:
        revert with 0, 'token burn not allowed'
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 > balanceOf[msg.sender]:
        revert with 0, 'Insufficient user balance'
    require arg1 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Withdrawal(arg1, msg.sender);
    return 1
}

function withdrawAndTransfer(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if arg1 > balanceOf[msg.sender]:
        revert with 0, 'Insufficient user balance'
    if not arg2:
        revert with 0, 'Invalid target address'
    require arg1 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    call arg2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Withdrawal(arg1, msg.sender);
    return 1
}

function depositAndTransfer(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.value + balanceOf[msg.sender] >= balanceOf[msg.sender]
    balanceOf[msg.sender] += msg.value
    require msg.value + totalSupply >= totalSupply
    totalSupply += msg.value
    emit Deposit(msg.value, msg.sender);
    if msg.value > balanceOf[msg.sender]:
        revert with 0, 'insufficient balance'
    if not arg1:
        revert with 0, 'token burn not allowed'
    require msg.value <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= msg.value
    require msg.value + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = msg.value + balanceOf[arg1]
    emit Transfer(msg.value, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 'insufficient balance'
    if arg3 > allowance[address(arg1)][msg.sender]:
        revert with 0, 'insufficient allowance'
    if not arg2:
        revert with 0, 'token burn not allowed'
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    if allowance[address(arg1)][msg.sender] < -1:
        require arg3 <= allowance[address(arg1)][msg.sender]
        allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
