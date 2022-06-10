contract main {




// =====================  Runtime code  =====================


address stor0;
array of struct sub_04baeac3;
address stor2;
array of uint256 stor3;
array of uint256 stor7;
uint256 total;

function sub_04baeac3(?) payable {
    require calldata.size - 4 >= 32
    return sub_04baeac3[address(arg1)].field_0
}

function getTotal() payable {
    return total
}

function getOrder(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < sub_04baeac3[address(arg1)].field_0
    require arg2 < sub_04baeac3[address(arg1)].field_0
    require arg2 < sub_04baeac3[address(arg1)].field_0
    require arg2 < sub_04baeac3[address(arg1)].field_0
    return sub_04baeac3[address(arg1)][arg2].field_0, 
           sub_04baeac3[address(arg1)][arg2].field_256,
           sub_04baeac3[address(arg1)][arg2].field_512,
           sub_04baeac3[address(arg1)][arg2].field_768
}

function _fallback() payable {
    revert
}

function transferFrom(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if arg2 < 1:
        revert with 0, 'selection error'
    if arg2 > 1000:
        revert with 0, 'selection error'
    idx = 0
    while idx < sub_04baeac3[address(arg1)].field_0:
        require arg3 < 4
        require idx < sub_04baeac3[address(arg1)].field_0
        if sub_04baeac3[address(arg1)][idx].field_256 == stor3[arg3] == 1:
            revert with 0, 'day err'
        mem[0] = arg1
        mem[32] = 1
        idx = idx + 1
        continue 
    require ext_code.size(stor0)
    call stor0.0x23b872dd with:
         gas gas_remaining wei
        args address(arg1), stor2, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require bool(ext_call.return_data[0]) == 1
    require arg3 < 4
    sub_04baeac3[address(arg1)].field_0++
    sub_04baeac3[address(arg1)][sub_04baeac3[address(arg1)].field_0].field_0 = arg2
    sub_04baeac3[address(arg1)][sub_04baeac3[address(arg1)].field_0].field_256 = stor3[arg3]
    sub_04baeac3[address(arg1)][sub_04baeac3[address(arg1)].field_0].field_512 = stor7[arg3]
    sub_04baeac3[address(arg1)][sub_04baeac3[address(arg1)].field_0].field_768 = block.timestamp
    total += arg2
    return 1
}

function release(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < sub_04baeac3[address(arg1)].field_0
    if sub_04baeac3[address(arg1)][arg2].field_0 <= 1:
        revert with 0, 'order err'
    require arg2 < sub_04baeac3[address(arg1)].field_0
    require arg2 < sub_04baeac3[address(arg1)].field_0
    if block.timestamp - sub_04baeac3[address(arg1)][arg2].field_768 <= sub_04baeac3[address(arg1)][arg2].field_256:
        revert with 0, 'Insufficient time'
    require arg2 < sub_04baeac3[address(arg1)].field_0
    require arg2 < sub_04baeac3[address(arg1)].field_0
    require arg2 < sub_04baeac3[address(arg1)].field_0
    require arg2 < sub_04baeac3[address(arg1)].field_0
    if sub_04baeac3[address(arg1)][arg2].field_0 + (sub_04baeac3[address(arg1)][arg2].field_0 * sub_04baeac3[address(arg1)][arg2].field_512 * sub_04baeac3[address(arg1)][arg2].field_256 / 10000) <= 0:
        revert with 0, 'sum err'
    require arg2 < sub_04baeac3[address(arg1)].field_0
    require ext_code.size(stor0)
    call stor0.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), sub_04baeac3[address(arg1)][arg2].field_0 + (sub_04baeac3[address(arg1)][arg2].field_0 * sub_04baeac3[address(arg1)][arg2].field_512 * sub_04baeac3[address(arg1)][arg2].field_256 / 10000)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg2 < sub_04baeac3[address(arg1)].field_0
    sub_04baeac3[address(arg1)][arg2].field_0 = 0
    sub_04baeac3[address(arg1)][arg2].field_256 = 0
    sub_04baeac3[address(arg1)][arg2].field_512 = 0
    sub_04baeac3[address(arg1)][arg2].field_768 = 0
    emit 0x104ca284: address(arg1), sub_04baeac3[address(arg1)][arg2].field_0 * sub_04baeac3[address(arg1)][arg2].field_512 * sub_04baeac3[address(arg1)][arg2].field_256 / 10000
    require arg2 < sub_04baeac3[address(arg1)].field_0
    return sub_04baeac3[address(arg1)][arg2].field_0, 
           sub_04baeac3[address(arg1)][arg2].field_0 * sub_04baeac3[address(arg1)][arg2].field_512 * sub_04baeac3[address(arg1)][arg2].field_256 / 10000
}



}
