contract main {




// =====================  Runtime code  =====================


#
#  - sub_cde54f0e(?)
#
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
    require msg.sender == 0xdead1241f2ee2a7950ad967993efb72d62bf6822
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
    require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
    call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
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
    require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
    call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(mem[192]), address(mem[256]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require arg3
    require 10^18 * ext_call.return_data[0] / arg3
    return (10^18 * arg4 / 10^18 * ext_call.return_data[0] / arg3)
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
    require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
    call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
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
    require 0 < arg3.length
    require 1 < arg3.length
    require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
    call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
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
    require 10 * arg2
    return arg1, 
           (10^18 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) - (10^18 * 10^18 * arg1 / ext_call.return_data[0]) / 10 * arg2,
           0
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
    mem[(32 * arg1.length) + 196] = ext_call.return_data[0] * arg3 / 10^18 / 10^(-ext_call.return_data[0] + 18)
    mem[(32 * arg1.length) + 132] = 96
    mem[(32 * arg1.length) + 228] = arg1.length
    mem[(32 * arg1.length) + 260 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
    call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0x4ed85961 with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 260 len (32 * arg1.length) - floor32(arg1.length)]), address(arg2), ext_call.return_data[0] * arg3 / 10^18 / 10^(-ext_call.return_data[0] + 18)
    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 2 < arg1.length
    require 4 < arg1.length
    require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
    call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(mem[192]), address(mem[256]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] * arg3 / 10^18
    require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 10^18
    return 10^18 * arg3 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 10^18, 
           ext_call.return_data[0] * arg3 / 10^18
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
    mem[(32 * arg3.length) + 196] = ext_call.return_data[0] * arg1 / 10^18 / 10^(-ext_call.return_data[0] + 18)
    mem[(32 * arg3.length) + 132] = 96
    mem[(32 * arg3.length) + 228] = arg3.length
    mem[(32 * arg3.length) + 260 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
    call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0x4ed85961 with:
         gas gas_remaining wei
        args Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + floor32(arg3.length) + 260 len (32 * arg3.length) - floor32(arg3.length)]), address(arg4), ext_call.return_data[0] * arg1 / 10^18 / 10^(-ext_call.return_data[0] + 18)
    mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 2 < arg3.length
    require 4 < arg3.length
    require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
    call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(mem[192]), address(mem[256]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] * arg1 / 10^18
    require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg1 / 10^18
    if ext_call.return_data[0] * arg1 / 10^18 <= 10^18 * arg1 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg1 / 10^18:
        return 0, 2, 1
    require 10 * arg2
    return arg1, 
           (10^18 * ext_call.return_data[0] * arg1 / 10^18) - (10^18 * 10^18 * arg1 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg1 / 10^18) / 10 * arg2,
           0
}

