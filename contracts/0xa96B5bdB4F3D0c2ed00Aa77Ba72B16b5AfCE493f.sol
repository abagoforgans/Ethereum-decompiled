contract main {




// =====================  Runtime code  =====================


#
#  - sub_b8213e41(?)
#
address _owner;
array of struct sub_ff3077c6;
mapping of address sub_f4394546;
address sub_de52e4abAddress;
address _feeRecipientAddress;
uint256 sub_a354be19;
address sub_4c1df4c4Address;
uint256 sub_d3474da4;

function sub_4c1df4c4(?) {
    return sub_4c1df4c4Address
}

function sub_9a3ff9e0(?) {
    return sub_de52e4abAddress
}

function _feeRecipient() {
    return _feeRecipientAddress
}

function sub_a354be19(?) {
    return sub_a354be19
}

function _owner() {
    return _owner
}

function sub_d3474da4(?) {
    return sub_d3474da4
}

function sub_de52e4ab(?) {
    return sub_de52e4abAddress
}

function sub_f4394546(?) {
    require calldata.size - 4 >= 32
    return sub_f4394546[arg1]
}

function sub_f99a4a9c(?) {
    return sub_ff3077c6.length
}

function sub_ff3077c6(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_ff3077c6.length
    return sub_ff3077c6[arg1].field_0
}

function _fallback() payable {
    revert
}

function sub_2dba2737(?) {
    require calldata.size - 4 >= 32
    require msg.sender == _owner
    sub_a354be19 = arg1
}

function sub_545fa8c4(?) {
    require calldata.size - 4 >= 32
    require msg.sender == _owner
    sub_de52e4abAddress = arg1
}

function updateFeeRecipient(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == _owner
    _feeRecipientAddress = arg1
}

function sub_944f0e16(?) {
    require calldata.size - 4 >= 64
    require msg.sender == _owner
    sub_4c1df4c4Address = arg1
    sub_d3474da4 = arg2
}

function updateOwner(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == _owner
    if not arg1:
        revert with 0, 'New Owner is not found'
    _owner = arg1
    emit 0x957090e7: arg1
}

function sub_950ef652(?) {
    if not sub_ff3077c6.length:
        mem[(32 * sub_ff3077c6.length) + 128] = 32
        mem[(32 * sub_ff3077c6.length) + 160] = sub_ff3077c6.length
        mem[(32 * sub_ff3077c6.length) + 192 len floor32(sub_ff3077c6.length)] = mem[128 len floor32(sub_ff3077c6.length)]
        return memory
          from (32 * sub_ff3077c6.length) + 128
           len (96 * sub_ff3077c6.length) + 64
    mem[128] = address(sub_ff3077c6.field_0)
    idx = 128
    s = 0
    while (32 * sub_ff3077c6.length) + 96 > idx:
        mem[idx + 32] = sub_ff3077c6[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_ff3077c6.length) + 192 len floor32(sub_ff3077c6.length)] = mem[128 len floor32(sub_ff3077c6.length)]
    return Array(len=sub_ff3077c6.length, data=mem[128 len floor32(sub_ff3077c6.length)], mem[(32 * sub_ff3077c6.length) + floor32(sub_ff3077c6.length) + 192 len (32 * sub_ff3077c6.length) - floor32(sub_ff3077c6.length)]), 
}

