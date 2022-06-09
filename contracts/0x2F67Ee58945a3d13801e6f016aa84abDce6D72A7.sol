contract main {




// =====================  Runtime code  =====================


address authorityAddress;
address owner;
address supervisorAddress;
uint256 stor3; offset 64
uint256 networkId;
mapping of uint256 userToNonce;

function supervisor() {
    return supervisorAddress
}

function owner() {
    return owner
}

function networkId() {
    return networkId
}

function authority() {
    return authorityAddress
}

function userToNonce(address arg1) {
    return userToNonce[arg1]
}

function _fallback() payable {
    revert
}

function changeSupervisor(address arg1) {
    require msg.sender == owner
    supervisorAddress = arg1
}

function setOwner(address arg1) {
    if owner != msg.sender:
        require authorityAddress
        require ext_code.size(authorityAddress)
        call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
             gas gas_remaining wei
            args msg.sender, this.address, call.func_hash
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    owner = arg1
    emit LogSetOwner(arg1);
}

function setAuthority(address arg1) {
    if owner != msg.sender:
        require authorityAddress
        require ext_code.size(authorityAddress)
        call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
             gas gas_remaining wei
            args msg.sender, this.address, call.func_hash
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    authorityAddress = arg1
    emit LogSetAuthority(arg1);
}

function claimTokens(address arg1) {
    require msg.sender == owner
    if not arg1:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit ClaimedTokens(ext_call.return_data[0], arg1, owner);
}

function sub_73d0ad08(?) {
    require arg1 == userToNonce[msg.sender]
    signer = erecover(sha3(0x1945766f6c7574696f6e4c616e64205369676e6564204d6573736167653a0a33, '2', arg5), arg6 << 248, arg7, arg8) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require address(signer) == supervisorAddress
    require sha3(msg.sender, arg1, arg3, arg2, arg4, stor3, mem[681 len 8]) == arg5
    if arg4 < block.timestamp:
        revert with 0, 'you are expired.'
    require ext_code.size(arg3)
    call arg3.0x6352211e with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg3)
    call arg3.0x23b872dd with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    userToNonce[address(msg.sender)]++
    emit 0x9834414d: arg2, msg.sender, arg1
}



}
