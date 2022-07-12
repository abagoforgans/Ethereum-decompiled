contract main {




// =====================  Runtime code  =====================


address stor0;
address sellerAddress;
address providerAddress;
uint16 sub_011dca50; offset 160
address operatorAddress;
mapping of struct buyers;
uint256 sub_ea5fb69b;
uint256 stor6;
uint256 sub_33496361;
uint256 sub_10981436;
uint256 sub_37dd439e;
uint256 sub_00b5625b;
uint256 stor11;
uint256 sub_8c3603f9;

function sub_00b5625b(?) {
    return sub_00b5625b
}

function sub_011dca50(?) {
    return sub_011dca50
}

function seller() {
    return sellerAddress
}

function provider() {
    return providerAddress
}

function sub_10981436(?) {
    return sub_10981436
}

function sub_33496361(?) {
    return sub_33496361
}

function sub_37dd439e(?) {
    return sub_37dd439e
}

function operator() {
    return operatorAddress
}

function sub_8c3603f9(?) {
    return sub_8c3603f9
}

function buyers(address arg1) {
    require calldata.size - 4 >= 32
    return buyers[arg1].field_0, buyers[arg1].field_256, buyers[arg1].field_512
}

function sub_ea5fb69b(?) {
    return sub_ea5fb69b
}

function _fallback() payable {
    revert
}

function tokenFallback(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The method can only be called by TOKEN'
    if arg2 != stor6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Invalid value : the value must be equal to 'netSaleAmt' '
    buyers[address(arg1)].field_0++
    require buyers[address(arg1)].field_256 + arg2 >= buyers[address(arg1)].field_256
    buyers[address(arg1)].field_256 += arg2
}

function sub_02a51665(?) {
    require calldata.size - 4 >= 64
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The method can only be called by BROKER'
    if arg2 > stor6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Invalid value: must be less than or equal to 'netSaleAmt' '
    if buyers[address(arg1)].field_0 <= 0:
        revert with 0, ''_buyer' NOT deposited'
    buyers[address(arg1)].field_0--
    if arg2 <= sub_10981436:
        require sub_10981436 <= stor6
        if not sub_10981436:
            require sub_ea5fb69b > 0
            require sub_ea5fb69b
            require ext_code.size(stor0)
            if stor6 - sub_10981436 > 0:
                call stor0.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), stor6 - sub_10981436
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require buyers[address(arg1)].field_512 + stor6 - sub_10981436 >= buyers[address(arg1)].field_512
                buyers[address(arg1)].field_512 = buyers[address(arg1)].field_512 + stor6 - sub_10981436
            call stor0.0xa9059cbb with:
                 gas gas_remaining wei
                args sellerAddress, 0 / sub_ea5fb69b
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor0)
            call stor0.0xa9059cbb with:
                 gas gas_remaining wei
                args providerAddress, sub_10981436 - (0 / sub_ea5fb69b)
        else:
            require sub_10981436
            require sub_10981436 * stor11 / sub_10981436 == stor11
            require sub_ea5fb69b > 0
            require sub_ea5fb69b
            require ext_code.size(stor0)
            if stor6 - sub_10981436 > 0:
                call stor0.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), stor6 - sub_10981436
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require buyers[address(arg1)].field_512 + stor6 - sub_10981436 >= buyers[address(arg1)].field_512
                buyers[address(arg1)].field_512 = buyers[address(arg1)].field_512 + stor6 - sub_10981436
            call stor0.0xa9059cbb with:
                 gas gas_remaining wei
                args sellerAddress, sub_10981436 * stor11 / sub_ea5fb69b
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor0)
            call stor0.0xa9059cbb with:
                 gas gas_remaining wei
                args providerAddress, sub_10981436 - (sub_10981436 * stor11 / sub_ea5fb69b)
    else:
        require arg2 <= stor6
        if not arg2:
            require sub_ea5fb69b > 0
            require sub_ea5fb69b
            require ext_code.size(stor0)
            if stor6 - arg2 > 0:
                call stor0.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), stor6 - arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require buyers[address(arg1)].field_512 + stor6 - arg2 >= buyers[address(arg1)].field_512
                buyers[address(arg1)].field_512 = buyers[address(arg1)].field_512 + stor6 - arg2
            call stor0.0xa9059cbb with:
                 gas gas_remaining wei
                args sellerAddress, 0 / sub_ea5fb69b
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor0)
            call stor0.0xa9059cbb with:
                 gas gas_remaining wei
                args providerAddress, arg2 - (0 / sub_ea5fb69b)
        else:
            require arg2
            require arg2 * stor11 / arg2 == stor11
            require sub_ea5fb69b > 0
            require sub_ea5fb69b
            require ext_code.size(stor0)
            if stor6 - arg2 > 0:
                call stor0.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), stor6 - arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require buyers[address(arg1)].field_512 + stor6 - arg2 >= buyers[address(arg1)].field_512
                buyers[address(arg1)].field_512 = buyers[address(arg1)].field_512 + stor6 - arg2
            call stor0.0xa9059cbb with:
                 gas gas_remaining wei
                args sellerAddress, arg2 * stor11 / sub_ea5fb69b
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor0)
            call stor0.0xa9059cbb with:
                 gas gas_remaining wei
                args providerAddress, arg2 - (arg2 * stor11 / sub_ea5fb69b)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
