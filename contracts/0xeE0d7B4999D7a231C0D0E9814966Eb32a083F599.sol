contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 6978]




// =====================  Runtime code  =====================


const sub_12344619(?) = 10^17

const sub_b3413bda(?) = 10^18

const VERSION = 1


array of address stor1;
array of address stor2;
array of uint256 stor3;
array of uint256 stor4;
array of uint256 stor5;
array of uint256 stor6;
array of struct stor8;

function sub_d72d8a30(?) payable {
    return uint256(stor[arg1 + 7][address(arg2)])
}

function _fallback() payable {
    revert
}

function assert(bool arg1) payable {
    require arg1
}

function sub_1b92836d(?) payable {
    require arg1 >= 0
    return arg1
}

function sub_7a9fd9b8(?) payable {
    require arg1 >= 0
    return arg1
}

function sub_acbbf3ac(?) payable {
    require arg1 + 1
    return (10^18 / arg1 + 1)
}

function sub_d87789e0(?) payable {
    require arg1 - 1
    return (10^18 / arg1 - 1)
}

function sub_62d58a22(?) payable {
    if arg1 < 0:
        require -arg1 > 0
    return -arg1
}

function safeSub(uint256 arg1, uint256 arg2) payable {
    require arg2 <= arg1
    return (arg1 - arg2)
}

function sub_0d242f6f(?) payable {
    if arg1:
        require arg1
        require arg2 * arg1 / arg1 == arg2
    return (arg2 * arg1)
}

function safeAdd(uint256 arg1, uint256 arg2) payable {
    require arg2 + arg1 >= arg1
    require arg2 + arg1 >= arg2
    return (arg2 + arg1)
}

function safeMul(uint256 arg1, uint256 arg2) payable {
    if arg1:
        require arg1
        require arg2 * arg1 / arg1 == arg2
    return (arg2 * arg1)
}

function sub_2fc7be13(?) payable {
    if arg1 > 0:
        if arg2 > 0:
            require arg2 + arg1 > 0
    if arg1 < 0:
        if arg2 < 0:
            require arg2 + arg1 < 0
    return (arg2 + arg1)
}

function checkPrice(uint256 arg1, uint256 arg2) payable {
    if arg1 <= arg2:
        if arg2 - arg1 >= 10^17:
            return 1
    else:
        if arg1 - arg2 >= 10^17:
            return 1
    return 0
}

function sub_9017c954(?) payable {
    require ext_code.size(address(stor[arg1]))
    call address(stor[arg1]).0x76f77017 with:
         gas gas_remaining - 710 wei
        args uint32(stor8[arg1].field_0)
    require ext_call.success
}

function sub_154d66f1(?) payable {
    require ext_code.size(address(stor[arg1]))
    call address(stor[arg1]).0x1cd61dae with:
         gas gas_remaining - 710 wei
        args uint32(stor8[arg1].field_0), arg2
    require ext_call.success
}

function sub_2420319e(?) payable {
    require ext_code.size(address(stor[arg1]))
    call address(stor[arg1]).0xc157f13d with:
         gas gas_remaining - 710 wei
        args uint32(stor8[arg1].field_0), arg2
    require ext_call.success
}

function sub_f810246d(?) payable {
    require ext_code.size(address(stor[arg1]))
    call address(stor[arg1]).0xc0293a4d with:
         gas gas_remaining - 710 wei
        args uint32(stor8[arg1].field_0), arg2
    require ext_call.success
}

function sub_9de1af62(?) payable {
    require arg3 + uint256(stor[arg1 + 7][address(arg2)]) >= uint256(stor[arg1 + 7][address(arg2)])
    require arg3 + uint256(stor[arg1 + 7][address(arg2)]) >= arg3
    uint256(stor[arg1 + 7][address(arg2)]) += arg3
}

function sub_641ee6a3(?) payable {
    require ext_code.size(address(stor[arg1]))
    call address(stor[arg1]).0xa41f3e3d with:
         gas gas_remaining - 710 wei
        args uint32(stor8[arg1].field_0), address(arg2), arg3
    require ext_call.success
}

