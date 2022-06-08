contract main {




// =====================  Runtime code  =====================


const name = 'Veil Ether'

const decimals = 18

const symbol = 'Veil ETH'


uint256 totalSupply;
mapping of uint256 balances;
mapping of uint256 allowed;

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function allowed(address arg1, address arg2) {
    return allowed[arg1][arg2]
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function allowance(address arg1, address arg2) {
    return allowed[address(arg1)][address(arg2)]
}

function approve(address arg1, uint256 arg2) {
    allowed[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function _fallback() payable {
    require msg.value + balances[msg.sender] >= balances[msg.sender]
    balances[msg.sender] += msg.value
    require msg.value + totalSupply >= totalSupply
    totalSupply += msg.value
    emit Deposit(msg.value, msg.sender);
}

function deposit() payable {
    require msg.value + balances[msg.sender] >= balances[msg.sender]
    balances[msg.sender] += msg.value
    require msg.value + totalSupply >= totalSupply
    totalSupply += msg.value
    emit Deposit(msg.value, msg.sender);
    return 1
}

function depositAndApprove(address arg1, uint256 arg2) payable {
    require msg.value + balances[msg.sender] >= balances[msg.sender]
    balances[msg.sender] += msg.value
    require msg.value + totalSupply >= totalSupply
    totalSupply += msg.value
    emit Deposit(msg.value, msg.sender);
    allowed[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function withdraw(uint256 arg1) {
    if arg1 > balances[msg.sender]:
        revert with 0, 'Insufficient user balance'
    require arg1 <= balances[msg.sender]
    balances[msg.sender] -= arg1
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
    if arg1 > balances[msg.sender]:
        revert with 0, 'Insufficient user balance'
    if not arg2:
        revert with 0, 'Invalid target address'
    require arg1 <= balances[msg.sender]
    balances[msg.sender] -= arg1
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

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if arg3 > balances[address(arg1)]:
        revert with 0, 'Insufficient user balance'
    if arg1 != msg.sender:
        if allowed[address(arg1)][address(msg.sender)] != -1:
            if allowed[address(arg1)][address(msg.sender)] < arg3:
                revert with 0, 'Insufficient user allowance'
            require arg3 <= allowed[address(arg1)][msg.sender]
            allowed[address(arg1)][msg.sender] -= arg3
    require arg3 <= balances[address(arg1)]
    balances[address(arg1)] -= arg3
    require arg3 + balances[arg2] >= balances[arg2]
    balances[address(arg2)] = arg3 + balances[arg2]
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if arg2 > balances[address(msg.sender)]:
        revert with 0, 'Insufficient user balance'
    if msg.sender != msg.sender:
        if allowed[address(msg.sender)][address(msg.sender)] != -1:
            if allowed[address(msg.sender)][address(msg.sender)] < arg2:
                revert with 0, 'Insufficient user allowance'
            require arg2 <= allowed[address(msg.sender)][msg.sender]
            allowed[address(msg.sender)][msg.sender] -= arg2
    require arg2 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    require arg2 + balances[arg1] >= balances[arg1]
    balances[address(arg1)] = arg2 + balances[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
