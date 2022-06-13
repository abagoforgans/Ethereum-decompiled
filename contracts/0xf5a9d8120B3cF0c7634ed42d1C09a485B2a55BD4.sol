contract main {




// =====================  Runtime code  =====================


array of struct stor0;
uint256 stor3;
uint256 defaultAmount;

function defaultAmount() {
    return defaultAmount
}

function _fallback() payable {
  stop
}

function setGasLimit(uint256 arg1) {
    require msg.sender == 0x54c676cddc496ecbd20511a5c143cac2cbca6b3f
    stor3 = arg1
}

function getGasPrice() {
    require ext_code.size(0x607a5c47978e2eb6d59c6c6f51bc0bf411f4b85a)
    call 0x607a5c47978e2eb6d59c6c6f51bc0bf411f4b85a.gasPrice() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_2a1fa30d(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require 0 < arg1.length
    require 1 < arg1.length
    require ext_code.size(0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee)
    call 0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee.getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(mem[128]), address(mem[160]), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    mem[(32 * arg1.length) + 260 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
    call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0xcf93ebe3 with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 260 len (32 * arg1.length) - floor32(arg1.length)]), address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_e1089425(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require 0 < arg1.length
    require ext_code.size(mem[140 len 20])
    call mem[140 len 20].0x313ce567 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 10^(-ext_call.return_data[0] + 18)
    mem[(32 * arg1.length) + 164] = arg2
    mem[(32 * arg1.length) + 196] = arg3 / 10^(-ext_call.return_data[0] + 18)
    mem[(32 * arg1.length) + 132] = 96
    mem[(32 * arg1.length) + 228] = arg1.length
    mem[(32 * arg1.length) + 260 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
    call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0x4ed85961 with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 260 len (32 * arg1.length) - floor32(arg1.length)]), address(arg2), arg3 / 10^(-ext_call.return_data[0] + 18)
    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 2 < arg1.length
    require 4 < arg1.length
    require ext_code.size(0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee)
    call 0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee.getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(mem[192]), address(mem[256]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0]
    return (10^18 * arg3 / ext_call.return_data[0])
}

function sub_7f520499(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require 4 < arg1.length
    require ext_code.size(mem[268 len 20])
    call mem[268 len 20].0x313ce567 with:
         gas gas_remaining wei
    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0 < arg1.length
    require 1 < arg1.length
    require ext_code.size(0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee)
    call 0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee.getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(mem[128]), address(mem[160]), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    mem[(32 * arg1.length) + 164] = arg2
    mem[(32 * arg1.length) + 196] = ext_call.return_data[0]
    mem[(32 * arg1.length) + 132] = 96
    mem[(32 * arg1.length) + 228] = arg1.length
    mem[(32 * arg1.length) + 260 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
    call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0xcf93ebe3 with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 260 len (32 * arg1.length) - floor32(arg1.length)]), address(arg2), ext_call.return_data[0]
    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 4 < arg1.length
    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
    call 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(mem[256]), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0]
    return ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18), 10^18 * arg3 / ext_call.return_data[0]
}

function sub_03a69b66(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require 0 < arg1.length
    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
    call 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(mem[128]), arg3
    mem[(32 * arg1.length) + 128 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require 0 < arg1.length
    require ext_code.size(mem[140 len 20])
    call mem[140 len 20].0x313ce567 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 10^(-ext_call.return_data[0] + 18)
    mem[(32 * arg1.length) + 164] = arg2
    mem[(32 * arg1.length) + 196] = ext_call.return_data[0] / 10^(-ext_call.return_data[0] + 18)
    mem[(32 * arg1.length) + 132] = 96
    mem[(32 * arg1.length) + 228] = arg1.length
    mem[(32 * arg1.length) + 260 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
    call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0x4ed85961 with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 260 len (32 * arg1.length) - floor32(arg1.length)]), address(arg2), ext_call.return_data[0] / 10^(-ext_call.return_data[0] + 18)
    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 2 < arg1.length
    require 4 < arg1.length
    require ext_code.size(0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee)
    call 0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee.getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(mem[192]), address(mem[256]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0]
    return 10^18 * ext_call.return_data[0] / ext_call.return_data[0], ext_call.return_data[0]
}

function sub_7f899d0b(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require 4 < arg1.length
    require ext_code.size(mem[268 len 20])
    call mem[268 len 20].0x313ce567 with:
         gas gas_remaining wei
    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0 < arg1.length
    require 1 < arg1.length
    require ext_code.size(0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee)
    call 0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee.getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(mem[128]), address(mem[160]), 2 * defaultAmount
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    mem[(32 * arg1.length) + 164] = arg2
    mem[(32 * arg1.length) + 196] = ext_call.return_data[0]
    mem[(32 * arg1.length) + 132] = 96
    mem[(32 * arg1.length) + 228] = arg1.length
    mem[(32 * arg1.length) + 260 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
    call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0xcf93ebe3 with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 260 len (32 * arg1.length) - floor32(arg1.length)]), address(arg2), ext_call.return_data[0]
    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 4 < arg1.length
    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
    call 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(mem[256]), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0]
    require (4 * arg3 * arg4) - (2 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * arg4)
    return ((10^18 * arg3 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) - (10^18 * arg4 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) / (4 * arg3 * arg4) - (2 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * arg4))
}

function sub_de0192db(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require 0 < arg1.length
    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
    call 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(mem[128]), 2 * defaultAmount
    mem[(32 * arg1.length) + 128 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require 0 < arg1.length
    require ext_code.size(mem[140 len 20])
    call mem[140 len 20].0x313ce567 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 10^(-ext_call.return_data[0] + 18)
    mem[(32 * arg1.length) + 164] = arg2
    mem[(32 * arg1.length) + 196] = ext_call.return_data[0] / 10^(-ext_call.return_data[0] + 18)
    mem[(32 * arg1.length) + 132] = 96
    mem[(32 * arg1.length) + 228] = arg1.length
    mem[(32 * arg1.length) + 260 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
    call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0x4ed85961 with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 260 len (32 * arg1.length) - floor32(arg1.length)]), address(arg2), ext_call.return_data[0] / 10^(-ext_call.return_data[0] + 18)
    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 2 < arg1.length
    require 4 < arg1.length
    require ext_code.size(0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee)
    call 0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee.getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(mem[192]), address(mem[256]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0]
    require (2 * arg3 * arg4) - (2 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg4)
    return ((10^18 * arg4 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - (10^18 * arg3 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) / (2 * arg3 * arg4) - (2 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg4))
}

function sub_3755ca02(?) {
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require 0 < arg3.length
    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
    call 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(mem[128]), arg1
    mem[(32 * arg3.length) + 128 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require 0 < arg3.length
    require ext_code.size(mem[140 len 20])
    call mem[140 len 20].0x313ce567 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 10^(-ext_call.return_data[0] + 18)
    mem[(32 * arg3.length) + 164] = arg4
    mem[(32 * arg3.length) + 196] = ext_call.return_data[0] / 10^(-ext_call.return_data[0] + 18)
    mem[(32 * arg3.length) + 132] = 96
    mem[(32 * arg3.length) + 228] = arg3.length
    mem[(32 * arg3.length) + 260 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
    call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0x4ed85961 with:
         gas gas_remaining wei
        args Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + floor32(arg3.length) + 260 len (32 * arg3.length) - floor32(arg3.length)]), address(arg4), ext_call.return_data[0] / 10^(-ext_call.return_data[0] + 18)
    mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 2 < arg3.length
    require 4 < arg3.length
    require ext_code.size(0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee)
    call 0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee.getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(mem[192]), address(mem[256]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0]
    if ext_call.return_data[0] <= 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
        return 0, 0, 1
    require arg2
    require ext_code.size(0x607a5c47978e2eb6d59c6c6f51bc0bf411f4b85a)
    call 0x607a5c47978e2eb6d59c6c6f51bc0bf411f4b85a.gasPrice() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x607a5c47978e2eb6d59c6c6f51bc0bf411f4b85a)
    call 0x607a5c47978e2eb6d59c6c6f51bc0bf411f4b85a.gasPrice() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if (10^18 * ext_call.return_data[0]) - (10^18 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) / arg2 <= stor3 * ext_call.return_data[0]:
        return 0, 
               (10^18 * ext_call.return_data[0]) - (10^18 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) / arg2,
               ext_call.return_data[0]
    return arg1, 
           (10^18 * ext_call.return_data[0]) - (10^18 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) / arg2,
           ext_call.return_data[0]
}

