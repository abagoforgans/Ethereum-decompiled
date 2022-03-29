contract main {


// =======================  Init code  ======================


const _fallback = code.data[25 len 1675]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert 
}

function emitError(bytes32 arg1) payable {
    require ext_code.size(this.address)
    call this.address.versions(address rg1) with:
         gas gas_remaining - 50 wei
        args msg.sender
    require ext_call.success
    emit Error(arg1, ext_call.return_data[0]);
}

function emitChange(bytes32 arg1) payable {
    require ext_code.size(this.address)
    call this.address.versions(address rg1) with:
         gas gas_remaining - 50 wei
        args msg.sender
    require ext_call.success
    emit Change(ext_call.return_data[0], arg1);
}

function emitIssue(bytes32 arg1, uint256 arg2, address arg3) payable {
    require ext_code.size(this.address)
    call this.address.versions(address rg1) with:
         gas gas_remaining - 50 wei
        args msg.sender
    require ext_call.success
    emit Issue(arg2, address(arg3), ext_call.return_data[0], arg1);
}

function emitRevoke(bytes32 arg1, uint256 arg2, address arg3) payable {
    require ext_code.size(this.address)
    call this.address.versions(address rg1) with:
         gas gas_remaining - 50 wei
        args msg.sender
    require ext_call.success
    emit Revoke(arg2, address(arg3), ext_call.return_data[0], arg1);
}

function emitRecovery(address arg1, address arg2, address arg3) payable {
    require ext_code.size(this.address)
    call this.address.versions(address rg1) with:
         gas gas_remaining - 50 wei
        args msg.sender
    require ext_call.success
    emit Recovery(address(arg3), ext_call.return_data[0], arg1, arg2);
}

function emitOwnershipChange(address arg1, address arg2, bytes32 arg3) payable {
    require ext_code.size(this.address)
    call this.address.versions(address rg1) with:
         gas gas_remaining - 50 wei
        args msg.sender
    require ext_call.success
    emit OwnershipChange(ext_call.return_data[0], arg1, arg2, arg3);
}

function emitApprove(address arg1, address arg2, bytes32 arg3, uint256 arg4) payable {
    require ext_code.size(this.address)
    call this.address.versions(address rg1) with:
         gas gas_remaining - 50 wei
        args msg.sender
    require ext_call.success
    emit Approve(arg4, ext_call.return_data[0], arg1, arg2, arg3);
}

function emitTransfer(address arg1, address arg2, bytes32 arg3, uint256 arg4, string arg5) payable {
    mem[128 len arg5.length] = arg5[all]
    require ext_code.size(this.address)
    call this.address.versions(address rg1) with:
         gas gas_remaining - 50 wei
        args msg.sender
    require ext_call.success
    mem[ceil32(arg5.length) + 128] = arg4
    mem[ceil32(arg5.length) + 192] = ext_call.return_data[0]
    mem[ceil32(arg5.length) + 160] = 96
    mem[ceil32(arg5.length) + 224] = arg5.length
    if arg5.length:
        mem[ceil32(arg5.length) + 256] = mem[128]
        mem[ceil32(arg5.length) + 288 len floor32(arg5.length - 1)] = mem[160 len floor32(arg5.length - 1)]
    emit Transfer(arg4, Array(len=arg5.length, data=mem[ceil32(arg5.length) + 256 len arg5.length]), ext_call.return_data[0], arg1, arg2, arg3);
}

function emitTransferToICAP(address arg1, address arg2, bytes32 arg3, uint256 arg4, string arg5) payable {
    mem[128 len arg5.length] = arg5[all]
    require ext_code.size(this.address)
    call this.address.versions(address rg1) with:
         gas gas_remaining - 50 wei
        args msg.sender
    require ext_call.success
    mem[ceil32(arg5.length) + 128] = arg4
    mem[ceil32(arg5.length) + 192] = ext_call.return_data[0]
    mem[ceil32(arg5.length) + 160] = 96
    mem[ceil32(arg5.length) + 224] = arg5.length
    if arg5.length:
        mem[ceil32(arg5.length) + 256] = mem[128]
        mem[ceil32(arg5.length) + 288 len floor32(arg5.length - 1)] = mem[160 len floor32(arg5.length - 1)]
    emit TransferToICAP(arg4, Array(len=arg5.length, data=mem[ceil32(arg5.length) + 256 len arg5.length]), ext_call.return_data[0], arg1, arg2, arg3);
}



}
