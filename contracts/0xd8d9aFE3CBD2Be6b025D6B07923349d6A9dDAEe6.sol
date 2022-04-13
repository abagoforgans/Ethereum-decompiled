contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 5891]




// =====================  Runtime code  =====================


array of address stor1;
array of address stor2;
array of uint256 stor3;
array of uint256 stor4;
array of uint256 stor5;
array of uint256 stor6;
array of uint256 stor7;
array of uint256 stor8;
array of struct stor9;

function _fallback() payable {
    revert
}

function sub_acbbf3ac(?) payable {
    require arg1 + 1
    return (10 * 10^18 / arg1 + 1)
}

function sub_d87789e0(?) payable {
    require arg1 - 1
    return (10 * 10^18 / arg1 - 1)
}

function sub_9017c954(?) payable {
    require ext_code.size(stor[arg1])
    call stor[arg1].0x76f77017 with:
         gas gas_remaining - 710 wei
        args uint32(stor9[arg1].field_0)
    require ext_call.success
}

function sub_154d66f1(?) payable {
    require ext_code.size(stor[arg1])
    call stor[arg1].0x1cd61dae with:
         gas gas_remaining - 710 wei
        args uint32(stor9[arg1].field_0), arg2
    require ext_call.success
}

function sub_2420319e(?) payable {
    require ext_code.size(stor[arg1])
    call stor[arg1].0xc157f13d with:
         gas gas_remaining - 710 wei
        args uint32(stor9[arg1].field_0), arg2
    require ext_call.success
}

function sub_ca12323a(?) payable {
    require ext_code.size(stor[arg1])
    call stor[arg1].0x619ec1b3 with:
         gas gas_remaining - 710 wei
        args uint32(stor9[arg1].field_0), arg2
    require ext_call.success
}

function sub_641ee6a3(?) payable {
    require ext_code.size(stor[arg1])
    call stor[arg1].0xa41f3e3d with:
         gas gas_remaining - 710 wei
        args uint32(stor9[arg1].field_0), address(arg2), arg3
    require ext_call.success
}

function sub_d61c3f09(?) payable {
    require ext_code.size(stor[arg1])
    call stor[arg1].0xb2f450ca with:
         gas gas_remaining - 710 wei
        args uint32(stor9[arg1].field_0), uint32(stor9[arg1].field_40)
    require ext_call.success
}

function sub_6b31d0a8(?) payable {
    require ext_code.size(stor[arg1])
    call stor[arg1].0x8f0be74a with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[28 len 4]
    return ext_call.return_data[28 len 4]
}

function sub_458bdfba(?) payable {
    require ext_code.size(stor[arg1])
    if not arg2:
        call stor[arg1].0xe37d86d6 with:
             gas gas_remaining - 710 wei
            args uint32(stor9[arg1].field_0), stor4[arg1], arg2
    else:
        call stor[arg1].0xe37d86d6 with:
             gas gas_remaining - 710 wei
            args uint32(stor9[arg1].field_0), stor3[arg1], arg2
    require ext_call.success
}

function sub_0a8b7983(?) payable {
    require ext_code.size(stor[arg1])
    call stor[arg1].0xb8a67c3c with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require block.timestamp < ext_call.return_data[0]
    require uint8(stor9[arg1].field_104) <= 3
    require not uint8(stor9[arg1].field_104)
    if not stor1[arg1]:
        require stor2[arg1] == arg2
    else:
        require stor1[arg1] == arg2
    uint32(stor9[arg1].field_40) = arg3
    require ext_code.size(stor[arg1])
    call stor[arg1].0xb2f450ca with:
         gas gas_remaining - 710 wei
        args uint32(stor9[arg1].field_0), uint32(stor9[arg1].field_40)
    require ext_call.success
    return 0
}

function sub_3a7fdfe6(?) payable {
    if arg4 != 5:
        require 10 == arg4
    stor[arg1] = msg.sender
    uint32(stor9[arg1].field_0) = arg6
    uint8(stor9[arg1].field_32) = arg4
    Mask(224, 0, stor9[arg1].field_32) = 0
    uint32(stor9[arg1].field_40) = arg3
    Mask(184, 0, stor9[arg1].field_72) = 0
    require arg4 + 1
    require uint8(stor9[arg1].field_32) - 1
    if arg5:
        require 10 * 10^18 / arg4 + 1 == msg.value
    else:
        require 10 * 10^18 / uint8(stor9[arg1].field_32) - 1 == msg.value
    if not arg5:
        stor2[arg1] = arg2
        stor3[arg1] = 10 * 10^18 / arg4 + 1
        stor6[arg1] = 10 * 10^18 / uint8(stor9[arg1].field_32) - 1
        stor4[arg1] = 0
    else:
        stor1[arg1] = arg2
        stor4[arg1] = 10 * 10^18 / uint8(stor9[arg1].field_32) - 1
        stor5[arg1] = 10 * 10^18 / arg4 + 1
        stor3[arg1] = 0
    uint8(stor9[arg1].field_104) = 0
}

