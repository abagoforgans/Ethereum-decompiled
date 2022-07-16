contract main {




// =====================  Runtime code  =====================


address sub_86c1dffbAddress;
address sub_bc96cecbAddress;

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

function sub_a416f1cf(?) {
    require calldata.size - 4 >= 32
    require msg.sender == sub_86c1dffbAddress
    require arg1
    sub_bc96cecbAddress = arg1
}

function sub_75067542(?) {
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

function sub_360bf421(?) {
    require calldata.size - 4 >= 160
    if sub_bc96cecbAddress != msg.sender:
        require msg.sender == sub_86c1dffbAddress
    require ext_code.size(arg3)
    call arg3.ethToTokenSwapInput(uint256 arg1, uint256 arg2) with:
       value arg1 wei
         gas gas_remaining wei
        args arg5, block.timestamp + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
    call 0x818e6fecd516ecc3849daf6845e3ec868087b755.swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0], arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require (gas_remaining * block.gasprice) + arg1 < ext_call.return_data[0]
}

function sub_9c974f18(?) {
    require calldata.size - 4 >= 160
    if sub_bc96cecbAddress != msg.sender:
        require msg.sender == sub_86c1dffbAddress
    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
    call 0x818e6fecd516ecc3849daf6845e3ec868087b755.swapEtherToToken(address arg1, uint256 arg2) with:
       value arg1 wei
         gas gas_remaining wei
        args address(arg2), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg3)
    call arg3.tokenToEthSwapInput(uint256 arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args ext_call.return_data[0], arg5, block.timestamp + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require (gas_remaining * block.gasprice) + arg1 < ext_call.return_data[0]
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



}
