contract main {




// =====================  Runtime code  =====================


address owner;
mapping of struct clientBalance;
address sub_f4002708Address;

function getClientBalance(address arg1) {
    return clientBalance[address(arg1)].field_0
}

function isClient(address arg1) {
    require msg.sender == owner
    return bool(clientBalance[address(arg1)].field_1024)
}

function owner() {
    return owner
}

function sub_d9deacc7(?) {
    return clientBalance[arg1].field_0, 
           clientBalance[arg1].field_256,
           clientBalance[arg1].field_512,
           clientBalance[arg1].field_768,
           bool(clientBalance[arg1].field_1024),
           bool(clientBalance[arg1].field_1032)
}

function sub_f4002708(?) {
    return sub_f4002708Address
}

function addEth() payable {
    require msg.sender == owner
}

function repeatedPayment(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require msg.sender == owner
    require arg1
    require clientBalance[address(arg1)].field_1024
    clientBalance[address(arg1)].field_256 = arg2
    clientBalance[address(arg1)].field_512 = arg3
    clientBalance[address(arg1)].field_768 = arg4
}

function addClient(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require msg.sender == owner
    require arg1
    require not clientBalance[address(arg1)].field_1024
    clientBalance[address(arg1)].field_0 = 0
    clientBalance[address(arg1)].field_256 = arg2
    clientBalance[address(arg1)].field_512 = arg3
    clientBalance[address(arg1)].field_768 = arg4
    clientBalance[address(arg1)].field_1024 = 1
    clientBalance[address(arg1)].field_1032 = 0
    clientBalance[address(arg1)].field_1040 = 0
}

function claim(address arg1, address arg2, uint256 arg3) {
    require msg.sender == owner
    require clientBalance[address(arg1)].field_1024
    require ext_code.size(sub_f4002708Address)
    call sub_f4002708Address.calculatePlatformCommission(uint256 arg1) with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] + arg3 >= arg3
    require eth.balance(this.address) > ext_call.return_data[0] + arg3
    require arg3 <= clientBalance[address(arg1)].field_0
    require ext_code.size(sub_f4002708Address)
    call sub_f4002708Address.payPlatformOutgoingTransactionCommission() with:
       value ext_call.return_data[0] wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit PlatformOutgoingTransactionCommission(ext_call.return_data[0]);
    clientBalance[address(arg1)].field_0 -= arg3
    call arg2 with:
       value arg3 wei
         gas 2300 * is_zero(value) wei
}

function fromPaymentGateway(address arg1) payable {
    require clientBalance[address(arg1)].field_1024
    require msg.value == clientBalance[address(arg1)].field_256
    require ext_code.size(sub_f4002708Address)
    call sub_f4002708Address.isUserBlockedByContract(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(sub_f4002708Address)
        call sub_f4002708Address.payPlatformIncomingTransactionCommission(address arg1) with:
           value msg.value wei
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Blocked()
    else:
        call owner with:
           value clientBalance[address(arg1)].field_512 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit MerchantIncomingTransactionCommission(clientBalance[address(arg1)].field_512, arg1);
        require ext_code.size(sub_f4002708Address)
        call sub_f4002708Address.payPlatformIncomingTransactionCommission(address arg1) with:
           value clientBalance[address(arg1)].field_768 wei
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit PlatformIncomingTransactionCommission(clientBalance[address(arg1)].field_768, arg1);
    require clientBalance[address(arg1)].field_768 <= msg.value
    require clientBalance[address(arg1)].field_512 <= msg.value - clientBalance[address(arg1)].field_768
    clientBalance[address(arg1)].field_0 = clientBalance[address(arg1)].field_0 + msg.value - clientBalance[address(arg1)].field_768 - clientBalance[address(arg1)].field_512
    emit DepositCommission(clientBalance[address(arg1)].field_512, arg1);
}

function _fallback() payable {
    require clientBalance[address(msg.sender)].field_1024
    require msg.value == clientBalance[address(msg.sender)].field_256
    require ext_code.size(sub_f4002708Address)
    call sub_f4002708Address.isUserBlockedByContract(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(sub_f4002708Address)
        call sub_f4002708Address.payPlatformIncomingTransactionCommission(address arg1) with:
           value msg.value wei
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Blocked()
    else:
        call owner with:
           value clientBalance[address(msg.sender)].field_512 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit MerchantIncomingTransactionCommission(clientBalance[address(msg.sender)].field_512, msg.sender);
        require ext_code.size(sub_f4002708Address)
        call sub_f4002708Address.payPlatformIncomingTransactionCommission(address arg1) with:
           value clientBalance[address(msg.sender)].field_768 wei
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit PlatformIncomingTransactionCommission(clientBalance[address(msg.sender)].field_768, msg.sender);
    require clientBalance[address(msg.sender)].field_768 <= msg.value
    require clientBalance[address(msg.sender)].field_512 <= msg.value - clientBalance[address(msg.sender)].field_768
    clientBalance[address(msg.sender)].field_0 = clientBalance[address(msg.sender)].field_0 + msg.value - clientBalance[address(msg.sender)].field_768 - clientBalance[address(msg.sender)].field_512
    emit DepositCommission(clientBalance[address(msg.sender)].field_512, msg.sender);
}



}
