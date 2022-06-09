contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address stor2;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'You are not owner.'
    owner = 0
    emit OwnershipRenounced(owner);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'You are not owner.'
    if not arg1:
        revert with 0, 'Invalid address.'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function migrateAll(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'You are not owner.'
    idx = 0
    while uint32(idx) < arg1.length:
        require ext_code.size(stor1)
        staticcall stor1.0xe2eb41ff with:
                gas gas_remaining wei
               args address(cd[((32 * uint32(idx)) + arg1 + 36)])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 256
        require uint32(idx) < arg1.length
        mem[96] = 0x1115366c00000000000000000000000000000000000000000000000000000000
        mem[100] = address(cd[((32 * uint32(idx)) + arg1 + 36)])
        mem[132] = ext_call.return_data[0]
        mem[164] = ext_call.return_data[32]
        mem[196] = ext_call.return_data[64]
        mem[228] = ext_call.return_data[96]
        mem[260] = ext_call.return_data[160]
        mem[292] = ext_call.return_data[192]
        mem[324] = ext_call.return_data[224]
        require ext_code.size(stor2)
        call stor2.0x1115366c with:
             gas gas_remaining wei
            args address(cd[((32 * uint32(idx)) + arg1 + 36)]), ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[160], ext_call.return_data[192], ext_call.return_data[224]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}



}
