contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
uint256 stor2;

function _fallback() payable {
    stor0[address(msg.sender)] = 0
    stor2 = 0
    return code.data[85 len 2355]
}



// =====================  Runtime code  =====================


const totalSupply = eth.balance(this.address)


mapping of uint256 balanceOf;
mapping of uint256 allowance;

function balanceOf(address arg1) payable {
    return balanceOf[address(arg1)]
}

function allowance(address arg1, address arg2) payable {
    return allowance[address(arg1)][address(arg2)]
}

function deposit() payable {
    balanceOf[address(msg.sender)] += msg.value
    emit Deposit(msg.value, msg.sender);
    return 1
}

function _fallback() payable {
    balanceOf[address(msg.sender)] += msg.value
    emit Deposit(msg.value, msg.sender);
    return 1
}

function approve(address arg1, uint256 arg2) payable {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function withdraw(uint256 arg1) payable {
    if balanceOf[address(msg.sender)] < arg1:
        return 0
    call msg.sender with:
       value arg1 wei
         gas gas_remaining - 34050 wei
    if not ext_call.success:
        return 0
    balanceOf[address(msg.sender)] -= arg1
    emit Withdrawal(arg1, msg.sender);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