function sub_03b6d838(?) {
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require 4 < arg3.length
    require ext_code.size(mem[268 len 20])
    call mem[268 len 20].0x313ce567 with:
         gas gas_remaining wei
    mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 4 < arg3.length
    require ext_code.size(mem[268 len 20])
    call mem[268 len 20].0x313ce567 with:
         gas gas_remaining wei
    mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0 < arg3.length
    require 1 < arg3.length
    require ext_code.size(0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee)
    call 0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee.getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(mem[128]), address(mem[160]), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    mem[(32 * arg3.length) + 164] = arg4
    mem[(32 * arg3.length) + 196] = ext_call.return_data[0]
    mem[(32 * arg3.length) + 132] = 96
    mem[(32 * arg3.length) + 228] = arg3.length
    mem[(32 * arg3.length) + 260 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
    call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0xcf93ebe3 with:
         gas gas_remaining wei
        args Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + floor32(arg3.length) + 260 len (32 * arg3.length) - floor32(arg3.length)]), address(arg4), ext_call.return_data[0]
    mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 4 < arg3.length
    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
    call 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(mem[256]), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0]
    if 10^18 * arg1 / ext_call.return_data[0] >= ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18):
        return 0, 0, 1
    require arg2
    require ext_code.size(0x607a5c47978e2eb6d59c6c6f51bc0bf411f4b85a)
    call 0x607a5c47978e2eb6d59c6c6f51bc0bf411f4b85a.gasPrice() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x607a5c47978e2eb6d59c6c6f51bc0bf411f4b85a)
    call 0x607a5c47978e2eb6d59c6c6f51bc0bf411f4b85a.gasPrice() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if (10^18 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) - (10^18 * 10^18 * arg1 / ext_call.return_data[0]) / arg2 <= stor3 * ext_call.return_data[0]:
        return 0, 
               (10^18 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) - (10^18 * 10^18 * arg1 / ext_call.return_data[0]) / arg2,
               ext_call.return_data[0]
    return arg1, 
           (10^18 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) - (10^18 * 10^18 * arg1 / ext_call.return_data[0]) / arg2,
           ext_call.return_data[0]
}

