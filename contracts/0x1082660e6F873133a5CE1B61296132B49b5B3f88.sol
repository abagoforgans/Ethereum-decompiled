contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
address sub_cc401f59Address;
uint256 sub_cdd94984;
uint256 sub_fb985f9b;
address sub_7c2b359bAddress;
address sub_9ce4321fAddress;
uint256 sub_8a8ff62f;
uint256 sub_a0f32774;
address bankerAddress;
address founderAddress;
address tokenAddress;
uint256 sub_1062b301;
uint256 sub_8d5722de;
uint256 sub_5ed9447b;

function banker() {
    return bankerAddress
}

function sub_1062b301(?) {
    return sub_1062b301
}

function founder() {
    return founderAddress
}

function paused() {
    return bool(uint8(stor0.field_160))
}

function sub_5ed9447b(?) {
    return sub_5ed9447b
}

function sub_7c2b359b(?) {
    return sub_7c2b359bAddress
}

function sub_8a8ff62f(?) {
    return sub_8a8ff62f
}

function sub_8d5722de(?) {
    return sub_8d5722de
}

function owner() {
    return owner
}

function sub_9ce4321f(?) {
    return sub_9ce4321fAddress
}

function sub_a0f32774(?) {
    return sub_a0f32774
}

function sub_cc401f59(?) {
    return sub_cc401f59Address
}

function sub_cdd94984(?) {
    return sub_cdd94984
}

function sub_fb985f9b(?) {
    return sub_fb985f9b
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function sub_6ff4c1c3(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_cdd94984 = arg1
}

function sub_790169b6(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_fb985f9b = arg1
}

function sub_b9627953(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    bankerAddress = arg1
}

function unpause() {
    require msg.sender == owner
    require uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 0
    emit Unpaused()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 1
    emit Paused()
}

function sub_c136c437(?) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    sub_a0f32774 = 10^18 * arg1
    sub_8a8ff62f = 10^18 * arg2
}

function sub_b9cda20f(?) {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    sub_1062b301 = arg1
    sub_8d5722de = arg2
    sub_5ed9447b = arg3
}

