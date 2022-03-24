contract main {


// =======================  Init code  ======================


uint256 stor1;

function _fallback() payable {
    stor1 = msg.sender or Mask(96, 160, stor1)
    return code.data[36 len 2607]
}



// =====================  Runtime code  =====================


const tokenPrice = 10^15


mapping of address daoAccounts;
address stor1;

function daoAccounts(address arg1) payable {
    return address(daoAccounts[arg1])
}

function terminate() payable {
    require msg.value <= 0
    require msg.sender == stor1
    emit notifyTerminate(eth.balance(this.address));
    selfdestruct(stor1)
}

function _fallback() payable {
    require msg.value <= 0
}

function getTokenBalance() payable {
    require msg.value <= 0
    if 0 == address(daoAccounts[address(msg.sender)]):
        if 0 == address(daoAccounts[address(msg.sender)]):
            return 0
    call address(daoAccounts[address(msg.sender)]).0x82b2e257 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function withdraw(uint256 arg1) payable {
    require msg.value <= 0
    if 0 == address(daoAccounts[address(msg.sender)]):
        require address(daoAccounts[address(msg.sender)]) != 0
    call address(daoAccounts[address(msg.sender)]).0x2e1a7d4d with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    emit notifyWithdraw(msg.sender, arg1);
}

function isMember(address arg1, address arg2) payable {
    if arg1 != 0:
        if arg2 != 0:
            if address(daoAccounts[address(arg2)]):
                if arg1 == address(daoAccounts[address(arg2)]):
                    return 1
                else:
                    return 0
            else:
                return 0
        else:
            return 0
    else:
        return 0
}

function createAccount() payable {
    if 0 == address(daoAccounts[address(msg.sender)]):
        create contract with 0 wei
                        code: code.data[1590 len 1017], msg.sender, 10^15, stor1
        uint256(daoAccounts[address(msg.sender)]) = create.new_address or Mask(96, 160, uint256(daoAccounts[address(msg.sender)]))
        emit notifyNewAccount(msg.sender, address(create.new_address));
}

function transfer(uint256 arg1, address arg2) payable {
    require msg.value <= 0
    if 0 == address(daoAccounts[address(msg.sender)]):
        require address(daoAccounts[address(msg.sender)]) != 0
    if 0 == address(daoAccounts[address(arg2)]):
        require address(daoAccounts[address(arg2)]) != 0
    call address(daoAccounts[address(msg.sender)]).0xb7760c8f with:
         gas gas_remaining - 25050 wei
        args arg1, address(daoAccounts[address(arg2)])
    require ext_call.success
    emit notifyTransfer(msg.sender, address(arg2), arg1);
}

function buyTokens() payable {
    if address(daoAccounts[address(msg.sender)]) != 0:
        call address(daoAccounts[address(msg.sender)]).0xd0febe4c with:
           value msg.value wei
             gas gas_remaining - 34050 wei
    else:
        create contract with 0 wei
                        code: code.data[1590 len 1017], msg.sender, 10^15, stor1
        uint256(daoAccounts[address(msg.sender)]) = create.new_address or Mask(96, 160, uint256(daoAccounts[address(msg.sender)]))
        emit notifyNewAccount(msg.sender, address(create.new_address));
        call address(create.new_address).0xd0febe4c with:
           value msg.value wei
             gas gas_remaining - 34050 wei
    require ext_call.success
    emit notifyBuyToken(msg.sender, ext_call.return_data[0], msg.value);
    return ext_call.return_data[0]
}



}