function sub_d61c3f09(?) payable {
    require ext_code.size(address(stor[arg1]))
    call address(stor[arg1]).0xb2f450ca with:
         gas gas_remaining - 710 wei
        args uint32(stor8[arg1].field_0), uint32(stor8[arg1].field_40)
    require ext_call.success
}

function sub_6b31d0a8(?) payable {
    require ext_code.size(address(stor[arg1]))
    call address(stor[arg1]).0x8f0be74a with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[28 len 4]
    return ext_call.return_data[28 len 4]
}

function sub_5fafbec9(?) payable {
    if arg2 < 0:
        require -arg2 > 0
        if arg2 < 0:
            require -arg2 + arg1 > arg1
    if arg1 > 0:
        if arg2 < 0:
            require -arg2 + arg1 > 0
    if arg1 < 0:
        if arg2 > 0:
            require -arg2 + arg1 < 0
    return (-arg2 + arg1)
}

function sub_0a8b7983(?) payable {
    require uint8(stor8[arg1].field_104) <= 2
    require not uint8(stor8[arg1].field_104)
    if not stor1[arg1]:
        require stor2[arg1] == arg2
    else:
        require stor1[arg1] == arg2
    uint32(stor8[arg1].field_40) = arg3
    require ext_code.size(address(stor[arg1]))
    call address(stor[arg1]).0xb2f450ca with:
         gas gas_remaining - 710 wei
        args uint32(stor8[arg1].field_0), uint32(stor8[arg1].field_40)
    require ext_call.success
    return 0
}

function sub_de973935(?) payable {
    if not uint256(stor[arg1 + 7][address(arg2)]):
        return 0
    call arg2 with:
       value uint256(stor[arg1 + 7][address(arg2)]) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        return 0
    uint256(stor[arg1 + 7][address(arg2)]) = 0
    require ext_code.size(address(stor[arg1]))
    call address(stor[arg1]).0xc0293a4d with:
         gas gas_remaining - 710 wei
        args uint32(stor8[arg1].field_0), arg2
    require ext_call.success
    return 1
}

function sub_458bdfba(?) payable {
    if not arg2:
        if ext_code.size(address(stor[arg1])):
            call address(stor[arg1]).0xe37d86d6 with:
                 gas gas_remaining - 710 wei
                args uint32(stor8[arg1].field_0), stor4[arg1], arg2
            if ext_call.success:
    else:
        if ext_code.size(address(stor[arg1])):
            call address(stor[arg1]).0xe37d86d6 with:
                 gas gas_remaining - 710 wei
                args uint32(stor8[arg1].field_0), stor3[arg1], arg2
            if ext_call.success:
    revert
}

function sub_984de953(?) payable {
    require address(stor[arg1]) == msg.sender
    if not arg2:
        if ext_code.size(address(stor[arg1])):
            call address(stor[arg1]).0x45d03707 with:
                 gas gas_remaining - 710 wei
                args 0, uint32(stor8[arg1].field_0), stor2[arg1], address(this.address), arg2, uint8(stor8[arg1].field_0), uint32(stor8[arg1].field_40)
            if ext_call.success:
    else:
        if ext_code.size(address(stor[arg1])):
            call address(stor[arg1]).0x45d03707 with:
                 gas gas_remaining - 710 wei
                args 0, uint32(stor8[arg1].field_0), stor1[arg1], address(this.address), arg2, uint8(stor8[arg1].field_0), uint32(stor8[arg1].field_40)
            if ext_call.success:
    revert
}

function sub_3a7fdfe6(?) payable {
    if arg4 != 5:
        require 10 == arg4
    address(stor[arg1]) = msg.sender
    uint32(stor8[arg1].field_0) = arg6
    uint8(stor8[arg1].field_32) = arg4
    Mask(224, 0, stor8[arg1].field_32) = 0
    uint32(stor8[arg1].field_40) = arg3
    Mask(184, 0, stor8[arg1].field_72) = 0
    require arg4 + 1
    require uint8(stor8[arg1].field_32) - 1
    if arg5:
        require 10^18 / arg4 + 1 == msg.value
    else:
        require 10^18 / uint8(stor8[arg1].field_32) - 1 == msg.value
    if not arg5:
        stor2[arg1] = arg2
        stor3[arg1] = 10^18 / arg4 + 1
        stor6[arg1] = 10^18 / uint8(stor8[arg1].field_32) - 1
        stor4[arg1] = 0
    else:
        stor1[arg1] = arg2
        stor4[arg1] = 10^18 / uint8(stor8[arg1].field_32) - 1
        stor5[arg1] = 10^18 / arg4 + 1
        stor3[arg1] = 0
    uint8(stor8[arg1].field_104) = 0
}

