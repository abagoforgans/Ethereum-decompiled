contract main {




// =====================  Runtime code  =====================


mapping of struct stor0;

function _fallback() payable {
    revert
}

function swaps(address arg1, bytes20 arg2) {
    return stor0[arg1][Mask(160, 96, arg2)].field_0, 
           stor0[arg1][Mask(160, 96, arg2)].field_256,
           stor0[arg1][Mask(160, 96, arg2)].field_512,
           stor0[arg1][Mask(160, 96, arg2)].field_768,
           bool(stor0[arg1][Mask(160, 96, arg2)].field_1024),
           stor0[arg1][Mask(160, 96, arg2)].field_1024,
           bool(stor0[arg1][Mask(160, 96, arg2)].field_1192)
}

function redeem(bytes32 arg1) {
    hash = ripemd160hash(arg1) 
    if not ripemd160hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require stor0[address(msg.sender)][address(hash)].field_1192
    require block.timestamp < stor0[address(msg.sender)][address(hash)].field_0
    stor0[address(msg.sender)][address(hash)].field_1192 = 0
    if not stor0[address(msg.sender)][address(hash)].field_1024:
        call msg.sender with:
           value stor0[address(msg.sender)][address(hash)].field_768 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(stor0[address(msg.sender)][address(hash)].field_1032)
        call stor0[address(msg.sender)][address(hash)].field_1032.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, stor0[address(msg.sender)][address(hash)].field_768
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    emit RedeemSwap(msg.sender, address(hash), arg1);
}

function refund(bytes20 arg1, address arg2) {
    require block.timestamp > stor0[address(arg2)][Mask(160, 96, arg1)].field_0
    require msg.sender == stor0[address(arg2)][Mask(160, 96, arg1)].field_256
    require stor0[address(arg2)][Mask(160, 96, arg1)].field_1192
    stor0[address(arg2)][Mask(160, 96, arg1)].field_1192 = 0
    if not stor0[address(arg2)][Mask(160, 96, arg1)].field_1024:
        call msg.sender with:
           value stor0[address(arg2)][Mask(160, 96, arg1)].field_768 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(stor0[address(arg2)][Mask(160, 96, arg1)].field_1032)
        call stor0[address(arg2)][Mask(160, 96, arg1)].field_1032.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, stor0[address(arg2)][Mask(160, 96, arg1)].field_768
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    emit RefundSwap(msg.sender, stor0[address(arg2)][Mask(160, 96, arg1)].field_512, Mask(160, 96, arg1));
}

function initiate(uint256 arg1, bytes20 arg2, address arg3, address arg4, bool arg5, uint256 arg6) payable {
    require not stor0[address(arg3)][Mask(160, 96, arg2)].field_1192
    require block.timestamp < arg1
    if not arg5:
        stor0[address(arg3)][Mask(160, 96, arg2)].field_0 = arg1
        stor0[address(arg3)][Mask(160, 96, arg2)].field_256 = msg.sender
        stor0[address(arg3)][Mask(160, 96, arg2)].field_512 = arg3
        stor0[address(arg3)][Mask(160, 96, arg2)].field_768 = msg.value
        stor0[address(arg3)][Mask(160, 96, arg2)].field_1024 = uint8(arg5)
        stor0[address(arg3)][Mask(160, 96, arg2)].field_1032 = arg4
        stor0[address(arg3)][Mask(160, 96, arg2)].field_1192 = 1
        emit InitiateSwap(msg.sender, address(arg3), arg1, Mask(160, 96, arg2), address(arg4), arg5, msg.value);
    else:
        require ext_code.size(arg4)
        call arg4.0xdd62ed3e with:
             gas gas_remaining wei
            args msg.sender, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == arg6
        require ext_code.size(arg4)
        call arg4.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg6
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        stor0[address(arg3)][Mask(160, 96, arg2)].field_0 = arg1
        stor0[address(arg3)][Mask(160, 96, arg2)].field_256 = msg.sender
        stor0[address(arg3)][Mask(160, 96, arg2)].field_512 = arg3
        if arg5:
            stor0[address(arg3)][Mask(160, 96, arg2)].field_768 = arg6
            stor0[address(arg3)][Mask(160, 96, arg2)].field_1024 = uint8(arg5)
            stor0[address(arg3)][Mask(160, 96, arg2)].field_1032 = arg4
            stor0[address(arg3)][Mask(160, 96, arg2)].field_1192 = 1
            emit InitiateSwap(msg.sender, address(arg3), arg1, Mask(160, 96, arg2), address(arg4), arg5, arg6);
        else:
            stor0[address(arg3)][Mask(160, 96, arg2)].field_768 = msg.value
            stor0[address(arg3)][Mask(160, 96, arg2)].field_1024 = uint8(arg5)
            stor0[address(arg3)][Mask(160, 96, arg2)].field_1032 = arg4
            stor0[address(arg3)][Mask(160, 96, arg2)].field_1192 = 1
            emit InitiateSwap(msg.sender, address(arg3), arg1, Mask(160, 96, arg2), address(arg4), arg5, msg.value);
}



}
