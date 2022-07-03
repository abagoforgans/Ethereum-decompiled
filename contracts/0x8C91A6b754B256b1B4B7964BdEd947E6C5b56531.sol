contract main {




// =====================  Runtime code  =====================


const sub_829dd895(?) = 200


uint8 stor0;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint8 stor6; offset 8
address stor6;
address stor6; offset 16
uint256 stor6; offset 8
address owner;
mapping of uint8 stor8;
mapping of uint8 stor9;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function addValidator(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor8[address(arg1)] = 1
    return 1
}

function removeValidator(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor8[address(arg1)] = 0
    return 1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(msg.sender, address(arg1), arg2);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= allowance[address(msg.sender)][address(arg1)]
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(msg.sender, address(arg1), allowance[address(msg.sender)][address(arg1)] - arg2);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(msg.sender, address(arg1), allowance[address(msg.sender)][address(arg1)] + arg2);
    return 1
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(stor6.field_16))
    staticcall address(stor6.field_16).0x5d973e47 with:
            gas gas_remaining wei
           args address(arg1), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if address(stor6.field_16) != msg.sender:
        emit Transfer(msg.sender, address(arg1), arg2);
        require ext_code.size(address(stor6.field_16))
        call address(stor6.field_16).0xf18d03cc with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), address(this.address), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    else:
        if uint8(stor6.field_8):
            emit Transfer(msg.sender, address(arg1), arg2);
            require ext_code.size(address(stor6.field_16))
            call address(stor6.field_16).0xf18d03cc with:
                 gas gas_remaining wei
                args 0, uint32(msg.sender), address(arg1), address(this.address), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if address(stor6.field_16) != msg.sender:
        emit Transfer(address(arg1), address(arg2), arg3);
        require ext_code.size(address(stor6.field_16))
        call address(stor6.field_16).0xf18d03cc with:
             gas gas_remaining wei
            args 0, 0, address(arg2), address(this.address), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    else:
        if uint8(stor6.field_8):
            emit Transfer(address(arg1), address(arg2), arg3);
            require ext_code.size(address(stor6.field_16))
            call address(stor6.field_16).0xf18d03cc with:
                 gas gas_remaining wei
                args 0, 0, address(arg2), address(this.address), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require msg.sender
    require arg1
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval(address(arg1), msg.sender, allowance[address(arg1)][address(msg.sender)] - arg3);
    return 1
}

function initialize(address arg1, string arg2, string arg3, uint8 arg4) payable {
    require calldata.size - 4 >= 128
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require not uint8(stor6.field_8)
    require not stor0
    stor0 = 1
    address(stor6.field_16) = arg1
    name[] = Array(len=arg2.length, data=arg2[all])
    symbol[] = Array(len=arg3.length, data=arg3[all])
    decimals = arg4
    require address(stor6.field_16)
    require this.address
    allowance[address(this.address)][address(stor6.field_0)] = -1
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = this.address
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 192] = address(stor6.field_16)
    emit Approval(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len ceil32(arg3.length) + -arg3.length + 32], -1);
    require ext_code.size(address(stor6.field_16))
    call address(stor6.field_16).0x8340f549 with:
         gas gas_remaining wei
        args address(this.address), address(this.address), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Initialzation deposit failed'
    require ext_code.size(address(stor6.field_16))
    call address(stor6.field_16).0xb5f5e722 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Opt in balance management failed'
    Mask(248, 0, stor6.field_8) = 1
    require ext_code.size(address(stor6.field_16))
    staticcall address(stor6.field_16).0x5d973e47 with:
            gas gas_remaining wei
           args address(this.address), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == -1
    stor0 = 0
}

