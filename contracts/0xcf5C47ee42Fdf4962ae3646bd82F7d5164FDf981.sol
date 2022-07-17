contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
address sub_cc401f59Address;
uint256 stor2;
uint256 sub_cdd94984;
address bankerAddress;
address sub_7c2b359bAddress;
address sub_9ce4321fAddress;

function banker() {
    return bankerAddress
}

function paused() {
    return bool(uint8(stor0.field_160))
}

function sub_7c2b359b(?) {
    return sub_7c2b359bAddress
}

function owner() {
    return owner
}

function sub_9ce4321f(?) {
    return sub_9ce4321fAddress
}

function sub_cc401f59(?) {
    return sub_cc401f59Address
}

function sub_cdd94984(?) {
    return sub_cdd94984
}

function _fallback() payable {
    revert
}

function sub_6ff4c1c3(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_cdd94984 = arg1
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

function sub_1f7852b1(?) {
    require msg.sender == bankerAddress
    require ext_code.size(sub_7c2b359bAddress)
    staticcall sub_7c2b359bAddress.0x600e1be5 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_9ce4321fAddress)
    call sub_9ce4321fAddress.TransferToken(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args bankerAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_7c2b359bAddress)
    call sub_7c2b359bAddress.0xc1f33ad5 with:
         gas gas_remaining wei
        args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xd67c424c: msg.sender, ext_call.return_data[0]
}

function sub_363c43d5(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(sub_7c2b359bAddress)
    staticcall sub_7c2b359bAddress.0xef350589 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
    delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.mul(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg3, ext_call.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_7c2b359bAddress)
    staticcall sub_7c2b359bAddress.0x6f3341d1 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_7c2b359bAddress)
    staticcall sub_7c2b359bAddress.0x95e2d7bc with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
    delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.sub(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], ext_call.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 >= delegate.return_data[0]:
        return delegate.return_data[0]
    if arg2 >= delegate.return_data[0]:
        return delegate.return_data[0]
    return arg2
}

function sub_75b3c687(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_7c2b359bAddress)
    staticcall sub_7c2b359bAddress.0xfc804f07 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
    delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.sub(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args block.timestamp, ext_call.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
    delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.div(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args delegate.return_data[0], stor2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_7c2b359bAddress)
    staticcall sub_7c2b359bAddress.0x82b9d1bb with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
    delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.sub(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args delegate.return_data[0], ext_call.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if delegate.return_data[0] < 0:
        return 0
    if delegate.return_data[0] <= 300:
        return delegate.return_data[0]
    return 300
}

function sub_12996120(?) {
    require calldata.size - 4 >= 32
    require msg.sender == sub_cc401f59Address
    require ext_code.size(sub_7c2b359bAddress)
    staticcall sub_7c2b359bAddress.0xa232d082 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'you are out or not exists!'
    require ext_code.size(sub_7c2b359bAddress)
    staticcall sub_7c2b359bAddress.0xd09b8ed5 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'you are out or not exists!'
    require ext_code.size(sub_7c2b359bAddress)
    staticcall sub_7c2b359bAddress.0x38aeab65 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_7c2b359bAddress)
    staticcall sub_7c2b359bAddress.0x95e2d7bc with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
    delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.sub(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], ext_call.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        require ext_code.size(sub_9ce4321fAddress)
        call sub_9ce4321fAddress.TransferToken(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), delegate.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_7c2b359bAddress)
        call sub_7c2b359bAddress.0x2709ffdf with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_7c2b359bAddress)
    call sub_7c2b359bAddress.0xdfdc3cbd with:
         gas gas_remaining wei
        args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x1fea071d: address(arg1), delegate.return_data[0]
}

