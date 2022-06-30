contract main {




// =====================  Runtime code  =====================


#
#  - sub_218fafcb(?)
#
uint256 sub_aeadb8e0;
mapping of struct positions;

function positions(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return positions[arg1].field_0, 
           positions[arg1].field_256,
           positions[arg1].field_512,
           positions[arg1].field_768,
           positions[arg1].field_1024
}

function sub_aeadb8e0(?) payable {
    return sub_aeadb8e0
}

function _fallback() payable {
    revert
}

function sub_cd8912b3(?) payable {
    require calldata.size - 4 >= 160
    require ext_code.size(arg5)
    staticcall arg5.0x60219123 with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 10^18 * ext_call.return_data[0] / 10^18 != ext_call.return_data[0]:
        revert with 0, 'ds-math-mul-overflow'
    if (10^18 * ext_call.return_data[0]) + (arg4 / 2) < 10^18 * ext_call.return_data[0]:
        revert with 0, 'ds-math-add-overflow'
    require arg4
    require ext_code.size(arg5)
    staticcall arg5.0x697674b3 with:
            gas gas_remaining wei
           args address(arg3), (10^18 * ext_call.return_data[0]) + (arg4 / 2) / arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_85ca85bd(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 288
    if sub_aeadb8e0 + 1 < sub_aeadb8e0:
        revert with 0, 'ds-math-add-overflow'
    sub_aeadb8e0++
    mem[164] = arg4
    require ext_code.size(arg2)
    call arg2.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if var75003 >= arg6:
        positions[stor0].field_0 = 0
        positions[stor0].field_256 = msg.sender
        positions[stor0].field_512 = arg2
        positions[stor0].field_768 = arg4
        positions[stor0].field_1024 = arg3
        emit 0x1d7b8383: sub_aeadb8e0, address(arg2), arg4, address(arg3), arg5, msg.sender
    mem[96] = 0x6021912300000000000000000000000000000000000000000000000000000000
    mem[100] = arg2
    mem[132] = var87004
    require ext_code.size(arg1)
    staticcall arg1.mem[var89003 len 4] with:
            gas gas_remaining wei
           args mem[var89003 + 4 len var89004 - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not var103001:
        revert with 0, 'ds-math-mul-overflow'
    # nil
}



}
