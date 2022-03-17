contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = code.data[1212 len 32]
    return code.data[55 len 1157]
}



// =====================  Runtime code  =====================


const totalBalance = eth.balance(this.address)


address configAddress;
mapping of uint256 balance;

function getBalance(bytes32 arg1) payable {
    return balance[arg1]
}

function getConfig() payable {
    return configAddress
}

function getUsersContract() payable {
    call configAddress.0xd0f46c0b with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function getBotContract() payable {
    call configAddress.getBotContract() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function depositCoin(bytes32 arg1, uint256 arg2) payable {
    call configAddress.getBotContract() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if msg.sender == ext_call.return_data[12 len 20]:
        balance[arg1] += arg2
}

function getUserId(address arg1) payable {
    call configAddress.0xd0f46c0b with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    call address(ext_call.return_data[0]).0x2b956ff7 with:
         gas gas_remaining - 25050 wei
        args arg1
    return ext_call.return_data[0]
}

function getUserAccount(bytes32 arg1) payable {
    call configAddress.0xd0f46c0b with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    call address(ext_call.return_data[0]).0x7d19ec9d with:
         gas gas_remaining - 25050 wei
        args arg1
    return ext_call.return_data[12 len 20]
}

function _fallback() payable {
    call configAddress.0xd0f46c0b with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    call address(ext_call.return_data[0]).0x2b956ff7 with:
         gas gas_remaining - 25050 wei
        args msg.sender
    emit UserIdLogger(ext_call.return_data[0]);
    balance[ext_call.return_data[0]] += msg.value
}

function sendCoin(bytes32 arg1, bytes32 arg2, uint256 arg3) payable {
    call configAddress.getBotContract() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if msg.sender == ext_call.return_data[12 len 20]:
        if arg3 >= 10^17:
            if balance[arg1] >= arg3:
                balance[arg1] -= arg3
                balance[arg2] += arg3
}

function withdrawCoinExt(uint256 arg1) payable {
    call configAddress.0xd0f46c0b with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    call address(ext_call.return_data[0]).0x2b956ff7 with:
         gas gas_remaining - 25050 wei
        args msg.sender
    if balance[ext_call.return_data[0]] >= arg1:
        balance[ext_call.return_data[0]] -= arg1
        call msg.sender with:
           value arg1 wei
             gas 0 wei
}

function withdrawCoin(bytes32 arg1, uint256 arg2) payable {
    call configAddress.getBotContract() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if msg.sender == ext_call.return_data[12 len 20]:
        call configAddress.0xd0f46c0b with:
             gas gas_remaining - 25050 wei
        require ext_call.success
        call address(ext_call.return_data[0]).0x7d19ec9d with:
             gas gas_remaining - 25050 wei
            args arg1
        if ext_call.return_data[12 len 20] != 0:
            if arg2 >= 10^18:
                if balance[arg1] >= arg2:
                    balance[arg1] -= arg2
                    call address(ext_call.return_data[0]) with:
                       value arg2 wei
                         gas 0 wei
}



}
