contract main {




// =====================  Runtime code  =====================


const tradeHistoryAddress = 0xbf5a37670b3de1e606ec68be3558c536b2008669


function _fallback() payable {
    revert with 0, 'UNSUPPORTED'
}

function cancelAllOrders(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(0xbf5a37670b3de1e606ec68be3558c536b2008669)
    if not arg1:
        call 0xbf5a37670b3de1e606ec68be3558c536b2008669.0x5e45560 with:
             gas gas_remaining wei
            args msg.sender, block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit AllOrdersCancelled(block.timestamp, msg.sender);
    else:
        call 0xbf5a37670b3de1e606ec68be3558c536b2008669.0x5e45560 with:
             gas gas_remaining wei
            args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit AllOrdersCancelled(arg1, msg.sender);
}

function sub_543b5fa4(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(0xbf5a37670b3de1e606ec68be3558c536b2008669)
    if not arg2:
        call 0xbf5a37670b3de1e606ec68be3558c536b2008669.0x9bdbf652 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x6c1800f2: block.timestamp, msg.sender, arg1
    else:
        call 0xbf5a37670b3de1e606ec68be3558c536b2008669.0x9bdbf652 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x6c1800f2: arg2, msg.sender, arg1
}

function sub_eac5c190(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(0xbf5a37670b3de1e606ec68be3558c536b2008669)
    if not arg3:
        call 0xbf5a37670b3de1e606ec68be3558c536b2008669.0xcb23e899 with:
             gas gas_remaining wei
            args msg.sender, Mask(160, 96, address(arg1) xor address(arg2)), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x3010b5cc: address(arg1), address(arg2), block.timestamp, msg.sender
    else:
        call 0xbf5a37670b3de1e606ec68be3558c536b2008669.0xcb23e899 with:
             gas gas_remaining wei
            args msg.sender, Mask(160, 96, address(arg1) xor address(arg2)), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x3010b5cc: address(arg1), address(arg2), arg3, msg.sender
}

function sub_22baa826(?) {
    require calldata.size - 4 >= 128
    require ext_code.size(0xbf5a37670b3de1e606ec68be3558c536b2008669)
    if not arg4:
        call 0xbf5a37670b3de1e606ec68be3558c536b2008669.0xf732282b with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), Mask(160, 96, address(arg2) xor address(arg3)), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x97bda78b: address(arg2), address(arg3), block.timestamp, msg.sender, arg1
    else:
        call 0xbf5a37670b3de1e606ec68be3558c536b2008669.0xf732282b with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), Mask(160, 96, address(arg2) xor address(arg3)), arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x97bda78b: address(arg2), address(arg3), arg4, msg.sender, arg1
}

function sub_a383de3a(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if arg1.length <= 0:
        revert with 0, 'INVALID_SIZE'
    mem[96] = 12
    mem[128] = 'INVALID_SIZE'
    if arg1.length % 32:
        revert with 0, 'INVALID_SIZE'
    mem[160] = arg1.length / 32
    mem[64] = floor32(arg1.length) + 192
    if not floor32(arg1.length):
        idx = 0
        while idx < arg1.length / 32:
            _60 = mem[64]
            mem[64] = mem[64] + ceil32(arg1.length) + 32
            mem[_60] = arg1.length
            mem[_60 + 32 len arg1.length] = arg1[all]
            mem[_60 + arg1.length + 32] = 0
            if arg1.length < (32 * idx) + 32:
                revert with 0, 'INVALID_SIZE'
            require idx < mem[160]
            mem[(32 * idx) + 192] = mem[_60 + (32 * idx) + 32]
            require idx < mem[160]
            _88 = mem[(32 * idx) + 192]
            mem[mem[64]] = 0xcfd854c200000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _88
            require ext_code.size(0xbf5a37670b3de1e606ec68be3558c536b2008669)
            call 0xbf5a37670b3de1e606ec68be3558c536b2008669.0xcfd854c2 with:
                 gas gas_remaining wei
                args msg.sender, _88
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[160]
        _59 = mem[160]
        mem[mem[64] + 64 len floor32(mem[160])] = mem[192 len floor32(mem[160])]
        emit 0xa4f95862: 32, mem[mem[64] + 32 len (32 * _59) + 32], msg.sender
    else:
        mem[192 len floor32(arg1.length)] = code.data[2680 len floor32(arg1.length)]
        idx = 0
        while idx < arg1.length / 32:
            _64 = mem[64]
            mem[64] = mem[64] + ceil32(arg1.length) + 32
            mem[_64] = arg1.length
            mem[_64 + 32 len arg1.length] = arg1[all]
            mem[_64 + arg1.length + 32] = 0
            if arg1.length < (32 * idx) + 32:
                revert with 0, 'INVALID_SIZE'
            require idx < mem[160]
            mem[(32 * idx) + 192] = mem[_64 + (32 * idx) + 32]
            require idx < mem[160]
            _91 = mem[(32 * idx) + 192]
            mem[mem[64]] = 0xcfd854c200000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _91
            require ext_code.size(0xbf5a37670b3de1e606ec68be3558c536b2008669)
            call 0xbf5a37670b3de1e606ec68be3558c536b2008669.0xcfd854c2 with:
                 gas gas_remaining wei
                args msg.sender, _91
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[160]
        _63 = mem[160]
        mem[mem[64] + 64 len floor32(mem[160])] = mem[192 len floor32(mem[160])]
        emit 0xa4f95862: 32, mem[mem[64] + 32 len (32 * _63) + 32], msg.sender
}



}
