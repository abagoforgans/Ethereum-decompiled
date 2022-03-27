contract main {


// =======================  Init code  ======================


const _fallback = code.data[25 len 2431]




// =====================  Runtime code  =====================


array of address stor3;
array of address stor4;
mapping of uint256 stor99;

function _fallback() payable {
    revert 
}

function sub_981a2101(?) payable {
    require ext_code.size(stor3[arg1])
    call stor3[arg1].0xe026ac79 with:
         gas gas_remaining - 50 wei
        args address(arg2), address(arg3), arg4
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    stor[arg1 + 1][address(arg2)][address(arg3)] = arg4
    emit Approval(arg4, arg2, arg3);
    return 1
}

function sub_6d552f93(?) payable {
    require ext_code.size(stor3[arg1])
    call stor3[arg1].0x9e1f7261 with:
         gas gas_remaining - 50 wei
        args 0, 0, address(arg3), address(arg4), arg5
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if arg5 >= stor[arg1 + 1][address(arg3)][address(arg2)]:
        return 0
    require arg5 + stor[arg1][address(arg4)] >= stor[arg1][address(arg4)]
    require arg5 + stor[arg1][address(arg4)] >= arg5
    stor[arg1][address(arg4)] += arg5
    require arg5 <= stor[arg1][arg3]
    stor[arg1][address(arg3)] = stor[arg1][arg3] - arg5
    require arg5 <= stor[arg1 + 1][address(arg3)][address(arg2)]
    stor[arg1 + 1][address(arg3)][address(arg2)] -= arg5
    emit Transfer(arg5, arg3, arg4);
    return 1
}

function sub_b3c180bf(?) payable {
    require ext_code.size(stor3[arg1])
    call stor3[arg1].0x89a40bcf with:
         gas gas_remaining - 50 wei
        args msg.sender, address(arg2), arg3
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    stor3[arg1] = arg2
    stor4[arg1] = arg3
    require ext_code.size(arg3)
    call arg3.0x5dd5e2f with:
         gas gas_remaining - 50 wei
        args Mask(32, 224, sha3('transferAuthed(address,address,u', 'int256)'))
    require ext_call.success
    require ext_code.size(stor4[arg1])
    call stor4[arg1].0x5dd5e2f with:
         gas gas_remaining - 50 wei
        args Mask(32, 224, sha3('transferFromAuthed(address,addre', 'ss,address,uint256)'))
    require ext_call.success
    require ext_code.size(stor4[arg1])
    call stor4[arg1].0x5dd5e2f with:
         gas gas_remaining - 50 wei
        args Mask(32, 224, sha3('approveAuthed(address,address,ui', 'nt256)'))
    require ext_call.success
    return 1
}

function sub_c016692f(?) payable {
    require ext_code.size(stor3[arg1])
    call stor3[arg1].0x64f5a980 with:
         gas gas_remaining - 50 wei
        args address(arg2), address(arg3), arg4
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    require ext_call.return_data[32] + arg4 >= arg4
    require ext_call.return_data[32] + arg4 >= ext_call.return_data[32]
    require ext_call.return_data[32] + arg4 <= stor[arg1][address(arg2)]
    stor[arg1][address(arg2)] = stor[arg1][address(arg2)] - ext_call.return_data[32] - arg4
    require arg4 + stor[arg1][arg3] >= stor[arg1][arg3]
    require arg4 + stor[arg1][arg3] >= arg4
    stor[arg1][address(arg3)] = arg4 + stor[arg1][arg3]
    emit Transfer(arg4, msg.sender, arg3);
    if ext_call.return_data[32] > 0:
        require ext_call.return_data[32] + stor[arg1][address(ext_call.return_data[64])] >= stor[arg1][address(ext_call.return_data[64])]
        require ext_call.return_data[32] + stor[arg1][address(ext_call.return_data[64])] >= ext_call.return_data[32]
        stor[arg1][address(ext_call.return_data[64])] += ext_call.return_data[32]
        emit Transfer(ext_call.return_data[32], msg.sender, address(ext_call.return_data[64]));
    return 1
}



}
