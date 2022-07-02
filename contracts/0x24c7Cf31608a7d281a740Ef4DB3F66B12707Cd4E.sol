contract main {




// =====================  Runtime code  =====================


address owner;

function owner() {
    return owner
}

function isOwner() {
    return (msg.sender == owner)
}

function _fallback() payable {
    emit Deposit(msg.sender, msg.value);
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'ssender is not permitted'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'ssender is not permitted'
    if not arg1:
        revert with 0, 'sender is not owner'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'ssender is not permitted'
    if not arg1:
        revert with 0, 'invalid address'
    if arg2 <= 0:
        revert with 0, 'amount has to be non-zero'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Transfer(address(arg1), arg2);
}

function transferToken(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'ssender is not permitted'
    if not arg1:
        revert with 0, 'invalid token address'
    if not ext_code.size(arg1):
        revert with 0, 'invalid token address'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'invalid token address'
    if not arg2:
        revert with 0, 'invalid recipient address'
    if arg3 <= 0:
        revert with 0, 'amount has to be non-zero'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'failed to send token'
    emit TransferToken(address(arg1), address(arg2), arg3);
}

function transferMany(address[] arg1, uint256[] arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'ssender is not permitted'
    if arg2.length != arg1.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0xfe6e6565642073616d6520636f756e74206f6620726563697069656e747320616e6420616d6f756e74,
                    mem[205 len 23]
    idx = 0
    while arg1.length > uint64(idx):
        require uint64(idx) < arg1.length
        if not address(cd[((32 * uint64(idx)) + arg1 + 36)]):
            revert with 0, 'invalid address'
        require uint64(idx) < arg2.length
        if cd[((32 * uint64(idx)) + arg2 + 36)] <= 0:
            revert with 0, 'amount has to be non-zero'
        require uint64(idx) < arg1.length
        require uint64(idx) < arg2.length
        call address(cd[((32 * uint64(idx)) + arg1 + 36)]) with:
           value cd[((32 * uint64(idx)) + arg2 + 36)] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require uint64(idx) < arg1.length
        require uint64(idx) < arg2.length
        mem[96] = address(cd[((32 * uint64(idx)) + arg1 + 36)])
        mem[128] = cd[((32 * uint64(idx)) + arg2 + 36)]
        emit Transfer(address(cd[((32 * uint64(idx)) + arg1 + 36)]), cd[((32 * uint64(idx)) + arg2 + 36)]);
        idx = idx + 1
        continue 
}

function sub_7071f0c4(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'ssender is not permitted'
    if not address(cd[36]):
        revert with 0, 'invalid recipient address'
    idx = 0
    while ('cd', 4).length > uint64(idx):
        require uint64(idx) < ('cd', 4).length
        if not address(cd[((32 * uint64(idx)) + cd[4] + 36)]):
            revert with 0, 'invalid token address'
        require uint64(idx) < ('cd', 4).length
        if not ext_code.size(address(cd[((32 * uint64(idx)) + cd[4] + 36)])):
            revert with 0, 'invalid token address'
        require uint64(idx) < ('cd', 4).length
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[((32 * uint64(idx)) + cd[4] + 36)]))
        staticcall address(cd[((32 * uint64(idx)) + cd[4] + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(address(cd[((32 * uint64(idx)) + cd[4] + 36)]))
            call address(cd[((32 * uint64(idx)) + cd[4] + 36)]).0xa9059cbb with:
                 gas gas_remaining wei
                args address(cd[36]), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'failed to send token'
            require uint64(idx) < ('cd', 4).length
            mem[mem[64]] = address(cd[36])
            mem[mem[64] + 32] = address(cd[((32 * uint64(idx)) + cd[4] + 36)])
            mem[mem[64] + 64] = ext_call.return_data[0]
            emit 0x6d25be27: address(cd[36]), address(cd[((32 * uint64(idx)) + cd[4] + 36)]), ext_call.return_data[0]
        idx = idx + 1
        continue 
}

function sub_e6487c2a(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 96
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'ssender is not permitted'
    if not address(cd[4]):
        revert with 0, 'invalid token address'
    if not ext_code.size(address(cd[4])):
        revert with 0, 'invalid token address'
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'invalid token address'
    if ('cd', 68).length != ('cd', 36).length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0xfe6e6565642073616d6520636f756e74206f6620726563697069656e747320616e6420616d6f756e74,
                    mem[205 len 23]
    idx = 0
    while ('cd', 36).length > uint64(idx):
        require uint64(idx) < ('cd', 36).length
        if not address(cd[((32 * uint64(idx)) + cd[36] + 36)]):
            revert with 0, 'invalid address'
        require uint64(idx) < ('cd', 68).length
        if cd[((32 * uint64(idx)) + cd[68] + 36)] <= 0:
            revert with 0, 'amount is zero'
        require uint64(idx) < ('cd', 36).length
        require uint64(idx) < ('cd', 68).length
        require ext_code.size(address(cd[4]))
        call address(cd[4]).0xa9059cbb with:
             gas gas_remaining wei
            args address(cd[((32 * uint64(idx)) + cd[36] + 36)]), cd[((32 * uint64(idx)) + cd[68] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'failed to send token'
        require uint64(idx) < ('cd', 36).length
        require uint64(idx) < ('cd', 68).length
        mem[mem[64]] = address(cd[4])
        mem[mem[64] + 32] = address(cd[((32 * uint64(idx)) + cd[36] + 36)])
        mem[mem[64] + 64] = cd[((32 * uint64(idx)) + cd[68] + 36)]
        emit TransferToken(address(cd[4]), address(cd[((32 * uint64(idx)) + cd[36] + 36)]), cd[((32 * uint64(idx)) + cd[68] + 36)]);
        idx = idx + 1
        continue 
}



}