function sub_fe7a0fb9(?) payable {
    require ext_code.size(stor[arg1])
    call stor[arg1].0xb8a67c3c with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require block.timestamp < ext_call.return_data[0]
    if arg4:
        require arg2 == stor1[arg1]
    else:
        require arg2 == stor2[arg1]
    require uint8(stor9[arg1].field_104) <= 3
    require uint8(stor9[arg1].field_104) != 2
    require stor1[arg1]
    require stor2[arg1]
    if not arg4:
        stor4[arg1] = arg3
        require ext_code.size(stor[arg1])
        call stor[arg1].0xe37d86d6 with:
             gas gas_remaining - 710 wei
            args uint32(stor9[arg1].field_0), stor4[arg1], arg4
    else:
        stor3[arg1] = arg3
        require ext_code.size(stor[arg1])
        call stor[arg1].0xe37d86d6 with:
             gas gas_remaining - 710 wei
            args uint32(stor9[arg1].field_0), stor3[arg1], arg4
    require ext_call.success
}

function sub_f5471307(?) payable {
    require ext_code.size(stor[arg1])
    call stor[arg1].0xb8a67c3c with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require block.timestamp >= ext_call.return_data[0] + (24 * 3600)
    require uint8(stor9[arg1].field_104) <= 3
    require uint8(stor9[arg1].field_104) != 2
    if msg.sender != 0xfe02a56127affbba940bb116fa30a3af10d12f80:
        if stor1[arg1] != msg.sender:
            require stor2[arg1] == msg.sender
    uint8(stor9[arg1].field_104) = 2
    if not arg2:
        if stor8[arg1] > 0:
            stor7[arg1] = 0
            call stor1[arg1] with:
               value stor8[arg1] wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
    else:
        if stor7[arg1] > 0:
            stor7[arg1] = 0
            call stor1[arg1] with:
               value stor7[arg1] wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
}

function sub_e0c703dc(?) payable {
    require ext_code.size(stor[arg1])
    call stor[arg1].0xb8a67c3c with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require block.timestamp < ext_call.return_data[0]
    require uint8(stor9[arg1].field_104) <= 3
    require not uint8(stor9[arg1].field_104)
    if stor1[arg1]:
        require not stor2[arg1]
        require stor1[arg1] == arg2
        require uint8(stor9[arg1].field_32) + 1
        uint8(stor9[arg1].field_104) = 2
        call stor1[arg1] with:
           value 10 * 10^18 / uint8(stor9[arg1].field_32) + 1 wei
             gas 2300 * is_zero(value) wei
    else:
        if stor2[arg1] == arg2:
            require uint8(stor9[arg1].field_32) - 1
            uint8(stor9[arg1].field_104) = 2
            call stor2[arg1] with:
               value 10 * 10^18 / uint8(stor9[arg1].field_32) - 1 wei
                 gas 2300 * is_zero(value) wei
        else:
            require not stor2[arg1]
            require stor1[arg1] == arg2
            require uint8(stor9[arg1].field_32) + 1
            uint8(stor9[arg1].field_104) = 2
            call stor1[arg1] with:
               value 10 * 10^18 / uint8(stor9[arg1].field_32) + 1 wei
                 gas 2300 * is_zero(value) wei
    require ext_call.success
    if eth.balance(this.address) > 0:
        call 0xfe02a56127affbba940bb116fa30a3af10d12f80 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    require ext_code.size(stor[arg1])
    call stor[arg1].0x76f77017 with:
         gas gas_remaining - 710 wei
        args uint32(stor9[arg1].field_0)
    require ext_call.success
}

function sub_29f2e907(?) payable {
    require ext_code.size(stor[arg1])
    call stor[arg1].0xb8a67c3c with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require block.timestamp < ext_call.return_data[0]
    if arg3:
        if not stor3[arg1]:
            call msg.sender with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            return 0
        if stor3[arg1] != msg.value:
            call msg.sender with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            return 0
    else:
        if not stor4[arg1]:
            call msg.sender with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            return 0
        if stor4[arg1] != msg.value:
            call msg.sender with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            return 0
    require uint8(stor9[arg1].field_104) <= 3
    if uint8(stor9[arg1].field_104) == 2:
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        return 0
    if arg3:
        stor1[arg1] = arg2
        stor5[arg1] = stor3[arg1]
        stor3[arg1] = 0
        if not stor1[arg1]:
            uint8(stor9[arg1].field_104) = 1
            require ext_code.size(stor[arg1])
            call stor[arg1].0x1cd61dae with:
                 gas gas_remaining - 710 wei
                args uint32(stor9[arg1].field_0), arg2
        else:
            call stor1[arg1] with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require ext_code.size(stor[arg1])
            call stor[arg1].0xa41f3e3d with:
                 gas gas_remaining - 710 wei
                args uint32(stor9[arg1].field_0), address(arg2), arg3
    else:
        stor2[arg1] = arg2
        stor6[arg1] = stor4[arg1]
        stor4[arg1] = 0
        if not stor2[arg1]:
            uint8(stor9[arg1].field_104) = 1
            require ext_code.size(stor[arg1])
            call stor[arg1].0x1cd61dae with:
                 gas gas_remaining - 710 wei
                args uint32(stor9[arg1].field_0), arg2
        else:
            call stor2[arg1] with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require ext_code.size(stor[arg1])
            call stor[arg1].0xa41f3e3d with:
                 gas gas_remaining - 710 wei
                args uint32(stor9[arg1].field_0), address(arg2), arg3
    require ext_call.success
    return 1
}

