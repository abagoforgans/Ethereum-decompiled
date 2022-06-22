contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;

function _fallback() payable {
    revert
}

function sub_1b04c957(?) payable {
    mem[96] = 0x3a20e9df00000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(stor0)
    call stor0.getProduct(bytes32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 224
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 32 <= return_data.size
    if not mem[140 len 20]:
        revert with 0, 'not found'
    require mem[224] <= 1
    require ext_code.size(stor0)
    call stor0.0xbee7d433 with:
         gas gas_remaining wei
        args 1, mem[192], mem[255 len 1]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if msg.value > 0:
            call msg.sender with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor0)
        call stor0.0x3987512 with:
             gas gas_remaining wei
            args arg1, arg2, msg.sender
    else:
        require ext_code.size(stor1)
        call stor1.getExchange(address arg1) with:
             gas gas_remaining wei
            args stor2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[12 len 20]:
            revert with 0, 'couldnt find exchange for DATA coin'
        if not ext_call.return_data[0]:
            require ext_code.size(stor2)
            call stor2.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).ethToTokenTransferInput(uint256 arg1, uint256 arg2, address arg3) with:
               value msg.value wei
                 gas gas_remaining wei
                args 0, block.timestamp + arg3, this.address
        else:
            require ext_call.return_data[0]
            require ext_call.return_data[0] * arg2 / ext_call.return_data[0] == arg2
            require ext_code.size(stor2)
            call stor2.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).ethToTokenTransferInput(uint256 arg1, uint256 arg2, address arg3) with:
               value msg.value wei
                 gas gas_remaining wei
                args ext_call.return_data[0] * arg2, block.timestamp + arg3, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor2)
        call stor2.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 0 < ext_call.return_data[0]:
            revert with 0, 'not enough datacoin received'
        require ext_code.size(stor2)
        call stor2.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor0, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'approval failed'
        require ext_code.size(stor2)
        call stor2.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor0, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'approval failed'
        require ext_call.return_data[0]
        require ext_code.size(stor0)
        call stor0.0x3987512 with:
             gas gas_remaining wei
            args arg1, ext_call.return_data[0] / ext_call.return_data[0], msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_9030d0f7(?) {
    if not arg4:
        revert with 0, 'use buyWithETH instead'
    mem[96] = 0x3a20e9df00000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(stor0)
    call stor0.getProduct(bytes32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 224
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 32 <= return_data.size
    if not mem[140 len 20]:
        revert with 0, 'not found'
    require mem[224] <= 1
    require ext_code.size(stor0)
    call stor0.0xbee7d433 with:
         gas gas_remaining wei
        args 1, mem[192], mem[255 len 1]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(stor0)
        call stor0.0x3987512 with:
             gas gas_remaining wei
            args arg1, arg2, msg.sender
    else:
        require ext_code.size(arg4)
        call arg4.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'must pre approve token transfer'
        require ext_code.size(stor1)
        call stor1.getExchange(address arg1) with:
             gas gas_remaining wei
            args arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[12 len 20]:
            revert with 0, 'couldnt find exchange for exchanged token'
        require ext_code.size(arg4)
        call arg4.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'approval failed'
        require ext_code.size(arg4)
        call arg4.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'approval failed'
        if not ext_call.return_data[0]:
            require ext_code.size(stor2)
            call stor2.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            if arg4:
                call address(ext_call.return_data[0]).tokenToTokenTransferInput(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, address arg6) with:
                     gas gas_remaining wei
                    args arg5, 0, 0, block.timestamp + arg3, address(this.address), stor2
            else:
                call address(ext_call.return_data[0]).ethToTokenTransferInput(uint256 arg1, uint256 arg2, address arg3) with:
                   value arg5 wei
                     gas gas_remaining wei
                    args 0, block.timestamp + arg3, this.address
        else:
            require ext_call.return_data[0]
            require ext_call.return_data[0] * arg2 / ext_call.return_data[0] == arg2
            require ext_code.size(stor2)
            call stor2.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            if arg4:
                call address(ext_call.return_data[0]).tokenToTokenTransferInput(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, address arg6) with:
                     gas gas_remaining wei
                    args arg5, ext_call.return_data[0] * arg2, 0, block.timestamp + arg3, address(this.address), stor2
            else:
                call address(ext_call.return_data[0]).ethToTokenTransferInput(uint256 arg1, uint256 arg2, address arg3) with:
                   value arg5 wei
                     gas gas_remaining wei
                    args ext_call.return_data[0] * arg2, block.timestamp + arg3, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor2)
        call stor2.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 0 < ext_call.return_data[0]:
            revert with 0, 'not enough datacoin received'
        require ext_code.size(stor2)
        call stor2.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor0, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'approval failed'
        require ext_code.size(stor2)
        call stor2.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor0, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'approval failed'
        require ext_call.return_data[0]
        require ext_code.size(stor0)
        call stor0.0x3987512 with:
             gas gas_remaining wei
            args arg1, ext_call.return_data[0] / ext_call.return_data[0], msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