function sub_08a15c9a(?) {
    mem[96] = arg3
    mem[128] = arg2
    mem[160] = 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c
    mem[192] = 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c
    mem[224] = 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315
    stor0.length = 5
    s = 0
    idx = 96
    while 256 > idx:
        stor0[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 5
    while stor0.length > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not stor0.length:
        require 0 < stor0.length
        require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
        call 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(mem[288]), defaultAmount
        mem[(32 * stor0.length) + 288 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require 0 < stor0.length
        require ext_code.size(mem[300 len 20])
        call mem[300 len 20].0x313ce567 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 10^(-ext_call.return_data[0] + 18)
        mem[(32 * stor0.length) + 324] = arg1
        mem[(32 * stor0.length) + 356] = ext_call.return_data[0] / 10^(-ext_call.return_data[0] + 18)
        mem[(32 * stor0.length) + 292] = 96
        mem[(32 * stor0.length) + 388] = stor0.length
        mem[(32 * stor0.length) + 420 len floor32(stor0.length)] = mem[288 len floor32(stor0.length)]
        require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
        call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0x4ed85961 with:
             gas gas_remaining wei
            args Array(len=stor0.length, data=mem[288 len floor32(stor0.length)], mem[(32 * stor0.length) + floor32(stor0.length) + 420 len (32 * stor0.length) - floor32(stor0.length)]), address(arg1), ext_call.return_data[0] / 10^(-ext_call.return_data[0] + 18)
        mem[(32 * stor0.length) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 2 < stor0.length
        _355 = mem[352]
        require 4 < stor0.length
        _357 = mem[416]
        mem[(32 * stor0.length) + 324] = mem[428 len 20]
        mem[(32 * stor0.length) + 356] = ext_call.return_data[0]
        require ext_code.size(0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee)
        call 0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee.getReturn(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(_355), address(_357), ext_call.return_data[0]
        mem[(32 * stor0.length) + 288 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_call.return_data[0]
        if ext_call.return_data[0] <= 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
            return 0, 0, 1
        if not stor0.length:
            require 0 < stor0.length
            require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
            call 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(ext_call.return_data[32]), 2 * defaultAmount
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require 0 < stor0.length
            require ext_code.size(address(ext_call.return_data[32]))
            call address(ext_call.return_data[32]).0x313ce567 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 10^(-ext_call.return_data[0] + 18)
            mem[(64 * stor0.length) + 320] = 0x4ed8596100000000000000000000000000000000000000000000000000000000
            mem[(64 * stor0.length) + 356] = arg1
            mem[(64 * stor0.length) + 388] = ext_call.return_data[0] / 10^(-ext_call.return_data[0] + 18)
            mem[(64 * stor0.length) + 324] = 96
            mem[(64 * stor0.length) + 420] = stor0.length
            mem[(64 * stor0.length) + 452 len floor32(stor0.length)] = mem[(32 * stor0.length) + 320 len floor32(stor0.length)]
            require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
            call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0x4ed85961 with:
                 gas gas_remaining wei
                args mem[(64 * stor0.length) + 324 len (161 * stor0.length) + 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 2 < stor0.length
            require 4 < stor0.length
            _461 = mem[(32 * stor0.length) + 448]
            mem[(64 * stor0.length) + 356] = mem[(32 * stor0.length) + 460 len 20]
            mem[(64 * stor0.length) + 388] = ext_call.return_data[0]
            require ext_code.size(0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee)
            call 0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee.getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(stor0.length.field_32), address(_461), ext_call.return_data[0]
            mem[(64 * stor0.length) + 320 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_call.return_data[0]
            require (2 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) - (2 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0])
            if (10^18 * ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - (10^18 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) / (2 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) - (2 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) <= 0:
                return 0, 10^18 * ext_call.return_data[0] / ext_call.return_data[0], ext_call.return_data[0]
            if not stor0.length:
                require 0 < stor0.length
                require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                call 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(ext_call.return_data[32]), (10^18 * ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - (10^18 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) / (2 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) - (2 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require 0 < stor0.length
                require ext_code.size(address(ext_call.return_data[32]))
                call address(ext_call.return_data[32]).0x313ce567 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 10^(-ext_call.return_data[0] + 18)
                mem[(98 * stor0.length) + 388] = arg1
                mem[(98 * stor0.length) + 420] = ext_call.return_data[0] / 10^(-ext_call.return_data[0] + 18)
                mem[(98 * stor0.length) + 356] = 96
                mem[(98 * stor0.length) + 452] = stor0.length
                mem[(98 * stor0.length) + 484 len floor32(stor0.length)] = mem[(64 * stor0.length) + 352 len floor32(stor0.length)]
                require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
                call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0x4ed85961 with:
                     gas gas_remaining wei
                    args Array(len=stor0.length, data=mem[(64 * stor0.length) + 352 len floor32(stor0.length)], mem[(98 * stor0.length) + floor32(stor0.length) + 484 len (33 * stor0.length) - floor32(stor0.length)]), address(arg1), ext_call.return_data[0] / 10^(-ext_call.return_data[0] + 18)
                mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 2 < stor0.length
                require 4 < stor0.length
                require ext_code.size(0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee)
                call 0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(stor0.length.field_32), address(mem[(64 * stor0.length) + 480]), ext_call.return_data[0]
            else:
                mem[(64 * stor0.length) + 352] = address(stor0.field_0)
                idx = (64 * stor0.length) + 352
                s = 0
                while (98 * stor0.length) + 320 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require 0 < stor0.length
                require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                call 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(mem[(64 * stor0.length) + 352]), (10^18 * ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - (10^18 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) / (2 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) - (2 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0])
                mem[(98 * stor0.length) + 352 len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require 0 < stor0.length
                require ext_code.size(mem[(64 * stor0.length) + 364 len 20])
                call mem[(64 * stor0.length) + 364 len 20].0x313ce567 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 10^(-ext_call.return_data[0] + 18)
                mem[(98 * stor0.length) + 388] = arg1
                mem[(98 * stor0.length) + 420] = ext_call.return_data[0] / 10^(-ext_call.return_data[0] + 18)
                mem[(98 * stor0.length) + 356] = 96
                mem[(98 * stor0.length) + 452] = stor0.length
                mem[(98 * stor0.length) + 484 len floor32(stor0.length)] = mem[(64 * stor0.length) + 352 len floor32(stor0.length)]
                require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
                call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0x4ed85961 with:
                     gas gas_remaining wei
                    args Array(len=stor0.length, data=mem[(64 * stor0.length) + 352 len floor32(stor0.length)], mem[(98 * stor0.length) + floor32(stor0.length) + 484 len (33 * stor0.length) - floor32(stor0.length)]), address(arg1), ext_call.return_data[0] / 10^(-ext_call.return_data[0] + 18)
                mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 2 < stor0.length
                require 4 < stor0.length
                _1033 = mem[(64 * stor0.length) + 480]
                mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 428 len 20]
                require ext_code.size(0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee)
                call 0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args mem[(98 * stor0.length) + 356], address(_1033), ext_call.return_data[0]
        else:
            mem[(32 * stor0.length) + 320] = address(stor0.field_0)
            idx = (32 * stor0.length) + 320
            s = 0
            while (64 * stor0.length) + 288 > idx:
                mem[idx + 32] = stor0[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require 0 < stor0.length
            mem[(64 * stor0.length) + 356] = mem[(32 * stor0.length) + 332 len 20]
            mem[(64 * stor0.length) + 388] = 2 * defaultAmount
            require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
            call 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(mem[(32 * stor0.length) + 320]), 2 * defaultAmount
            mem[(64 * stor0.length) + 320 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require 0 < stor0.length
            require ext_code.size(mem[(32 * stor0.length) + 332 len 20])
            call mem[(32 * stor0.length) + 332 len 20].0x313ce567 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 10^(-ext_call.return_data[0] + 18)
            mem[(64 * stor0.length) + 320] = 0x4ed8596100000000000000000000000000000000000000000000000000000000
            mem[(64 * stor0.length) + 356] = arg1
            mem[(64 * stor0.length) + 388] = ext_call.return_data[0] / 10^(-ext_call.return_data[0] + 18)
            mem[(64 * stor0.length) + 324] = 96
            mem[(64 * stor0.length) + 420] = stor0.length
            mem[(64 * stor0.length) + 452 len floor32(stor0.length)] = mem[(32 * stor0.length) + 320 len floor32(stor0.length)]
            require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
            call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0x4ed85961 with:
                 gas gas_remaining wei
                args mem[(64 * stor0.length) + 324 len (161 * stor0.length) + 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 2 < stor0.length
            require 4 < stor0.length
            _853 = mem[(32 * stor0.length) + 448]
            mem[(64 * stor0.length) + 324] = mem[(32 * stor0.length) + 396 len 20]
            mem[(64 * stor0.length) + 356] = address(_853)
            mem[(64 * stor0.length) + 388] = ext_call.return_data[0]
            require ext_code.size(0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee)
            call 0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee.getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args mem[(64 * stor0.length) + 324], address(_853), ext_call.return_data[0]
            mem[(64 * stor0.length) + 320 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_call.return_data[0]
            require (2 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) - (2 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0])
            if (10^18 * ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - (10^18 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) / (2 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) - (2 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) <= 0:
                return 0, 10^18 * ext_call.return_data[0] / ext_call.return_data[0], ext_call.return_data[0]
            if not stor0.length:
                require 0 < stor0.length
                require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                call 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(ext_call.return_data[32]), (10^18 * ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - (10^18 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) / (2 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) - (2 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require 0 < stor0.length
                require ext_code.size(ext_call.return_data[44 len 20])
                call ext_call.return_data[44 len 20].0x313ce567 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 10^(-ext_call.return_data[0] + 18)
                mem[(98 * stor0.length) + 388] = arg1
                mem[(98 * stor0.length) + 420] = ext_call.return_data[0] / 10^(-ext_call.return_data[0] + 18)
                mem[(98 * stor0.length) + 356] = 96
                mem[(98 * stor0.length) + 452] = stor0.length
                mem[(98 * stor0.length) + 484 len floor32(stor0.length)] = mem[(64 * stor0.length) + 352 len floor32(stor0.length)]
                require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
                call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0x4ed85961 with:
                     gas gas_remaining wei
                    args Array(len=stor0.length, data=mem[(64 * stor0.length) + 352 len floor32(stor0.length)], mem[(98 * stor0.length) + floor32(stor0.length) + 484 len (33 * stor0.length) - floor32(stor0.length)]), address(arg1), ext_call.return_data[0] / 10^(-ext_call.return_data[0] + 18)
                mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 2 < stor0.length
                require 4 < stor0.length
                require ext_code.size(0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee)
                call 0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(stor0.length), address(mem[(64 * stor0.length) + 480]), ext_call.return_data[0]
            else:
                mem[(64 * stor0.length) + 352] = address(stor0.field_0)
                idx = (64 * stor0.length) + 352
                s = 0
                while (98 * stor0.length) + 320 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require 0 < stor0.length
                require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                call 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(mem[(64 * stor0.length) + 352]), (10^18 * ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - (10^18 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) / (2 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) - (2 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0])
                mem[(98 * stor0.length) + 352 len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require 0 < stor0.length
                require ext_code.size(mem[(64 * stor0.length) + 364 len 20])
                call mem[(64 * stor0.length) + 364 len 20].0x313ce567 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 10^(-ext_call.return_data[0] + 18)
                mem[(98 * stor0.length) + 388] = arg1
                mem[(98 * stor0.length) + 420] = ext_call.return_data[0] / 10^(-ext_call.return_data[0] + 18)
                mem[(98 * stor0.length) + 356] = 96
                mem[(98 * stor0.length) + 452] = stor0.length
                mem[(98 * stor0.length) + 484 len floor32(stor0.length)] = mem[(64 * stor0.length) + 352 len floor32(stor0.length)]
                require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
                call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0x4ed85961 with:
                     gas gas_remaining wei
                    args Array(len=stor0.length, data=mem[(64 * stor0.length) + 352 len floor32(stor0.length)], mem[(98 * stor0.length) + floor32(stor0.length) + 484 len (33 * stor0.length) - floor32(stor0.length)]), address(arg1), ext_call.return_data[0] / 10^(-ext_call.return_data[0] + 18)
                mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 2 < stor0.length
                require 4 < stor0.length
                _1359 = mem[(64 * stor0.length) + 480]
                mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 428 len 20]
                require ext_code.size(0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee)
                call 0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args mem[(98 * stor0.length) + 356], address(_1359), ext_call.return_data[0]
    else:
        mem[288] = address(stor0.field_0)
        idx = 288
        s = 0
        while (32 * stor0.length) + 256 > idx:
            mem[idx + 32] = stor0[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require 0 < stor0.length
        require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
        call 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(mem[288]), defaultAmount
        mem[(32 * stor0.length) + 288 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require 0 < stor0.length
        require ext_code.size(mem[300 len 20])
        call mem[300 len 20].0x313ce567 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 10^(-ext_call.return_data[0] + 18)
        mem[(32 * stor0.length) + 324] = arg1
        mem[(32 * stor0.length) + 356] = ext_call.return_data[0] / 10^(-ext_call.return_data[0] + 18)
        mem[(32 * stor0.length) + 292] = 96
        mem[(32 * stor0.length) + 388] = stor0.length
        mem[(32 * stor0.length) + 420 len floor32(stor0.length)] = mem[288 len floor32(stor0.length)]
        require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
        call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0x4ed85961 with:
             gas gas_remaining wei
            args Array(len=stor0.length, data=mem[288 len floor32(stor0.length)], mem[(32 * stor0.length) + floor32(stor0.length) + 420 len (32 * stor0.length) - floor32(stor0.length)]), address(arg1), ext_call.return_data[0] / 10^(-ext_call.return_data[0] + 18)
        mem[(32 * stor0.length) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 2 < stor0.length
        require 4 < stor0.length
        _648 = mem[416]
        mem[(32 * stor0.length) + 292] = mem[364 len 20]
        mem[(32 * stor0.length) + 324] = address(_648)
        mem[(32 * stor0.length) + 356] = ext_call.return_data[0]
        require ext_code.size(0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee)
        call 0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee.getReturn(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args mem[(32 * stor0.length) + 292], address(_648), ext_call.return_data[0]
        mem[(32 * stor0.length) + 288 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_call.return_data[0]
        if ext_call.return_data[0] <= 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
            return 0, 0, 1
        if not stor0.length:
            require 0 < stor0.length
            require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
            call 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(ext_call.return_data[32]), 2 * defaultAmount
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require 0 < stor0.length
            require ext_code.size(ext_call.return_data[44 len 20])
            call ext_call.return_data[44 len 20].0x313ce567 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 10^(-ext_call.return_data[0] + 18)
            mem[(64 * stor0.length) + 320] = 0x4ed8596100000000000000000000000000000000000000000000000000000000
            mem[(64 * stor0.length) + 356] = arg1
            mem[(64 * stor0.length) + 388] = ext_call.return_data[0] / 10^(-ext_call.return_data[0] + 18)
            mem[(64 * stor0.length) + 324] = 96
            mem[(64 * stor0.length) + 420] = stor0.length
            mem[(64 * stor0.length) + 452 len floor32(stor0.length)] = mem[(32 * stor0.length) + 320 len floor32(stor0.length)]
            require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
            call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0x4ed85961 with:
                 gas gas_remaining wei
                args mem[(64 * stor0.length) + 324 len (161 * stor0.length) + 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 2 < stor0.length
            require 4 < stor0.length
            _856 = mem[(32 * stor0.length) + 448]
            mem[(64 * stor0.length) + 356] = mem[(32 * stor0.length) + 460 len 20]
            mem[(64 * stor0.length) + 388] = ext_call.return_data[0]
            require ext_code.size(0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee)
            call 0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee.getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(stor0.length), address(_856), ext_call.return_data[0]
            mem[(64 * stor0.length) + 320 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_call.return_data[0]
            require (2 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) - (2 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0])
            if (10^18 * ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - (10^18 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) / (2 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) - (2 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) <= 0:
                return 0, 10^18 * ext_call.return_data[0] / ext_call.return_data[0], ext_call.return_data[0]
            if not stor0.length:
                require 0 < stor0.length
                require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                call 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(ext_call.return_data[32]), (10^18 * ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - (10^18 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) / (2 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) - (2 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require 0 < stor0.length
                require ext_code.size(ext_call.return_data[44 len 20])
                call ext_call.return_data[44 len 20].0x313ce567 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 10^(-ext_call.return_data[0] + 18)
                mem[(98 * stor0.length) + 388] = arg1
                mem[(98 * stor0.length) + 420] = ext_call.return_data[0] / 10^(-ext_call.return_data[0] + 18)
                mem[(98 * stor0.length) + 356] = 96
                mem[(98 * stor0.length) + 452] = stor0.length
                mem[(98 * stor0.length) + 484 len floor32(stor0.length)] = mem[(64 * stor0.length) + 352 len floor32(stor0.length)]
                require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
                call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0x4ed85961 with:
                     gas gas_remaining wei
                    args Array(len=stor0.length, data=mem[(64 * stor0.length) + 352 len floor32(stor0.length)], mem[(98 * stor0.length) + floor32(stor0.length) + 484 len (33 * stor0.length) - floor32(stor0.length)]), address(arg1), ext_call.return_data[0] / 10^(-ext_call.return_data[0] + 18)
                mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 2 < stor0.length
                require 4 < stor0.length
                require ext_code.size(0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee)
                call 0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(stor0.length), address(mem[(64 * stor0.length) + 480]), ext_call.return_data[0]
            else:
                mem[(64 * stor0.length) + 352] = address(stor0.field_0)
                idx = (64 * stor0.length) + 352
                s = 0
                while (98 * stor0.length) + 320 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require 0 < stor0.length
                require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                call 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(mem[(64 * stor0.length) + 352]), (10^18 * ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - (10^18 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) / (2 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) - (2 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0])
                mem[(98 * stor0.length) + 352 len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require 0 < stor0.length
                require ext_code.size(mem[(64 * stor0.length) + 364 len 20])
                call mem[(64 * stor0.length) + 364 len 20].0x313ce567 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 10^(-ext_call.return_data[0] + 18)
                mem[(98 * stor0.length) + 388] = arg1
                mem[(98 * stor0.length) + 420] = ext_call.return_data[0] / 10^(-ext_call.return_data[0] + 18)
                mem[(98 * stor0.length) + 356] = 96
                mem[(98 * stor0.length) + 452] = stor0.length
                mem[(98 * stor0.length) + 484 len floor32(stor0.length)] = mem[(64 * stor0.length) + 352 len floor32(stor0.length)]
                require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
                call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0x4ed85961 with:
                     gas gas_remaining wei
                    args Array(len=stor0.length, data=mem[(64 * stor0.length) + 352 len floor32(stor0.length)], mem[(98 * stor0.length) + floor32(stor0.length) + 484 len (33 * stor0.length) - floor32(stor0.length)]), address(arg1), ext_call.return_data[0] / 10^(-ext_call.return_data[0] + 18)
                mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 2 < stor0.length
                require 4 < stor0.length
                _1362 = mem[(64 * stor0.length) + 480]
                mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 428 len 20]
                require ext_code.size(0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee)
                call 0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args mem[(98 * stor0.length) + 356], address(_1362), ext_call.return_data[0]
        else:
            mem[(32 * stor0.length) + 320] = address(stor0.field_0)
            idx = (32 * stor0.length) + 320
            s = 0
            while (64 * stor0.length) + 288 > idx:
                mem[idx + 32] = stor0[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require 0 < stor0.length
            mem[(64 * stor0.length) + 356] = mem[(32 * stor0.length) + 332 len 20]
            mem[(64 * stor0.length) + 388] = 2 * defaultAmount
            require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
            call 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(mem[(32 * stor0.length) + 320]), 2 * defaultAmount
            mem[(64 * stor0.length) + 320 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require 0 < stor0.length
            require ext_code.size(mem[(32 * stor0.length) + 332 len 20])
            call mem[(32 * stor0.length) + 332 len 20].0x313ce567 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 10^(-ext_call.return_data[0] + 18)
            mem[(64 * stor0.length) + 320] = 0x4ed8596100000000000000000000000000000000000000000000000000000000
            mem[(64 * stor0.length) + 356] = arg1
            mem[(64 * stor0.length) + 388] = ext_call.return_data[0] / 10^(-ext_call.return_data[0] + 18)
            mem[(64 * stor0.length) + 324] = 96
            mem[(64 * stor0.length) + 420] = stor0.length
            mem[(64 * stor0.length) + 452 len floor32(stor0.length)] = mem[(32 * stor0.length) + 320 len floor32(stor0.length)]
            require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
            call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0x4ed85961 with:
                 gas gas_remaining wei
                args mem[(64 * stor0.length) + 324 len (161 * stor0.length) + 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 2 < stor0.length
            require 4 < stor0.length
            _1201 = mem[(32 * stor0.length) + 448]
            mem[(64 * stor0.length) + 324] = mem[(32 * stor0.length) + 396 len 20]
            mem[(64 * stor0.length) + 356] = address(_1201)
            mem[(64 * stor0.length) + 388] = ext_call.return_data[0]
            require ext_code.size(0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee)
            call 0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee.getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args mem[(64 * stor0.length) + 324], address(_1201), ext_call.return_data[0]
            mem[(64 * stor0.length) + 320 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_call.return_data[0]
            require (2 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) - (2 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0])
            if (10^18 * ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - (10^18 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) / (2 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) - (2 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) <= 0:
                return 0, 10^18 * ext_call.return_data[0] / ext_call.return_data[0], ext_call.return_data[0]
            if not stor0.length:
                require 0 < stor0.length
                require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                call 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(ext_call.return_data[32]), (10^18 * ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - (10^18 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) / (2 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) - (2 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require 0 < stor0.length
                require ext_code.size(ext_call.return_data[44 len 20])
                call ext_call.return_data[44 len 20].0x313ce567 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 10^(-ext_call.return_data[0] + 18)
                mem[(98 * stor0.length) + 388] = arg1
                mem[(98 * stor0.length) + 420] = ext_call.return_data[0] / 10^(-ext_call.return_data[0] + 18)
                mem[(98 * stor0.length) + 356] = 96
                mem[(98 * stor0.length) + 452] = stor0.length
                mem[(98 * stor0.length) + 484 len floor32(stor0.length)] = mem[(64 * stor0.length) + 352 len floor32(stor0.length)]
                require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
                call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0x4ed85961 with:
                     gas gas_remaining wei
                    args Array(len=stor0.length, data=mem[(64 * stor0.length) + 352 len floor32(stor0.length)], mem[(98 * stor0.length) + floor32(stor0.length) + 484 len (33 * stor0.length) - floor32(stor0.length)]), address(arg1), ext_call.return_data[0] / 10^(-ext_call.return_data[0] + 18)
                mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 2 < stor0.length
                require 4 < stor0.length
                require ext_code.size(0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee)
                call 0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args stor0.length.field_32, address(mem[(64 * stor0.length) + 480]), ext_call.return_data[0]
            else:
                mem[(64 * stor0.length) + 352] = address(stor0.field_0)
                idx = (64 * stor0.length) + 352
                s = 0
                while (98 * stor0.length) + 320 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require 0 < stor0.length
                require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                call 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(mem[(64 * stor0.length) + 352]), (10^18 * ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - (10^18 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) / (2 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) - (2 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0])
                mem[(98 * stor0.length) + 352 len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require 0 < stor0.length
                require ext_code.size(mem[(64 * stor0.length) + 364 len 20])
                call mem[(64 * stor0.length) + 364 len 20].0x313ce567 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 10^(-ext_call.return_data[0] + 18)
                mem[(98 * stor0.length) + 388] = arg1
                mem[(98 * stor0.length) + 420] = ext_call.return_data[0] / 10^(-ext_call.return_data[0] + 18)
                mem[(98 * stor0.length) + 356] = 96
                mem[(98 * stor0.length) + 452] = stor0.length
                mem[(98 * stor0.length) + 484 len floor32(stor0.length)] = mem[(64 * stor0.length) + 352 len floor32(stor0.length)]
                require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
                call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0x4ed85961 with:
                     gas gas_remaining wei
                    args Array(len=stor0.length, data=mem[(98 * stor0.length) + 484 len 32 * stor0.length]), address(arg1), ext_call.return_data[0] / 10^(-ext_call.return_data[0] + 18)
                mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 2 < stor0.length
                require 4 < stor0.length
                _1485 = mem[(64 * stor0.length) + 480]
                mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 428 len 20]
                require ext_code.size(0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee)
                call 0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args mem[(98 * stor0.length) + 356], address(_1485), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0]
    if ext_call.return_data[0] <= 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
        return 0, 0, 1
    require 10^18 * ext_call.return_data[0] / ext_call.return_data[0]
    require ext_code.size(0x607a5c47978e2eb6d59c6c6f51bc0bf411f4b85a)
    call 0x607a5c47978e2eb6d59c6c6f51bc0bf411f4b85a.gasPrice() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x607a5c47978e2eb6d59c6c6f51bc0bf411f4b85a)
    call 0x607a5c47978e2eb6d59c6c6f51bc0bf411f4b85a.gasPrice() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if (10^18 * ext_call.return_data[0]) - (10^18 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] <= stor3 * ext_call.return_data[0]:
        return 0, 
               (10^18 * ext_call.return_data[0]) - (10^18 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0],
               ext_call.return_data[0]
    return (10^18 * ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - (10^18 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) / (2 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) - (2 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]), 
           (10^18 * ext_call.return_data[0]) - (10^18 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0],
           ext_call.return_data[0]
}

function sub_3cfa52b5(?) {
    mem[96] = 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315
    mem[128] = 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c
    mem[160] = 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c
    mem[192] = arg2
    mem[224] = arg3
    stor0.length = 5
    s = 0
    idx = 96
    while 256 > idx:
        stor0[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 5
    while stor0.length > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not stor0.length:
        require 4 < stor0.length
        require ext_code.size(mem[428 len 20])
        call mem[428 len 20].0x313ce567 with:
             gas gas_remaining wei
        mem[(32 * stor0.length) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0 < stor0.length
        require 1 < stor0.length
        require ext_code.size(0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee)
        call 0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee.getReturn(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(mem[288]), address(mem[320]), defaultAmount
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        mem[(32 * stor0.length) + 324] = arg1
        mem[(32 * stor0.length) + 356] = ext_call.return_data[0]
        mem[(32 * stor0.length) + 292] = 96
        mem[(32 * stor0.length) + 388] = stor0.length
        mem[(32 * stor0.length) + 420 len floor32(stor0.length)] = mem[288 len floor32(stor0.length)]
        require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
        call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0xcf93ebe3 with:
             gas gas_remaining wei
            args Array(len=stor0.length, data=mem[288 len floor32(stor0.length)], mem[(32 * stor0.length) + floor32(stor0.length) + 420 len (32 * stor0.length) - floor32(stor0.length)]), address(arg1), ext_call.return_data[0]
        mem[(32 * stor0.length) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 4 < stor0.length
        _373 = mem[416]
        mem[(32 * stor0.length) + 324] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
        mem[(32 * stor0.length) + 356] = ext_call.return_data[0]
        require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
        call 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(_373), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, ext_call.return_data[0]
        mem[(32 * stor0.length) + 288 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_call.return_data[0]
        if 10^18 * defaultAmount / ext_call.return_data[0] >= ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18):
            return 0, 0, 1
        if not stor0.length:
            require 4 < stor0.length
            require ext_code.size(mem[(32 * stor0.length) + 460 len 20])
            call mem[(32 * stor0.length) + 460 len 20].0x313ce567 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 0 < stor0.length
            require 1 < stor0.length
            require ext_code.size(0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee)
            call 0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee.getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[32]), address(ext_call.return_data[0 len 28]), 2 * defaultAmount
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            mem[(64 * stor0.length) + 320] = 0xcf93ebe300000000000000000000000000000000000000000000000000000000
            mem[(64 * stor0.length) + 356] = arg1
            mem[(64 * stor0.length) + 388] = ext_call.return_data[0]
            mem[(64 * stor0.length) + 324] = 96
            mem[(64 * stor0.length) + 420] = stor0.length
            mem[(64 * stor0.length) + 452 len floor32(stor0.length)] = mem[(32 * stor0.length) + 320 len floor32(stor0.length)]
            require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
            call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0xcf93ebe3 with:
                 gas gas_remaining wei
                args mem[(64 * stor0.length) + 324 len (161 * stor0.length) + 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 4 < stor0.length
            _480 = mem[(32 * stor0.length) + 448]
            mem[(64 * stor0.length) + 356] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
            mem[(64 * stor0.length) + 388] = ext_call.return_data[0]
            require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
            call 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(_480), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, ext_call.return_data[0]
            mem[(64 * stor0.length) + 320 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_call.return_data[0]
            require (4 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) - (2 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0])
            if (10^18 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) - (10^18 * 10^18 * defaultAmount / ext_call.return_data[0] * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) / (4 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) - (2 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) <= 0:
                return 0, ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18), 10^18 * defaultAmount / ext_call.return_data[0]
            if not stor0.length:
                require 4 < stor0.length
                require ext_code.size(mem[(64 * stor0.length) + 492 len 20])
                call mem[(64 * stor0.length) + 492 len 20].0x313ce567 with:
                     gas gas_remaining wei
                mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 4 < stor0.length
                require ext_code.size(mem[(64 * stor0.length) + 492 len 20])
                call mem[(64 * stor0.length) + 492 len 20].0x313ce567 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 0 < stor0.length
                require 1 < stor0.length
                require ext_code.size(0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee)
                call 0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[32]), address(ext_call.return_data[0 len 28]), (10^18 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) - (10^18 * 10^18 * defaultAmount / ext_call.return_data[0] * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) / (4 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) - (2 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                mem[(98 * stor0.length) + 388] = arg1
                mem[(98 * stor0.length) + 420] = ext_call.return_data[0]
                mem[(98 * stor0.length) + 356] = 96
                mem[(98 * stor0.length) + 452] = stor0.length
                mem[(98 * stor0.length) + 484 len floor32(stor0.length)] = mem[(64 * stor0.length) + 352 len floor32(stor0.length)]
                require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
                call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0xcf93ebe3 with:
                     gas gas_remaining wei
                    args Array(len=stor0.length, data=mem[(64 * stor0.length) + 352 len floor32(stor0.length)], mem[(98 * stor0.length) + floor32(stor0.length) + 484 len (33 * stor0.length) - floor32(stor0.length)]), address(arg1), ext_call.return_data[0]
                mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 4 < stor0.length
                require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                call 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(mem[(64 * stor0.length) + 480]), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, ext_call.return_data[0]
            else:
                mem[(64 * stor0.length) + 352] = address(stor0.field_0)
                idx = (64 * stor0.length) + 352
                s = 0
                while (98 * stor0.length) + 320 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require 4 < stor0.length
                require ext_code.size(mem[(64 * stor0.length) + 492 len 20])
                call mem[(64 * stor0.length) + 492 len 20].0x313ce567 with:
                     gas gas_remaining wei
                mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 4 < stor0.length
                require ext_code.size(mem[(64 * stor0.length) + 492 len 20])
                call mem[(64 * stor0.length) + 492 len 20].0x313ce567 with:
                     gas gas_remaining wei
                mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 0 < stor0.length
                require 1 < stor0.length
                _909 = mem[(64 * stor0.length) + 384]
                mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 364 len 20]
                require ext_code.size(0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee)
                call 0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args mem[(98 * stor0.length) + 356], address(_909), (10^18 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) - (10^18 * 10^18 * defaultAmount / ext_call.return_data[0] * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) / (4 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) - (2 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                mem[(98 * stor0.length) + 388] = arg1
                mem[(98 * stor0.length) + 420] = ext_call.return_data[0]
                mem[(98 * stor0.length) + 356] = 96
                mem[(98 * stor0.length) + 452] = stor0.length
                mem[(98 * stor0.length) + 484 len floor32(stor0.length)] = mem[(64 * stor0.length) + 352 len floor32(stor0.length)]
                require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
                call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0xcf93ebe3 with:
                     gas gas_remaining wei
                    args Array(len=stor0.length, data=mem[(64 * stor0.length) + 352 len floor32(stor0.length)], mem[(98 * stor0.length) + floor32(stor0.length) + 484 len (33 * stor0.length) - floor32(stor0.length)]), address(arg1), ext_call.return_data[0]
                mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 4 < stor0.length
                mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 492 len 20]
                require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                call 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args mem[(98 * stor0.length) + 356], 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, ext_call.return_data[0]
        else:
            mem[(32 * stor0.length) + 320] = address(stor0.field_0)
            idx = (32 * stor0.length) + 320
            s = 0
            while (64 * stor0.length) + 288 > idx:
                mem[idx + 32] = stor0[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require 4 < stor0.length
            require ext_code.size(mem[(32 * stor0.length) + 460 len 20])
            call mem[(32 * stor0.length) + 460 len 20].0x313ce567 with:
                 gas gas_remaining wei
            mem[(64 * stor0.length) + 320] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 0 < stor0.length
            require 1 < stor0.length
            _685 = mem[(32 * stor0.length) + 352]
            mem[(64 * stor0.length) + 324] = mem[(32 * stor0.length) + 332 len 20]
            require ext_code.size(0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee)
            call 0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee.getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args mem[(64 * stor0.length) + 324], address(_685), 2 * defaultAmount
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            mem[(64 * stor0.length) + 320] = 0xcf93ebe300000000000000000000000000000000000000000000000000000000
            mem[(64 * stor0.length) + 356] = arg1
            mem[(64 * stor0.length) + 388] = ext_call.return_data[0]
            mem[(64 * stor0.length) + 324] = 96
            mem[(64 * stor0.length) + 420] = stor0.length
            mem[(64 * stor0.length) + 452 len floor32(stor0.length)] = mem[(32 * stor0.length) + 320 len floor32(stor0.length)]
            require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
            call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0xcf93ebe3 with:
                 gas gas_remaining wei
                args mem[(64 * stor0.length) + 324 len (161 * stor0.length) + 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 4 < stor0.length
            mem[(64 * stor0.length) + 324] = mem[(32 * stor0.length) + 460 len 20]
            mem[(64 * stor0.length) + 356] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
            mem[(64 * stor0.length) + 388] = ext_call.return_data[0]
            require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
            call 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args mem[(64 * stor0.length) + 324], 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, ext_call.return_data[0]
            mem[(64 * stor0.length) + 320 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_call.return_data[0]
            require (4 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) - (2 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0])
            if (10^18 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) - (10^18 * 10^18 * defaultAmount / ext_call.return_data[0] * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) / (4 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) - (2 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) <= 0:
                return 0, ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18), 10^18 * defaultAmount / ext_call.return_data[0]
            if not stor0.length:
                require 4 < stor0.length
                require ext_code.size(mem[(64 * stor0.length) + 492 len 20])
                call mem[(64 * stor0.length) + 492 len 20].0x313ce567 with:
                     gas gas_remaining wei
                mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 4 < stor0.length
                require ext_code.size(mem[(64 * stor0.length) + 492 len 20])
                call mem[(64 * stor0.length) + 492 len 20].0x313ce567 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 0 < stor0.length
                require 1 < stor0.length
                require ext_code.size(0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee)
                call 0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args ext_call.return_data[44 len 20], address(ext_call.return_data[0 len 28]), (10^18 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) - (10^18 * 10^18 * defaultAmount / ext_call.return_data[0] * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) / (4 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) - (2 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0])
            else:
                mem[(64 * stor0.length) + 352] = address(stor0.field_0)
                idx = (64 * stor0.length) + 352
                s = 0
                while (98 * stor0.length) + 320 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require 4 < stor0.length
                require ext_code.size(mem[(64 * stor0.length) + 492 len 20])
                call mem[(64 * stor0.length) + 492 len 20].0x313ce567 with:
                     gas gas_remaining wei
                mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 4 < stor0.length
                require ext_code.size(mem[(64 * stor0.length) + 492 len 20])
                call mem[(64 * stor0.length) + 492 len 20].0x313ce567 with:
                     gas gas_remaining wei
                mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 0 < stor0.length
                require 1 < stor0.length
                _1275 = mem[(64 * stor0.length) + 384]
                mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 364 len 20]
                require ext_code.size(0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee)
                call 0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args mem[(98 * stor0.length) + 356], address(_1275), (10^18 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) - (10^18 * 10^18 * defaultAmount / ext_call.return_data[0] * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) / (4 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) - (2 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            mem[(98 * stor0.length) + 388] = arg1
            mem[(98 * stor0.length) + 420] = ext_call.return_data[0]
            mem[(98 * stor0.length) + 356] = 96
            mem[(98 * stor0.length) + 452] = stor0.length
            mem[(98 * stor0.length) + 484 len floor32(stor0.length)] = mem[(64 * stor0.length) + 352 len floor32(stor0.length)]
            require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
            call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0xcf93ebe3 with:
                 gas gas_remaining wei
                args Array(len=stor0.length, data=mem[(64 * stor0.length) + 352 len floor32(stor0.length)], mem[(98 * stor0.length) + floor32(stor0.length) + 484 len (33 * stor0.length) - floor32(stor0.length)]), address(arg1), ext_call.return_data[0]
            mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 4 < stor0.length
            mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 492 len 20]
            require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
            call 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args mem[(98 * stor0.length) + 356], 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, ext_call.return_data[0]
    else:
        mem[288] = address(stor0.field_0)
        idx = 288
        s = 0
        while (32 * stor0.length) + 256 > idx:
            mem[idx + 32] = stor0[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require 4 < stor0.length
        require ext_code.size(mem[428 len 20])
        call mem[428 len 20].0x313ce567 with:
             gas gas_remaining wei
        mem[(32 * stor0.length) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0 < stor0.length
        require 1 < stor0.length
        _487 = mem[320]
        mem[(32 * stor0.length) + 292] = mem[300 len 20]
        require ext_code.size(0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee)
        call 0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee.getReturn(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args mem[(32 * stor0.length) + 292], address(_487), defaultAmount
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        mem[(32 * stor0.length) + 324] = arg1
        mem[(32 * stor0.length) + 356] = ext_call.return_data[0]
        mem[(32 * stor0.length) + 292] = 96
        mem[(32 * stor0.length) + 388] = stor0.length
        mem[(32 * stor0.length) + 420 len floor32(stor0.length)] = mem[288 len floor32(stor0.length)]
        require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
        call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0xcf93ebe3 with:
             gas gas_remaining wei
            args Array(len=stor0.length, data=mem[288 len floor32(stor0.length)], mem[(32 * stor0.length) + floor32(stor0.length) + 420 len (32 * stor0.length) - floor32(stor0.length)]), address(arg1), ext_call.return_data[0]
        mem[(32 * stor0.length) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 4 < stor0.length
        mem[(32 * stor0.length) + 292] = mem[428 len 20]
        mem[(32 * stor0.length) + 324] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
        mem[(32 * stor0.length) + 356] = ext_call.return_data[0]
        require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
        call 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args mem[(32 * stor0.length) + 292], 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, ext_call.return_data[0]
        mem[(32 * stor0.length) + 288 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_call.return_data[0]
        if 10^18 * defaultAmount / ext_call.return_data[0] >= ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18):
            return 0, 0, 1
        if not stor0.length:
            require 4 < stor0.length
            require ext_code.size(mem[(32 * stor0.length) + 460 len 20])
            call mem[(32 * stor0.length) + 460 len 20].0x313ce567 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 0 < stor0.length
            require 1 < stor0.length
            require ext_code.size(0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee)
            call 0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee.getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args ext_call.return_data[44 len 20], address(ext_call.return_data[0 len 28]), 2 * defaultAmount
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            mem[(64 * stor0.length) + 320] = 0xcf93ebe300000000000000000000000000000000000000000000000000000000
            mem[(64 * stor0.length) + 356] = arg1
            mem[(64 * stor0.length) + 388] = ext_call.return_data[0]
            mem[(64 * stor0.length) + 324] = 96
            mem[(64 * stor0.length) + 420] = stor0.length
            mem[(64 * stor0.length) + 452 len floor32(stor0.length)] = mem[(32 * stor0.length) + 320 len floor32(stor0.length)]
            require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
            call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0xcf93ebe3 with:
                 gas gas_remaining wei
                args mem[(64 * stor0.length) + 324 len (161 * stor0.length) + 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 4 < stor0.length
            mem[(64 * stor0.length) + 324] = mem[(32 * stor0.length) + 460 len 20]
            mem[(64 * stor0.length) + 356] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
            mem[(64 * stor0.length) + 388] = ext_call.return_data[0]
            require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
            call 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args mem[(64 * stor0.length) + 324], 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, ext_call.return_data[0]
            mem[(64 * stor0.length) + 320 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_call.return_data[0]
            require (4 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) - (2 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0])
            if (10^18 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) - (10^18 * 10^18 * defaultAmount / ext_call.return_data[0] * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) / (4 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) - (2 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) <= 0:
                return 0, ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18), 10^18 * defaultAmount / ext_call.return_data[0]
            if not stor0.length:
                require 4 < stor0.length
                require ext_code.size(mem[(64 * stor0.length) + 492 len 20])
                call mem[(64 * stor0.length) + 492 len 20].0x313ce567 with:
                     gas gas_remaining wei
                mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 4 < stor0.length
                require ext_code.size(mem[(64 * stor0.length) + 492 len 20])
                call mem[(64 * stor0.length) + 492 len 20].0x313ce567 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 0 < stor0.length
                require 1 < stor0.length
                require ext_code.size(0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee)
                call 0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args ext_call.return_data[44 len 20], address(ext_call.return_data[0 len 28]), (10^18 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) - (10^18 * 10^18 * defaultAmount / ext_call.return_data[0] * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) / (4 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) - (2 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0])
            else:
                mem[(64 * stor0.length) + 352] = address(stor0.field_0)
                idx = (64 * stor0.length) + 352
                s = 0
                while (98 * stor0.length) + 320 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require 4 < stor0.length
                require ext_code.size(mem[(64 * stor0.length) + 492 len 20])
                call mem[(64 * stor0.length) + 492 len 20].0x313ce567 with:
                     gas gas_remaining wei
                mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 4 < stor0.length
                require ext_code.size(mem[(64 * stor0.length) + 492 len 20])
                call mem[(64 * stor0.length) + 492 len 20].0x313ce567 with:
                     gas gas_remaining wei
                mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 0 < stor0.length
                require 1 < stor0.length
                _1278 = mem[(64 * stor0.length) + 384]
                mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 364 len 20]
                require ext_code.size(0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee)
                call 0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args mem[(98 * stor0.length) + 356], address(_1278), (10^18 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) - (10^18 * 10^18 * defaultAmount / ext_call.return_data[0] * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) / (4 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) - (2 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            mem[(98 * stor0.length) + 388] = arg1
            mem[(98 * stor0.length) + 420] = ext_call.return_data[0]
            mem[(98 * stor0.length) + 356] = 96
            mem[(98 * stor0.length) + 452] = stor0.length
            mem[(98 * stor0.length) + 484 len floor32(stor0.length)] = mem[(64 * stor0.length) + 352 len floor32(stor0.length)]
            require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
            call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0xcf93ebe3 with:
                 gas gas_remaining wei
                args Array(len=stor0.length, data=mem[(64 * stor0.length) + 352 len floor32(stor0.length)], mem[(98 * stor0.length) + floor32(stor0.length) + 484 len (33 * stor0.length) - floor32(stor0.length)]), address(arg1), ext_call.return_data[0]
        else:
            mem[(32 * stor0.length) + 320] = address(stor0.field_0)
            idx = (32 * stor0.length) + 320
            s = 0
            while (64 * stor0.length) + 288 > idx:
                mem[idx + 32] = stor0[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require 4 < stor0.length
            require ext_code.size(mem[(32 * stor0.length) + 460 len 20])
            call mem[(32 * stor0.length) + 460 len 20].0x313ce567 with:
                 gas gas_remaining wei
            mem[(64 * stor0.length) + 320] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 0 < stor0.length
            require 1 < stor0.length
            _1103 = mem[(32 * stor0.length) + 352]
            mem[(64 * stor0.length) + 324] = mem[(32 * stor0.length) + 332 len 20]
            require ext_code.size(0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee)
            call 0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee.getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args mem[(64 * stor0.length) + 324], address(_1103), 2 * defaultAmount
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            mem[(64 * stor0.length) + 320] = 0xcf93ebe300000000000000000000000000000000000000000000000000000000
            mem[(64 * stor0.length) + 356] = arg1
            mem[(64 * stor0.length) + 388] = ext_call.return_data[0]
            mem[(64 * stor0.length) + 324] = 96
            mem[(64 * stor0.length) + 420] = stor0.length
            mem[(64 * stor0.length) + 452 len floor32(stor0.length)] = mem[(32 * stor0.length) + 320 len floor32(stor0.length)]
            require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
            call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0xcf93ebe3 with:
                 gas gas_remaining wei
                args mem[(64 * stor0.length) + 324 len (161 * stor0.length) + 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 4 < stor0.length
            mem[(64 * stor0.length) + 324] = mem[(32 * stor0.length) + 460 len 20]
            mem[(64 * stor0.length) + 356] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
            mem[(64 * stor0.length) + 388] = ext_call.return_data[0]
            require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
            call 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args mem[(64 * stor0.length) + 324], 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, ext_call.return_data[0]
            mem[(64 * stor0.length) + 320 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_call.return_data[0]
            require (4 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) - (2 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0])
            if (10^18 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) - (10^18 * 10^18 * defaultAmount / ext_call.return_data[0] * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) / (4 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) - (2 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) <= 0:
                return 0, ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18), 10^18 * defaultAmount / ext_call.return_data[0]
            if not stor0.length:
                require 4 < stor0.length
                require ext_code.size(mem[(64 * stor0.length) + 492 len 20])
                call mem[(64 * stor0.length) + 492 len 20].0x313ce567 with:
                     gas gas_remaining wei
                mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 4 < stor0.length
                require ext_code.size(mem[(64 * stor0.length) + 492 len 20])
                call mem[(64 * stor0.length) + 492 len 20].0x313ce567 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 0 < stor0.length
                require 1 < stor0.length
                require ext_code.size(0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee)
                call 0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args ext_call.return_data[44 len 20], address(ext_call.return_data[0 len 28]), (10^18 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) - (10^18 * 10^18 * defaultAmount / ext_call.return_data[0] * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) / (4 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) - (2 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                mem[(98 * stor0.length) + 388] = arg1
                mem[(98 * stor0.length) + 420] = ext_call.return_data[0]
                mem[(98 * stor0.length) + 356] = 96
                mem[(98 * stor0.length) + 452] = stor0.length
                mem[(98 * stor0.length) + 484 len floor32(stor0.length)] = mem[(64 * stor0.length) + 352 len floor32(stor0.length)]
                require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
                call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0xcf93ebe3 with:
                     gas gas_remaining wei
                    args Array(len=stor0.length, data=mem[(64 * stor0.length) + 352 len floor32(stor0.length)], mem[(98 * stor0.length) + floor32(stor0.length) + 484 len (33 * stor0.length) - floor32(stor0.length)]), address(arg1), ext_call.return_data[0]
            else:
                mem[(64 * stor0.length) + 352] = address(stor0.field_0)
                idx = (64 * stor0.length) + 352
                s = 0
                while (98 * stor0.length) + 320 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require 4 < stor0.length
                require ext_code.size(mem[(64 * stor0.length) + 492 len 20])
                call mem[(64 * stor0.length) + 492 len 20].0x313ce567 with:
                     gas gas_remaining wei
                mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 4 < stor0.length
                require ext_code.size(mem[(64 * stor0.length) + 492 len 20])
                call mem[(64 * stor0.length) + 492 len 20].0x313ce567 with:
                     gas gas_remaining wei
                mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 0 < stor0.length
                require 1 < stor0.length
                _1510 = mem[(64 * stor0.length) + 384]
                mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 364 len 20]
                require ext_code.size(0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee)
                call 0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args mem[(98 * stor0.length) + 356], address(_1510), (10^18 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) - (10^18 * 10^18 * defaultAmount / ext_call.return_data[0] * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) / (4 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) - (2 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                mem[(98 * stor0.length) + 388] = arg1
                mem[(98 * stor0.length) + 420] = ext_call.return_data[0]
                mem[(98 * stor0.length) + 356] = 96
                mem[(98 * stor0.length) + 452] = stor0.length
                mem[(98 * stor0.length) + 484 len floor32(stor0.length)] = mem[(64 * stor0.length) + 352 len floor32(stor0.length)]
                require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
                call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0xcf93ebe3 with:
                     gas gas_remaining wei
                    args Array(len=stor0.length, data=mem[(98 * stor0.length) + 484 len 32 * stor0.length]), address(arg1), ext_call.return_data[0]
        mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 4 < stor0.length
        mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 492 len 20]
        require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
        call 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args mem[(98 * stor0.length) + 356], 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0]
    if 10^18 * (10^18 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) - (10^18 * 10^18 * defaultAmount / ext_call.return_data[0] * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) / (4 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) - (2 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) / ext_call.return_data[0] >= ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18):
        return 0, 0, 1
    require ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)
    require ext_code.size(0x607a5c47978e2eb6d59c6c6f51bc0bf411f4b85a)
    call 0x607a5c47978e2eb6d59c6c6f51bc0bf411f4b85a.gasPrice() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x607a5c47978e2eb6d59c6c6f51bc0bf411f4b85a)
    call 0x607a5c47978e2eb6d59c6c6f51bc0bf411f4b85a.gasPrice() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if (10^18 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) - (10^18 * 10^18 * (10^18 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) - (10^18 * 10^18 * defaultAmount / ext_call.return_data[0] * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) / (4 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) - (2 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) / ext_call.return_data[0]) / ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) <= stor3 * ext_call.return_data[0]:
        return 0, 
               (10^18 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) - (10^18 * 10^18 * (10^18 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) - (10^18 * 10^18 * defaultAmount / ext_call.return_data[0] * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) / (4 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) - (2 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) / ext_call.return_data[0]) / ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18),
               ext_call.return_data[0]
    return (10^18 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) - (10^18 * 10^18 * defaultAmount / ext_call.return_data[0] * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) / (4 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) - (2 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]), 
           (10^18 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) - (10^18 * 10^18 * (10^18 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) - (10^18 * 10^18 * defaultAmount / ext_call.return_data[0] * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) / (4 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) - (2 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) / ext_call.return_data[0]) / ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18),
           ext_call.return_data[0]
}



}
