contract main {




// =====================  Runtime code  =====================


address owner;
address oracleAddress;
address deployerAddress;
address modultradeStorageAddress;

function oracle() {
    return oracleAddress
}

function owner() {
    return owner
}

function modultradeStorage() {
    return modultradeStorageAddress
}

function deployer() {
    return deployerAddress
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function setOracle(address arg1) {
    if oracleAddress != msg.sender:
        require msg.sender == owner
    if arg1:
        oracleAddress = arg1
}

function transferStorage(address arg1) {
    if oracleAddress != msg.sender:
        require msg.sender == owner
    require ext_code.size(modultradeStorageAddress)
    call modultradeStorageAddress.0xf2fde38b with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function firePaidProposalEvent(address arg1, uint256 arg2) {
    require ext_code.size(modultradeStorageAddress)
    call modultradeStorageAddress.getProposalById(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 != ext_call.return_data[12 len 20]:
        revert with 0, 32, 24, code.data[11442 len 32]
    emit PaidProposalEvent(address(arg1), arg2);
}

function fireCloseProposalEvent(address arg1, uint256 arg2) {
    require ext_code.size(modultradeStorageAddress)
    call modultradeStorageAddress.getProposalById(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 != ext_call.return_data[12 len 20]:
        revert with 0, 32, 24, code.data[11442 len 32]
    emit CloseProposalEvent(address(arg1), arg2);
}

function fireCancelProposalEvent(address arg1, uint256 arg2) {
    require ext_code.size(modultradeStorageAddress)
    call modultradeStorageAddress.getProposalById(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 != ext_call.return_data[12 len 20]:
        revert with 0, 32, 24, code.data[11442 len 32]
    emit CancelProposalEvent(address(arg1), arg2);
}

function fireDeliveryProposalEvent(address arg1, uint256 arg2) {
    require ext_code.size(modultradeStorageAddress)
    call modultradeStorageAddress.getProposalById(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 != ext_call.return_data[12 len 20]:
        revert with 0, 32, 24, code.data[11442 len 32]
    emit DeliveryProposalEvent(address(arg1), arg2);
}

function sub_d11a240a(?) {
    if oracleAddress != msg.sender:
        require msg.sender == owner
    require arg1 <= 2
    if arg1 == 1:
        if not arg2:
            revert with 0, 'Invalid Token contract address'
    require arg1 <= 2
    create contract with 0 wei
                    code: code.data[3518 len 7924], address(this.address), address(arg3), address(arg2), arg1
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xa163068 with:
         gas gas_remaining wei
        args arg4, Array(len=arg5.length, data=arg5[all]), arg6, Mask(128, 128, arg7), arg8, arg9, arg10
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).setFee(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args arg11, arg12
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x7adbf973 with:
         gas gas_remaining wei
        args oracleAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xf2fde38b with:
         gas gas_remaining wei
        args owner
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).id() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit ProposalCreatedEvent(ext_call.return_data[0], address(create.new_address));
    require ext_code.size(modultradeStorageAddress)
    call modultradeStorageAddress.insertProposal(address arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args address(arg3), arg4, address(create.new_address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
