contract main {




// =====================  Runtime code  =====================


uint256 defaultAmount;
address stor2;
address stor3;

function defaultAmount() {
    return defaultAmount
}

function _fallback() payable {
  stop
}

function sub_f6bb28b5(?) {
    require ext_code.size(stor3)
    call stor3.getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, 10 * defaultAmount
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0]
    require (997 * arg2) + (-9970 * defaultAmount) + 10^18
    require 10 * defaultAmount
    require (997 * arg2) + (-19940 * defaultAmount) + 10^18
    require 20 * defaultAmount
    require 10 * 10^18 * defaultAmount / ext_call.return_data[0]
    require arg4 - (10 * defaultAmount) - arg5
    require 10 * 10^18 * defaultAmount / ext_call.return_data[0]
    require arg4 - (20 * defaultAmount) - arg5
    return 10^18 * 10000 * defaultAmount * arg1 / (997 * arg2) + (-9970 * defaultAmount) + 10^18 / 10 * defaultAmount, 
           10^18 * 20000 * defaultAmount * arg1 / (997 * arg2) + (-19940 * defaultAmount) + 10^18 / 20 * defaultAmount,
           998 * (10^18 * arg3) + (10^18 * 10^18 * arg6 / 10 * 10^18 * defaultAmount / ext_call.return_data[0]) / arg4 - (10 * defaultAmount) - arg5 / 1000 * 10 * 10^18 * defaultAmount / ext_call.return_data[0] / 10^18,
           uint255(998 * (10^18 * arg3) + (10^18 * 10^18 * arg6 / 10 * 10^18 * defaultAmount / ext_call.return_data[0]) / arg4 - (20 * defaultAmount) - arg5 / 1000) * 10 * 10^18 * defaultAmount / ext_call.return_data[0] / 10^18
}

function sub_3e586c2f(?) {
    require ext_code.size(stor2)
    call stor2.getExchange(address arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor2)
    call stor2.getExchange(address arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    call arg2.0x70a08231 with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c)
    call 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    call arg2.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor3)
    call stor3.getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, 10 * defaultAmount
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0]
    require (997 * ext_call.return_data[0]) + (-9970 * defaultAmount) + 10^18
    require 10 * defaultAmount
    require (997 * ext_call.return_data[0]) + (-19940 * defaultAmount) + 10^18
    require 20 * defaultAmount
    require 10 * 10^18 * defaultAmount / ext_call.return_data[0]
    require ext_call.return_data[0] - (10 * defaultAmount) - arg3
    require 10 * 10^18 * defaultAmount / ext_call.return_data[0]
    require ext_call.return_data[0] - (20 * defaultAmount) - arg3
    return 10^18 * 10000 * defaultAmount * eth.balance(ext_call.return_data[0]) / (997 * ext_call.return_data[0]) + (-9970 * defaultAmount) + 10^18 / 10 * defaultAmount, 
           10^18 * 20000 * defaultAmount * eth.balance(ext_call.return_data[0]) / (997 * ext_call.return_data[0]) + (-19940 * defaultAmount) + 10^18 / 20 * defaultAmount,
           998 * (10^18 * ext_call.return_data[0]) + (10^18 * 10^18 * arg4 / 10 * 10^18 * defaultAmount / ext_call.return_data[0]) / ext_call.return_data[0] - (10 * defaultAmount) - arg3 / 1000 * 10 * 10^18 * defaultAmount / ext_call.return_data[0] / 10^18,
           uint255(998 * (10^18 * ext_call.return_data[0]) + (10^18 * 10^18 * arg4 / 10 * 10^18 * defaultAmount / ext_call.return_data[0]) / ext_call.return_data[0] - (20 * defaultAmount) - arg3 / 1000) * 10 * 10^18 * defaultAmount / ext_call.return_data[0] / 10^18
}



}
