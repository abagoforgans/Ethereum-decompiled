contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;

function destroyContract() {
    require msg.sender == stor2
    selfdestruct(stor2)
}

function _fallback() payable {
  stop
}

function sub_fc431069(?) {
    require msg.sender == stor2
    require arg3
    require arg4
    require arg5
    stor0 = arg3
    stor1 = arg4
    require arg1 <= 1
    if arg1:
        require ext_code.size(stor1)
        call stor1.convert(address[] arg1, uint256 arg2, uint256 arg3) with:
           value arg6 wei
             gas gas_remaining wei
            args 0, 96, arg6, arg7, arg2.length, call.data[arg2 + 36 len 32 * arg2.length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg5)
        call arg5.0xdd62ed3e with:
             gas gas_remaining wei
            args this.address, stor0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            require ext_code.size(arg5)
            call arg5.0xdd62ed3e with:
                 gas gas_remaining wei
                args this.address, stor0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg5)
            if ext_call.return_data[0]:
                call arg5.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor0, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
            call arg5.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor0, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
        require ext_code.size(stor0)
        call stor0.depositToken(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args call.data[176 len 20], ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor0)
        if ext_call.return_data[0] >= call.data[452]:
            call stor0.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                 gas gas_remaining wei
                args call.data[176 len 20], call.data[324], address(call.data[196]), call.data[356], call.data[388], call.data[420], address(call.data[228]), arg8 << 248, arg9, arg10, call.data[452]
        else:
            call stor0.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                 gas gas_remaining wei
                args call.data[176 len 20], call.data[324], address(call.data[196]), call.data[356], call.data[388], call.data[420], address(call.data[228]), arg8 << 248, arg9, arg10, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor0)
        call stor0.0xf7888aec with:
             gas gas_remaining wei
            args 0, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor0)
        call stor0.0x2e1a7d4d with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return eth.balance(this.address)
}



}
