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

function withdraw() {
    require msg.sender == stor2
    call stor2 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawToken(address arg1) {
    require msg.sender == stor2
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor2, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_90466bbe(?) {
    require msg.sender == stor2
    require arg3
    require arg4
    require arg5
    stor0 = arg3
    stor1 = arg4
    require arg1 <= 1
    if not arg1:
        require ext_code.size(stor0)
        call stor0.deposit() with:
           value call.data[452] wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor0)
        call stor0.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
             gas gas_remaining wei
            args call.data[176 len 20], call.data[324], address(call.data[196]), call.data[356], call.data[388], call.data[420], address(call.data[228]), arg8 << 248, arg9, arg10, call.data[452]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor0)
        call stor0.balanceOf(address arg1, address arg2) with:
             gas gas_remaining wei
            args call.data[208 len 20], this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor0)
        call stor0.withdrawToken(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(call.data[196]), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(arg5)
        call arg5.0xdd62ed3e with:
             gas gas_remaining wei
            args this.address, stor1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            require ext_code.size(arg5)
            call arg5.0xdd62ed3e with:
                 gas gas_remaining wei
                args this.address, stor1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg5)
            if ext_call.return_data[0]:
                call arg5.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor1, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
            call arg5.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor1, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
        require ext_code.size(stor1)
        call stor1.convert(address[] arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args Array(len=arg2.length, data=call.data[arg2 + 36 len 32 * arg2.length]), ext_call.return_data[0], arg7
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    else:
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
        if ext_call.return_data[0] >= call.data[452]:
            call stor0.depositToken(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args call.data[176 len 20], call.data[452]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor0)
            call stor0.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                 gas gas_remaining wei
                args call.data[176 len 20], call.data[324], address(call.data[196]), call.data[356], call.data[388], call.data[420], address(call.data[228]), arg8 << 248, arg9, arg10, call.data[452]
        else:
            call stor0.depositToken(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args call.data[176 len 20], ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor0)
            call stor0.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                 gas gas_remaining wei
                args call.data[176 len 20], call.data[324], address(call.data[196]), call.data[356], call.data[388], call.data[420], address(call.data[228]), arg8 << 248, arg9, arg10, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor0)
        call stor0.balanceOf(address arg1, address arg2) with:
             gas gas_remaining wei
            args 0, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor0)
        call stor0.withdraw(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return eth.balance(this.address)
}

function sub_139c7b5d(?) {
    require msg.sender == stor2
    require ext_code.size(arg1)
    call arg1.0xdd62ed3e with:
         gas gas_remaining wei
        args this.address, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    if ext_call.return_data[0] >= arg2:
        call arg1.0xdd62ed3e with:
             gas gas_remaining wei
            args this.address, stor2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= arg2:
        require ext_code.size(arg1)
        call arg1.0xdd62ed3e with:
             gas gas_remaining wei
            args this.address, stor2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        if not ext_call.return_data[0]:
            call arg1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor2, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
        else:
            call arg1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor2, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require ext_code.size(arg1)
                call arg1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor2, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
    else:
        call arg1.0xdd62ed3e with:
             gas gas_remaining wei
            args this.address, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        if not ext_call.return_data[0]:
            call arg1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(this.address), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require ext_code.size(arg1)
                call arg1.0xdd62ed3e with:
                     gas gas_remaining wei
                    args this.address, stor2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= arg2:
                require ext_code.size(arg1)
                call arg1.0xdd62ed3e with:
                     gas gas_remaining wei
                    args this.address, stor2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg1)
                if not ext_call.return_data[0]:
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor2, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                else:
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor2, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        require ext_code.size(arg1)
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor2, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
        else:
            call arg1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(this.address), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require ext_code.size(arg1)
                call arg1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(this.address), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    require ext_code.size(arg1)
                    call arg1.0xdd62ed3e with:
                         gas gas_remaining wei
                        args this.address, stor2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= arg2:
                    require ext_code.size(arg1)
                    call arg1.0xdd62ed3e with:
                         gas gas_remaining wei
                        args this.address, stor2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg1)
                    if not ext_call.return_data[0]:
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor2, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                    else:
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor2, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            require ext_code.size(arg1)
                            call arg1.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor2, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
    revert
}



}
