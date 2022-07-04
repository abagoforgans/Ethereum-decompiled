contract main {




// =====================  Runtime code  =====================


address currentManagerAddress;
address pendingManagerAddress;
address stor2;

function currentManager() {
    return currentManagerAddress
}

function pendingManager() {
    return pendingManagerAddress
}

function _fallback() payable {
    revert
}

function sub_058a8e5f(?) {
    require msg.sender == currentManagerAddress
    stor2 = arg1
}

function transferManagement(address arg1) {
    require msg.sender == currentManagerAddress
    pendingManagerAddress = arg1
}

function sub_147983d3(?) {
    require msg.sender == pendingManagerAddress
    emit ManagementTransferred(currentManagerAddress, pendingManagerAddress);
    currentManagerAddress = pendingManagerAddress
    pendingManagerAddress = 0
}

function sub_49dc0951(?) payable {
    require msg.sender == stor2
    idx = 0
    while uint8(idx) < ('cd', 4).length:
        require uint8(idx) < ('cd', 36).length
        call address(cd[((32 * uint8(idx)) + cd[4] + 36)]) with:
           value cd[((32 * uint8(idx)) + cd[36] + 36)] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    return 1
}

function sub_fbe10fc7(?) {
    require msg.sender == stor2
    idx = 0
    while uint8(idx) < ('cd', 4).length:
        require uint8(idx) < ('cd', 36).length
        mem[100] = address(cd[100])
        mem[132] = address(cd[((32 * uint8(idx)) + cd[4] + 36)])
        mem[164] = cd[((32 * uint8(idx)) + cd[36] + 36)]
        require ext_code.size(address(cd[68]))
        call address(cd[68]).0x23b872dd with:
             gas gas_remaining wei
            args address(cd[100]), address(cd[((32 * uint8(idx)) + cd[4] + 36)]), cd[((32 * uint8(idx)) + cd[36] + 36)]
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        idx = idx + 1
        continue 
    return 1
}

function sub_3aed0b32(?) {
    require msg.sender == stor2
    require ext_code.size(address(cd[68]))
    call address(cd[68]).0x23b872dd with:
         gas gas_remaining wei
        args address(cd[132]), address(this.address), cd[100]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    idx = 0
    while uint8(idx) < ('cd', 4).length:
        require uint8(idx) < ('cd', 36).length
        mem[100] = address(cd[((32 * uint8(idx)) + cd[4] + 36)])
        mem[132] = cd[((32 * uint8(idx)) + cd[36] + 36)]
        require ext_code.size(address(cd[68]))
        call address(cd[68]).0xa9059cbb with:
             gas gas_remaining wei
            args address(cd[((32 * uint8(idx)) + cd[4] + 36)]), cd[((32 * uint8(idx)) + cd[36] + 36)]
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        idx = idx + 1
        continue 
    return 1
}



}
