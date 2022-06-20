contract main {




// =====================  Runtime code  =====================


address protocolAddress;
address registryAddress;
address buyerAddress;
mapping of uint8 stor3;

function sub_1d2cd90a(?) {
    return bool(stor3[arg1])
}

function buyer() {
    return buyerAddress
}

function registry() {
    return registryAddress
}

function protocol() {
    return protocolAddress
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

function sub_2c661ed2(?) {
    require ext_code.size(registryAddress)
    call registryAddress.operators(address arg1) with:
         gas gas_remaining wei
        args tx.origin
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Origin must be operator'
    create contract with 0 wei
                    code: code.data[4103 len 766], registryAddress, protocolAddress
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    stor3[address(create.new_address)] = 1
    emit 0x1c813fc7: address(create.new_address)
    return address(create.new_address)
}

function sub_3e69647a(?) {
    require ext_code.size(registryAddress)
    call registryAddress.operators(address arg1) with:
         gas gas_remaining wei
        args tx.origin
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Origin must be operator'
    if arg1:
        if not stor3[address(arg1)]:
            revert with 0, 'Seller not authorized'
        require ext_code.size(buyerAddress)
        call buyerAddress.createTransaction(address arg1, uint256 arg2, bytes32 arg3, address arg4, address arg5, address arg6) with:
             gas gas_remaining wei
            args 0, 0, arg2, arg3, 0, 0, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        call arg1.acceptTransaction(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
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
        create contract with 0 wei
                        code: code.data[4103 len 766], registryAddress, protocolAddress
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        stor3[address(create.new_address)] = 1
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
