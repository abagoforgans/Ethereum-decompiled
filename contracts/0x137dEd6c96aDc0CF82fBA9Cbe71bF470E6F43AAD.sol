contract main {




// =====================  Runtime code  =====================


address protocolAddress;
address registryAddress;
address buyerAddress;
mapping of uint32 sub_a8c597d9;
mapping of uint256 sub_d136715b;

function buyer() {
    return buyerAddress
}

function registry() {
    return registryAddress
}

function protocol() {
    return protocolAddress
}

function sub_a8c597d9(?) {
    return address(sub_a8c597d9[arg1])
}

function sub_d136715b(?) {
    return sub_d136715b[arg1]
}

function _fallback() payable {
    revert
}

function authorizeTransaction(uint256 arg1, address arg2) {
    if protocolAddress != msg.sender:
        revert with 0, 'Sender must be Ink Protocol'
    return (arg2 == buyerAddress)
}

function sub_e9f7686f(?) {
    require ext_code.size(registryAddress)
    call registryAddress.operators(address arg1) with:
         gas gas_remaining wei
        args tx.origin
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Origin must be operator'
    require ext_code.size(buyerAddress)
    call buyerAddress.provideTransactionFeedback(uint256 arg1, uint8 arg2, bytes32 arg3) with:
         gas gas_remaining wei
        args arg1, arg2 << 248, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_1e1637fb(?) {
    require ext_code.size(registryAddress)
    call registryAddress.operators(address arg1) with:
         gas gas_remaining wei
        args tx.origin
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Origin must be operator'
    if arg1 <= 0:
        revert with 0, 'Seller id must be greater than 0'
    if address(sub_a8c597d9[arg1]):
        revert with 0, 'Seller already deployed'
    create contract with 0 wei
                    code: code.data[4526 len 766], registryAddress, protocolAddress
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    address(sub_a8c597d9[arg1]) = address(create.new_address)
    sub_d136715b[address(create.new_address)] = arg1
    emit 0x1c813fc7: address(create.new_address)
    return address(create.new_address)
}

function sub_f750c9b1(?) {
    require ext_code.size(registryAddress)
    call registryAddress.operators(address arg1) with:
         gas gas_remaining wei
        args tx.origin
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Origin must be operator'
    if address(sub_a8c597d9[arg1]):
        require ext_code.size(buyerAddress)
        call buyerAddress.createTransaction(address arg1, uint256 arg2, bytes32 arg3, address arg4, address arg5, address arg6) with:
             gas gas_remaining wei
            args 0, uint32(sub_a8c597d9[arg1]), arg2, arg3, 0, 0, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(sub_a8c597d9[arg1]))
        call address(sub_a8c597d9[arg1]).acceptTransaction(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(sub_a8c597d9[arg1]))
        call address(sub_a8c597d9[arg1]).0xa9059cbb with:
             gas gas_remaining wei
            args buyerAddress, arg2
    else:
        require ext_code.size(registryAddress)
        call registryAddress.operators(address arg1) with:
             gas gas_remaining wei
            args tx.origin
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Origin must be operator'
        if arg1 <= 0:
            revert with 0, 'Seller id must be greater than 0'
        if address(sub_a8c597d9[arg1]):
            revert with 0, 'Seller already deployed'
        create contract with 0 wei
                        code: code.data[4526 len 766], registryAddress, protocolAddress
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        address(sub_a8c597d9[arg1]) = address(create.new_address)
        sub_d136715b[address(create.new_address)] = arg1
        emit 0x1c813fc7: address(create.new_address)
        require ext_code.size(buyerAddress)
        call buyerAddress.createTransaction(address arg1, uint256 arg2, bytes32 arg3, address arg4, address arg5, address arg6) with:
             gas gas_remaining wei
            args 0, 0, arg2, arg3, 0, 0, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(create.new_address))
        call address(create.new_address).acceptTransaction(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(create.new_address))
        call address(create.new_address).0xa9059cbb with:
             gas gas_remaining wei
            args buyerAddress, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}



}
