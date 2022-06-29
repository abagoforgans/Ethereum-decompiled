contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
  stop
}

function sub_6c27620f(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.tokenAddress() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], eth.balance(arg1)
}

function sub_760a6478(?) payable {
    require calldata.size - 4 >= 160
    require ext_code.size(arg1)
    staticcall arg1.tokenAddress() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg2:
        require ext_code.size(arg1)
        call arg1.ethToTokenSwapInput(uint256 arg1, uint256 arg2) with:
           value msg.value wei
             gas gas_remaining wei
            args arg3, arg4
    else:
        if arg2 != 1:
            return ext_call.return_data[0], eth.balance(arg1), code.data[1936 len 32], eth.balance(arg5), block.timestamp
        require ext_code.size(arg1)
        call arg1.ethToTokenSwapOutput(uint256 arg1, uint256 arg2) with:
           value msg.value wei
             gas gas_remaining wei
            args arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], eth.balance(arg1), ext_call.return_data[0], eth.balance(arg5), block.timestamp
}

function sub_c5a0ec3f(?) payable {
    require calldata.size - 4 >= 160
    require ext_code.size(arg1)
    staticcall arg1.tokenAddress() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.ethToTokenSwapInput(uint256 arg1, uint256 arg2) with:
       value arg3 wei
         gas gas_remaining wei
        args 1, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    if not arg2:
        call arg1.ethToTokenSwapInput(uint256 arg1, uint256 arg2) with:
           value arg4 wei
             gas gas_remaining wei
            args arg5, block.timestamp
    else:
        if arg2 != 1:
            staticcall arg1.tokenAddress() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            call arg1.tokenToEthSwapInput(uint256 arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 1, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return ext_call.return_data[0], code.data[1904 len 32], ext_call.return_data[0], ext_call.return_data[0]
        call arg1.ethToTokenSwapOutput(uint256 arg1, uint256 arg2) with:
           value arg4 wei
             gas gas_remaining wei
            args arg5, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.tokenAddress() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.tokenToEthSwapInput(uint256 arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 1, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0]
}



}