function sub_fe7a0fb9(?) payable {
    if arg4:
        require arg2 == stor1[arg1]
    else:
        require arg2 == stor2[arg1]
    require uint8(stor8[arg1].field_104) <= 2
    require uint8(stor8[arg1].field_104) != 2
    require stor1[arg1]
    require stor2[arg1]
    if not arg4:
        stor4[arg1] = arg3
        if arg3 <= stor4[arg1]:
            require stor4[arg1] - arg3 >= 10^17
        else:
            require arg3 - stor4[arg1] >= 10^17
    else:
        stor3[arg1] = arg3
        if arg3 <= stor3[arg1]:
            require stor3[arg1] - arg3 >= 10^17
        else:
            require arg3 - stor3[arg1] >= 10^17
    if not arg4:
        if ext_code.size(address(stor[arg1])):
            call address(stor[arg1]).0xe37d86d6 with:
                 gas gas_remaining - 710 wei
                args uint32(stor8[arg1].field_0), stor4[arg1], arg4
            if ext_call.success:
    else:
        if ext_code.size(address(stor[arg1])):
            call address(stor[arg1]).0xe37d86d6 with:
                 gas gas_remaining - 710 wei
                args uint32(stor8[arg1].field_0), stor3[arg1], arg4
            if ext_call.success:
    revert
}

function sub_e0c703dc(?) payable {
    require uint8(stor8[arg1].field_104) <= 2
    require not uint8(stor8[arg1].field_104)
    if stor1[arg1]:
        require not stor2[arg1]
        require stor1[arg1] == arg2
        if uint8(stor8[arg1].field_32) + 1:
            require (10^18 / uint8(stor8[arg1].field_32) + 1) + uint256(stor[arg1 + 7][stor1[arg1]]) >= uint256(stor[arg1 + 7][stor1[arg1]])
            require (10^18 / uint8(stor8[arg1].field_32) + 1) + uint256(stor[arg1 + 7][stor1[arg1]]) >= 10^18 / uint8(stor8[arg1].field_32) + 1
            uint256(stor[arg1 + 7][stor1[arg1]]) += 10^18 / uint8(stor8[arg1].field_32) + 1
            uint8(stor8[arg1].field_104) = 2
            if ext_code.size(address(stor[arg1])):
                call address(stor[arg1]).0x76f77017 with:
                     gas gas_remaining - 710 wei
                    args uint32(stor8[arg1].field_0)
                if ext_call.success:
                    return 1
    else:
        if stor2[arg1] == arg2:
            if uint8(stor8[arg1].field_32) - 1:
                require (10^18 / uint8(stor8[arg1].field_32) - 1) + uint256(stor[arg1 + 7][stor2[arg1]]) >= uint256(stor[arg1 + 7][stor2[arg1]])
                require (10^18 / uint8(stor8[arg1].field_32) - 1) + uint256(stor[arg1 + 7][stor2[arg1]]) >= 10^18 / uint8(stor8[arg1].field_32) - 1
                uint256(stor[arg1 + 7][stor2[arg1]]) += 10^18 / uint8(stor8[arg1].field_32) - 1
                uint8(stor8[arg1].field_104) = 2
                if ext_code.size(address(stor[arg1])):
                    call address(stor[arg1]).0x76f77017 with:
                         gas gas_remaining - 710 wei
                        args uint32(stor8[arg1].field_0)
                    if ext_call.success:
                        return 1
        else:
            require not stor2[arg1]
            require stor1[arg1] == arg2
            if uint8(stor8[arg1].field_32) + 1:
                require (10^18 / uint8(stor8[arg1].field_32) + 1) + uint256(stor[arg1 + 7][stor1[arg1]]) >= uint256(stor[arg1 + 7][stor1[arg1]])
                require (10^18 / uint8(stor8[arg1].field_32) + 1) + uint256(stor[arg1 + 7][stor1[arg1]]) >= 10^18 / uint8(stor8[arg1].field_32) + 1
                uint256(stor[arg1 + 7][stor1[arg1]]) += 10^18 / uint8(stor8[arg1].field_32) + 1
                uint8(stor8[arg1].field_104) = 2
                if ext_code.size(address(stor[arg1])):
                    call address(stor[arg1]).0x76f77017 with:
                         gas gas_remaining - 710 wei
                        args uint32(stor8[arg1].field_0)
                    if ext_call.success:
                        return 1
    revert
}

