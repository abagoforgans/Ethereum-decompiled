contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 1788]




// =====================  Runtime code  =====================


function sub_1ca4695f(?) payable {
    if Mask(8, 248, call.data[4]):
        if eth.balance(call.data[4]) >= call.data[68]:
            return call.data[132], 0
        if eth.balance(call.data[4]) <= call.data[100]:
            return 0
        if call.data[68] - call.data[100]:
            return (eth.balance(call.data[4]) * call.data[132]) - (call.data[100] * call.data[132]) / call.data[68] - call.data[100], 0
    else:
        require ext_code.size(address(call.data[36]))
        call address(call.data[36]).balanceOf(address arg1) with:
             gas gas_remaining - 710 wei
            args address(call.data[4])
        require ext_call.success
        if ext_call.return_data[0] >= call.data[68]:
            return call.data[132], 0
        if ext_call.return_data[0] <= call.data[100]:
            return 0
        if call.data[68] - call.data[100]:
            return (ext_call.return_data[0] * call.data[132]) - (call.data[100] * call.data[132]) / call.data[68] - call.data[100], 0
    ('iszero', ('add', ('call.data', 68, 32), ('mul', -1, ('call.data', 100, 32))))
    revert
}

function sub_51d88471(?) payable {
    if not Mask(8, 248, call.data[4]):
        require ext_code.size(address(call.data[4]))
        call address(call.data[4]).ethToTokenSwapInput(uint256 arg1, uint256 arg2) with:
           value call.data[132] wei
             gas gas_remaining - 9710 wei
            args 1, block.timestamp
    else:
        require ext_code.size(address(call.data[36]))
        call address(call.data[36]).balanceOf(address arg1) with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_code.size(address(call.data[36]))
        if call.data[132] >= ext_call.return_data[0]:
            call address(call.data[36]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining - 710 wei
                args address(call.data[4]), ext_call.return_data[0]
            require ext_call.success
            require ext_call.return_data[0]
            require ext_code.size(address(call.data[4]))
            call address(call.data[4]).tokenToEthSwapInput(uint256 arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining - 710 wei
                args ext_call.return_data[0], 1, block.timestamp
        else:
            call address(call.data[36]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining - 710 wei
                args address(call.data[4]), call.data[132]
            require ext_call.success
            require ext_call.return_data[0]
            require ext_code.size(address(call.data[4]))
            call address(call.data[4]).tokenToEthSwapInput(uint256 arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining - 710 wei
                args call.data[132], 1, block.timestamp
    require ext_call.success
}

function _fallback() payable {
    if unknown_0x1ca4695f(?????) == uint32(call.func_hash):
        if Mask(8, 248, call.data[4]):
            if eth.balance(call.data[4]) >= call.data[68]:
                return call.data[132], 0
            if eth.balance(call.data[4]) <= call.data[100]:
                return 0
            if call.data[68] - call.data[100]:
                return (eth.balance(call.data[4]) * call.data[132]) - (call.data[100] * call.data[132]) / call.data[68] - call.data[100], 0
        else:
            require ext_code.size(address(call.data[36]))
            call address(call.data[36]).balanceOf(address arg1) with:
                 gas gas_remaining - 710 wei
                args address(call.data[4])
            require ext_call.success
            if ext_call.return_data[0] >= call.data[68]:
                return call.data[132], 0
            if ext_call.return_data[0] <= call.data[100]:
                return 0
            if call.data[68] - call.data[100]:
                return (ext_call.return_data[0] * call.data[132]) - (call.data[100] * call.data[132]) / call.data[68] - call.data[100], 0
        ('iszero', ('add', ('call.data', 68, 32), ('mul', -1, ('call.data', 100, 32))))
        revert
    require unknown_0x51d88471(?????) == uint32(call.func_hash)
    if not Mask(8, 248, call.data[4]):
        require ext_code.size(address(call.data[4]))
        call address(call.data[4]).ethToTokenSwapInput(uint256 arg1, uint256 arg2) with:
           value call.data[132] wei
             gas gas_remaining - 9710 wei
            args 1, block.timestamp
    else:
        require ext_code.size(address(call.data[36]))
        call address(call.data[36]).balanceOf(address arg1) with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_code.size(address(call.data[36]))
        if call.data[132] >= ext_call.return_data[0]:
            call address(call.data[36]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining - 710 wei
                args address(call.data[4]), ext_call.return_data[0]
            require ext_call.success
            require ext_call.return_data[0]
            require ext_code.size(address(call.data[4]))
            call address(call.data[4]).tokenToEthSwapInput(uint256 arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining - 710 wei
                args ext_call.return_data[0], 1, block.timestamp
        else:
            call address(call.data[36]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining - 710 wei
                args address(call.data[4]), call.data[132]
            require ext_call.success
            require ext_call.return_data[0]
            require ext_code.size(address(call.data[4]))
            call address(call.data[4]).tokenToEthSwapInput(uint256 arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining - 710 wei
                args call.data[132], 1, block.timestamp
    require ext_call.success
}



}
