contract main {


// =======================  Init code  ======================


address stor0;
address stor6;

function _fallback() {
    stor0 = msg.sender
    stor6 = code.data[17884 len 20]
    return code.data[112 len 17760]
}



// =====================  Runtime code  =====================


address contractOwner;
address pendingContractOwner;
address sub_d36a282aAddress;
array of address sub_5eea03b3;
array of address sub_18edf564;
mapping of uint8 stor5;
address sub_d171cf41Address;
address sub_9ebc2b63Address;
address stor8;
address stor9;

function sub_18edf564(?) {
    require arg1 < sub_18edf564.length
    return address(sub_18edf564[arg1])
}

function pendingContractOwner() {
    return pendingContractOwner
}

function sub_5eea03b3(?) {
    require arg1 < sub_5eea03b3.length
    return address(sub_5eea03b3[arg1])
}

function sub_9ebc2b63(?) {
    return sub_9ebc2b63Address
}

function contractOwner() {
    return contractOwner
}

function sub_d171cf41(?) {
    return sub_d171cf41Address
}

function sub_d36a282a(?) {
    return sub_d36a282aAddress
}

function kill() {
    if contractOwner != msg.sender:
    selfdestruct(contractOwner)
}

function _fallback() {
    revert
}

function sub_c21d943f(?) {
    if contractOwner == msg.sender:
        sub_9ebc2b63Address = arg1
}

function setUsers(address arg1) {
    if contractOwner == msg.sender:
        sub_d36a282aAddress = arg1
}

function sub_f9d32a6a(?) {
    if contractOwner == msg.sender:
        stor8 = arg1
        stor9 = arg2
}

function changeContractOwnership(address arg1) {
    if contractOwner != msg.sender:
        return 0
    pendingContractOwner = arg1
    return 1
}

function claimContractOwnership() {
    if pendingContractOwner != msg.sender:
        return 0
    contractOwner = pendingContractOwner
    pendingContractOwner = 0
    return 1
}

function sub_753cf778(?) {
    require stor5[address(msg.sender)]
    require ext_code.size(arg1)
    call arg1.0x753cf778 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function sub_d12a6b9f(?) {
    if contractOwner != msg.sender:
        return 0
    require ext_code.size(arg1)
    call arg1.getowner() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(sub_d36a282aAddress)
    call sub_d36a282aAddress.getWallet(address rg1) with:
         gas gas_remaining - 710 wei
        args address(ext_call.return_data[0])
    require ext_call.success
    require ext_code.size(sub_d36a282aAddress)
    call sub_d36a282aAddress.getWallet(address rg1) with:
         gas gas_remaining - 710 wei
        args arg2
    require ext_call.success
    require address(ext_call.return_data[0]) > 0
    require ext_call.return_data[12 len 20] > 0
    require ext_code.size(sub_d36a282aAddress)
    call sub_d36a282aAddress.0x44276733 with:
         gas gas_remaining - 710 wei
        args arg3
    require ext_call.success
    require ext_call.return_data[0] <= 5
    require ext_call.return_data[0] == 3
    require ext_code.size(sub_d36a282aAddress)
    call sub_d36a282aAddress.0x44276733 with:
         gas gas_remaining - 710 wei
        args arg4
    require ext_call.success
    require ext_call.return_data[0] <= 5
    require ext_call.return_data[0] == 2
    create contract with 0 wei
                    code: code.data[4502 len 9077], address(arg1), address(arg4), address(arg2), address(ext_call.return_data[0]), address(arg3), address(ext_call.return_data[0]), address(ext_call.return_data[0]), arg5, sub_d171cf41Address, sub_9ebc2b63Address, stor8, stor9, msg.sender
    require create.new_address
    sub_18edf564.length++
    if not sub_18edf564.length <= sub_18edf564.length + 1:
        idx = sub_18edf564.length + 1
        while sub_18edf564.length > idx:
            uint256(sub_18edf564[idx]) = 0
            idx = idx + 1
            continue 
    address(sub_18edf564[sub_18edf564.length]) = address(create.new_address)
    stor5[address(create.new_address)] = 1
    emit 0xf8c55061: address(create.new_address)
    return address(create.new_address)
}

function sub_e4a06401(?) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    if contractOwner != msg.sender:
        return 0
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len 4138] = code.data[13579 len 4138]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 4458 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 4458] = arg3.length
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 4490 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            create contract with 0 wei
                            code: code.data[13579 len 4138], address(arg1), Array(len=arg4, data=arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 4458 len arg3.length + arg2.length + -ceil32(arg2.length) + 32]), arg2.length + 160
        else:
            mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 4490] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 4522 len arg3.length % 32]
            create contract with 0 wei
                            code: code.data[13579 len 4138], address(arg1), Array(len=arg4, data=arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 4458 len floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 64]), arg2.length + 160
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 4458] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 4490 len arg2.length % 32]
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 4490] = arg3.length
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 4522 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            create contract with 0 wei
                            code: code.data[13579 len 4138], address(arg1), Array(len=arg4, data=arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 4458 len arg3.length + floor32(arg2.length) + -ceil32(arg2.length) + 64]), floor32(arg2.length) + 192
        else:
            mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 4522] = mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 4554 len arg3.length % 32]
            create contract with 0 wei
                            code: code.data[13579 len 4138], address(arg1), Array(len=arg4, data=arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 4458 len floor32(arg3.length) + floor32(arg2.length) + -ceil32(arg2.length) + 96]), floor32(arg2.length) + 192
    require create.new_address
    sub_5eea03b3.length++
    if not sub_5eea03b3.length <= sub_5eea03b3.length + 1:
        idx = sub_5eea03b3.length + 1
        while sub_5eea03b3.length > idx:
            uint256(sub_5eea03b3[idx]) = 0
            idx = idx + 1
            continue 
    address(sub_5eea03b3[sub_5eea03b3.length]) = address(create.new_address)
    emit 0x5f355734: address(create.new_address)
    return address(create.new_address)
}

