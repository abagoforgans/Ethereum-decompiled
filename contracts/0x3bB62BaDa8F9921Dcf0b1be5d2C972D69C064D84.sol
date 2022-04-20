contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = msg.sender
    require stor0 == msg.sender
    require code.data[13594 len 20]
    emit OwnershipTransferred(stor0, code.data[13594 len 20]);
    stor0 = code.data[13594 len 20]
    stor1 = code.data[13626 len 20]
    return code.data[286 len 13296]
}



// =====================  Runtime code  =====================


address owner;
address registryAddress;
mapping of address paymentContracts;

function paymentContracts(uint8 arg1) {
    return paymentContracts[arg1]
}

function registry() {
    return registryAddress
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function setRegistryContract(address arg1) {
    require owner == msg.sender
    registryAddress = arg1
}

function deletePaymentContract(uint8 arg1) {
    require owner == msg.sender
    paymentContracts[arg1 << 248] = 0
}

function setPaymentContract(uint8 arg1, address arg2) {
    require owner == msg.sender
    paymentContracts[arg1 << 248] = arg2
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function deployCampaign(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8) {
    require owner == msg.sender
    require ext_code.size(registryAddress)
    call registryAddress.0xb033a6c3 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    require not ext_call.return_data[76 len 20]
    require ext_call.return_data[12 len 20]
    require ext_call.return_data[44 len 20]
    create contract with 0 wei
                    code: code.data[2696 len 4999], address(ext_call.return_data[0]), address(arg3), address(arg1), arg4, arg5, arg6, arg7, arg8
    require create.new_address
    require ext_code.size(registryAddress)
    call registryAddress.0x95bda19d with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2, address(create.new_address)
    require ext_call.success
    emit DeployedCampaign(address(create.new_address), arg1, arg2);
}

function deployToken(address arg1, uint256 arg2, uint8 arg3, uint256 arg4, address arg5, string arg6, string arg7, uint256 arg8) {
    mem[128 len arg6.length] = arg6[all]
    mem[ceil32(arg6.length) + 128] = arg7.length
    mem[ceil32(arg6.length) + 160 len arg7.length] = arg7[all]
    require owner == msg.sender
    require ext_code.size(paymentContracts[arg3 << 248])
    call paymentContracts[arg3 << 248].0x9f9fb968 with:
         gas gas_remaining - 710 wei
        args arg2
    require ext_call.success
    require ext_call.return_data[0] >= arg4
    require ext_code.size(registryAddress)
    call registryAddress.0xb033a6c3 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    require not ext_call.return_data[12 len 20]
    create contract with 0 wei
                    code: code.data[7695 len 1888]
    require create.new_address
    mem[ceil32(arg6.length) + ceil32(arg7.length) + 160 len 3670] = code.data[9583 len 3670]
    mem[ceil32(arg6.length) + ceil32(arg7.length) + 4022 len ceil32(arg6.length)] = arg6[all], mem[arg6.length + 128 len ceil32(arg6.length) - arg6.length]
    if not arg6.length % 32:
        mem[arg6.length + ceil32(arg6.length) + ceil32(arg7.length) + 4022] = arg7.length
        mem[arg6.length + ceil32(arg6.length) + ceil32(arg7.length) + 4054 len ceil32(arg7.length)] = arg7[all], mem[ceil32(arg6.length) + arg7.length + 160 len ceil32(arg7.length) - arg7.length]
        if not arg7.length % 32:
            create contract with 0 wei
                            code: code.data[9583 len 3670], address(create.new_address), address(arg5), Array(len=arg8, data=arg6.length, Mask(8 * ceil32(arg6.length), -(8 * ceil32(arg6.length)) + 256, arg6[all], mem[arg6.length + 128 len ceil32(arg6.length) - arg6.length]) << (8 * ceil32(arg6.length)) - 256, mem[(2 * ceil32(arg6.length)) + ceil32(arg7.length) + 4022 len arg7.length + arg6.length + -ceil32(arg6.length) + 32]), arg6.length + 192
        else:
            mem[floor32(arg7.length) + arg6.length + ceil32(arg6.length) + ceil32(arg7.length) + 4054] = mem[floor32(arg7.length) + arg6.length + ceil32(arg6.length) + ceil32(arg7.length) + -(arg7.length % 32) + 4086 len arg7.length % 32]
            create contract with 0 wei
                            code: code.data[9583 len 3670], address(create.new_address), address(arg5), Array(len=arg8, data=arg6.length, Mask(8 * ceil32(arg6.length), -(8 * ceil32(arg6.length)) + 256, arg6[all], mem[arg6.length + 128 len ceil32(arg6.length) - arg6.length]) << (8 * ceil32(arg6.length)) - 256, mem[(2 * ceil32(arg6.length)) + ceil32(arg7.length) + 4022 len floor32(arg7.length) + arg6.length + -ceil32(arg6.length) + 64]), arg6.length + 192
    else:
        mem[floor32(arg6.length) + ceil32(arg6.length) + ceil32(arg7.length) + 4022] = mem[floor32(arg6.length) + ceil32(arg6.length) + ceil32(arg7.length) + -(arg6.length % 32) + 4054 len arg6.length % 32]
        mem[floor32(arg6.length) + ceil32(arg6.length) + ceil32(arg7.length) + 4054] = arg7.length
        mem[floor32(arg6.length) + ceil32(arg6.length) + ceil32(arg7.length) + 4086 len ceil32(arg7.length)] = arg7[all], mem[ceil32(arg6.length) + arg7.length + 160 len ceil32(arg7.length) - arg7.length]
        if not arg7.length % 32:
            create contract with 0 wei
                            code: code.data[9583 len 3670], address(create.new_address), address(arg5), Array(len=arg8, data=arg6.length, Mask(8 * ceil32(arg6.length), -(8 * ceil32(arg6.length)) + 256, arg6[all], mem[arg6.length + 128 len ceil32(arg6.length) - arg6.length]) << (8 * ceil32(arg6.length)) - 256, mem[(2 * ceil32(arg6.length)) + ceil32(arg7.length) + 4022 len arg7.length + floor32(arg6.length) + -ceil32(arg6.length) + 64]), floor32(arg6.length) + 224
        else:
            mem[floor32(arg7.length) + floor32(arg6.length) + ceil32(arg6.length) + ceil32(arg7.length) + 4086] = mem[floor32(arg7.length) + floor32(arg6.length) + ceil32(arg6.length) + ceil32(arg7.length) + -(arg7.length % 32) + 4118 len arg7.length % 32]
            create contract with 0 wei
                            code: code.data[9583 len 3670], address(create.new_address), address(arg5), Array(len=arg8, data=arg6.length, Mask(8 * ceil32(arg6.length), -(8 * ceil32(arg6.length)) + 256, arg6[all], mem[arg6.length + 128 len ceil32(arg6.length) - arg6.length]) << (8 * ceil32(arg6.length)) - 256, mem[(2 * ceil32(arg6.length)) + ceil32(arg7.length) + 4022 len floor32(arg7.length) + floor32(arg6.length) + -ceil32(arg6.length) + 96]), floor32(arg6.length) + 224
    require create.new_address
    require ext_code.size(address(create.new_address))
    call address(create.new_address).setup(address rg1) with:
         gas gas_remaining - 710 wei
        args address(create.new_address)
    require ext_call.success
    require ext_code.size(registryAddress)
    call registryAddress.0xcc027cc9 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2, address(create.new_address), address(create.new_address)
    require ext_call.success
    emit DeployedToken(address(create.new_address), address(create.new_address), arg1, arg2);
}



}