function sub_e987b7d2(?) payable {
    require calldata.size - 4 >= 224
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = arg4.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + (32 * arg5.length) + 36 <= calldata.size
    mem[ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + 192] = arg5.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + 224 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    require arg7 <= 4294967296
    require arg7 + 36 <= calldata.size
    require arg7.length <= 4294967296 and arg7 + arg7.length + 36 <= calldata.size
    mem[64] = ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg7.length) + 256
    mem[ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + (32 * arg5.length) + 224] = arg7.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + (32 * arg5.length) + 256 len arg7.length] = arg7[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + (32 * arg5.length) + arg7.length + 256] = 0
    if sub_a354be19 != msg.value:
        revert with 0, 
                    32,
                    78,
                    code.data[15891 len 78],
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg7.length) + 402 len 18]
    if msg.value <= 0:
        if arg5.length <= 0:
            idx = 0
            while idx < arg5.length:
                require idx < arg5.length
                _1621 = mem[(32 * idx) + ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + 224]
                mem[ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg7.length) + 260] = mem[(32 * idx) + ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + 236 len 20]
                require ext_code.size(sub_de52e4abAddress)
                staticcall sub_de52e4abAddress.0xd35cf66b with:
                        gas gas_remaining wei
                       args address(_1621)
                mem[ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg7.length) + 256] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                81,
                                code.data[16211 len 81],
                                mem[ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg7.length) + 405 len 15]
                require idx < Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]
                if mem[ceil32(arg1.length) + ceil32(arg2.length) + (32 * idx) + 192] <= 0:
                    revert with 0, 
                                32,
                                49,
                                code.data[15842 len 49],
                                mem[ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg7.length) + 373 len 15]
                idx = idx + 1
                continue 
        else:
            if arg4.length != arg5.length:
                revert with 0, 
                            32,
                            61,
                            code.data[16024 len 61],
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg7.length) + 385 len 3]
            idx = 0
            while idx < arg5.length:
                require idx < arg5.length
                _1626 = mem[(32 * idx) + ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + 224]
                mem[ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg7.length) + 260] = mem[(32 * idx) + ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + 236 len 20]
                require ext_code.size(sub_de52e4abAddress)
                staticcall sub_de52e4abAddress.0xd35cf66b with:
                        gas gas_remaining wei
                       args address(_1626)
                mem[ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg7.length) + 256] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                81,
                                code.data[16211 len 81],
                                mem[ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg7.length) + 405 len 15]
                require idx < Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]
                if mem[ceil32(arg1.length) + ceil32(arg2.length) + (32 * idx) + 192] <= 0:
                    revert with 0, 
                                32,
                                49,
                                code.data[15842 len 49],
                                mem[ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg7.length) + 373 len 15]
                idx = idx + 1
                continue 
    else:
        call _feeRecipientAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg5.length <= 0:
            idx = 0
            while idx < arg5.length:
                require idx < arg5.length
                _1631 = mem[(32 * idx) + ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + 224]
                mem[ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg7.length) + 260] = mem[(32 * idx) + ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + 236 len 20]
                require ext_code.size(sub_de52e4abAddress)
                staticcall sub_de52e4abAddress.0xd35cf66b with:
                        gas gas_remaining wei
                       args address(_1631)
                mem[ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg7.length) + 256] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                81,
                                code.data[16211 len 81],
                                mem[ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg7.length) + 405 len 15]
                require idx < Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]
                if mem[ceil32(arg1.length) + ceil32(arg2.length) + (32 * idx) + 192] <= 0:
                    revert with 0, 
                                32,
                                49,
                                code.data[15842 len 49],
                                mem[ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg7.length) + 373 len 15]
                idx = idx + 1
                continue 
        else:
            if arg4.length != arg5.length:
                revert with 0, 
                            32,
                            61,
                            code.data[16024 len 61],
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg7.length) + 385 len 3]
            idx = 0
            while idx < arg5.length:
                require idx < arg5.length
                _1636 = mem[(32 * idx) + ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + 224]
                mem[ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg7.length) + 260] = mem[(32 * idx) + ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + 236 len 20]
                require ext_code.size(sub_de52e4abAddress)
                staticcall sub_de52e4abAddress.0xd35cf66b with:
                        gas gas_remaining wei
                       args address(_1636)
                mem[ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg7.length) + 256] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                81,
                                code.data[16211 len 81],
                                mem[ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg7.length) + 405 len 15]
                require idx < Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]
                if mem[ceil32(arg1.length) + ceil32(arg2.length) + (32 * idx) + 192] <= 0:
                    revert with 0, 
                                32,
                                49,
                                code.data[15842 len 49],
                                mem[ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg7.length) + 373 len 15]
                idx = idx + 1
                continue 
    if arg6 <= 0:
        if arg5.length <= 0:
            revert with 0, 
                        32,
                        54,
                        code.data[16085 len 54],
                        mem[ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg7.length) + 378 len 10]
    else:
        require ext_code.size(sub_de52e4abAddress)
        staticcall sub_de52e4abAddress.0x8a117c21 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 
                        32,
                        55,
                        code.data[15969 len 55],
                        mem[ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg7.length) + 379 len 9]
        if arg6 <= 0:
            if arg5.length <= 0:
                revert with 0, 
                            32,
                            54,
                            code.data[16085 len 54],
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg7.length) + 378 len 10]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg7.length) + 256 len 2970] = code.data[5386 len 2970]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg7.length) + 3290] = arg3
    mem[ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg7.length) + 3322] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg7.length) + 3226] = 128
    mem[ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg7.length) + 3354] = arg1.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg7.length) + 3386 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg7.length) + 3258] = arg1.length + 160
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg7.length) + 3386] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg7.length) + 3418 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
        if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
            create contract with 0 wei
                            code: code.data[5386 len 2970], 128, arg1.length + 160, arg3, 0, arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg7.length) + 3386 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + arg1.length + 32]
        else:
            mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg7.length) + 3418] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg7.length) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 3450 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
            create contract with 0 wei
                            code: code.data[5386 len 2970], 128, arg1.length + 160, arg3, 0, arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg7.length) + 3386 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + 64]
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg7.length) + 3386] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg7.length) + -(arg1.length % 32) + 3418 len arg1.length % 32]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg7.length) + 3258] = floor32(arg1.length) + 192
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg7.length) + 3418] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg7.length) + 3450 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
        if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
            create contract with 0 wei
                            code: code.data[5386 len 2970], 128, floor32(arg1.length) + 192, arg3, 0, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg7.length) + 3386 len floor32(arg1.length) + -ceil32(arg1.length) + 32], Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg7.length) + floor32(arg1.length) + 3450 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]
        else:
            mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg7.length) + 3450] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg7.length) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 3482 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
            create contract with 0 wei
                            code: code.data[5386 len 2970], 128, floor32(arg1.length) + 192, arg3, 0, arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg7.length) + 3386 len floor32(arg1.length) + 32], Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg7.length) + floor32(arg1.length) + 3450 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 32]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg7.length) + 256 len 7486] = code.data[8356 len 7486]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg7.length) + 7774] = address(create.new_address)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg7.length) + 7838] = arg6
    mem[ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg7.length) + 7870] = msg.sender
    mem[ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg7.length) + 7902] = sub_de52e4abAddress
    mem[ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg7.length) + 7742] = 224
    mem[ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg7.length) + 7966] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg7.length) + 7998 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)])]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg7.length) + 7806] = (32 * Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]) + 256
    mem[(32 * Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg7.length) + 7998] = arg5.length
    mem[(32 * Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg7.length) + 8030 len floor32(arg5.length)] = call.data[arg5 + 36 len floor32(arg5.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg7.length) + 7934] = (32 * arg5.length) + (32 * Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]) + 288
    mem[(64 * arg5.length) + (32 * Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + ceil32(arg7.length) + 8030] = arg7.length
    mem[(64 * arg5.length) + (32 * Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + ceil32(arg7.length) + 8062 len ceil32(arg7.length)] = arg7[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + (32 * arg5.length) + arg7.length + 256 len ceil32(arg7.length) - arg7.length]
    if not arg7.length % 32:
        create contract with 0 wei
                        code: code.data[8356 len 7486], Array(len=(32 * arg5.length) + (32 * Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]) + 288, data=Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg7.length) + 7998 len (32 * arg5.length) + (32 * Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]) + 32], arg7.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + (64 * arg5.length) + ceil32(arg7.length) + (32 * Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]) + 8062 len arg7.length]), address(create.new_address), (32 * Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]) + 256, arg6, msg.sender, sub_de52e4abAddress
    else:
        mem[floor32(arg7.length) + (64 * arg5.length) + (32 * Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + ceil32(arg7.length) + 8062] = mem[floor32(arg7.length) + (64 * arg5.length) + (32 * Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + ceil32(arg7.length) + -(arg7.length % 32) + 8094 len arg7.length % 32]
        create contract with 0 wei
                        code: code.data[8356 len 7486], Array(len=(32 * arg5.length) + (32 * Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]) + 288, data=Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg7.length) + 7998 len (32 * arg5.length) + (32 * Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]) + 32], arg7.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg4.length) + (64 * arg5.length) + ceil32(arg7.length) + (32 * Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]) + 8062 len floor32(arg7.length) + 32]), address(create.new_address), (32 * Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]) + 256, arg6, msg.sender, sub_de52e4abAddress
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    sub_ff3077c6.length++
    sub_ff3077c6[sub_ff3077c6.length].field_0 = address(create.new_address)
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xa9059cbb with:
         gas gas_remaining wei
        args address(create.new_address), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x3f8efc9b: address(create.new_address), address(create.new_address)
    return address(create.new_address)
}



}
