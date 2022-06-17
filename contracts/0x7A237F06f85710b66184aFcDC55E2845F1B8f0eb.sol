contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address tokenAddress;

function owner() {
    return owner
}

function token() {
    return tokenAddress
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function _fallback() {
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Prevent accidental sending of ether'
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_f3a760d5(?) {
    require ext_code.size(tokenAddress)
    call tokenAddress.hasVaultAccess(address arg1, address arg2) with:
         gas gas_remaining wei
        args msg.sender, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Sender has no access to Vault'
    if arg1 != 1001:
        if arg1 != 2001:
            if arg1 != 3001:
                if arg1 != 4001:
                    if arg1 != 5001:
                        revert with 0, 'Invalid category'
    mem[96 len 22068] = code.data[2457 len 22068]
    mem[22164] = stor1
    mem[22196] = tokenAddress
    mem[22228] = arg1
    mem[22260] = arg2
    mem[22292] = arg3
    mem[22324] = 256
    mem[22420] = arg4.length
    mem[22452 len arg4.length] = arg4[all]
    mem[22356] = arg4.length + 288
    mem[arg4.length + 22452] = arg5.length
    mem[arg4.length + 22484 len arg5.length] = arg5[all]
    mem[22388] = arg4.length + arg5.length + 320
    mem[arg4.length + arg5.length + 22484] = arg6.length
    mem[arg4.length + arg5.length + 22516 len arg6.length] = arg6[all]
    create contract with 0 wei
                    code: code.data[2457 len 22068], stor1, tokenAddress, arg1 << 240, arg2, arg3 << 240, Array(len=arg4.length + arg5.length + 320, data=arg4.length, arg4[all], arg5.length, arg5[all], arg6.length, arg6[all]), arg4.length + 288
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).addClaim(uint256 arg1, uint256 arg2, address arg3, bytes arg4, bytes arg5, string arg6) with:
         gas gas_remaining wei
        args 0, 1271989972, 1, msg.sender, 192, 256, arg7.length + 288, 0, code.data[2685 len 32], arg7.length, arg7[all], 0, mem[arg7.length + 420]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(create.new_address))
    call address(create.new_address).addKey(bytes32 arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args sha3(address(msg.sender, 0)), 1, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(create.new_address))
    call address(create.new_address).removeKey(bytes32 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sha3(address(this.address, 0)), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    call stor1.0xd5c81a05 with:
         gas gas_remaining wei
        args address(create.new_address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return address(create.new_address)
}



}
