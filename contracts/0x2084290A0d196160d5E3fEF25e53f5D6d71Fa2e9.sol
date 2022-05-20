contract main {




// =====================  Runtime code  =====================


const ETH = 0

const MAX_UINT = -1


address lenderAddress;
address tradeExecutorAddress;

function tradeExecutor() {
    return tradeExecutorAddress
}

function lender() {
    return lenderAddress
}

function _fallback() payable {
  stop
}

function submitTrade(address arg1, uint256 arg2, address arg3, bytes arg4) {
    require ext_code.size(lenderAddress)
    call lenderAddress.borrow(address arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args 0, 0, arg2, address(arg3), 128, arg4.length, arg4[all]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function getRepayAmount(uint256 arg1) {
    require ext_code.size(lenderAddress)
    call lenderAddress.0xddca3f43 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        if arg1 >= arg1:
            return arg1
    else:
        if ext_call.return_data[0] * arg1 / arg1 == ext_call.return_data[0]:
            if (ext_call.return_data[0] * arg1 / 10^18) + arg1 >= arg1:
                return ((ext_call.return_data[0] * arg1 / 10^18) + arg1)
    revert
}

function executeArbitrage(address arg1, uint256 arg2, address arg3, bytes arg4) {
    require msg.sender == lenderAddress
    if not arg1:
        call tradeExecutorAddress with:
           value arg2 wei
             gas gas_remaining - 34710 wei
            args arg4[all]
    else:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args tradeExecutorAddress, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        call tradeExecutorAddress with:
             gas gas_remaining - 34710 wei
            args arg4[all]
    require ext_code.size(lenderAddress)
    call lenderAddress.0xddca3f43 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg2:
        require arg2 >= arg2
        require ext_code.size(lenderAddress)
        call lenderAddress.bank() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not arg1:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x22867d78 with:
               value arg2 wei
                 gas gas_remaining wei
                args address(arg1), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call arg3 with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
        else:
            require ext_code.size(arg1)
            call arg1.0xdd62ed3e with:
                 gas gas_remaining wei
                args this.address, address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < arg2:
                require ext_code.size(arg1)
                call arg1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), -1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x22867d78 with:
                 gas gas_remaining wei
                args address(arg1), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
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
                args address(arg3), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    else:
        require ext_call.return_data[0] * arg2 / arg2 == ext_call.return_data[0]
        require (ext_call.return_data[0] * arg2 / 10^18) + arg2 >= arg2
        require ext_code.size(lenderAddress)
        call lenderAddress.bank() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not arg1:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x22867d78 with:
               value (ext_call.return_data[0] * arg2 / 10^18) + arg2 wei
                 gas gas_remaining wei
                args address(arg1), (ext_call.return_data[0] * arg2 / 10^18) + arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call arg3 with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
        else:
            require ext_code.size(arg1)
            call arg1.0xdd62ed3e with:
                 gas gas_remaining wei
                args this.address, address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < (ext_call.return_data[0] * arg2 / 10^18) + arg2:
                require ext_code.size(arg1)
                call arg1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), -1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x22867d78 with:
                 gas gas_remaining wei
                args address(arg1), (ext_call.return_data[0] * arg2 / 10^18) + arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
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
                args address(arg3), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    return 1
}



}
