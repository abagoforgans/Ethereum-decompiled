contract main {




// =====================  Runtime code  =====================


#
#  - sub_d0b82efa(?)
#
array of struct stor0;
uint256 stor3;
uint256 defaultAmount;
address stor6;

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

function sub_1c67eceb(?) {
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
    require ext_code.size(stor6)
    call stor6.gasPrice() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg5 <= ext_call.return_data[0]:
        if arg2 * arg1 / 10^18 >= ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18):
            return 0, 0, 1
        require 1000 * arg2
        if (10^18 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) - (10^18 * 1000 * arg2 * arg1 / 10^18) / 1000 * arg2 <= stor3 * arg5:
            return 0, 
                   (10^18 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) - (10^18 * 1000 * arg2 * arg1 / 10^18) / 1000 * arg2,
                   arg5
        return arg1, 
               (10^18 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) - (10^18 * 1000 * arg2 * arg1 / 10^18) / 1000 * arg2,
               arg5
    require ext_code.size(stor6)
    call stor6.gasPrice() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 * arg1 / 10^18 >= ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18):
        return 0, 0, 1
    require 1000 * arg2
    if (10^18 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) - (10^18 * 1000 * arg2 * arg1 / 10^18) / 1000 * arg2 <= stor3 * ext_call.return_data[0]:
        return 0, 
               (10^18 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) - (10^18 * 1000 * arg2 * arg1 / 10^18) / 1000 * arg2,
               ext_call.return_data[0]
    return arg1, 
           (10^18 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) - (10^18 * 1000 * arg2 * arg1 / 10^18) / 1000 * arg2,
           ext_call.return_data[0]
}

