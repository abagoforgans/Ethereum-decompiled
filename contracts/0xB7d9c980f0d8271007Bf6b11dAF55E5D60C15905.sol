contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 stor1;
mapping of struct sub_a1b416f9;
address sub_b3feeac3Address;

function owner() {
    return owner
}

function sub_a1b416f9(?) {
    return sub_a1b416f9[arg1].field_0, sub_a1b416f9[arg1].field_256, sub_a1b416f9[arg1].field_512
}

function sub_b3feeac3(?) {
    return sub_b3feeac3Address
}

function sub_edb87b36(?) {
    return stor1.length
}

function _fallback() payable {
    revert
}

function sub_e8d3d17b(?) {
    require owner == msg.sender
    stor1.length = arg1
}

function sub_9b9b7249(?) {
    require owner == msg.sender
    sub_b3feeac3Address = arg1
}

function renounceOwnership() {
    require owner == msg.sender
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_50682650(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg1.length <= stor1.length
    require 0 < arg1.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require sub_a1b416f9[mem[(32 * idx) + 128]].field_0 == msg.sender
        require block.timestamp > sub_a1b416f9[mem[(32 * idx) + 128]].field_512
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 2
        require sub_a1b416f9[mem[(32 * idx) + 128]].field_256 > 0
        idx = idx + 1
        continue 
    return 1
}

function sub_de2edd6a(?) {
    require not sub_a1b416f9[arg1].field_0
    require arg2 > 0
    require arg3 > block.timestamp
    sub_a1b416f9[arg1].field_0 = arg4
    sub_a1b416f9[arg1].field_256 = arg2
    sub_a1b416f9[arg1].field_512 = arg3
    require ext_code.size(sub_b3feeac3Address)
    call sub_b3feeac3Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit 0xbfdcb244: arg3, arg2, arg1, msg.sender, arg4
    return 1
}

function sub_fe2b3924(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg1.length <= stor1.length
    require 0 < arg1.length
    s = 0
    s = 0
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        _24 = sha3(mem[(32 * idx) + 128], 2)
        require sub_a1b416f9[mem[(32 * idx) + 128]].field_0 == msg.sender
        require block.timestamp > sub_a1b416f9[mem[(32 * idx) + 128]].field_512
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 2
        require sub_a1b416f9[mem[(32 * idx) + 128]].field_256 > 0
        require sub_a1b416f9[mem[(32 * idx) + 128]].field_256 + s >= s
        sub_a1b416f9[mem[(32 * idx) + 128]].field_256 = 0
        s = sha3(mem[(32 * idx) + 128], 2)
        s = mem[(32 * idx) + 128]
        idx = idx + 1
        s = sub_a1b416f9[mem[(32 * idx) + 128]].field_256 + s
        continue 
    require ext_code.size(sub_b3feeac3Address)
    call sub_b3feeac3Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, stor1[_24] * arg1.length
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit LogWithdrawal((stor1[_24] * arg1.length), msg.sender);
    return 1
}



}