function sub_7966b059(?) {
    require calldata.size - 4 >= 64
    require msg.sender == sub_cc401f59Address
    require ext_code.size(sub_9ce4321fAddress)
    call sub_9ce4321fAddress.TransferToken(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_7c2b359bAddress)
    staticcall sub_7c2b359bAddress.0x6f3341d1 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
    delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.div(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg2, 95
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
    delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.mul(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args delegate.return_data[0], 100
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > delegate.return_data[0]
    require ext_code.size(sub_7c2b359bAddress)
    staticcall sub_7c2b359bAddress.0x95e2d7bc with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
    delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.add(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args delegate.return_data[0], ext_call.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_7c2b359bAddress)
    call sub_7c2b359bAddress.0x2709ffdf with:
         gas gas_remaining wei
        args address(arg1), delegate.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_7c2b359bAddress)
    staticcall sub_7c2b359bAddress.0x6f3341d1 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_7c2b359bAddress)
    staticcall sub_7c2b359bAddress.0x95e2d7bc with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] == ext_call.return_data[0]:
        require ext_code.size(sub_7c2b359bAddress)
        call sub_7c2b359bAddress.0xdfdc3cbd with:
             gas gas_remaining wei
            args address(arg1), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_c088995b(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_7c2b359bAddress)
    staticcall sub_7c2b359bAddress.0xa232d082 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    require ext_code.size(sub_7c2b359bAddress)
    staticcall sub_7c2b359bAddress.0xd09b8ed5 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    require ext_code.size(sub_7c2b359bAddress)
    staticcall sub_7c2b359bAddress.0xfc804f07 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
    delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.sub(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args block.timestamp, ext_call.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
    delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.div(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args delegate.return_data[0], stor2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_7c2b359bAddress)
    staticcall sub_7c2b359bAddress.0x82b9d1bb with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
    delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.sub(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args delegate.return_data[0], ext_call.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_7c2b359bAddress)
    staticcall sub_7c2b359bAddress.0xe9e61cb1 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
    if delegate.return_data[0] < 0:
        delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.mul(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0, ext_call.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_7c2b359bAddress)
        staticcall sub_7c2b359bAddress.0x2105de24 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
        delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.add(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args delegate.return_data[0], ext_call.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_7c2b359bAddress)
        staticcall sub_7c2b359bAddress.0xef350589 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
        delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.mul(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0, ext_call.return_data[0]
    else:
        if delegate.return_data[0] <= 300:
            delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.mul(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args delegate.return_data[0], ext_call.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_7c2b359bAddress)
            staticcall sub_7c2b359bAddress.0x2105de24 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
            delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.add(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args delegate.return_data[0], ext_call.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_7c2b359bAddress)
            staticcall sub_7c2b359bAddress.0xef350589 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
            delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.mul(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args delegate.return_data[0], ext_call.return_data[0]
        else:
            delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.mul(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 300, ext_call.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_7c2b359bAddress)
            staticcall sub_7c2b359bAddress.0x2105de24 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
            delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.add(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args delegate.return_data[0], ext_call.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_7c2b359bAddress)
            staticcall sub_7c2b359bAddress.0xef350589 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
            delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.mul(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 300, ext_call.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_7c2b359bAddress)
    staticcall sub_7c2b359bAddress.0x6f3341d1 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_7c2b359bAddress)
    staticcall sub_7c2b359bAddress.0x95e2d7bc with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
    delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.sub(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], ext_call.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_7c2b359bAddress)
    staticcall sub_7c2b359bAddress.0x400dc2fa with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
    delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.add(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args delegate.return_data[0], ext_call.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_7c2b359bAddress)
    staticcall sub_7c2b359bAddress.0x6f3341d1 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_7c2b359bAddress)
    staticcall sub_7c2b359bAddress.0x95e2d7bc with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
    delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.sub(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], ext_call.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function getPlayerInfoByAddress(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_7c2b359bAddress)
    staticcall sub_7c2b359bAddress.0x6a23196b with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_7c2b359bAddress)
    staticcall sub_7c2b359bAddress.0x38aeab65 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_7c2b359bAddress)
    staticcall sub_7c2b359bAddress.0x95e2d7bc with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_7c2b359bAddress)
    staticcall sub_7c2b359bAddress.0x6f3341d1 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_7c2b359bAddress)
    staticcall sub_7c2b359bAddress.0xa232d082 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_7c2b359bAddress)
    staticcall sub_7c2b359bAddress.0xd09b8ed5 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
        delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.mul(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0], sub_cdd94984
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
        delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.div(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args delegate.return_data[0], 100
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
        delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.sub(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0], delegate.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
        delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.mul(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0], sub_cdd94984
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
        delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.div(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args delegate.return_data[0], 100
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
        delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.sub(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0], delegate.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
        delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.mul(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0, sub_cdd94984
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
        delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.div(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args delegate.return_data[0], 100
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
        delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.sub(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0, delegate.return_data[0]
    else:
        require ext_code.size(sub_7c2b359bAddress)
        if not ext_call.return_data[0]:
            staticcall sub_7c2b359bAddress.0xd09b8ed5 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
            delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.mul(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], sub_cdd94984
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
            delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.div(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args delegate.return_data[0], 100
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
            delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.sub(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], delegate.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
            delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.mul(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], sub_cdd94984
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
            delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.div(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args delegate.return_data[0], 100
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
            delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.sub(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], delegate.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
            delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.mul(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0, sub_cdd94984
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
            delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.div(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args delegate.return_data[0], 100
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
            delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.sub(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0, delegate.return_data[0]
        else:
            staticcall sub_7c2b359bAddress.0xfc804f07 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
            delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.sub(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args block.timestamp, ext_call.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
            delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.div(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args delegate.return_data[0], stor2
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_7c2b359bAddress)
            staticcall sub_7c2b359bAddress.0x82b9d1bb with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
            delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.sub(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args delegate.return_data[0], ext_call.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_7c2b359bAddress)
            staticcall sub_7c2b359bAddress.0xe9e61cb1 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
            if delegate.return_data[0] < 0:
                delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.mul(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0, ext_call.return_data[0]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_7c2b359bAddress)
                staticcall sub_7c2b359bAddress.0x2105de24 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
                delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.add(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args delegate.return_data[0], ext_call.return_data[0]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_7c2b359bAddress)
                staticcall sub_7c2b359bAddress.0xef350589 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
                delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.mul(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0, ext_call.return_data[0]
            else:
                if delegate.return_data[0] <= 300:
                    delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.mul(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args delegate.return_data[0], ext_call.return_data[0]
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_7c2b359bAddress)
                    staticcall sub_7c2b359bAddress.0x2105de24 with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
                    delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.add(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args delegate.return_data[0], ext_call.return_data[0]
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_7c2b359bAddress)
                    staticcall sub_7c2b359bAddress.0xef350589 with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
                    delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.mul(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args delegate.return_data[0], ext_call.return_data[0]
                else:
                    delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.mul(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 300, ext_call.return_data[0]
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_7c2b359bAddress)
                    staticcall sub_7c2b359bAddress.0x2105de24 with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
                    delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.add(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args delegate.return_data[0], ext_call.return_data[0]
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_7c2b359bAddress)
                    staticcall sub_7c2b359bAddress.0xef350589 with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
                    delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.mul(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 300, ext_call.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_7c2b359bAddress)
            staticcall sub_7c2b359bAddress.0x6f3341d1 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_7c2b359bAddress)
            staticcall sub_7c2b359bAddress.0x95e2d7bc with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
            delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.sub(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], ext_call.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_7c2b359bAddress)
            staticcall sub_7c2b359bAddress.0x400dc2fa with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
            delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.add(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args delegate.return_data[0], ext_call.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_7c2b359bAddress)
            staticcall sub_7c2b359bAddress.0x6f3341d1 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_7c2b359bAddress)
            staticcall sub_7c2b359bAddress.0x95e2d7bc with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
            delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.sub(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], ext_call.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_7c2b359bAddress)
            staticcall sub_7c2b359bAddress.0xd09b8ed5 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
            delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.mul(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], sub_cdd94984
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
            delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.div(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args delegate.return_data[0], 100
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
            delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.sub(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], delegate.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
            delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.mul(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], sub_cdd94984
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
            delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.div(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args delegate.return_data[0], 100
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
            delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.sub(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], delegate.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
            delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.mul(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args delegate.return_data[0], sub_cdd94984
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
            delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.div(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args delegate.return_data[0], 100
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
            delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.sub(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args delegate.return_data[0], delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return address(ext_call.return_data[0]), 
           ext_call.return_data[0],
           delegate.return_data[0],
           delegate.return_data[0],
           delegate.return_data[0],
           bool(ext_call.return_data[0])
}

function release(address arg1) {
    require calldata.size - 4 >= 32
    require not uint8(stor0.field_160)
    require msg.sender == sub_cc401f59Address
    require ext_code.size(sub_7c2b359bAddress)
    staticcall sub_7c2b359bAddress.0xa232d082 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'you are out or not exists!'
    require ext_code.size(sub_7c2b359bAddress)
    staticcall sub_7c2b359bAddress.0xd09b8ed5 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'you are out or not exists!'
    require ext_code.size(sub_7c2b359bAddress)
    staticcall sub_7c2b359bAddress.0xfc804f07 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
    delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.sub(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args block.timestamp, ext_call.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
    delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.div(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args delegate.return_data[0], stor2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_7c2b359bAddress)
    staticcall sub_7c2b359bAddress.0x82b9d1bb with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
    delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.sub(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args delegate.return_data[0], ext_call.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_7c2b359bAddress)
    staticcall sub_7c2b359bAddress.0xe9e61cb1 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
    if delegate.return_data[0] < 0:
        delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.mul(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0, ext_call.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_7c2b359bAddress)
        staticcall sub_7c2b359bAddress.0x2105de24 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_7c2b359bAddress)
        call sub_7c2b359bAddress.0x2290429f with:
             gas gas_remaining wei
            args address(arg1), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
        delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.add(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args delegate.return_data[0], ext_call.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_7c2b359bAddress)
        staticcall sub_7c2b359bAddress.0xef350589 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
        delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.mul(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0, ext_call.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_7c2b359bAddress)
        staticcall sub_7c2b359bAddress.0x6f3341d1 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_7c2b359bAddress)
        staticcall sub_7c2b359bAddress.0x95e2d7bc with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
        delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.sub(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0], ext_call.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_7c2b359bAddress)
        staticcall sub_7c2b359bAddress.0x400dc2fa with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
        delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.add(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args delegate.return_data[0], ext_call.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_7c2b359bAddress)
        call sub_7c2b359bAddress.0xaea4d9b5 with:
             gas gas_remaining wei
            args address(arg1), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_7c2b359bAddress)
        staticcall sub_7c2b359bAddress.0x6f3341d1 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_7c2b359bAddress)
        staticcall sub_7c2b359bAddress.0x95e2d7bc with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
        delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.sub(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0], ext_call.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require delegate.return_data[0] > 0
        require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
        delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.mul(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args delegate.return_data[0], sub_cdd94984
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
        delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.div(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args delegate.return_data[0], 100
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
        delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.mul(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args delegate.return_data[0], sub_cdd94984
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
        delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.div(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args delegate.return_data[0], 100
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
        delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.sub(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args delegate.return_data[0], delegate.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_9ce4321fAddress)
        call sub_9ce4321fAddress.TransferToken(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), delegate.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_7c2b359bAddress)
        staticcall sub_7c2b359bAddress.0x600e1be5 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
        delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.div(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args delegate.return_data[0], 2
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
        delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.add(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0], delegate.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_7c2b359bAddress)
        call sub_7c2b359bAddress.0xc1f33ad5 with:
             gas gas_remaining wei
            args delegate.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_7c2b359bAddress)
        staticcall sub_7c2b359bAddress.0x95e2d7bc with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
        delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.add(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args delegate.return_data[0], ext_call.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_7c2b359bAddress)
        call sub_7c2b359bAddress.0x2709ffdf with:
             gas gas_remaining wei
            args address(arg1), delegate.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_7c2b359bAddress)
        staticcall sub_7c2b359bAddress.0x82b9d1bb with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
        delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.add(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0, ext_call.return_data[0]
    else:
        if delegate.return_data[0] <= 300:
            delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.mul(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args delegate.return_data[0], ext_call.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_7c2b359bAddress)
            staticcall sub_7c2b359bAddress.0x2105de24 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_7c2b359bAddress)
            call sub_7c2b359bAddress.0x2290429f with:
                 gas gas_remaining wei
                args address(arg1), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
            delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.add(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args delegate.return_data[0], ext_call.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_7c2b359bAddress)
            staticcall sub_7c2b359bAddress.0xef350589 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
            delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.mul(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args delegate.return_data[0], ext_call.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_7c2b359bAddress)
            staticcall sub_7c2b359bAddress.0x6f3341d1 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_7c2b359bAddress)
            staticcall sub_7c2b359bAddress.0x95e2d7bc with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
            delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.sub(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], ext_call.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_7c2b359bAddress)
            staticcall sub_7c2b359bAddress.0x400dc2fa with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
            delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.add(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args delegate.return_data[0], ext_call.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_7c2b359bAddress)
            call sub_7c2b359bAddress.0xaea4d9b5 with:
                 gas gas_remaining wei
                args address(arg1), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_7c2b359bAddress)
            staticcall sub_7c2b359bAddress.0x6f3341d1 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_7c2b359bAddress)
            staticcall sub_7c2b359bAddress.0x95e2d7bc with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
            delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.sub(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], ext_call.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require delegate.return_data[0] > 0
            require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
            delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.mul(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args delegate.return_data[0], sub_cdd94984
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
            delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.div(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args delegate.return_data[0], 100
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
            delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.mul(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args delegate.return_data[0], sub_cdd94984
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
            delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.div(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args delegate.return_data[0], 100
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
            delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.sub(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args delegate.return_data[0], delegate.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_9ce4321fAddress)
            call sub_9ce4321fAddress.TransferToken(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), delegate.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_7c2b359bAddress)
            staticcall sub_7c2b359bAddress.0x600e1be5 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
            delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.div(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args delegate.return_data[0], 2
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
            delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.add(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], delegate.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_7c2b359bAddress)
            call sub_7c2b359bAddress.0xc1f33ad5 with:
                 gas gas_remaining wei
                args delegate.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_7c2b359bAddress)
            staticcall sub_7c2b359bAddress.0x95e2d7bc with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
            delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.add(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args delegate.return_data[0], ext_call.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_7c2b359bAddress)
            call sub_7c2b359bAddress.0x2709ffdf with:
                 gas gas_remaining wei
                args address(arg1), delegate.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_7c2b359bAddress)
            staticcall sub_7c2b359bAddress.0x82b9d1bb with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
            delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.add(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args delegate.return_data[0], ext_call.return_data[0]
        else:
            delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.mul(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 300, ext_call.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_7c2b359bAddress)
            staticcall sub_7c2b359bAddress.0x2105de24 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_7c2b359bAddress)
            call sub_7c2b359bAddress.0x2290429f with:
                 gas gas_remaining wei
                args address(arg1), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
            delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.add(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args delegate.return_data[0], ext_call.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_7c2b359bAddress)
            staticcall sub_7c2b359bAddress.0xef350589 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
            delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.mul(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 300, ext_call.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_7c2b359bAddress)
            staticcall sub_7c2b359bAddress.0x6f3341d1 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_7c2b359bAddress)
            staticcall sub_7c2b359bAddress.0x95e2d7bc with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
            delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.sub(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], ext_call.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_7c2b359bAddress)
            staticcall sub_7c2b359bAddress.0x400dc2fa with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
            delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.add(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args delegate.return_data[0], ext_call.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_7c2b359bAddress)
            call sub_7c2b359bAddress.0xaea4d9b5 with:
                 gas gas_remaining wei
                args address(arg1), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_7c2b359bAddress)
            staticcall sub_7c2b359bAddress.0x6f3341d1 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_7c2b359bAddress)
            staticcall sub_7c2b359bAddress.0x95e2d7bc with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
            delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.sub(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], ext_call.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require delegate.return_data[0] > 0
            require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
            delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.mul(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args delegate.return_data[0], sub_cdd94984
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
            delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.div(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args delegate.return_data[0], 100
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
            delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.mul(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args delegate.return_data[0], sub_cdd94984
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
            delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.div(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args delegate.return_data[0], 100
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
            delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.sub(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args delegate.return_data[0], delegate.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_9ce4321fAddress)
            call sub_9ce4321fAddress.TransferToken(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), delegate.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_7c2b359bAddress)
            staticcall sub_7c2b359bAddress.0x600e1be5 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
            delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.div(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args delegate.return_data[0], 2
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
            delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.add(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], delegate.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_7c2b359bAddress)
            call sub_7c2b359bAddress.0xc1f33ad5 with:
                 gas gas_remaining wei
                args delegate.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_7c2b359bAddress)
            staticcall sub_7c2b359bAddress.0x95e2d7bc with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
            delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.add(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args delegate.return_data[0], ext_call.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_7c2b359bAddress)
            call sub_7c2b359bAddress.0x2709ffdf with:
                 gas gas_remaining wei
                args address(arg1), delegate.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_7c2b359bAddress)
            staticcall sub_7c2b359bAddress.0x82b9d1bb with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
            delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.add(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 300, ext_call.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_7c2b359bAddress)
    call sub_7c2b359bAddress.0xd060872a with:
         gas gas_remaining wei
        args address(arg1), delegate.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_7c2b359bAddress)
    staticcall sub_7c2b359bAddress.0x6a23196b with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_7c2b359bAddress)
    staticcall sub_7c2b359bAddress.0x2105de24 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x68c492e39817d61b473be3c3c81303cf4a0b31a8)
    delegate 0x68c492e39817d61b473be3c3c81303cf4a0b31a8.add(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args delegate.return_data[0], ext_call.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_7c2b359bAddress)
    call sub_7c2b359bAddress.0x2290429f with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), delegate.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_7c2b359bAddress)
    staticcall sub_7c2b359bAddress.0x6f3341d1 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_7c2b359bAddress)
    staticcall sub_7c2b359bAddress.0x95e2d7bc with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= ext_call.return_data[0]:
        require ext_code.size(sub_7c2b359bAddress)
        call sub_7c2b359bAddress.0xdfdc3cbd with:
             gas gas_remaining wei
            args address(arg1), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit 0x6454ebe9: address(arg1), delegate.return_data[0]
}



}
