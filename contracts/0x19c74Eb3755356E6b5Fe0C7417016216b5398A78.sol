contract main {




// =====================  Runtime code  =====================


address owner;
address sub_3177f530Address;
address sub_6b664fc8Address;

function sub_3177f530(?) {
    return sub_3177f530Address
}

function sub_6b664fc8(?) {
    return sub_6b664fc8Address
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function sub_61cb4e77(?) {
    require msg.sender == owner
    sub_3177f530Address = arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_ea717b32(?) {
    require ext_code.size(sub_3177f530Address)
    call sub_3177f530Address.0x616b34de with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xb44a7cab with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Msg.sender is not a valid contrller'
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.getBorrower(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0x654c6295 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xa27d2921114382974a07568a9dbf30801b97c902)
    delegate 0xa27d2921114382974a07568a9dbf30801b97c902.sub(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0] << 128, 0
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.getCollateralType(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[31 len 1] <= 2
    if ext_call.return_data[31 len 1] == 1:
        if delegate.return_data[0] > 0:
            require ext_code.size(arg1)
            call arg1.withdraw(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args 0, address(ext_call.return_data[0]), delegate.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    else:
        require ext_code.size(sub_6b664fc8Address)
        call sub_6b664fc8Address.getCollateralToken(address arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if delegate.return_data[0] > 0:
            require ext_code.size(arg1)
            call arg1.withdraw(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), address(ext_call.return_data[0]), delegate.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
}

function sub_f0fc3342(?) {
    require ext_code.size(sub_3177f530Address)
    call sub_3177f530Address.0x616b34de with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xb44a7cab with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Msg.sender is not a valid contrller'
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.getBorrower(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0x654c6295 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xa27d2921114382974a07568a9dbf30801b97c902)
    delegate 0xa27d2921114382974a07568a9dbf30801b97c902.sub(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0] << 128, 0
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.getCollateralType(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[31 len 1] <= 2
    if ext_call.return_data[31 len 1] == 1:
        if delegate.return_data[0] > 0:
            require ext_code.size(arg1)
            call arg1.withdraw(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args 0, address(ext_call.return_data[0]), delegate.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    else:
        require ext_code.size(sub_6b664fc8Address)
        call sub_6b664fc8Address.getCollateralToken(address arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if delegate.return_data[0] > 0:
            require ext_code.size(arg1)
            call arg1.withdraw(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), address(ext_call.return_data[0]), delegate.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
}

function sub_7fdf8e8a(?) payable {
    require ext_code.size(sub_3177f530Address)
    call sub_3177f530Address.0x616b34de with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xb44a7cab with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Msg.sender is not a valid contrller'
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.getCollateralType(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[31 len 1] <= 2
    if ext_call.return_data[31 len 1] == 1:
        if msg.value <= 0:
            revert with 0, 'Msg.value needs to be > 0'
        require msg.value == uint128(msg.value)
        call arg1 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_6b664fc8Address)
        call sub_6b664fc8Address.0xd903f373 with:
             gas gas_remaining wei
            args address(arg1), uint128(msg.value)
    else:
        if arg2 <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Collateral to refill needs to be > 0'
        require ext_code.size(sub_3177f530Address)
        call sub_3177f530Address.0x9f2cad38 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_6b664fc8Address)
        call sub_6b664fc8Address.getCollateralToken(address arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_6b664fc8Address)
        call sub_6b664fc8Address.getBorrower(address arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg2 > 0:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).transferFrom(address arg1, address arg2, address arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args 0, 0, address(ext_call.return_data[0]), address(arg1), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        require ext_code.size(sub_6b664fc8Address)
        call sub_6b664fc8Address.0xd903f373 with:
             gas gas_remaining wei
            args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_a2c450b5(?) payable {
    require ext_code.size(sub_3177f530Address)
    call sub_3177f530Address.0x616b34de with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xb44a7cab with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Msg.sender is not a valid contrller'
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0x9c83af9 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_6b664fc8Address)
    if not ext_call.return_data[0]:
        call sub_6b664fc8Address.0x1e651ef8 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'The loan type is not correct'
    call sub_6b664fc8Address.0x9c83af9 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        call arg1 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require msg.value == uint128(msg.value)
    else:
        require not msg.value
        require ext_code.size(sub_3177f530Address)
        call sub_3177f530Address.0x9f2cad38 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_6b664fc8Address)
        call sub_6b664fc8Address.getCollateralToken(address arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_6b664fc8Address)
        call sub_6b664fc8Address.getBorrower(address arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_6b664fc8Address)
        call sub_6b664fc8Address.0x654c6295 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[16 len 16] > 0:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).transferFrom(address arg1, address arg2, address arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args 0, 0, address(ext_call.return_data[0]), address(arg1), uint128(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    emit 0x714e0435: msg.value, arg1
    return 0
}

function sub_ae1ceab6(?) {
    require ext_code.size(sub_3177f530Address)
    call sub_3177f530Address.0x616b34de with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xb44a7cab with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Msg.sender is not a valid contrller'
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.getBorrower(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0x654c6295 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0xcf611ba2 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xe145209e3baf98a4ae3a844702e9082aefe44da2)
    delegate 0xe145209e3baf98a4ae3a844702e9082aefe44da2.sub(uint128 arg1, uint128 arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0] << 128, uint128(ext_call.return_data[0])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xa27d2921114382974a07568a9dbf30801b97c902)
    delegate 0xa27d2921114382974a07568a9dbf30801b97c902.sub(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args delegate.return_data[0] << 128, 0
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.getCollateralType(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[31 len 1] <= 2
    if ext_call.return_data[31 len 1] == 1:
        if delegate.return_data[0] > 0:
            require ext_code.size(arg1)
            call arg1.withdraw(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args 0, address(ext_call.return_data[0]), delegate.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    else:
        require ext_code.size(sub_6b664fc8Address)
        call sub_6b664fc8Address.getCollateralToken(address arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if delegate.return_data[0] > 0:
            require ext_code.size(arg1)
            call arg1.withdraw(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), address(ext_call.return_data[0]), delegate.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
}

function sub_7e9b86dd(?) {
    require ext_code.size(sub_3177f530Address)
    call sub_3177f530Address.0x616b34de with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xb44a7cab with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Msg.sender is not a valid contrller'
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0x18d64cd8 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0xee3b3256 with:
         gas gas_remaining wei
        args address(arg1), address(arg2), uint128(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_3177f530Address)
    call sub_3177f530Address.0xe09b48e7 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.getCurrentState(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0x5865abf6 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0xb54de5c9 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x8e378b0d with:
         gas gas_remaining wei
        args 0, 0, ext_call.return_data[0] << 248, bool(ext_call.return_data[0]), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xa27d2921114382974a07568a9dbf30801b97c902)
    delegate 0xa27d2921114382974a07568a9dbf30801b97c902.sub(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0] << 128, ext_call.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.getCollateralType(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[31 len 1] <= 2
    if ext_call.return_data[31 len 1] == 1:
        if ext_call.return_data[0]:
            if ext_call.return_data[0] > 0:
                require ext_code.size(arg1)
                call arg1.withdraw(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args 0, address(arg2), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
        if delegate.return_data[0] > 0:
            require ext_code.size(arg1)
            call arg1.withdraw(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args 0, address(arg2), delegate.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    else:
        require ext_code.size(sub_6b664fc8Address)
        call sub_6b664fc8Address.getCollateralToken(address arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(sub_3177f530Address)
            call sub_3177f530Address.0xf271e9d with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 0:
                require ext_code.size(arg1)
                call arg1.withdraw(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), address(ext_call.return_data[0]), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
        if delegate.return_data[0] > 0:
            require ext_code.size(arg1)
            call arg1.withdraw(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), address(arg2), delegate.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
}

function sub_204ce338(?) {
    require ext_code.size(sub_3177f530Address)
    call sub_3177f530Address.0x616b34de with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xb44a7cab with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Msg.sender is not a valid contrller'
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0xcf611ba2 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0x654c6295 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.getBorrower(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_3177f530Address)
    call sub_3177f530Address.0xe09b48e7 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.getCurrentState(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0x5865abf6 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0xb54de5c9 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x8e378b0d with:
         gas gas_remaining wei
        args 0, 0, ext_call.return_data[0] << 248, bool(ext_call.return_data[0]), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xa27d2921114382974a07568a9dbf30801b97c902)
    delegate 0xa27d2921114382974a07568a9dbf30801b97c902.sub(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0, ext_call.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.getCollateralType(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[31 len 1] <= 2
    if ext_call.return_data[31 len 1] == 1:
        if ext_call.return_data[0]:
            if ext_call.return_data[0] > 0:
                require ext_code.size(arg1)
                call arg1.withdraw(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args 0, address(ext_call.return_data[0]), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
        if delegate.return_data[0] > 0:
            require ext_code.size(arg1)
            call arg1.withdraw(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args 0, address(ext_call.return_data[0]), delegate.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    else:
        require ext_code.size(sub_6b664fc8Address)
        call sub_6b664fc8Address.getCollateralToken(address arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(sub_3177f530Address)
            call sub_3177f530Address.0xf271e9d with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 0:
                require ext_code.size(arg1)
                call arg1.withdraw(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), address(ext_call.return_data[0]), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
        if delegate.return_data[0] > 0:
            require ext_code.size(arg1)
            call arg1.withdraw(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), address(ext_call.return_data[0]), delegate.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
}

function sub_be830823(?) {
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0x56b9c6ce with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0x8d5ee6f4 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0x1915f1e4 with:
         gas gas_remaining wei
        args address(arg1), uint128(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xe145209e3baf98a4ae3a844702e9082aefe44da2)
    delegate 0xe145209e3baf98a4ae3a844702e9082aefe44da2.div(uint128 arg1, uint128 arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0] << 128, uint8(ext_call.return_data[32])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xe145209e3baf98a4ae3a844702e9082aefe44da2)
    delegate 0xe145209e3baf98a4ae3a844702e9082aefe44da2.mul(uint128 arg1, uint128 arg2) with:
         gas gas_remaining wei
        args delegate.return_data[0] << 128, uint128(uint8(ext_call.return_data[32]) - uint8(ext_call.return_data[64]))
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0xa2b6ccea with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xe145209e3baf98a4ae3a844702e9082aefe44da2)
    delegate 0xe145209e3baf98a4ae3a844702e9082aefe44da2.mul(uint128 arg1, uint128 arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0] << 128, uint128(uint8(ext_call.return_data[32]) - uint8(ext_call.return_data[64]))
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xe145209e3baf98a4ae3a844702e9082aefe44da2)
    delegate 0xe145209e3baf98a4ae3a844702e9082aefe44da2.add(uint128 arg1, uint128 arg2) with:
         gas gas_remaining wei
        args delegate.return_data[0] << 128, uint128(delegate.return_data[0])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.getCollateralToken(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_3177f530Address)
    call sub_3177f530Address.0x705cf7b7 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0xb54de5c9 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getTokenPrice(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0x654c6295 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0xcf611ba2 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xe145209e3baf98a4ae3a844702e9082aefe44da2)
    delegate 0xe145209e3baf98a4ae3a844702e9082aefe44da2.sub(uint128 arg1, uint128 arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0] << 128, uint128(ext_call.return_data[0])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_3177f530Address)
    call sub_3177f530Address.0x4cb64580 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getTokenDecimals(address arg1) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0x1f1f0005 with:
         gas gas_remaining wei
        args 0, 0, delegate.return_data[0] << 128, ext_call.return_data[0] << 128, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xe145209e3baf98a4ae3a844702e9082aefe44da2)
    delegate 0xe145209e3baf98a4ae3a844702e9082aefe44da2.mul(uint128 arg1, uint128 arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0] << 128, 2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if delegate.return_data[16 len 16] >= uint128(delegate.return_data[0]):
        revert with 0, 'Invalid ltv'
    else:
        return 0
}

function sub_28a8cce3(?) {
    require ext_code.size(sub_3177f530Address)
    call sub_3177f530Address.0x616b34de with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xb44a7cab with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Msg.sender is not a valid contrller'
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.'Phl' with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'Invalid state'
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.getCurrentState(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[31 len 1] != 4:
        revert with 0, 'Invalid state'
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0xb4f056dc with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[16 len 16]:
        revert with 0, 'Invalid state'
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0xda64eaa5 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[31 len 1] <= 0:
        revert with 0, 'Invalid state'
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0x56b9c6ce with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0x8d5ee6f4 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0x1915f1e4 with:
         gas gas_remaining wei
        args address(arg1), uint128(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xe145209e3baf98a4ae3a844702e9082aefe44da2)
    delegate 0xe145209e3baf98a4ae3a844702e9082aefe44da2.div(uint128 arg1, uint128 arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0] << 128, uint8(ext_call.return_data[32])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xe145209e3baf98a4ae3a844702e9082aefe44da2)
    delegate 0xe145209e3baf98a4ae3a844702e9082aefe44da2.mul(uint128 arg1, uint128 arg2) with:
         gas gas_remaining wei
        args delegate.return_data[0] << 128, uint128(uint8(ext_call.return_data[32]) - uint8(ext_call.return_data[64]))
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0xa2b6ccea with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xe145209e3baf98a4ae3a844702e9082aefe44da2)
    delegate 0xe145209e3baf98a4ae3a844702e9082aefe44da2.mul(uint128 arg1, uint128 arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0] << 128, uint128(uint8(ext_call.return_data[32]) - uint8(ext_call.return_data[64]))
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xe145209e3baf98a4ae3a844702e9082aefe44da2)
    delegate 0xe145209e3baf98a4ae3a844702e9082aefe44da2.add(uint128 arg1, uint128 arg2) with:
         gas gas_remaining wei
        args delegate.return_data[0] << 128, uint128(delegate.return_data[0])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.getCollateralToken(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_3177f530Address)
    call sub_3177f530Address.0x705cf7b7 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0xb54de5c9 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getTokenPrice(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0x654c6295 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0xcf611ba2 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xe145209e3baf98a4ae3a844702e9082aefe44da2)
    delegate 0xe145209e3baf98a4ae3a844702e9082aefe44da2.sub(uint128 arg1, uint128 arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0] << 128, uint128(ext_call.return_data[0])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_3177f530Address)
    call sub_3177f530Address.0x4cb64580 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getTokenDecimals(address arg1) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0x1f1f0005 with:
         gas gas_remaining wei
        args 0, 0, delegate.return_data[0] << 128, ext_call.return_data[0] << 128, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xe145209e3baf98a4ae3a844702e9082aefe44da2)
    delegate 0xe145209e3baf98a4ae3a844702e9082aefe44da2.mul(uint128 arg1, uint128 arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0] << 128, 2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if delegate.return_data[16 len 16] >= uint128(delegate.return_data[0]):
        revert with 0, 'Invalid ltv'
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.0x77cc7185 with:
         gas gas_remaining wei
        args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.getBorrower(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xa27d2921114382974a07568a9dbf30801b97c902)
    delegate 0xa27d2921114382974a07568a9dbf30801b97c902.sub(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_6b664fc8Address)
    call sub_6b664fc8Address.getCollateralType(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[31 len 1] <= 2
    if ext_call.return_data[31 len 1] == 1:
        if delegate.return_data[0] > 0:
            require ext_code.size(arg1)
            call arg1.withdraw(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args 0, address(ext_call.return_data[0]), delegate.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    else:
        require ext_code.size(sub_6b664fc8Address)
        call sub_6b664fc8Address.getCollateralToken(address arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if delegate.return_data[0] > 0:
            require ext_code.size(arg1)
            call arg1.withdraw(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), address(ext_call.return_data[0]), delegate.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
}



}
