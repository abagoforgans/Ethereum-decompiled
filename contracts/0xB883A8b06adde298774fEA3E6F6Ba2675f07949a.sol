contract main {


// =======================  Init code  ======================


uint256 stor2;
uint256 stor3;
uint256 stor4;

function _fallback() payable {
    stor2 = code.data[3341 len 32]
    stor3 = code.data[3373 len 32]
    stor4 = code.data[3405 len 32]
    return code.data[68 len 3273]
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
    stor56AD[msg.sender] -= arg1
    call msg.sender with:
       value arg1 wei
         gas gas_remaining - 34050 wei
    require ext_call.success
    emit Withdraw(0, msg.sender, arg1, stor56AD[msg.sender]);
}

function withdrawToken(address arg1, uint256 arg2) payable {
    require msg.value <= 0
    require arg1 != 0
    require balanceOf[address(arg1)][address(msg.sender)] >= arg2
    balanceOf[address(arg1)][address(msg.sender)] -= arg2
    call arg1.0xa9059cbb with:
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
    if arg2 - stor1[hash] >= arg2 * balanceOf[address(arg3)][address(arg7)] / arg4:
        return (arg2 * balanceOf[address(arg3)][address(arg7)] / arg4)
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
                if arg2 - stor1[hash] >= arg2 * balanceOf[address(arg3)][address(arg7)] / arg4:
                    if arg2 * balanceOf[address(arg3)][address(arg7)] / arg4 >= arg11:
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
    require arg11 + stor1[hash] <= arg2
    require balanceOf[address(arg1)][address(msg.sender)] >= arg11
    require balanceOf[address(arg3)][address(arg7)] >= arg11 * arg4 / arg2
    balanceOf[address(arg1)][address(msg.sender)] -= arg11
    balanceOf[address(arg1)][address(arg7)] += (10^18 * arg11) - (feeMake * arg11) / 10^18
    balanceOf[address(arg1)][stor2] += arg11 * feeMake / 10^18
    balanceOf[address(arg3)][address(arg7)] -= arg4 * arg11 / arg2
    balanceOf[address(arg3)][address(msg.sender)] += (10^18 * arg4 * arg11) - (feeTake * arg4 * arg11) / arg2 / 10^18
    balanceOf[address(arg3)][stor2] += feeTake * arg4 * arg11 / arg2 / 10^18
    stor1[hash] += arg11
    emit Trade(arg1, arg8 << 248, address(arg3), arg4 * arg11 / arg2, address(arg7), msg.sender);
}



}
