contract main {




// =====================  Runtime code  =====================


address delegateAddress;

function delegateAddress() {
    return delegateAddress
}

function _fallback() payable {
    revert
}

function cancelAllOrders(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(delegateAddress)
    if not arg1:
        call delegateAddress.0x5e45560 with:
             gas gas_remaining wei
            args tx.origin, block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit AllOrdersCancelled(block.timestamp, tx.origin);
    else:
        call delegateAddress.0x5e45560 with:
             gas gas_remaining wei
            args tx.origin, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit AllOrdersCancelled(arg1, tx.origin);
}

function sub_543b5fa4(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(delegateAddress)
    if not arg2:
        call delegateAddress.0x9bdbf652 with:
             gas gas_remaining wei
            args tx.origin, address(arg1), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x6c1800f2: block.timestamp, tx.origin, arg1
    else:
        call delegateAddress.0x9bdbf652 with:
             gas gas_remaining wei
            args tx.origin, address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x6c1800f2: arg2, tx.origin, arg1
}

function sub_eac5c190(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(delegateAddress)
    if not arg3:
        call delegateAddress.0xcb23e899 with:
             gas gas_remaining wei
            args tx.origin, Mask(160, 96, address(arg2) xor address(arg1)), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x3010b5cc: address(arg1), address(arg2), block.timestamp, tx.origin
    else:
        call delegateAddress.0xcb23e899 with:
             gas gas_remaining wei
            args tx.origin, Mask(160, 96, address(arg2) xor address(arg1)), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x3010b5cc: address(arg1), address(arg2), arg3, tx.origin
}

function sub_22baa826(?) {
    require calldata.size - 4 >= 128
    require ext_code.size(delegateAddress)
    if not arg4:
        call delegateAddress.0xf732282b with:
             gas gas_remaining wei
            args 0, 0, address(arg1), Mask(160, 96, address(arg3) xor address(arg2)), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x97bda78b: address(arg2), address(arg3), block.timestamp, tx.origin, arg1
    else:
        call delegateAddress.0xf732282b with:
             gas gas_remaining wei
            args 0, 0, address(arg1), Mask(160, 96, address(arg3) xor address(arg2)), arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x97bda78b: address(arg2), address(arg3), arg4, tx.origin, arg1
}

function sub_a383de3a(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    if arg1.length <= 0:
        revert with 0, 'INVALID_SIZE', 0
    mem[96] = 12
    mem[128] = 'INVALID_SIZE'
    if arg1.length % 32:
        revert with 0, 'INVALID_SIZE', 0
    mem[160] = arg1.length / 32
    mem[64] = floor32(arg1.length) + 192
    if not floor32(arg1.length):
        idx = 0
        while idx < arg1.length / 32:
            _40 = mem[64]
            mem[64] = mem[64] + ceil32(arg1.length) + 32
            mem[_40] = arg1.length
            mem[_40 + 32 len arg1.length] = arg1[all]
            require arg1.length >= (32 * idx) + 32
            require idx < mem[160]
            mem[(32 * idx) + 192] = mem[(32 * idx) + _40 + 32]
            require idx < mem[160]
            _54 = mem[(32 * idx) + 192]
            mem[mem[64]] = 0xcfd854c200000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = tx.origin
            mem[mem[64] + 36] = _54
            require ext_code.size(delegateAddress)
            call delegateAddress.0xcfd854c2 with:
                 gas gas_remaining wei
                args tx.origin, _54
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _48 = mem[160]
        mem[mem[64] + 32] = mem[160]
        mem[mem[64] + 64 len 32 * _48] = mem[192 len 32 * _48]
        emit 0xa4f95862: 32, mem[mem[64] + 32 len (32 * _48) + 32], tx.origin
    else:
        mem[192 len floor32(arg1.length)] = code.data[2851 len floor32(arg1.length)]
        idx = 0
        while idx < arg1.length / 32:
            _42 = mem[64]
            mem[64] = mem[64] + ceil32(arg1.length) + 32
            mem[_42] = arg1.length
            mem[_42 + 32 len arg1.length] = arg1[all]
            require arg1.length >= (32 * idx) + 32
            require idx < mem[160]
            mem[(32 * idx) + 192] = mem[(32 * idx) + _42 + 32]
            require idx < mem[160]
            _56 = mem[(32 * idx) + 192]
            mem[mem[64]] = 0xcfd854c200000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = tx.origin
            mem[mem[64] + 36] = _56
            require ext_code.size(delegateAddress)
            call delegateAddress.0xcfd854c2 with:
                 gas gas_remaining wei
                args tx.origin, _56
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _50 = mem[160]
        mem[mem[64] + 32] = mem[160]
        mem[mem[64] + 64 len 32 * _50] = mem[192 len 32 * _50]
        emit 0xa4f95862: 32, mem[mem[64] + 32 len (32 * _50) + 32], tx.origin
}



}