function sub_47f1f960(?) payable {
    require calldata.size - 4 >= 448
    require not stor0
    stor0 = 1
    require 9 >= arg9
    require arg9 <= 9
    require arg9 <= 9
    if arg9 == 4:
        revert with 0, 'Settlement operation is invalid'
    require arg9 <= 9
    if arg9 == 5:
        revert with 0, 'Settlement operation is invalid'
    if arg5 != msg.sender:
        revert with 0, 'Source of funds is not sender'
    if not arg2:
        revert with 0, 'Address is invalid'
    if arg2 == this.address:
        revert with 0, 'Address is referencing self'
    if block.timestamp >= arg3:
        revert with 0, 'RFQ after expiration date'
    if block.number >= arg4:
        revert with 0, 'RFQ after expiration block'
    if not arg5:
        revert with 0, 'Address is invalid'
    if arg5 == this.address:
        revert with 0, 'Address is referencing self'
    if not arg6:
        revert with 0, 'Address is invalid'
    if arg6 == this.address:
        revert with 0, 'Address is referencing self'
    if not arg7:
        revert with 0, 'Address is invalid'
    if arg7 == this.address:
        revert with 0, 'Address is referencing self'
    if arg8 <= 0:
        revert with 0, 32, 36, 0xfe5175616e74697479206973206e6f742067726561746572207468616e206d696e696d75, mem[552 len 28]
    if arg10 <= 0:
        revert with 0, 32, 36, 0xfe5175616e74697479206973206e6f742067726561746572207468616e206d696e696d75, mem[552 len 28]
    mem[928 len 0] = None
    if stor9[mem[928 len 3]][0x68657265756d205369676e6564204d6573][arg1][address(arg2)][arg3][arg4][address(arg5)][address(arg6)][address(arg7)][arg8][arg9 << 248][arg10][arg11]:
        revert with 0, 'Attempted transaction replay'
    stor9[mem[928 len 3]][0x68657265756d205369676e6564204d6573][arg1][address(arg2)][arg3][arg4][address(arg5)][address(arg6)][address(arg7)][arg8][arg9 << 248][arg10][arg11] = 1
    signer = erecover(sha3(mem[928 len 3], 0x68657265756d205369676e6564204d6573, arg1, address(arg2), arg3, arg4, address(arg5), address(arg6), address(arg7), arg8, arg9 << 248, arg10, arg11), arg12 << 248, arg13, arg14) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if bool(stor8[address(signer)]) != 1:
        revert with 0, 'Validator signature is invalid'
    require arg11 <= arg10
    require uint64(arg5)
    require arg10 - arg11 <= totalSupply
    totalSupply = totalSupply - arg10 + arg11
    emit Transfer(arg5 << 192, 0, arg10 - arg11);
    require ext_code.size(address(stor6.field_16))
    call address(stor6.field_16).0xf18d03cc with:
         gas gas_remaining wei
        args address(arg5), address(this.address), address(this.address), arg10 - arg11
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(address(stor6.field_16))
    if uint8(0 % 3):
        call address(stor6.field_16).0xf18d03cc with:
             gas gas_remaining wei
            args address(this.address), address(arg6), address(arg7), arg8
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'vault transfer failed'
    else:
        call address(stor6.field_16).0xd9caed12 with:
             gas gas_remaining wei
            args arg6 << 192, address(arg7), arg8
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    ('bool', ('ext_call.return_data', 0, 32))
    if arg11 > 0:
        if address(stor6.field_16) != msg.sender:
            emit Transfer(arg5 << 192, arg2 << 192, arg11);
            require ext_code.size(address(stor6.field_16))
            call address(stor6.field_16).0xf18d03cc with:
                 gas gas_remaining wei
                args address(arg5), address(arg2), address(this.address), arg11
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
        else:
            if uint8(stor6.field_8):
                emit Transfer(arg5 << 192, arg2 << 192, arg11);
                require ext_code.size(address(stor6.field_16))
                call address(stor6.field_16).0xf18d03cc with:
                     gas gas_remaining wei
                    args address(arg5), address(arg2), address(this.address), arg11
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
    emit 0xcf3de7b9: arg2 << 192, arg8, arg9 << 248, arg10, arg11, arg5, uint64(arg6) << 96, uint64(arg7) << 96
    stor0 = 0
    return 1
}



}
