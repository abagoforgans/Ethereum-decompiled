contract main {




// =====================  Runtime code  =====================


address owner;
address proposedOwner;
address opsAddress;
address adminAddress;

function owner() {
    return owner
}

function opsAddress() {
    return opsAddress
}

function proposedOwner() {
    return proposedOwner
}

function adminAddress() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function initiateOwnershipTransfer(address arg1) {
    require msg.sender == owner
    proposedOwner = arg1
    emit OwnershipTransferInitiated(arg1);
    return 1
}

function completeOwnershipTransfer() {
    require msg.sender == proposedOwner
    owner = proposedOwner
    proposedOwner = 0
    emit OwnershipTransferCompleted(proposedOwner);
    return 1
}

function setOpsAddress(address arg1) {
    if owner != msg.sender:
        require adminAddress
        require adminAddress == msg.sender
    require owner != arg1
    require arg1 != this.address
    if adminAddress:
        require adminAddress != arg1
    opsAddress = arg1
    emit OpsAddressChanged(arg1);
    return 1
}

function setAdminAddress(address arg1) {
    if owner != msg.sender:
        require adminAddress
        require adminAddress == msg.sender
    require owner != arg1
    require arg1 != this.address
    if opsAddress:
        require arg1 != opsAddress
    adminAddress = arg1
    emit AdminAddressChanged(arg1);
    return 1
}

function sub_ff067492(?) {
    require adminAddress
    require adminAddress == msg.sender
    require ext_code.size(arg1)
    call arg1.0xa4260ba with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function sub_f4dae27f(?) {
    require opsAddress
    require msg.sender == opsAddress
    require ext_code.size(arg1)
    call arg1.0x95cac46c with:
         gas gas_remaining wei
        args 0, arg2, address(arg3), arg4, arg5, arg6, arg7, arg8, arg9
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_2bcf59f1(?) {
    require opsAddress
    require msg.sender == opsAddress
    require ext_code.size(arg1)
    call arg1.'bs'F' with:
         gas gas_remaining wei
        args Mask(224, 0, 'bs'F'), arg2, address(arg3), arg4, arg5, arg6, arg7, arg8
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0], ext_call.return_data[32]
}

function sub_d46bf37d(?) {
    if not adminAddress:
        require opsAddress
        require msg.sender == opsAddress
    else:
        if adminAddress != msg.sender:
            require opsAddress
            require msg.sender == opsAddress
    require ext_code.size(arg1)
    call arg1.addCore(address arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_edfea448(?) {
    if not adminAddress:
        require opsAddress
        require msg.sender == opsAddress
    else:
        if adminAddress != msg.sender:
            require opsAddress
            require msg.sender == opsAddress
    require ext_code.size(arg1)
    call arg1.processStaking(bytes32 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function sub_1ebcfa60(?) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    if not adminAddress:
        require opsAddress
        require msg.sender == opsAddress
    else:
        if adminAddress != msg.sender:
            require opsAddress
            require msg.sender == opsAddress
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = 0x8eefdd5200000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 420 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 420] = arg3.length
    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 452 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        require ext_code.size(arg1)
        call arg1.registerUtilityToken(string arg1, string arg2, uint256 arg3, uint8 arg4, uint256 arg5, address arg6, bytes32 arg7) with:
             gas gas_remaining wei
            args Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 420 len arg3.length + arg2.length + -ceil32(arg2.length) + 32]), arg2.length + 256, arg4, arg5 << 248, arg6, address(arg7), arg8
    else:
        mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 452] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 484 len arg3.length % 32]
        require ext_code.size(arg1)
        call arg1.registerUtilityToken(string arg1, string arg2, uint256 arg3, uint8 arg4, uint256 arg5, address arg6, bytes32 arg7) with:
             gas gas_remaining wei
            args Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 420 len floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 64]), arg2.length + 256, arg4, arg5 << 248, arg6, address(arg7), arg8
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_57667d37(?) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    if not adminAddress:
        require opsAddress
        require msg.sender == opsAddress
    else:
        if adminAddress != msg.sender:
            require opsAddress
            require msg.sender == opsAddress
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = 0x8f0c539f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 228] = arg4
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 260] = arg5
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 292] = arg6
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 324] = arg7
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 356] = arg8
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 164] = 224
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 388] = arg2.length
    if 0 >= arg2.length:
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 420] = arg3.length
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 452 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            require ext_code.size(arg1)
            call arg1.0x8f0c539f with:
                 gas gas_remaining wei
                args Array(len=arg2.length, data=mem[ceil32(arg2.length) + ceil32(arg3.length) + 420 len arg2.length + 32], Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256), arg2.length + 256, arg4, arg5 << 248, address(arg6), address(arg7), arg8
        else:
            mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 452] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 484 len arg3.length % 32]
            require ext_code.size(arg1)
            call arg1.0x8f0c539f with:
                 gas gas_remaining wei
                args Array(len=arg2.length, data=mem[ceil32(arg2.length) + ceil32(arg3.length) + 420 len arg2.length + 32], Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + arg2.length + 452 len floor32(arg3.length) + -ceil32(arg3.length) + 32]), arg2.length + 256, arg4, arg5 << 248, address(arg6), address(arg7), arg8
    else:
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 420] = mem[128]
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 452 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 420] = arg3.length
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 452 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            require ext_code.size(arg1)
            call arg1.0x8f0c539f with:
                 gas gas_remaining wei
                args Array(len=arg2.length, data=mem[128], mem[ceil32(arg2.length) + ceil32(arg3.length) + 452 len arg3.length + arg2.length]), arg2.length + 256, arg4, arg5 << 248, address(arg6), address(arg7), arg8
        else:
            mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 452] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 484 len arg3.length % 32]
            require ext_code.size(arg1)
            call arg1.0x8f0c539f with:
                 gas gas_remaining wei
                args Array(len=arg2.length, data=mem[128], mem[ceil32(arg2.length) + ceil32(arg3.length) + 452 len floor32(arg3.length) + arg2.length + 32]), arg2.length + 256, arg4, arg5 << 248, address(arg6), address(arg7), arg8
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}



}
