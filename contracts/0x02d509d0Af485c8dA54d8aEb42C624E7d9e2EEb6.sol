contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 3585]




// =====================  Runtime code  =====================


array of uint256 stor4;
array of uint256 stor5;
array of struct stor6;
array of uint256 stor99;

function sub_3af00d0f(?) payable {
    return stor[arg1][address(arg2)]
}

function sub_ac9b44f7(?) payable {
    return stor[arg1 + 1][address(arg2)][address(arg3)]
}

function _fallback() payable {
    revert
}

function sub_8ca979ca(?) payable {
    stor[arg1 + 1][address(msg.sender)][address(arg2)] = arg3
    emit Approval(arg3, msg.sender, arg2);
    return 1
}

function sub_a7ccd776(?) payable {
    require address(stor6[arg1].field_0) == msg.sender
    uint8(stor6[arg1].field_168) = 0
    emit MintingClosed(1);
    return 1
}

function sub_6f71ca3c(?) payable {
    require address(stor6[arg1].field_0) == msg.sender
    require arg2 > 0
    address(stor6[arg1].field_0) = arg2
    emit OwnerChange(msg.sender, arg2);
    return 1
}

function sub_93292972(?) payable {
    require not stor5[arg1]
    stor[sha3(arg1 + 2)][] = Array(len=arg3.length, data=arg3[all])
    stor[sha3(arg1 + 3)][] = Array(len=arg4.length, data=arg4[all])
    stor4[arg1] = arg6
    stor5[arg1] = arg6
    address(stor6[arg1].field_0) = arg2
    uint8(stor6[arg1].field_160) = arg5
    uint8(stor6[arg1].field_160) = 0
    Mask(88, 0, stor6[arg1].field_168) = Mask(88, 0, arg7)
    Mask(80, 0, stor6[arg1].field_176) = 0
    stor[arg1][address(arg2)] = arg6
}

function sub_d4b1770a(?) payable {
    require ext_code.size(0x74453cf53c97437066b1987e364e5d6b54bcaee6)
    delegate 0x74453cf53c97437066b1987e364e5d6b54bcaee6.minus(uint256 rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args stor[arg1][address(msg.sender)], arg3
    require delegate.return_code
    require not delegate.return_data[0]
    stor[arg1][address(msg.sender)] = delegate.return_data[32]
    stor[arg1][arg2] += arg3
    emit Transfer(arg3, msg.sender, arg2);
    return 1
}

function sub_6269321c(?) payable {
    require ext_code.size(0x74453cf53c97437066b1987e364e5d6b54bcaee6)
    delegate 0x74453cf53c97437066b1987e364e5d6b54bcaee6.minus(uint256 rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args stor[arg1][address(msg.sender)], arg2
    require delegate.return_code
    require not delegate.return_data[0]
    stor[arg1][address(msg.sender)] = delegate.return_data[32]
    stor4[arg1] -= arg2
    emit Burn(arg2, msg.sender);
    emit Transfer(arg2, msg.sender, 0);
    return 1
}

function sub_f8f095f2(?) payable {
    require address(stor6[arg1].field_0) == msg.sender
    require uint8(stor6[arg1].field_168)
    require ext_code.size(0x74453cf53c97437066b1987e364e5d6b54bcaee6)
    delegate 0x74453cf53c97437066b1987e364e5d6b54bcaee6.plus(uint256 rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args stor4[arg1], arg2
    require delegate.return_code
    require not delegate.return_data[0]
    stor4[arg1] = delegate.return_data[32]
    stor[arg1][address(stor6[arg1].field_0)] += arg2
    emit Transfer(arg2, 0, address(stor6[arg1].field_0));
    return 1
}

function sub_21a6a23d(?) payable {
    require ext_code.size(0x74453cf53c97437066b1987e364e5d6b54bcaee6)
    delegate 0x74453cf53c97437066b1987e364e5d6b54bcaee6.minus(uint256 rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args stor[arg1][address(arg2)], arg4
    require delegate.return_code
    require not delegate.return_data[0]
    require ext_code.size(0x74453cf53c97437066b1987e364e5d6b54bcaee6)
    delegate 0x74453cf53c97437066b1987e364e5d6b54bcaee6.minus(uint256 rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args stor[arg1 + 1][address(arg2)][address(msg.sender)], arg4
    require delegate.return_code
    require not delegate.return_data[0]
    stor[arg1][address(arg2)] = delegate.return_data[32]
    stor[arg1 + 1][address(arg2)][address(msg.sender)] = delegate.return_data[32]
    stor[arg1][address(arg3)] += arg4
    emit Transfer(arg4, arg2, arg3);
    return 1
}

function sub_bd03185c(?) payable {
    if not arg4:
        if arg3 <= stor[arg1 + 1][address(msg.sender)][address(arg2)]:
            stor[arg1 + 1][address(msg.sender)][address(arg2)] -= arg3
            emit Approval((stor[arg1 + 1][address(msg.sender)][address(arg2)] - arg3), msg.sender, arg2);
        else:
            stor[arg1 + 1][address(msg.sender)][address(arg2)] = 0
            emit Approval(0, msg.sender, arg2);
    else:
        require ext_code.size(0x74453cf53c97437066b1987e364e5d6b54bcaee6)
        delegate 0x74453cf53c97437066b1987e364e5d6b54bcaee6.plus(uint256 rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args stor[arg1 + 1][address(msg.sender)][address(arg2)], arg3
        require delegate.return_code
        require not delegate.return_data[0]
        stor[arg1 + 1][address(msg.sender)][address(arg2)] = delegate.return_data[32]
        emit Approval(delegate.return_data[32], msg.sender, arg2);
    return 1
}



}
