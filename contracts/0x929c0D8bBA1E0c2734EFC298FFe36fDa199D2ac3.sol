contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_f4bd4298(?) {
    require calldata.size - 4 >= 160
    if arg5 <= 0:
        revert with 0, 'no-wipe-no-dai'
    require ext_code.size(arg1)
    staticcall arg1.sai() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.gov() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.pep() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    if ext_call.return_data[0] != -1:
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    if ext_call.return_data[0] != -1:
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    if ext_call.return_data[0] != -1:
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    call address(ext_call.return_data[0]).peek() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(arg1)
    call arg1.rap(bytes32 arg1) with:
         gas gas_remaining wei
        args arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.tab(bytes32 arg1) with:
         gas gas_remaining wei
        args arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 1000000000 * 10^18 * ext_call.return_data[0] / 1000000000 * 10^18 != ext_call.return_data[0]:
        revert with 0, 'math-not-safe'
    if (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) < 1000000000 * 10^18 * ext_call.return_data[0]:
        revert with 0, 'math-not-safe'
    require ext_call.return_data[0]
    if not (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
        if ext_call.return_data[0] / 2 < 0:
            revert with 0, 'math-not-safe'
        require ext_call.return_data[0]
        require ext_code.size(arg3)
        staticcall arg3.getEthToTokenOutputPrice(uint256 arg1) with:
                gas gas_remaining wei
               args (ext_call.return_data[0] / 2 / ext_call.return_data[0])
    else:
        require (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
        if arg5 * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] / (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] != arg5:
            revert with 0, 'math-not-safe'
        if (arg5 * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 < arg5 * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
            revert with 0, 'math-not-safe'
        if 10^18 * (arg5 * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 / 10^18 != (arg5 * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18:
            revert with 0, 'math-not-safe'
        if (10^18 * (arg5 * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) < 10^18 * (arg5 * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18:
            revert with 0, 'math-not-safe'
        require ext_call.return_data[0]
        require ext_code.size(arg3)
        staticcall arg3.getEthToTokenOutputPrice(uint256 arg1) with:
                gas gas_remaining wei
               args ((10^18 * (arg5 * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    staticcall arg2.getTokenToEthOutputPrice(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg5 + ext_call.return_data[0] < arg5:
        revert with 0, 'math-not-safe'
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg5 + ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'not-approved-yet'
    if ext_call.return_data[32]:
        if ext_call.return_data[0]:
            require ext_code.size(arg2)
            call arg2.tokenToTokenSwapOutput(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                 gas gas_remaining wei
                args 0, ext_call.return_data[32], uint32(arg5 + ext_call.return_data[0]), 2775 * 10^14 * 24 * 3600, 1645118771, address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.wipe(bytes32 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg4, arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
