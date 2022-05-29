contract main {




// =====================  Runtime code  =====================


const delegateAddress = 0x565f46b4ce6b12025ba3780e6d6bd8917c45154b


mapping of uint256 sub_4566f48a;

function sub_4566f48a(?) {
    require calldata.size - 4 >= 64
    return sub_4566f48a[arg1][arg2]
}

function _fallback() payable {
    revert
}

function withdrawToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 > sub_4566f48a[address(arg1)][address(msg.sender)]:
        revert with 0, 'INVALID_VALUE', 0
    require arg2 <= sub_4566f48a[address(arg1)][address(msg.sender)]
    sub_4566f48a[address(arg1)][address(msg.sender)] -= arg2
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    emit TokenWithdrawn(msg.sender, address(arg1), arg2);
    if not ext_call.success:
        return bool(ext_call.success)
    if not return_data.size:
        return 1
    if return_data.size == 32:
        return bool(ext_call.return_data[0])
    else:
        return 0
}

function withdrawBurned(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(0x565f46b4ce6b12025ba3780e6d6bd8917c45154b)
    staticcall 0x565f46b4ce6b12025ba3780e6d6bd8917c45154b.0xced3fb9c with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'UNAUTHORIZED', 0
    if arg2 > sub_4566f48a[address(arg1)][address(this.address)]:
        revert with 0, 'INVALID_VALUE', 0
    require arg2 <= sub_4566f48a[address(arg1)][address(this.address)]
    sub_4566f48a[address(arg1)][address(this.address)] -= arg2
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    emit TokenWithdrawn(address(this.address), address(arg1), arg2);
    if not ext_call.success:
        return bool(ext_call.success)
    if not return_data.size:
        return 1
    if return_data.size == 32:
        return bool(ext_call.return_data[0])
    else:
        return 0
}

function sub_4a874dd9(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require ext_code.size(0x565f46b4ce6b12025ba3780e6d6bd8917c45154b)
    staticcall 0x565f46b4ce6b12025ba3780e6d6bd8917c45154b.0xced3fb9c with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'UNAUTHORIZED', 0
    if ('cd', 4).length % 3:
        revert with 0, 'INVALID_SIZE', 0
    idx = 68
    s = 0
    s = 0
    s = 0
    while idx < (32 * ('cd', 4).length) + 68:
        require cd[(idx + 64)] + sub_4566f48a[address(cd[idx])][address(cd[(idx + 32)])] >= sub_4566f48a[address(cd[idx])][address(cd[(idx + 32)])]
        mem[0] = address(cd[(idx + 32)])
        mem[32] = sha3(address(cd[idx]), 0)
        sub_4566f48a[address(cd[idx])][address(cd[(idx + 32)])] += cd[(idx + 64)]
        idx = idx + 96
        s = cd[(idx + 64)]
        s = cd[(idx + 32)]
        s = cd[idx]
        continue 
}



}
