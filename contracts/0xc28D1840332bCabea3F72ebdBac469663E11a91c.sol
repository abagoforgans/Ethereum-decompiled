contract main {




// =====================  Runtime code  =====================


address owner;
address sub_730ad923Address;
address sub_c2803db2Address;
address sub_de2e298dAddress;
uint256 sub_332e7470;
uint256 sub_9257b8f4;
uint256 sub_dfead4df;
address sub_c2ae90e1Address;

function sub_332e7470(?) {
    return sub_332e7470
}

function sub_730ad923(?) {
    return sub_730ad923Address
}

function owner() {
    return owner
}

function sub_9257b8f4(?) {
    return sub_9257b8f4
}

function sub_c2803db2(?) {
    return sub_c2803db2Address
}

function sub_c2ae90e1(?) {
    return sub_c2ae90e1Address
}

function sub_de2e298d(?) {
    return sub_de2e298dAddress
}

function sub_dfead4df(?) {
    return sub_dfead4df
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function setBondAddress(address arg1) {
    require msg.sender == owner
    sub_730ad923Address = arg1
    emit SetBondAddress(arg1);
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function set_allow_withdraw_amount(uint256 arg1) {
    require msg.sender == sub_730ad923Address
    sub_dfead4df = arg1
    emit SetAllowWithdrawAmount(arg1);
}

function withdraw_bix() {
    require msg.sender == sub_c2803db2Address
    require 0 < sub_dfead4df
    require ext_code.size(sub_c2ae90e1Address)
    call sub_c2ae90e1Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, sub_dfead4df
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_dfead4df = 0
    emit WithdrawBix(0);
}

function pay_by_bond_contract(address arg1, uint256 arg2) {
    require msg.sender == sub_730ad923Address
    require ext_code.size(sub_c2ae90e1Address)
    call sub_c2ae90e1Address.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit PayByBondContract(address(arg1), arg2);
}

function refundAllCollateral() {
    require msg.sender == sub_730ad923Address
    require ext_code.size(sub_c2ae90e1Address)
    call sub_c2ae90e1Address.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(sub_c2ae90e1Address)
        call sub_c2ae90e1Address.0xa9059cbb with:
             gas gas_remaining wei
            args sub_c2803db2Address, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit RefundAllCollateral(ext_call.return_data[0]);
}

function refundPartCollateral() {
    require msg.sender == sub_730ad923Address
    require ext_code.size(sub_c2ae90e1Address)
    call sub_c2ae90e1Address.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require sub_332e7470 <= sub_9257b8f4
        if not ext_call.return_data[0]:
            require sub_9257b8f4
            if not ext_call.return_data[0]:
                require sub_9257b8f4
                require ext_code.size(sub_c2ae90e1Address)
                call sub_c2ae90e1Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_c2803db2Address, 0 / sub_9257b8f4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit RefundPartCollateral(sub_c2803db2Address, 0 / sub_9257b8f4);
                require ext_code.size(sub_c2ae90e1Address)
                call sub_c2ae90e1Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_de2e298dAddress, 0 / sub_9257b8f4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit RefundPartCollateral(sub_de2e298dAddress, 0 / sub_9257b8f4);
            else:
                require sub_332e7470 * ext_call.return_data[0] / ext_call.return_data[0] == sub_332e7470
                require sub_9257b8f4
                require ext_code.size(sub_c2ae90e1Address)
                call sub_c2ae90e1Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_c2803db2Address, 0 / sub_9257b8f4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit RefundPartCollateral(sub_c2803db2Address, 0 / sub_9257b8f4);
                require ext_code.size(sub_c2ae90e1Address)
                call sub_c2ae90e1Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_de2e298dAddress, sub_332e7470 * ext_call.return_data[0] / sub_9257b8f4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit RefundPartCollateral(sub_de2e298dAddress, sub_332e7470 * ext_call.return_data[0] / sub_9257b8f4);
        else:
            require (sub_9257b8f4 * ext_call.return_data[0]) - (sub_332e7470 * ext_call.return_data[0]) / ext_call.return_data[0] == sub_9257b8f4 - sub_332e7470
            require sub_9257b8f4
            if not ext_call.return_data[0]:
                require sub_9257b8f4
                require ext_code.size(sub_c2ae90e1Address)
                call sub_c2ae90e1Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_c2803db2Address, (sub_9257b8f4 * ext_call.return_data[0]) - (sub_332e7470 * ext_call.return_data[0]) / sub_9257b8f4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit RefundPartCollateral(sub_c2803db2Address, (sub_9257b8f4 * ext_call.return_data[0]) - (sub_332e7470 * ext_call.return_data[0]) / sub_9257b8f4);
                require ext_code.size(sub_c2ae90e1Address)
                call sub_c2ae90e1Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_de2e298dAddress, 0 / sub_9257b8f4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit RefundPartCollateral(sub_de2e298dAddress, 0 / sub_9257b8f4);
            else:
                require sub_332e7470 * ext_call.return_data[0] / ext_call.return_data[0] == sub_332e7470
                require sub_9257b8f4
                require ext_code.size(sub_c2ae90e1Address)
                call sub_c2ae90e1Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_c2803db2Address, (sub_9257b8f4 * ext_call.return_data[0]) - (sub_332e7470 * ext_call.return_data[0]) / sub_9257b8f4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit RefundPartCollateral(sub_c2803db2Address, (sub_9257b8f4 * ext_call.return_data[0]) - (sub_332e7470 * ext_call.return_data[0]) / sub_9257b8f4);
                require ext_code.size(sub_c2ae90e1Address)
                call sub_c2ae90e1Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_de2e298dAddress, sub_332e7470 * ext_call.return_data[0] / sub_9257b8f4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit RefundPartCollateral(sub_de2e298dAddress, sub_332e7470 * ext_call.return_data[0] / sub_9257b8f4);
}



}
