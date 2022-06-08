contract main {




// =====================  Runtime code  =====================


const delegateAddress = 0xb258f5c190fadab30b5ff0d6ab7e32a646a4baae


mapping of uint256 sub_4566f48a;

function sub_4566f48a(?) {
    require calldata.size - 4 >= 64
    return sub_4566f48a[arg1][arg2]
}

function _fallback() payable {
    revert with 0, 'UNSUPPORTED'
}

function withdrawToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 > sub_4566f48a[address(arg1)][address(msg.sender)]:
        revert with 0, 'INVALID_VALUE'
    if arg2 > sub_4566f48a[address(arg1)][address(msg.sender)]:
        revert with 0, 'INVALID_VALUE'
    sub_4566f48a[address(arg1)][address(msg.sender)] -= arg2
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not ext_call.success:
        revert with 0, 'TRANSFER_FAILURE'
    if not return_data.size:
        emit TokenWithdrawn(msg.sender, address(arg1), arg2);
        return 1
    if 32 != return_data.size:
        revert with 0, 'TRANSFER_FAILURE'
    if not ext_call.return_data[0]:
        revert with 0, 'TRANSFER_FAILURE'
    emit TokenWithdrawn(msg.sender, address(arg1), arg2);
    return bool(ext_call.return_data[0])
}

function sub_4a874dd9(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require ext_code.size(0xb258f5c190fadab30b5ff0d6ab7e32a646a4baae)
    staticcall 0xb258f5c190fadab30b5ff0d6ab7e32a646a4baae.0xced3fb9c with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'UNAUTHORIZED'
    if ('cd', 4).length % 3:
        revert with 0, 'INVALID_SIZE'
    idx = 68
    s = 0
    s = 0
    s = 0
    while idx < (32 * ('cd', 4).length) + 68:
        if cd[(idx + 64)] + sub_4566f48a[address(cd[idx])][address(cd[(idx + 32)])] < sub_4566f48a[address(cd[idx])][address(cd[(idx + 32)])]:
            revert with 0, 'INVALID_VALUE'
        mem[0] = address(cd[(idx + 32)])
        mem[32] = sha3(address(cd[idx]), 0)
        sub_4566f48a[address(cd[idx])][address(cd[(idx + 32)])] += cd[(idx + 64)]
        idx = idx + 96
        s = cd[(idx + 64)]
        s = cd[(idx + 32)]
        s = cd[idx]
        continue 
}

function withdrawBurned(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(0xb258f5c190fadab30b5ff0d6ab7e32a646a4baae)
    staticcall 0xb258f5c190fadab30b5ff0d6ab7e32a646a4baae.0xced3fb9c with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'UNAUTHORIZED'
    if arg2 > sub_4566f48a[address(arg1)][address(this.address)]:
        revert with 0, 'INVALID_VALUE'
    if arg2 > sub_4566f48a[address(arg1)][address(this.address)]:
        revert with 0, 'INVALID_VALUE'
    sub_4566f48a[address(arg1)][address(this.address)] -= arg2
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[388 len 4]
    if not ext_call.success:
        revert with 0, 'TRANSFER_FAILURE'
    if not return_data.size:
        emit TokenWithdrawn(address(this.address), address(arg1), arg2);
        return 1
    if 32 != return_data.size:
        revert with 0, 'TRANSFER_FAILURE'
    if not ext_call.return_data[0]:
        revert with 0, 'TRANSFER_FAILURE'
    emit TokenWithdrawn(address(this.address), address(arg1), arg2);
    return bool(ext_call.return_data[0])
}



}