function sub_29f2e907(?) payable {
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
    require uint8(stor8[arg1].field_104) <= 2
    if uint8(stor8[arg1].field_104) == 2:
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        return 0
    if arg3:
        if not stor1[arg1]:
            uint8(stor8[arg1].field_104) = 1
            if not arg3:
                stor2[arg1] = arg2
                stor6[arg1] = stor4[arg1]
                stor4[arg1] = 0
            else:
                stor1[arg1] = arg2
                stor5[arg1] = stor3[arg1]
                stor3[arg1] = 0
            if ext_code.size(address(stor[arg1])):
                call address(stor[arg1]).0x1cd61dae with:
                     gas gas_remaining - 710 wei
                    args uint32(stor8[arg1].field_0), arg2
                if ext_call.success:
                    return 1
        else:
            require msg.value + uint256(stor[arg1 + 7][stor1[arg1]]) >= uint256(stor[arg1 + 7][stor1[arg1]])
            require msg.value + uint256(stor[arg1 + 7][stor1[arg1]]) >= msg.value
            uint256(stor[arg1 + 7][stor1[arg1]]) += msg.value
            if not arg3:
                stor2[arg1] = arg2
                stor6[arg1] = stor4[arg1]
                stor4[arg1] = 0
            else:
                stor1[arg1] = arg2
                stor5[arg1] = stor3[arg1]
                stor3[arg1] = 0
            if ext_code.size(address(stor[arg1])):
                call address(stor[arg1]).0xa41f3e3d with:
                     gas gas_remaining - 710 wei
                    args uint32(stor8[arg1].field_0), address(arg2), arg3
                if ext_call.success:
                    return 1
    else:
        if not stor2[arg1]:
            uint8(stor8[arg1].field_104) = 1
            if not arg3:
                stor2[arg1] = arg2
                stor6[arg1] = stor4[arg1]
                stor4[arg1] = 0
            else:
                stor1[arg1] = arg2
                stor5[arg1] = stor3[arg1]
                stor3[arg1] = 0
            if ext_code.size(address(stor[arg1])):
                call address(stor[arg1]).0x1cd61dae with:
                     gas gas_remaining - 710 wei
                    args uint32(stor8[arg1].field_0), arg2
                if ext_call.success:
                    return 1
        else:
            require msg.value + uint256(stor[arg1 + 7][stor2[arg1]]) >= uint256(stor[arg1 + 7][stor2[arg1]])
            require msg.value + uint256(stor[arg1 + 7][stor2[arg1]]) >= msg.value
            uint256(stor[arg1 + 7][stor2[arg1]]) += msg.value
            if not arg3:
                stor2[arg1] = arg2
                stor6[arg1] = stor4[arg1]
                stor4[arg1] = 0
            else:
                stor1[arg1] = arg2
                stor5[arg1] = stor3[arg1]
                stor3[arg1] = 0
            if ext_code.size(address(stor[arg1])):
                call address(stor[arg1]).0xa41f3e3d with:
                     gas gas_remaining - 710 wei
                    args uint32(stor8[arg1].field_0), address(arg2), arg3
                if ext_call.success:
                    return 1
    revert
}

