contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
  stop
}

function sub_ba5aced2(?) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg4.length
    mem[(32 * arg1.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + (32 * arg1.length) + 160 len 96] = code.data[3215 len 96]
    require 1 < arg1.length
    require ext_code.size(mem[172 len 20])
    call mem[172 len 20].0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg4.length) + (32 * arg1.length) + 484 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
       value msg.value wei
         gas gas_remaining wei
        args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg4.length) + (32 * arg1.length) + floor32(arg1.length) + 484 len (32 * arg1.length) - floor32(arg1.length)]), arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], code.data[3247 len 32], eth.balance(arg5)
}

function sub_f5fe6fa4(?) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg4.length
    mem[(32 * arg1.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + (32 * arg1.length) + 160 len 96] = code.data[3215 len 96]
    require 1 < arg1.length
    require ext_code.size(mem[172 len 20])
    call mem[172 len 20].0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg4.length) + (32 * arg1.length) + 612 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).quickConvertPrioritized(address[] arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) with:
       value msg.value wei
         gas gas_remaining wei
        args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg4.length) + (32 * arg1.length) + floor32(arg1.length) + 612 len (32 * arg1.length) - floor32(arg1.length)]), arg2, arg3, arg6, arg7 << 248, arg8, arg9
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], code.data[3247 len 32], eth.balance(arg5)
}

function sub_8c1e07f7(?) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128 len 64] = call.data[36 len 64]
    mem[(32 * arg1.length) + 224 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + (32 * arg1.length) + 224 len 128] = code.data[3215 len 128]
    require 1 < arg3.length
    require ext_code.size(mem[(32 * arg1.length) + 268 len 20])
    call mem[(32 * arg1.length) + 268 len 20].0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0 < arg3.length
    require 1 < arg3.length
    require 0 < arg3.length
    if mem[(32 * arg1.length) + 236 len 20] != mem[(32 * arg1.length) + 268 len 20]:
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).getConnectorBalance(address arg1) with:
             gas gas_remaining wei
            args mem[(32 * arg1.length) + 236 len 20]
    else:
        require ext_code.size(mem[(32 * arg1.length) + 236 len 20])
        call mem[(32 * arg1.length) + 236 len 20].0x18160ddd with:
             gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 1 < arg1.length
    require ext_code.size(mem[172 len 20])
    call mem[172 len 20].0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg3.length) + (32 * arg1.length) + 612 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
       value call.data[68] wei
         gas gas_remaining wei
        args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg3.length) + (32 * arg1.length) + floor32(arg1.length) + 612 len (32 * arg1.length) - floor32(arg1.length)]), call.data[68], 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg3.length) + (32 * arg1.length) + 612 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
       value call.data[36] wei
         gas gas_remaining wei
        args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg3.length) + (32 * arg1.length) + floor32(arg1.length) + 612 len (32 * arg1.length) - floor32(arg1.length)]), call.data[36], arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(mem[(32 * arg1.length) + 236 len 20])
    call mem[(32 * arg1.length) + 236 len 20].approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(mem[(32 * arg1.length) + 236 len 20])
    call mem[(32 * arg1.length) + 236 len 20].approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg3.length) + (32 * arg1.length) + 612 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + (32 * arg1.length) + floor32(arg3.length) + 612 len (32 * arg3.length) - floor32(arg3.length)]), ext_call.return_data[0], 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], ext_call.return_data[0], 0, ext_call.return_data[0]
}



}
