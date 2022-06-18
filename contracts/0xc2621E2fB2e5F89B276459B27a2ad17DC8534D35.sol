contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
  stop
}

function sub_c182da00(?) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = code.data[3198 len 32]
    mem[(32 * arg1.length) + 160] = code.data[3198 len 32]
    require 1 < arg1.length
    require ext_code.size(mem[172 len 20])
    call mem[172 len 20].0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg1.length) + 452 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).'"t%d' with:
       value msg.value wei
         gas gas_remaining wei
        args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 452 len (32 * arg1.length) - floor32(arg1.length)]), arg2, arg3, arg4, arg5 << 248, arg6, arg7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_4b237586(?) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = code.data[3198 len 32]
    mem[(32 * arg1.length) + 160] = code.data[3198 len 32]
    require 1 < arg1.length
    require ext_code.size(mem[172 len 20])
    call mem[172 len 20].0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg1.length) + 324 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
       value msg.value wei
         gas gas_remaining wei
        args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 324 len (32 * arg1.length) - floor32(arg1.length)]), arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_323c06a0(?) payable {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg4.length
    mem[(32 * arg2.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + (32 * arg2.length) + 160 len 96] = code.data[3198 len 96]
    require 1 < arg2.length
    require ext_code.size(mem[172 len 20])
    call mem[172 len 20].0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg4.length) + (32 * arg2.length) + 484 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
       value arg3 wei
         gas gas_remaining wei
        args Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg4.length) + (32 * arg2.length) + floor32(arg2.length) + 484 len (32 * arg2.length) - floor32(arg2.length)]), arg3, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0 < arg4.length
    require ext_code.size(arg1)
    call arg1.getPayAmount(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, mem[(32 * arg2.length) + 172 len 20], arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
    call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit() with:
       value ext_call.return_data[0] wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
    call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.buyAllAmount(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
         gas gas_remaining wei
        args mem[(32 * arg2.length) + 172 len 20], arg5, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 1 < arg4.length
    require ext_code.size(mem[(32 * arg2.length) + 204 len 20])
    call mem[(32 * arg2.length) + 204 len 20].0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(mem[(32 * arg2.length) + 172 len 20])
    call mem[(32 * arg2.length) + 172 len 20].approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(mem[(32 * arg2.length) + 172 len 20])
    call mem[(32 * arg2.length) + 172 len 20].approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg4.length) + (32 * arg2.length) + 484 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args Array(len=arg4.length, data=call.data[arg4 + 36 len floor32(arg4.length)], mem[(32 * arg4.length) + (32 * arg2.length) + floor32(arg4.length) + 484 len (32 * arg4.length) - floor32(arg4.length)]), arg5, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], ext_call.return_data[0], 0
}



}
