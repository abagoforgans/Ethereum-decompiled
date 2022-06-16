contract main {




// =====================  Runtime code  =====================


address authorityAddress;
address owner;
address kyberAddress;
address feeWalletAddress;

function owner() {
    return owner
}

function kyber() {
    return kyberAddress
}

function authority() {
    return authorityAddress
}

function feeWallet() {
    return feeWalletAddress
}

function _fallback() payable {
    revert
}

function getExpectedRate(address arg1, address arg2, uint256 arg3) {
    require ext_code.size(kyberAddress)
    call kyberAddress.0x809a9e55 with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0], ext_call.return_data[32]
}

function isTradeFeasible(address arg1, address arg2, uint256 arg3) {
    require ext_code.size(kyberAddress)
    call kyberAddress.0x809a9e55 with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not ext_call.return_data[32]:
        return 0
    return 1
}

function setOwner(address arg1) {
    if msg.sender != this.address:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'DSAuth::_ SENDER_NOT_AUTHORIZED'
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'DSAuth::_ SENDER_NOT_AUTHORIZED'
    owner = arg1
    emit LogSetOwner(arg1);
}

function setAuthority(address arg1) {
    if msg.sender != this.address:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'DSAuth::_ SENDER_NOT_AUTHORIZED'
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'DSAuth::_ SENDER_NOT_AUTHORIZED'
    authorityAddress = arg1
    emit LogSetAuthority(arg1);
}

function setKyber(address arg1) {
    if msg.sender != this.address:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'DSAuth::_ SENDER_NOT_AUTHORIZED'
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'DSAuth::_ SENDER_NOT_AUTHORIZED'
    if not arg1:
        revert with 0, 'Utils::_ INVALID_ADDRESS'
    kyberAddress = arg1
}

function setFeeWallet(address arg1) {
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, cd[36]
    if msg.sender != this.address:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'DSAuth::_ SENDER_NOT_AUTHORIZED'
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'DSAuth::_ SENDER_NOT_AUTHORIZED'
    if not arg1:
        revert with 0, 'Utils::_ INVALID_ADDRESS'
    feeWalletAddress = arg1
}

function trade(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) {
    mem[192 len calldata.size] = call.data[0 len calldata.size]
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    if msg.sender != this.address:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'DSAuth::_ SENDER_NOT_AUTHORIZED'
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'DSAuth::_ SENDER_NOT_AUTHORIZED'
    if arg3 == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'KyberConnector::process TOKEN_ADDRS_SHOULD_NOT_MATCH'
    require ext_code.size(kyberAddress)
    call kyberAddress.0x809a9e55 with:
         gas gas_remaining wei
        args address(arg2), address(arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(arg2)
    call arg2.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    call arg2.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'KyberConnector::process INSUFFICIENT_BALANCE_IN_ESCROW'
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg2), this.address, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg2)
    call arg2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args kyberAddress, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'KyberConnector::process SRC_APPROVAL_FAILED'
    require ext_code.size(arg2)
    call arg2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args kyberAddress, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'KyberConnector::process SRC_APPROVAL_FAILED'
    require ext_code.size(kyberAddress)
    call kyberAddress.tradeWithHint(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7, bytes arg8) with:
         gas gas_remaining wei
        args 0, ext_call.return_data[32], uint32(arg4), address(arg3), this.address, arg5, ext_call.return_data[32], feeWalletAddress, 256, 0, mem[388]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    call arg2.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg3)
    call arg3.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'KyberConnector::process DEST_TOKEN_TRANSFER_FAILED'
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'KyberConnector::process SRC_TOKEN_TRANSFER_FAILED'
    emit 0x20de302f: arg4, arg5, ext_call.return_data[0], 0, arg1, arg2, arg3
    return ext_call.return_data[0], 0
}



}