function sub_0bf5bb2f(?) {
    mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require 0 < arg4.length
    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
    call 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(mem[128]), arg1
    mem[(32 * arg4.length) + 128 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require 0 < arg4.length
    require ext_code.size(mem[140 len 20])
    call mem[140 len 20].0x313ce567 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 10^(-ext_call.return_data[0] + 18)
    mem[(32 * arg4.length) + 164] = arg5
    mem[(32 * arg4.length) + 196] = ext_call.return_data[0] * arg1 / 10^18 / 10^(-ext_call.return_data[0] + 18)
    mem[(32 * arg4.length) + 132] = 96
    mem[(32 * arg4.length) + 228] = arg4.length
    mem[(32 * arg4.length) + 260 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
    call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0x4ed85961 with:
         gas gas_remaining wei
        args Array(len=arg4.length, data=call.data[arg4 + 36 len floor32(arg4.length)], mem[(32 * arg4.length) + floor32(arg4.length) + 260 len (32 * arg4.length) - floor32(arg4.length)]), address(arg5), ext_call.return_data[0] * arg1 / 10^18 / 10^(-ext_call.return_data[0] + 18)
    mem[(32 * arg4.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 2 < arg4.length
    require 4 < arg4.length
    require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
    call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(mem[192]), address(mem[256]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] * arg1 / 10^18
    require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg1 / 10^18
    require ext_code.size(stor6)
    call stor6.gasPrice() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg6 <= ext_call.return_data[0]:
        if arg3 * arg1 / 10^18 <= 10^18 * arg1 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg1 / 10^18:
            return 0, 0, 1
        require 1000 * arg2
        if (10^18 * 1000 * arg3 * arg1 / 10^18) - (10^18 * 10^18 * arg1 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg1 / 10^18) / 1000 * arg2 <= stor3 * arg6:
            return 0, 
                   (10^18 * 1000 * arg3 * arg1 / 10^18) - (10^18 * 10^18 * arg1 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg1 / 10^18) / 1000 * arg2,
                   arg6
        return arg1, 
               (10^18 * 1000 * arg3 * arg1 / 10^18) - (10^18 * 10^18 * arg1 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg1 / 10^18) / 1000 * arg2,
               arg6
    require ext_code.size(stor6)
    call stor6.gasPrice() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg3 * arg1 / 10^18 <= 10^18 * arg1 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg1 / 10^18:
        return 0, 0, 1
    require 1000 * arg2
    if (10^18 * 1000 * arg3 * arg1 / 10^18) - (10^18 * 10^18 * arg1 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg1 / 10^18) / 1000 * arg2 <= stor3 * ext_call.return_data[0]:
        return 0, 
               (10^18 * 1000 * arg3 * arg1 / 10^18) - (10^18 * 10^18 * arg1 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg1 / 10^18) / 1000 * arg2,
               ext_call.return_data[0]
    return arg1, 
           (10^18 * 1000 * arg3 * arg1 / 10^18) - (10^18 * 10^18 * arg1 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg1 / 10^18) / 1000 * arg2,
           ext_call.return_data[0]
}

function sub_7086e7a4(?) {
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
    _67 = mem[256]
    mem[(32 * arg1.length) + 164] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
    mem[(32 * arg1.length) + 196] = ext_call.return_data[0]
    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
    call 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(_67), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, ext_call.return_data[0]
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
    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
    call 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(mem[256]), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0]
    require (4 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) - (2 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0])
    return ((10^18 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) - (10^18 * 10^18 * defaultAmount / ext_call.return_data[0] * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) / (4 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) - (2 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) / 1000)
}

function sub_f3e461a1(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require 0 < arg1.length
    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
    call 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(mem[128]), defaultAmount
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
    mem[(32 * arg1.length) + 196] = ext_call.return_data[0] * defaultAmount / 10^18 / 10^(-ext_call.return_data[0] + 18)
    mem[(32 * arg1.length) + 132] = 96
    mem[(32 * arg1.length) + 228] = arg1.length
    mem[(32 * arg1.length) + 260 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
    call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0x4ed85961 with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 260 len (32 * arg1.length) - floor32(arg1.length)]), address(arg2), ext_call.return_data[0] * defaultAmount / 10^18 / 10^(-ext_call.return_data[0] + 18)
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
    mem[(32 * arg1.length) + 128 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] * defaultAmount / 10^18
    require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * defaultAmount / 10^18
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
    mem[(32 * arg1.length) + 196] = ext_call.return_data[0] * 2 * defaultAmount / 10^18 / 10^(-ext_call.return_data[0] + 18)
    mem[(32 * arg1.length) + 132] = 96
    mem[(32 * arg1.length) + 228] = arg1.length
    mem[(32 * arg1.length) + 260 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
    call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0x4ed85961 with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 260 len (32 * arg1.length) - floor32(arg1.length)]), address(arg2), ext_call.return_data[0] * 2 * defaultAmount / 10^18 / 10^(-ext_call.return_data[0] + 18)
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
    require ext_call.return_data[0] * 2 * defaultAmount / 10^18
    require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 2 * defaultAmount / 10^18
    require (4 * 10^18 * defaultAmount / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * defaultAmount / 10^18 * ext_call.return_data[0] * defaultAmount / 10^18) - (2 * 10^18 * 2 * defaultAmount / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 2 * defaultAmount / 10^18 * ext_call.return_data[0] * defaultAmount / 10^18)
    return ((10^18 * ext_call.return_data[0] * defaultAmount / 10^18 * 10^18 * 2 * defaultAmount / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 2 * defaultAmount / 10^18) - (10^18 * 10^18 * defaultAmount / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * defaultAmount / 10^18 * 10^18 * 2 * defaultAmount / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 2 * defaultAmount / 10^18) / (4 * 10^18 * defaultAmount / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * defaultAmount / 10^18 * ext_call.return_data[0] * defaultAmount / 10^18) - (2 * 10^18 * 2 * defaultAmount / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 2 * defaultAmount / 10^18 * ext_call.return_data[0] * defaultAmount / 10^18))
}