function sub_d30d447d(?) payable {
    require ext_code.size(address(stor[arg1]))
    call address(stor[arg1]).expireDate() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require block.timestamp >= ext_call.return_data[0]
    if block.timestamp >= ext_call.return_data[0] + (72 * 24 * 3600):
        if 0xfe02a56127affbba940bb116fa30a3af10d12f80 != msg.sender:
            if stor1[arg1] != msg.sender:
                require stor2[arg1] == msg.sender
        require uint8(stor8[arg1].field_104) <= 2
        require uint8(stor8[arg1].field_104) != 2
        uint8(stor8[arg1].field_104) = 2
        require stor5[arg1] + uint256(stor[arg1 + 7][stor1[arg1]]) >= uint256(stor[arg1 + 7][stor1[arg1]])
        require stor5[arg1] + uint256(stor[arg1 + 7][stor1[arg1]]) >= stor5[arg1]
        uint256(stor[arg1 + 7][stor1[arg1]]) += stor5[arg1]
        require stor6[arg1] + uint256(stor[arg1 + 7][stor2[arg1]]) >= uint256(stor[arg1 + 7][stor2[arg1]])
        require stor6[arg1] + uint256(stor[arg1 + 7][stor2[arg1]]) >= stor6[arg1]
        uint256(stor[arg1 + 7][stor2[arg1]]) += stor6[arg1]
    else:
        if 0xfe02a56127affbba940bb116fa30a3af10d12f80 != msg.sender:
            require address(stor[arg1]) == msg.sender
        require uint8(stor8[arg1].field_104) <= 2
        require uint8(stor8[arg1].field_104) != 2
        require uint8(stor8[arg1].field_32) + 1
        require uint8(stor8[arg1].field_32) - 1
        require ext_code.size(address(stor[arg1]))
        call address(stor[arg1]).0x8f0be74a with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_call.return_data[28 len 4]
        uint32(stor8[arg1].field_72) = uint32(ext_call.return_data[0])
        require uint8(stor8[arg1].field_104) <= 2
        if not uint8(stor8[arg1].field_104):
            if stor1[arg1]:
                require (10^18 / uint8(stor8[arg1].field_32) + 1) + uint256(stor[arg1 + 7][stor1[arg1]]) >= uint256(stor[arg1 + 7][stor1[arg1]])
                require (10^18 / uint8(stor8[arg1].field_32) + 1) + uint256(stor[arg1 + 7][stor1[arg1]]) >= 10^18 / uint8(stor8[arg1].field_32) + 1
                uint256(stor[arg1 + 7][stor1[arg1]]) += 10^18 / uint8(stor8[arg1].field_32) + 1
                require 10^18 / uint8(stor8[arg1].field_32) + 1 <= eth.balance(this.address)
                if eth.balance(this.address) - (10^18 / uint8(stor8[arg1].field_32) + 1) > 0:
                    require eth.balance(this.address) - (10^18 / uint8(stor8[arg1].field_32) + 1) + uint256(stor[arg1 + 7][0xfe02a56127affbba940bb116fa30a3af10d12f80]) >= uint256(stor[arg1 + 7][0xfe02a56127affbba940bb116fa30a3af10d12f80])
                    require uint256(stor[arg1 + 7][0xfe02a56127affbba940bb116fa30a3af10d12f80]) >= 0
                    uint256(stor[arg1 + 7][0xfe02a56127affbba940bb116fa30a3af10d12f80]) = eth.balance(this.address) - (10^18 / uint8(stor8[arg1].field_32) + 1) + uint256(stor[arg1 + 7][0xfe02a56127affbba940bb116fa30a3af10d12f80])
            else:
                require (10^18 / uint8(stor8[arg1].field_32) - 1) + uint256(stor[arg1 + 7][stor2[arg1]]) >= uint256(stor[arg1 + 7][stor2[arg1]])
                require (10^18 / uint8(stor8[arg1].field_32) - 1) + uint256(stor[arg1 + 7][stor2[arg1]]) >= 10^18 / uint8(stor8[arg1].field_32) - 1
                uint256(stor[arg1 + 7][stor2[arg1]]) += 10^18 / uint8(stor8[arg1].field_32) - 1
                require 10^18 / uint8(stor8[arg1].field_32) - 1 <= eth.balance(this.address)
                if eth.balance(this.address) - (10^18 / uint8(stor8[arg1].field_32) - 1) > 0:
                    require eth.balance(this.address) - (10^18 / uint8(stor8[arg1].field_32) - 1) + uint256(stor[arg1 + 7][0xfe02a56127affbba940bb116fa30a3af10d12f80]) >= uint256(stor[arg1 + 7][0xfe02a56127affbba940bb116fa30a3af10d12f80])
                    require uint256(stor[arg1 + 7][0xfe02a56127affbba940bb116fa30a3af10d12f80]) >= 0
                    uint256(stor[arg1 + 7][0xfe02a56127affbba940bb116fa30a3af10d12f80]) = eth.balance(this.address) - (10^18 / uint8(stor8[arg1].field_32) - 1) + uint256(stor[arg1 + 7][0xfe02a56127affbba940bb116fa30a3af10d12f80])
        else:
            require uint32(stor8[arg1].field_72)
            require uint32(stor8[arg1].field_72)
            if uint32(stor8[arg1].field_72) <= uint32(100 * uint32(stor8[arg1].field_40)):
                if 10^18 * uint32((100 * uint32(stor8[arg1].field_40)) - uint32(stor8[arg1].field_72)) / uint32(stor8[arg1].field_72) > 10^18 / uint8(stor8[arg1].field_32) - 1:
                    require (10^18 / uint8(stor8[arg1].field_32) + 1) + (10^18 / uint8(stor8[arg1].field_32) - 1) + uint256(stor[arg1 + 7][stor1[arg1]]) >= uint256(stor[arg1 + 7][stor1[arg1]])
                    require uint256(stor[arg1 + 7][stor1[arg1]]) >= 0
                    uint256(stor[arg1 + 7][stor1[arg1]]) = (10^18 / uint8(stor8[arg1].field_32) + 1) + (10^18 / uint8(stor8[arg1].field_32) - 1) + uint256(stor[arg1 + 7][stor1[arg1]])
                    require uint256(stor[arg1 + 7][stor2[arg1]]) >= uint256(stor[arg1 + 7][stor2[arg1]])
                    require uint256(stor[arg1 + 7][stor2[arg1]]) >= 0
                else:
                    require (10^18 * uint32((100 * uint32(stor8[arg1].field_40)) - uint32(stor8[arg1].field_72)) / uint32(stor8[arg1].field_72)) + (10^18 / uint8(stor8[arg1].field_32) + 1) + uint256(stor[arg1 + 7][stor1[arg1]]) >= uint256(stor[arg1 + 7][stor1[arg1]])
                    require uint256(stor[arg1 + 7][stor1[arg1]]) >= 0
                    uint256(stor[arg1 + 7][stor1[arg1]]) = (10^18 * uint32((100 * uint32(stor8[arg1].field_40)) - uint32(stor8[arg1].field_72)) / uint32(stor8[arg1].field_72)) + (10^18 / uint8(stor8[arg1].field_32) + 1) + uint256(stor[arg1 + 7][stor1[arg1]])
                    require (10^18 / uint8(stor8[arg1].field_32) - 1) - (10^18 * uint32((100 * uint32(stor8[arg1].field_40)) - uint32(stor8[arg1].field_72)) / uint32(stor8[arg1].field_72)) + uint256(stor[arg1 + 7][stor2[arg1]]) >= uint256(stor[arg1 + 7][stor2[arg1]])
                    require uint256(stor[arg1 + 7][stor2[arg1]]) >= 0
                    uint256(stor[arg1 + 7][stor2[arg1]]) = (10^18 / uint8(stor8[arg1].field_32) - 1) - (10^18 * uint32((100 * uint32(stor8[arg1].field_40)) - uint32(stor8[arg1].field_72)) / uint32(stor8[arg1].field_72)) + uint256(stor[arg1 + 7][stor2[arg1]])
            else:
                if 10^18 * uint32(uint32(stor8[arg1].field_72) - (100 * uint32(stor8[arg1].field_40))) / uint32(stor8[arg1].field_72) > 10^18 / uint8(stor8[arg1].field_32) + 1:
                    require uint256(stor[arg1 + 7][stor1[arg1]]) >= uint256(stor[arg1 + 7][stor1[arg1]])
                    require uint256(stor[arg1 + 7][stor1[arg1]]) >= 0
                    require (10^18 / uint8(stor8[arg1].field_32) + 1) + (10^18 / uint8(stor8[arg1].field_32) - 1) + uint256(stor[arg1 + 7][stor2[arg1]]) >= uint256(stor[arg1 + 7][stor2[arg1]])
                    require uint256(stor[arg1 + 7][stor2[arg1]]) >= 0
                    uint256(stor[arg1 + 7][stor2[arg1]]) = (10^18 / uint8(stor8[arg1].field_32) + 1) + (10^18 / uint8(stor8[arg1].field_32) - 1) + uint256(stor[arg1 + 7][stor2[arg1]])
                else:
                    require (10^18 / uint8(stor8[arg1].field_32) + 1) - (10^18 * uint32(uint32(stor8[arg1].field_72) - (100 * uint32(stor8[arg1].field_40))) / uint32(stor8[arg1].field_72)) + uint256(stor[arg1 + 7][stor1[arg1]]) >= uint256(stor[arg1 + 7][stor1[arg1]])
                    require uint256(stor[arg1 + 7][stor1[arg1]]) >= 0
                    uint256(stor[arg1 + 7][stor1[arg1]]) = (10^18 / uint8(stor8[arg1].field_32) + 1) - (10^18 * uint32(uint32(stor8[arg1].field_72) - (100 * uint32(stor8[arg1].field_40))) / uint32(stor8[arg1].field_72)) + uint256(stor[arg1 + 7][stor1[arg1]])
                    require (10^18 * uint32(uint32(stor8[arg1].field_72) - (100 * uint32(stor8[arg1].field_40))) / uint32(stor8[arg1].field_72)) + (10^18 / uint8(stor8[arg1].field_32) - 1) + uint256(stor[arg1 + 7][stor2[arg1]]) >= uint256(stor[arg1 + 7][stor2[arg1]])
                    require uint256(stor[arg1 + 7][stor2[arg1]]) >= 0
                    uint256(stor[arg1 + 7][stor2[arg1]]) = (10^18 * uint32(uint32(stor8[arg1].field_72) - (100 * uint32(stor8[arg1].field_40))) / uint32(stor8[arg1].field_72)) + (10^18 / uint8(stor8[arg1].field_32) - 1) + uint256(stor[arg1 + 7][stor2[arg1]])
            require (10^18 / uint8(stor8[arg1].field_32) + 1) + (10^18 / uint8(stor8[arg1].field_32) - 1) <= eth.balance(this.address)
            if eth.balance(this.address) - (10^18 / uint8(stor8[arg1].field_32) + 1) - (10^18 / uint8(stor8[arg1].field_32) - 1) > 0:
                require eth.balance(this.address) - (10^18 / uint8(stor8[arg1].field_32) + 1) - (10^18 / uint8(stor8[arg1].field_32) - 1) + uint256(stor[arg1 + 7][0xfe02a56127affbba940bb116fa30a3af10d12f80]) >= uint256(stor[arg1 + 7][0xfe02a56127affbba940bb116fa30a3af10d12f80])
                require uint256(stor[arg1 + 7][0xfe02a56127affbba940bb116fa30a3af10d12f80]) >= 0
                uint256(stor[arg1 + 7][0xfe02a56127affbba940bb116fa30a3af10d12f80]) = eth.balance(this.address) - (10^18 / uint8(stor8[arg1].field_32) + 1) - (10^18 / uint8(stor8[arg1].field_32) - 1) + uint256(stor[arg1 + 7][0xfe02a56127affbba940bb116fa30a3af10d12f80])
        require ext_code.size(address(stor[arg1]))
        call address(stor[arg1]).0xc157f13d with:
             gas gas_remaining - 710 wei
            args uint32(stor8[arg1].field_0), uint32(stor8[arg1].field_72)
        require ext_call.success
        uint8(stor8[arg1].field_104) = 2
}



}