function sub_54d85890(?) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = arg4.length
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 192 len arg4.length] = arg4[all]
    if contractOwner == msg.sender:
        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192] = 0xffd07a6a00000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 420 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 420] = arg3.length
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 452 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            mem[arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 452] = arg4.length
            mem[arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 484 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
            if not arg4.length % 32:
                require ext_code.size(sub_d36a282aAddress)
                call sub_d36a282aAddress.0xffd07a6a with:
                     gas gas_remaining - 710 wei
                    args address(arg1), Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 420 len arg4.length + arg3.length + arg2.length + -ceil32(arg2.length) + 64]), arg2.length + 224, arg3.length + arg2.length + 256, arg5, address(arg6)
            else:
                mem[floor32(arg4.length) + arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 484] = mem[floor32(arg4.length) + arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 516 len arg4.length % 32]
                require ext_code.size(sub_d36a282aAddress)
                call sub_d36a282aAddress.0xffd07a6a with:
                     gas gas_remaining - 710 wei
                    args address(arg1), Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 420 len floor32(arg4.length) + arg3.length + arg2.length + -ceil32(arg2.length) + 96]), arg2.length + 224, arg3.length + arg2.length + 256, arg5, address(arg6)
        else:
            mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 452] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 484 len arg3.length % 32]
            mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 484] = arg4.length
            mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 516 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
            if not arg4.length % 32:
                require ext_code.size(sub_d36a282aAddress)
                call sub_d36a282aAddress.0xffd07a6a with:
                     gas gas_remaining - 710 wei
                    args address(arg1), Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 420 len arg4.length + floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 96]), arg2.length + 224, floor32(arg3.length) + arg2.length + 288, arg5, address(arg6)
            else:
                mem[floor32(arg4.length) + floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 516] = mem[floor32(arg4.length) + floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 548 len arg4.length % 32]
                require ext_code.size(sub_d36a282aAddress)
                call sub_d36a282aAddress.0xffd07a6a with:
                     gas gas_remaining - 710 wei
                    args address(arg1), Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 420 len floor32(arg4.length) + floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 128]), arg2.length + 224, floor32(arg3.length) + arg2.length + 288, arg5, address(arg6)
        require ext_call.success
        require ext_call.return_data[0]
}



}
