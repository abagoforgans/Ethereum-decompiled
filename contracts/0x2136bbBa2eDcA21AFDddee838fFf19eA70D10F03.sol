contract main {


// =======================  Init code  ======================


uint256 stor2;
uint256 stor3;
uint256 stor4;

function _fallback() payable {
    stor2 = code.data[3897 len 32]
    stor3 = code.data[3929 len 32]
    stor4 = code.data[3961 len 32]
    return code.data[68 len 3829]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 stor1;
address feeAccount;
uint256 feeMake;
uint256 feeTake;
mapping of uint256 stor39204915705298553814655490009657593440635990604519201932351344507230155684447;

function feeMake() payable {
    return feeMake
}

function feeAccount() payable {
    return feeAccount
}

function feeTake() payable {
    return feeTake
}

function balanceOf(address arg1, address arg2) payable {
    return balanceOf[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert 
}

function deposit() payable {
    require msg.value + stor56AD[msg.sender] >= stor56AD[msg.sender]
    require msg.value + stor56AD[msg.sender] >= msg.value
    stor56AD[msg.sender] += msg.value
    emit Deposit(0, msg.sender, msg.value, msg.value + stor56AD[msg.sender]);
}

function order(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint8 arg7, bytes32 arg8, bytes32 arg9) payable {
    require msg.value <= 0
    emit Order(address(arg1), arg2, address(arg3), arg4, arg5, arg6, address(msg.sender), arg7 << 248, arg8, arg9);
}

function withdraw(uint256 arg1) payable {
    require msg.value <= 0
    require stor56AD[msg.sender] >= arg1
    require arg1 <= stor56AD[msg.sender]
    stor56AD[msg.sender] -= arg1
    call msg.sender with:
       value arg1 wei
         gas gas_remaining - 34050 wei
    require ext_call.success
    emit Withdraw(0, msg.sender, arg1, stor56AD[msg.sender]);
}

function cancelOrder(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10) payable {
    require msg.value <= 0
    hash = sha256hash(address(arg1), address(arg2), arg3, arg4, arg5, arg6) 
    require sha256hash.result
    require msg.sender == arg7
    stor1[hash] = arg2
    emit Cancel(address(arg1), arg2, address(arg3), arg4, arg5, arg6, address(msg.sender), arg8 << 248, arg9, arg10);
}

function withdrawToken(address arg1, uint256 arg2) payable {
    require msg.value <= 0
    require arg1 != 0
    require balanceOf[address(arg1)][address(msg.sender)] >= arg2
    require arg2 <= balanceOf[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)][address(msg.sender)] -= arg2
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining - 25050 wei
        args msg.sender, arg2
    require ext_call.success
    require ext_call.return_data[0]
    emit Withdraw(address(arg1), msg.sender, arg2, balanceOf[address(arg1)][address(msg.sender)]);
}

function depositToken(address arg1, uint256 arg2) payable {
    require msg.value <= 0
    require arg1 != 0
    call arg1.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 25050 wei
        args msg.sender, address(this.address), arg2
    require ext_call.success
    require ext_call.return_data[0]
    require arg2 + balanceOf[address(arg1)][address(msg.sender)] >= balanceOf[address(arg1)][address(msg.sender)]
    require arg2 + balanceOf[address(arg1)][address(msg.sender)] >= arg2
    balanceOf[address(arg1)][address(msg.sender)] += arg2
    emit Deposit(address(arg1), msg.sender, arg2, arg2 + balanceOf[address(arg1)][address(msg.sender)]);
}

function availableVolume(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10) payable {
    hash = sha256hash(address(arg1), address(arg2), arg3, arg4, arg5, arg6) 
    require sha256hash.result
    signer = erecover(hash, arg8 << 248, arg9, arg10) 
    require erecover.result
    if address(signer) != arg7:
        return 0
    if block.number > arg5:
        return 0
    require stor1[hash] <= arg2
    if balanceOf[address(arg3)][address(arg7)] != 0:
        require balanceOf[address(arg3)][address(arg7)] * arg2 / balanceOf[address(arg3)][address(arg7)] == arg2
    if arg2 - stor1[hash] >= balanceOf[address(arg3)][address(arg7)] * arg2 / arg4:
        return (balanceOf[address(arg3)][address(arg7)] * arg2 / arg4)
    return (arg2 - stor1[hash])
}

function testTrade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11, address arg12) payable {
    if balanceOf[address(arg1)][address(arg12)] >= arg11:
        hash = sha256hash(address(arg1), address(arg2), arg3, arg4, arg5, arg6) 
        require sha256hash.result
        signer = erecover(hash, arg8 << 248, arg9, arg10) 
        require erecover.result
        if address(signer) != arg7:
            if 0 >= arg11:
                return 1
        else:
            if block.number > arg5:
                if 0 >= arg11:
                    return 1
            else:
                require stor1[hash] <= arg2
                if balanceOf[address(arg3)][address(arg7)] != 0:
                    require balanceOf[address(arg3)][address(arg7)] * arg2 / balanceOf[address(arg3)][address(arg7)] == arg2
                if arg2 - stor1[hash] >= balanceOf[address(arg3)][address(arg7)] * arg2 / arg4:
                    if balanceOf[address(arg3)][address(arg7)] * arg2 / arg4 >= arg11:
                        return 1
                else:
                    if arg2 - stor1[hash] >= arg11:
                        return 1
        return 0
    else:
        return 0
}

function trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) payable {
    require msg.value <= 0
    hash = sha256hash(address(arg1), address(arg2), arg3, arg4, arg5, arg6) 
    require sha256hash.result
    signer = erecover(hash, arg8 << 248, arg9, arg10) 
    require erecover.result
    require address(signer) == arg7
    require block.number <= arg5
    require arg11 + stor1[hash] >= stor1[hash]
    require arg11 + stor1[hash] >= arg11
    require arg11 + stor1[hash] <= arg2
    require balanceOf[address(arg1)][address(msg.sender)] >= arg11
    if arg4 != 0:
        require arg4 * arg11 / arg4 == arg11
    require balanceOf[address(arg3)][address(arg7)] >= arg4 * arg11 / arg2
    require arg11 <= balanceOf[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)][address(msg.sender)] -= arg11
    if arg11 != 0:
        require (10^18 * arg11) - (feeMake * arg11) / arg11 == -feeMake + 10^18
    require ((10^18 * arg11) - (feeMake * arg11) / 10^18) + balanceOf[address(arg1)][arg7] >= balanceOf[address(arg1)][arg7]
    require ((10^18 * arg11) - (feeMake * arg11) / 10^18) + balanceOf[address(arg1)][arg7] >= (10^18 * arg11) - (feeMake * arg11) / 10^18
    balanceOf[address(arg1)][address(arg7)] = ((10^18 * arg11) - (feeMake * arg11) / 10^18) + balanceOf[address(arg1)][arg7]
    if arg11 != 0:
        require arg11 * feeMake / arg11 == feeMake
    require (arg11 * feeMake / 10^18) + balanceOf[address(arg1)][stor2] >= balanceOf[address(arg1)][stor2]
    require (arg11 * feeMake / 10^18) + balanceOf[address(arg1)][stor2] >= arg11 * feeMake / 10^18
    balanceOf[address(arg1)][stor2] += arg11 * feeMake / 10^18
    if arg4 != 0:
        require arg4 * arg11 / arg4 == arg11
    require arg4 * arg11 / arg2 <= balanceOf[address(arg3)][address(arg7)]
    balanceOf[address(arg3)][address(arg7)] -= arg4 * arg11 / arg2
    if -feeTake + 10^18 != 0:
        require (10^18 * arg4) - (feeTake * arg4) / -feeTake + 10^18 == arg4
    if (10^18 * arg4) - (feeTake * arg4) != 0:
        require (10^18 * arg4 * arg11) - (feeTake * arg4 * arg11) / (10^18 * arg4) - (feeTake * arg4) == arg11
    require ((10^18 * arg4 * arg11) - (feeTake * arg4 * arg11) / arg2 / 10^18) + balanceOf[address(arg3)][msg.sender] >= balanceOf[address(arg3)][msg.sender]
    require ((10^18 * arg4 * arg11) - (feeTake * arg4 * arg11) / arg2 / 10^18) + balanceOf[address(arg3)][msg.sender] >= (10^18 * arg4 * arg11) - (feeTake * arg4 * arg11) / arg2 / 10^18
    balanceOf[address(arg3)][address(msg.sender)] = ((10^18 * arg4 * arg11) - (feeTake * arg4 * arg11) / arg2 / 10^18) + balanceOf[address(arg3)][msg.sender]
    if feeTake != 0:
        require feeTake * arg4 / feeTake == arg4
    if feeTake * arg4 != 0:
        require feeTake * arg4 * arg11 / feeTake * arg4 == arg11
    require (feeTake * arg4 * arg11 / arg2 / 10^18) + balanceOf[address(arg3)][stor2] >= balanceOf[address(arg3)][stor2]
    require (feeTake * arg4 * arg11 / arg2 / 10^18) + balanceOf[address(arg3)][stor2] >= feeTake * arg4 * arg11 / arg2 / 10^18
    balanceOf[address(arg3)][stor2] += feeTake * arg4 * arg11 / arg2 / 10^18
    require arg11 + stor1[hash] >= stor1[hash]
    require arg11 + stor1[hash] >= arg11
    stor1[hash] += arg11
    emit Trade(arg1, arg8 << 248, address(arg3), arg11 * arg4 / arg2, address(arg7), msg.sender);
}



}