function sub_7086e7a4(?) {
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
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
    require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
    call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(mem[128]), address(mem[160]), defaultAmount
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
    _160 = mem[256]
    mem[(32 * arg1.length) + 164] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
    mem[(32 * arg1.length) + 196] = ext_call.return_data[0]
    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
    call 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(_160), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, ext_call.return_data[0]
    mem[(32 * arg1.length) + 128 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0]
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
    require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
    call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
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
    _295 = mem[256]
    mem[(32 * arg1.length) + 164] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
    mem[(32 * arg1.length) + 196] = ext_call.return_data[0]
    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
    call 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(_295), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, ext_call.return_data[0]
    mem[(32 * arg1.length) + 128 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0]
    require (4 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) - (2 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0])
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
    require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
    call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(mem[128]), address(mem[160]), (10^18 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) - (10^18 * 10^18 * defaultAmount / ext_call.return_data[0] * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) / (4 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) - (2 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) / 10
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
    _401 = mem[256]
    mem[(32 * arg1.length) + 164] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
    mem[(32 * arg1.length) + 196] = ext_call.return_data[0]
    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
    call 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(_401), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, ext_call.return_data[0]
    mem[(32 * arg1.length) + 128 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0]
    if 10^18 * (10^18 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) - (10^18 * 10^18 * defaultAmount / ext_call.return_data[0] * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) / (4 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) - (2 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) / 10 / ext_call.return_data[0] >= ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18):
        require 4 < arg1.length
        _741 = mem[256]
        mem[(32 * arg1.length) + 128] = 0x313ce56700000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(_741))
        call var123002.mem[var123004 len 4] with:
             gas gas_remaining wei
            args mem[var123004 + 4 len var123005 - 4]
        mem[var123006] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0 < arg1.length
        require 1 < arg1.length
        _1223 = mem[160]
        mem[(32 * arg1.length) + 128] = 0x1e1401f800000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + 132] = address(var133003)
        mem[(32 * arg1.length) + 164] = address(_1223)
        mem[(32 * arg1.length) + 196] = var133011
        require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
        call 0xcbc6a023eb975a1e2630223a7959988948e664f3.mem[var135004 len 4] with:
             gas gas_remaining wei
            args mem[var135004 + 4 len var135005 - 4]
        mem[var135006 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        _1503 = mem[var139002]
        mem[(32 * arg1.length) + 128] = 0xcf93ebe300000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + 164] = arg2
        mem[(32 * arg1.length) + 196] = _1503
        mem[(32 * arg1.length) + 132] = 96
        mem[(32 * arg1.length) + 228] = arg1.length
        if var112001 < 32 * arg1.length:
            mem[(32 * arg1.length) + var112001 + 260] = mem[var112001 + 128]
            var112001 = var112001 + 32
            continue 
        require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
        call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0xcf93ebe3 with:
             gas gas_remaining wei
            args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 260 len (32 * arg1.length) - floor32(arg1.length)]), address(arg2), _1503
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 4 < arg1.length
        _1625 = mem[256]
        mem[(32 * arg1.length) + 164] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
        mem[(32 * arg1.length) + 196] = ext_call.return_data[0]
        require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
        call 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(_1625), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, ext_call.return_data[0]
        mem[(32 * arg1.length) + 128 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_call.return_data[0]
        if 10^18 * var139019 / ext_call.return_data[0] >= ext_call.return_data[0] * 10^(-var139014 + 18):
            if 0 <= var139034:
                return 0
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
            require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
            call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(mem[128]), address(mem[160]), 0
        else:
            require 10 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)
            if (10^18 * ext_call.return_data[0] * 10^(-var139014 + 18)) - (10^18 * 10^18 * var139019 / ext_call.return_data[0]) / 10 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) <= var139034:
                return (-var139032 + (var139035 * var139032) / 10)
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
            require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
            call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(mem[128]), address(mem[160]), var139032 + (var139035 * var139032) / 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        mem[(32 * arg1.length) + 128] = 0xcf93ebe300000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + 164] = arg2
        mem[(32 * arg1.length) + 196] = ext_call.return_data[0]
        mem[(32 * arg1.length) + 132] = 96
        mem[(32 * arg1.length) + 228] = arg1.length
        var112001 = 0
        continue 
    require 10 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)
    require 4 < arg1.length
    _744 = mem[256]
    mem[(32 * arg1.length) + 128] = 0x313ce56700000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(_744))
    call var124002.mem[var124004 len 4] with:
         gas gas_remaining wei
        args mem[var124004 + 4 len var124005 - 4]
    mem[var124006] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0 < arg1.length
    require 1 < arg1.length
    _1226 = mem[160]
    mem[(32 * arg1.length) + 128] = 0x1e1401f800000000000000000000000000000000000000000000000000000000
    mem[(32 * arg1.length) + 132] = address(var134003)
    mem[(32 * arg1.length) + 164] = address(_1226)
    mem[(32 * arg1.length) + 196] = var134011
    require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
    call 0xcbc6a023eb975a1e2630223a7959988948e664f3.mem[var136004 len 4] with:
         gas gas_remaining wei
        args mem[var136004 + 4 len var136005 - 4]
    mem[var136006 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    _1508 = mem[var140002]
    mem[(32 * arg1.length) + 128] = 0xcf93ebe300000000000000000000000000000000000000000000000000000000
    mem[(32 * arg1.length) + 164] = arg2
    mem[(32 * arg1.length) + 196] = _1508
    mem[(32 * arg1.length) + 132] = 96
    mem[(32 * arg1.length) + 228] = arg1.length
    if var113001 < 32 * arg1.length:
        mem[(32 * arg1.length) + var113001 + 260] = mem[var113001 + 128]
        var113001 = var113001 + 32
        continue 
    require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
    call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0xcf93ebe3 with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 260 len (32 * arg1.length) - floor32(arg1.length)]), address(arg2), _1508
    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 4 < arg1.length
    _1628 = mem[256]
    mem[(32 * arg1.length) + 164] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
    mem[(32 * arg1.length) + 196] = ext_call.return_data[0]
    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
    call 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(_1628), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, ext_call.return_data[0]
    mem[(32 * arg1.length) + 128 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0]
    if 10^18 * var140019 / ext_call.return_data[0] >= ext_call.return_data[0] * 10^(-var140014 + 18):
        if 0 <= var140034:
            return 0
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
        require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
        call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(mem[128]), address(mem[160]), 0
    else:
        require 10 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)
        if (10^18 * ext_call.return_data[0] * 10^(-var140014 + 18)) - (10^18 * 10^18 * var140019 / ext_call.return_data[0]) / 10 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) <= var140034:
            return (-var140032 + (var140035 * var140032) / 10)
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
        require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
        call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(mem[128]), address(mem[160]), var140032 + (var140035 * var140032) / 10
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    mem[(32 * arg1.length) + 128] = 0xcf93ebe300000000000000000000000000000000000000000000000000000000
    mem[(32 * arg1.length) + 164] = arg2
    mem[(32 * arg1.length) + 196] = ext_call.return_data[0]
    mem[(32 * arg1.length) + 132] = 96
    mem[(32 * arg1.length) + 228] = arg1.length
    var113001 = 0
    continue 
}