function sub_ddd11d1c(?) {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    sub_cc401f59Address = arg1
    sub_7c2b359bAddress = arg2
    sub_9ce4321fAddress = arg3
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_f1588c96(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_7c2b359bAddress)
    staticcall sub_7c2b359bAddress.0xa232d082 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(sub_7c2b359bAddress)
        staticcall sub_7c2b359bAddress.0xd09b8ed5 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_63a36732(?) {
    require calldata.size - 4 >= 96
    require not uint8(stor0.field_160)
    require ext_code.size(sub_7c2b359bAddress)
    staticcall sub_7c2b359bAddress.0xa232d082 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(sub_7c2b359bAddress)
        staticcall sub_7c2b359bAddress.0xd09b8ed5 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'you are playing!'
    if arg2 < sub_8a8ff62f:
        revert with 0, 'Invaild Value!'
    if arg2 > sub_a0f32774:
        revert with 0, 'Invaild Value!'
    if arg1 == bankerAddress:
        revert with 0, 'banker can not allowed to play!'
    require ext_code.size(sub_9ce4321fAddress)
    call sub_9ce4321fAddress.0xd20620e7 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args address(arg1), address(ext_call.return_data[0]), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(sub_7c2b359bAddress)
    staticcall sub_7c2b359bAddress.0xa232d082 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_7c2b359bAddress)
    if ext_call.return_data[0]:
        staticcall sub_7c2b359bAddress.0x38aeab65 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg2 < ext_call.return_data[0]:
            revert with 0, ' entrance gcc > pre count!'
    else:
        call sub_7c2b359bAddress.0x5a2a4c7a with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_7c2b359bAddress)
        if not arg3:
            call sub_7c2b359bAddress.0x41b759af with:
                 gas gas_remaining wei
                args address(arg1), founderAddress
        else:
            if arg3 == arg1:
                call sub_7c2b359bAddress.0x41b759af with:
                     gas gas_remaining wei
                    args address(arg1), founderAddress
            else:
                call sub_7c2b359bAddress.0x41b759af with:
                     gas gas_remaining wei
                    args address(arg1), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_7c2b359bAddress)
    call sub_7c2b359bAddress.0xdfdc3cbd with:
         gas gas_remaining wei
        args address(arg1), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_7c2b359bAddress)
    call sub_7c2b359bAddress.0xdcd3f858 with:
         gas gas_remaining wei
        args address(arg1), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_7c2b359bAddress)
    call sub_7c2b359bAddress.0xdf94d2bf with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_7c2b359bAddress)
    call sub_7c2b359bAddress.0xd060872a with:
         gas gas_remaining wei
        args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_7c2b359bAddress)
    call sub_7c2b359bAddress.0x26ca3747 with:
         gas gas_remaining wei
        args address(arg1), sub_fb985f9b
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xd6768d8941981697692a58ce79403f5eee48e2ea)
    delegate 0xd6768d8941981697692a58ce79403f5eee48e2ea.mul(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg2, sub_fb985f9b
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xd6768d8941981697692a58ce79403f5eee48e2ea)
    delegate 0xd6768d8941981697692a58ce79403f5eee48e2ea.div(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args delegate.return_data[0], 100
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_7c2b359bAddress)
    call sub_7c2b359bAddress.0xd8dfd153 with:
         gas gas_remaining wei
        args address(arg1), delegate.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_7c2b359bAddress)
    call sub_7c2b359bAddress.0x2709ffdf with:
         gas gas_remaining wei
        args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xd6768d8941981697692a58ce79403f5eee48e2ea)
    delegate 0xd6768d8941981697692a58ce79403f5eee48e2ea.mul(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg2, 2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xd6768d8941981697692a58ce79403f5eee48e2ea)
    delegate 0xd6768d8941981697692a58ce79403f5eee48e2ea.div(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args delegate.return_data[0], 100
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_7c2b359bAddress)
    call sub_7c2b359bAddress.0x488158e2 with:
         gas gas_remaining wei
        args address(arg1), delegate.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xd6768d8941981697692a58ce79403f5eee48e2ea)
    delegate 0xd6768d8941981697692a58ce79403f5eee48e2ea.mul(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg2, 5
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xd6768d8941981697692a58ce79403f5eee48e2ea)
    delegate 0xd6768d8941981697692a58ce79403f5eee48e2ea.div(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args delegate.return_data[0], 1000
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_7c2b359bAddress)
    call sub_7c2b359bAddress.0x23a9468a with:
         gas gas_remaining wei
        args address(arg1), delegate.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_7c2b359bAddress)
    call sub_7c2b359bAddress.0x2290429f with:
         gas gas_remaining wei
        args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_7c2b359bAddress)
    call sub_7c2b359bAddress.0xaea4d9b5 with:
         gas gas_remaining wei
        args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_7c2b359bAddress)
    staticcall sub_7c2b359bAddress.0x6a23196b with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20]:
        require ext_code.size(0xd6768d8941981697692a58ce79403f5eee48e2ea)
        delegate 0xd6768d8941981697692a58ce79403f5eee48e2ea.mul(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args arg2, sub_1062b301
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xd6768d8941981697692a58ce79403f5eee48e2ea)
        delegate 0xd6768d8941981697692a58ce79403f5eee48e2ea.div(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args delegate.return_data[0], 100
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_7c2b359bAddress)
        staticcall sub_7c2b359bAddress.0x400dc2fa with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xd6768d8941981697692a58ce79403f5eee48e2ea)
        delegate 0xd6768d8941981697692a58ce79403f5eee48e2ea.add(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0], delegate.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_7c2b359bAddress)
        call sub_7c2b359bAddress.0xaea4d9b5 with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), delegate.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_7c2b359bAddress)
        staticcall sub_7c2b359bAddress.0x6a23196b with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20]:
            require ext_code.size(0xd6768d8941981697692a58ce79403f5eee48e2ea)
            delegate 0xd6768d8941981697692a58ce79403f5eee48e2ea.mul(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args arg2, sub_8d5722de
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0xd6768d8941981697692a58ce79403f5eee48e2ea)
            delegate 0xd6768d8941981697692a58ce79403f5eee48e2ea.div(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args delegate.return_data[0], 100
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_7c2b359bAddress)
            staticcall sub_7c2b359bAddress.0x400dc2fa with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0xd6768d8941981697692a58ce79403f5eee48e2ea)
            delegate 0xd6768d8941981697692a58ce79403f5eee48e2ea.add(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], delegate.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_7c2b359bAddress)
            call sub_7c2b359bAddress.0xaea4d9b5 with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), delegate.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_7c2b359bAddress)
            staticcall sub_7c2b359bAddress.0x6a23196b with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20]:
                require ext_code.size(0xd6768d8941981697692a58ce79403f5eee48e2ea)
                delegate 0xd6768d8941981697692a58ce79403f5eee48e2ea.mul(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args arg2, sub_5ed9447b
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xd6768d8941981697692a58ce79403f5eee48e2ea)
                delegate 0xd6768d8941981697692a58ce79403f5eee48e2ea.div(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args delegate.return_data[0], 100
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_7c2b359bAddress)
                staticcall sub_7c2b359bAddress.0x400dc2fa with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xd6768d8941981697692a58ce79403f5eee48e2ea)
                delegate 0xd6768d8941981697692a58ce79403f5eee48e2ea.add(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], delegate.return_data[0]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_7c2b359bAddress)
                call sub_7c2b359bAddress.0xaea4d9b5 with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), delegate.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    emit 0x2bd6eb2d: address(arg1), arg2, arg3
}



}
