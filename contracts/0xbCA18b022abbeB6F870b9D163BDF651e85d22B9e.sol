contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
uint256 stor2;
array of uint256 stor3;
array of uint256 stor4;
uint8 stor5;

function _fallback() payable {
    stor0[address(msg.sender)] = 0
    stor2 = 0
    bool(stor3.length) = 0
    stor3.length.field_1 = 13
    stor3.length.field_8 = 'Ether wrapper' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor4.length) = 0
    stor4.length.field_1 = 4
    stor4.length.field_8 = 'ETHw' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor5 = 18
    return code.data[580 len 3235]
}



// =====================  Runtime code  =====================


const totalSupply = eth.balance(this.address)


mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;

function name() payable {
    return name[0 len name.length]
}

function decimals() payable {
    return decimals
}

function balanceOf(address arg1) payable {
    return balanceOf[address(arg1)]
}

function symbol() payable {
    return symbol[0 len symbol.length]
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
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function withdraw(uint256 arg1) payable {
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    call msg.sender with:
       value arg1 wei
         gas gas_remaining - 34050 wei
    if ext_call.success:
        emit Withdrawal(arg1, msg.sender);
        return 1
    require balanceOf[address(msg.sender)] + arg1 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += arg1
    return 0
}



}