function sub_f3e461a1(?) {
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require 0 < arg1.length
    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
    call 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(mem[128]), defaultAmount
    mem[(32 * arg1.length) + 128 len 64] = ext_call.return_data[0 len 64]
    if ext_call.success:
        require return_data.size >= 64
        require 0 < arg1.length
        require ext_code.size(mem[140 len 20])
        call mem[140 len 20].0x313ce567 with:
             gas gas_remaining wei
        if ext_call.success:
            require return_data.size >= 32
            require 10^(-ext_call.return_data[0] + 18)
            mem[(32 * arg1.length) + 164] = arg2
            mem[(32 * arg1.length) + 196] = ext_call.return_data[0] * defaultAmount / 10^18 / 10^(-ext_call.return_data[0] + 18)
            mem[(32 * arg1.length) + 132] = 96
            mem[(32 * arg1.length) + 228] = arg1.length
            mem[(32 * arg1.length) + 260 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
            call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0x4ed85961 with:
                 gas gas_remaining wei
                args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 260 len (32 * arg1.length) - floor32(arg1.length)]), address(arg2), ext_call.return_data[0] * defaultAmount / 10^18 / 10^(-ext_call.return_data[0] + 18)
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                require 2 < arg1.length
                require 4 < arg1.length
                require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(mem[192]), address(mem[256]), ext_call.return_data[0]
                mem[(32 * arg1.length) + 128 len 64] = ext_call.return_data[0 len 64]
                if ext_call.success:
                    require return_data.size >= 64
                    require ext_call.return_data[0] * defaultAmount / 10^18
                    require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * defaultAmount / 10^18
                    require 0 < arg1.length
                    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                    call 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(mem[128]), 2 * defaultAmount
                    mem[(32 * arg1.length) + 128 len 64] = ext_call.return_data[0 len 64]
                    if ext_call.success:
                        require return_data.size >= 64
                        require 0 < arg1.length
                        require ext_code.size(mem[140 len 20])
                        call mem[140 len 20].0x313ce567 with:
                             gas gas_remaining wei
                        if ext_call.success:
                            require return_data.size >= 32
                            require 10^(-ext_call.return_data[0] + 18)
                            mem[(32 * arg1.length) + 164] = arg2
                            mem[(32 * arg1.length) + 196] = ext_call.return_data[0] * 2 * defaultAmount / 10^18 / 10^(-ext_call.return_data[0] + 18)
                            mem[(32 * arg1.length) + 132] = 96
                            mem[(32 * arg1.length) + 228] = arg1.length
                            mem[(32 * arg1.length) + 260 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                            require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
                            call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0x4ed85961 with:
                                 gas gas_remaining wei
                                args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 260 len (32 * arg1.length) - floor32(arg1.length)]), address(arg2), ext_call.return_data[0] * 2 * defaultAmount / 10^18 / 10^(-ext_call.return_data[0] + 18)
                            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                            if ext_call.success:
                                require return_data.size >= 32
                                require 2 < arg1.length
                                require 4 < arg1.length
                                require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                                call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(mem[192]), address(mem[256]), ext_call.return_data[0]
                                mem[(32 * arg1.length) + 128 len 64] = ext_call.return_data[0 len 64]
                                if ext_call.success:
                                    require return_data.size >= 64
                                    require ext_call.return_data[0] * 2 * defaultAmount / 10^18
                                    require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 2 * defaultAmount / 10^18
                                    require (2 * 10^18 * 2 * defaultAmount / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 2 * defaultAmount / 10^18 * ext_call.return_data[0] * defaultAmount / 10^18) - (4 * 10^18 * defaultAmount / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * defaultAmount / 10^18 * ext_call.return_data[0] * defaultAmount / 10^18)
                                    require 0 < arg1.length
                                    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                                    call 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(mem[128]), (10^18 * ext_call.return_data[0] * defaultAmount / 10^18 * 10^18 * 2 * defaultAmount / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 2 * defaultAmount / 10^18) - (10^18 * 10^18 * defaultAmount / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * defaultAmount / 10^18 * 10^18 * 2 * defaultAmount / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 2 * defaultAmount / 10^18) / (2 * 10^18 * 2 * defaultAmount / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 2 * defaultAmount / 10^18 * ext_call.return_data[0] * defaultAmount / 10^18) - (4 * 10^18 * defaultAmount / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * defaultAmount / 10^18 * ext_call.return_data[0] * defaultAmount / 10^18) / 10
                                    mem[(32 * arg1.length) + 128 len 64] = ext_call.return_data[0 len 64]
                                    if ext_call.success:
                                        require return_data.size >= 64
                                        require 0 < arg1.length
                                        require ext_code.size(mem[140 len 20])
                                        call mem[140 len 20].0x313ce567 with:
                                             gas gas_remaining wei
                                        if ext_call.success:
                                            require return_data.size >= 32
                                            require 10^(-ext_call.return_data[0] + 18)
                                            mem[(32 * arg1.length) + 164] = arg2
                                            mem[(32 * arg1.length) + 196] = ext_call.return_data[0] * (10^18 * ext_call.return_data[0] * defaultAmount / 10^18 * 10^18 * 2 * defaultAmount / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 2 * defaultAmount / 10^18) - (10^18 * 10^18 * defaultAmount / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * defaultAmount / 10^18 * 10^18 * 2 * defaultAmount / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 2 * defaultAmount / 10^18) / (2 * 10^18 * 2 * defaultAmount / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 2 * defaultAmount / 10^18 * ext_call.return_data[0] * defaultAmount / 10^18) - (4 * 10^18 * defaultAmount / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * defaultAmount / 10^18 * ext_call.return_data[0] * defaultAmount / 10^18) / 10 / 10^18 / 10^(-ext_call.return_data[0] + 18)
                                            mem[(32 * arg1.length) + 132] = 96
                                            mem[(32 * arg1.length) + 228] = arg1.length
                                            mem[(32 * arg1.length) + 260 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                            require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
                                            call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0x4ed85961 with:
                                                 gas gas_remaining wei
                                                args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 260 len (32 * arg1.length) - floor32(arg1.length)]), address(arg2), ext_call.return_data[0] * (10^18 * ext_call.return_data[0] * defaultAmount / 10^18 * 10^18 * 2 * defaultAmount / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 2 * defaultAmount / 10^18) - (10^18 * 10^18 * defaultAmount / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * defaultAmount / 10^18 * 10^18 * 2 * defaultAmount / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 2 * defaultAmount / 10^18) / (2 * 10^18 * 2 * defaultAmount / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 2 * defaultAmount / 10^18 * ext_call.return_data[0] * defaultAmount / 10^18) - (4 * 10^18 * defaultAmount / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * defaultAmount / 10^18 * ext_call.return_data[0] * defaultAmount / 10^18) / 10 / 10^18 / 10^(-ext_call.return_data[0] + 18)
                                            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                                            if ext_call.success:
                                                require return_data.size >= 32
                                                require 2 < arg1.length
                                                require 4 < arg1.length
                                                require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                                                call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                                                     gas gas_remaining wei
                                                    args address(mem[192]), address(mem[256]), ext_call.return_data[0]
                                                mem[(32 * arg1.length) + 128 len 64] = ext_call.return_data[0 len 64]
                                                if ext_call.success:
                                                    require return_data.size >= 64
                                                    require ext_call.return_data[0] * (10^18 * ext_call.return_data[0] * defaultAmount / 10^18 * 10^18 * 2 * defaultAmount / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 2 * defaultAmount / 10^18) - (10^18 * 10^18 * defaultAmount / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * defaultAmount / 10^18 * 10^18 * 2 * defaultAmount / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 2 * defaultAmount / 10^18) / (2 * 10^18 * 2 * defaultAmount / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 2 * defaultAmount / 10^18 * ext_call.return_data[0] * defaultAmount / 10^18) - (4 * 10^18 * defaultAmount / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * defaultAmount / 10^18 * ext_call.return_data[0] * defaultAmount / 10^18) / 10 / 10^18
                                                    require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * (10^18 * ext_call.return_data[0] * defaultAmount / 10^18 * 10^18 * 2 * defaultAmount / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 2 * defaultAmount / 10^18) - (10^18 * 10^18 * defaultAmount / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * defaultAmount / 10^18 * 10^18 * 2 * defaultAmount / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 2 * defaultAmount / 10^18) / (2 * 10^18 * 2 * defaultAmount / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 2 * defaultAmount / 10^18 * ext_call.return_data[0] * defaultAmount / 10^18) - (4 * 10^18 * defaultAmount / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * defaultAmount / 10^18 * ext_call.return_data[0] * defaultAmount / 10^18) / 10 / 10^18
                                                    if ext_call.return_data[0] * (10^18 * ext_call.return_data[0] * defaultAmount / 10^18 * 10^18 * 2 * defaultAmount / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 2 * defaultAmount / 10^18) - (10^18 * 10^18 * defaultAmount / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * defaultAmount / 10^18 * 10^18 * 2 * defaultAmount / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 2 * defaultAmount / 10^18) / (2 * 10^18 * 2 * defaultAmount / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 2 * defaultAmount / 10^18 * ext_call.return_data[0] * defaultAmount / 10^18) - (4 * 10^18 * defaultAmount / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * defaultAmount / 10^18 * ext_call.return_data[0] * defaultAmount / 10^18) / 10 / 10^18 <= 10^18 * (10^18 * ext_call.return_data[0] * defaultAmount / 10^18 * 10^18 * 2 * defaultAmount / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 2 * defaultAmount / 10^18) - (10^18 * 10^18 * defaultAmount / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * defaultAmount / 10^18 * 10^18 * 2 * defaultAmount / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 2 * defaultAmount / 10^18) / (2 * 10^18 * 2 * defaultAmount / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 2 * defaultAmount / 10^18 * ext_call.return_data[0] * defaultAmount / 10^18) - (4 * 10^18 * defaultAmount / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * defaultAmount / 10^18 * ext_call.return_data[0] * defaultAmount / 10^18) / 10 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * (10^18 * ext_call.return_data[0] * defaultAmount / 10^18 * 10^18 * 2 * defaultAmount / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 2 * defaultAmount / 10^18) - (10^18 * 10^18 * defaultAmount / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * defaultAmount / 10^18 * 10^18 * 2 * defaultAmount / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 2 * defaultAmount / 10^18) / (2 * 10^18 * 2 * defaultAmount / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 2 * defaultAmount / 10^18 * ext_call.return_data[0] * defaultAmount / 10^18) - (4 * 10^18 * defaultAmount / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * defaultAmount / 10^18 * ext_call.return_data[0] * defaultAmount / 10^18) / 10 / 10^18:
                                                        require 0 < arg1.length
                                                        _747 = mem[128]
                                                        mem[(32 * arg1.length) + 128] = 0x809a9e5500000000000000000000000000000000000000000000000000000000
                                                        mem[(32 * arg1.length) + 132] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                                                        mem[(32 * arg1.length) + 164] = address(_747)
                                                        mem[(32 * arg1.length) + 196] = var137011
                                                        require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                                                        call 0x818e6fecd516ecc3849daf6845e3ec868087b755.mem[var139004 len 4] with:
                                                             gas gas_remaining wei
                                                            args mem[var139004 + 4 len var139005 - 4]
                                                        mem[var139006 len 64] = ext_call.return_data[0 len 64]
                                                        if ext_call.success:
                                                            require return_data.size >= 64
                                                            _979 = mem[var143002]
                                                            require 0 < arg1.length
                                                            _1065 = mem[128]
                                                            require ext_code.size(mem[140 len 20])
                                                            call mem[140 len 20].0x313ce567 with:
                                                                 gas gas_remaining wei
                                                            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                                                            s = _979 * var143008
                                                            t = _979
                                                            u = var143008
                                                            v = var143021
                                                            w = var143023
                                                            x = var143024
                                                            y = var143025
                                                            y = var143026
                                                            while ext_call.success:
                                                                require return_data.size >= 32
                                                                _1073 = mem[mem[64]]
                                                                require 10^(-mem[mem[64]] + 18)
                                                                mem[mem[64]] = 0x4ed8596100000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 36] = arg2
                                                                mem[mem[64] + 68] = s / 10^18 / 10^(-_1073 + 18)
                                                                mem[mem[64] + 4] = 96
                                                                mem[mem[64] + 100] = mem[96]
                                                                _1077 = mem[96]
                                                                idx = 0
                                                                while idx < 32 * _1077:
                                                                    mem[mem[64] + idx + 132] = mem[idx + 128]
                                                                    require 0 < mem[96]
                                                                    _1065 = mem[128]
                                                                    mem[mem[64]] = 0x313ce56700000000000000000000000000000000000000000000000000000000
                                                                    require ext_code.size(address(_1065))
                                                                    call address(_1065).0x313ce567 with:
                                                                         gas gas_remaining wei
                                                                        args mem[mem[64] + 4 len (32 * arg1.length) + -mem[64] + 128]
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    idx = idx + 32
                                                                    continue 
                                                                require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
                                                                call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.mem[mem[64] len 4] with:
                                                                     gas gas_remaining wei
                                                                    args mem[mem[64] + 4], address(arg2), s / 10^18 / 10^(-_1073 + 18), mem[mem[64] + 100 len (32 * _1077) + 32]
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                require 2 < mem[96]
                                                                require 4 < mem[96]
                                                                _1157 = mem[256]
                                                                mem[mem[64] + 4] = mem[204 len 20]
                                                                require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                                                                call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                                                                     gas gas_remaining wei
                                                                    args mem[mem[64] + 4], address(_1157), ext_call.return_data[0]
                                                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 64
                                                                require s / 10^18
                                                                require 10^18 * ext_call.return_data[0] / s / 10^18
                                                                if t * u / 10^18 <= 10^18 * u / 10^18 * ext_call.return_data[0] / s / 10^18:
                                                                    if 2 <= w:
                                                                        return 0
                                                                    require 0 < mem[96]
                                                                    _1179 = mem[128]
                                                                    mem[mem[64] + 36] = mem[140 len 20]
                                                                    mem[mem[64] + 68] = 0
                                                                    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                                                                    call 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                                                                         gas gas_remaining wei
                                                                        args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(_1179), 0
                                                                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 64
                                                                    require 0 < mem[96]
                                                                    _1065 = mem[128]
                                                                    mem[mem[64]] = 0x313ce56700000000000000000000000000000000000000000000000000000000
                                                                    require ext_code.size(address(_1065))
                                                                    call address(_1065).0x313ce567 with:
                                                                         gas gas_remaining wei
                                                                        args mem[mem[64] + 4 len (32 * arg1.length) + -mem[64] + 128]
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    s = 0
                                                                    t = ext_call.return_data[0]
                                                                    u = 0
                                                                    v = 0
                                                                    w = 2
                                                                    x = x + 1
                                                                    y = 2
                                                                    y = 0
                                                                    continue 
                                                                require 10 * 10^18 * defaultAmount / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * defaultAmount / 10^18
                                                                if (10^18 * t * u / 10^18) - (10^18 * 10^18 * u / 10^18 * ext_call.return_data[0] / s / 10^18) / 10 * 10^18 * defaultAmount / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * defaultAmount / 10^18 <= w:
                                                                    return (-v + (x * v) / 10)
                                                                require 0 < mem[96]
                                                                _1187 = mem[128]
                                                                mem[mem[64] + 36] = mem[140 len 20]
                                                                mem[mem[64] + 68] = v + (x * v) / 10
                                                                require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                                                                call 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                                                                     gas gas_remaining wei
                                                                    args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(_1187), v + (x * v) / 10
                                                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 64
                                                                require 0 < mem[96]
                                                                _1065 = mem[128]
                                                                mem[mem[64]] = 0x313ce56700000000000000000000000000000000000000000000000000000000
                                                                require ext_code.size(address(_1065))
                                                                call address(_1065).0x313ce567 with:
                                                                     gas gas_remaining wei
                                                                    args mem[mem[64] + 4 len (32 * arg1.length) + -mem[64] + 128]
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                s = ext_call.return_data[0] * v + (x * v) / 10
                                                                t = ext_call.return_data[0]
                                                                u = v + (x * v) / 10
                                                                v = v + (x * v) / 10
                                                                w = (10^18 * t * u / 10^18) - (10^18 * 10^18 * u / 10^18 * ext_call.return_data[0] / s / 10^18) / 10 * 10^18 * defaultAmount / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * defaultAmount / 10^18
                                                                x = x + 1
                                                                y = (10^18 * t * u / 10^18) - (10^18 * 10^18 * u / 10^18 * ext_call.return_data[0] / s / 10^18) / 10 * 10^18 * defaultAmount / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * defaultAmount / 10^18
                                                                y = v
                                                                continue 
                                                    else:
                                                        require 10 * 10^18 * defaultAmount / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * defaultAmount / 10^18
                                                        require 0 < arg1.length
                                                        _750 = mem[128]
                                                        mem[(32 * arg1.length) + 128] = 0x809a9e5500000000000000000000000000000000000000000000000000000000
                                                        mem[(32 * arg1.length) + 132] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                                                        mem[(32 * arg1.length) + 164] = address(_750)
                                                        mem[(32 * arg1.length) + 196] = var138011
                                                        require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                                                        call 0x818e6fecd516ecc3849daf6845e3ec868087b755.mem[var140004 len 4] with:
                                                             gas gas_remaining wei
                                                            args mem[var140004 + 4 len var140005 - 4]
                                                        mem[var140006 len 64] = ext_call.return_data[0 len 64]
                                                        if ext_call.success:
                                                            require return_data.size >= 64
                                                            _981 = mem[var144002]
                                                            require 0 < arg1.length
                                                            _1068 = mem[128]
                                                            require ext_code.size(mem[140 len 20])
                                                            call mem[140 len 20].0x313ce567 with:
                                                                 gas gas_remaining wei
                                                            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                                                            s = _981 * var144008
                                                            t = _981
                                                            u = var144008
                                                            v = var144021
                                                            w = var144023
                                                            x = var144024
                                                            y = var144025
                                                            y = var144026
                                                            while ext_call.success:
                                                                require return_data.size >= 32
                                                                _1074 = mem[mem[64]]
                                                                require 10^(-mem[mem[64]] + 18)
                                                                mem[mem[64]] = 0x4ed8596100000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 36] = arg2
                                                                mem[mem[64] + 68] = s / 10^18 / 10^(-_1074 + 18)
                                                                mem[mem[64] + 4] = 96
                                                                mem[mem[64] + 100] = mem[96]
                                                                _1080 = mem[96]
                                                                idx = 0
                                                                while idx < 32 * _1080:
                                                                    mem[mem[64] + idx + 132] = mem[idx + 128]
                                                                    require 0 < mem[96]
                                                                    _1068 = mem[128]
                                                                    mem[mem[64]] = 0x313ce56700000000000000000000000000000000000000000000000000000000
                                                                    require ext_code.size(address(_1068))
                                                                    call address(_1068).0x313ce567 with:
                                                                         gas gas_remaining wei
                                                                        args mem[mem[64] + 4 len (32 * arg1.length) + -mem[64] + 128]
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    idx = idx + 32
                                                                    continue 
                                                                require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
                                                                call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.mem[mem[64] len 4] with:
                                                                     gas gas_remaining wei
                                                                    args mem[mem[64] + 4], address(arg2), s / 10^18 / 10^(-_1074 + 18), mem[mem[64] + 100 len (32 * _1080) + 32]
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                require 2 < mem[96]
                                                                require 4 < mem[96]
                                                                _1160 = mem[256]
                                                                mem[mem[64] + 4] = mem[204 len 20]
                                                                require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                                                                call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                                                                     gas gas_remaining wei
                                                                    args mem[mem[64] + 4], address(_1160), ext_call.return_data[0]
                                                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 64
                                                                require s / 10^18
                                                                require 10^18 * ext_call.return_data[0] / s / 10^18
                                                                if t * u / 10^18 <= 10^18 * u / 10^18 * ext_call.return_data[0] / s / 10^18:
                                                                    if 2 <= w:
                                                                        return 0
                                                                    require 0 < mem[96]
                                                                    _1183 = mem[128]
                                                                    mem[mem[64] + 36] = mem[140 len 20]
                                                                    mem[mem[64] + 68] = 0
                                                                    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                                                                    call 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                                                                         gas gas_remaining wei
                                                                        args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(_1183), 0
                                                                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 64
                                                                    require 0 < mem[96]
                                                                    _1068 = mem[128]
                                                                    mem[mem[64]] = 0x313ce56700000000000000000000000000000000000000000000000000000000
                                                                    require ext_code.size(address(_1068))
                                                                    call address(_1068).0x313ce567 with:
                                                                         gas gas_remaining wei
                                                                        args mem[mem[64] + 4 len (32 * arg1.length) + -mem[64] + 128]
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    s = 0
                                                                    t = ext_call.return_data[0]
                                                                    u = 0
                                                                    v = 0
                                                                    w = 2
                                                                    x = x + 1
                                                                    y = 2
                                                                    y = 0
                                                                    continue 
                                                                require 10 * 10^18 * defaultAmount / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * defaultAmount / 10^18
                                                                if (10^18 * t * u / 10^18) - (10^18 * 10^18 * u / 10^18 * ext_call.return_data[0] / s / 10^18) / 10 * 10^18 * defaultAmount / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * defaultAmount / 10^18 <= w:
                                                                    return (-v + (x * v) / 10)
                                                                require 0 < mem[96]
                                                                _1190 = mem[128]
                                                                mem[mem[64] + 36] = mem[140 len 20]
                                                                mem[mem[64] + 68] = v + (x * v) / 10
                                                                require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                                                                call 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                                                                     gas gas_remaining wei
                                                                    args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(_1190), v + (x * v) / 10
                                                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 64
                                                                require 0 < mem[96]
                                                                _1068 = mem[128]
                                                                mem[mem[64]] = 0x313ce56700000000000000000000000000000000000000000000000000000000
                                                                require ext_code.size(address(_1068))
                                                                call address(_1068).0x313ce567 with:
                                                                     gas gas_remaining wei
                                                                    args mem[mem[64] + 4 len (32 * arg1.length) + -mem[64] + 128]
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                s = ext_call.return_data[0] * v + (x * v) / 10
                                                                t = ext_call.return_data[0]
                                                                u = v + (x * v) / 10
                                                                v = v + (x * v) / 10
                                                                w = (10^18 * t * u / 10^18) - (10^18 * 10^18 * u / 10^18 * ext_call.return_data[0] / s / 10^18) / 10 * 10^18 * defaultAmount / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * defaultAmount / 10^18
                                                                x = x + 1
                                                                y = (10^18 * t * u / 10^18) - (10^18 * 10^18 * u / 10^18 * ext_call.return_data[0] / s / 10^18) / 10 * 10^18 * defaultAmount / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * defaultAmount / 10^18
                                                                y = v
                                                                continue 
    revert with ext_call.return_data[0 len return_data.size]
}

