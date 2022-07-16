contract main {




// =====================  Runtime code  =====================


address sub_86c1dffbAddress;
address sub_bc96cecbAddress;
address sub_649532a3Address;

function sub_649532a3(?) {
    return sub_649532a3Address
}

function sub_86c1dffb(?) {
    return sub_86c1dffbAddress
}

function sub_bc96cecb(?) {
    return sub_bc96cecbAddress
}

function _fallback() payable {
  stop
}

function sub_2ee05d35(?) {
    require calldata.size - 4 >= 32
    require msg.sender == sub_86c1dffbAddress
    require arg1
    sub_86c1dffbAddress = arg1
}

function sub_6dcf969b(?) {
    require calldata.size - 4 >= 32
    require msg.sender == sub_86c1dffbAddress
    require arg1
    sub_649532a3Address = arg1
}

function sub_a416f1cf(?) {
    require calldata.size - 4 >= 32
    require msg.sender == sub_86c1dffbAddress
    require arg1
    sub_bc96cecbAddress = arg1
}

function withdrawEth() {
    require msg.sender == sub_86c1dffbAddress
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_6f407265(?) {
    require calldata.size - 4 >= 64
    require msg.sender == sub_86c1dffbAddress
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if return_data.size:
        require return_data.size == 32
        require ext_call.return_data[0]
}

function sub_5619a704(?) {
    require calldata.size - 4 >= 64
    require msg.sender == sub_86c1dffbAddress
    require ext_code.size(0x3fda67f7583380e67ef93072294a7fac882fd7e7)
    call 0x3fda67f7583380e67ef93072294a7fac882fd7e7.borrow(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_77634644(?) {
    require calldata.size - 4 >= 64
    require msg.sender == sub_86c1dffbAddress
    require ext_code.size(0x3fda67f7583380e67ef93072294a7fac882fd7e7)
    call 0x3fda67f7583380e67ef93072294a7fac882fd7e7.withdraw(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_8f0d400e(?) {
    require calldata.size - 4 >= 64
    if sub_bc96cecbAddress != msg.sender:
        if sub_649532a3Address != msg.sender:
            require msg.sender == sub_86c1dffbAddress
    require ext_code.size(0x3fda67f7583380e67ef93072294a7fac882fd7e7)
    call 0x3fda67f7583380e67ef93072294a7fac882fd7e7.supply(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_647f24ac(?) {
    require calldata.size - 4 >= 64
    if sub_bc96cecbAddress != msg.sender:
        if sub_649532a3Address != msg.sender:
            require msg.sender == sub_86c1dffbAddress
    require ext_code.size(0x3fda67f7583380e67ef93072294a7fac882fd7e7)
    call 0x3fda67f7583380e67ef93072294a7fac882fd7e7.repayBorrow(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_63547807(?) {
    require calldata.size - 4 >= 32
    require msg.sender == sub_86c1dffbAddress
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if return_data.size:
            require return_data.size == 32
            require ext_call.return_data[0]
}

function sub_aed6ce39(?) {
    require calldata.size - 4 >= 32
    require msg.sender == sub_86c1dffbAddress
    require ext_code.size(0xc0a47dfe034b400b47bdad5fecda2621de6c4d95)
    staticcall 0xc0a47dfe034b400b47bdad5fecda2621de6c4d95.getExchange(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x818e6fecd516ecc3849daf6845e3ec868087b755, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function sub_20f5f4e7(?) {
    require calldata.size - 4 >= 64
    if sub_bc96cecbAddress != msg.sender:
        if sub_649532a3Address != msg.sender:
            require msg.sender == sub_86c1dffbAddress
    require ext_code.size(0x3fda67f7583380e67ef93072294a7fac882fd7e7)
    call 0x3fda67f7583380e67ef93072294a7fac882fd7e7.borrow(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
    call 0x818e6fecd516ecc3849daf6845e3ec868087b755.swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg2), arg1, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xc0a47dfe034b400b47bdad5fecda2621de6c4d95)
    staticcall 0xc0a47dfe034b400b47bdad5fecda2621de6c4d95.getExchange(address arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).ethToTokenSwapOutput(uint256 arg1, uint256 arg2) with:
       value ext_call.return_data[0] wei
         gas gas_remaining wei
        args arg1, block.timestamp + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_49d3f281(?) {
    require calldata.size - 4 >= 64
    if sub_bc96cecbAddress != msg.sender:
        if sub_649532a3Address != msg.sender:
            require msg.sender == sub_86c1dffbAddress
    require ext_code.size(0x3fda67f7583380e67ef93072294a7fac882fd7e7)
    call 0x3fda67f7583380e67ef93072294a7fac882fd7e7.borrow(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xc0a47dfe034b400b47bdad5fecda2621de6c4d95)
    staticcall 0xc0a47dfe034b400b47bdad5fecda2621de6c4d95.getExchange(address arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).tokenToEthSwapInput(uint256 arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args arg1, 1, block.timestamp + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
    call 0x818e6fecd516ecc3849daf6845e3ec868087b755.swapEtherToToken(address arg1, uint256 arg2) with:
       value ext_call.return_data[0] wei
         gas gas_remaining wei
        args address(arg2), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 < ext_call.return_data[0]
}

function sub_063eab88(?) {
    require calldata.size - 4 >= 64
    if sub_bc96cecbAddress != msg.sender:
        if sub_649532a3Address != msg.sender:
            require msg.sender == sub_86c1dffbAddress
    require ext_code.size(0x3fda67f7583380e67ef93072294a7fac882fd7e7)
    call 0x3fda67f7583380e67ef93072294a7fac882fd7e7.borrow(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
    call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xc0a47dfe034b400b47bdad5fecda2621de6c4d95)
    staticcall 0xc0a47dfe034b400b47bdad5fecda2621de6c4d95.getExchange(address arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).ethToTokenSwapInput(uint256 arg1, uint256 arg2) with:
       value arg1 wei
         gas gas_remaining wei
        args 1, block.timestamp + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
    call 0x818e6fecd516ecc3849daf6845e3ec868087b755.swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0], 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 < ext_call.return_data[0]
}

function sub_6a1a6ae4(?) {
    require calldata.size - 4 >= 64
    if sub_bc96cecbAddress != msg.sender:
        if sub_649532a3Address != msg.sender:
            require msg.sender == sub_86c1dffbAddress
    require ext_code.size(0x3fda67f7583380e67ef93072294a7fac882fd7e7)
    call 0x3fda67f7583380e67ef93072294a7fac882fd7e7.borrow(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
    call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
    call 0x818e6fecd516ecc3849daf6845e3ec868087b755.swapEtherToToken(address arg1, uint256 arg2) with:
       value arg1 wei
         gas gas_remaining wei
        args address(arg2), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xc0a47dfe034b400b47bdad5fecda2621de6c4d95)
    staticcall 0xc0a47dfe034b400b47bdad5fecda2621de6c4d95.getExchange(address arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).tokenToEthSwapInput(uint256 arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 1, block.timestamp + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 < ext_call.return_data[0]
}



}
