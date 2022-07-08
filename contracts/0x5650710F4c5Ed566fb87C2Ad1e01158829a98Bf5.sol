contract main {




// =====================  Runtime code  =====================


address sub_f436ad73Address;

function sub_f436ad73(?) {
    return sub_f436ad73Address
}

function _fallback() payable {
    revert
}

function sub_d563028a(?) {
    require ext_code.size(sub_f436ad73Address)
    call sub_f436ad73Address.isValidContract(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit 0x1ddc75d9: arg1, msg.sender
    return 1
}

function sub_d63da297(?) {
    require ext_code.size(sub_f436ad73Address)
    call sub_f436ad73Address.isValidContract(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit 0x63b5dc5e: msg.sender, arg1
    return 1
}

function sub_4215caf3(?) {
    require ext_code.size(sub_f436ad73Address)
    call sub_f436ad73Address.isValidContract(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit 0xb3e6c396: arg2, msg.sender, arg1
    return 1
}

function sub_1b831217(?) {
    require ext_code.size(sub_f436ad73Address)
    call sub_f436ad73Address.isValidContract(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit 0x6b96ff6d: arg2, arg3, msg.sender, arg1
    return 1
}

function sub_ee1e5a9d(?) {
    require ext_code.size(sub_f436ad73Address)
    call sub_f436ad73Address.isValidContract(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit 0x7d333388: arg2, arg3, arg1, msg.sender
    return 1
}

function sub_014b4d3c(?) {
    require ext_code.size(sub_f436ad73Address)
    call sub_f436ad73Address.isValidContract(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit 0xc4ce96eb: address(arg1), arg2, arg3, msg.sender
    return 1
}

function sub_f173aed9(?) {
    require ext_code.size(sub_f436ad73Address)
    call sub_f436ad73Address.isValidContract(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit 0x9b0c0d3f: address(arg1), arg2, arg3, msg.sender
    return 1
}

function sub_32c803a3(?) {
    require ext_code.size(sub_f436ad73Address)
    call sub_f436ad73Address.isValidContract(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit 0x84b2afdd: address(arg2), arg3, arg4, arg5, arg6, arg1, msg.sender
    return 1
}

function sub_29a8f562(?) {
    require ext_code.size(arg1)
    call arg1.0x51489551 with:
         gas gas_remaining wei
        args 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(arg1)
        call arg1.0x51489551 with:
             gas gas_remaining wei
            args 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[12 len 20] == msg.sender
    require ext_code.size(sub_f436ad73Address)
    call sub_f436ad73Address.isValidContract(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit 0xd57a59a9: arg4, msg.sender, arg1, arg2, arg3
    return 1
}



}
