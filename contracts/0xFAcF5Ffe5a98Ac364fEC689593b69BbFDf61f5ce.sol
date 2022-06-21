contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
mapping of uint256 sub_0e4439c0;

function sub_0e4439c0(?) payable {
    require calldata.size - 4 >= 64
    return sub_0e4439c0[arg1][arg2]
}

function _fallback() payable {
    revert
}

function sub_5e2ccb20(?) payable {
    require calldata.size - 4 >= 96
    if stor0 != msg.sender:
        revert with 0, 'ONLY_COMMITTEE_MANAGER'
    require sub_0e4439c0[address(arg1)][address(arg2)] + arg3 >= sub_0e4439c0[address(arg1)][address(arg2)]
    sub_0e4439c0[address(arg1)][address(arg2)] += arg3
}

function sub_d80ef760(?) payable {
    require calldata.size - 4 >= 64
    sub_0e4439c0[address(arg1)][address(arg2)] = 0
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), sub_0e4439c0[address(arg1)][address(arg2)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'CANNOT_TRANSFER_PROFITS'
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require ceil32(arg3.length) + 128 <= test266151307() and ceil32(arg3.length) + 128 >= 96
    require arg3 + arg3.length + 36 <= calldata.size
    require ext_code.size(stor1)
    staticcall stor1.0xa2e1ce62 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not 0, ext_call.return_data[4 len 28]:
        if stor2 != msg.sender:
            revert with 0, 'TOKEN_NOT_REGISTERED'
}



}