function sub_79107e5c(?) {
    mem[96] = 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315
    mem[128] = 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c
    mem[160] = 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c
    mem[192] = 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c
    mem[224] = arg2
    stor0.length = 5
    mem[0] = 0
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
    mem[256] = stor0.length
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
        require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
        call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
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
        _784 = mem[416]
        mem[(32 * stor0.length) + 324] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
        mem[(32 * stor0.length) + 356] = ext_call.return_data[0]
        require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
        call 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(_784), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, ext_call.return_data[0]
        mem[(32 * stor0.length) + 288 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_call.return_data[0]
        if 10^18 * defaultAmount / ext_call.return_data[0] >= ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18):
            return 0, 0, 1
        mem[64] = (64 * stor0.length) + 320
        mem[(32 * stor0.length) + 288] = stor0.length
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
            require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
            call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[32]), address(ext_call.return_data[0 len 28]), defaultAmount
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
            require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
            call 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(mem[(32 * stor0.length) + 448]), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_call.return_data[0]
            require 4 < stor0.length
            require ext_code.size(mem[(32 * stor0.length) + 460 len 20])
            call mem[(32 * stor0.length) + 460 len 20].0x313ce567 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 0 < stor0.length
            require 1 < stor0.length
            require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
            call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
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
                args mem[(64 * stor0.length) + 324 len (32 * stor0.length) + 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 4 < stor0.length
            require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
            call 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(mem[(32 * stor0.length) + 448]), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_call.return_data[0]
            require (4 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) - (2 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0])
            require 4 < stor0.length
            require ext_code.size(mem[(32 * stor0.length) + 460 len 20])
            call mem[(32 * stor0.length) + 460 len 20].0x313ce567 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 0 < stor0.length
            require 1 < stor0.length
            require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
            call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[32]), address(ext_call.return_data[0 len 28]), (10^18 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) - (10^18 * 10^18 * defaultAmount / ext_call.return_data[0] * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) / (4 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) - (2 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) / 10
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
                args mem[(64 * stor0.length) + 324 len (32 * stor0.length) + 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 4 < stor0.length
            _2130 = mem[(32 * stor0.length) + 448]
            mem[(64 * stor0.length) + 356] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
            mem[(64 * stor0.length) + 388] = ext_call.return_data[0]
            require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
            call 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(_2130), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, ext_call.return_data[0]
            mem[(64 * stor0.length) + 320 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_call.return_data[0]
            if 10^18 * (10^18 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) - (10^18 * 10^18 * defaultAmount / ext_call.return_data[0] * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) / (4 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) - (2 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) / 10 / ext_call.return_data[0] >= ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18):
                require 4 < stor0.length
                _5161 = mem[(32 * stor0.length) + 448]
                mem[(64 * stor0.length) + 320] = 0x313ce56700000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_5161))
                call var164002.mem[var164004 len 4] with:
                     gas gas_remaining wei
                    args mem[var164004 + 4 len var164005 - 4]
                mem[var164006] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 0 < stor0.length
                require 1 < stor0.length
                mem[(64 * stor0.length) + 320] = 0x1e1401f800000000000000000000000000000000000000000000000000000000
                mem[(64 * stor0.length) + 324] = address(var174003)
                mem[(64 * stor0.length) + 356] = address(ext_call.return_data[0 len 28])
                mem[(64 * stor0.length) + 388] = var174011
                require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                call 0xcbc6a023eb975a1e2630223a7959988948e664f3.mem[var176004 len 4] with:
                     gas gas_remaining wei
                    args mem[var176004 + 4 len var176005 - 4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                # nil
            else:
                require 10 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)
                require 4 < stor0.length
                _5164 = mem[(32 * stor0.length) + 448]
                mem[(64 * stor0.length) + 320] = 0x313ce56700000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_5164))
                call var165002.mem[var165004 len 4] with:
                     gas gas_remaining wei
                    args mem[var165004 + 4 len var165005 - 4]
                mem[var165006] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 0 < stor0.length
                require 1 < stor0.length
                mem[(64 * stor0.length) + 320] = 0x1e1401f800000000000000000000000000000000000000000000000000000000
                mem[(64 * stor0.length) + 324] = address(var175003)
                mem[(64 * stor0.length) + 356] = address(ext_call.return_data[0 len 28])
                mem[(64 * stor0.length) + 388] = var175011
                require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                call 0xcbc6a023eb975a1e2630223a7959988948e664f3.mem[var177004 len 4] with:
                     gas gas_remaining wei
                    args mem[var177004 + 4 len var177005 - 4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                # nil
        else:
            mem[0] = 0
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
            _1507 = mem[(32 * stor0.length) + 352]
            mem[(64 * stor0.length) + 324] = mem[(32 * stor0.length) + 332 len 20]
            require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
            call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args mem[(64 * stor0.length) + 324], address(_1507), defaultAmount
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
            _2171 = mem[(32 * stor0.length) + 352]
            mem[(64 * stor0.length) + 324] = mem[(32 * stor0.length) + 332 len 20]
            require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
            call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args mem[(64 * stor0.length) + 324], address(_2171), 2 * defaultAmount
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
            _2793 = mem[(32 * stor0.length) + 352]
            mem[(64 * stor0.length) + 324] = mem[(32 * stor0.length) + 332 len 20]
            require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
            call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args mem[(64 * stor0.length) + 324], address(_2793), (10^18 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) - (10^18 * 10^18 * defaultAmount / ext_call.return_data[0] * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) / (4 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) - (2 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) / 10
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
            if 10^18 * (10^18 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) - (10^18 * 10^18 * defaultAmount / ext_call.return_data[0] * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) / (4 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) - (2 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) / 10 / ext_call.return_data[0] >= ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18):
                require 4 < stor0.length
                _6281 = mem[(32 * stor0.length) + 448]
                mem[(64 * stor0.length) + 320] = 0x313ce56700000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_6281))
                call var168002.mem[var168004 len 4] with:
                     gas gas_remaining wei
                    args mem[var168004 + 4 len var168005 - 4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 0 < stor0.length
                require 1 < stor0.length
                require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                # nil
            else:
                require 10 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)
                require 4 < stor0.length
                _6284 = mem[(32 * stor0.length) + 448]
                mem[(64 * stor0.length) + 320] = 0x313ce56700000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_6284))
                call var169002.mem[var169004 len 4] with:
                     gas gas_remaining wei
                    args mem[var169004 + 4 len var169005 - 4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 0 < stor0.length
                require 1 < stor0.length
                require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                # nil
    else:
        mem[0] = 0
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
        _1035 = mem[320]
        mem[(32 * stor0.length) + 292] = mem[300 len 20]
        require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
        call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args mem[(32 * stor0.length) + 292], address(_1035), defaultAmount
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
        mem[64] = (64 * stor0.length) + 320
        mem[(32 * stor0.length) + 288] = stor0.length
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
            require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
            call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args ext_call.return_data[44 len 20], address(ext_call.return_data[0 len 28]), defaultAmount
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
            require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
            call 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args mem[(64 * stor0.length) + 324], 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_call.return_data[0]
            require 4 < stor0.length
            require ext_code.size(mem[(32 * stor0.length) + 460 len 20])
            call mem[(32 * stor0.length) + 460 len 20].0x313ce567 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 0 < stor0.length
            require 1 < stor0.length
            require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
            call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
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
            require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
            call 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args mem[(64 * stor0.length) + 324], 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_call.return_data[0]
            require (4 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) - (2 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0])
            require 4 < stor0.length
            require ext_code.size(mem[(32 * stor0.length) + 460 len 20])
            call mem[(32 * stor0.length) + 460 len 20].0x313ce567 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 0 < stor0.length
            require 1 < stor0.length
            require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
            call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args ext_call.return_data[44 len 20], address(ext_call.return_data[0 len 28]), (10^18 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) - (10^18 * 10^18 * defaultAmount / ext_call.return_data[0] * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) / (4 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) - (2 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) / 10
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
            if 10^18 * (10^18 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) - (10^18 * 10^18 * defaultAmount / ext_call.return_data[0] * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) / (4 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) - (2 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) / 10 / ext_call.return_data[0] >= ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18):
                require 4 < stor0.length
                _6287 = mem[(32 * stor0.length) + 448]
                mem[(64 * stor0.length) + 320] = 0x313ce56700000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_6287))
                call var168002.mem[var168004 len 4] with:
                     gas gas_remaining wei
                    args mem[var168004 + 4 len var168005 - 4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 0 < stor0.length
                require 1 < stor0.length
                require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                # nil
            else:
                require 10 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)
                require 4 < stor0.length
                _6290 = mem[(32 * stor0.length) + 448]
                mem[(64 * stor0.length) + 320] = 0x313ce56700000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_6290))
                call var169002.mem[var169004 len 4] with:
                     gas gas_remaining wei
                    args mem[var169004 + 4 len var169005 - 4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 0 < stor0.length
                require 1 < stor0.length
                require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                # nil
        else:
            mem[0] = 0
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
            _2721 = mem[(32 * stor0.length) + 352]
            mem[(64 * stor0.length) + 324] = mem[(32 * stor0.length) + 332 len 20]
            require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
            call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args mem[(64 * stor0.length) + 324], address(_2721), defaultAmount
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
            _3487 = mem[(32 * stor0.length) + 352]
            mem[(64 * stor0.length) + 324] = mem[(32 * stor0.length) + 332 len 20]
            require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
            call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args mem[(64 * stor0.length) + 324], address(_3487), 2 * defaultAmount
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
            _4204 = mem[(32 * stor0.length) + 352]
            mem[(64 * stor0.length) + 324] = mem[(32 * stor0.length) + 332 len 20]
            require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
            call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args mem[(64 * stor0.length) + 324], address(_4204), (10^18 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) - (10^18 * 10^18 * defaultAmount / ext_call.return_data[0] * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) / (4 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) - (2 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) / 10
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
            if 10^18 * (10^18 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) - (10^18 * 10^18 * defaultAmount / ext_call.return_data[0] * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) / (4 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) - (2 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) / 10 / ext_call.return_data[0] >= ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18):
                require 4 < stor0.length
                _7447 = mem[(32 * stor0.length) + 448]
                mem[(64 * stor0.length) + 320] = 0x313ce56700000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_7447))
                call var172002.mem[var172004 len 4] with:
                     gas gas_remaining wei
                    args mem[var172004 + 4 len var172005 - 4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 0 < stor0.length
                # nil
            else:
                require 10 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)
                require 4 < stor0.length
                _7450 = mem[(32 * stor0.length) + 448]
                mem[(64 * stor0.length) + 320] = 0x313ce56700000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_7450))
                call var173002.mem[var173004 len 4] with:
                     gas gas_remaining wei
                    args mem[var173004 + 4 len var173005 - 4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 0 < stor0.length
                # nil
}



}