function sub_7943c141(?) {
    mem[96] = 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315
    mem[128] = 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c
    mem[160] = 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c
    mem[192] = 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c
    mem[224] = arg2
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
        _448 = mem[416]
        mem[(32 * stor0.length) + 324] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
        mem[(32 * stor0.length) + 356] = ext_call.return_data[0]
        require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
        call 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(_448), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, ext_call.return_data[0]
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
            _821 = mem[(32 * stor0.length) + 448]
            mem[(64 * stor0.length) + 356] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
            mem[(64 * stor0.length) + 388] = ext_call.return_data[0]
            require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
            call 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(_821), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, ext_call.return_data[0]
            mem[(64 * stor0.length) + 320 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_call.return_data[0]
            require (4 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) - (2 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0])
            if (10^18 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) - (10^18 * 10^18 * defaultAmount / ext_call.return_data[0] * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) / (4 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) - (2 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) / 1000 <= 0:
                return 0, ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18), 10^18 * defaultAmount / ext_call.return_data[0]
            if not stor0.length:
                require 4 < stor0.length
                require ext_code.size(mem[(64 * stor0.length) + 492 len 20])
                call mem[(64 * stor0.length) + 492 len 20].0x313ce567 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 0 < stor0.length
                require 1 < stor0.length
                require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[32]), address(ext_call.return_data[0 len 28]), (10^18 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) - (10^18 * 10^18 * defaultAmount / ext_call.return_data[0] * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) / (4 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) - (2 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) / 1000
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
                require 0 < stor0.length
                require 1 < stor0.length
                _1360 = mem[(64 * stor0.length) + 384]
                mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 364 len 20]
                require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args mem[(98 * stor0.length) + 356], address(_1360), (10^18 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) - (10^18 * 10^18 * defaultAmount / ext_call.return_data[0] * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) / (4 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) - (2 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) / 1000
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
            _835 = mem[(32 * stor0.length) + 352]
            mem[(64 * stor0.length) + 324] = mem[(32 * stor0.length) + 332 len 20]
            require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
            call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args mem[(64 * stor0.length) + 324], address(_835), defaultAmount
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
            _1166 = mem[(32 * stor0.length) + 352]
            mem[(64 * stor0.length) + 324] = mem[(32 * stor0.length) + 332 len 20]
            require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
            call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args mem[(64 * stor0.length) + 324], address(_1166), 2 * defaultAmount
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
            if (10^18 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) - (10^18 * 10^18 * defaultAmount / ext_call.return_data[0] * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) / (4 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) - (2 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) / 1000 <= 0:
                return 0, ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18), 10^18 * defaultAmount / ext_call.return_data[0]
            if not stor0.length:
                require 4 < stor0.length
                require ext_code.size(mem[(64 * stor0.length) + 492 len 20])
                call mem[(64 * stor0.length) + 492 len 20].0x313ce567 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 0 < stor0.length
                require 1 < stor0.length
                require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args ext_call.return_data[44 len 20], address(ext_call.return_data[0 len 28]), (10^18 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) - (10^18 * 10^18 * defaultAmount / ext_call.return_data[0] * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) / (4 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) - (2 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) / 1000
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
                require 0 < stor0.length
                require 1 < stor0.length
                _1825 = mem[(64 * stor0.length) + 384]
                mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 364 len 20]
                require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args mem[(98 * stor0.length) + 356], address(_1825), (10^18 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) - (10^18 * 10^18 * defaultAmount / ext_call.return_data[0] * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) / (4 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) - (2 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) / 1000
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
        _587 = mem[320]
        mem[(32 * stor0.length) + 292] = mem[300 len 20]
        require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
        call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args mem[(32 * stor0.length) + 292], address(_587), defaultAmount
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
            if (10^18 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) - (10^18 * 10^18 * defaultAmount / ext_call.return_data[0] * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) / (4 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) - (2 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) / 1000 <= 0:
                return 0, ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18), 10^18 * defaultAmount / ext_call.return_data[0]
            if not stor0.length:
                require 4 < stor0.length
                require ext_code.size(mem[(64 * stor0.length) + 492 len 20])
                call mem[(64 * stor0.length) + 492 len 20].0x313ce567 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 0 < stor0.length
                require 1 < stor0.length
                require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args ext_call.return_data[44 len 20], address(ext_call.return_data[0 len 28]), (10^18 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) - (10^18 * 10^18 * defaultAmount / ext_call.return_data[0] * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) / (4 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) - (2 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) / 1000
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
                require 0 < stor0.length
                require 1 < stor0.length
                _1828 = mem[(64 * stor0.length) + 384]
                mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 364 len 20]
                require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args mem[(98 * stor0.length) + 356], address(_1828), (10^18 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) - (10^18 * 10^18 * defaultAmount / ext_call.return_data[0] * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) / (4 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) - (2 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) / 1000
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
            _1367 = mem[(32 * stor0.length) + 352]
            mem[(64 * stor0.length) + 324] = mem[(32 * stor0.length) + 332 len 20]
            require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
            call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args mem[(64 * stor0.length) + 324], address(_1367), defaultAmount
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
            _1689 = mem[(32 * stor0.length) + 352]
            mem[(64 * stor0.length) + 324] = mem[(32 * stor0.length) + 332 len 20]
            require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
            call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args mem[(64 * stor0.length) + 324], address(_1689), 2 * defaultAmount
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
            if (10^18 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) - (10^18 * 10^18 * defaultAmount / ext_call.return_data[0] * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) / (4 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) - (2 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) / 1000 <= 0:
                return 0, ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18), 10^18 * defaultAmount / ext_call.return_data[0]
            if not stor0.length:
                require 4 < stor0.length
                require ext_code.size(mem[(64 * stor0.length) + 492 len 20])
                call mem[(64 * stor0.length) + 492 len 20].0x313ce567 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 0 < stor0.length
                require 1 < stor0.length
                require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args ext_call.return_data[44 len 20], address(ext_call.return_data[0 len 28]), (10^18 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) - (10^18 * 10^18 * defaultAmount / ext_call.return_data[0] * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) / (4 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) - (2 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) / 1000
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
                require 0 < stor0.length
                require 1 < stor0.length
                _2062 = mem[(64 * stor0.length) + 384]
                mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 364 len 20]
                require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args mem[(98 * stor0.length) + 356], address(_2062), (10^18 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) - (10^18 * 10^18 * defaultAmount / ext_call.return_data[0] * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) / (4 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) - (2 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) / 1000
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
    require ext_code.size(stor6)
    call stor6.gasPrice() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg3 <= ext_call.return_data[0]:
        if 10^18 * defaultAmount / ext_call.return_data[0] * (10^18 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) - (10^18 * 10^18 * defaultAmount / ext_call.return_data[0] * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) / (4 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) - (2 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) / 1000 / 10^18 >= ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18):
            return 0, 0, 1
        require 1000 * 10^18 * defaultAmount / ext_call.return_data[0]
        if (10^18 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) - (10^18 * 1000 * 10^18 * defaultAmount / ext_call.return_data[0] * (10^18 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) - (10^18 * 10^18 * defaultAmount / ext_call.return_data[0] * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) / (4 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) - (2 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) / 1000 / 10^18) / 1000 * 10^18 * defaultAmount / ext_call.return_data[0] <= stor3 * arg3:
            return 0, 
                   (10^18 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) - (10^18 * 1000 * 10^18 * defaultAmount / ext_call.return_data[0] * (10^18 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) - (10^18 * 10^18 * defaultAmount / ext_call.return_data[0] * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) / (4 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) - (2 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) / 1000 / 10^18) / 1000 * 10^18 * defaultAmount / ext_call.return_data[0],
                   arg3
        return (10^18 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) - (10^18 * 10^18 * defaultAmount / ext_call.return_data[0] * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) / (4 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) - (2 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) / 1000, 
               (10^18 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) - (10^18 * 1000 * 10^18 * defaultAmount / ext_call.return_data[0] * (10^18 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) - (10^18 * 10^18 * defaultAmount / ext_call.return_data[0] * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) / (4 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) - (2 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) / 1000 / 10^18) / 1000 * 10^18 * defaultAmount / ext_call.return_data[0],
               arg3
    require ext_code.size(stor6)
    call stor6.gasPrice() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 10^18 * defaultAmount / ext_call.return_data[0] * (10^18 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) - (10^18 * 10^18 * defaultAmount / ext_call.return_data[0] * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) / (4 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) - (2 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) / 1000 / 10^18 >= ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18):
        return 0, 0, 1
    require 1000 * 10^18 * defaultAmount / ext_call.return_data[0]
    if (10^18 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) - (10^18 * 1000 * 10^18 * defaultAmount / ext_call.return_data[0] * (10^18 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) - (10^18 * 10^18 * defaultAmount / ext_call.return_data[0] * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) / (4 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) - (2 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) / 1000 / 10^18) / 1000 * 10^18 * defaultAmount / ext_call.return_data[0] <= stor3 * ext_call.return_data[0]:
        return 0, 
               (10^18 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) - (10^18 * 1000 * 10^18 * defaultAmount / ext_call.return_data[0] * (10^18 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) - (10^18 * 10^18 * defaultAmount / ext_call.return_data[0] * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) / (4 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) - (2 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) / 1000 / 10^18) / 1000 * 10^18 * defaultAmount / ext_call.return_data[0],
               ext_call.return_data[0]
    return (10^18 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) - (10^18 * 10^18 * defaultAmount / ext_call.return_data[0] * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) / (4 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) - (2 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) / 1000, 
           (10^18 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) - (10^18 * 1000 * 10^18 * defaultAmount / ext_call.return_data[0] * (10^18 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) - (10^18 * 10^18 * defaultAmount / ext_call.return_data[0] * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) / (4 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) - (2 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * 10^18 * defaultAmount / ext_call.return_data[0]) / 1000 / 10^18) / 1000 * 10^18 * defaultAmount / ext_call.return_data[0],
           ext_call.return_data[0]
}



}
