contract main {




// =====================  Runtime code  =====================


#
#  - sub_08a6d790(?)
#  - sub_353e27cb(?)
#
const position = 0

const sub_2290a2c6(?) = 0x79705be700000000000000000000000000000000000000000000000000000000

const identifier = 'Price tolerance'

const sub_e9ae57e5(?) = 0xe51be6e800000000000000000000000000000000000000000000000000000000


uint256 tolerance;

function tolerance() {
    return tolerance
}

function _fallback() payable {
    revert
}

function sub_c50a07d6(?) {
    if not call.data[68]:
        require call.data[100]
        require ext_code.size(msg.sender)
        call msg.sender.hub() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).priceSource() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).getReferencePriceInfo(address arg1, address arg2) with:
             gas gas_remaining wei
            args address(arg2), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).getOrderPriceInfo(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args address(arg2), address(arg1), call.data[132], 0 / call.data[100]
    else:
        require call.data[68]
        if call.data[132] * call.data[68] / call.data[68] != call.data[132]:
            revert with 0, 'ds-math-mul-overflow'
        require call.data[100]
        require ext_code.size(msg.sender)
        call msg.sender.hub() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).priceSource() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).getReferencePriceInfo(address arg1, address arg2) with:
             gas gas_remaining wei
            args address(arg2), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).getOrderPriceInfo(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args address(arg2), address(arg1), call.data[132], call.data[132] * call.data[68] / call.data[100]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'ds-math-sub-underflow'
        return ext_call.return_data[0] <= ext_call.return_data[0]
    require ext_call.return_data[0]
    if tolerance * ext_call.return_data[0] / ext_call.return_data[0] != tolerance:
        revert with 0, 'ds-math-mul-overflow'
    if ext_call.return_data[0] - (tolerance * ext_call.return_data[0] / 10^18) > ext_call.return_data[0]:
        revert with 0, 'ds-math-sub-underflow'
    return ext_call.return_data[0] - (tolerance * ext_call.return_data[0] / 10^18) <= ext_call.return_data[0]
}

function sub_8e37f623(?) {
    require ext_code.size(arg1)
    call arg1.getOffer(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    if not ext_call.return_data[0]:
        require ext_call.return_data[64]
        require ext_code.size(msg.sender)
        call msg.sender.hub() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).priceSource() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).getReferencePriceInfo(address arg1, address arg2) with:
             gas gas_remaining wei
            args address(ext_call.return_data[96]), address(ext_call.return_data[32])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).getOrderPriceInfo(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args 0, 0, address(ext_call.return_data[32]), arg3, 0 / ext_call.return_data[64]
    else:
        require ext_call.return_data[0]
        if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
            revert with 0, 'ds-math-mul-overflow'
        require ext_call.return_data[64]
        require ext_code.size(msg.sender)
        call msg.sender.hub() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).priceSource() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).getReferencePriceInfo(address arg1, address arg2) with:
             gas gas_remaining wei
            args address(ext_call.return_data[96]), address(ext_call.return_data[32])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).getOrderPriceInfo(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args 0, 0, address(ext_call.return_data[32]), arg3, arg3 * ext_call.return_data[0] / ext_call.return_data[64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'ds-math-sub-underflow'
        return ext_call.return_data[0] <= ext_call.return_data[0]
    require ext_call.return_data[0]
    if tolerance * ext_call.return_data[0] / ext_call.return_data[0] != tolerance:
        revert with 0, 'ds-math-mul-overflow'
    if ext_call.return_data[0] - (tolerance * ext_call.return_data[0] / 10^18) > ext_call.return_data[0]:
        revert with 0, 'ds-math-sub-underflow'
    return ext_call.return_data[0] - (tolerance * ext_call.return_data[0] / 10^18) <= ext_call.return_data[0]
}

function sub_3e00afba(?) {
    if not arg1:
        if not call.data[164]:
            require call.data[196]
            require ext_code.size(msg.sender)
            call msg.sender.hub() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).priceSource() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).getReferencePriceInfo(address arg1, address arg2) with:
                 gas gas_remaining wei
                args address(call.data[100]), address(call.data[68])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).getOrderPriceInfo(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args address(call.data[100]), address(call.data[68]), call.data[228], 0 / call.data[196]
        else:
            require call.data[164]
            if call.data[228] * call.data[164] / call.data[164] != call.data[228]:
                revert with 0, 'ds-math-mul-overflow'
            require call.data[196]
            require ext_code.size(msg.sender)
            call msg.sender.hub() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).priceSource() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).getReferencePriceInfo(address arg1, address arg2) with:
                 gas gas_remaining wei
                args address(call.data[100]), address(call.data[68])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).getOrderPriceInfo(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args address(call.data[100]), address(call.data[68]), call.data[228], call.data[228] * call.data[164] / call.data[196]
    else:
        require ext_code.size(address(call.data[132]))
        call address(call.data[132]).getOffer(uint256 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        if not ext_call.return_data[0]:
            require ext_call.return_data[64]
            require ext_code.size(msg.sender)
            call msg.sender.hub() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).priceSource() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).getReferencePriceInfo(address arg1, address arg2) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[96]), address(ext_call.return_data[32])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).getOrderPriceInfo(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[96]), address(ext_call.return_data[32]), call.data[228], 0 / ext_call.return_data[64]
        else:
            require ext_call.return_data[0]
            if call.data[228] * ext_call.return_data[0] / ext_call.return_data[0] != call.data[228]:
                revert with 0, 'ds-math-mul-overflow'
            require ext_call.return_data[64]
            require ext_code.size(msg.sender)
            call msg.sender.hub() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).priceSource() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).getReferencePriceInfo(address arg1, address arg2) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[96]), address(ext_call.return_data[32])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).getOrderPriceInfo(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[96]), address(ext_call.return_data[32]), call.data[228], call.data[228] * ext_call.return_data[0] / ext_call.return_data[64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'ds-math-sub-underflow'
        return ext_call.return_data[0] <= ext_call.return_data[0]
    require ext_call.return_data[0]
    if tolerance * ext_call.return_data[0] / ext_call.return_data[0] != tolerance:
        revert with 0, 'ds-math-mul-overflow'
    if ext_call.return_data[0] - (tolerance * ext_call.return_data[0] / 10^18) > ext_call.return_data[0]:
        revert with 0, 'ds-math-sub-underflow'
    return ext_call.return_data[0] - (tolerance * ext_call.return_data[0] / 10^18) <= ext_call.return_data[0]
}



}
