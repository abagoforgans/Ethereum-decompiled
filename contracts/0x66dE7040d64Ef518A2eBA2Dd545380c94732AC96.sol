contract main {




// =====================  Runtime code  =====================


#
#  - sub_d2d4aacd(?)
#
address sub_5eeedbf4Address;
address sub_40de7ab9Address;
uint256 sub_919ad6b6;
uint256 sub_37072780;
uint256 minBid;
address stor5;

function sub_37072780(?) {
    return sub_37072780
}

function minBid() {
    return minBid
}

function sub_40de7ab9(?) {
    return sub_40de7ab9Address
}

function sub_5eeedbf4(?) {
    return sub_5eeedbf4Address
}

function sub_919ad6b6(?) {
    return sub_919ad6b6
}

function _fallback() payable {
    revert
}

function sub_39d6d6d2(?) {
    require ext_code.size(stor5)
    staticcall stor5.0x4c9b44e4 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_fe2c13c4(?) {
    require calldata.size - 4 >= 32
    if sub_40de7ab9Address != msg.sender:
        revert with 0, '', mem[164]
    if arg1 <= 0:
        revert with 0, 'Incorrect commission percent'
    if arg1 >= 100:
        revert with 0, 'Incorrect commission percent'
    sub_919ad6b6 = arg1
}

function sub_d991ed86(?) {
    require calldata.size - 4 >= 32
    if sub_40de7ab9Address != msg.sender:
        revert with 0, '', mem[164]
    require ext_code.size(stor5)
    call stor5.0xf2b9940 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3bd6cad6(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor5)
    staticcall stor5.0xe60548c2 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_b6f8184d(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor5)
    staticcall stor5.0xb6f8184d with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_b938835d(?) {
    require calldata.size - 4 >= 64
    if sub_40de7ab9Address != msg.sender:
        revert with 0, '', mem[164]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Try transfer to 0x0 or betexStorage address'
    if sub_5eeedbf4Address == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Try transfer to 0x0 or betexStorage address'
    require ext_code.size(stor5)
    call stor5.0x153f0465 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor5)
    call stor5.0x94081e21 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_37c07f78(?) {
    require calldata.size - 4 >= 32
    if sub_40de7ab9Address != msg.sender:
        revert with 0, '', mem[164]
    require ext_code.size(stor5)
    staticcall stor5.commission() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor5)
    staticcall stor5.0xe60548c2 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x106805c6 with:
         gas gas_remaining wei
        args ext_call.return_data[0], arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor5)
    call stor5.0xea02ced9 with:
         gas gas_remaining wei
        args arg1 << 224, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_b8343a80(?) {
    require ext_code.size(stor5)
    staticcall stor5.commission() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 'Yh2}'
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).'Yh2}' with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _8 = mem[96]
    require mem[96] <= 4294967296
    require mem[96] + 32 <= return_data.size
    require mem[mem[96] + 96] <= 4294967296 and mem[96] + (32 * mem[mem[96] + 96]) + 32 <= return_data.size
    _19 = mem[mem[96] + 96]
    idx = 0
    s = 0
    while idx < _19:
        require idx < mem[_8 + 96]
        _23 = mem[(32 * idx) + _8 + 128]
        mem[ceil32(return_data.size) + 100] = mem[(32 * idx) + _8 + 156 len 4]
        require ext_code.size(stor5)
        staticcall stor5.0xe60548c2 with:
                gas gas_remaining wei
               args uint32(_23)
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] + s >= s
        idx = idx + 1
        s = ext_call.return_data[0] + s
        continue 
    return (_27 * _19)
}

function sub_be5a3e61(?) {
    if sub_40de7ab9Address != msg.sender:
        revert with 0, '', mem[164]
    require ext_code.size(stor5)
    staticcall stor5.commission() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 'Yh2}'
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).'Yh2}' with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _10 = mem[96]
    require mem[96] <= 4294967296
    require mem[96] + 32 <= return_data.size
    require mem[mem[96] + 96] <= 4294967296 and mem[96] + (32 * mem[mem[96] + 96]) + 32 <= return_data.size
    _23 = mem[mem[96] + 96]
    idx = 0
    while idx < _23:
        require idx < mem[_10 + 96]
        _25 = mem[_10 + (32 * idx) + 128]
        require ext_code.size(stor5)
        staticcall stor5.0xe60548c2 with:
                gas gas_remaining wei
               args mem[_10 + (32 * idx) + 156 len 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x106805c6 with:
             gas gas_remaining wei
            args ext_call.return_data[0], mem[_10 + (32 * idx) + 156 len 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 96] = 0xea02ced900000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 100] = uint32(_25)
        mem[ceil32(return_data.size) + 132] = ext_call.return_data[0]
        require ext_code.size(stor5)
        call stor5.0xea02ced9 with:
             gas gas_remaining wei
            args _25 << 224, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function sub_e6aad093(?) payable {
    require calldata.size - 4 >= 128
    require ext_code.size(stor5)
    staticcall stor5.0xa9b406f with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, '', mem[164]
    if sub_40de7ab9Address != msg.sender:
        revert with 0, '', mem[164]
    if arg2 != 1:
        if arg2 != 2:
            revert with 0, 'Incorrect bid type'
    if msg.value < minBid:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Bid value have to be greater than 0'
    require ext_code.size(stor5)
    call stor5.0x74d0acf9 with:
       value msg.value wei
         gas gas_remaining wei
        args 0, 0, msg.value, arg2 << 224, 0, arg3 << 224, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor5)
    staticcall stor5.0xd521e028 with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    require uint32(ext_call.return_data[160]) <= 3
    require arg2 <= 3
    if arg3 != uint32(ext_call.return_data[0]):
        require ext_code.size(stor5)
        if arg2 != 1:
            call stor5.0x18a7fe with:
                 gas gas_remaining wei
                args arg3 << 224, 0, msg.value, 1, 0, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x680f4664: 0, 0, msg.value, 0, 1, 0
        else:
            call stor5.0x18a7fe with:
                 gas gas_remaining wei
                args arg3 << 224, msg.value, 0, 0, 1, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x680f4664: 0, msg.value, 0, 1, 0, 0
    else:
        require uint32(ext_call.return_data[160]) <= 3
        require ext_code.size(stor5)
        if arg2 != 1:
            call stor5.0x18a7fe with:
                 gas gas_remaining wei
                args ext_call.return_data[0] << 224, ext_call.return_data[32], msg.value + ext_call.return_data[64], uint32(ext_call.return_data[96]) + 1 << 224, ext_call.return_data[128] << 224, uint32(ext_call.return_data[160])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require uint32(ext_call.return_data[160]) <= 3
            emit 0x680f4664: 0, ext_call.return_data[32], msg.value + ext_call.return_data[64], ext_call.return_data[128] << 224, uint32(ext_call.return_data[96]) + 1 << 224, uint32(ext_call.return_data[160])
        else:
            call stor5.0x18a7fe with:
                 gas gas_remaining wei
                args ext_call.return_data[0] << 224, msg.value + ext_call.return_data[32], ext_call.return_data[64], ext_call.return_data[96] << 224, uint32(ext_call.return_data[128]) + 1 << 224, uint32(ext_call.return_data[160])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require uint32(ext_call.return_data[160]) <= 3
            emit 0x680f4664: 0, msg.value + ext_call.return_data[32], ext_call.return_data[64], uint32(ext_call.return_data[128]) + 1 << 224, ext_call.return_data[96] << 224, uint32(ext_call.return_data[160])
    emit 0xaa405abf: address(arg1), msg.value, arg2 << 224, arg3 << 224, arg4 << 224, block.timestamp
}



}
