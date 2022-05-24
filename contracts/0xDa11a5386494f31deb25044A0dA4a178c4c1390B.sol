contract main {




// =====================  Runtime code  =====================


address stor0;
address sub_364f4413Address;
address stor2;
address sub_0fada2c5Address;
uint256 stor4;
uint256 stor5;

function sub_0fada2c5(?) {
    return sub_0fada2c5Address
}

function sub_364f4413(?) {
    return sub_364f4413Address
}

function _fallback() payable {
    revert
}

function sub_5cd63c88(?) {
    sub_364f4413Address = arg1
    require ext_code.size(stor0)
    call stor0.0x23b872dd with:
         gas gas_remaining wei
        args address(arg1), this.address, 625 * 10^12
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_98b05871(?) {
    sub_0fada2c5Address = arg1
    require ext_code.size(stor2)
    call stor2.0x23b872dd with:
         gas gas_remaining wei
        args address(arg1), this.address, 6250000 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_961e9389(?) {
    require ext_code.size(stor0)
    call stor0.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != 625 * 10^12:
        return (ext_call.return_data[0] == 625 * 10^12)
    require ext_code.size(stor2)
    call stor2.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (ext_call.return_data[0] == 6250000 * 10^18)
}

function swap() {
    if block.timestamp <= stor5:
        revert with 0, 'It's not time to swap.'
    require ext_code.size(stor0)
    call stor0.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != 625 * 10^12:
        revert with 0, 'You don't make any deal.'
    require ext_code.size(stor2)
    call stor2.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != 6250000 * 10^18:
        revert with 0, 'You don't make any deal.'
    require ext_code.size(stor0)
    call stor0.0xa9059cbb with:
         gas gas_remaining wei
        args sub_0fada2c5Address, 625 * 10^12
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor2)
    call stor2.0xa9059cbb with:
         gas gas_remaining wei
        args sub_364f4413Address, 6250000 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function cancelDeal() {
    if block.timestamp <= stor4:
        revert with 0, 'It's not time to cancel.'
    require ext_code.size(stor0)
    call stor0.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] == 625 * 10^12:
        require ext_code.size(stor2)
        call stor2.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] == 6250000 * 10^18:
            revert with 0, 'You already make a deal.'
    require ext_code.size(stor0)
    call stor0.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        require ext_code.size(stor2)
        call stor2.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0, 'There are no tokens to return.'
    require ext_code.size(stor0)
    call stor0.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(stor0)
        call stor0.0xa9059cbb with:
             gas gas_remaining wei
            args sub_364f4413Address, 625 * 10^12
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
    if ext_call.return_data[0] > 0:
        require ext_code.size(stor2)
        call stor2.0xa9059cbb with:
             gas gas_remaining wei
            args sub_0fada2c5Address, 6250000 * 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}



}