function sub_d30d447d(?) payable {
    require ext_code.size(stor[arg1])
    call stor[arg1].0xb8a67c3c with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require block.timestamp >= ext_call.return_data[0]
    if block.timestamp < ext_call.return_data[0] + (24 * 3600):
        if msg.sender != 0xfe02a56127affbba940bb116fa30a3af10d12f80:
            require stor[arg1] == msg.sender
    require uint8(stor9[arg1].field_104) <= 3
    require uint8(stor9[arg1].field_104) != 2
    require uint8(stor9[arg1].field_32) + 1
    require uint8(stor9[arg1].field_32) - 1
    require ext_code.size(stor[arg1])
    call stor[arg1].0x8f0be74a with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[28 len 4]
    uint32(stor9[arg1].field_72) = uint32(ext_call.return_data[0])
    require uint8(stor9[arg1].field_104) <= 3
    uint8(stor9[arg1].field_104) = 2
    if not uint8(stor9[arg1].field_104):
        if stor1[arg1]:
            call stor1[arg1] with:
               value 10 * 10^18 / uint8(stor9[arg1].field_32) + 1 wei
                 gas 2300 * is_zero(value) wei
        else:
            call stor2[arg1] with:
               value 10 * 10^18 / uint8(stor9[arg1].field_32) - 1 wei
                 gas 2300 * is_zero(value) wei
        require ext_call.success
        require ext_code.size(stor[arg1])
        call stor[arg1].0xc157f13d with:
             gas gas_remaining - 710 wei
            args uint32(stor9[arg1].field_0), uint32(stor9[arg1].field_72)
    else:
        require uint32(stor9[arg1].field_72)
        require uint32(stor9[arg1].field_72)
        if uint32(stor9[arg1].field_72) <= uint32(100 * uint32(stor9[arg1].field_40)):
            stor7[arg1] = (10 * 10^18 * uint32((100 * uint32(stor9[arg1].field_40)) - uint32(stor9[arg1].field_72)) / uint32(stor9[arg1].field_72)) + (10 * 10^18 / uint8(stor9[arg1].field_32) + 1)
            if 10 * 10^18 * uint32((100 * uint32(stor9[arg1].field_40)) - uint32(stor9[arg1].field_72)) / uint32(stor9[arg1].field_72) > 10 * 10^18 / uint8(stor9[arg1].field_32) - 1:
                stor7[arg1] = (10 * 10^18 / uint8(stor9[arg1].field_32) + 1) + (10 * 10^18 / uint8(stor9[arg1].field_32) - 1)
            stor8[arg1] = (10 * 10^18 / uint8(stor9[arg1].field_32) + 1) + (10 * 10^18 / uint8(stor9[arg1].field_32) - 1) - stor7[arg1]
        else:
            stor8[arg1] = (10 * 10^18 * uint32(uint32(stor9[arg1].field_72) - (100 * uint32(stor9[arg1].field_40))) / uint32(stor9[arg1].field_72)) + (10 * 10^18 / uint8(stor9[arg1].field_32) - 1)
            if 10 * 10^18 * uint32(uint32(stor9[arg1].field_72) - (100 * uint32(stor9[arg1].field_40))) / uint32(stor9[arg1].field_72) > 10 * 10^18 / uint8(stor9[arg1].field_32) + 1:
                stor8[arg1] = (10 * 10^18 / uint8(stor9[arg1].field_32) + 1) + (10 * 10^18 / uint8(stor9[arg1].field_32) - 1)
            stor7[arg1] = (10 * 10^18 / uint8(stor9[arg1].field_32) + 1) + (10 * 10^18 / uint8(stor9[arg1].field_32) - 1) - stor8[arg1]
        call stor1[arg1] with:
           value stor7[arg1] wei
             gas 2300 * is_zero(value) wei
        call stor2[arg1] with:
           value stor8[arg1] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            require ext_code.size(stor[arg1])
            call stor[arg1].0x619ec1b3 with:
                 gas gas_remaining - 710 wei
                args uint32(stor9[arg1].field_0), uint32(stor9[arg1].field_72)
        else:
            stor7[arg1] = 0
            stor8[arg1] = 0
            require ext_code.size(stor[arg1])
            call stor[arg1].0xc157f13d with:
                 gas gas_remaining - 710 wei
                args uint32(stor9[arg1].field_0), uint32(stor9[arg1].field_72)
    require ext_call.success
    if eth.balance(this.address) > 0:
        call 0xfe02a56127affbba940bb116fa30a3af10d12f80 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}



}
